use serde::{Deserialize, Serialize};
use walkdir::{DirEntry, WalkDir};
use std::path::Path;
use duct::cmd;
use clap::Parser;
use rayon::prelude::*;

// Do not change these constants! If you want to filter out files, do it the
// "right way". Making a change here affects all functions.
static TEMPS: &'static [&str; 2] = &[ "0.2", "0.8" ];
static VARIATIONS: &'static [&str; 4] = &[ "reworded", "keep", "transform", "remove" ];
static LANGS: &'static [&str; 19]  = &[ "py", "js", "ts", "java", "d", "cpp", "r", "rs", "jl", "sh", "cs", 
          "go", "lua", "pl", "php", "rb",  "scala", "swift", "rkt" ];
static MODELS: &'static [&str; 2] = &[ "davinci", "incoder" ];

#[derive(Debug, PartialEq, Serialize, Deserialize)]
struct TestResult { 
    status: String
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
struct ResultsFile {
  results: Vec<TestResult>
}

#[derive(Debug, PartialEq, Serialize, Deserialize)]
struct ProblemFile {
    completions: Vec<String>,
}

#[derive(clap::Args)]
struct RunCompletion {
    model: String,
    min_prompts_per_problem: usize,
    max_samples: usize,
}

#[derive(clap::Args)]
struct CheckPromptCompleteness {
    min_prompts_per_problem: usize,
}

#[derive(clap::Parser)]
enum Command {
    RunCompletion(RunCompletion),
    CheckPromptCompleteness(CheckPromptCompleteness),
    CheckResultCompleteness,
    CountDuplicatePrograms,
    SummarizeCompleteness,
    BuildJobList,
    PassKAggregates,
}

fn all_configurations() -> Vec<(&'static str, &'static str, &'static str, &'static str)> {
    let mut result = Vec::new();
    for temp in TEMPS {
        for variation in VARIATIONS {
            for lang in LANGS {
                for model in MODELS {
                    if *temp == "0.8" && *variation != "reworded" {
                        continue;
                    }
                    result.push((*lang, *model, *temp, *variation));
                }
            }
        }
    }
    result
}

fn estimate_pass_k(n: i32, c: i32, k: i32) -> f64 {
  // In Python: 1.0 - np.prod(1.0 - k / np.arange(n - c + 1, n + 1))
    let mut result = 1.0;
    for i in (n - c + 1)..(n + 1) {
        result *= 1.0 - (k as f64) / (i as f64);
    }
    return 1.0 - result;
}

fn estimate_pass_k_for_config(config: (&'static str, &'static str, &'static str, &'static str)) -> Option<Vec<String>> {
    let (lang, model, temp, variation) = config;
    
    let walker = WalkDir::new(format!("../experiments/{}-{}-{}-{}", lang, model, temp, variation));

    let mut num_files = 0;
    let mut aggregate_pass_k1 = 0.0;
    let mut aggregate_pass_k10 = 0.0;
    let mut aggregate_pass_k100 = 0.0;
    for entry in walker
        .into_iter()
        .filter_map(|e| e.ok())
    {
        if !entry.path().file_name()?.to_str()?.ends_with(".results.yaml") {
            continue;
        }
        let results_file = std::fs::read_to_string(entry.path()).ok()?;
        let results = serde_yaml::from_str::<ResultsFile>(&results_file).unwrap();
        let n = results.results.len();
        let c = results.results.iter().filter(|r| r.status == "OK").count();
        aggregate_pass_k1 += estimate_pass_k(n as i32, c as i32, 1);
        aggregate_pass_k10 += estimate_pass_k(n as i32, c as i32, 10);
        aggregate_pass_k100 += estimate_pass_k(n as i32, c as i32, 100);
        num_files += 1;
    }

    if temp == "0.2" {
        return Some(vec![format!("{},{},{},{},1,{:2}", lang, model, temp, variation, aggregate_pass_k1 / (num_files as f64))]);
    }
    else if temp == "0.8" {
        return Some(vec![format!("{},{},{},{},10,{:2}", lang, model, temp, variation, aggregate_pass_k10 / (num_files as f64)),
                         format!("{},{},{},{},100,{:2}", lang, model, temp, variation, aggregate_pass_k100 / (num_files as f64))]);
    }
    else {
        panic!("Unknown temp: {}", temp);
    }
}

fn pass_k_aggregates() {
    let results = all_configurations().into_par_iter().filter_map(estimate_pass_k_for_config).collect::<Vec<_>>();
    for result in results {
        for line in result {
            println!("{}", line);
        }
    }
}


fn is_completions_yaml(p: &DirEntry) -> bool {
    let s = p.file_name().to_str().unwrap();
    return s.ends_with(".yaml") && !s.ends_with(".results.yaml");
}

fn does_result_file_exist(entry: &DirEntry) -> bool {
    let path = entry.path().to_str().unwrap();
    let results_path = path.replace(".yaml", ".results.yaml");

    Path::new(&results_path).exists()
}

fn extract_name(entry: std::fs::DirEntry) -> Option<String> {
    return Some(entry.file_name().to_str()?.splitn(2, ".").next()?.to_string());
}

fn get_problem_names() -> Result<Vec<String>, Box<dyn std::error::Error>> {
    let original_problem_files = std::fs::read_dir("../datasets/originals")?;

    return Ok(original_problem_files.filter_map(|entry| entry.ok()).filter_map(extract_name).collect());
}

fn build_job_for_problem_and_lang(problem: &str, lang: &str) -> Option<(usize, Vec<String>)> {
    let mut job_files = vec![];
    let mut count = 0;

    for m in MODELS {
        for t in TEMPS {
            for v in VARIATIONS {
                let problem_path_str = format!("../experiments/{}-{}-{}-{}/{}.yaml", lang, m, t, v, problem);
                let problem_path = Path::new(&problem_path_str);
                
                if !problem_path.exists() {
                    continue;
                }

                let problem_file = std::fs::read_to_string(problem_path).ok()?;
                
                match serde_yaml::from_str::<ProblemFile>(&problem_file) {
                    Err(_) => {
                    }
                    Ok(problem_file) => {
                        // Same as problem_path_str, but with .results.yaml
                        let results_path_str = problem_path_str.replace(".yaml", ".results.yaml");
                        let results_path = Path::new(&results_path_str);
                        if !results_path.exists() {
                            count += problem_file.completions.len();
                            job_files.push(problem_path_str);
                            continue;
                        }

                        let results_file = std::fs::read_to_string(results_path).ok()?;
                        match serde_yaml::from_str::<ResultsFile>(&results_file) {
                            Err(_) => {
                            }
                            Ok(results_file) => {
                                // Underflow possible!
                                let results_required = problem_file.completions.len() - results_file.results.len();
                                if results_required == 0 {
                                    continue;
                                }
                                count += results_required;
                                job_files.push(problem_path_str);
                            }
                        }
                    }
                }
            }
        }
    }

    if count == 0 {
        return None;
    }

    return Some((count, job_files));
}

/// Assume that job_list.len() > max_len. Move the trailing items in job_list to
/// earlier positions in the list so that the result is at most max_len.
///
/// Made up this algorithm. Seems like doing this evenly is likely hard.
fn compress_job_list(job_list: &mut Vec<(usize, Vec<String>)>, max_len: usize) {
  job_list.sort_by_key(|&(count, _)| count);
  let removed = job_list.drain(max_len..).collect::<Vec<_>>();
  let mut i = 0;
  for (count,  files) in removed.into_iter() {
    job_list[i].1.extend(files);
    job_list[i].0 += count;
    i = (i + 1) % max_len;
  }    
}

fn build_job_list() -> Result<(), Box<dyn std::error::Error>> {
    let problem_names = get_problem_names()?;

    let mut problem_lang_combinations = vec![];
    for problem in problem_names.into_iter() {
        for lang in LANGS {
            if *lang != "sh" {
                problem_lang_combinations.push((problem.clone(), lang.clone()));
            }
        }
    }
    let mut jobs = problem_lang_combinations.par_iter().filter_map(|(problem, lang)| build_job_for_problem_and_lang(problem, lang)).collect::<Vec<_>>();

    if jobs.len() > 1000 {
        compress_job_list(&mut jobs, 1000);
    }
    for (count, jobs) in jobs.into_iter() {
        println!("{} LABEL {}", count, jobs.join(" "));
    }

    return Ok(());
}

fn count_duplicate_programs() {
    let mut problems = 0;
    let mut unique_problems = 0;
    let walker = WalkDir::new("../experiments");

    for entry in walker
        .into_iter()
        .filter_map(|e| e.ok())
        .filter(is_completions_yaml)
    {
        let contents = std::fs::read_to_string(entry.path()).unwrap();
        let problem_file: ProblemFile = serde_yaml::from_str(&contents).unwrap();
        problems += problem_file.completions.len();
        unique_problems += std::collections::HashSet::<&String>::from_iter(problem_file.completions.iter()).len();

    }
    println!("{} / {}", unique_problems, problems);
}

fn check_result_completeness() {
    let walker = WalkDir::new("../experiments");

        for entry in walker
        .into_iter()
        .filter_map(|e| e.ok())
        .filter(is_completions_yaml)
    {

        let contents = std::fs::read_to_string(entry.path()).unwrap();
        if !does_result_file_exist(&entry) {
            println!("{}", entry.path().display());
            continue;
        }
        let problem_file: ProblemFile = serde_yaml::from_str(&contents).unwrap();

        let contents = std::fs::read_to_string(entry.path().to_str().unwrap().replace(".yaml", ".results.yaml")).unwrap();
        let results_file: ResultsFile = serde_yaml::from_str(&contents).unwrap();

        if results_file.results.len() < problem_file.completions.len() {
            println!("{}", entry.path().display());
        }
    }
 
}

fn check_prompt_completeness(num_prompts_per_problem: usize) {
    let walker = WalkDir::new("../experiments");

    for entry in walker
        .into_iter()
        .filter_map(|e| e.ok())
        .filter(is_completions_yaml)
    {
        let contents = std::fs::read_to_string(entry.path()).unwrap();
        let problem_file: ProblemFile = serde_yaml::from_str(&contents).unwrap();
        if problem_file.completions.len() < num_prompts_per_problem {
            println!("{}", entry.path().display());
        }
    }
}


fn generate_prompts(model: &str, min_prompts_per_problem: usize, max_samples: usize) {
    for temp in TEMPS {
        for variation in VARIATIONS {
            for lang in LANGS {
                if *temp == "0.8" && *variation != "reworded" {
                    continue;
                }

                let experiment_dir = format!("../experiments/{}-{}-{}-{}", lang, model, temp, variation);
                match std::fs::read_dir(&experiment_dir) {
                    Err(_) => {
                        // We haven't even prepared for this!
                    }
                    Ok(entries) => {
                        let mut num_incomplete = 0;
                        for entry in entries.into_iter().filter_map(|entry| entry.ok()) {
                            if entry.file_name().to_str().unwrap().ends_with(".results.yaml") {
                                continue;
                            }
                            let contents = std::fs::read_to_string(entry.path()).unwrap();
                            let problem_file: ProblemFile = serde_yaml::from_str(&contents).expect(format!("{}", entry.path().display()).as_str());
                            if  problem_file.completions.len() > min_prompts_per_problem {
                                continue;
                            }
                            num_incomplete += (problem_file.completions.len()  - min_prompts_per_problem).min(min_prompts_per_problem);
                        }
                        if num_incomplete == 0 {
                            continue;
                        }
                        match cmd!("python3", "gather_completions.py", "--dir", &experiment_dir, "--temperature", temp, "--model", model, "--max-samples", &max_samples.to_string(), "--limit-completions", min_prompts_per_problem.to_string())
                        .dir("../src").run() {
                            Ok(_) => {
                                println!("Generated {} prompts for {}", num_incomplete, experiment_dir);
                            }
                            Err(_) => {
                                println!("Error on {}", experiment_dir);
                            }
                        }
                    }
                }
            }
        }
    }
}

fn process_file_for_summary(path: &std::path::Path) -> Result<(usize, usize, usize, usize), Box<dyn std::error::Error>> {
    let contents = std::fs::read_to_string(path)?;
    let problem_file: ProblemFile = serde_yaml::from_str(&contents)?;
    let num_completions = problem_file.completions.len();
    let completions_for_20 = num_completions.min(20);
    let completions_for_200 = num_completions.min(200); // would be an oopsie
    let results_file_path = path.with_extension("results.yaml");
    if results_file_path.is_file() == false {
        return Ok((completions_for_20, completions_for_200, 0, 0));
    }
    let results_contents = std::fs::read_to_string(results_file_path)?;
    let results_file: ResultsFile = serde_yaml::from_str(&results_contents)?;
    let num_results = results_file.results.len();
    return Ok((completions_for_20, completions_for_200, num_results.min(20), num_results.min(200)));

}

fn summarize_one(lang: &'static str, model: &'static str, temp: &'static str, variation: &'static str) {
    let experiment_dir = format!("../experiments/{}-{}-{}-{}", lang, model, temp, variation);
    match std::fs::read_dir(&experiment_dir) {
        Err(_) => {
            println!("{},{},{},{},0,0%,0%,0%", temp, variation, model, lang);
        }
        Ok(entries) => {

            // Count the number of .yaml files (not .results.yaml files). This is
            // the number of "Prepared Files".
            // Count the total number of completions in each .yaml file.
            // - For each file, bound to 20 and divide by 20. The mean value is
            //   "Completions Done (20)".
            // - For each file, divide by 200. The mean value is
            //   "Completions Done (200)".
            // Count the total number of results in each .results.yaml file.
            // - For each file, bound to 20 and divide by 20. The mean value is
            //   "Results Done (20)".
            // - For each file, divide by 200. The mean value is
            //   "Results Done (200)".
            // However, note that .results.yaml may be missing. If so, we still
            // count it as a result file for each of the Results Done counts.
            
            // Counts the number of .yaml files (not .results.yaml files)
            let mut num_prepared_files = 0;

            let mut completions_for_20 = 0;
            let mut completions_for_200 = 0;
            let mut results_for_20 = 0;
            let mut results_for_200 = 0;

            for entry in entries.into_iter().filter_map(|entry| entry.ok()) {
                if entry.file_name().to_str().unwrap().ends_with(".results.yaml") {
                    continue;
                }
                num_prepared_files += 1;

                if let Ok((c20, c200, r20, r200)) = process_file_for_summary(&entry.path()) {
                    completions_for_20 += c20;
                    completions_for_200 += c200;
                    results_for_20 += r20;
                    results_for_200 += r200;
                }
            }

            let completions_done_20 = completions_for_20 as f64 / (num_prepared_files as f64 * 20.0);
            let completions_done_200 = completions_for_200 as f64 / (num_prepared_files as f64 * 200.0);
            let results_done_20 = results_for_20 as f64 / (num_prepared_files as f64 * 20.0);
            let results_done_200 = results_for_200 as f64 / (num_prepared_files as f64 * 200.0);
            println!("{},{},{},{},{},{:.2},{:.2},{:.2},{:.2}", temp, variation, model, lang, num_prepared_files, completions_done_20, completions_done_200, results_done_20, results_done_200);
        }
    }
}

fn summarize_completeness() {
    println!("Temperature,Variation,Model,Language,Prepared Files,Completions Done (20),Completions Done (200),Results Done (20),Results Done (200)");
    let configs = all_configurations();
    println!("{}", configs.len());

    configs.into_par_iter().for_each(|(lang, model, temp, variation)| summarize_one(lang, model, temp, variation))

}

fn main() -> () {
    let matches = Command::parse();
    match matches {
        Command::RunCompletion(run_completion) => {
            generate_prompts(&run_completion.model, run_completion.min_prompts_per_problem, run_completion.max_samples);
        }
        Command::CheckPromptCompleteness(arg) => {
            check_prompt_completeness(arg.min_prompts_per_problem);
        }
        Command::CheckResultCompleteness => {
            check_result_completeness();
        }
        Command::CountDuplicatePrograms => count_duplicate_programs(),
        Command::SummarizeCompleteness => summarize_completeness(),
        Command::BuildJobList => build_job_list().expect("Failed to build job list"),
        Command::PassKAggregates => pass_k_aggregates()
    }
}
