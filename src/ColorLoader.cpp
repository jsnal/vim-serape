#include "ColorLoader.h"
#include <algorithm>
#include <iostream>
#include <sstream>
#include <string>

bool ColorLoader::load()
{
    if (!m_file.good()) {
        std::cerr << "Problem reading from file \"" << m_filepath << "\"" << std::endl;
        return false;
    }

    // size_t position = 0;

    for (std::string line; std::getline(m_file, line);) {
        trim_string(line);

        if (line[0] == '#') {
            continue;
        }

        extract_color(line);
    }

    return true;
}

std::optional<std::string> ColorLoader::extract_color(std::string& line)
{
    std::istringstream line_stream(line);

    std::string color_name, color_code;

    std::getline(line_stream, color_name, '=');
    std::getline(line_stream, color_code, '=');

    std::cout << "Color name: " << parse_color_name(color_name)
              << "Color code: " << color_code << std::endl;

    return {};
}

uint8_t ColorLoader::parse_color_name(std::string& name)
{
    if (name.size() != 7) {
        return -1;
    }

    int index = -1;

    try {
        index = std::stoi(name.substr(5, 6));
    } catch (std::exception&) {
        return -1;
    }

    if (name.substr(0, 4) != "color" || (index < 0 || index > 16)) {
        return -1;
    }

    return index;
}

void ColorLoader::trim_string(std::string& str)
{
    auto is_space = [](unsigned char ch) {
        return !std::isspace(ch);
    };

    // Remove leading whitespace
    str.erase(str.begin(), std::find_if(str.begin(), str.end(), is_space));

    // Remove trailing whitespace
    str.erase(std::find_if(str.rbegin(), str.rend(), is_space).base(), str.end());
}
