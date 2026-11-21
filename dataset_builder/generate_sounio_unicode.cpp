// C++23 source generator and exact UCD oracle for Unicode 15.0.0 swapcase.
// Inputs: UnicodeData.txt, SpecialCasing.txt, DerivedCoreProperties.txt.
// Unicode data license: https://www.unicode.org/license.txt
// No Python case algorithm or numerical oracle is used.
#include <algorithm>
#include <charconv>
#include <fstream>
#include <iostream>
#include <map>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>
#ifdef WITH_ICU
#include <unicode/uchar.h>
#include <unicode/ustring.h>
#include <unicode/uversion.h>
#endif

namespace {
constexpr int limit = 0x110000;
using mapping = std::map<int, std::vector<int>>;
std::map<std::string, std::vector<bool>> properties;
mapping lower, upper, swapped;

std::string trim(std::string value) {
    const auto first = value.find_first_not_of(" \t\r\n");
    if (first == std::string::npos) return {};
    return value.substr(first, value.find_last_not_of(" \t\r\n") - first + 1);
}
std::vector<std::string> split(const std::string &line) {
    std::vector<std::string> result;
    std::size_t start = 0;
    for (;;) {
        const auto end = line.find(';', start);
        result.push_back(trim(line.substr(start, end == std::string::npos ? end : end - start)));
        if (end == std::string::npos) return result;
        start = end + 1;
    }
}
int hex(const std::string &text) {
    int value = 0;
    const auto parsed = std::from_chars(text.data(), text.data() + text.size(), value, 16);
    if (parsed.ec != std::errc{} || parsed.ptr != text.data() + text.size() || value < 0 || value >= limit)
        throw std::runtime_error("Invalid UCD code point: " + text);
    return value;
}
std::vector<int> sequence(const std::string &text) {
    std::istringstream input(text);
    std::string word;
    std::vector<int> result;
    while (input >> word) result.push_back(hex(word));
    return result;
}
std::ifstream input(const std::string &path) {
    std::ifstream stream(path);
    if (!stream) throw std::runtime_error("Missing UCD input " + path);
    return stream;
}
void load(const std::string &directory) {
    for (const std::string name : {"Uppercase", "Lowercase", "Cased", "Case_Ignorable"})
        properties[name] = std::vector<bool>(limit);
    std::string line;
    auto derived = input(directory + "/DerivedCoreProperties.txt");
    std::getline(derived, line);
    if (line != "# DerivedCoreProperties-15.0.0.txt") throw std::runtime_error("UCD version mismatch");
    while (std::getline(derived, line)) {
        line = line.substr(0, line.find('#'));
        if (trim(line).empty()) continue;
        const auto fields = split(line);
        if (fields.size() < 2 || !properties.contains(fields[1])) continue;
        const auto dots = fields[0].find("..");
        const int first = hex(fields[0].substr(0, dots));
        const int last = dots == std::string::npos ? first : hex(fields[0].substr(dots + 2));
        if (first > last) throw std::runtime_error("Reversed UCD range");
        for (int point = first; point <= last; ++point) properties[fields[1]][point] = true;
    }
    auto data = input(directory + "/UnicodeData.txt");
    while (std::getline(data, line)) {
        const auto fields = split(line);
        if (fields.size() != 15) throw std::runtime_error("Malformed UnicodeData record");
        const int point = hex(fields[0]);
        if (!fields[12].empty()) upper[point] = sequence(fields[12]);
        if (!fields[13].empty()) lower[point] = sequence(fields[13]);
    }
    auto special = input(directory + "/SpecialCasing.txt");
    std::getline(special, line);
    if (line != "# SpecialCasing-15.0.0.txt") throw std::runtime_error("SpecialCasing version mismatch");
    while (std::getline(special, line)) {
        line = line.substr(0, line.find('#'));
        if (trim(line).empty()) continue;
        const auto fields = split(line);
        if (fields.size() < 5) throw std::runtime_error("Malformed SpecialCasing record");
        if (!fields[4].empty()) {
            if (fields[4] != "Final_Sigma" && !fields[4].starts_with("tr") &&
                !fields[4].starts_with("az") && !fields[4].starts_with("lt"))
                throw std::runtime_error("Unhandled default casing context " + fields[4]);
            continue; // Default locale; Final_Sigma is implemented on original text.
        }
        const int point = hex(fields[0]);
        lower[point] = sequence(fields[1]);
        upper[point] = sequence(fields[3]);
    }
    for (int point = 0; point < limit; ++point) {
        const auto *selected = properties["Uppercase"][point] ? &lower :
                               properties["Lowercase"][point] ? &upper : nullptr;
        if (selected == nullptr) continue; // Titlecase-only characters stay unchanged.
        const auto found = selected->find(point);
        if (found != selected->end() && found->second != std::vector<int>{point}) {
            if (found->second.empty() || found->second.size() > 3) throw std::runtime_error("Unsupported mapping width");
            swapped[point] = found->second;
        }
    }
    if (swapped.size() < 2000 || !swapped.contains(0xDF)) throw std::runtime_error("Incomplete UCD inputs");
#ifdef WITH_ICU
    UVersionInfo version;
    u_getUnicodeVersion(version);
    if (version[0] != 15 || version[1] != 0) throw std::runtime_error("ICU Unicode version is not 15.0");
    for (int point = 0; point < limit; ++point) {
        for (const auto &[name, flag] : std::vector<std::pair<std::string, UProperty>>{
                {"Uppercase", UCHAR_UPPERCASE}, {"Lowercase", UCHAR_LOWERCASE},
                {"Cased", UCHAR_CASED}, {"Case_Ignorable", UCHAR_CASE_IGNORABLE}}) {
            if (properties[name][point] != static_cast<bool>(u_hasBinaryProperty(point, flag)))
                throw std::runtime_error("ICU property mismatch at " + std::to_string(point));
        }
        UChar source[2];
        int length = 1;
        if (point < 0x10000) source[0] = static_cast<UChar>(point);
        else {
            source[0] = static_cast<UChar>(0xD800 + ((point - 0x10000) >> 10));
            source[1] = static_cast<UChar>(0xDC00 + ((point - 0x10000) & 1023));
            length = 2;
        }
        UChar output[8];
        UErrorCode status = U_ZERO_ERROR;
        int size = length;
        if (u_hasBinaryProperty(point, UCHAR_UPPERCASE)) size = u_strToLower(output, 8, source, length, "", &status);
        else if (u_hasBinaryProperty(point, UCHAR_LOWERCASE)) size = u_strToUpper(output, 8, source, length, "", &status);
        else std::copy(source, source + length, output);
        if (U_FAILURE(status)) throw std::runtime_error("ICU casing failure");
        std::vector<int> expected;
        for (int index = 0; index < size; ++index) {
            int value = output[index];
            if (value >= 0xD800 && value <= 0xDBFF && index + 1 < size && output[index + 1] >= 0xDC00 && output[index + 1] <= 0xDFFF)
                value = 0x10000 + ((value - 0xD800) << 10) + (output[++index] - 0xDC00);
            expected.push_back(value);
        }
        const auto found = swapped.find(point);
        if (expected != (found == swapped.end() ? std::vector<int>{point} : found->second))
            throw std::runtime_error("ICU swapcase mismatch at " + std::to_string(point));
    }
    std::cerr << "ICU_UCD_ALL_POINTS_VERIFIED=" << limit << "\nICU_UNICODE_VERSION=15.0\n";
#endif
}

void dispatch(const std::vector<int> &pages, std::size_t first, std::size_t last,
              const std::string &prefix, const std::string &fallback) {
    if (first == last) { std::cout << "return " << fallback << "\n"; return; }
    if (last - first == 1) {
        std::cout << "if point / 256 == " << pages[first] << " { return " << prefix << pages[first] << "(point) }\nreturn " << fallback << "\n";
        return;
    }
    const auto middle = first + (last - first) / 2;
    std::cout << "if point < " << pages[middle] * 256 << " {\n";
    dispatch(pages, first, middle, prefix, fallback);
    std::cout << "} else {\n";
    dispatch(pages, middle, last, prefix, fallback);
    std::cout << "}\n";
}

void property_functions(const std::string &property, const std::string &prefix) {
    const auto &bits = properties.at(property);
    std::vector<int> pages;
    for (int page = 0; page < limit / 256; ++page) {
        if (std::find(bits.begin() + page * 256, bits.begin() + (page + 1) * 256, true) == bits.begin() + (page + 1) * 256) continue;
        pages.push_back(page);
        std::cout << "fn " << prefix << page << "(point: i64) -> bool {\n";
        for (int start = page * 256; start < (page + 1) * 256;) {
            if (!bits[start]) { ++start; continue; }
            int stop = start;
            while (stop + 1 < (page + 1) * 256 && bits[stop + 1]) ++stop;
            std::cout << "if point >= " << start << " { if point <= " << stop << " { return true } }\n";
            start = stop + 1;
        }
        std::cout << "false\n}\n";
    }
    std::cout << "fn " << prefix << "(point: i64) -> bool {\n";
    dispatch(pages, 0, pages.size(), prefix, "false");
    std::cout << "}\n";
}

void runtime() {
    std::cout << "// Generated by generate_sounio_unicode.cpp from Unicode 15.0.0.\n"
                 "// Unicode data copyright Unicode, Inc.; https://www.unicode.org/license.txt\n";
    property_functions("Cased", "mp_unicode_cased");
    property_functions("Case_Ignorable", "mp_unicode_ignorable");
    // Compress single mappings by page, constant offset and stride (1 or 2).
    std::map<int, std::map<int, std::vector<int>>> groups;
    for (const auto &[point, mapped] : swapped)
        if (mapped.size() == 1) groups[point / 256][mapped[0] - point].push_back(point);
    std::vector<int> pages;
    for (const auto &[page, offsets] : groups) {
        pages.push_back(page);
        std::cout << "fn mp_unicode_simple" << page << "(point: i64) -> i64 with Div {\n";
        for (const auto &[delta, points] : offsets) {
            for (std::size_t index = 0; index < points.size();) {
                const auto start = index;
                int step = 1;
                if (index + 1 < points.size() && points[index + 1] - points[index] <= 2) step = points[index + 1] - points[index];
                while (index + 1 < points.size() && points[index + 1] - points[index] == step) ++index;
                std::cout << "if point >= " << points[start] << " { if point <= " << points[index] << " { ";
                if (step == 2) std::cout << "if (point - " << points[start] << ") % 2 == 0 { ";
                std::cout << "return point + (" << delta << ")";
                if (step == 2) std::cout << " }";
                std::cout << " } }\n";
                ++index;
            }
        }
        std::cout << "point\n}\n";
    }
    std::cout << "fn mp_unicode_simple(point: i64) -> i64 with Div {\n";
    dispatch(pages, 0, pages.size(), "mp_unicode_simple", "point");
    std::cout << "}\n";
    std::cout << "fn mp_unicode_expansion(result: MPStr, point: i64) -> bool with Alloc, Mut, Panic, Div {\n";
    for (const auto &[point, mapped] : swapped) {
        if (mapped.size() == 1) continue;
        std::cout << "if point == " << point << " {\n";
        for (const auto item : mapped) std::cout << "mp_seq_push(result.handle, " << item << ")\n";
        std::cout << "return true\n}\n";
    }
    std::cout << "false\n}\n";
    std::cout << R"SIO(
fn mp_unicode_final_sigma(text: MPStr, index: i64) -> bool with Alloc, Mut, Panic, Div {
    var j = index - 1
    var before = false
    while j >= 0 {
        let point = mp_str_codepoint(text, j)
        if !mp_unicode_ignorable(point) { before = mp_unicode_cased(point); break }
        j = j - 1
    }
    if !before { return false }
    j = index + 1
    while j < mp_str_len(text) {
        let point = mp_str_codepoint(text, j)
        if !mp_unicode_ignorable(point) { return !mp_unicode_cased(point) }
        j = j + 1
    }
    true
}

fn mp_unicode_append_swap(result: MPStr, text: MPStr, index: i64) with Alloc, Mut, Panic, Div {
    let point = mp_str_codepoint(text, index)
    if point == 931 {
        if mp_unicode_final_sigma(text, index) { mp_seq_push(result.handle, 962) }
        else { mp_seq_push(result.handle, 963) }
        return
    }
    if mp_unicode_expansion(result, point) { return }
    mp_seq_push(result.handle, mp_unicode_simple(point))
}

fn mp_str_swapcase(text: MPStr) -> MPStr with Alloc, Mut, Panic, Div {
    let result = mp_str_new()
    var i: i64 = 0
    while i < mp_str_len(text) {
        mp_unicode_append_swap(result, text, i)
        i = i + 1
    }
    result
}
)SIO";
}

