---@class Language
local Language = {
    JAPANESE = 0,
    ENGLISH = 1,
    FRENCH = 2,
    ITALIAN = 3,
    GERMAN = 4,
    SPANISH = 5,
    RUSSIAN = 6,
    POLISH = 7,
    DUTCH = 8,
    PORTUGUESE = 9,
    PORTUGUESE_BR = 10,
    KOREAN = 11,
    TRADITIONAL_CHINESE = 12,
    SIMPLIFIED_CHINESE = 13,
    FINNISH = 14,
    SWEDISH = 15,
    DANISH = 16,
    NORWEGIAN = 17,
    CZECH = 18,
    HUNGARIAN = 19,
    SLOVAK = 20,
    ARABIC = 21,
    TURKISH = 22,
    BULGARIAN = 23,
    GREEK = 24,
    ROMANIAN = 25,
    THAI = 26,
    UKRAINIAN = 27,
    VIETNAMESE = 28,
    INDONESIAN = 29,
    FICTION = 30,
    HINDI = 31,
    LATIN_AMERICAN_SPANISH = 32,
    MAX = 33,
    UNKNOWN = 34,
}

local CODES_TO_LANGUAGES = {
    ["jp-JP"] = Language.JAPANESE,
    ["en-GB"] = Language.ENGLISH,
    ["fr-FR"] = Language.FRENCH,
    ["it-IT"] = Language.ITALIAN,
    ["de-DE"] = Language.GERMAN,
    ["es-ES"] = Language.SPANISH,
    ["ru-RU"] = Language.RUSSIAN,
    ["pl-PL"] = Language.POLISH,
    ["nl-NL"] = Language.DUTCH,
    ["pt-PT"] = Language.PORTUGUESE,
    ["pt-BR"] = Language.PORTUGUESE_BR,
    ["ko-KR"] = Language.KOREAN,
    ["zh-HK"] = Language.TRADITIONAL_CHINESE,
    ["zh-CN"] = Language.SIMPLIFIED_CHINESE,
    ["fi-FI"] = Language.FINNISH,
    ["sv-SE"] = Language.SWEDISH,
    ["da-DK"] = Language.DANISH,
    ["no-NO"] = Language.NORWEGIAN,
    ["cs-CZ"] = Language.CZECH,
    ["hu-HU"] = Language.HUNGARIAN,
    ["sk-SK"] = Language.SLOVAK,
    ["ar-EG"] = Language.ARABIC,
    ["tr-TR"] = Language.TURKISH,
    ["bg-BG"] = Language.BULGARIAN,
    ["el-GR"] = Language.GREEK,
    ["ro-RO"] = Language.ROMANIAN,
    ["th-TH"] = Language.THAI,
    ["uk-UA"] = Language.UKRAINIAN,
    ["vi-VN"] = Language.VIETNAMESE,
    ["id-ID"] = Language.INDONESIAN,
    ["hi-IN"] = Language.HINDI,
    ["es-MX"] = Language.LATIN_AMERICAN_SPANISH,
}

local LANGUAGES_TO_CODES = {}
for code, language in pairs(CODES_TO_LANGUAGES) do
    LANGUAGES_TO_CODES[language] = code
end

---@param code string
---@returns integer?
function Language.from_iso639_code(code)
    return CODES_TO_LANGUAGES[code]
end

---@param language integer
---@return string?
function Language.to_iso639_code(language)
    return LANGUAGES_TO_CODES[language]
end

return Language
