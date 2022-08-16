#pragma once

#include <fstream>
#include <optional>
#include <vector>

class ColorLoader {
public:
    ColorLoader(const std::string filepath)
        : m_filepath(filepath)
    {
        m_file = std::fstream(filepath);
    }

    ~ColorLoader() {};

    std::vector<std::string> get_colors() const { return m_colors; };

    bool load();

private:
    std::optional<std::string> extract_color(std::string&);

    uint8_t parse_color_name(std::string&);

    void trim_string(std::string&);

    std::vector<std::string> m_colors;

    const std::string m_filepath;

    std::fstream m_file;
};
