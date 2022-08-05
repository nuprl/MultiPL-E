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
        Command::CountDuplicatePrograms => count_duplicate_programs()
    }
}
