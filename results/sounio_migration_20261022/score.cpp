#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include <sstream>
#include <stdexcept>
#include <string>

// Canonical C++23 pass@1 scoring: one completion per problem, exact c/n.
// Inputs are structural exports of the official evaluator, not a Python oracle.
int score(int argc, char **argv) {
  if (argc != 2) return 2;
  std::ifstream input(argv[1]);
  if (!input) return 2;
  std::map<std::string, std::map<std::string, std::string>> groups;
  std::string line;
  while (std::getline(input, line)) {
    std::istringstream row(line);
    std::string group, name, status, code;
    if (!std::getline(row, group, '\t') || !std::getline(row, name, '\t') ||
        !std::getline(row, status, '\t') || !std::getline(row, code))
      throw std::runtime_error("Malformed verdict row");
    if (groups[group].contains(name))
      throw std::runtime_error("More than one completion per problem");
    if (status == "OK" && code != "0")
      throw std::runtime_error("Inconsistent OK exit code");
    groups[group][name] = status;
  }
  if (groups.empty()) throw std::runtime_error("No results");
  std::cout << "| Group | Programs | Passed | Exact pass@1 | pass@1 |\n"
               "|---|---:|---:|---:|---:|\n";
  for (const auto &[group, records] : groups) {
    std::size_t passed = 0;
    std::map<std::string, std::size_t> statuses;
    for (const auto &[name, status] : records) {
      passed += status == "OK";
      ++statuses[status];
    }
    std::cout << "| " << group << " | " << records.size() << " | " << passed
              << " | " << passed << "/" << records.size() << " | "
              << std::fixed << std::setprecision(8)
              << static_cast<double>(passed) / records.size() << " |\n";
    for (const auto &[status, count] : statuses)
      std::cerr << group << '\t' << status << '\t' << count << '\n';
  }
  for (const auto &dataset : {std::string("humaneval"), std::string("mbpp")}) {
    auto before = groups.find(dataset + "-sio-baseline-0.2-reworded");
    auto after = groups.find(dataset + "-sio-candidate-0.2-reworded");
    if (before == groups.end() || after == groups.end()) continue;
    std::size_t common = 0, old_ok = 0, new_ok = 0, gained = 0, lost = 0;
    for (const auto &[name, status] : before->second) {
      auto candidate = after->second.find(name);
      if (candidate == after->second.end())
        throw std::runtime_error("Candidate lost a baseline problem ID");
      ++common;
      const bool a = status == "OK", b = candidate->second == "OK";
      old_ok += a; new_ok += b; gained += !a && b; lost += a && !b;
    }
    std::size_t extra = 0, extra_ok = 0;
    for (const auto &[name, status] : after->second) {
      if (!before->second.contains(name)) {
        ++extra;
        extra_ok += status == "OK";
      }
    }
    std::cout << "\n" << dataset << " paired common IDs: " << common
              << "; baseline " << old_ok << "/" << common
              << "; candidate " << new_ok << "/" << common
              << "; gained successes " << gained << "; lost successes " << lost
              << "; extra candidate IDs " << extra;
    if (extra) std::cout << "; extra successes " << extra_ok << "/" << extra;
    std::cout << ".\n";
  }
  return 0;
}

int main(int argc, char **argv) {
  try {
    return score(argc, argv);
  } catch (const std::exception &error) {
    std::cerr << "Scoring error: " << error.what() << '\n';
    return 1;
  }
}
