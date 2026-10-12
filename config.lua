Config = {}
-- Shell origin = floor corner (min X, min Y, Z=0). X runs along the front wall, Y into the house.
-- entrance = offset from shell origin to stand just inside the front door; heading faces into the house.
Config.Shells = {
    shell_low_studio = { tier = 'low', size = vec3(5, 6, 2.5), entrance = vec4(2.5, 0.6, 0.0, 0.0) },
    shell_low_apartment1 = { tier = 'low', size = vec3(7, 6, 2.5), entrance = vec4(1.5, 0.6, 0.0, 0.0) },
    shell_low_apartment2 = { tier = 'low', size = vec3(8, 7, 2.5), entrance = vec4(1.5, 0.6, 0.0, 0.0) },
    shell_low_motel = { tier = 'low', size = vec3(4, 6, 2.5), entrance = vec4(2.0, 0.6, 0.0, 0.0) },
    shell_low_trailer = { tier = 'low', size = vec3(3.5, 10, 2.3), entrance = vec4(1.75, 0.6, 0.0, 0.0) },
    shell_mid_house2 = { tier = 'mid', size = vec3(10, 9, 2.8), entrance = vec4(2.0, 0.6, 0.0, 0.0) },
    shell_mid_house3 = { tier = 'mid', size = vec3(12, 10, 2.8), entrance = vec4(2.5, 0.6, 0.0, 0.0) },
    shell_mid_townhouse = { tier = 'mid', size = vec3(8, 12, 2.8), entrance = vec4(2.5, 0.6, 0.0, 0.0) },
    shell_mid_loft = { tier = 'mid', size = vec3(14, 9, 3.2), entrance = vec4(3.0, 0.6, 0.0, 0.0) },
    shell_mid_bungalow = { tier = 'mid', size = vec3(11, 8, 2.8), entrance = vec4(2.0, 0.6, 0.0, 0.0) },
    shell_high_villa = { tier = 'high', size = vec3(16, 12, 3.4), entrance = vec4(3.0, 0.6, 0.0, 0.0) },
    shell_high_mansion = { tier = 'high', size = vec3(20, 14, 3.6), entrance = vec4(4.0, 0.6, 0.0, 0.0) },
    shell_high_penthouse = { tier = 'high', size = vec3(18, 12, 3.4), entrance = vec4(3.5, 0.6, 0.0, 0.0) },
    shell_high_estate = { tier = 'high', size = vec3(24, 16, 3.6), entrance = vec4(5.0, 0.6, 0.0, 0.0) },
    shell_high_condo = { tier = 'high', size = vec3(15, 10, 3.4), entrance = vec4(3.0, 0.6, 0.0, 0.0) },
}