void oracle() {
    // Flat, uncompressed expected records: native execution checks compression
    // and all identity points, not only characters whose case changes.
    std::size_t record = 0;
    for (const auto &[point, mapped] : swapped) {
        if (record % 128 == 0) std::cout << "fn unicode_oracle" << record / 128 << "(table: i64) with Alloc, Mut, Panic, Div {\n";
        std::cout << "mp_seq_push(table, " << point << ")\nmp_seq_push(table, " << mapped.size() << ")\n";
        for (const auto item : mapped) std::cout << "mp_seq_push(table, " << item << ")\n";
        ++record;
        if (record % 128 == 0) std::cout << "}\n";
    }
    if (record % 128 != 0) std::cout << "}\n";
    std::cout << "fn main() -> i64 with Alloc, Mut, Panic, Div {\nlet table = mp_seq_new()\n";
    for (std::size_t page = 0; page < (record + 127) / 128; ++page) std::cout << "unicode_oracle" << page << "(table)\n";
    std::cout << R"SIO(
let text = mp_str_from_codepoint(0)
let result = mp_str_new()
var position: i64 = 0
var point: i64 = 0
while point <= 1114111 {
    mp_seq_set(text.handle, 0, point)
    mp_header_set(result.handle, 1, 0)
    mp_unicode_append_swap(result, text, 0)
    var expected: i64 = -1
    if position < mp_seq_len(table) { expected = mp_seq_get(table, position) }
    if expected == point {
        let width = mp_seq_get(table, position + 1)
        assert(mp_str_len(result) == width)
        var j: i64 = 0
        while j < width {
            assert(mp_str_codepoint(result, j) == mp_seq_get(table, position + 2 + j))
            j = j + 1
        }
        position = position + 2 + width
    } else {
        assert(mp_str_len(result) == 1)
        assert(mp_str_codepoint(result, 0) == point)
    }
    point = point + 1
}
assert(position == mp_seq_len(table))
)SIO";
    const std::vector<std::pair<std::vector<int>, std::vector<int>>> contexts = {
        {{0x39F, 0x3A3}, {0x3BF, 0x3C2}},
        {{0x39F, 0x3A3, 0x391}, {0x3BF, 0x3C3, 0x3B1}},
        {{0x61, 0x3A3, 0x301}, {0x41, 0x3C2, 0x301}},
        {{0x61, 0x3A3, 0x301, 0x42}, {0x41, 0x3C3, 0x301, 0x62}},
        {{0x345, 0x3A3}, {0x399, 0x3C3}},
        {{0x61, 0x3A3, 0x345}, {0x41, 0x3C2, 0x399}},
        {{0x61, 0x3A3, 0x27}, {0x41, 0x3C2, 0x27}},
        {{0x61, 0x3A3, 0x27, 0x42}, {0x41, 0x3C3, 0x27, 0x62}},
        {{0xDF, 0x130, 0xFB03}, {0x53, 0x53, 0x69, 0x307, 0x46, 0x46, 0x49}},
        {{0x1C5, 0, 0x1F680, 0x10400, 0x10428}, {0x1C5, 0, 0x1F680, 0x10428, 0x10400}},
        {{}, {}},
    };
    auto literal = [](const std::vector<int> &points) {
        std::string result = "{ let value = mp_str_new()\n";
        for (const int point : points) result += "mp_seq_push(value.handle, " + std::to_string(point) + ")\n";
        return result + "value }";
    };
    std::size_t context = 0;
    for (const auto &[source, expected] : contexts) {
        const auto name = "context" + std::to_string(context++);
        std::cout << "let " << name << " = " << literal(source) << "\n";
        std::cout << "assert(mp_str_eq(mp_str_swapcase(" << name << "), " << literal(expected) << "))\n";
        std::cout << "assert(mp_str_eq(" << name << ", " << literal(source) << "))\n";
    }
    std::cout << "0\n}\n";
    std::cerr << "UCD_ORACLE_CHANGED_POINTS=" << record << "\nUCD_ORACLE_ALL_POINTS=" << limit << "\n";
}
} // namespace

int main(int argc, char **argv) {
    try {
        if (argc != 3) throw std::runtime_error("usage: generator UCD_DIRECTORY --runtime|--oracle");
        load(argv[1]);
        const std::string mode = argv[2];
        if (mode == "--runtime") runtime();
        else if (mode == "--oracle") oracle();
        else throw std::runtime_error("Unknown generation mode");
    } catch (const std::exception &error) {
        std::cerr << error.what() << '\n';
        return 1;
    }
}
