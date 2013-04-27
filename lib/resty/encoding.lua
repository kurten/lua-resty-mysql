local DEFAULT_CHAESET = "latin1"
-- mysql charset mapping table
local charset_mapping = {["big5"] = 1,
    ["dec8"] = 3,
    ["cp850"] = 4,
    ["hp8"] = 6,
    ["koi8r"] = 7,
    ["latin1"] = 8,
    ["latin2"] = 9,
    ["swe7"] = 10,
    ["ascii"] = 11,
    ["ujis"] = 12,
    ["sjis"] = 13,
    ["hebrew"] = 16,
    ["tis620"] = 18,
    ["euckr"] = 19,
    ["koi8u"] = 22,
    ["gb2312"] = 24,
    ["greek"] = 25,
    ["cp1250"] = 26,
    ["gbk"] = 28,
    ["latin5"] = 30,
    ["armscii8"] = 32,
    ["utf8"] = 33,
    ["ucs2"] = 35,
    ["cp866"] = 36,
    ["keybcs2"] = 37,
    ["macce"] = 38,
    ["macroman"] = 39,
    ["cp852"] = 40,
    ["latin7"] = 41,
    ["cp1251"] = 51,
    ["cp1256"] = 57,
    ["cp1257"] = 59,
    ["binary"] = 63,
    ["geostd8"] = 92,
    ["cp932"] = 95,
    ["eucjpms"] = 97}

local function _get_charset_index(charset)
    local c = string.lower(charset)
    return (charset_mapping[c] or charset_mapping[DEFAULT_CHAESET])
end


print(_get_charset_index(nil or ""))

