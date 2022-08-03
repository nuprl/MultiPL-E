use serde::{Deserialize, Serialize};
use walkdir::{DirEntry, WalkDir};

#[derive(Debug, PartialEq, Serialize, Deserialize)]
struct ProblemFile {
    completions: Vec<String>,
}

fn is_completions_yaml(p: &DirEntry) -> bool {
    let s = p.file_name().to_str().unwrap();
    return s.ends_with(".yaml") && !s.ends_with(".results.yaml");
}

fn main() {
    let walker = WalkDir::new("../experiments");

    for entry in walker
        .into_iter()
        .filter_map(|e| e.ok())
        .filter(is_completions_yaml)
    {
        let contents = std::fs::read_to_string(entry.path()).unwrap();
        let problem_file: ProblemFile = serde_yaml::from_str(&contents).unwrap();
        let n = problem_file.completions.len();
        if n > 0 && n < 200 {
            println!("{},{}", entry.path().display(), n);
        }
    }
}
