
INSERT INTO `agrotechnology` (`id`, `name_cz`, `name_en`, `description_cz`, `description_en`, `manag_typ`, `note_cz`, `note_en`) VALUES
(16,	'Řisuty - setí 14.5.2020',	'Řisuty - seeded 14.5.2020',	'plochy oseté 14.5.2020',	'crops seeded May 14th 2020',	NULL,	NULL, NULL),


INSERT INTO `assignment_type` (`id`, `description_cz`, `description_en`) VALUES
(1,	'přímo měřeno',	'direct measurement'),
(2,	'přiřazeno dle podobnosti',	'assigned by similarity'),
(3,	'přiřazeno z nutnosti',	'assigned by necessity'),
(4,	'hodnota z katalogu parametrů E3D',	'E3D parameters catalogue value');

INSERT INTO `crop` (`id`, `crop_type_id`, `croper_type_id`, `name_cz`, `name_en`, `variety`, `is_catch_crop`, `description_cz`, `description_en`) VALUES
(1,	10,	6,	'úhor udržovaný',	'cultivated fallow',	NULL,	0,	'úhor před simulací obdělán rotačním kultivátorem do hloubky cca 20cm, pohrabán do roviny a zhutněný dvěma přejezdy válcem',	NULL),
(2,	10,	6,	'úhor neudržovaný',	'uncultivated fallow',	NULL,	0,	'ponechaná holá půda bez obdělávání s odstraněnou vegetací',	NULL),
(3,	1,	1,	'ječmen jarní',	'summer barley',	NULL,	0,	NULL,	''),
(4,	2,	1,	'ječmen ozimý',	'winter barley',	NULL,	0,	NULL,	''),
(5,	1,	1,	'pšenice jarní',	'summer wheat',	NULL,	0,	NULL,	''),
(6,	2,	1,	'pšenice ozimá',	'winter wheat',	NULL,	0,	NULL,	''),
(7,	4,	4,	'slunečnice',	'sunflower',	NULL,	0,	NULL,	''),
(8,	8,	2,	'hrách polní jarní',	'green peas',	NULL,	0,	NULL,	''),
(9,	5,	3,	'hořčice',	'mustard',	NULL,	1,	NULL,	''),
(10,	1,	1,	'pohanka',	'buckwheat',	NULL,	0,	'Fagopyrum esculentum',	'Fagopyrum esculentum'),
(11,	4,	3,	'řepka ozimá',	'winter rape',	NULL,	1,	NULL,	''),
(12,	1,	4,	'kukuřice',	'corn',	NULL,	0,	NULL,	''),
(13,	6,	5,	'vojtěška',	'alfalfa',	NULL,	0,	'Medicago sativa',	'Medicago sativa'),
(14,	8,	2,	'hrách polní ozimý',	'winter green peas',	NULL,	0,	NULL,	''),
(15,	5,	3,	'svazenka',	'fiddleneck',	NULL,	1,	'Phacelia tanacetifolia',	'Phacelia tanacetifolia'),
(16,	10,	6,	'seťové lože',	'seed bed',	NULL,	0,	NULL,	NULL),
(17,	3,	4,	'brambory',	'potatoes',	NULL,	0,	NULL,	''),
(18,	8,	2,	'bob obecný',	'broad bean',	NULL,	0,	NULL,	''),
(19,	7,	2,	'len setý',	'flax',	NULL,	0,	NULL,	''),
(20,	1,	1,	'proso',	'proso millet',	NULL,	0,	'Panicum miliaceum',	'Panicum miliaceum'),
(21,	8,	2,	'lupina',	'lupin',	NULL,	0,	'(vlčí bob)',	''),
(22,	8,	2,	'hrách rolní',	'field pea',	NULL,	1,	'(peluška) - Pisum sativum subsp. elatius',	'wild pea - Pisum sativum subsp. elatius'),
(23,	6,	5,	'jílek vytrvalý',	'ryegrass',	NULL,	0,	NULL,	''),
(24,	2,	1,	'žito ozimé',	'winter rye',	NULL,	0,	NULL,	''),
(25,	1,	1,	'oves jarní',	'summer oats',	NULL,	0,	NULL,	NULL),
(26,	2,	1,	'oves ozimý',	'winter oats',	NULL,	0,	NULL,	NULL),
(27,	1,	1,	'čirok',	'sorghum',	NULL,	0,	NULL,	NULL),
(28,	8,	5,	'hrách rolní ozimý',	'winter field peas',	NULL,	1,	NULL,	NULL),
(29,	8,	5,	'hrách rolní jarní',	'summer field peas',	NULL,	1,	NULL,	NULL),
(30,	11,	4,	'mrkev',	'carrot',	NULL,	0,	'Daucus carota',	'Daucus carota'),
(31,	3,	4,	'řepa',	'beets',	NULL,	0,	NULL,	NULL),
(32,	6,	5,	'travní směs',	'grass mixture',	NULL,	0,	NULL,	NULL),
(33,	12,	4,	'vinná réva',	'grape vine',	NULL,	0,	'Vitis vinifera',	'Vitis vinifera'),
(34,	13,	NULL,	'Geotextilie Macmat 8.1',	'Geotextile Macmat 8.1',	NULL,	0,	'Geotextilie položené na připraveném úhoru a připevněna zemními kotvami',	'Geotextile laying on the fresh fallow connected to the surface by ground anchors'),
(35,	13,	NULL,	'Geotextilie Enkamat 7010',	'Geotextile Enkamat 7010',	NULL,	0,	NULL,	NULL),
(36,	13,	NULL,	'Geotextilie K700',	'Geotextile K700',	NULL,	0,	NULL,	NULL),
(37,	13,	7,	'Geotextilie Biomac-c',	'Geotextile Biomac-c',	NULL,	0,	NULL,	NULL),
(38,	13,	7,	'Geotextilie Macmat 18.1',	'Geotextile Macmat 18.1',	NULL,	0,	NULL,	NULL),
(39,	13,	7,	'Geotextilie Enkamat 7020',	'Geotextile Enkamat 7020',	NULL,	0,	NULL,	NULL),
(40,	13,	7,	'Macmat 18 zásyp',	'Macmat 18 fill',	NULL,	0,	NULL,	NULL),
(41,	13,	7,	'mulč',	'mulch',	NULL,	0,	NULL,	NULL),
(42,	13,	7,	'Trojúhelník',	'Triangle',	NULL,	0,	NULL,	NULL),
(43,	13,	7,	'Juta',	'Jute',	NULL,	0,	NULL,	NULL),
(44,	13,	7,	'kokosová síť K400',	'coconut net K400',	NULL,	0,	NULL,	NULL),
(45,	13,	7,	'klejonáž',	'klejonáž',	NULL,	0,	NULL,	NULL),
(46,	13,	7,	'seno',	'hay',	NULL,	0,	NULL,	NULL),
(47,	13,	7,	'netkaná geotextilie',	'non-woven geotextile',	NULL,	0,	NULL,	NULL),
(48,	13,	7,	'Fortrac 3D zasypaný',	'Fortrac 3D filled',	NULL,	0,	NULL,	NULL),
(49,	13,	7,	'Fortrac 3D',	'Fortrac 3D',	NULL,	0,	NULL,	NULL),
(50,	13,	7,	'válec 1x',	'roller 1x',	NULL,	0,	NULL,	NULL),
(51,	13,	7,	'válec 2x',	'roller 2x',	NULL,	0,	NULL,	NULL),
(52,	13,	7,	'Enkamat 7020 zásyp',	'Enkamat 7020 filled',	NULL,	0,	NULL,	NULL),
(53,	NULL,	NULL,	'Mák',	NULL,	NULL,	0,	NULL,	NULL),
(54,	3,	NULL,	'Brambory + oves v meziřadí',	NULL,	NULL,	0,	NULL,	NULL),
(55,	NULL,	NULL,	'Spálená plocha',	NULL,	NULL,	0,	NULL,	NULL),
(56,	10,	NULL,	'Úhor kypřený neválcovaný',	NULL,	NULL,	0,	'Lab DS',	NULL),
(57,	NULL,	NULL,	'cukrovka',	NULL,	NULL,	0,	NULL,	NULL),
(58,	NULL,	NULL,	'soja',	NULL,	NULL,	0,	NULL,	NULL);

