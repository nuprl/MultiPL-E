use serde::{Deserialize, Serialize};
use walkdir::{DirEntry, WalkDir};
use std::path::Path;

#[derive(Debug, PartialEq, Serialize, Deserialize)]
struct ProblemFile {
    completions: Vec<String>,
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

fn main() {
    let walker = WalkDir::new("../experiments");

    for entry in walker
        .into_iter()
        .filter_map(|e| e.ok())
        .filter(is_completions_yaml)
        .filter(|e| !does_result_file_exist(e))
    {
        let contents = std::fs::read_to_string(entry.path()).unwrap();
        let problem_file: ProblemFile = serde_yaml::from_str(&contents).unwrap();
        let n = problem_file.completions.len();
        if n > 0 {
            println!("{}", entry.path().display());
        }
    }
}
