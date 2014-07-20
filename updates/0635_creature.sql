-- Backported missing NPC and gameobjects for Warsong Gluch weekly battleground event
-- Source: YTDB

-- Removed actual NPC/GO
DELETE FROM `creature` WHERE (`guid` IN (SELECT `guid` FROM `game_event_creature` WHERE `event` = 19) AND `id` IN (15102, 15105)) OR (`id` IN (15102, 15105));
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `game_event_creature` WHERE `event` = 19);
DELETE FROM `gameobject` WHERE (`guid` IN (SELECT `guid` FROM `game_event_creature` WHERE `event` = 19) AND `id` IN (180400, 180397, 180394)) OR (`id` IN (180400, 180397, 180394)) ;

DELETE FROM `game_event_creature` WHERE `event` = 19;
DELETE FROM `game_event_creature_data` WHERE `event` = 19;
DELETE FROM `game_event_gameobject` WHERE `event` = 19;


SET @GUID := 160426;
-- Backported missing NPCs
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 59;
INSERT INTO `creature` VALUES
(@GUID + 0, 15102, 1, 0, 0, 9961.1, 2179.29, 1327.8, 5.13127, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 1, 15102, 1, 0, 0, 9962.88, 2175.22, 1327.8, 1.97222, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 2, 15102, 1, 0, 0, 9983.62, 2350.23, 1330.87, 4.92183, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 3, 15102, 1, 0, 0, 9916.41, 2345.44, 1330.79, 4.69269, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 4, 15102, 1, 0, 0, 9915.95, 2338.64, 1330.79, 1.50083, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 5, 15102, 1, 0, 0, 9727.12, 2542.52, 1335.24, 2.42601, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 6, 15102, 1, 0, 0, 9724.21, 2545, 1335.76, 5.58505, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 7, 15102, 0, 0, 0, -5032.97, -926.68, 501.743, 4.64258, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 8, 15102, 0, 0, 0, -4836.85, -1171.63, 502.277, 2.44346, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 9, 15102, 0, 0, 0, -4916.61, -852.305, 501.745, 1.48353, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 10, 15102, 0, 0, 0, -4680.7, -985.645, 501.642, 3.08923, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 11, 15102, 0, 0, 0, -8850.69, 589.49, 93.7805, 4.06662, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 12, 15102, 0, 0, 0, -8873.52, 544.724, 106.367, 3.82227, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 13, 15102, 0, 0, 0, -8387.24, 286.125, 120.969, 2.30383, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 14, 15102, 1, 0, 0, 9984.56, 2345.23, 1330.87, 1.74533, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 15, 15102, 1, 0, 0, 9959.42, 2484.32, 1316.13, 0.750492, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 16, 15102, 1, 0, 0, 9962.13, 2487.17, 1316.12, 3.9968, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 17, 15102, 0, 0, 0, -5030.94, -1269.32, 505.383, 0.296706, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 18, 15102, 0, 0, 0, -5026.13, -1267.75, 505.383, 3.47321, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 19, 15102, 0, 0, 0, -4839.37, -1169.09, 502.279, 5.37561, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 20, 15102, 0, 0, 0, -5033.75, -931.287, 501.743, 1.32645, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 21, 15102, 0, 0, 0, -4916.43, -848.374, 501.745, 4.72984, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 22, 15102, 0, 0, 0, -4683.46, -985.091, 501.627, 6.03884, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 23, 15102, 0, 0, 0, -8840.63, 652.959, 97.1951, 5.60251, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 24, 15102, 0, 0, 0, -8838.8, 651.394, 96.8924, 2.42601, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 25, 15102, 0, 0, 0, -8389.1, 288.407, 120.969, 5.53269, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 26, 15102, 0, 0, 0, -8876.83, 542.382, 106.366, 0.558505, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 27, 15102, 0, 0, 0, -8411.89, 575.031, 92.3179, 0.855211, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 28, 15102, 0, 0, 0, -8409.07, 578.255, 92.0611, 3.9968, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 29, 15102, 0, 0, 0, -8853.08, 587.01, 94.0289, 0.680678, 600, 0, 0, 1042, 0, 0, 0),
(@GUID + 30, 15105, 1, 0, 0, -1378.76, -55.0802, 158.865, 4.86067, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 31, 15105, 1, 0, 0, -1379.23, -62.2518, 159.228, 1.6154, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 32, 15105, 1, 0, 0, 1656.7, -4396.01, 21.9841, 0.777337, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 33, 15105, 1, 0, 0, 1662.07, -4393.9, 22.3323, 3.37701, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 34, 15105, 1, 0, 0, 1667.17, -4345.44, 61.2465, 2.19813, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 35, 15105, 1, 0, 0, 1663.54, -4342.44, 61.2464, 5.48109, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 36, 15105, 1, 0, 0, 1932.92, -4708.89, 36.6486, 5.82197, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 37, 15105, 1, 0, 0, 1937.62, -4711.23, 36.6373, 2.7864, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 38, 15105, 1, 0, 0, 1740.15, -3958.53, 49.6791, 5.15531, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 39, 15105, 1, 0, 0, 1743.58, -3965.77, 49.4098, 2.01058, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 40, 15105, 1, 0, 0, 1919.03, -4307.52, 24.7818, 4.57254, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 41, 15105, 1, 0, 0, 1918.23, -4314.13, 23.3494, 1.59117, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 42, 15105, 1, 0, 0, -1247.31, 54.7464, 127.128, 3.6103, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 43, 15105, 1, 0, 0, -1252.15, 52.0738, 126.887, 0.525255, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 44, 15105, 1, 0, 0, -1092.18, -16.1053, 140.652, 5.1709, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 45, 15105, 1, 0, 0, -1089.53, -23.4949, 139.8, 2.02537, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 46, 15105, 1, 0, 0, -1277.4, 135.981, 131.512, 5.40808, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 47, 15105, 1, 0, 0, -1271.79, 130.519, 131.647, 2.44163, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 48, 15105, 1, 0, 0, -1035.64, -230.733, 160.126, 2.00417, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 49, 15105, 1, 0, 0, -1038.77, -222.968, 160.212, 4.66509, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 50, 15105, 0, 0, 0, 1594.74, 315.413, -41.4244, 5.46497, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 51, 15105, 0, 0, 0, 1599.21, 312.768, -41.4244, 2.42155, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 52, 15105, 0, 0, 0, 1526.12, 243.872, -41.3897, 4.89163, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 53, 15105, 0, 0, 0, 1520.85, 241.053, -41.3897, 0.100699, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 54, 15105, 0, 0, 0, 1592.28, 170.392, -41.4244, 4.90339, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 55, 15105, 0, 0, 0, 1592.99, 166.749, -41.4244, 1.79321, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 56, 15105, 0, 0, 0, 1780.39, 231.713, -62.1756, 1.61224, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 57, 15105, 0, 0, 0, 1780.06, 239.994, -62.1756, 4.79467, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 58, 15105, 0, 0, 0, 1260.35, 351.347, -63.6943, 4.39085, 600, 0, 0, 1605, 852, 0, 0),
(@GUID + 59, 15105, 0, 0, 0, 1259.22, 348.313, -63.714, 1.20999, 600, 0, 0, 1605, 852, 0, 0);