INSERT INTO `crop_er_type` (`id`, `name_cz`, `name_en`) VALUES
(1,	'obiloviny',	'small grains'),
(2,	'luskoviny',	'legumes'),
(3,	'olejniny',	'oil-crops'),
(4,	'erozně nebezpečné',	'erosion prone crops'),
(5,	'ochranné plodiny',	'protective crops'),
(6,	'úhor',	'fallow'),
(7,	'geotextilie',	'geotextile');

INSERT INTO `crop_type` (`id`, `name_cz`, `name_en`, `description_cz`, `description_en`) VALUES
(1,	'obilniny jarní',	'summer cereals',	'',	''),
(2,	'obilniny ozimé',	'winter cereals',	'',	''),
(3,	'okopaniny',	'root-crops',	'',	''),
(4,	'olejniny',	'oil-crops',	'',	''),
(5,	'pícniny jednoleté',	'fodder crops single year',	'',	''),
(6,	'pícniny víceleté',	'fodder crops continous',	'',	''),
(7,	'technické plodiny',	'industrial crops',	'',	''),
(8,	'luštěniny',	'legumes',	'',	''),
(9,	'energetické plodiny',	'energy-crops',	'',	''),
(10,	'bez plodiny',	'without cover',	'jakákoliv situace, kdy je půda bez půdního pokryvu',	'soil surface without growing canopy'),
(11,	'zelenina',	'vegetables',	'',	''),
(12,	'trvalá kultura',	'permanent culture',	'Porost víceletých kultur se zatravněným meziřadím (sady, vinice, RRD)',	NULL),
(13,	'geotextilie',	'geotextile',	'Geotextílie na povrchu půdy',	'Geotextile on the soil surface');

