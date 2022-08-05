use serde::{Deserialize, Serialize};
use walkdir::{DirEntry, WalkDir};
use std::path::Path;
use duct::cmd;
use clap::Parser;

static TEMPS: &'static [&str; 1] = &[ "0.2" ]; // skip 0.8 for now
static VARIATIONS: &'static [&str; 4] = &[ "reworded", "keep", "transform", "remove" ];
static LANGS: &'static [&str; 19]  = &[ "py", "js", "ts", "java", "d", "cpp", "r", "rs", "jl", "sh", "cs", 
          "go", "lua", "pl", "php", "rb",  "scala", "swift", "rkt" ];
static MODELS: &'static [&str; 2] = &[ "davinci", "incoder" ];

#[derive(Debug, PartialEq, Serialize, Deserialize)]
struct TestResult { }

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
                        // python3 completions_codex.py --dir ../experiments/{lang}-{model}-{temp}-{variation} --temperature {temp} --model={model} --max-samples 28"
                        match cmd!("python3", "completions_codex.py", "--dir", &experiment_dir, "--temperature", temp, "--model", model, "--max-samples", &max_samples.to_string(), "--limit-completions", min_prompts_per_problem.to_string())
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

fn summarize_completeness() {
    println!("Temperature,Variation,Model,Language,Prepared Files,Completions Done (20),Completions Done (200),Results Done (20),Results Done (200)");
    for temp in TEMPS {
        for variation in VARIATIONS {
            for lang in LANGS {
                for model in MODELS {
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
            }
        }
    }
}


fn main() {
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
    }
}