DELETE FROM `game_event_creature` WHERE `guid` BETWEEN @GUID + 0 AND @GUID + 59;
INSERT INTO `game_event_creature` VALUES
(@GUID + 0, 19),
(@GUID + 1, 19),
(@GUID + 2, 19),
(@GUID + 3, 19),
(@GUID + 4, 19),
(@GUID + 5, 19),
(@GUID + 6, 19),
(@GUID + 7, 19),
(@GUID + 8, 19),
(@GUID + 9, 19),
(@GUID + 10, 19),
(@GUID + 11, 19),
(@GUID + 12, 19),
(@GUID + 13, 19),
(@GUID + 14, 19),
(@GUID + 15, 19),
(@GUID + 16, 19),
(@GUID + 17, 19),
(@GUID + 18, 19),
(@GUID + 19, 19),
(@GUID + 20, 19),
(@GUID + 21, 19),
(@GUID + 22, 19),
(@GUID + 23, 19),
(@GUID + 24, 19),
(@GUID + 25, 19),
(@GUID + 26, 19),
(@GUID + 27, 19),
(@GUID + 28, 19),
(@GUID + 29, 19),
(@GUID + 30, 19),
(@GUID + 31, 19),
(@GUID + 32, 19),
(@GUID + 33, 19),
(@GUID + 34, 19),
(@GUID + 35, 19),
(@GUID + 36, 19),
(@GUID + 37, 19),
(@GUID + 38, 19),
(@GUID + 39, 19),
(@GUID + 40, 19),
(@GUID + 41, 19),
(@GUID + 42, 19),
(@GUID + 43, 19),
(@GUID + 44, 19),
(@GUID + 45, 19),
(@GUID + 46, 19),
(@GUID + 47, 19),
(@GUID + 48, 19),
(@GUID + 49, 19),
(@GUID + 50, 19),
(@GUID + 51, 19),
(@GUID + 52, 19),
(@GUID + 53, 19),
(@GUID + 54, 19),
(@GUID + 55, 19),
(@GUID + 56, 19),
(@GUID + 57, 19),
(@GUID + 58, 19),
(@GUID + 59, 19);