INSERT INTO `data` (`id`, `record_id`, `time`, `value`, `related_value_x`, `related_value_y`, `related_value_z`) VALUES
(23193,	1464,	NULL,	1.2,	NULL,	NULL,	NULL),
(23198,	1469,	NULL,	1126.6,	NULL,	NULL,	NULL),
(29956,	2275,	NULL,	1120.4,	NULL,	NULL,	NULL),
(29957,	2275,	NULL,	1175.4,	NULL,	NULL,	NULL),
(29958,	2275,	NULL,	1148.6,	NULL,	NULL,	NULL),
(29959,	2275,	NULL,	1165.7,	NULL,	NULL,	NULL),
(29960,	2275,	NULL,	1143.9,	NULL,	NULL,	NULL),
(29961,	2275,	NULL,	1142.6,	NULL,	NULL,	NULL),
(29962,	2275,	NULL,	1175.4,	NULL,	NULL,	NULL),
(29963,	2276,	NULL,	1153.1,	NULL,	NULL,	NULL),
(23845,	1575,	NULL,	11.95680046081543,	0.001086279982700944,	NULL,	NULL),
(23846,	1575,	NULL,	16.26409912109375,	0.0015158599708229303,	NULL,	NULL),
(23847,	1575,	NULL,	28.547000885009766,	0.004545439966022968,	NULL,	NULL),
(23848,	1575,	NULL,	32.4567985534668,	0.006400850135833025,	NULL,	NULL),
(23849,	1575,	NULL,	35.082000732421875,	0.007802450098097324,	NULL,	NULL),
(23850,	1575,	NULL,	37.62620162963867,	0.010994499549269676,	NULL,	NULL),
(23851,	1575,	NULL,	42.735801696777344,	0.017164599150419235,	NULL,	NULL),
(23852,	1575,	NULL,	47.10689926147461,	0.023988399654626846,	NULL,	NULL),
(23853,	1575,	NULL,	52.635799407958984,	0.03735940158367157,	NULL,	NULL),
(23854,	1575,	NULL,	56.34809875488281,	0.05217580124735832,	NULL,	NULL),
(23855,	1575,	NULL,	60.472900390625,	0.07273919880390167,	NULL,	NULL),
(23856,	1575,	NULL,	90.92500305175781,	0.20000000298023224,	NULL,	NULL),
(23857,	1575,	NULL,	97.32499694824219,	0.6299999952316284,	NULL,	NULL),
(23858,	1575,	NULL,	100,	2,	NULL,	NULL),
(28592,	2048,	'00:00:00',	60,	NULL,	NULL,	NULL),
(28593,	2048,	'00:32:00',	0,	NULL,	NULL,	NULL),
(28594,	2049,	'00:03:00',	1.236,	NULL,	NULL,	NULL),
(28595,	2049,	'00:05:30',	4.741,	NULL,	NULL,	NULL),
(28596,	2049,	'00:08:00',	7.995,	NULL,	NULL,	NULL),
(28597,	2049,	'00:10:30',	10.13,	NULL,	NULL,	NULL),
(28598,	2049,	'00:13:00',	10.323,	NULL,	NULL,	NULL),
(28599,	2049,	'00:15:30',	10.416,	NULL,	NULL,	NULL),
(28600,	2049,	'00:18:00',	12.406,	NULL,	NULL,	NULL),
(28601,	2049,	'00:20:30',	14.367,	NULL,	NULL,	NULL),
(28602,	2049,	'00:23:00',	12.232,	NULL,	NULL,	NULL),
(28603,	2049,	'00:25:30',	14.317,	NULL,	NULL,	NULL),
(28604,	2049,	'00:28:00',	14.025,	NULL,	NULL,	NULL),
(28605,	2049,	'00:30:30',	14.276,	NULL,	NULL,	NULL),
(28606,	2050,	'00:03:00',	58.128,	NULL,	NULL,	NULL),
(28607,	2050,	'00:05:30',	65.663,	NULL,	NULL,	NULL),
(28608,	2050,	'00:08:00',	62.048,	NULL,	NULL,	NULL),
(28609,	2050,	'00:10:30',	53.766,	NULL,	NULL,	NULL),
(28610,	2050,	'00:13:00',	48.658,	NULL,	NULL,	NULL),
(28611,	2050,	'00:15:30',	42.128,	NULL,	NULL,	NULL),
(28612,	2050,	'00:18:00',	45.349,	NULL,	NULL,	NULL),
(28613,	2050,	'00:20:30',	44.027,	NULL,	NULL,	NULL),
(28614,	2050,	'00:23:00',	38.777,	NULL,	NULL,	NULL),
(28615,	2050,	'00:25:30',	42.035,	NULL,	NULL,	NULL),
(28616,	2050,	'00:28:00',	38.102,	NULL,	NULL,	NULL),
(28617,	2050,	'00:30:30',	38.394,	NULL,	NULL,	NULL),
(28618,	2051,	'00:03:00',	0.18,	NULL,	NULL,	NULL),
(28619,	2051,	'00:05:30',	0.778,	NULL,	NULL,	NULL),
(28620,	2051,	'00:08:00',	1.24,	NULL,	NULL,	NULL),
(28621,	2051,	'00:10:30',	1.362,	NULL,	NULL,	NULL),
(28622,	2051,	'00:13:00',	1.256,	NULL,	NULL,	NULL),
(28623,	2051,	'00:15:30',	1.097,	NULL,	NULL,	NULL),
(28624,	2051,	'00:18:00',	1.406,	NULL,	NULL,	NULL),
(28625,	2051,	'00:20:30',	1.581,	NULL,	NULL,	NULL),
(28626,	2051,	'00:23:00',	1.186,	NULL,	NULL,	NULL),
(28627,	2051,	'00:25:30',	1.505,	NULL,	NULL,	NULL),
(28628,	2051,	'00:28:00',	1.336,	NULL,	NULL,	NULL),
(28629,	2051,	'00:30:30',	1.37,	NULL,	NULL,	NULL),
(28630,	2052,	'00:00:00',	60,	NULL,	NULL,	NULL),
(28631,	2052,	'00:31:00',	0,	NULL,	NULL,	NULL),
(28632,	2053,	'00:01:00',	4.348,	NULL,	NULL,	NULL),
(28633,	2053,	'00:03:30',	13.388,	NULL,	NULL,	NULL),
(28634,	2053,	'00:06:00',	12.371,	NULL,	NULL,	NULL),
(28635,	2053,	'00:08:30',	15.139,	NULL,	NULL,	NULL),
(28636,	2053,	'00:11:00',	15.777,	NULL,	NULL,	NULL),
(28637,	2053,	'00:13:30',	14.182,	NULL,	NULL,	NULL),
(28638,	2053,	'00:16:00',	15.976,	NULL,	NULL,	NULL),
(28639,	2053,	'00:18:30',	15.543,	NULL,	NULL,	NULL),
(28640,	2053,	'00:21:00',	13.938,	NULL,	NULL,	NULL),
(28641,	2053,	'00:23:30',	16.063,	NULL,	NULL,	NULL),
(28642,	2053,	'00:26:00',	15.693,	NULL,	NULL,	NULL),
(28643,	2053,	'00:28:30',	13.983,	NULL,	NULL,	NULL),
(28644,	2054,	'00:01:00',	32.692,	NULL,	NULL,	NULL),
(28645,	2054,	'00:03:30',	29.26,	NULL,	NULL,	NULL),
(28646,	2054,	'00:06:00',	31.02,	NULL,	NULL,	NULL),
(28647,	2054,	'00:08:30',	34.577,	NULL,	NULL,	NULL),
(28648,	2054,	'00:11:00',	35.422,	NULL,	NULL,	NULL),
(28649,	2054,	'00:13:30',	35.464,	NULL,	NULL,	NULL),
(28650,	2054,	'00:16:00',	36.064,	NULL,	NULL,	NULL),
(28651,	2054,	'00:18:30',	35.79,	NULL,	NULL,	NULL),
(28652,	2054,	'00:21:00',	34.552,	NULL,	NULL,	NULL),
(28653,	2054,	'00:23:30',	38.228,	NULL,	NULL,	NULL),
(28654,	2054,	'00:26:00',	34.64,	NULL,	NULL,	NULL),
(28655,	2054,	'00:28:30',	34.509,	NULL,	NULL,	NULL),
(28656,	2055,	'00:01:00',	0.355,	NULL,	NULL,	NULL),
(28657,	2055,	'00:03:30',	0.979,	NULL,	NULL,	NULL),
(28658,	2055,	'00:06:00',	0.959,	NULL,	NULL,	NULL),
(28659,	2055,	'00:08:30',	1.309,	NULL,	NULL,	NULL),
(28660,	2055,	'00:11:00',	1.397,	NULL,	NULL,	NULL),
(28661,	2055,	'00:13:30',	1.257,	NULL,	NULL,	NULL),
(28662,	2055,	'00:16:00',	1.44,	NULL,	NULL,	NULL),
(28663,	2055,	'00:18:30',	1.391,	NULL,	NULL,	NULL),
(28664,	2055,	'00:21:00',	1.204,	NULL,	NULL,	NULL),
(28665,	2055,	'00:23:30',	1.535,	NULL,	NULL,	NULL),
(28666,	2055,	'00:26:00',	1.359,	NULL,	NULL,	NULL),
(28667,	2055,	'00:28:30',	1.206,	NULL,	NULL,	NULL),
(29532,	2209,	'00:00:00',	13.2,	1.33,	0.5,	NULL),
(29533,	2209,	'00:00:00',	12.9,	2.66,	0.5,	NULL),
(29534,	2209,	'00:00:00',	12.4,	4,	0.5,	NULL),
(29535,	2209,	'00:00:00',	12.9,	5.33,	0.5,	NULL),
(29536,	2209,	'00:00:00',	11.9,	6.66,	0.5,	NULL),
(29537,	2209,	'00:00:00',	13.9,	1.33,	1.5,	NULL),
(29538,	2209,	'00:00:00',	13.7,	2.66,	1.5,	NULL),
(29539,	2209,	'00:00:00',	13.9,	4,	1.5,	NULL),
(29540,	2209,	'00:00:00',	12.7,	5.33,	1.5,	NULL),
(29541,	2209,	'00:00:00',	13.5,	6.66,	1.5,	NULL),
(29542,	2210,	'00:00:00',	13.1,	NULL,	NULL,	NULL),
(29543,	2211,	'00:00:00',	25.3,	1.33,	0.5,	NULL),
(29544,	2211,	'00:00:00',	26.1,	2.66,	0.5,	NULL),
(29545,	2211,	'00:00:00',	22.6,	4,	0.5,	NULL),
(29546,	2211,	'00:00:00',	25.8,	5.33,	0.5,	NULL),
(29547,	2211,	'00:00:00',	23,	6.66,	0.5,	NULL),
(29548,	2211,	'00:00:00',	28.6,	1.33,	1.5,	NULL),
(29549,	2211,	'00:00:00',	26.9,	2.66,	1.5,	NULL),
(29550,	2211,	'00:00:00',	28.7,	4,	1.5,	NULL),
(29551,	2211,	'00:00:00',	23.9,	5.33,	1.5,	NULL),
(29552,	2211,	'00:00:00',	20.1,	6.66,	1.5,	NULL),
(29553,	2212,	'00:00:00',	25.1,	NULL,	NULL,	NULL),
(30374,	2381,	'00:08:00',	6.9,	1.5,	NULL,	NULL),
(30375,	2381,	'00:08:00',	4.9,	2.5,	NULL,	NULL),
(30376,	2381,	'00:08:00',	3.2,	3.5,	NULL,	NULL),
(30377,	2381,	'00:08:00',	3.9,	4.5,	NULL,	NULL),
(30378,	2381,	'00:08:00',	4.7,	5.5,	NULL,	NULL),
(30379,	2381,	'00:08:00',	4.1,	6.5,	NULL,	NULL),
(30380,	2381,	'00:08:00',	3,	7.5,	NULL,	NULL),
(30381,	2382,	'00:13:00',	7.9,	1.5,	NULL,	NULL),
(30382,	2382,	'00:13:00',	6.2,	2.5,	NULL,	NULL),
(30383,	2382,	'00:13:00',	6.6,	3.5,	NULL,	NULL),
(30384,	2382,	'00:13:00',	5,	4.5,	NULL,	NULL),
(30385,	2382,	'00:13:00',	4.1,	5.5,	NULL,	NULL),
(30386,	2382,	'00:13:00',	3.9,	6.5,	NULL,	NULL),
(30387,	2382,	'00:13:00',	2.9,	7.5,	NULL,	NULL),
(30388,	2383,	'00:20:30',	7.4,	1.5,	NULL,	NULL),
(30389,	2383,	'00:20:30',	5.9,	2.5,	NULL,	NULL),
(30390,	2383,	'00:20:30',	5.7,	3.5,	NULL,	NULL),
(30391,	2383,	'00:20:30',	5.3,	4.5,	NULL,	NULL),
(30392,	2383,	'00:20:30',	4.6,	5.5,	NULL,	NULL),
(30393,	2383,	'00:20:30',	4.1,	6.5,	NULL,	NULL),
(30394,	2383,	'00:20:30',	2.2,	7.5,	NULL,	NULL),
(30395,	2384,	'00:28:00',	6.4,	1.5,	NULL,	NULL),
(30396,	2384,	'00:28:00',	5.9,	2.5,	NULL,	NULL),
(30397,	2384,	'00:28:00',	4.7,	3.5,	NULL,	NULL),
(30398,	2384,	'00:28:00',	4.5,	4.5,	NULL,	NULL),
(30399,	2384,	'00:28:00',	3.5,	5.5,	NULL,	NULL),
(30400,	2384,	'00:28:00',	3.5,	6.5,	NULL,	NULL),
(30401,	2384,	'00:28:00',	2.1,	7.5,	NULL,	NULL),
(30402,	2385,	'00:06:00',	6.6,	1.5,	NULL,	NULL),
(30403,	2385,	'00:06:00',	4.8,	2.5,	NULL,	NULL),
(30404,	2385,	'00:06:00',	4.9,	3.5,	NULL,	NULL),
(30405,	2385,	'00:06:00',	4.3,	4.5,	NULL,	NULL),
(30406,	2385,	'00:06:00',	4.1,	5.5,	NULL,	NULL),
(30409,	2386,	'00:11:00',	7.699999809265137,	1.5,	NULL,	NULL),
(30410,	2386,	'00:11:00',	6.800000190734863,	2.5,	NULL,	NULL),
(30411,	2386,	'00:11:00',	6.099999904632568,	3.5,	NULL,	NULL),
(30412,	2386,	'00:11:00',	5.099999904632568,	4.5,	NULL,	NULL),
(30413,	2386,	'00:11:00',	4.599999904632568,	5.5,	NULL,	NULL),
(30414,	2386,	'00:11:00',	4.5,	6.5,	NULL,	NULL),
(30415,	2386,	'00:11:00',	2.700000047683716,	7.5,	NULL,	NULL),
(30416,	2387,	'00:18:30',	6.199999809265137,	1.5,	NULL,	NULL),
(30417,	2387,	'00:18:30',	4.800000190734863,	2.5,	NULL,	NULL),
(30418,	2387,	'00:18:30',	5,	3.5,	NULL,	NULL),
(30419,	2387,	'00:18:30',	4.800000190734863,	4.5,	NULL,	NULL),
(30420,	2387,	'00:18:30',	4.400000095367432,	5.5,	NULL,	NULL),
(30421,	2387,	'00:18:30',	4.800000190734863,	6.5,	NULL,	NULL),
(30422,	2387,	'00:18:30',	2.700000047683716,	7.5,	NULL,	NULL),
(30423,	2388,	'00:24:00',	7.300000190734863,	1.5,	NULL,	NULL),
(30424,	2388,	'00:24:00',	5.400000095367432,	2.5,	NULL,	NULL),
(30425,	2388,	'00:24:00',	5,	3.5,	NULL,	NULL),
(30426,	2388,	'00:24:00',	5.900000095367432,	4.5,	NULL,	NULL),
(30427,	2388,	'00:24:00',	5.099999904632568,	5.5,	NULL,	NULL),
(30428,	2388,	'00:24:00',	5,	6.5,	NULL,	NULL),
(30429,	2388,	'00:24:00',	3.4000000953674316,	7.5,	NULL,	NULL),
(31966,	3000,	NULL,	0,	NULL,	NULL,	NULL),
(31967,	3001,	NULL,	0,	NULL,	NULL,	NULL),
(31968,	3002,	NULL,	0.002667489927262068,	NULL,	NULL,	NULL),
(31969,	3003,	NULL,	0.0009726699790917337,	NULL,	NULL,	NULL);

