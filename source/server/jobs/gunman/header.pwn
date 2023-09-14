#if defined _H_JOBS_GUNMAN_
    #endinput
#endif
#define _H_JOBS_GUNMAN_

new
    g_iUsedGunmanBenchs,
    Iterator:GunmanBenchQueue<MAX_PLAYERS>,
    g_rgiPlayerBenchUsed[MAX_PLAYERS] = { -1, ... };

new const
    Float:g_rgfGunmanBenchSites[][4] = {
        { 2553.7776, -1295.8497, 1044.1250, 1.6415 },
        { 2556.1426, -1295.8497, 1044.1250, 1.6415 },
        { 2558.5889, -1295.8497, 1044.1250, 1.6415 },
        { 2560.0452, -1284.7205, 1044.1250, 90.3156 },
        { 2560.0454, -1282.8284, 1044.1250, 87.8089 },
        { 2558.1379, -1282.7571, 1044.1250, 272.9907 },
        { 2558.1384, -1284.7229, 1044.1250, 272.9907 },
        { 2552.0376, -1284.7183, 1044.1250, 89.6889 },
        { 2552.0374, -1282.8586, 1044.1250, 89.6889 },
        { 2550.1306, -1282.8043, 1044.1250, 269.5440 },
        { 2550.1306, -1284.6898, 1044.1250, 269.5440 },
        { 2544.0610, -1284.6923, 1044.1250, 90.9423 },
        { 2544.0608, -1282.7592, 1044.1250, 90.9423 },
        { 2542.1538, -1282.8098, 1044.1250, 272.0507 },
        { 2542.1533, -1284.8495, 1044.1250, 272.0507 },
        { 2541.8589, -1291.0032, 1044.1250, 178.6765 },
        { 2544.4763, -1291.0048, 1044.1250, 178.6765 },
        { 2544.3831, -1295.8499, 1044.1250, 0.3881 },
        { 2542.1165, -1295.8508, 1044.1250, 0.3881 },
        { 2542.1379, -1302.6193, 1044.1250, 270.4604 },
        { 2542.1423, -1304.5365, 1044.1250, 269.5204 },
        { 2544.0493, -1304.5090, 1044.1250, 91.8821 },
        { 2544.0491, -1302.5327, 1044.1250, 91.8821 },
        { 2550.1885, -1302.5221, 1044.1250, 267.3270 },
        { 2550.1892, -1304.5217, 1044.1250, 269.2070 },
        { 2552.1016, -1304.5366, 1044.1250, 93.1354 },
        { 2552.0979, -1302.6097, 1044.1250, 92.1954 },
        { 2558.1655, -1302.6531, 1044.1250, 268.2670 },
        { 2558.1638, -1304.5928, 1044.1250, 268.2670 },
        { 2560.0803, -1304.5957, 1044.1250, 95.6420 },
        { 2560.0728, -1302.6307, 1044.1250, 86.2420 }
    };

new
    g_rgiBenchCheckpoint[sizeof(g_rgfGunmanBenchSites)];