SET @OBJ = 250064;
-- Backported missing GOs
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OBJ + 0 AND @OBJ + 44;
INSERT INTO `gameobject` VALUES
(@OBJ + 0, 180400, 0, -5035.72, -922.074, 502.826, 2.98451, 0, 0, 0.996917, 0.0784606, 180, 100, 1),
(@OBJ + 1, 180400, 0, -4919.79, -844.952, 503.127, 0.663225, 0, 0, 0.325568, 0.945519, 180, 100, 1),
(@OBJ + 2, 180400, 0, -4832.72, -1171.25, 503.501, -1.8326, 0, 0, -0.793355, 0.60876, 180, 100, 1),
(@OBJ + 3, 180400, 0, -4675.23, -985.175, 503.026, -1.79769, 0, 0, -0.782608, 0.622514, 180, 100, 1),
(@OBJ + 4, 180400, 0, -8870.22, 544.18, 107.381, 1.88496, 0, 0, 0.809018, 0.587783, 180, 100, 1),
(@OBJ + 5, 180400, 0, -8847.87, 594.554, 94.5125, -0.715585, 0, 0, -0.350207, 0.936672, 180, 100, 1),
(@OBJ + 6, 180400, 0, -8843.32, 654.261, 98.6822, 0.645772, 0, 0, 0.317305, 0.948324, 180, 100, 1),
(@OBJ + 7, 180394, 1, 1657.46, -4385.4, 23.8067, -1.01229, 0, 0, -0.484809, 0.87462, 180, 100, 1),
(@OBJ + 8, 180394, 1, 1663.59, -4343.19, 61.4731, 0.750491, 0, 0, 0.366501, 0.930418, 180, 100, 1),
(@OBJ + 9, 180394, 1, -1034.77, -227.402, 160.276, 3.06603, 0, 0, 0.999286, 0.0377723, 180, 100, 1),
(@OBJ + 10, 180394, 1, -1273.59, 134.621, 132.174, -2.32129, 0, 0, -0.91706, 0.398748, 900, 100, 1),
(@OBJ + 11, 180400, 1, 9915.71, 2342.09, 1330.79, 6.0805, 0, 0, 0.101169, -0.994869, 180, 100, 1),
(@OBJ + 12, 180397, 0, -8403.31, 576.532, 91.5694, -0.95993, 0, 0, -0.461748, 0.887011, 900, 100, 1),
(@OBJ + 13, 180397, 0, -8386.61, 288.546, 120.886, -2.47837, 0, 0, -0.945519, 0.325567, 900, 100, 1),
(@OBJ + 14, 180397, 0, -5036.14, -921.804, 501.659, -0.122173, 0, 0, -0.0610485, 0.998135, 180, 100, 1),
(@OBJ + 15, 180397, 0, -4919.31, -844.615, 501.661, -0.855212, 0, 0, -0.414694, 0.909961, 180, 100, 1),
(@OBJ + 16, 180397, 0, -4832.88, -1171.66, 502.195, 1.309, 0, 0, 0.608763, 0.793352, 180, 100, 1),
(@OBJ + 17, 180397, 0, -4675.27, -985.681, 501.659, 1.36136, 0, 0, 0.629322, 0.777145, 180, 100, 1),
(@OBJ + 18, 180397, 0, -8870.4, 544.658, 106.284, -1.22173, 0, 0, -0.573576, 0.819152, 180, 100, 1),
(@OBJ + 19, 180397, 0, -8847.53, 594.128, 93.4274, 2.42601, 0, 0, 0.936673, 0.350206, 180, 100, 1),
(@OBJ + 20, 180397, 0, -8842.86, 654.543, 97.2775, -2.47837, 0, 0, -0.945519, 0.325567, 180, 100, 1),
(@OBJ + 21, 180397, 0, -5035.03, -1263.47, 505.3, 0.698132, 0, 0, 0.34202, 0.939693, 180, 100, 1),
(@OBJ + 22, 180397, 1, 9965.64, 2179.93, 1328.07, -2.54818, 0, 0, -0.956305, 0.292372, 180, 100, 1),
(@OBJ + 23, 180397, 1, 9985.21, 2342.41, 1330.79, 0, 0, 0, 0, 1, 180, 100, 1),
(@OBJ + 24, 180397, 1, 9720.18, 2545.46, 1335.68, -0.977383, 0, 0, -0.469471, 0.882948, 180, 100, 1),
(@OBJ + 25, 180397, 1, 9963.93, 2490.04, 1316.05, 0, 0, 0, 0, 1, 180, 100, 1),
(@OBJ + 26, 180397, 1, 9915.12, 2342.19, 1330.79, 6.0805, 0, 0, 0.101169, -0.994869, 180, 100, 1),
(@OBJ + 27, 180400, 0, -8387.07, 288.096, 120.886, -2.46091, 0, 0, -0.942641, 0.333809, 180, 100, 1),
(@OBJ + 28, 180400, 0, -5034.64, -1263.19, 506.717, -2.426, 0, 0, -0.936671, 0.350211, 180, 100, 1),
(@OBJ + 29, 180400, 0, -8402.93, 576.101, 92.1175, -0.95993, 0, 0, -0.461748, 0.887011, 900, 100, 1),
(@OBJ + 30, 180400, 1, 9965.23, 2179.72, 1329.41, 0.541051, 0, 0, 0.267238, 0.963631, 180, 100, 1),
(@OBJ + 31, 180400, 1, 9720.44, 2545, 1336.91, 2.14675, 0, 0, 0.878816, 0.477161, 180, 100, 1),
(@OBJ + 32, 180400, 1, 9963.42, 2490.15, 1317.3, 0, 0, 0, 0, 1, 180, 100, 1),
(@OBJ + 33, 180400, 1, 9984.69, 2342.52, 1331.81, 0, 0, 0, 0, 1, 180, 100, 1),
(@OBJ + 34, 180394, 1, 1933.51, -4709.62, 36.9714, 1.62316, 0, 0, 0.725376, 0.688353, 180, 100, 1),
(@OBJ + 35, 180394, 1, 1749.5, -3963.36, 49.7743, -2.87979, 0, 0, -0.991445, 0.130528, 180, 100, 1),
(@OBJ + 36, 180394, 1, 1915.36, -4309.06, 24.5465, 5.93366, 0, 0, 0.173874, -0.984768, 180, 100, 1),
(@OBJ + 37, 180394, 1, -1091.78, -20.9857, 140.129, 0.296705, 0, 0, 0.147809, 0.989016, 900, 100, 1),
(@OBJ + 38, 180394, 1, -1249.68, 52.2836, 127.186, 1.90241, 0, 0, 0.814116, 0.580702, 900, 100, 1),
(@OBJ + 39, 180394, 1, -1379.01, -58.6698, 158.927, -2.87979, 0, 0, -0.991445, 0.130528, 900, 100, 1),
(@OBJ + 40, 180394, 0, 1263.18, 353.21, -63.7039, -0.767944, 0, 0, -0.374606, 0.927184, 180, 100, 1),
(@OBJ + 41, 180394, 0, 1781.56, 235.419, -62.1757, 3.08603, 0, 0, 0.999614, 0.0277778, 180, 100, 1),
(@OBJ + 42, 180394, 0, 1599.34, 316.437, -41.4244, 3.957, 0, 0, 0.918034, -0.396502, 600, 0, 1),
(@OBJ + 43, 180394, 0, 1522.02, 244.067, -41.3897, 5.35501, 0, 0, 0.447607, -0.89423, 600, 0, 1),
(@OBJ + 44, 180394, 0, 1593.47, 164.941, -41.4244, 1.83248, 0, 0, 0.793318, 0.608807, 600, 0, 1);

DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN @OBJ + 0 AND @OBJ + 44;
INSERT INTO `game_event_gameobject` VALUES
(@OBJ + 0, 19),
(@OBJ + 1, 19),
(@OBJ + 2, 19),
(@OBJ + 3, 19),
(@OBJ + 4, 19),
(@OBJ + 5, 19),
(@OBJ + 6, 19),
(@OBJ + 7, 19),
(@OBJ + 8, 19),
(@OBJ + 9, 19),
(@OBJ + 10, 19),
(@OBJ + 11, 19),
(@OBJ + 12, 19),
(@OBJ + 13, 19),
(@OBJ + 14, 19),
(@OBJ + 15, 19),
(@OBJ + 16, 19),
(@OBJ + 17, 19),
(@OBJ + 18, 19),
(@OBJ + 19, 19),
(@OBJ + 20, 19),
(@OBJ + 21, 19),
(@OBJ + 22, 19),
(@OBJ + 23, 19),
(@OBJ + 24, 19),
(@OBJ + 25, 19),
(@OBJ + 26, 19),
(@OBJ + 27, 19),
(@OBJ + 28, 19),
(@OBJ + 29, 19),
(@OBJ + 30, 19),
(@OBJ + 31, 19),
(@OBJ + 32, 19),
(@OBJ + 33, 19),
(@OBJ + 34, 19),
(@OBJ + 35, 19),
(@OBJ + 36, 19),
(@OBJ + 37, 19),
(@OBJ + 38, 19),
(@OBJ + 39, 19),
(@OBJ + 40, 19),
(@OBJ + 41, 19),
(@OBJ + 42, 19),
(@OBJ + 43, 19),
(@OBJ + 44, 19);