INSERT INTO `locality` (`id`, `organization_id`, `wrb_soil_class_id`, `name`, `lat`, `lng`, `description_cz`, `description_en`) VALUES
(1,	1,	NULL,	'Řisuty',	50.2172969,	14.0170161,	'provozováno ČVUT, uživatel pozemku Agra Řisuty',	NULL);

INSERT INTO `model` (`id`, `name`, `description_cz`, `description_en`, `homepage`, `reference`) VALUES
(1,	'Erosion-3D',	NULL,	NULL,	'http://geognostics.de/',	NULL);

INSERT INTO `organization` (`id`, `name`, `contact_person`, `contact_number`, `contact_email`, `name_code`) VALUES
(1,	'Katedra hydromeliorací a krajinného inženýrství, Fakulta stavební ČVUT v Praze',	'Tomáš Dostál',	'',	'',	'ČVUT'),
(2,	'Výzkumný ústav meliorací a ochranny půdy, v.v.i.',	'Martin Mistr',	'',	'',	'VÚMOP'),

INSERT INTO `project_organization` (`project_id`, `organization_id`) VALUES
(2,	1),
(2,	2);


INSERT INTO `protection_measure` (`id`, `name_cz`, `name_en`, `description_cz`, `description_en`) VALUES
(1,	'vrstevnicové obdělávání',	'contour tillage',	NULL,	NULL),
(2,	'ponechání rostlinných zbytků',	'crop residue left on surface',	'rostlinné zbytky při sklizni předplodiny ponechány částečně či úplně na povrchu půdy',	'the residue of the for-crop left partially or completely on the surface during harvest'),
(3,	'mulčovaná předplodina',	'mulched for-crop',	NULL,	NULL),
(4,	'mělké zpracování půdy',	'shallow tillage',	NULL,	NULL),
(5,	'desikovaná předplodina',	'desicated for-crop',	'předchozí plodina zahubena desikací a ponechána nemulčovaná na povrchu',	'previous crop desicated and left on the srface without mulching or incorporation'),
(6,	's podsevem',	'vegetated row-gaps',	'hlavní plodina doplněna o podsev ochranné plodiny v meziřadí',	'row-gaps of the main crop seeded with protection crop'),
(100,	'zakrytí umělým materiálem',	'covered with artificial material',	NULL,	NULL);


INSERT INTO `run` (`id`, `soil_sample_bulk_id`, `bulk_assignment_type_id`, `soil_sample_texture_id`, `texture_assignment_type_id`, `init_moisture_id`, `rain_intensity_id`, `runoff_start`, `crop_pictures`, `plot_pictures`, `raw_data_path`, `note_cz`, `note_en`, `ponding_start`, `soil_sample_corg_id`, `corg_assignment_type_id`, `plot_id`, `run_group_id`, `surface_cover_id`, `crop_bbch`, `crop_condition_cz`, `crop_condition_en`) VALUES 
(399,	48,	2,	39,	1,	2210,	2048,	'00:03:00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	2,	3,	56,	399,	2335,	0,	NULL,	NULL),
(400,	49,	2,	39,	1,	2212,	2052,	'00:01:00',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	2,	3,	56,	400,	2335,	0,	NULL,	NULL);

INSERT INTO `run_group` (`id`, `run_type_id`, `sequence_id`, `datetime`, `preceding_precipitation`, `note_cz`, `note_en`) VALUES
(399,	1,	221,	'2020-09-10 15:19:00',	0,	NULL,	NULL),
(400,	2,	221,	'2020-09-10 16:06:00',	0,	NULL,	NULL);


INSERT INTO `sequence` (`id`, `simulator_id`, `date`, `deleted`, `user_id`) VALUES
(221,	1,	'2020-09-10',	0,	2);

INSERT INTO `sequence_project` (`project_id`, `sequence_id`) VALUES
(2, 221);

INSERT INTO `soil_sample` (`id`, `processed_at_id`, `plot_id`, `wrb_soil_class_id`, `locality_id`, `run_id`, `corg_id`, `bulk_density_id`, `moisture_id`, `date_sampled`, `sample_location`, `description_cz`, `description_en`, `sample_depth_m`, `date_processed`, `texture_record_id`, `raw_data_path`, `deleted`, `user_id`) VALUES
(2,	1,	NULL,	NULL,	NULL,	NULL,	1464,	1469,	NULL,	'2018-06-20',	NULL,	NULL,	NULL,	0.05,	'2018-06-21',	NULL,	NULL,	NULL,	2),
(39,	1,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	'2019-11-06',	'',	'#5',	NULL,	0.05000000074505806,	'2019-11-26',	1575,	NULL,	NULL,	2),
(48,	1,	56,	NULL,	1,	NULL,	NULL,	2276,	NULL,	'2020-06-17',	NULL,	'7ks standardních Kopeckého válečků  50x51mm',	'7pcs of standard Kopecky cylinders  50x51mm',	0.05,	'2020-06-22',	NULL,	NULL,	NULL,	2);

INSERT INTO `measurement` (`id`, `description_cz`, `description_en`, `note_cz`, `note_en`, `phenomenon_id`, `plot_id`, `locality_id`, `date`, `user_id`) VALUES
(1534,	NULL,	NULL,	NULL,	NULL,	3,	NULL,	NULL,	NULL,	2),
(1535,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	2),
(1536,	NULL,	NULL,	NULL,	NULL,	2,	NULL,	NULL,	NULL,	2),
(1537,	NULL,	NULL,	NULL,	NULL,	3,	NULL,	NULL,	NULL,	2),
(1538,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	2),
(1539,	NULL,	NULL,	NULL,	NULL,	2,	NULL,	NULL,	NULL,	2),
(1616,	NULL,	NULL,	NULL,	NULL,	6,	NULL,	NULL,	NULL,	2),
(1617,	NULL,	NULL,	NULL,	NULL,	6,	NULL,	NULL,	NULL,	2),
(1691,	NULL,	NULL,	NULL,	NULL,	5,	NULL,	NULL,	NULL,	2),
(1692,	NULL,	NULL,	NULL,	NULL,	5,	NULL,	NULL,	NULL,	2),
(1956,	'odvozeno pomocí R_E2D od Jonase Lenze',	'derived by R_E2D by Jonas Lenz',	NULL,	NULL,	11,	NULL,	NULL,	NULL,	2),
(1957,	'odvozeno pomocí R_E2D od Jonase Lenze',	'derived by R_E2D by Jonas Lenz',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	2),
(1152,	NULL,	NULL,	NULL,	NULL,	8,	NULL,	NULL,	NULL,	2),
(1157,	NULL,	NULL,	NULL,	NULL,	9,	NULL,	NULL,	NULL,	2),
(1638,	NULL,	NULL,	NULL,	NULL,	9,	NULL,	NULL,	NULL,	2),
(1210,	'zrnitostní složení vyhodnoceno sítovou (0,2 - 2mm) a Cassagrandeho hustoměrnou metodou (<0,2mm); sada sít 0,2 - 0,63 - 2,0 mm',	'texture analysis performed by combination of sievs (0.2- 2mm) and Cassagrande\'s density method (<0.2mm)',	NULL,	NULL,	10,	NULL,	NULL,	NULL,	2),

INSERT INTO `measurement_run` (`measurement_id`, `run_id`) VALUES
(1534, 399),
(1535, 399),
(1536, 399),
(1537, 400),
(1538, 400),
(1539, 400),
(1616, 399),
(1617, 400),
(1691, 399),
(1692, 400),
(1956, 399),
(1957, 400);

INSERT INTO `measurement_soil_sample` (`measurement_id`, `soil_sample_id`) VALUES
(1152,	2),
(1157,	2),
(1638,	48),
(1210,	39);



INSERT INTO `record` (`id`, `measurement_id`, `record_type_id`, `unit_id`, `note_cz`, `note_en`, `related_value_xunit_id`, `related_value_yunit_id`, `related_value_zunit_id`, `quality_index_id`, `is_timeline`, `description_cz`, `description_en`) VALUES
(1464,	1152,	8,	17,	'hrubý odhad hodnoty Corg dle známých rozmezí - žádná jiná hodnota nebyla dostupná ...',	NULL,	NULL,	NULL,	NULL,	NULL,	0,	NULL,	NULL),
(1469,	1157,	1,	18,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	NULL,	NULL),
(2275,	1638,	1,	18,	'hodnoty objemové hmotnosti pro jednotlivé odebrané válečky',	'bulk density for each of colected subsamples',	NULL,	NULL,	NULL,	NULL,	0,	NULL,	NULL),
(2276,	1638,	6,	18,	'průměr hodnot všech odebraných válečků',	'average value of bulk density',	NULL,	NULL,	NULL,	NULL,	0,	NULL,	NULL),
(1575,	1210,	1,	20,	NULL,	NULL,	19,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(2048,	1534,	5,	6,	'nastavená intenzita srážky',	'set rainfall intensity',	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2049,	1535,	1,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2050,	1536,	1,	3,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2051,	1536,	6,	4,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2052,	1537,	5,	6,	'nastavená intenzita srážky',	'set rainfall intensity',	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2053,	1538,	1,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2054,	1539,	1,	3,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2055,	1539,	6,	4,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2209,	1616,	1,	16,	NULL,	NULL,	11,	12,	NULL,	NULL,	0,	NULL,	NULL),
(2210,	1616,	6,	16,	'průměr hodnot naměřených v experimentální ploše',	'average value from point measurements within the experimental plot',	NULL,	NULL,	NULL,	NULL,	0,	NULL,	NULL),
(2211,	1617,	1,	16,	NULL,	NULL,	11,	12,	NULL,	NULL,	0,	NULL,	NULL),
(2212,	1617,	6,	16,	'průměr hodnot naměřených v experimentální ploše',	'average value from point measurements within the experimental plot',	NULL,	NULL,	NULL,	NULL,	0,	NULL,	
(2381,	1691,	1,	15,	NULL,	NULL,	11,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2382,	1691,	1,	15,	NULL,	NULL,	11,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2383,	1691,	1,	15,	NULL,	NULL,	11,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2384,	1691,	1,	15,	NULL,	NULL,	11,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2385,	1692,	1,	15,	NULL,	NULL,	11,	NULL,	NULL,	NULL,	1,	NULL,	NULL),
(2386,	1692,	1,	15,	NULL,	NULL,	11,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(2387,	1692,	1,	15,	NULL,	NULL,	11,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(2388,	1692,	1,	15,	NULL,	NULL,	11,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(3000,	1956,	6,	21,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	NULL,	NULL),
(3001,	1956,	6,	22,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0,	NULL,	NULL),
(3002,	1957,	6,	21,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(3003,	1957,	6,	22,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL);



INSERT INTO `record_record` (`record_source`, `record_target`) VALUES
(2049, 2051),
(2050, 2051),
(2209, 2210),
(2053, 2055),
(2054, 2055),
(2211, 2212);

INSERT INTO `plot` (`id`, `locality_id`, `soil_origin_locality_id`, `crop_id`, `agrotechnology_id`, `name`, `established`, `plot_width`, `plot_length`, `plot_slope`, `note_cz`, `note_en`, `protection_measure_id`) VALUES
(56,	1,	NULL,	1,	16,	'u',	'2019-11-25',	2,	8,	9,	'obděláváno po vrstevnici',	'contour tillage',	1);



INSERT INTO `operation` (`id`, `operation_intensity_id`, `operation_type_id`, `name_cz`, `name_en`, `operation_depth_m`, `description_cz`, `description_en`, `machinery_type_cz`, `machinery_type_en`) VALUES
(1,	4,	1,	'orba 20cm',	'plough 20cm',	0.2,	NULL,	NULL,	NULL,	NULL),
(2,	4,	1,	'rotační kultivátor 10cm',	'rotary cultivator 10cm',	0.1,	NULL,	NULL,	NULL,	NULL),
(4,	3,	1,	'podmítka disková 10cm',	'disc tiller 10cm',	0.1,	NULL,	NULL,	NULL,	NULL),
(5,	3,	1,	'hloubkové kypřiče 22cm',	'deep skive tiller 22cm',	0.22,	NULL,	NULL,	NULL,	NULL),
(6,	2,	3,	'setí úzkořádkové',	'conventional grain seeding',	0.05,	NULL,	NULL,	NULL,	NULL),
(7,	2,	3,	'setí s podmítkou',	'seeding with tiller',	0.15000000596046448,	'secí stroj s předsazenou diskovou podmítačkou',	'seed drill with disc tiller',	'Väderstad Rapid A 800S',	'Väderstad Rapid A 800S'),
(8,	2,	3,	'setí širokořádkové',	'wide row seeding',	0.05000000074505806,	NULL,	'',	NULL,	NULL),
(9,	1,	2,	'sklizeň beze zbytků',	'harvest without any residue',	0,	'sklizeň plodiny bez ponechání posklizňových zbytků',	'crop harvest without any crop residue left on the surface',	NULL,	NULL),
(10,	3,	1,	'radličkový kypřič 10cm',	'shallow skive tiller',	0.1,	NULL,	NULL,	NULL,	NULL),
(11,	1,	6,	'desikace porostu',	'vegetation desicated',	0,	NULL,	NULL,	NULL,	NULL),
(12,	1,	2,	'sklizeň s ponecháním zbytků',	'harvest with residue left',	0,	'sklizeň plodiny s ponecháním posklizňových zbytků na povrchu půdy',	'crop harvest with crop residue left on the surface',	NULL,	NULL),
(13,	3,	1,	'rotační kultivátor 20cm',	'rotary tiller 20cm',	0.2,	NULL,	NULL,	NULL,	NULL),
(14,	3,	1,	'Ruční kypření',	'Tillage by hand',	0.1,	'Kypření půdy pomocí rýče, krumpáče a hrabí',	NULL,	NULL,	NULL);

INSERT INTO `operation_intensity` (`id`, `description_cz`, `description_en`) VALUES
(1,	'bez zásahu do půdy',	'no topsoil disturbance'),
(2,	'omezený zásah do půdy',	'limited topsoil disturbance'),
(3,	'bez obracení půdního profilu',	'topsoil disturbance without flipping'),
(4,	's obracením půdního profilu',	'topsoil flipping');

INSERT INTO `operation_type` (`id`, `description_cz`, `description_en`) VALUES
(1,	'zpracování půdy',	'soil preparation'),
(2,	'sklizeň',	'harvest'),
(3,	'setí',	'seeding'),
(4,	'seč',	'mow'),
(5,	'aplikace ochranného prostředku',	'protective agent application'),
(6,	'aplikace totálního herbicidu',	'general herbicide application'),
(7,	'aplikace hnojiva',	'fertilizer application');

INSERT INTO `phenomenon` (`id`, `name_cz`, `name_en`, `description_cz`, `description_en`, `phenomenon_key`, `model_parameter_set_id`) VALUES
(1,	'povrchový odtok',	'surface run-off',	'veličiny spojené s množstvím vody odtékající po povrchu terénu',	'values related to surface run-off of water',	'surrunoff',	NULL),
(2,	'množství sedimentu',	'sediment load',	'veličiny spojené s množstvím sedimentu v povrchovém odtoku',	'values related to sediment amount in surface run-off',	'sedload',	NULL),
(3,	'srážka',	'precipitation',	'veličiny spojené s vlastnostmi srážky',	'values related to precipitation qualities',	'precip',	NULL),
(4,	'zakrytí povrchu',	'surface cover',	'veličiny spojené se zakrytím povrchu půdy',	'values related to soil surface cover',	'surcov',	NULL),
(5,	'rychlost povrchového odtoku',	'surface run-off velocity',	'',	'',	'srovel',	NULL),
(6,	'vlhkost půdy',	'soil moisture',	'',	'',	'soilmoist',	NULL),
(7,	'podpovrchový odtok',	'subsurface run-off',	'',	'',	'subrunoff',	NULL),
(8,	'chemické vlastnosti půdy',	'chemical soil properties',	'veličiny spojené s obsahem chemických látek v půdě',	'values related to chemical compounds content in soil',	'soilchem',	NULL),
(9,	'fyzikální vlastnosti půdy',	'physical soil properties',	'',	'',	'soilphys',	NULL),
(10,	'zrnitostní složení',	'particle size distribution',	'',	'',	'soiltext',	NULL),
(11,	'parametry modelu Erosion-3D',	'Erosion-3D model parameters',	'Parametry fyzikálního modelu Erosion-3D',	'Erosion-3D parameter set',	'e3dparams',	1),
(12,	'přítok do experimentální plochy',	'input into the experimental plot',	'uměle dodávaný vstup do expiremntální plochy',	'artificially induced input into the experimental plot',	'plotinput',	NULL),
(13,	'perkolace',	NULL,	NULL,	NULL,	'percolation',	NULL);

INSERT INTO `quality_index` (`id`, `name_cz`, `name_en`, `description_cz`, `description_en`) VALUES
(1,	'výborná',	'excelent',	'záznam vysoké kvality bez chyb v metodice i v záznamu, nejisté hodnoty se nevyskytují nebo byly odborně ošetřeny, podmínky měření byly ideální, nebo byl jejich vliv eliminován',	'high quality record without flaws in methodics or value collection, uncertain values are not present or were eliminated, conditions of the measurement were ideal or the influence was eliminated'),
(2,	'velmi dobrá',	'very good',	'záznam vysoké kvality bez chyb v metodice i v záznamu, mohou se vyskytovat nejisté hodnoty, které ale zásadně neovlivňují celkovou hodnotu měření, měření mohlo být mírně ovlivněno podmínkami, ale je možné ovlivněné hodnoty identifikovat a eliminovat',	'high quality record without flaws in methodics or data collection, uncertain values may appear but do not lower the overall quality of the record, the measurement might be influenced by the conditions but the effects can be identified and eliminated'),
(3,	'dobrá',	'good',	'kvalitní záznam bez zásadních chyb v metodice měření a zpracování dat, mohou se vyskytovat nejisté hodnoty, které ale zásadně neovlivňují celkovou hodnotu měření, měření mohlo být mírně ovlivněno podmínkami ',	'quality record without substantial flaws in methodics or data collection, uncertain values may appear but do not lower the overall quality of the record, the measurement might be influenced by the conditions but the effects can not be identified'),
(4,	'přijatelná',	'acceptable',	'méně kvalitní záznam s chybami v metodice měření a/nebo bylo měření ovlivněno podmínkami, je možné odlišit hodnoty hodnověrné a špatné',	'lower quality record including flaws in methodics or data collection and/or the measurement was influenced by the conditions, it is possible to distinguish corrupted data points'),
(5,	'pochybná',	'questionable',	'nekvalitní záznam s chybami v metodice měření/záznamu  a/nebo bylo měření silně ovlivněno podmínkami, není možné odlišit hodnoty hodnověrné a špatné nebo obsahuje příliš málo hodnověrných hodnot',	'low quality record including major flaws in methodics or data collection and/or the measurement was strongly influenced by the conditions, it is not possible to distinguish influenced data points or too much data is corrupted');

INSERT INTO `run_type` (`id`, `name_cz`, `name_en`, `description_cz`, `description_en`) VALUES
(1,	'suchá',	'dry',	'první simulace v sekvenci (déle než 48 hodin od poslední simulace na ploše)',	'first run in the sequence (longer then 48 hours since last run on the plot)'),
(2,	'mokrá',	'very wet',	'simulace v sekvenci následující nejdéle do 12 hodin od předchozí simulace na ploše)',	'run in the sequence that follows not longer then 12 hours after previous run on the plot'),
(3,	'vlhká',	'wet',	'simulace následující více než 12 hodin, ale méně než 48 hodin od poslední simulace na ploše v polních podmínkách. V laboratoři dle pozorování půdy, nezávisle na čase.',	'run that follows more than 12 but less then 48 hours after previous run on the plot in field condition. For the laboratory condition - by the plot condition independent of time.');

INSERT INTO `tillage_sequence` (`id`, `agrotechnology_id`, `operation_id`, `date`) VALUES
(18,	16,	4,	'2020-05-01'),
(19,	16,	6,	'2020-05-14');

INSERT INTO `unit` (`id`, `decimals`, `name_cz`, `name_en`, `unit`, `description_cz`, `description_en`) VALUES
(1,	3,	'odtok',	'runoff',	'l.min-1',	'intenzita odtoku',	'runoff discharge rate'),
(2,	3,	'koncentrace NL',	'suspended solids concentration',	'mg.l-1',	'koncentrace nerozpuštěných látek',	'suspended solids concentration'),
(3,	3,	'koncentrace NL',	'suspended solids concentration',	'g.l-1',	'koncentrace nerozpuštěných látek',	'suspended solids concentration'),
(4,	3,	'množství sedimentu',	'sediment delivery',	'kg',	'celková hmotnost sedimentu v odtoku za daný interval',	'total sediment delivery in a given interval'),
(5,	3,	'objem odtoku',	'surface runoff amount',	'l',	'celkový objem odtoku za daný interval',	'total runoff amount in a given interval'),
(6,	1,	'intenzita srážky',	'rainfall intensity',	'mm.h-1',	'intenzita srážky',	'rainfall intensity'),
(7,	1,	'zakrytí povrchu živými rostlinami',	'canopy cover',	'%',	'podíl zakrytí povrchu půdy živými rostlinami',	'percentage of surface area covered by green canopy'),
(8,	1,	'zakrytí povrchu rostlinnými zbytky',	'surface cover by plant residue',	'%',	'podíl zakrytí povrchu půdy rostlinnými zbytky',	'percentage of surface area covered by plant residue'),
(9,	1,	'zakrytí povrchu půdním skeletem',	'surface cover by soil skeleton',	'%',	'podíl zakrytí povrchu půdy půdním skeletem',	'percentage of surface area covered by rock fragments'),
(10,	3,	'zakrytí povrchu půdy',	'surface cover',	'%',	'celkový podíl zakrytí povrchu půdy',	'overall percentage of covered surface area'),
(11,	3,	'souřadnice X plochy',	'plot X coordinate',	'm',	'vzdálenost od horního okraje experimentální plochy',	'distance from upper experimental plot boundary'),
(12,	3,	'souřadnice Y plochy',	'plot Y coordinate',	'm',	'vzdálenost od levého okraje experimentální plochy (při pohledu shora)',	'distance from left experimental plot boundary (when looking from the top)'),
(13,	3,	'souřadnice Z plochy',	'plot Z coordinate',	'm',	'hloubka pod povrchem experimentální plochy',	'depth under experimental plot surface'),
(14,	3,	'rychlost',	'velocity',	'm.s-1',	'rychlost pohybu vodního proudu',	'velocity of water stream movement'),
(15,	1,	'časový interval',	'time interval',	's',	'časový úsek',	'time  interval in seconds'),
(16,	1,	'objemová vlhkost půdy',	'volumetric soil moisture',	'%V',	'objemová vlhkost půdy',	'volumetric soil moisture'),
(17,	3,	'obsah organického uhlíku',	'organic carbon content',	'mg.g-1',	'hmotnostní zastoupení organického uhlíku',	'relative mass content of organic carbon'),
(18,	3,	'objemová hmotnost',	'bulk density',	'kg.m-3',	'objemová hmotnost',	'bulk density'),
(19,	3,	'velikost zrna',	'particle size',	'mm',	'horní hranice velikosti zrna',	'particle size upper boundary'),
(20,	3,	'kumulativní zastoupení hm.',	'cummulative mass fraction',	'%',	'hmotnostní kumulativní procentuální zastoupení',	'cummulative mass percentage'),
(21,	3,	'skinfaktor endinf',	'skinfactor endinf',	'-',	'kalibrační koeficient infiltrace \"skinfaktor\" odvozený na základě koncové infiltrační intenzity',	'\"skinfactor\" infiltration calibration coefficient derived from final infiltration intensity'),
(22,	3,	'skinfaktor runoff',	'skinfactor runoff',	'-',	'kalibrační koeficient infiltrace \"skinfaktor\" odvozený na základě celkového odtoku',	'\"skinfactor\" infiltration calibration coefficient derived from total runoff amount'),
(23,	4,	'tok sedimentu',	'sediment flux',	'g.min-1',	'Hmotnost nerozpuštěných látek za čas',	'Suspended solids mass per time unit'),
(24,	1,	'úhrn srážky',	'precipitation total',	'mm',	NULL,	NULL),
(25,	3,	'tok sedimentu',	'sediment flux',	'g.min-1',	'ztráta půdy za minutu',	'soil loss per minut'),
(26,	3,	'hmotnostní vlhkost',	'mass moisture',	'%M',	NULL,	NULL),
(27,	1,	'objemová hmotnost',	'bulk density',	'g.cm-3',	'objemová hmotnost',	'bulk density');