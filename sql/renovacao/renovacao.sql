/*_________________________________________________________________________
 /                                                                         \
 |                  _           _   _   _                                  |
 |                 | |__  _ __ / \ | |_| |__   ___ _ __   __ _             |
 |                 | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |            |
 |                 | |_) | | / ___ \ |_| | | |  __/ | | | (_| |            |
 |                 |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|            |
 |                                                                         |
 |                       brAthena - Banco de Dados                         |
 |             Contém as tabelas de habilidades, itens e monstros          |
 \_________________________________________________________________________/
*/

--
-- Estrutura da tabela `abra_db`
--

CREATE TABLE IF NOT EXISTS `abra_db` (
  `SkillID` smallint(5) unsigned NOT NULL,
  `DummyName` varchar(40) NOT NULL,
  `ReqHocusPocusLevel` tinyint(4) NOT NULL DEFAULT '1',
  `Rate` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `abra_db` VALUES(5,'Golpe Fulminante',1,5000);
REPLACE INTO `abra_db` VALUES(6,'Provocar',1,5000);
REPLACE INTO `abra_db` VALUES(7,'Impacto Explosivo',1,5000);
REPLACE INTO `abra_db` VALUES(8,'Vigor',1,5000);
REPLACE INTO `abra_db` VALUES(10,'Chama Reveladora',1,5000);
REPLACE INTO `abra_db` VALUES(11,'Ataque Espiritual',1,5000);
REPLACE INTO `abra_db` VALUES(12,'Escudo Mágico',4,5000);
REPLACE INTO `abra_db` VALUES(13,'Espíritos Anciões',2,5000);
REPLACE INTO `abra_db` VALUES(14,'Lanças de Gelo',1,5000);
REPLACE INTO `abra_db` VALUES(15,'Rajada Congelante',2,5000);
REPLACE INTO `abra_db` VALUES(16,'Petrificar',1,5000);
REPLACE INTO `abra_db` VALUES(17,'Bolas de Fogo',2,5000);
REPLACE INTO `abra_db` VALUES(18,'Barreira de Fogo',4,5000);
REPLACE INTO `abra_db` VALUES(19,'Lanças de Fogo',1,5000);
REPLACE INTO `abra_db` VALUES(20,'Relâmpago',1,5000);
REPLACE INTO `abra_db` VALUES(21,'Tempestade de Raios',2,5000);
REPLACE INTO `abra_db` VALUES(24,'Revelação',1,5000);
REPLACE INTO `abra_db` VALUES(25,'Escudo Sagrado',6,5000);
REPLACE INTO `abra_db` VALUES(26,'Teleporte',2,5000);
REPLACE INTO `abra_db` VALUES(27,'Portal',4,5000);
REPLACE INTO `abra_db` VALUES(28,'Curar',1,5000);
REPLACE INTO `abra_db` VALUES(29,'Aumentar Agilidade',2,5000);
REPLACE INTO `abra_db` VALUES(30,'Diminuir Agilidade',4,5000);
REPLACE INTO `abra_db` VALUES(31,'Aqua Benedicta',1,5000);
REPLACE INTO `abra_db` VALUES(32,'Signum Crusis',1,5000);
REPLACE INTO `abra_db` VALUES(33,'Angelus',1,5000);
REPLACE INTO `abra_db` VALUES(34,'Bênção',2,5000);
REPLACE INTO `abra_db` VALUES(35,'Medicar',1,5000);
REPLACE INTO `abra_db` VALUES(40,'Identificar Item',1,5000);
REPLACE INTO `abra_db` VALUES(41,'Comércio',4,5000);
REPLACE INTO `abra_db` VALUES(42,'Mammonita',1,5000);
REPLACE INTO `abra_db` VALUES(45,'Concentração',4,5000);
REPLACE INTO `abra_db` VALUES(46,'Rajada de Flechas',1,5000);
REPLACE INTO `abra_db` VALUES(47,'Chuva de Flechas',2,5000);
REPLACE INTO `abra_db` VALUES(50,'Furto',2,5000);
REPLACE INTO `abra_db` VALUES(51,'Esconderijo',2,5000);
REPLACE INTO `abra_db` VALUES(52,'Envenenar',1,5000);
REPLACE INTO `abra_db` VALUES(53,'Desintoxicar',1,5000);
REPLACE INTO `abra_db` VALUES(54,'Ressuscitar',1,5000);
REPLACE INTO `abra_db` VALUES(56,'Perfurar',2,4000);
REPLACE INTO `abra_db` VALUES(57,'Brandir Lança',6,4000);
REPLACE INTO `abra_db` VALUES(58,'Estocada',1,4000);
REPLACE INTO `abra_db` VALUES(59,'Lança Bumerangue',4,4000);
REPLACE INTO `abra_db` VALUES(60,'Rapidez com Duas Mãos',1,4000);
REPLACE INTO `abra_db` VALUES(61,'Contra-Ataque',2,4000);
REPLACE INTO `abra_db` VALUES(62,'Impacto de Tyr',6,4000);
REPLACE INTO `abra_db` VALUES(66,'Impositio Manus',1,4000);
REPLACE INTO `abra_db` VALUES(67,'Suffragium',2,4000);
REPLACE INTO `abra_db` VALUES(68,'Aspersio',2,4000);
REPLACE INTO `abra_db` VALUES(69,'B.S. Sacramenti',4,4000);
REPLACE INTO `abra_db` VALUES(70,'Santuário',2,4000);
REPLACE INTO `abra_db` VALUES(71,'Retardar Veneno',1,4000);
REPLACE INTO `abra_db` VALUES(72,'Graça Divina',1,4000);
REPLACE INTO `abra_db` VALUES(73,'Kyrie Eleison',2,4000);
REPLACE INTO `abra_db` VALUES(74,'Magnificat',2,4000);
REPLACE INTO `abra_db` VALUES(75,'Gloria',4,4000);
REPLACE INTO `abra_db` VALUES(76,'Lex Divina',2,4000);
REPLACE INTO `abra_db` VALUES(77,'Esconjurar',2,4000);
REPLACE INTO `abra_db` VALUES(78,'Lex Aeterna',4,4000);
REPLACE INTO `abra_db` VALUES(79,'Magnus Exorcismus',6,4000);
REPLACE INTO `abra_db` VALUES(80,'Coluna de Fogo',2,4000);
REPLACE INTO `abra_db` VALUES(81,'Supernova',2,4000);
REPLACE INTO `abra_db` VALUES(83,'Chuva de Meteoros',6,4000);
REPLACE INTO `abra_db` VALUES(84,'Trovão de Júpiter',2,4000);
REPLACE INTO `abra_db` VALUES(85,'Ira de Thor',6,4000);
REPLACE INTO `abra_db` VALUES(86,'Esfera d''Água',4,4000);
REPLACE INTO `abra_db` VALUES(87,'Barreira de Gelo',2,4000);
REPLACE INTO `abra_db` VALUES(88,'Congelar',1,4000);
REPLACE INTO `abra_db` VALUES(89,'Nevasca',6,4000);
REPLACE INTO `abra_db` VALUES(90,'Coluna de Pedra',1,4000);
REPLACE INTO `abra_db` VALUES(91,'Fúria da Terra',2,4000);
REPLACE INTO `abra_db` VALUES(92,'Pântano dos Mortos',4,4000);
REPLACE INTO `abra_db` VALUES(93,'Sentido Sobrenatural',1,4000);
REPLACE INTO `abra_db` VALUES(108,'Consertar Armas',1,0);
REPLACE INTO `abra_db` VALUES(110,'Martelo de Thor',1,4000);
REPLACE INTO `abra_db` VALUES(111,'Adrenalina Pura',2,4000);
REPLACE INTO `abra_db` VALUES(112,'Manejo Perfeito',4,4000);
REPLACE INTO `abra_db` VALUES(113,'Força Violenta',4,4000);
REPLACE INTO `abra_db` VALUES(114,'Amplificar Poder',6,4000);
REPLACE INTO `abra_db` VALUES(115,'Armadilha Escorregadia',1,4000);
REPLACE INTO `abra_db` VALUES(116,'Armadilha Atordoante',2,4000);
REPLACE INTO `abra_db` VALUES(117,'Instalar Armadilha',2,4000);
REPLACE INTO `abra_db` VALUES(118,'Armadilha Extenuante',4,4000);
REPLACE INTO `abra_db` VALUES(119,'Armadilha Sonífera',4,4000);
REPLACE INTO `abra_db` VALUES(120,'Armadilha Luminosa',4,4000);
REPLACE INTO `abra_db` VALUES(121,'Armadilha Congelante',4,4000);
REPLACE INTO `abra_db` VALUES(122,'Instalar Mina',4,4000);
REPLACE INTO `abra_db` VALUES(123,'Armadilha Explosiva',6,4000);
REPLACE INTO `abra_db` VALUES(124,'Remover Armadilha',1,4000);
REPLACE INTO `abra_db` VALUES(125,'Mensagem Secreta',1,4000);
REPLACE INTO `abra_db` VALUES(129,'Ataque Aéreo',4,4000);
REPLACE INTO `abra_db` VALUES(130,'Alerta',1,4000);
REPLACE INTO `abra_db` VALUES(131,'Desativar Armadilha',1,4000);
REPLACE INTO `abra_db` VALUES(135,'Furtividade',2,4000);
REPLACE INTO `abra_db` VALUES(136,'Lâminas Destruidoras',2,4000);
REPLACE INTO `abra_db` VALUES(137,'Tocaia',4,4000);
REPLACE INTO `abra_db` VALUES(138,'Envenenar Arma',2,4000);
REPLACE INTO `abra_db` VALUES(139,'Refletir Veneno',2,4000);
REPLACE INTO `abra_db` VALUES(140,'Névoa Tóxica',4,4000);
REPLACE INTO `abra_db` VALUES(141,'Explosão Tóxica',4,4000);
REPLACE INTO `abra_db` VALUES(142,'Primeiros Socorros',1,5000);
REPLACE INTO `abra_db` VALUES(143,'Fingir de Morto',1,5000);
REPLACE INTO `abra_db` VALUES(146,'Instinto de Sobrevivência',1,0);
REPLACE INTO `abra_db` VALUES(147,'Fabricar Flechas',1,5000);
REPLACE INTO `abra_db` VALUES(148,'Disparo Violento',1,5000);
REPLACE INTO `abra_db` VALUES(149,'Chutar Areia',1,5000);
REPLACE INTO `abra_db` VALUES(150,'Recuar',1,5000);
REPLACE INTO `abra_db` VALUES(151,'Procurar Pedras',1,5000);
REPLACE INTO `abra_db` VALUES(152,'Arremessar Pedra',1,5000);
REPLACE INTO `abra_db` VALUES(153,'Cavalo-de-Pau',1,5000);
REPLACE INTO `abra_db` VALUES(154,'Personalizar Carrinho',1,5000);
REPLACE INTO `abra_db` VALUES(155,'Grito de Guerra',1,5000);
REPLACE INTO `abra_db` VALUES(156,'Luz Divina',1,5000);
REPLACE INTO `abra_db` VALUES(157,'Proteção Arcana',1,5000);
REPLACE INTO `abra_db` VALUES(211,'Afanar',1,4000);
REPLACE INTO `abra_db` VALUES(212,'Apunhalar',4,4000);
REPLACE INTO `abra_db` VALUES(214,'Ataque Surpresa',2,4000);
REPLACE INTO `abra_db` VALUES(215,'Remover Arma',4,4000);
REPLACE INTO `abra_db` VALUES(216,'Remover Escudo',4,4000);
REPLACE INTO `abra_db` VALUES(217,'Remover Armadura',4,4000);
REPLACE INTO `abra_db` VALUES(218,'Remover Capacete',4,4000);
REPLACE INTO `abra_db` VALUES(219,'Rapto',4,4000);
REPLACE INTO `abra_db` VALUES(220,'Grafitti',1,4000);
REPLACE INTO `abra_db` VALUES(221,'Pichar',1,0);
REPLACE INTO `abra_db` VALUES(222,'Faxina',4,4000);
REPLACE INTO `abra_db` VALUES(228,'Preparar Poção',1,4000);
REPLACE INTO `abra_db` VALUES(229,'Fogo Grego',2,4000);
REPLACE INTO `abra_db` VALUES(230,'Terror Ácido',2,4000);
REPLACE INTO `abra_db` VALUES(231,'Arremessar Poção',2,4000);
REPLACE INTO `abra_db` VALUES(232,'Criar Monstro Planta',4,4000);
REPLACE INTO `abra_db` VALUES(233,'Criar Esfera Marinha',4,4000);
REPLACE INTO `abra_db` VALUES(234,'Revestir Arma',4,4000);
REPLACE INTO `abra_db` VALUES(235,'Revestir Escudo',4,4000);
REPLACE INTO `abra_db` VALUES(236,'Revestir Armadura',4,4000);
REPLACE INTO `abra_db` VALUES(237,'Revestir Capacete',4,4000);
REPLACE INTO `abra_db` VALUES(249,'Bloqueio',1,4000);
REPLACE INTO `abra_db` VALUES(250,'Punição Divina',2,4000);
REPLACE INTO `abra_db` VALUES(251,'Escudo Bumerangue',2,4000);
REPLACE INTO `abra_db` VALUES(252,'Escudo Refletor',4,4000);
REPLACE INTO `abra_db` VALUES(253,'Crux Divinum',2,4000);
REPLACE INTO `abra_db` VALUES(254,'Crux Magnun',6,4000);
REPLACE INTO `abra_db` VALUES(255,'Redenção',4,4000);
REPLACE INTO `abra_db` VALUES(256,'Divina Providência',2,4000);
REPLACE INTO `abra_db` VALUES(257,'Aura Sagrada',4,4000);
REPLACE INTO `abra_db` VALUES(258,'Rapidez com Lança',1,4000);
REPLACE INTO `abra_db` VALUES(261,'Invocar Esfera Espiritual',1,4000);
REPLACE INTO `abra_db` VALUES(262,'Absorver Esferas Espirituais',1,4000);
REPLACE INTO `abra_db` VALUES(264,'Passo Etéreo',4,4000);
REPLACE INTO `abra_db` VALUES(266,'Impacto Psíquico',2,4000);
REPLACE INTO `abra_db` VALUES(267,'Disparo de Esferas Espirituais',2,4000);
REPLACE INTO `abra_db` VALUES(268,'Corpo Fechado',4,4000);
REPLACE INTO `abra_db` VALUES(269,'Dilema',2,4000);
REPLACE INTO `abra_db` VALUES(270,'Fúria Interior',2,4000);
REPLACE INTO `abra_db` VALUES(271,'Punho Supremo de Asura',6,4000);
REPLACE INTO `abra_db` VALUES(272,'Combo Quádruplo',1,0);
REPLACE INTO `abra_db` VALUES(273,'O Último Dragão',1,0);
REPLACE INTO `abra_db` VALUES(275,'Cancelar magia',1,4000);
REPLACE INTO `abra_db` VALUES(276,'Espelho Mágico',1,4000);
REPLACE INTO `abra_db` VALUES(277,'Desconcentrar',2,4000);
REPLACE INTO `abra_db` VALUES(279,'Desejo Arcano',2,4000);
REPLACE INTO `abra_db` VALUES(280,'Encantar com Chama',2,4000);
REPLACE INTO `abra_db` VALUES(281,'Encantar com Geada',2,4000);
REPLACE INTO `abra_db` VALUES(282,'Encantar com Ventania',2,4000);
REPLACE INTO `abra_db` VALUES(283,'Encantar com Terremoto',2,4000);
REPLACE INTO `abra_db` VALUES(285,'Vulcão',4,4000);
REPLACE INTO `abra_db` VALUES(286,'Dilúvio',4,4000);
REPLACE INTO `abra_db` VALUES(287,'Furacão',4,4000);
REPLACE INTO `abra_db` VALUES(288,'Proteger Terreno',4,4000);
REPLACE INTO `abra_db` VALUES(289,'Desencantar',6,4000);
REPLACE INTO `abra_db` VALUES(290,'Abracadabra',4,4000);
REPLACE INTO `abra_db` VALUES(291,'Mono Cell',4,2500);
REPLACE INTO `abra_db` VALUES(292,'Transformação',8,2500);
REPLACE INTO `abra_db` VALUES(293,'Invocar Monstro',6,3500);
REPLACE INTO `abra_db` VALUES(294,'Transformação Orc',4,5000);
REPLACE INTO `abra_db` VALUES(295,'Extermínio',8,2000);
REPLACE INTO `abra_db` VALUES(297,'Hipnose',6,4000);
REPLACE INTO `abra_db` VALUES(298,'Interrogatório',4,5000);
REPLACE INTO `abra_db` VALUES(299,'Gravity',4,5000);
REPLACE INTO `abra_db` VALUES(301,'Suicídio',4,2000);
REPLACE INTO `abra_db` VALUES(302,'Recuperação',8,3000);
REPLACE INTO `abra_db` VALUES(303,'Coma',4,4000);
REPLACE INTO `abra_db` VALUES(304,'Encerramento',1,0);
REPLACE INTO `abra_db` VALUES(305,'Bis',1,0);
REPLACE INTO `abra_db` VALUES(306,'Cantiga de Ninar',1,0);
REPLACE INTO `abra_db` VALUES(307,'Banquete de Njord',1,0);
REPLACE INTO `abra_db` VALUES(308,'Ritmo Caótico',1,0);
REPLACE INTO `abra_db` VALUES(309,'Rufar dos Tambores',1,0);
REPLACE INTO `abra_db` VALUES(310,'Anel dos Nibelungos',1,0);
REPLACE INTO `abra_db` VALUES(311,'Lamento de Loki',1,0);
REPLACE INTO `abra_db` VALUES(312,'Canção Preciosa',1,0);
REPLACE INTO `abra_db` VALUES(313,'Ode a Siegfried',1,0);
REPLACE INTO `abra_db` VALUES(316,'Flecha Melódica',1,4000);
REPLACE INTO `abra_db` VALUES(317,'Dissonância',1,0);
REPLACE INTO `abra_db` VALUES(318,'Piada Infame',2,4000);
REPLACE INTO `abra_db` VALUES(319,'Assovio',1,0);
REPLACE INTO `abra_db` VALUES(320,'Crepúsculo Sangrento',1,0);
REPLACE INTO `abra_db` VALUES(321,'Poema de Bragi',1,0);
REPLACE INTO `abra_db` VALUES(322,'Maçãs de Idun',1,0);
REPLACE INTO `abra_db` VALUES(324,'Estilingue',1,4000);
REPLACE INTO `abra_db` VALUES(325,'Dança do Ventre',1,0);
REPLACE INTO `abra_db` VALUES(326,'Escândalo',2,4000);
REPLACE INTO `abra_db` VALUES(327,'Sibilo',1,0);
REPLACE INTO `abra_db` VALUES(328,'Não Me Abandones',1,0);
REPLACE INTO `abra_db` VALUES(329,'Beijo da Sorte',1,0);
REPLACE INTO `abra_db` VALUES(330,'Dança Cigana',1,0);

--
-- Estrutura da tabela `castle_db`
--

CREATE TABLE IF NOT EXISTS `castle_db` (
  `CastleID` tinyint(4) NOT NULL,
  `MapName` varchar(20) NOT NULL,
  `CastleName` varchar(30) NOT NULL,
  `OnGuildBreakEventName` varchar(30) NOT NULL,
  `Flag` tinyint(4) NOT NULL,
  PRIMARY KEY (`CastleID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `castle_db` VALUES(0,'aldeg_cas01','Neuschwanstein','Agit#aldeg_cas01',1);
REPLACE INTO `castle_db` VALUES(1,'aldeg_cas02','Hohenschwangau','Agit#aldeg_cas02',1);
REPLACE INTO `castle_db` VALUES(2,'aldeg_cas03','Nuernberg','Agit#aldeg_cas03',1);
REPLACE INTO `castle_db` VALUES(3,'aldeg_cas04','Wuerzburg','Agit#aldeg_cas04',1);
REPLACE INTO `castle_db` VALUES(4,'aldeg_cas05','Rothenburg','Agit#aldeg_cas05',1);
REPLACE INTO `castle_db` VALUES(5,'gefg_cas01','Repherion','Agit#gefg_cas01',1);
REPLACE INTO `castle_db` VALUES(6,'gefg_cas02','Eeyolbriggar','Agit#gefg_cas02',1);
REPLACE INTO `castle_db` VALUES(7,'gefg_cas03','Yesnelph','Agit#gefg_cas03',1);
REPLACE INTO `castle_db` VALUES(8,'gefg_cas04','Bergel','Agit#gefg_cas04',1);
REPLACE INTO `castle_db` VALUES(9,'gefg_cas05','Mersetzdeitz','Agit#gefg_cas05',1);
REPLACE INTO `castle_db` VALUES(10,'payg_cas01','Bright Arbor','Agit#payg_cas01',1);
REPLACE INTO `castle_db` VALUES(11,'payg_cas02','Scarlet Palace','Agit#payg_cas02',1);
REPLACE INTO `castle_db` VALUES(12,'payg_cas03','Holy Shadow','Agit#payg_cas03',1);
REPLACE INTO `castle_db` VALUES(13,'payg_cas04','Sacred Altar','Agit#payg_cas04',1);
REPLACE INTO `castle_db` VALUES(14,'payg_cas05','Bamboo Grove Hill','Agit#payg_cas05',1);
REPLACE INTO `castle_db` VALUES(15,'prtg_cas01','Kriemhild','Agit#prtg_cas01',1);
REPLACE INTO `castle_db` VALUES(16,'prtg_cas02','Swanhild','Agit#prtg_cas02',1);
REPLACE INTO `castle_db` VALUES(17,'prtg_cas03','Fadhgridh','Agit#prtg_cas03',1);
REPLACE INTO `castle_db` VALUES(18,'prtg_cas04','Skoegul','Agit#prtg_cas04',1);
REPLACE INTO `castle_db` VALUES(19,'prtg_cas05','Gondul','Agit#prtg_cas05',1);
REPLACE INTO `castle_db` VALUES(20,'nguild_alde','Earth','Agit_N01',2);
REPLACE INTO `castle_db` VALUES(21,'nguild_gef','Air','Agit_N02',2);
REPLACE INTO `castle_db` VALUES(22,'nguild_pay','Water','Agit_N03',2);
REPLACE INTO `castle_db` VALUES(23,'nguild_prt','Fire','Agit_N04',2);
REPLACE INTO `castle_db` VALUES(24,'schg_cas01','Himinn','Manager#schg_cas01',1);
REPLACE INTO `castle_db` VALUES(25,'schg_cas02','Andlangr','Manager#schg_cas02',1);
REPLACE INTO `castle_db` VALUES(26,'schg_cas03','Viblainn','Manager#schg_cas03',1);
REPLACE INTO `castle_db` VALUES(27,'schg_cas04','Hljod','Manager#schg_cas04',1);
REPLACE INTO `castle_db` VALUES(28,'schg_cas05','Skidbladnir','Manager#schg_cas05',1);
REPLACE INTO `castle_db` VALUES(29,'arug_cas01','Mardol','Manager#arug_cas01',1);
REPLACE INTO `castle_db` VALUES(30,'arug_cas02','Cyr','Manager#arug_cas02',1);
REPLACE INTO `castle_db` VALUES(31,'arug_cas03','Horn','Manager#arug_cas03',1);
REPLACE INTO `castle_db` VALUES(32,'arug_cas04','Gefn','Manager#arug_cas04',1);
REPLACE INTO `castle_db` VALUES(33,'arug_cas05','Bandis','Manager#arug_cas05',1);

--
-- Estrutura da tabela `const_db`
--

CREATE TABLE IF NOT EXISTS `const_db` (
  `Const` varchar(100) NOT NULL,
  `Val` varchar(70) NOT NULL,
  `Type` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Const`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `const_db` VALUES('Job_Novice','0',0);
REPLACE INTO `const_db` VALUES('Job_Swordman','1',0);
REPLACE INTO `const_db` VALUES('Job_Mage','2',0);
REPLACE INTO `const_db` VALUES('Job_Archer','3',0);
REPLACE INTO `const_db` VALUES('Job_Acolyte','4',0);
REPLACE INTO `const_db` VALUES('Job_Merchant','5',0);
REPLACE INTO `const_db` VALUES('Job_Thief','6',0);
REPLACE INTO `const_db` VALUES('Job_Knight','7',0);
REPLACE INTO `const_db` VALUES('Job_Priest','8',0);
REPLACE INTO `const_db` VALUES('Job_Wizard','9',0);
REPLACE INTO `const_db` VALUES('Job_Blacksmith','10',0);
REPLACE INTO `const_db` VALUES('Job_Hunter','11',0);
REPLACE INTO `const_db` VALUES('Job_Assassin','12',0);
REPLACE INTO `const_db` VALUES('Job_Knight2','13',0);
REPLACE INTO `const_db` VALUES('Job_Crusader','14',0);
REPLACE INTO `const_db` VALUES('Job_Monk','15',0);
REPLACE INTO `const_db` VALUES('Job_Sage','16',0);
REPLACE INTO `const_db` VALUES('Job_Rogue','17',0);
REPLACE INTO `const_db` VALUES('Job_Alchem','18',0);
REPLACE INTO `const_db` VALUES('Job_Alchemist','18',0);
REPLACE INTO `const_db` VALUES('Job_Bard','19',0);
REPLACE INTO `const_db` VALUES('Job_Dancer','20',0);
REPLACE INTO `const_db` VALUES('Job_Crusader2','21',0);
REPLACE INTO `const_db` VALUES('Job_Wedding','22',0);
REPLACE INTO `const_db` VALUES('Job_SuperNovice','23',0);
REPLACE INTO `const_db` VALUES('Job_Gunslinger','24',0);
REPLACE INTO `const_db` VALUES('Job_Ninja','25',0);
REPLACE INTO `const_db` VALUES('Job_Xmas','26',0);
REPLACE INTO `const_db` VALUES('Job_Summer','27',0);
REPLACE INTO `const_db` VALUES('Job_Novice_High','4001',0);
REPLACE INTO `const_db` VALUES('Job_Swordman_High','4002',0);
REPLACE INTO `const_db` VALUES('Job_Mage_High','4003',0);
REPLACE INTO `const_db` VALUES('Job_Archer_High','4004',0);
REPLACE INTO `const_db` VALUES('Job_Acolyte_High','4005',0);
REPLACE INTO `const_db` VALUES('Job_Merchant_High','4006',0);
REPLACE INTO `const_db` VALUES('Job_Thief_High','4007',0);
REPLACE INTO `const_db` VALUES('Job_Lord_Knight','4008',0);
REPLACE INTO `const_db` VALUES('Job_High_Priest','4009',0);
REPLACE INTO `const_db` VALUES('Job_High_Wizard','4010',0);
REPLACE INTO `const_db` VALUES('Job_Whitesmith','4011',0);
REPLACE INTO `const_db` VALUES('Job_Sniper','4012',0);
REPLACE INTO `const_db` VALUES('Job_Assassin_Cross','4013',0);
REPLACE INTO `const_db` VALUES('Job_Lord_Knight2','4014',0);
REPLACE INTO `const_db` VALUES('Job_Paladin','4015',0);
REPLACE INTO `const_db` VALUES('Job_Champion','4016',0);
REPLACE INTO `const_db` VALUES('Job_Professor','4017',0);
REPLACE INTO `const_db` VALUES('Job_Stalker','4018',0);
REPLACE INTO `const_db` VALUES('Job_Creator','4019',0);
REPLACE INTO `const_db` VALUES('Job_Clown','4020',0);
REPLACE INTO `const_db` VALUES('Job_Gypsy','4021',0);
REPLACE INTO `const_db` VALUES('Job_Paladin2','4022',0);
REPLACE INTO `const_db` VALUES('Job_Baby','4023',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Swordman','4024',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Mage','4025',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Archer','4026',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Acolyte','4027',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Merchant','4028',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Thief','4029',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Knight','4030',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Priest','4031',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Wizard','4032',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Blacksmith','4033',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Hunter','4034',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Assassin','4035',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Knight2','4036',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Crusader','4037',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Monk','4038',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Sage','4039',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Rogue','4040',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Alchem','4041',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Alchemist','4041',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Bard','4042',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Dancer','4043',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Crusader2','4044',0);
REPLACE INTO `const_db` VALUES('Job_Super_Baby','4045',0);
REPLACE INTO `const_db` VALUES('Job_Taekwon','4046',0);
REPLACE INTO `const_db` VALUES('Job_Star_Gladiator','4047',0);
REPLACE INTO `const_db` VALUES('Job_Star_Gladiator2','4048',0);
REPLACE INTO `const_db` VALUES('Job_Soul_Linker','4049',0);
REPLACE INTO `const_db` VALUES('Job_Gangsi','4050',0);
REPLACE INTO `const_db` VALUES('Job_Death_Knight','4051',0);
REPLACE INTO `const_db` VALUES('Job_Dark_Collector','4052',0);
REPLACE INTO `const_db` VALUES('Job_Rune_Knight','4054',0);
REPLACE INTO `const_db` VALUES('Job_Warlock','4055',0);
REPLACE INTO `const_db` VALUES('Job_Ranger','4056',0);
REPLACE INTO `const_db` VALUES('Job_Arch_Bishop','4057',0);
REPLACE INTO `const_db` VALUES('Job_Mechanic','4058',0);
REPLACE INTO `const_db` VALUES('Job_Guillotine_Cross','4059',0);
REPLACE INTO `const_db` VALUES('Job_Rune_Knight_T','4060',0);
REPLACE INTO `const_db` VALUES('Job_Warlock_T','4061',0);
REPLACE INTO `const_db` VALUES('Job_Ranger_T','4062',0);
REPLACE INTO `const_db` VALUES('Job_Arch_Bishop_T','4063',0);
REPLACE INTO `const_db` VALUES('Job_Mechanic_T','4064',0);
REPLACE INTO `const_db` VALUES('Job_Guillotine_Cross_T','4065',0);
REPLACE INTO `const_db` VALUES('Job_Royal_Guard','4066',0);
REPLACE INTO `const_db` VALUES('Job_Sorcerer','4067',0);
REPLACE INTO `const_db` VALUES('Job_Minstrel','4068',0);
REPLACE INTO `const_db` VALUES('Job_Wanderer','4069',0);
REPLACE INTO `const_db` VALUES('Job_Sura','4070',0);
REPLACE INTO `const_db` VALUES('Job_Genetic','4071',0);
REPLACE INTO `const_db` VALUES('Job_Shadow_Chaser','4072',0);
REPLACE INTO `const_db` VALUES('Job_Royal_Guard_T','4073',0);
REPLACE INTO `const_db` VALUES('Job_Sorcerer_T','4074',0);
REPLACE INTO `const_db` VALUES('Job_Minstrel_T','4075',0);
REPLACE INTO `const_db` VALUES('Job_Wanderer_T','4076',0);
REPLACE INTO `const_db` VALUES('Job_Sura_T','4077',0);
REPLACE INTO `const_db` VALUES('Job_Genetic_T','4078',0);
REPLACE INTO `const_db` VALUES('Job_Shadow_Chaser_T','4079',0);
REPLACE INTO `const_db` VALUES('Job_Rune_Knight2','4080',0);
REPLACE INTO `const_db` VALUES('Job_Rune_Knight_T2','4081',0);
REPLACE INTO `const_db` VALUES('Job_Royal_Guard2','4082',0);
REPLACE INTO `const_db` VALUES('Job_Royal_Guard_T2','4083',0);
REPLACE INTO `const_db` VALUES('Job_Ranger2','4084',0);
REPLACE INTO `const_db` VALUES('Job_Ranger_T2','4085',0);
REPLACE INTO `const_db` VALUES('Job_Mechanic2','4086',0);
REPLACE INTO `const_db` VALUES('Job_Mechanic_T2','4087',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Rune','4096',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Warlock','4097',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Ranger','4098',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Bishop','4099',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Mechanic','4100',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Cross','4101',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Guard','4102',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Sorcerer','4103',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Minstrel','4104',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Wanderer','4105',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Sura','4106',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Genetic','4107',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Chaser','4108',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Rune2','4109',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Guard2','4110',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Ranger2','4111',0);
REPLACE INTO `const_db` VALUES('Job_Baby_Mechanic2','4112',0);
REPLACE INTO `const_db` VALUES('Job_Super_Novice_E','4190',0);
REPLACE INTO `const_db` VALUES('Job_Super_Baby_E','4191',0);
REPLACE INTO `const_db` VALUES('Job_Kagerou','4211',0);
REPLACE INTO `const_db` VALUES('Job_Oboro','4212',0);
REPLACE INTO `const_db` VALUES('Job_Rebellion','4215',0);
REPLACE INTO `const_db` VALUES('EAJL_2_1','0x100',0);
REPLACE INTO `const_db` VALUES('EAJL_2_2','0x200',0);
REPLACE INTO `const_db` VALUES('EAJL_2','0x300',0);
REPLACE INTO `const_db` VALUES('EAJL_UPPER','0x1000',0);
REPLACE INTO `const_db` VALUES('EAJL_BABY','0x2000',0);
REPLACE INTO `const_db` VALUES('EAJL_THIRD','0x4000',0);
REPLACE INTO `const_db` VALUES('EAJ_BASEMASK','0x00ff',0);
REPLACE INTO `const_db` VALUES('EAJ_UPPERMASK','0x0fff',0);
REPLACE INTO `const_db` VALUES('EAJ_THIRDMASK','0x4fff',0);
REPLACE INTO `const_db` VALUES('EAJ_NOVICE','0x0',0);
REPLACE INTO `const_db` VALUES('EAJ_SWORDMAN','0x1',0);
REPLACE INTO `const_db` VALUES('EAJ_MAGE','0x2',0);
REPLACE INTO `const_db` VALUES('EAJ_ARCHER','0x3',0);
REPLACE INTO `const_db` VALUES('EAJ_ACOLYTE','0x4',0);
REPLACE INTO `const_db` VALUES('EAJ_MERCHANT','0x5',0);
REPLACE INTO `const_db` VALUES('EAJ_THIEF','0x6',0);
REPLACE INTO `const_db` VALUES('EAJ_TAEKWON','0x7',0);
REPLACE INTO `const_db` VALUES('EAJ_GUNSLINGER','0x9',0);
REPLACE INTO `const_db` VALUES('EAJ_NINJA','0x0A',0);
REPLACE INTO `const_db` VALUES('EAJ_GANGSI','0x0D',0);
REPLACE INTO `const_db` VALUES('EAJ_SUPER_NOVICE','0x100',0);
REPLACE INTO `const_db` VALUES('EAJ_KNIGHT','0x101',0);
REPLACE INTO `const_db` VALUES('EAJ_WIZARD','0x102',0);
REPLACE INTO `const_db` VALUES('EAJ_HUNTER','0x103',0);
REPLACE INTO `const_db` VALUES('EAJ_PRIEST','0x104',0);
REPLACE INTO `const_db` VALUES('EAJ_BLACKSMITH','0x105',0);
REPLACE INTO `const_db` VALUES('EAJ_ASSASSIN','0x106',0);
REPLACE INTO `const_db` VALUES('EAJ_STAR_GLADIATOR','0x107',0);
REPLACE INTO `const_db` VALUES('EAJ_REBELLION','0x109',0);
REPLACE INTO `const_db` VALUES('EAJ_KAGEROUOBORO','0x10A',0);
REPLACE INTO `const_db` VALUES('EAJ_DEATH_KNIGHT','0x10D',0);
REPLACE INTO `const_db` VALUES('EAJ_CRUSADER','0x201',0);
REPLACE INTO `const_db` VALUES('EAJ_SAGE','0x202',0);
REPLACE INTO `const_db` VALUES('EAJ_BARDDANCER','0x203',0);
REPLACE INTO `const_db` VALUES('EAJ_MONK','0x204',0);
REPLACE INTO `const_db` VALUES('EAJ_ALCHEMIST','0x205',0);
REPLACE INTO `const_db` VALUES('EAJ_ROGUE','0x206',0);
REPLACE INTO `const_db` VALUES('EAJ_SOUL_LINKER','0x207',0);
REPLACE INTO `const_db` VALUES('EAJ_DARK_COLLECTOR','0x20D',0);
REPLACE INTO `const_db` VALUES('EAJ_NOVICE_HIGH','0x1000',0);
REPLACE INTO `const_db` VALUES('EAJ_SWORDMAN_HIGH','0x1001',0);
REPLACE INTO `const_db` VALUES('EAJ_MAGE_HIGH','0x1002',0);
REPLACE INTO `const_db` VALUES('EAJ_ARCHER_HIGH','0x1003',0);
REPLACE INTO `const_db` VALUES('EAJ_ACOLYTE_HIGH','0x1004',0);
REPLACE INTO `const_db` VALUES('EAJ_MERCHANT_HIGH','0x1005',0);
REPLACE INTO `const_db` VALUES('EAJ_THIEF_HIGH','0x1006',0);
REPLACE INTO `const_db` VALUES('EAJ_LORD_KNIGHT','0x1101',0);
REPLACE INTO `const_db` VALUES('EAJ_HIGH_WIZARD','0x1102',0);
REPLACE INTO `const_db` VALUES('EAJ_SNIPER','0x1103',0);
REPLACE INTO `const_db` VALUES('EAJ_HIGH_PRIEST','0x1104',0);
REPLACE INTO `const_db` VALUES('EAJ_WHITESMITH','0x1105',0);
REPLACE INTO `const_db` VALUES('EAJ_ASSASSIN_CROSS','0x1106',0);
REPLACE INTO `const_db` VALUES('EAJ_PALADIN','0x1201',0);
REPLACE INTO `const_db` VALUES('EAJ_PROFESSOR','0x1202',0);
REPLACE INTO `const_db` VALUES('EAJ_CLOWNGYPSY','0x1203',0);
REPLACE INTO `const_db` VALUES('EAJ_CHAMPION','0x1204',0);
REPLACE INTO `const_db` VALUES('EAJ_CREATOR','0x1205',0);
REPLACE INTO `const_db` VALUES('EAJ_STALKER','0x1206',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY','0x2000',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_SWORDMAN','0x2001',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_MAGE','0x2002',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_ARCHER','0x2003',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_ACOLYTE','0x2004',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_MERCHANT','0x2005',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_THIEF','0x2006',0);
REPLACE INTO `const_db` VALUES('EAJ_SUPER_BABY','0x2100',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_KNIGHT','0x2101',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_WIZARD','0x2102',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_HUNTER','0x2103',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_PRIEST','0x2104',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_BLACKSMITH','0x2105',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_ASSASSIN','0x2106',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_CRUSADER','0x2201',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_SAGE','0x2202',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_BARDDANCER','0x2203',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_MONK','0x2204',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_ALCHEMIST','0x2205',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_ROGUE','0x2206',0);
REPLACE INTO `const_db` VALUES('EAJ_SUPER_NOVICE_E','0x4100',0);
REPLACE INTO `const_db` VALUES('EAJ_RUNE_KNIGHT','0x4101',0);
REPLACE INTO `const_db` VALUES('EAJ_WARLOCK','0x4102',0);
REPLACE INTO `const_db` VALUES('EAJ_RANGER','0x4103',0);
REPLACE INTO `const_db` VALUES('EAJ_ARCH_BISHOP','0x4104',0);
REPLACE INTO `const_db` VALUES('EAJ_MECHANIC','0x4105',0);
REPLACE INTO `const_db` VALUES('EAJ_GUILLOTINE_CROSS','0x4106',0);
REPLACE INTO `const_db` VALUES('EAJ_ROYAL_GUARD','0x4201',0);
REPLACE INTO `const_db` VALUES('EAJ_SORCERER','0x4202',0);
REPLACE INTO `const_db` VALUES('EAJ_MINSTRELWANDERER','0x4203',0);
REPLACE INTO `const_db` VALUES('EAJ_SURA','0x4204',0);
REPLACE INTO `const_db` VALUES('EAJ_GENETIC','0x4205',0);
REPLACE INTO `const_db` VALUES('EAJ_SHADOW_CHASER','0x4206',0);
REPLACE INTO `const_db` VALUES('EAJ_RUNE_KNIGHT_T','0x5101',0);
REPLACE INTO `const_db` VALUES('EAJ_WARLOCK_T','0x5102',0);
REPLACE INTO `const_db` VALUES('EAJ_RANGER_T','0x5103',0);
REPLACE INTO `const_db` VALUES('EAJ_ARCH_BISHOP_T','0x5104',0);
REPLACE INTO `const_db` VALUES('EAJ_MECHANIC_T','0x5105',0);
REPLACE INTO `const_db` VALUES('EAJ_GUILLOTINE_CROSS_T','0x5106',0);
REPLACE INTO `const_db` VALUES('EAJ_ROYAL_GUARD_T','0x5201',0);
REPLACE INTO `const_db` VALUES('EAJ_SORCERER_T','0x5202',0);
REPLACE INTO `const_db` VALUES('EAJ_MINSTRELWANDERER_T','0x5203',0);
REPLACE INTO `const_db` VALUES('EAJ_SURA_T','0x5204',0);
REPLACE INTO `const_db` VALUES('EAJ_GENETIC_T','0x5205',0);
REPLACE INTO `const_db` VALUES('EAJ_SHADOW_CHASER_T','0x5206',0);
REPLACE INTO `const_db` VALUES('EAJ_SUPER_BABY_E','0x6100',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_RUNE','0x6101',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_WARLOCK','0x6102',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_RANGER','0x6103',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_BISHOP',',0x6104',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_MECHANIC','0x6105',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_CROSS',',0x6106',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_GUARD',',0x6201',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_SORCERER','0x6202',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_MINSTRELWANDERER','0x6203',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_SURA',',0x6204',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_GENETIC','0x6205',0);
REPLACE INTO `const_db` VALUES('EAJ_BABY_CHASER',',0x6206',0);
REPLACE INTO `const_db` VALUES('bc_all','0',0);
REPLACE INTO `const_db` VALUES('bc_map','1',0);
REPLACE INTO `const_db` VALUES('bc_area','2',0);
REPLACE INTO `const_db` VALUES('bc_self','3',0);
REPLACE INTO `const_db` VALUES('bc_pc','0',0);
REPLACE INTO `const_db` VALUES('bc_npc','8',0);
REPLACE INTO `const_db` VALUES('bc_yellow','0',0);
REPLACE INTO `const_db` VALUES('bc_blue','16',0);
REPLACE INTO `const_db` VALUES('bc_woe','32',0);
REPLACE INTO `const_db` VALUES('mf_nomemo','0',0);
REPLACE INTO `const_db` VALUES('mf_noteleport','1',0);
REPLACE INTO `const_db` VALUES('mf_nosave','2',0);
REPLACE INTO `const_db` VALUES('mf_nobranch','3',0);
REPLACE INTO `const_db` VALUES('mf_nopenalty','4',0);
REPLACE INTO `const_db` VALUES('mf_nozenypenalty','5',0);
REPLACE INTO `const_db` VALUES('mf_pvp','6',0);
REPLACE INTO `const_db` VALUES('mf_pvp_noparty','7',0);
REPLACE INTO `const_db` VALUES('mf_pvp_noguild','8',0);
REPLACE INTO `const_db` VALUES('mf_gvg','9',0);
REPLACE INTO `const_db` VALUES('mf_gvg_noparty','10',0);
REPLACE INTO `const_db` VALUES('mf_notrade','11',0);
REPLACE INTO `const_db` VALUES('mf_noskill','12',0);
REPLACE INTO `const_db` VALUES('mf_nowarp','13',0);
REPLACE INTO `const_db` VALUES('mf_partylock','14',0);
REPLACE INTO `const_db` VALUES('mf_noicewall','15',0);
REPLACE INTO `const_db` VALUES('mf_snow','16',0);
REPLACE INTO `const_db` VALUES('mf_fog','17',0);
REPLACE INTO `const_db` VALUES('mf_sakura','18',0);
REPLACE INTO `const_db` VALUES('mf_leaves','19',0);
REPLACE INTO `const_db` VALUES('mf_clouds','23',0);
REPLACE INTO `const_db` VALUES('mf_clouds2','24',0);
REPLACE INTO `const_db` VALUES('mf_fireworks','25',0);
REPLACE INTO `const_db` VALUES('mf_gvg_castle','26',0);
REPLACE INTO `const_db` VALUES('mf_gvg_dungeon','27',0);
REPLACE INTO `const_db` VALUES('mf_nightenabled','28',0);
REPLACE INTO `const_db` VALUES('mf_nobaseexp','29',0);
REPLACE INTO `const_db` VALUES('mf_nojobexp','30',0);
REPLACE INTO `const_db` VALUES('mf_nomobloot','31',0);
REPLACE INTO `const_db` VALUES('mf_nomvploot','32',0);
REPLACE INTO `const_db` VALUES('mf_noreturn','33',0);
REPLACE INTO `const_db` VALUES('mf_nowarpto','34',0);
REPLACE INTO `const_db` VALUES('mf_nightmaredrop','35',0);
REPLACE INTO `const_db` VALUES('mf_zone','36',0);
REPLACE INTO `const_db` VALUES('mf_nocommand','37',0);
REPLACE INTO `const_db` VALUES('mf_nodrop','38',0);
REPLACE INTO `const_db` VALUES('mf_jexp','39',0);
REPLACE INTO `const_db` VALUES('mf_bexp','40',0);
REPLACE INTO `const_db` VALUES('mf_novending','41',0);
REPLACE INTO `const_db` VALUES('mf_loadevent','42',0);
REPLACE INTO `const_db` VALUES('mf_nochat','43',0);
REPLACE INTO `const_db` VALUES('mf_noexppenalty','44',0);
REPLACE INTO `const_db` VALUES('mf_guildlock','45',0);
REPLACE INTO `const_db` VALUES('mf_town','46',0);
REPLACE INTO `const_db` VALUES('mf_autotrade','47',0);
REPLACE INTO `const_db` VALUES('mf_allowks','48',0);
REPLACE INTO `const_db` VALUES('mf_monster_noteleport','49',0);
REPLACE INTO `const_db` VALUES('mf_pvp_nocalcrank','50',0);
REPLACE INTO `const_db` VALUES('mf_battleground','51',0);
REPLACE INTO `const_db` VALUES('mf_reset','52',0);
REPLACE INTO `const_db` VALUES('mf_notomb','53',0);
REPLACE INTO `const_db` VALUES('mf_nocashshop','54',0);
REPLACE INTO `const_db` VALUES('cell_walkable','0',0);
REPLACE INTO `const_db` VALUES('cell_shootable','1',0);
REPLACE INTO `const_db` VALUES('cell_water','2',0);
REPLACE INTO `const_db` VALUES('cell_npc','3',0);
REPLACE INTO `const_db` VALUES('cell_basilica','4',0);
REPLACE INTO `const_db` VALUES('cell_landprotector','5',0);
REPLACE INTO `const_db` VALUES('cell_novending','6',0);
REPLACE INTO `const_db` VALUES('cell_nochat','7',0);
-- REPLACE INTO `const_db` VALUES('cell_gettype','0',0);
REPLACE INTO `const_db` VALUES('cell_chkwall','1',0);
REPLACE INTO `const_db` VALUES('cell_chkwater','2',0);
REPLACE INTO `const_db` VALUES('cell_chkcliff','3',0);
REPLACE INTO `const_db` VALUES('cell_chkpass','4',0);
REPLACE INTO `const_db` VALUES('cell_chkreach','5',0);
REPLACE INTO `const_db` VALUES('cell_chknopass','6',0);
REPLACE INTO `const_db` VALUES('cell_chknoreach','7',0);
-- REPLACE INTO `const_db` VALUES('cell_chkstack','8',0);
REPLACE INTO `const_db` VALUES('cell_chknpc','9',0);
REPLACE INTO `const_db` VALUES('cell_chkbasilica','10',0);
REPLACE INTO `const_db` VALUES('cell_chklandprotector','11',0);
REPLACE INTO `const_db` VALUES('cell_chknovending','12',0);
REPLACE INTO `const_db` VALUES('cell_chknochat','13',0);
REPLACE INTO `const_db` VALUES('StatusPoint','9',1);
REPLACE INTO `const_db` VALUES('BaseLevel','11',1);
REPLACE INTO `const_db` VALUES('SkillPoint','12',1);
REPLACE INTO `const_db` VALUES('Class','19',1);
REPLACE INTO `const_db` VALUES('Upper','56',1);
REPLACE INTO `const_db` VALUES('Zeny','20',1);
REPLACE INTO `const_db` VALUES('Sex','21',1);
REPLACE INTO `const_db` VALUES('Weight','24',1);
REPLACE INTO `const_db` VALUES('MaxWeight','25',1);
REPLACE INTO `const_db` VALUES('JobLevel','55',1);
REPLACE INTO `const_db` VALUES('BaseExp','1',1);
REPLACE INTO `const_db` VALUES('JobExp','2',1);
REPLACE INTO `const_db` VALUES('Karma','3',1);
REPLACE INTO `const_db` VALUES('Manner','4',1);
REPLACE INTO `const_db` VALUES('NextBaseExp','22',1);
REPLACE INTO `const_db` VALUES('NextJobExp','23',1);
REPLACE INTO `const_db` VALUES('Hp','5',1);
REPLACE INTO `const_db` VALUES('MaxHp','6',1);
REPLACE INTO `const_db` VALUES('Sp','7',1);
REPLACE INTO `const_db` VALUES('MaxSp','8',1);
REPLACE INTO `const_db` VALUES('BaseJob','119',1);
REPLACE INTO `const_db` VALUES('BaseClass','120',1);
REPLACE INTO `const_db` VALUES('killerrid','121',1);
REPLACE INTO `const_db` VALUES('killedrid','122',1);
REPLACE INTO `const_db` VALUES('SlotChange','123',1);
REPLACE INTO `const_db` VALUES('CharRename','124',1);
REPLACE INTO `const_db` VALUES('ModExp','125',1);
REPLACE INTO `const_db` VALUES('ModDrop','126',1);
REPLACE INTO `const_db` VALUES('ModDeath','127',1);
REPLACE INTO `const_db` VALUES('bMaxHP','6',0);
REPLACE INTO `const_db` VALUES('bMaxSP','8',0);
REPLACE INTO `const_db` VALUES('bStr','13',0);
REPLACE INTO `const_db` VALUES('bAgi','14',0);
REPLACE INTO `const_db` VALUES('bVit','15',0);
REPLACE INTO `const_db` VALUES('bInt','16',0);
REPLACE INTO `const_db` VALUES('bDex','17',0);
REPLACE INTO `const_db` VALUES('bLuk','18',0);
REPLACE INTO `const_db` VALUES('bAtk','41',0);
REPLACE INTO `const_db` VALUES('bAtk2','42',0);
REPLACE INTO `const_db` VALUES('bDef','45',0);
REPLACE INTO `const_db` VALUES('bDef2','46',0);
REPLACE INTO `const_db` VALUES('bMdef','47',0);
REPLACE INTO `const_db` VALUES('bMdef2','48',0);
REPLACE INTO `const_db` VALUES('bHit','49',0);
REPLACE INTO `const_db` VALUES('bFlee','50',0);
REPLACE INTO `const_db` VALUES('bFlee2','51',0);
REPLACE INTO `const_db` VALUES('bCritical','52',0);
REPLACE INTO `const_db` VALUES('bAspd','53',0);
REPLACE INTO `const_db` VALUES('bFame','59',0);
REPLACE INTO `const_db` VALUES('bUnbreakable','60',0);
REPLACE INTO `const_db` VALUES('bAtkRange','1000',0);
REPLACE INTO `const_db` VALUES('bAtkEle','1001',0);
REPLACE INTO `const_db` VALUES('bDefEle','1002',0);
REPLACE INTO `const_db` VALUES('bCastrate','1003',0);
REPLACE INTO `const_db` VALUES('bMaxHPrate','1004',0);
REPLACE INTO `const_db` VALUES('bMaxSPrate','1005',0);
REPLACE INTO `const_db` VALUES('bUseSPrate','1006',0);
REPLACE INTO `const_db` VALUES('bAddEle','1007',0);
REPLACE INTO `const_db` VALUES('bAddRace','1008',0);
REPLACE INTO `const_db` VALUES('bAddSize','1009',0);
REPLACE INTO `const_db` VALUES('bSubEle','1010',0);
REPLACE INTO `const_db` VALUES('bSubRace','1011',0);
REPLACE INTO `const_db` VALUES('bAddEff','1012',0);
REPLACE INTO `const_db` VALUES('bResEff','1013',0);
REPLACE INTO `const_db` VALUES('bBaseAtk','1014',0);
REPLACE INTO `const_db` VALUES('bAspdRate','1015',0);
REPLACE INTO `const_db` VALUES('bHPrecovRate','1016',0);
REPLACE INTO `const_db` VALUES('bSPrecovRate','1017',0);
REPLACE INTO `const_db` VALUES('bSpeedRate','1018',0);
REPLACE INTO `const_db` VALUES('bCriticalDef','1019',0);
REPLACE INTO `const_db` VALUES('bNearAtkDef','1020',0);
REPLACE INTO `const_db` VALUES('bLongAtkDef','1021',0);
REPLACE INTO `const_db` VALUES('bDoubleRate','1022',0);
REPLACE INTO `const_db` VALUES('bDoubleAddRate','1023',0);
REPLACE INTO `const_db` VALUES('bSkillHeal','1024',0);
REPLACE INTO `const_db` VALUES('bMatkRate','1025',0);
REPLACE INTO `const_db` VALUES('bIgnoreDefEle','1026',0);
REPLACE INTO `const_db` VALUES('bIgnoreDefRace','1027',0);
REPLACE INTO `const_db` VALUES('bAtkRate','1028',0);
REPLACE INTO `const_db` VALUES('bSpeedAddRate','1029',0);
REPLACE INTO `const_db` VALUES('bSPRegenRate','1030',0);
REPLACE INTO `const_db` VALUES('bMagicAtkDef','1031',0);
REPLACE INTO `const_db` VALUES('bMiscAtkDef','1032',0);
REPLACE INTO `const_db` VALUES('bIgnoreMdefEle','1033',0);
REPLACE INTO `const_db` VALUES('bIgnoreMdefRace','1034',0);
REPLACE INTO `const_db` VALUES('bMagicAddEle','1035',0);
REPLACE INTO `const_db` VALUES('bMagicAddRace','1036',0);
REPLACE INTO `const_db` VALUES('bMagicAddSize','1037',0);
REPLACE INTO `const_db` VALUES('bPerfectHitRate','1038',0);
REPLACE INTO `const_db` VALUES('bPerfectHitAddRate','1039',0);
REPLACE INTO `const_db` VALUES('bCriticalRate','1040',0);
REPLACE INTO `const_db` VALUES('bGetZenyNum','1041',0);
REPLACE INTO `const_db` VALUES('bAddGetZenyNum','1042',0);
REPLACE INTO `const_db` VALUES('bAddDamageClass','1043',0);
REPLACE INTO `const_db` VALUES('bAddMagicDamageClass','1044',0);
REPLACE INTO `const_db` VALUES('bAddDefClass','1045',0);
REPLACE INTO `const_db` VALUES('bAddMdefClass','1046',0);
REPLACE INTO `const_db` VALUES('bAddMonsterDropItem','1047',0);
REPLACE INTO `const_db` VALUES('bDefRatioAtkEle','1048',0);
REPLACE INTO `const_db` VALUES('bDefRatioAtkRace','1049',0);
REPLACE INTO `const_db` VALUES('bUnbreakableGarment','1050',0);
REPLACE INTO `const_db` VALUES('bHitRate','1051',0);
REPLACE INTO `const_db` VALUES('bFleeRate','1052',0);
REPLACE INTO `const_db` VALUES('bFlee2Rate','1053',0);
REPLACE INTO `const_db` VALUES('bDefRate','1054',0);
REPLACE INTO `const_db` VALUES('bDef2Rate','1055',0);
REPLACE INTO `const_db` VALUES('bMdefRate','1056',0);
REPLACE INTO `const_db` VALUES('bMdef2Rate','1057',0);
REPLACE INTO `const_db` VALUES('bSplashRange','1058',0);
REPLACE INTO `const_db` VALUES('bSplashAddRange','1059',0);
REPLACE INTO `const_db` VALUES('bAutoSpell','1060',0);
REPLACE INTO `const_db` VALUES('bHPDrainRate','1061',0);
REPLACE INTO `const_db` VALUES('bSPDrainRate','1062',0);
REPLACE INTO `const_db` VALUES('bShortWeaponDamageReturn','1063',0);
REPLACE INTO `const_db` VALUES('bLongWeaponDamageReturn','1064',0);
REPLACE INTO `const_db` VALUES('bWeaponComaEle','1065',0);
REPLACE INTO `const_db` VALUES('bWeaponComaRace','1066',0);
REPLACE INTO `const_db` VALUES('bAddEff2','1067',0);
REPLACE INTO `const_db` VALUES('bBreakWeaponRate','1068',0);
REPLACE INTO `const_db` VALUES('bBreakArmorRate','1069',0);
REPLACE INTO `const_db` VALUES('bAddStealRate','1070',0);
REPLACE INTO `const_db` VALUES('bMagicDamageReturn','1071',0);
REPLACE INTO `const_db` VALUES('bAllStats','1073',0);
REPLACE INTO `const_db` VALUES('bAgiVit','1074',0);
REPLACE INTO `const_db` VALUES('bAgiDexStr','1075',0);
REPLACE INTO `const_db` VALUES('bPerfectHide','1076',0);
REPLACE INTO `const_db` VALUES('bNoKnockback','1077',0);
REPLACE INTO `const_db` VALUES('bClassChange','1078',0);
REPLACE INTO `const_db` VALUES('bHPDrainValue','1079',0);
REPLACE INTO `const_db` VALUES('bSPDrainValue','1080',0);
REPLACE INTO `const_db` VALUES('bWeaponAtk','1081',0);
REPLACE INTO `const_db` VALUES('bWeaponAtkRate','1082',0);
REPLACE INTO `const_db` VALUES('bDelayrate','1083',0);
REPLACE INTO `const_db` VALUES('bHPDrainRateRace','1084',0);
REPLACE INTO `const_db` VALUES('bSPDrainRateRace','1085',0);
REPLACE INTO `const_db` VALUES('bIgnoreMdefRate','1086',0);
REPLACE INTO `const_db` VALUES('bIgnoreDefRate','1087',0);
REPLACE INTO `const_db` VALUES('bSkillHeal2','1088',0);
REPLACE INTO `const_db` VALUES('bAddEffOnSkill','1089',0);
REPLACE INTO `const_db` VALUES('bHealPower','1090',0);
REPLACE INTO `const_db` VALUES('bHealPower2','1091',0);
REPLACE INTO `const_db` VALUES('bRestartFullRecover','2000',0);
REPLACE INTO `const_db` VALUES('bNoCastCancel','2001',0);
REPLACE INTO `const_db` VALUES('bNoSizeFix','2002',0);
REPLACE INTO `const_db` VALUES('bNoMagicDamage','2003',0);
REPLACE INTO `const_db` VALUES('bNoWeaponDamage','2004',0);
REPLACE INTO `const_db` VALUES('bNoGemStone','2005',0);
REPLACE INTO `const_db` VALUES('bNoCastCancel2','2006',0);
REPLACE INTO `const_db` VALUES('bNoMiscDamage','2007',0);
REPLACE INTO `const_db` VALUES('bUnbreakableWeapon','2008',0);
REPLACE INTO `const_db` VALUES('bUnbreakableArmor','2009',0);
REPLACE INTO `const_db` VALUES('bUnbreakableHelm','2010',0);
REPLACE INTO `const_db` VALUES('bUnbreakableShield','2011',0);
REPLACE INTO `const_db` VALUES('bLongAtkRate','2012',0);
REPLACE INTO `const_db` VALUES('bCritAtkRate','2013',0);
REPLACE INTO `const_db` VALUES('bCriticalAddRace','2014',0);
REPLACE INTO `const_db` VALUES('bNoRegen','2015',0);
REPLACE INTO `const_db` VALUES('bAddEffWhenHit','2016',0);
REPLACE INTO `const_db` VALUES('bAutoSpellWhenHit','2017',0);
REPLACE INTO `const_db` VALUES('bSkillAtk','2018',0);
REPLACE INTO `const_db` VALUES('bUnstripable','2019',0);
REPLACE INTO `const_db` VALUES('bAutoSpellOnSkill','2020',0);
REPLACE INTO `const_db` VALUES('bSPGainValue','2021',0);
REPLACE INTO `const_db` VALUES('bHPRegenRate','2022',0);
REPLACE INTO `const_db` VALUES('bHPLossRate','2023',0);
REPLACE INTO `const_db` VALUES('bAddRace2','2024',0);
REPLACE INTO `const_db` VALUES('bHPGainValue','2025',0);
REPLACE INTO `const_db` VALUES('bSubSize','2026',0);
REPLACE INTO `const_db` VALUES('bHPDrainValueRace','2027',0);
REPLACE INTO `const_db` VALUES('bAddItemHealRate','2028',0);
REPLACE INTO `const_db` VALUES('bSPDrainValueRace','2029',0);
REPLACE INTO `const_db` VALUES('bExpAddRace','2030',0);
REPLACE INTO `const_db` VALUES('bSPGainRace','2031',0);
REPLACE INTO `const_db` VALUES('bSubRace2','2032',0);
REPLACE INTO `const_db` VALUES('bUnbreakableShoes','2033',0);
REPLACE INTO `const_db` VALUES('bUnstripableWeapon','2034',0);
REPLACE INTO `const_db` VALUES('bUnstripableArmor','2035',0);
REPLACE INTO `const_db` VALUES('bUnstripableHelm','2036',0);
REPLACE INTO `const_db` VALUES('bUnstripableShield','2037',0);
REPLACE INTO `const_db` VALUES('bIntravision','2038',0);
REPLACE INTO `const_db` VALUES('bAddMonsterDropChainItem','2039',0);
REPLACE INTO `const_db` VALUES('bSPLossRate','2040',0);
REPLACE INTO `const_db` VALUES('bAddSkillBlow','2041',0);
REPLACE INTO `const_db` VALUES('bSPVanishRate','2042',0);
REPLACE INTO `const_db` VALUES('bMagicSPGainValue','2043',0);
REPLACE INTO `const_db` VALUES('bMagicHPGainValue','2044',0);
REPLACE INTO `const_db` VALUES('bAddClassDropItem','2045',0);
REPLACE INTO `const_db` VALUES('bMatk','2046',0);
REPLACE INTO `const_db` VALUES('bSPGainRaceAttack','2047',0);
REPLACE INTO `const_db` VALUES('bHPGainRaceAttack','2048',0);
REPLACE INTO `const_db` VALUES('bSkillUseSPrate','2049',0);
REPLACE INTO `const_db` VALUES('bSkillCooldown','2050',0);
REPLACE INTO `const_db` VALUES('bSkillFixedCast','2051',0);
REPLACE INTO `const_db` VALUES('bSkillVariableCast','2052',0);
REPLACE INTO `const_db` VALUES('bFixedCastrate','2053',0);
REPLACE INTO `const_db` VALUES('bVariableCastrate','2054',0);
REPLACE INTO `const_db` VALUES('bSkillUseSP','2055',0);
REPLACE INTO `const_db` VALUES('bMagicAtkEle 2056','',0);
REPLACE INTO `const_db` VALUES('bFixedCast','2057',0);
REPLACE INTO `const_db` VALUES('bVariableCast','2058',0);
REPLACE INTO `const_db` VALUES('bSetDefRace','2059',0);
REPLACE INTO `const_db` VALUES('bSetMDefRace','2060',0);
REPLACE INTO `const_db` VALUES('bAddRaceTolerance','2061',0);
REPLACE INTO `const_db` VALUES('EQI_HEAD_TOP','1',0);
REPLACE INTO `const_db` VALUES('EQI_ARMOR','2',0);
REPLACE INTO `const_db` VALUES('EQI_HAND_L','3',0);
REPLACE INTO `const_db` VALUES('EQI_HAND_R','4',0);
REPLACE INTO `const_db` VALUES('EQI_GARMENT','5',0);
REPLACE INTO `const_db` VALUES('EQI_SHOES','6',0);
REPLACE INTO `const_db` VALUES('EQI_ACC_L','7',0);
REPLACE INTO `const_db` VALUES('EQI_ACC_R','8',0);
REPLACE INTO `const_db` VALUES('EQI_HEAD_MID','9',0);
REPLACE INTO `const_db` VALUES('EQI_HEAD_LOW','10',0);
REPLACE INTO `const_db` VALUES('EQI_COSTUME_HEAD_LOW','11',0);
REPLACE INTO `const_db` VALUES('EQI_COSTUME_HEAD_MID','12',0);
REPLACE INTO `const_db` VALUES('EQI_COSTUME_HEAD_TOP','13',0);
REPLACE INTO `const_db` VALUES('EQI_COSTUME_GARMENT','14',0);
REPLACE INTO `const_db` VALUES('EQI_SHADOW_ARMOR','15',0);
REPLACE INTO `const_db` VALUES('EQI_SHADOW_WEAPON','16',0);
REPLACE INTO `const_db` VALUES('EQI_SHADOW_SHIELD','17',0);
REPLACE INTO `const_db` VALUES('EQI_SHADOW_SHOES','18',0);
REPLACE INTO `const_db` VALUES('EQI_SHADOW_ACC_R','19',0);
REPLACE INTO `const_db` VALUES('EQI_SHADOW_ACC_L','20',0);
REPLACE INTO `const_db` VALUES('LOOK_BASE','0',0);
REPLACE INTO `const_db` VALUES('LOOK_HAIR','1',0);
REPLACE INTO `const_db` VALUES('LOOK_WEAPON','2',0);
REPLACE INTO `const_db` VALUES('LOOK_HEAD_BOTTOM','3',0);
REPLACE INTO `const_db` VALUES('LOOK_HEAD_TOP','4',0);
REPLACE INTO `const_db` VALUES('LOOK_HEAD_MID','5',0);
REPLACE INTO `const_db` VALUES('LOOK_HAIR_COLOR','6',0);
REPLACE INTO `const_db` VALUES('LOOK_CLOTHES_COLOR','7',0);
REPLACE INTO `const_db` VALUES('LOOK_SHIELD','8',0);
REPLACE INTO `const_db` VALUES('LOOK_SHOES','9',0);
REPLACE INTO `const_db` VALUES('LOOK_BODY','10',0);
REPLACE INTO `const_db` VALUES('LOOK_FLOOR','11',0);
REPLACE INTO `const_db` VALUES('LOOK_ROBE','12',0);
REPLACE INTO `const_db` VALUES('Eff_Stone','0',0);
REPLACE INTO `const_db` VALUES('Eff_Freeze','1',0);
REPLACE INTO `const_db` VALUES('Eff_Stun','2',0);
REPLACE INTO `const_db` VALUES('Eff_Sleep','3',0);
REPLACE INTO `const_db` VALUES('Eff_Poison','4',0);
REPLACE INTO `const_db` VALUES('Eff_Curse','5',0);
REPLACE INTO `const_db` VALUES('Eff_Silence','6',0);
REPLACE INTO `const_db` VALUES('Eff_Confusion','7',0);
REPLACE INTO `const_db` VALUES('Eff_Blind','8',0);
REPLACE INTO `const_db` VALUES('Eff_Bleeding','9',0);
REPLACE INTO `const_db` VALUES('Eff_DPoison','10',0);
REPLACE INTO `const_db` VALUES('Eff_Fear','11',0);
REPLACE INTO `const_db` VALUES('Eff_Cold','12',0);
REPLACE INTO `const_db` VALUES('Eff_Burning','13',0);
REPLACE INTO `const_db` VALUES('Eff_Deepsleep','14',0);
REPLACE INTO `const_db` VALUES('Ele_Neutral','0',0);
REPLACE INTO `const_db` VALUES('Ele_Water','1',0);
REPLACE INTO `const_db` VALUES('Ele_Earth','2',0);
REPLACE INTO `const_db` VALUES('Ele_Fire','3',0);
REPLACE INTO `const_db` VALUES('Ele_Wind','4',0);
REPLACE INTO `const_db` VALUES('Ele_Poison','5',0);
REPLACE INTO `const_db` VALUES('Ele_Holy','6',0);
REPLACE INTO `const_db` VALUES('Ele_Dark','7',0);
REPLACE INTO `const_db` VALUES('Ele_Ghost','8',0);
REPLACE INTO `const_db` VALUES('Ele_Undead','9',0);
REPLACE INTO `const_db` VALUES('RC_Formless','0',0);
REPLACE INTO `const_db` VALUES('RC_Undead','1',0);
REPLACE INTO `const_db` VALUES('RC_Brute','2',0);
REPLACE INTO `const_db` VALUES('RC_Plant','3',0);
REPLACE INTO `const_db` VALUES('RC_Insect','4',0);
REPLACE INTO `const_db` VALUES('RC_Fish','5',0);
REPLACE INTO `const_db` VALUES('RC_Demon','6',0);
REPLACE INTO `const_db` VALUES('RC_DemiHuman','7',0);
REPLACE INTO `const_db` VALUES('RC_Angel','8',0);
REPLACE INTO `const_db` VALUES('RC_Dragon','9',0);
REPLACE INTO `const_db` VALUES('RC_Boss','10',0);
REPLACE INTO `const_db` VALUES('RC_NonBoss','11',0);
REPLACE INTO `const_db` VALUES('RC_NonDemiHuman','12',0);
REPLACE INTO `const_db` VALUES('RC2_None','0',0);
REPLACE INTO `const_db` VALUES('RC2_Goblin','1',0);
REPLACE INTO `const_db` VALUES('RC2_Kobold','2',0);
REPLACE INTO `const_db` VALUES('RC2_Orc','3',0);
REPLACE INTO `const_db` VALUES('RC2_Golem','4',0);
REPLACE INTO `const_db` VALUES('RC2_Guardian','5',0);
REPLACE INTO `const_db` VALUES('RC2_Ninja','6',0);
REPLACE INTO `const_db` VALUES('Size_Small','0',0);
REPLACE INTO `const_db` VALUES('Size_Medium','1',0);
REPLACE INTO `const_db` VALUES('Size_Large','2',0);
REPLACE INTO `const_db` VALUES('BF_WEAPON','0x0001',0);
REPLACE INTO `const_db` VALUES('BF_MAGIC','0x0002',0);
REPLACE INTO `const_db` VALUES('BF_MISC','0x0004',0);
REPLACE INTO `const_db` VALUES('BF_SHORT','0x0010',0);
REPLACE INTO `const_db` VALUES('BF_LONG','0x0040',0);
REPLACE INTO `const_db` VALUES('BF_SKILL','0x0100',0);
REPLACE INTO `const_db` VALUES('BF_NORMAL','0x0200',0);
REPLACE INTO `const_db` VALUES('ATF_SELF','0x01',0);
REPLACE INTO `const_db` VALUES('ATF_TARGET','0x02',0);
REPLACE INTO `const_db` VALUES('ATF_SHORT','0x04',0);
REPLACE INTO `const_db` VALUES('ATF_LONG','0x08',0);
REPLACE INTO `const_db` VALUES('ATF_WEAPON','0x10',0);
REPLACE INTO `const_db` VALUES('ATF_MAGIC','0x20',0);
REPLACE INTO `const_db` VALUES('ATF_MISC','0x40',0);
REPLACE INTO `const_db` VALUES('ATF_SKILL','0x60',0);
REPLACE INTO `const_db` VALUES('SC_ALL','-1',0);
REPLACE INTO `const_db` VALUES('SC_STONE','0',0);
REPLACE INTO `const_db` VALUES('SC_FREEZE','1',0);
REPLACE INTO `const_db` VALUES('SC_STUN','2',0);
REPLACE INTO `const_db` VALUES('SC_SLEEP','3',0);
REPLACE INTO `const_db` VALUES('SC_POISON','4',0);
REPLACE INTO `const_db` VALUES('SC_CURSE','5',0);
REPLACE INTO `const_db` VALUES('SC_SILENCE','6',0);
REPLACE INTO `const_db` VALUES('SC_CONFUSION','7',0);
REPLACE INTO `const_db` VALUES('SC_BLIND','8',0);
REPLACE INTO `const_db` VALUES('SC_BLOODING','9',0);
REPLACE INTO `const_db` VALUES('SC_DPOISON','10',0);
REPLACE INTO `const_db` VALUES('SC_FEAR','11',0);
REPLACE INTO `const_db` VALUES('SC_COLD','12',0);
REPLACE INTO `const_db` VALUES('SC_BURNING','13',0);
REPLACE INTO `const_db` VALUES('SC_DEEP_SLEEP','14',0);
REPLACE INTO `const_db` VALUES('SC_PROVOKE','20',0);
REPLACE INTO `const_db` VALUES('SC_ENDURE','21',0);
REPLACE INTO `const_db` VALUES('SC_TWOHANDQUICKEN','22',0);
REPLACE INTO `const_db` VALUES('SC_CONCENTRATION','23',0);
REPLACE INTO `const_db` VALUES('SC_HIDING','24',0);
REPLACE INTO `const_db` VALUES('SC_CLOAKING','25',0);
REPLACE INTO `const_db` VALUES('SC_ENCHANTPOISON','26',0);
REPLACE INTO `const_db` VALUES('SC_POISONREACT','27',0);
REPLACE INTO `const_db` VALUES('SC_QUAGMIRE','28',0);
REPLACE INTO `const_db` VALUES('SC_ANGELUS','29',0);
REPLACE INTO `const_db` VALUES('SC_BLESSING','30',0);
REPLACE INTO `const_db` VALUES('SC_CRUCIS','31',0);
REPLACE INTO `const_db` VALUES('SC_INC_AGI','32',0);
REPLACE INTO `const_db` VALUES('SC_DEC_AGI','33',0);
REPLACE INTO `const_db` VALUES('SC_SLOWPOISON','34',0);
REPLACE INTO `const_db` VALUES('SC_IMPOSITIO','35',0);
REPLACE INTO `const_db` VALUES('SC_SUFFRAGIUM','36',0);
REPLACE INTO `const_db` VALUES('SC_ASPERSIO','37',0);
REPLACE INTO `const_db` VALUES('SC_BENEDICTIO','38',0);
REPLACE INTO `const_db` VALUES('SC_KYRIE','39',0);
REPLACE INTO `const_db` VALUES('SC_MAGNIFICAT','40',0);
REPLACE INTO `const_db` VALUES('SC_GLORIA','41',0);
REPLACE INTO `const_db` VALUES('SC_LEXAETERNA','42',0);
REPLACE INTO `const_db` VALUES('SC_ADRENALINE','43',0);
REPLACE INTO `const_db` VALUES('SC_WEAPONPERFECT','44',0);
REPLACE INTO `const_db` VALUES('SC_OVERTHRUST','45',0);
REPLACE INTO `const_db` VALUES('SC_MAXIMIZEPOWER','46',0);
REPLACE INTO `const_db` VALUES('SC_TRICKDEAD','47',0);
REPLACE INTO `const_db` VALUES('SC_SHOUT','48',0);
REPLACE INTO `const_db` VALUES('SC_ENERGYCOAT','49',0);
REPLACE INTO `const_db` VALUES('SC_BROKENARMOR','50',0);
REPLACE INTO `const_db` VALUES('SC_BROKENWEAPON','51',0);
REPLACE INTO `const_db` VALUES('SC_ILLUSION','52',0);
REPLACE INTO `const_db` VALUES('SC_WEIGHTOVER50','53',0);
REPLACE INTO `const_db` VALUES('SC_WEIGHTOVER90','54',0);
REPLACE INTO `const_db` VALUES('SC_ATTHASTE_POTION1','55',0);
REPLACE INTO `const_db` VALUES('SC_ATTHASTE_POTION2','56',0);
REPLACE INTO `const_db` VALUES('SC_ATTHASTE_POTION3','57',0);
REPLACE INTO `const_db` VALUES('SC_ATTHASTE_INFINITY','58',0);
REPLACE INTO `const_db` VALUES('SC_MOVHASTE_HORSE','59',0);
REPLACE INTO `const_db` VALUES('SC_MOVHASTE_INFINITY','60',0);
REPLACE INTO `const_db` VALUES('SC_PLUSATTACKPOWER','61',0);
REPLACE INTO `const_db` VALUES('SC_PLUSMAGICPOWER','62',0);
REPLACE INTO `const_db` VALUES('SC_WEDDING','63',0);
REPLACE INTO `const_db` VALUES('SC_SLOWDOWN','64',0);
REPLACE INTO `const_db` VALUES('SC_ANKLESNARE','65',0);
REPLACE INTO `const_db` VALUES('SC_KEEPING','66',0);
REPLACE INTO `const_db` VALUES('SC_BARRIER','67',0);
REPLACE INTO `const_db` VALUES('SC_NOEQUIPWEAPON','68',0);
REPLACE INTO `const_db` VALUES('SC_NOEQUIPSHIELD','69',0);
REPLACE INTO `const_db` VALUES('SC_NOEQUIPARMOR','70',0);
REPLACE INTO `const_db` VALUES('SC_NOEQUIPHELM','71',0);
REPLACE INTO `const_db` VALUES('SC_PROTECTWEAPON','72',0);
REPLACE INTO `const_db` VALUES('SC_PROTECTSHIELD','73',0);
REPLACE INTO `const_db` VALUES('SC_PROTECTARMOR','74',0);
REPLACE INTO `const_db` VALUES('SC_PROTECTHELM','75',0);
REPLACE INTO `const_db` VALUES('SC_AUTOGUARD','76',0);
REPLACE INTO `const_db` VALUES('SC_REFLECTSHIELD','77',0);
REPLACE INTO `const_db` VALUES('SC_SPLASHER','78',0);
REPLACE INTO `const_db` VALUES('SC_PROVIDENCE','79',0);
REPLACE INTO `const_db` VALUES('SC_DEFENDER','80',0);
REPLACE INTO `const_db` VALUES('SC_MAGICROD','81',0);
REPLACE INTO `const_db` VALUES('SC_SPELLBREAKER','82',0);
REPLACE INTO `const_db` VALUES('SC_AUTOSPELL','83',0);
REPLACE INTO `const_db` VALUES('SC_SIGHTTRASHER','84',0);
REPLACE INTO `const_db` VALUES('SC_AUTOBERSERK','85',0);
REPLACE INTO `const_db` VALUES('SC_SPEARQUICKEN','86',0);
REPLACE INTO `const_db` VALUES('SC_AUTOCOUNTER','87',0);
REPLACE INTO `const_db` VALUES('SC_SIGHT','88',0);
REPLACE INTO `const_db` VALUES('SC_SAFETYWALL','89',0);
REPLACE INTO `const_db` VALUES('SC_RUWACH','90',0);
REPLACE INTO `const_db` VALUES('SC_EXTREMITYFIST','91',0);
REPLACE INTO `const_db` VALUES('SC_EXPLOSIONSPIRITS','92',0);
REPLACE INTO `const_db` VALUES('SC_COMBOATTACK','93',0);
REPLACE INTO `const_db` VALUES('SC_BLADESTOP_WAIT','94',0);
REPLACE INTO `const_db` VALUES('SC_BLADESTOP','95',0);
REPLACE INTO `const_db` VALUES('SC_PROPERTYFIRE','96',0);
REPLACE INTO `const_db` VALUES('SC_PROPERTYWATER','97',0);
REPLACE INTO `const_db` VALUES('SC_PROPERTYWIND','98',0);
REPLACE INTO `const_db` VALUES('SC_PROPERTYGROUND','99',0);
REPLACE INTO `const_db` VALUES('SC_VOLCANO','100',0);
REPLACE INTO `const_db` VALUES('SC_DELUGE','101',0);
REPLACE INTO `const_db` VALUES('SC_VIOLENTGALE','102',0);
REPLACE INTO `const_db` VALUES('SC_SUB_WEAPONPROPERTY','103',0);
REPLACE INTO `const_db` VALUES('SC_ARMOR','104',0);
REPLACE INTO `const_db` VALUES('SC_ARMORPROPERTY','105',0);
REPLACE INTO `const_db` VALUES('SC_NOCHAT','106',0);
REPLACE INTO `const_db` VALUES('SC_BABY','107',0);
REPLACE INTO `const_db` VALUES('SC_AURABLADE','108',0);
REPLACE INTO `const_db` VALUES('SC_PARRYING','109',0);
REPLACE INTO `const_db` VALUES('SC_LKCONCENTRATION','110',0);
REPLACE INTO `const_db` VALUES('SC_TENSIONRELAX','111',0);
REPLACE INTO `const_db` VALUES('SC_BERSERK','112',0);
REPLACE INTO `const_db` VALUES('SC_FURY','113',0);
REPLACE INTO `const_db` VALUES('SC_GOSPEL','114',0);
REPLACE INTO `const_db` VALUES('SC_ASSUMPTIO','115',0);
REPLACE INTO `const_db` VALUES('SC_BASILICA','116',0);
REPLACE INTO `const_db` VALUES('SC_GUILDAURA','117',0);
REPLACE INTO `const_db` VALUES('SC_MAGICPOWER','118',0);
REPLACE INTO `const_db` VALUES('SC_EDP','119',0);
REPLACE INTO `const_db` VALUES('SC_TRUESIGHT','120',0);
REPLACE INTO `const_db` VALUES('SC_WINDWALK','121',0);
REPLACE INTO `const_db` VALUES('SC_MELTDOWN','122',0);
REPLACE INTO `const_db` VALUES('SC_CARTBOOST','123',0);
REPLACE INTO `const_db` VALUES('SC_CHASEWALK','124',0);
REPLACE INTO `const_db` VALUES('SC_SWORDREJECT','125',0);
REPLACE INTO `const_db` VALUES('SC_MARIONETTE_MASTER','126',0);
REPLACE INTO `const_db` VALUES('SC_MARIONETTE','127',0);
REPLACE INTO `const_db` VALUES('SC_PROPERTYUNDEAD','128',0);
REPLACE INTO `const_db` VALUES('SC_JOINTBEAT','129',0);
REPLACE INTO `const_db` VALUES('SC_MINDBREAKER','130',0);
REPLACE INTO `const_db` VALUES('SC_MEMORIZE','131',0);
REPLACE INTO `const_db` VALUES('SC_FOGWALL','132',0);
REPLACE INTO `const_db` VALUES('SC_SPIDERWEB','133',0);
REPLACE INTO `const_db` VALUES('SC_DEVOTION','134',0);
REPLACE INTO `const_db` VALUES('SC_SACRIFICE','135',0);
REPLACE INTO `const_db` VALUES('SC_STEELBODY','136',0);
REPLACE INTO `const_db` VALUES('SC_ORCISH','137',0);
REPLACE INTO `const_db` VALUES('SC_STORMKICK_READY','138',0);
REPLACE INTO `const_db` VALUES('SC_DOWNKICK_READY','139',0);
REPLACE INTO `const_db` VALUES('SC_TURNKICK_READY','140',0);
REPLACE INTO `const_db` VALUES('SC_COUNTERKICK_READY','141',0);
REPLACE INTO `const_db` VALUES('SC_DODGE_READY','142',0);
REPLACE INTO `const_db` VALUES('SC_RUN','143',0);
REPLACE INTO `const_db` VALUES('SC_PROPERTYDARK','144',0);
REPLACE INTO `const_db` VALUES('SC_ADRENALINE2','145',0);
REPLACE INTO `const_db` VALUES('SC_PROPERTYTELEKINESIS','146',0);
REPLACE INTO `const_db` VALUES('SC_KAIZEL','147',0);
REPLACE INTO `const_db` VALUES('SC_KAAHI','148',0);
REPLACE INTO `const_db` VALUES('SC_KAUPE','149',0);
REPLACE INTO `const_db` VALUES('SC_ONEHANDQUICKEN','150',0);
REPLACE INTO `const_db` VALUES('SC_PRESERVE','151',0);
REPLACE INTO `const_db` VALUES('SC_GDSKILL_BATTLEORDER','152',0);
REPLACE INTO `const_db` VALUES('SC_GDSKILL_REGENERATION','153',0);
REPLACE INTO `const_db` VALUES('SC_DOUBLECASTING','154',0);
REPLACE INTO `const_db` VALUES('SC_GRAVITATION','155',0);
REPLACE INTO `const_db` VALUES('SC_OVERTHRUSTMAX','156',0);
REPLACE INTO `const_db` VALUES('SC_LONGING','157',0);
REPLACE INTO `const_db` VALUES('SC_HERMODE','158',0);
REPLACE INTO `const_db` VALUES('SC_TAROTCARD','159',0);
REPLACE INTO `const_db` VALUES('SC_CR_SHRINK','160',0);
REPLACE INTO `const_db` VALUES('SC_WZ_SIGHTBLASTER','161',0);
REPLACE INTO `const_db` VALUES('SC_DC_WINKCHARM','162',0);
REPLACE INTO `const_db` VALUES('SC_RG_CCONFINE_M','163',0);
REPLACE INTO `const_db` VALUES('SC_RG_CCONFINE_S','164',0);
REPLACE INTO `const_db` VALUES('SC_DANCING','165',0);
REPLACE INTO `const_db` VALUES('SC_ARMOR_PROPERTY','166',0);
REPLACE INTO `const_db` VALUES('SC_RICHMANKIM','167',0);
REPLACE INTO `const_db` VALUES('SC_ETERNALCHAOS','168',0);
REPLACE INTO `const_db` VALUES('SC_DRUMBATTLE','169',0);
REPLACE INTO `const_db` VALUES('SC_NIBELUNGEN','170',0);
REPLACE INTO `const_db` VALUES('SC_ROKISWEIL','171',0);
REPLACE INTO `const_db` VALUES('SC_INTOABYSS','172',0);
REPLACE INTO `const_db` VALUES('SC_SIEGFRIED','173',0);
REPLACE INTO `const_db` VALUES('SC_WHISTLE','174',0);
REPLACE INTO `const_db` VALUES('SC_ASSNCROS','175',0);
REPLACE INTO `const_db` VALUES('SC_POEMBRAGI','176',0);
REPLACE INTO `const_db` VALUES('SC_APPLEIDUN','177',0);
REPLACE INTO `const_db` VALUES('SC_MODECHANGE','178',0);
REPLACE INTO `const_db` VALUES('SC_HUMMING','179',0);
REPLACE INTO `const_db` VALUES('SC_DONTFORGETME','180',0);
REPLACE INTO `const_db` VALUES('SC_FORTUNE','181',0);
REPLACE INTO `const_db` VALUES('SC_SERVICEFORYOU','182',0);
REPLACE INTO `const_db` VALUES('SC_STOP','183',0);
REPLACE INTO `const_db` VALUES('SC_STRUP','184',0);
REPLACE INTO `const_db` VALUES('SC_SOULLINK','185',0);
REPLACE INTO `const_db` VALUES('SC_COMA','186',0);
REPLACE INTO `const_db` VALUES('SC_CLAIRVOYANCE','187',0);
REPLACE INTO `const_db` VALUES('SC_INCALLSTATUS','188',0);
REPLACE INTO `const_db` VALUES('SC_CHASEWALK2','189',0);
REPLACE INTO `const_db` VALUES('SC_INCAGI','190',0);
REPLACE INTO `const_db` VALUES('SC_INCVIT','191',0);
REPLACE INTO `const_db` VALUES('SC_INCINT','192',0);
REPLACE INTO `const_db` VALUES('SC_INCDEX','193',0);
REPLACE INTO `const_db` VALUES('SC_INCLUK','194',0);
REPLACE INTO `const_db` VALUES('SC_INCHIT','195',0);
REPLACE INTO `const_db` VALUES('SC_INCHITRATE','196',0);
REPLACE INTO `const_db` VALUES('SC_INCFLEE','197',0);
REPLACE INTO `const_db` VALUES('SC_INCFLEERATE','198',0);
REPLACE INTO `const_db` VALUES('SC_INCMHPRATE','199',0);
REPLACE INTO `const_db` VALUES('SC_INCMSPRATE','200',0);
REPLACE INTO `const_db` VALUES('SC_INCATKRATE','201',0);
REPLACE INTO `const_db` VALUES('SC_INCMATKRATE','202',0);
REPLACE INTO `const_db` VALUES('SC_INCDEFRATE','203',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_STR','204',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_AGI','205',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_VIT','206',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_INT','207',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_DEX','208',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_LUK','209',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_BASICHIT','210',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_BASICAVOIDANCE','211',0);
REPLACE INTO `const_db` VALUES('SC_BATKFOOD','212',0);
REPLACE INTO `const_db` VALUES('SC_WATKFOOD','213',0);
REPLACE INTO `const_db` VALUES('SC_MATKFOOD','214',0);
REPLACE INTO `const_db` VALUES('SC_SCRESIST','215',0);
REPLACE INTO `const_db` VALUES('SC_XMAS','216',0);
REPLACE INTO `const_db` VALUES('SC_WARM','217',0);
REPLACE INTO `const_db` VALUES('SC_SUN_COMFORT','218',0);
REPLACE INTO `const_db` VALUES('SC_MOON_COMFORT','219',0);
REPLACE INTO `const_db` VALUES('SC_STAR_COMFORT','220',0);
REPLACE INTO `const_db` VALUES('SC_FUSION','221',0);
REPLACE INTO `const_db` VALUES('SC_SKILLRATE_UP','222',0);
REPLACE INTO `const_db` VALUES('SC_SKE','223',0);
REPLACE INTO `const_db` VALUES('SC_KAITE','224',0);
REPLACE INTO `const_db` VALUES('SC_SWOO','225',0);
REPLACE INTO `const_db` VALUES('SC_SKA','226',0);
REPLACE INTO `const_db` VALUES('SC_EARTHSCROLL','227',0);
REPLACE INTO `const_db` VALUES('SC_MIRACLE','228',0);
REPLACE INTO `const_db` VALUES('SC_GS_MADNESSCANCEL','229',0);
REPLACE INTO `const_db` VALUES('SC_GS_ADJUSTMENT','230',0);
REPLACE INTO `const_db` VALUES('SC_GS_ACCURACY','231',0);
REPLACE INTO `const_db` VALUES('SC_GS_GATLINGFEVER','232',0);
REPLACE INTO `const_db` VALUES('SC_NJ_TATAMIGAESHI','233',0);
REPLACE INTO `const_db` VALUES('SC_NJ_UTSUSEMI','234',0);
REPLACE INTO `const_db` VALUES('SC_NJ_BUNSINJYUTSU','235',0);
REPLACE INTO `const_db` VALUES('SC_NJ_KAENSIN','236',0);
REPLACE INTO `const_db` VALUES('SC_NJ_SUITON','237',0);
REPLACE INTO `const_db` VALUES('SC_NJ_NEN','238',0);
REPLACE INTO `const_db` VALUES('SC_KNOWLEDGE','239',0);
REPLACE INTO `const_db` VALUES('SC_SMA_READY','240',0);
REPLACE INTO `const_db` VALUES('SC_FLING','241',0);
REPLACE INTO `const_db` VALUES('SC_HLIF_AVOID','242',0);
REPLACE INTO `const_db` VALUES('SC_HLIF_CHANGE','243',0);
REPLACE INTO `const_db` VALUES('SC_HAMI_BLOODLUST','244',0);
REPLACE INTO `const_db` VALUES('SC_HLIF_FLEET','245',0);
REPLACE INTO `const_db` VALUES('SC_HLIF_SPEED','246',0);
REPLACE INTO `const_db` VALUES('SC_HAMI_DEFENCE','247',0);
REPLACE INTO `const_db` VALUES('SC_INCASPDRATE','248',0);
REPLACE INTO `const_db` VALUES('SC_PLUSAVOIDVALUE','249',0);
REPLACE INTO `const_db` VALUES('SC_JAILED','250',0);
REPLACE INTO `const_db` VALUES('SC_ENCHANTARMS','251',0);
REPLACE INTO `const_db` VALUES('SC_MAGICALATTACK','252',0);
REPLACE INTO `const_db` VALUES('SC_STONESKIN','253',0);
REPLACE INTO `const_db` VALUES('SC_CRITICALWOUND','254',0);
REPLACE INTO `const_db` VALUES('SC_MAGICMIRROR','255',0);
REPLACE INTO `const_db` VALUES('SC_SLOWCAST','256',0);
REPLACE INTO `const_db` VALUES('SC_SUMMER','257',0);
REPLACE INTO `const_db` VALUES('SC_CASH_PLUSEXP','258',0);
REPLACE INTO `const_db` VALUES('SC_CASH_RECEIVEITEM','259',0);
REPLACE INTO `const_db` VALUES('SC_CASH_BOSS_ALARM','260',0);
REPLACE INTO `const_db` VALUES('SC_CASH_DEATHPENALTY','261',0);
REPLACE INTO `const_db` VALUES('SC_CRITICALPERCENT','262',0);
REPLACE INTO `const_db` VALUES('SC_PROTECT_MDEF','266',0);
REPLACE INTO `const_db` VALUES('SC_HEALPLUS','268',0);
REPLACE INTO `const_db` VALUES('SC_PNEUMA','269',0);
REPLACE INTO `const_db` VALUES('SC_AUTOTRADE','270',0);
REPLACE INTO `const_db` VALUES('SC_KSPROTECTED','271',0);
REPLACE INTO `const_db` VALUES('SC_ARMOR_RESIST','272',0);
REPLACE INTO `const_db` VALUES('SC_ATKER_BLOOD','273',0);
REPLACE INTO `const_db` VALUES('SC_TARGET_BLOOD','274',0);
REPLACE INTO `const_db` VALUES('SC_TK_SEVENWIND','275',0);
REPLACE INTO `const_db` VALUES('SC_PROTECT_DEF','276',0);
REPLACE INTO `const_db` VALUES('SC_WALKSPEED','278',0);
REPLACE INTO `const_db` VALUES('SC_MER_FLEE','279',0);
REPLACE INTO `const_db` VALUES('SC_MER_ATK','280',0);
REPLACE INTO `const_db` VALUES('SC_MER_HP','281',0);
REPLACE INTO `const_db` VALUES('SC_MER_SP','282',0);
REPLACE INTO `const_db` VALUES('SC_MER_HIT','283',0);
REPLACE INTO `const_db` VALUES('SC_MER_QUICKEN','284',0);
REPLACE INTO `const_db` VALUES('SC_REBIRTH','285',0);
REPLACE INTO `const_db` VALUES('SC_ITEMSCRIPT','290',0);
REPLACE INTO `const_db` VALUES('SC_S_LIFEPOTION','291',0);
REPLACE INTO `const_db` VALUES('SC_L_LIFEPOTION','292',0);
REPLACE INTO `const_db` VALUES('SC_CASH_PLUSONLYJOBEXP','293',0);
REPLACE INTO `const_db` VALUES('SC_HELLPOWER','295',0);
REPLACE INTO `const_db` VALUES('SC_INVINCIBLE','296',0);
REPLACE INTO `const_db` VALUES('SC_INVINCIBLEOFF','297',0);
REPLACE INTO `const_db` VALUES('SC_MANU_ATK','298',0);
REPLACE INTO `const_db` VALUES('SC_MANU_DEF','299',0);
REPLACE INTO `const_db` VALUES('SC_SPL_ATK','300',0);
REPLACE INTO `const_db` VALUES('SC_SPL_DEF','301',0);
REPLACE INTO `const_db` VALUES('SC_MANU_MATK','302',0);
REPLACE INTO `const_db` VALUES('SC_SPL_MATK','303',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_STR_CASH','304',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_AGI_CASH','305',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_VIT_CASH','306',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_DEX_CASH','307',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_INT_CASH','308',0);
REPLACE INTO `const_db` VALUES('SC_FOOD_LUK_CASH','309',0);
REPLACE INTO `const_db` VALUES('SC_FROSTMISTY','311',0);
REPLACE INTO `const_db` VALUES('SC_ENCHANTBLADE','312',0);
REPLACE INTO `const_db` VALUES('SC_DEATHBOUND','313',0);
REPLACE INTO `const_db` VALUES('SC_MILLENNIUMSHIELD','314',0);
REPLACE INTO `const_db` VALUES('SC_CRUSHSTRIKE','315',0);
REPLACE INTO `const_db` VALUES('SC_REFRESH','316',0);
REPLACE INTO `const_db` VALUES('SC_REUSE_REFRESH','317',0);
REPLACE INTO `const_db` VALUES('SC_GIANTGROWTH','318',0);
REPLACE INTO `const_db` VALUES('SC_STONEHARDSKIN','319',0);
REPLACE INTO `const_db` VALUES('SC_VITALITYACTIVATION','320',0);
REPLACE INTO `const_db` VALUES('SC_STORMBLAST','321',0);
REPLACE INTO `const_db` VALUES('SC_FIGHTINGSPIRIT','322',0);
REPLACE INTO `const_db` VALUES('SC_ABUNDANCE','323',0);
REPLACE INTO `const_db` VALUES('SC_ADORAMUS','324',0);
REPLACE INTO `const_db` VALUES('SC_EPICLESIS','325',0);
REPLACE INTO `const_db` VALUES('SC_ORATIO','326',0);
REPLACE INTO `const_db` VALUES('SC_LAUDAAGNUS','327',0);
REPLACE INTO `const_db` VALUES('SC_LAUDARAMUS','328',0);
REPLACE INTO `const_db` VALUES('SC_RENOVATIO','329',0);
REPLACE INTO `const_db` VALUES('SC_EXPIATIO','330',0);
REPLACE INTO `const_db` VALUES('SC_DUPLELIGHT','331',0);
REPLACE INTO `const_db` VALUES('SC_SECRAMENT','332',0);
REPLACE INTO `const_db` VALUES('SC_WHITEIMPRISON','333',0);
REPLACE INTO `const_db` VALUES('SC_MARSHOFABYSS','334',0);
REPLACE INTO `const_db` VALUES('SC_RECOGNIZEDSPELL','335',0);
REPLACE INTO `const_db` VALUES('SC_STASIS','336',0);
REPLACE INTO `const_db` VALUES('SC_SUMMON1','337',0);
REPLACE INTO `const_db` VALUES('SC_SUMMON2','338',0);
REPLACE INTO `const_db` VALUES('SC_SUMMON3','339',0);
REPLACE INTO `const_db` VALUES('SC_SUMMON4','340',0);
REPLACE INTO `const_db` VALUES('SC_SUMMON5','341',0);
REPLACE INTO `const_db` VALUES('SC_READING_SB','342',0);
REPLACE INTO `const_db` VALUES('SC_FREEZINGSP','343',0);
REPLACE INTO `const_db` VALUES('SC_FEARBREEZE','344',0);
REPLACE INTO `const_db` VALUES('SC_ELECTRICSHOCKER','345',0);
REPLACE INTO `const_db` VALUES('SC_WUGDASH','346',0);
REPLACE INTO `const_db` VALUES('SC_WUGBITE','347',0);
REPLACE INTO `const_db` VALUES('SC_CAMOUFLAGE','348',0);
REPLACE INTO `const_db` VALUES('SC_ACCELERATION','349',0);
REPLACE INTO `const_db` VALUES('SC_HOVERING','350',0);
REPLACE INTO `const_db` VALUES('SC_SHAPESHIFT','351',0);
REPLACE INTO `const_db` VALUES('SC_INFRAREDSCAN','352',0);
REPLACE INTO `const_db` VALUES('SC_ANALYZE','353',0);
REPLACE INTO `const_db` VALUES('SC_MAGNETICFIELD','354',0);
REPLACE INTO `const_db` VALUES('SC_NEUTRALBARRIER','355',0);
REPLACE INTO `const_db` VALUES('SC_NEUTRALBARRIER_MASTER','356',0);
REPLACE INTO `const_db` VALUES('SC_STEALTHFIELD','357',0);
REPLACE INTO `const_db` VALUES('SC_STEALTHFIELD_MASTER','358',0);
REPLACE INTO `const_db` VALUES('SC_OVERHEAT','359',0);
REPLACE INTO `const_db` VALUES('SC_OVERHEAT_LIMITPOINT','360',0);
REPLACE INTO `const_db` VALUES('SC_VENOMIMPRESS','361',0);
REPLACE INTO `const_db` VALUES('SC_POISONINGWEAPON','362',0);
REPLACE INTO `const_db` VALUES('SC_WEAPONBLOCKING','363',0);
REPLACE INTO `const_db` VALUES('SC_CLOAKINGEXCEED','364',0);
REPLACE INTO `const_db` VALUES('SC_HALLUCINATIONWALK','365',0);
REPLACE INTO `const_db` VALUES('SC_HALLUCINATIONWALK_POSTDELAY','366',0);
REPLACE INTO `const_db` VALUES('SC_ROLLINGCUTTER','367',0);
REPLACE INTO `const_db` VALUES('SC_TOXIN','368',0);
REPLACE INTO `const_db` VALUES('SC_PARALYSE','369',0);
REPLACE INTO `const_db` VALUES('SC_VENOMBLEED','370',0);
REPLACE INTO `const_db` VALUES('SC_MAGICMUSHROOM','371',0);
REPLACE INTO `const_db` VALUES('SC_DEATHHURT','372',0);
REPLACE INTO `const_db` VALUES('SC_PYREXIA','373',0);
REPLACE INTO `const_db` VALUES('SC_OBLIVIONCURSE','374',0);
REPLACE INTO `const_db` VALUES('SC_LEECHESEND','375',0);
REPLACE INTO `const_db` VALUES('SC_LG_REFLECTDAMAGE','376',0);
REPLACE INTO `const_db` VALUES('SC_FORCEOFVANGUARD','377',0);
REPLACE INTO `const_db` VALUES('SC_SHIELDSPELL_DEF','378',0);
REPLACE INTO `const_db` VALUES('SC_SHIELDSPELL_MDEF','379',0);
REPLACE INTO `const_db` VALUES('SC_SHIELDSPELL_REF','380',0);
REPLACE INTO `const_db` VALUES('SC_EXEEDBREAK','381',0);
REPLACE INTO `const_db` VALUES('SC_PRESTIGE','382',0);
REPLACE INTO `const_db` VALUES('SC_BANDING','383',0);
REPLACE INTO `const_db` VALUES('SC_BANDING_DEFENCE','384',0);
REPLACE INTO `const_db` VALUES('SC_EARTHDRIVE','385',0);
REPLACE INTO `const_db` VALUES('SC_INSPIRATION','386',0);
REPLACE INTO `const_db` VALUES('SC_SPELLFIST','387',0);
REPLACE INTO `const_db` VALUES('SC_STRIKING','389',0);
REPLACE INTO `const_db` VALUES('SC_WARMER','390',0);
REPLACE INTO `const_db` VALUES('SC_VACUUM_EXTREME','391',0);
REPLACE INTO `const_db` VALUES('SC_PROPERTYWALK','392',0);
REPLACE INTO `const_db` VALUES('SC_SWING','393',0);
REPLACE INTO `const_db` VALUES('SC_SYMPHONY_LOVE','394',0);
REPLACE INTO `const_db` VALUES('SC_MOONLIT_SERENADE','395',0);
REPLACE INTO `const_db` VALUES('SC_RUSH_WINDMILL','396',0);
REPLACE INTO `const_db` VALUES('SC_ECHOSONG','397',0);
REPLACE INTO `const_db` VALUES('SC_HARMONIZE','398',0);
REPLACE INTO `const_db` VALUES('SC_SIREN','399',0);
REPLACE INTO `const_db` VALUES('SC_SIRCLEOFNATURE','401',0);
REPLACE INTO `const_db` VALUES('SC_GLOOMYDAY','402',0);
REPLACE INTO `const_db` VALUES('SC_GLOOMYDAY_SK','403',0);
REPLACE INTO `const_db` VALUES('SC_SONG_OF_MANA','404',0);
REPLACE INTO `const_db` VALUES('SC_DANCE_WITH_WUG','405',0);
REPLACE INTO `const_db` VALUES('SC_SATURDAY_NIGHT_FEVER','406',0);
REPLACE INTO `const_db` VALUES('SC_LERADS_DEW','407',0);
REPLACE INTO `const_db` VALUES('SC_MELODYOFSINK','408',0);
REPLACE INTO `const_db` VALUES('SC_BEYOND_OF_WARCRY','409',0);
REPLACE INTO `const_db` VALUES('SC_UNLIMITED_HUMMING_VOICE','410',0);
REPLACE INTO `const_db` VALUES('SC_SITDOWN_FORCE','411',0);
REPLACE INTO `const_db` VALUES('SC_NETHERWORLD','412',0);
REPLACE INTO `const_db` VALUES('SC_CRESCENTELBOW','413',0);
REPLACE INTO `const_db` VALUES('SC_CURSEDCIRCLE_ATKER','414',0);
REPLACE INTO `const_db` VALUES('SC_CURSEDCIRCLE_TARGET','415',0);
REPLACE INTO `const_db` VALUES('SC_LIGHTNINGWALK','416',0);
REPLACE INTO `const_db` VALUES('SC_RAISINGDRAGON','417',0);
REPLACE INTO `const_db` VALUES('SC_GENTLETOUCH_ENERGYGAIN','418',0);
REPLACE INTO `const_db` VALUES('SC_GENTLETOUCH_CHANGE','419',0);
REPLACE INTO `const_db` VALUES('SC_GENTLETOUCH_REVITALIZE','420',0);
REPLACE INTO `const_db` VALUES('SC_GN_CARTBOOST','421',0);
REPLACE INTO `const_db` VALUES('SC_THORNS_TRAP','422',0);
REPLACE INTO `const_db` VALUES('SC_BLOOD_SUCKER','423',0);
REPLACE INTO `const_db` VALUES('SC_FIRE_EXPANSION_SMOKE_POWDER','424',0);
REPLACE INTO `const_db` VALUES('SC_FIRE_EXPANSION_TEAR_GAS','425',0);
REPLACE INTO `const_db` VALUES('SC_MANDRAGORA','426',0);
REPLACE INTO `const_db` VALUES('SC_STOMACHACHE','427',0);
REPLACE INTO `const_db` VALUES('SC_MYSTERIOUS_POWDER','428',0);
REPLACE INTO `const_db` VALUES('SC_MELON_BOMB','429',0);
REPLACE INTO `const_db` VALUES('SC_BANANA_BOMB','430',0);
REPLACE INTO `const_db` VALUES('SC_BANANA_BOMB_SITDOWN_POSTDELAY','431',0);
REPLACE INTO `const_db` VALUES('SC_SAVAGE_STEAK','432',0);
REPLACE INTO `const_db` VALUES('SC_COCKTAIL_WARG_BLOOD','433',0);
REPLACE INTO `const_db` VALUES('SC_MINOR_BBQ','434',0);
REPLACE INTO `const_db` VALUES('SC_SIROMA_ICE_TEA','435',0);
REPLACE INTO `const_db` VALUES('SC_DROCERA_HERB_STEAMED','436',0);
REPLACE INTO `const_db` VALUES('SC_PUTTI_TAILS_NOODLES','437',0);
REPLACE INTO `const_db` VALUES('SC_BOOST500','438',0);
REPLACE INTO `const_db` VALUES('SC_FULL_SWING_K','439',0);
REPLACE INTO `const_db` VALUES('SC_MANA_PLUS','440',0);
REPLACE INTO `const_db` VALUES('SC_MUSTLE_M','441',0);
REPLACE INTO `const_db` VALUES('SC_LIFE_FORCE_F','442',0);
REPLACE INTO `const_db` VALUES('SC_EXTRACT_WHITE_POTION_Z','443',0);
REPLACE INTO `const_db` VALUES('SC_VITATA_500','444',0);
REPLACE INTO `const_db` VALUES('SC_EXTRACT_SALAMINE_JUICE','445',0);
REPLACE INTO `const_db` VALUES('SC__REPRODUCE','446',0);
REPLACE INTO `const_db` VALUES('SC__AUTOSHADOWSPELL','447',0);
REPLACE INTO `const_db` VALUES('SC__SHADOWFORM','448',0);
REPLACE INTO `const_db` VALUES('SC__BODYPAINT','449',0);
REPLACE INTO `const_db` VALUES('SC__INVISIBILITY','450',0);
REPLACE INTO `const_db` VALUES('SC__DEADLYINFECT','451',0);
REPLACE INTO `const_db` VALUES('SC__ENERVATION','452',0);
REPLACE INTO `const_db` VALUES('SC__GROOMY','453',0);
REPLACE INTO `const_db` VALUES('SC__IGNORANCE','454',0);
REPLACE INTO `const_db` VALUES('SC__LAZINESS','455',0);
REPLACE INTO `const_db` VALUES('SC__UNLUCKY','456',0);
REPLACE INTO `const_db` VALUES('SC__WEAKNESS','457',0);
REPLACE INTO `const_db` VALUES('SC__STRIPACCESSARY','458',0);
REPLACE INTO `const_db` VALUES('SC__MANHOLE','459',0);
REPLACE INTO `const_db` VALUES('SC__BLOODYLUST','460',0);
REPLACE INTO `const_db` VALUES('SC_CIRCLE_OF_FIRE','461',0);
REPLACE INTO `const_db` VALUES('SC_CIRCLE_OF_FIRE_OPTION','462',0);
REPLACE INTO `const_db` VALUES('SC_FIRE_CLOAK','463',0);
REPLACE INTO `const_db` VALUES('SC_FIRE_CLOAK_OPTION','464',0);
REPLACE INTO `const_db` VALUES('SC_WATER_SCREEN','465',0);
REPLACE INTO `const_db` VALUES('SC_WATER_SCREEN_OPTION','466',0);
REPLACE INTO `const_db` VALUES('SC_WATER_DROP','467',0);
REPLACE INTO `const_db` VALUES('SC_WATER_DROP_OPTION','468',0);
REPLACE INTO `const_db` VALUES('SC_WATER_BARRIER','469',0);
REPLACE INTO `const_db` VALUES('SC_WIND_STEP','470',0);
REPLACE INTO `const_db` VALUES('SC_WIND_STEP_OPTION','471',0);
REPLACE INTO `const_db` VALUES('SC_WIND_CURTAIN','472',0);
REPLACE INTO `const_db` VALUES('SC_WIND_CURTAIN_OPTION','473',0);
REPLACE INTO `const_db` VALUES('SC_ZEPHYR','474',0);
REPLACE INTO `const_db` VALUES('SC_SOLID_SKIN','475',0);
REPLACE INTO `const_db` VALUES('SC_SOLID_SKIN_OPTION','476',0);
REPLACE INTO `const_db` VALUES('SC_STONE_SHIELD','477',0);
REPLACE INTO `const_db` VALUES('SC_STONE_SHIELD_OPTION','478',0);
REPLACE INTO `const_db` VALUES('SC_POWER_OF_GAIA','479',0);
REPLACE INTO `const_db` VALUES('SC_PYROTECHNIC','480',0);
REPLACE INTO `const_db` VALUES('SC_PYROTECHNIC_OPTION','481',0);
REPLACE INTO `const_db` VALUES('SC_HEATER','482',0);
REPLACE INTO `const_db` VALUES('SC_HEATER_OPTION','483',0);
REPLACE INTO `const_db` VALUES('SC_TROPIC','484',0);
REPLACE INTO `const_db` VALUES('SC_TROPIC_OPTION','485',0);
REPLACE INTO `const_db` VALUES('SC_AQUAPLAY','486',0);
REPLACE INTO `const_db` VALUES('SC_AQUAPLAY_OPTION','487',0);
REPLACE INTO `const_db` VALUES('SC_COOLER','488',0);
REPLACE INTO `const_db` VALUES('SC_COOLER_OPTION','489',0);
REPLACE INTO `const_db` VALUES('SC_CHILLY_AIR','490',0);
REPLACE INTO `const_db` VALUES('SC_CHILLY_AIR_OPTION','491',0);
REPLACE INTO `const_db` VALUES('SC_GUST','492',0);
REPLACE INTO `const_db` VALUES('SC_GUST_OPTION','493',0);
REPLACE INTO `const_db` VALUES('SC_BLAST','494',0);
REPLACE INTO `const_db` VALUES('SC_BLAST_OPTION','495',0);
REPLACE INTO `const_db` VALUES('SC_WILD_STORM','496',0);
REPLACE INTO `const_db` VALUES('SC_WILD_STORM_OPTION','497',0);
REPLACE INTO `const_db` VALUES('SC_PETROLOGY','498',0);
REPLACE INTO `const_db` VALUES('SC_PETROLOGY_OPTION','499',0);
REPLACE INTO `const_db` VALUES('SC_CURSED_SOIL','500',0);
REPLACE INTO `const_db` VALUES('SC_CURSED_SOIL_OPTION','501',0);
REPLACE INTO `const_db` VALUES('SC_UPHEAVAL','502',0);
REPLACE INTO `const_db` VALUES('SC_UPHEAVAL_OPTION','503',0);
REPLACE INTO `const_db` VALUES('SC_TIDAL_WEAPON','504',0);
REPLACE INTO `const_db` VALUES('SC_TIDAL_WEAPON_OPTION','505',0);
REPLACE INTO `const_db` VALUES('SC_ROCK_CRUSHER','506',0);
REPLACE INTO `const_db` VALUES('SC_ROCK_CRUSHER_ATK','507',0);
REPLACE INTO `const_db` VALUES('SC_LEADERSHIP','508',0);
REPLACE INTO `const_db` VALUES('SC_GLORYWOUNDS','509',0);
REPLACE INTO `const_db` VALUES('SC_SOULCOLD','510',0);
REPLACE INTO `const_db` VALUES('SC_HAWKEYES','511',0);
REPLACE INTO `const_db` VALUES('SC_ODINS_POWER','512',0);
REPLACE INTO `const_db` VALUES('SC_FIRE_INSIGNIA','513',0);
REPLACE INTO `const_db` VALUES('SC_WATER_INSIGNIA','514',0);
REPLACE INTO `const_db` VALUES('SC_WIND_INSIGNIA','515',0);
REPLACE INTO `const_db` VALUES('SC_EARTH_INSIGNIA','516',0);
REPLACE INTO `const_db` VALUES('SC_PUSH_CART','517',0);
REPLACE INTO `const_db` VALUES('SC_SPELLBOOK1','518',0);
REPLACE INTO `const_db` VALUES('SC_SPELLBOOK2','519',0);
REPLACE INTO `const_db` VALUES('SC_SPELLBOOK3','520',0);
REPLACE INTO `const_db` VALUES('SC_SPELLBOOK4','521',0);
REPLACE INTO `const_db` VALUES('SC_SPELLBOOK5','522',0);
REPLACE INTO `const_db` VALUES('SC_SPELLBOOK6','523',0);
REPLACE INTO `const_db` VALUES('SC_SPELLBOOK7','524',0);
REPLACE INTO `const_db` VALUES('SC_INCMHP','525',0);
REPLACE INTO `const_db` VALUES('SC_INCMSP','526',0);
REPLACE INTO `const_db` VALUES('SC_PARTYFLEE','527',0);
REPLACE INTO `const_db` VALUES('SC_MEIKYOUSISUI','528',0);
REPLACE INTO `const_db` VALUES('SC_KO_JYUMONJIKIRI','529',0);
REPLACE INTO `const_db` VALUES('SC_KYOUGAKU','530',0);
REPLACE INTO `const_db` VALUES('SC_IZAYOI','531',0);
REPLACE INTO `const_db` VALUES('SC_ZENKAI','532',0);
REPLACE INTO `const_db` VALUES('SC_KG_KAGEHUMI','533',0);
REPLACE INTO `const_db` VALUES('SC_KYOMU','534',0);
REPLACE INTO `const_db` VALUES('SC_KAGEMUSYA','535',0);
REPLACE INTO `const_db` VALUES('SC_ZANGETSU','536',0);
REPLACE INTO `const_db` VALUES('SC_GENSOU','537',0);
REPLACE INTO `const_db` VALUES('SC_AKAITSUKI','538',0);
REPLACE INTO `const_db` VALUES('SC_STYLE_CHANGE','539',0);
REPLACE INTO `const_db` VALUES('SC_GOLDENE_FERSE','540',0);
REPLACE INTO `const_db` VALUES('SC_ANGRIFFS_MODUS','541',0);
REPLACE INTO `const_db` VALUES('SC_ERASER_CUTTER','542',0);
REPLACE INTO `const_db` VALUES('SC_OVERED_BOOST','543',0);
REPLACE INTO `const_db` VALUES('SC_LIGHT_OF_REGENE','544',0);
REPLACE INTO `const_db` VALUES('SC_VOLCANIC_ASH','545',0);
REPLACE INTO `const_db` VALUES('SC_GRANITIC_ARMOR','546',0);
REPLACE INTO `const_db` VALUES('SC_MAGMA_FLOW','547',0);
REPLACE INTO `const_db` VALUES('SC_PYROCLASTIC','548',0);
REPLACE INTO `const_db` VALUES('SC_NEEDLE_OF_PARALYZE','549',0);
REPLACE INTO `const_db` VALUES('SC_PAIN_KILLER','550',0);
REPLACE INTO `const_db` VALUES('SC_EXTREMITYFIST2','551',0);
REPLACE INTO `const_db` VALUES('SC_RAID','552',0);
REPLACE INTO `const_db` VALUES('SC_DARKCROW','553',0);
REPLACE INTO `const_db` VALUES('SC_FULL_THROTTLE','554',0);
REPLACE INTO `const_db` VALUES('SC_REBOUND','555',0);
REPLACE INTO `const_db` VALUES('SC_UNLIMIT','556',0);
REPLACE INTO `const_db` VALUES('SC_KINGS_GRACE','557',0);
REPLACE INTO `const_db` VALUES('SC_TELEKINESIS_INTENSE','558',0);
REPLACE INTO `const_db` VALUES('SC_OFFERTORIUM','559',0);
REPLACE INTO `const_db` VALUES('SC_FRIGG_SONG','560',0);
REPLACE INTO `const_db` VALUES('SC_ALL_RIDING','561',0);
REPLACE INTO `const_db` VALUES('SC_HANBOK','562',0);
REPLACE INTO `const_db` VALUES('SC_MONSTER_TRANSFORM','563',0);
REPLACE INTO `const_db` VALUES('SC_ANGEL_PROTECT','564',0);
REPLACE INTO `const_db` VALUES('SC_ILLUSIONDOPING','565',0);
REPLACE INTO `const_db` VALUES('SC_MTF_ASPD','566',0);
REPLACE INTO `const_db` VALUES('SC_MTF_RANGEATK','567',0);
REPLACE INTO `const_db` VALUES('SC_MTF_MATK','568',0);
REPLACE INTO `const_db` VALUES('SC_MTF_MLEATKED','569',0);
REPLACE INTO `const_db` VALUES('SC_MTF_CRIDAMAGE','570',0);
REPLACE INTO `const_db` VALUES('SC_MOONSTAR','571',0);
REPLACE INTO `const_db` VALUES('SC_SUPER_STAR','572',0);
REPLACE INTO `const_db` VALUES('SC_OKTOBERFEST','573',0);
REPLACE INTO `const_db` VALUES('SC_STRANGELIGHTS','574',0); 
REPLACE INTO `const_db` VALUES('SC_DECORATION_OF_MUSIC','575',0);
REPLACE INTO `const_db` VALUES('SC__MAELSTROM','576',0);
REPLACE INTO `const_db` VALUES('SC__CHAOS','577',0);
REPLACE INTO `const_db` VALUES('SC__FEINTBOMB_MASTER','578',0);
REPLACE INTO `const_db` VALUES('SC_FALLENEMPIRE','579',0);
REPLACE INTO `const_db` VALUES('SC_FLASHCOMBO','580',0);
REPLACE INTO `const_db` VALUES('SC_DEFSET','581',0);
REPLACE INTO `const_db` VALUES('SC_MDEFSET','582',0);
REPLACE INTO `const_db` VALUES('SC_NO_SWITCH_EQUIP','583',0);
REPLACE INTO `const_db` VALUES('SC_MTF_MHP','584',0);
REPLACE INTO `const_db` VALUES('SC_MTF_MSP','585',0);
REPLACE INTO `const_db` VALUES('SC_MTF_PUMPKIN','586',0);
REPLACE INTO `const_db` VALUES('SC_MTF_HITFLEE','587',0);
REPLACE INTO `const_db` VALUES('SC_STEAMPACK','800',0);
REPLACE INTO `const_db` VALUES('SC_ATKER_ASPD','801',0);
REPLACE INTO `const_db` VALUES('SC_ATKER_MOVESPEED','802',0);
REPLACE INTO `const_db` VALUES('SC_ACARAJE','803',0);
REPLACE INTO `const_db` VALUES('SC_MVPCARD_TAOGUNKA','804',0);
REPLACE INTO `const_db` VALUES('SC_MVPCARD_MISTRESS','805',0);
REPLACE INTO `const_db` VALUES('SC_MVPCARD_ORCHERO','806',0);
REPLACE INTO `const_db` VALUES('SC_MVPCARD_ORCLORD','807',0);
REPLACE INTO `const_db` VALUES('SC_TARGET_ASPD','808',0);
REPLACE INTO `const_db` VALUES('SC_BUCHEDENOEL','809',0);
REPLACE INTO `const_db` VALUES('SC_POPECOOKIE','810',0);
REPLACE INTO `const_db` VALUES('SC_MAGIC_CANDY','811',0);
REPLACE INTO `const_db` VALUES('SC_MORA_BUFF','812',0);
REPLACE INTO `const_db` VALUES('SC_VITALIZE_POTION','813',0);
REPLACE INTO `const_db` VALUES('SC_G_LIFEPOTION','814',0);
REPLACE INTO `const_db` VALUES('SC_2011RWC','815',0);
REPLACE INTO `const_db` VALUES('SC_SKELSCROLL','816',0);
REPLACE INTO `const_db` VALUES('SC_DISTRUCTIONSCROLL','817',0);
REPLACE INTO `const_db` VALUES('SC_ROYALSCROLL','818',0);
REPLACE INTO `const_db` VALUES('SC_IMMUNITYSCROLL','819',0);
REPLACE INTO `const_db` VALUES('SC_MYSTICSCROLL','820',0);
REPLACE INTO `const_db` VALUES('SC_BATTLESCROLL','821',0);
REPLACE INTO `const_db` VALUES('SC_ARMORSCROLL','822',0);
REPLACE INTO `const_db` VALUES('SC_FREYJASCROLL','823',0);
REPLACE INTO `const_db` VALUES('SC_SOULSCROLL','824',0);
REPLACE INTO `const_db` VALUES('SC_PC_IZ_DUN05','825',0);
REPLACE INTO `const_db` VALUES('SC_OVERLAPEXPUP','826',0);
REPLACE INTO `const_db` VALUES('SC_SKF_CAST','827',0);
REPLACE INTO `const_db` VALUES('SC_SKF_ASPD','828',0);
REPLACE INTO `const_db` VALUES('SC_SKF_ATK','829',0);
REPLACE INTO `const_db` VALUES('SC_SKF_MATK','830',0);
REPLACE INTO `const_db` VALUES('SC_GM_BATTLE','831',0);
REPLACE INTO `const_db` VALUES('SC_GM_BATTLE2','832',0);
REPLACE INTO `const_db` VALUES('e_gasp','0',0);
REPLACE INTO `const_db` VALUES('e_what','1',0);
REPLACE INTO `const_db` VALUES('e_ho','2',0);
REPLACE INTO `const_db` VALUES('e_lv','3',0);
REPLACE INTO `const_db` VALUES('e_swt','4',0);
REPLACE INTO `const_db` VALUES('e_ic','5',0);
REPLACE INTO `const_db` VALUES('e_an','6',0);
REPLACE INTO `const_db` VALUES('e_ag','7',0);
REPLACE INTO `const_db` VALUES('e_cash','8',0);
REPLACE INTO `const_db` VALUES('e_dots','9',0);
REPLACE INTO `const_db` VALUES('e_scissors','10',0);
REPLACE INTO `const_db` VALUES('e_rock','11',0);
REPLACE INTO `const_db` VALUES('e_paper','12',0);
REPLACE INTO `const_db` VALUES('e_korea','13',0);
REPLACE INTO `const_db` VALUES('e_lv2','14',0);
REPLACE INTO `const_db` VALUES('e_thx','15',0);
REPLACE INTO `const_db` VALUES('e_wah','16',0);
REPLACE INTO `const_db` VALUES('e_sry','17',0);
REPLACE INTO `const_db` VALUES('e_heh','18',0);
REPLACE INTO `const_db` VALUES('e_swt2','19',0);
REPLACE INTO `const_db` VALUES('e_hmm','20',0);
REPLACE INTO `const_db` VALUES('e_no1','21',0);
REPLACE INTO `const_db` VALUES('e_no','22',0);
REPLACE INTO `const_db` VALUES('e_omg','23',0);
REPLACE INTO `const_db` VALUES('e_oh','24',0);
REPLACE INTO `const_db` VALUES('e_X','25',0);
REPLACE INTO `const_db` VALUES('e_hlp','26',0);
REPLACE INTO `const_db` VALUES('e_go','27',0);
REPLACE INTO `const_db` VALUES('e_sob','28',0);
REPLACE INTO `const_db` VALUES('e_gg','29',0);
REPLACE INTO `const_db` VALUES('e_kis','30',0);
REPLACE INTO `const_db` VALUES('e_kis2','31',0);
REPLACE INTO `const_db` VALUES('e_pif','32',0);
REPLACE INTO `const_db` VALUES('e_ok','33',0);
REPLACE INTO `const_db` VALUES('e_mute','34',0);
REPLACE INTO `const_db` VALUES('e_indonesia','35',0);
REPLACE INTO `const_db` VALUES('e_bzz','36',0);
REPLACE INTO `const_db` VALUES('e_rice','37',0);
REPLACE INTO `const_db` VALUES('e_awsm','38',0);
REPLACE INTO `const_db` VALUES('e_meh','39',0);
REPLACE INTO `const_db` VALUES('e_shy','40',0);
REPLACE INTO `const_db` VALUES('e_pat','41',0);
REPLACE INTO `const_db` VALUES('e_mp','42',0);
REPLACE INTO `const_db` VALUES('e_slur','43',0);
REPLACE INTO `const_db` VALUES('e_com','44',0);
REPLACE INTO `const_db` VALUES('e_yawn','45',0);
REPLACE INTO `const_db` VALUES('e_grat','46',0);
REPLACE INTO `const_db` VALUES('e_hp','47',0);
REPLACE INTO `const_db` VALUES('e_philippines','48',0);
REPLACE INTO `const_db` VALUES('e_malaysia','49',0);
REPLACE INTO `const_db` VALUES('e_singapore','50',0);
REPLACE INTO `const_db` VALUES('e_brazil','51',0);
REPLACE INTO `const_db` VALUES('e_flash','52',0);
REPLACE INTO `const_db` VALUES('e_spin','53',0);
REPLACE INTO `const_db` VALUES('e_sigh','54',0);
REPLACE INTO `const_db` VALUES('e_dum','55',0);
REPLACE INTO `const_db` VALUES('e_loud','56',0);
REPLACE INTO `const_db` VALUES('e_otl','57',0);
REPLACE INTO `const_db` VALUES('e_dice1','58',0);
REPLACE INTO `const_db` VALUES('e_dice2','59',0);
REPLACE INTO `const_db` VALUES('e_dice3','60',0);
REPLACE INTO `const_db` VALUES('e_dice4','61',0);
REPLACE INTO `const_db` VALUES('e_dice5','62',0);
REPLACE INTO `const_db` VALUES('e_dice6','63',0);
REPLACE INTO `const_db` VALUES('e_india','64',0);
REPLACE INTO `const_db` VALUES('e_luv','65',0);
REPLACE INTO `const_db` VALUES('e_russia','66',0);
REPLACE INTO `const_db` VALUES('e_virgin','67',0);
REPLACE INTO `const_db` VALUES('e_mobile','68',0);
REPLACE INTO `const_db` VALUES('e_mail','69',0);
REPLACE INTO `const_db` VALUES('e_chinese','70',0);
REPLACE INTO `const_db` VALUES('e_antenna1','71',0);
REPLACE INTO `const_db` VALUES('e_antenna2','72',0);
REPLACE INTO `const_db` VALUES('e_antenna3','73',0);
REPLACE INTO `const_db` VALUES('e_hum','74',0);
REPLACE INTO `const_db` VALUES('e_abs','75',0);
REPLACE INTO `const_db` VALUES('e_oops','76',0);
REPLACE INTO `const_db` VALUES('e_spit','77',0);
REPLACE INTO `const_db` VALUES('e_ene','78',0);
REPLACE INTO `const_db` VALUES('e_panic','79',0);
REPLACE INTO `const_db` VALUES('e_whisp','80',0);
REPLACE INTO `const_db` VALUES('e_yut','81',0);
REPLACE INTO `const_db` VALUES('e_yut2','82',0);
REPLACE INTO `const_db` VALUES('e_yut3','83',0);
REPLACE INTO `const_db` VALUES('e_yut4','84',0);
REPLACE INTO `const_db` VALUES('e_yut5','85',0);
REPLACE INTO `const_db` VALUES('e_yut6','86',0);
REPLACE INTO `const_db` VALUES('e_yut7','87',0);
REPLACE INTO `const_db` VALUES('PET_CLASS','1',0);
REPLACE INTO `const_db` VALUES('PET_NAME','2',0);
REPLACE INTO `const_db` VALUES('PET_LEVEL','3',0);
REPLACE INTO `const_db` VALUES('PET_HUNGRY','4',0);
REPLACE INTO `const_db` VALUES('PET_INTIMATE','5',0);
REPLACE INTO `const_db` VALUES('MOB_NAME','0',0);
REPLACE INTO `const_db` VALUES('MOB_LV','1',0);
REPLACE INTO `const_db` VALUES('MOB_MAXHP','2',0);
REPLACE INTO `const_db` VALUES('MOB_BASEEXP','3',0);
REPLACE INTO `const_db` VALUES('MOB_JOBEXP','4',0);
REPLACE INTO `const_db` VALUES('MOB_ATK1','5',0);
REPLACE INTO `const_db` VALUES('MOB_ATK2','6',0);
REPLACE INTO `const_db` VALUES('MOB_DEF','7',0);
REPLACE INTO `const_db` VALUES('MOB_MDEF','8',0);
REPLACE INTO `const_db` VALUES('MOB_STR','9',0);
REPLACE INTO `const_db` VALUES('MOB_AGI','10',0);
REPLACE INTO `const_db` VALUES('MOB_VIT','11',0);
REPLACE INTO `const_db` VALUES('MOB_INT','12',0);
REPLACE INTO `const_db` VALUES('MOB_DEX','13',0);
REPLACE INTO `const_db` VALUES('MOB_LUK','14',0);
REPLACE INTO `const_db` VALUES('MOB_RANGE','15',0);
REPLACE INTO `const_db` VALUES('MOB_RANGE2','16',0);
REPLACE INTO `const_db` VALUES('MOB_RANGE3','17',0);
REPLACE INTO `const_db` VALUES('MOB_SIZE','18',0);
REPLACE INTO `const_db` VALUES('MOB_RACE','19',0);
REPLACE INTO `const_db` VALUES('MOB_ELEMENT','20',0);
REPLACE INTO `const_db` VALUES('MOB_MODE','21',0);
REPLACE INTO `const_db` VALUES('MOB_MVPEXP','22',0);
REPLACE INTO `const_db` VALUES('ARCH_MERC_GUILD','0',0);
REPLACE INTO `const_db` VALUES('SPEAR_MERC_GUILD','1',0);
REPLACE INTO `const_db` VALUES('SWORD_MERC_GUILD','2',0);
REPLACE INTO `const_db` VALUES('EF_NONE','-1',0);
REPLACE INTO `const_db` VALUES('EF_HIT1','0',0);
REPLACE INTO `const_db` VALUES('EF_HIT2','1',0);
REPLACE INTO `const_db` VALUES('EF_HIT3','2',0);
REPLACE INTO `const_db` VALUES('EF_HIT4','3',0);
REPLACE INTO `const_db` VALUES('EF_HIT5','4',0);
REPLACE INTO `const_db` VALUES('EF_HIT6','5',0);
REPLACE INTO `const_db` VALUES('EF_ENTRY','6',0);
REPLACE INTO `const_db` VALUES('EF_EXIT','7',0);
REPLACE INTO `const_db` VALUES('EF_WARP','8',0);
REPLACE INTO `const_db` VALUES('EF_ENHANCE','9',0);
REPLACE INTO `const_db` VALUES('EF_COIN','10',0);
REPLACE INTO `const_db` VALUES('EF_ENDURE','11',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL','12',0);
REPLACE INTO `const_db` VALUES('EF_GLASSWALL','13',0);
REPLACE INTO `const_db` VALUES('EF_HEALSP','14',0);
REPLACE INTO `const_db` VALUES('EF_SOULSTRIKE','15',0);
REPLACE INTO `const_db` VALUES('EF_BASH','16',0);
REPLACE INTO `const_db` VALUES('EF_MAGNUMBREAK','17',0);
REPLACE INTO `const_db` VALUES('EF_STEAL','18',0);
REPLACE INTO `const_db` VALUES('EF_HIDING','19',0);
REPLACE INTO `const_db` VALUES('EF_PATTACK','20',0);
REPLACE INTO `const_db` VALUES('EF_DETOXICATION','21',0);
REPLACE INTO `const_db` VALUES('EF_SIGHT','22',0);
REPLACE INTO `const_db` VALUES('EF_STONECURSE','23',0);
REPLACE INTO `const_db` VALUES('EF_FIREBALL','24',0);
REPLACE INTO `const_db` VALUES('EF_FIREWALL','25',0);
REPLACE INTO `const_db` VALUES('EF_ICEARROW','26',0);
REPLACE INTO `const_db` VALUES('EF_FROSTDIVER','27',0);
REPLACE INTO `const_db` VALUES('EF_FROSTDIVER2','28',0);
REPLACE INTO `const_db` VALUES('EF_LIGHTBOLT','29',0);
REPLACE INTO `const_db` VALUES('EF_THUNDERSTORM','30',0);
REPLACE INTO `const_db` VALUES('EF_FIREARROW','31',0);
REPLACE INTO `const_db` VALUES('EF_NAPALMBEAT','32',0);
REPLACE INTO `const_db` VALUES('EF_RUWACH','33',0);
REPLACE INTO `const_db` VALUES('EF_TELEPORTATION','34',0);
REPLACE INTO `const_db` VALUES('EF_READYPORTAL','35',0);
REPLACE INTO `const_db` VALUES('EF_PORTAL','36',0);
REPLACE INTO `const_db` VALUES('EF_INCAGILITY','37',0);
REPLACE INTO `const_db` VALUES('EF_DECAGILITY','38',0);
REPLACE INTO `const_db` VALUES('EF_AQUA','39',0);
REPLACE INTO `const_db` VALUES('EF_SIGNUM','40',0);
REPLACE INTO `const_db` VALUES('EF_ANGELUS','41',0);
REPLACE INTO `const_db` VALUES('EF_BLESSING','42',0);
REPLACE INTO `const_db` VALUES('EF_INCAGIDEX','43',0);
REPLACE INTO `const_db` VALUES('EF_SMOKE','44',0);
REPLACE INTO `const_db` VALUES('EF_FIREFLY','45',0);
REPLACE INTO `const_db` VALUES('EF_SANDWIND','46',0);
REPLACE INTO `const_db` VALUES('EF_TORCH','47',0);
REPLACE INTO `const_db` VALUES('EF_SPRAYPOND','48',0);
REPLACE INTO `const_db` VALUES('EF_FIREHIT','49',0);
REPLACE INTO `const_db` VALUES('EF_FIRESPLASHHIT','50',0);
REPLACE INTO `const_db` VALUES('EF_COLDHIT','51',0);
REPLACE INTO `const_db` VALUES('EF_WINDHIT','52',0);
REPLACE INTO `const_db` VALUES('EF_POISONHIT','53',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL2','54',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL3','55',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL4','56',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL5','57',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL6','58',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL7','59',0);
REPLACE INTO `const_db` VALUES('EF_LOCKON','60',0);
REPLACE INTO `const_db` VALUES('EF_WARPZONE','61',0);
REPLACE INTO `const_db` VALUES('EF_SIGHTRASHER','62',0);
REPLACE INTO `const_db` VALUES('EF_BARRIER','63',0);
REPLACE INTO `const_db` VALUES('EF_ARROWSHOT','64',0);
REPLACE INTO `const_db` VALUES('EF_INVENOM','65',0);
REPLACE INTO `const_db` VALUES('EF_CURE','66',0);
REPLACE INTO `const_db` VALUES('EF_PROVOKE','67',0);
REPLACE INTO `const_db` VALUES('EF_MVP','68',0);
REPLACE INTO `const_db` VALUES('EF_SKIDTRAP','69',0);
REPLACE INTO `const_db` VALUES('EF_BRANDISHSPEAR','70',0);
REPLACE INTO `const_db` VALUES('EF_CONE','71',0);
REPLACE INTO `const_db` VALUES('EF_SPHERE','72',0);
REPLACE INTO `const_db` VALUES('EF_BOWLINGBASH','73',0);
REPLACE INTO `const_db` VALUES('EF_ICEWALL','74',0);
REPLACE INTO `const_db` VALUES('EF_GLORIA','75',0);
REPLACE INTO `const_db` VALUES('EF_MAGNIFICAT','76',0);
REPLACE INTO `const_db` VALUES('EF_RESURRECTION','77',0);
REPLACE INTO `const_db` VALUES('EF_RECOVERY','78',0);
REPLACE INTO `const_db` VALUES('EF_EARTHSPIKE','79',0);
REPLACE INTO `const_db` VALUES('EF_SPEARBMR','80',0);
REPLACE INTO `const_db` VALUES('EF_PIERCE','81',0);
REPLACE INTO `const_db` VALUES('EF_TURNUNDEAD','82',0);
REPLACE INTO `const_db` VALUES('EF_SANCTUARY','83',0);
REPLACE INTO `const_db` VALUES('EF_IMPOSITIO','84',0);
REPLACE INTO `const_db` VALUES('EF_LEXAETERNA','85',0);
REPLACE INTO `const_db` VALUES('EF_ASPERSIO','86',0);
REPLACE INTO `const_db` VALUES('EF_LEXDIVINA','87',0);
REPLACE INTO `const_db` VALUES('EF_SUFFRAGIUM','88',0);
REPLACE INTO `const_db` VALUES('EF_STORMGUST','89',0);
REPLACE INTO `const_db` VALUES('EF_LORD','90',0);
REPLACE INTO `const_db` VALUES('EF_BENEDICTIO','91',0);
REPLACE INTO `const_db` VALUES('EF_METEORSTORM','92',0);
REPLACE INTO `const_db` VALUES('EF_YUFITEL','93',0);
REPLACE INTO `const_db` VALUES('EF_YUFITELHIT','94',0);
REPLACE INTO `const_db` VALUES('EF_QUAGMIRE','95',0);
REPLACE INTO `const_db` VALUES('EF_FIREPILLAR','96',0);
REPLACE INTO `const_db` VALUES('EF_FIREPILLARBOMB','97',0);
REPLACE INTO `const_db` VALUES('EF_HASTEUP','98',0);
REPLACE INTO `const_db` VALUES('EF_FLASHER','99',0);
REPLACE INTO `const_db` VALUES('EF_REMOVETRAP','100',0);
REPLACE INTO `const_db` VALUES('EF_REPAIRWEAPON','101',0);
REPLACE INTO `const_db` VALUES('EF_CRASHEARTH','102',0);
REPLACE INTO `const_db` VALUES('EF_PERFECTION','103',0);
REPLACE INTO `const_db` VALUES('EF_MAXPOWER','104',0);
REPLACE INTO `const_db` VALUES('EF_BLASTMINE','105',0);
REPLACE INTO `const_db` VALUES('EF_BLASTMINEBOMB','106',0);
REPLACE INTO `const_db` VALUES('EF_CLAYMORE','107',0);
REPLACE INTO `const_db` VALUES('EF_FREEZING','108',0);
REPLACE INTO `const_db` VALUES('EF_BUBBLE','109',0);
REPLACE INTO `const_db` VALUES('EF_GASPUSH','110',0);
REPLACE INTO `const_db` VALUES('EF_SPRINGTRAP','111',0);
REPLACE INTO `const_db` VALUES('EF_KYRIE','112',0);
REPLACE INTO `const_db` VALUES('EF_MAGNUS','113',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM','114',0);
REPLACE INTO `const_db` VALUES('EF_BLITZBEAT','115',0);
REPLACE INTO `const_db` VALUES('EF_WATERBALL','116',0);
REPLACE INTO `const_db` VALUES('EF_WATERBALL2','117',0);
REPLACE INTO `const_db` VALUES('EF_FIREIVY','118',0);
REPLACE INTO `const_db` VALUES('EF_DETECTING','119',0);
REPLACE INTO `const_db` VALUES('EF_CLOAKING','120',0);
REPLACE INTO `const_db` VALUES('EF_SONICBLOW','121',0);
REPLACE INTO `const_db` VALUES('EF_SONICBLOWHIT','122',0);
REPLACE INTO `const_db` VALUES('EF_GRIMTOOTH','123',0);
REPLACE INTO `const_db` VALUES('EF_VENOMDUST','124',0);
REPLACE INTO `const_db` VALUES('EF_ENCHANTPOISON','125',0);
REPLACE INTO `const_db` VALUES('EF_POISONREACT','126',0);
REPLACE INTO `const_db` VALUES('EF_POISONREACT2','127',0);
REPLACE INTO `const_db` VALUES('EF_OVERTHRUST','128',0);
REPLACE INTO `const_db` VALUES('EF_SPLASHER','129',0);
REPLACE INTO `const_db` VALUES('EF_TWOHANDQUICKEN','130',0);
REPLACE INTO `const_db` VALUES('EF_AUTOCOUNTER','131',0);
REPLACE INTO `const_db` VALUES('EF_GRIMTOOTHATK','132',0);
REPLACE INTO `const_db` VALUES('EF_FREEZE','133',0);
REPLACE INTO `const_db` VALUES('EF_FREEZED','134',0);
REPLACE INTO `const_db` VALUES('EF_ICECRASH','135',0);
REPLACE INTO `const_db` VALUES('EF_SLOWPOISON','136',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM2','137',0);
REPLACE INTO `const_db` VALUES('EF_FIREPILLARON','138',0);
REPLACE INTO `const_db` VALUES('EF_SANDMAN','139',0);
REPLACE INTO `const_db` VALUES('EF_REVIVE','140',0);
REPLACE INTO `const_db` VALUES('EF_PNEUMA','141',0);
REPLACE INTO `const_db` VALUES('EF_HEAVENSDRIVE','142',0);
REPLACE INTO `const_db` VALUES('EF_SONICBLOW2','143',0);
REPLACE INTO `const_db` VALUES('EF_BRANDISH2','144',0);
REPLACE INTO `const_db` VALUES('EF_SHOCKWAVE','145',0);
REPLACE INTO `const_db` VALUES('EF_SHOCKWAVEHIT','146',0);
REPLACE INTO `const_db` VALUES('EF_EARTHHIT','147',0);
REPLACE INTO `const_db` VALUES('EF_PIERCESELF','148',0);
REPLACE INTO `const_db` VALUES('EF_BOWLINGSELF','149',0);
REPLACE INTO `const_db` VALUES('EF_SPEARSTABSELF','150',0);
REPLACE INTO `const_db` VALUES('EF_SPEARBMRSELF','151',0);
REPLACE INTO `const_db` VALUES('EF_HOLYHIT','152',0);
REPLACE INTO `const_db` VALUES('EF_CONCENTRATION','153',0);
REPLACE INTO `const_db` VALUES('EF_REFINEOK','154',0);
REPLACE INTO `const_db` VALUES('EF_REFINEFAIL','155',0);
REPLACE INTO `const_db` VALUES('EF_JOBCHANGE','156',0);
REPLACE INTO `const_db` VALUES('EF_LVUP','157',0);
REPLACE INTO `const_db` VALUES('EF_JOBLVUP','158',0);
REPLACE INTO `const_db` VALUES('EF_TOPRANK','159',0);
REPLACE INTO `const_db` VALUES('EF_PARTY','160',0);
REPLACE INTO `const_db` VALUES('EF_RAIN','161',0);
REPLACE INTO `const_db` VALUES('EF_SNOW','162',0);
REPLACE INTO `const_db` VALUES('EF_SAKURA','163',0);
REPLACE INTO `const_db` VALUES('EF_STATUS_STATE','164',0);
REPLACE INTO `const_db` VALUES('EF_BANJJAKII','165',0);
REPLACE INTO `const_db` VALUES('EF_MAKEBLUR','166',0);
REPLACE INTO `const_db` VALUES('EF_TAMINGSUCCESS','167',0);
REPLACE INTO `const_db` VALUES('EF_TAMINGFAILED','168',0);
REPLACE INTO `const_db` VALUES('EF_ENERGYCOAT','169',0);
REPLACE INTO `const_db` VALUES('EF_CARTREVOLUTION','170',0);
REPLACE INTO `const_db` VALUES('EF_VENOMDUST2','171',0);
REPLACE INTO `const_db` VALUES('EF_CHANGEDARK','172',0);
REPLACE INTO `const_db` VALUES('EF_CHANGEFIRE','173',0);
REPLACE INTO `const_db` VALUES('EF_CHANGECOLD','174',0);
REPLACE INTO `const_db` VALUES('EF_CHANGEWIND','175',0);
REPLACE INTO `const_db` VALUES('EF_CHANGEFLAME','176',0);
REPLACE INTO `const_db` VALUES('EF_CHANGEEARTH','177',0);
REPLACE INTO `const_db` VALUES('EF_CHAINGEHOLY','178',0);
REPLACE INTO `const_db` VALUES('EF_CHANGEPOISON','179',0);
REPLACE INTO `const_db` VALUES('EF_HITDARK','180',0);
REPLACE INTO `const_db` VALUES('EF_MENTALBREAK','181',0);
REPLACE INTO `const_db` VALUES('EF_MAGICALATTHIT','182',0);
REPLACE INTO `const_db` VALUES('EF_SUI_EXPLOSION','183',0);
REPLACE INTO `const_db` VALUES('EF_DARKATTACK','184',0);
REPLACE INTO `const_db` VALUES('EF_SUICIDE','185',0);
REPLACE INTO `const_db` VALUES('EF_COMBOATTACK1','186',0);
REPLACE INTO `const_db` VALUES('EF_COMBOATTACK2','187',0);
REPLACE INTO `const_db` VALUES('EF_COMBOATTACK3','188',0);
REPLACE INTO `const_db` VALUES('EF_COMBOATTACK4','189',0);
REPLACE INTO `const_db` VALUES('EF_COMBOATTACK5','190',0);
REPLACE INTO `const_db` VALUES('EF_GUIDEDATTACK','191',0);
REPLACE INTO `const_db` VALUES('EF_POISONATTACK','192',0);
REPLACE INTO `const_db` VALUES('EF_SILENCEATTACK','193',0);
REPLACE INTO `const_db` VALUES('EF_STUNATTACK','194',0);
REPLACE INTO `const_db` VALUES('EF_PETRIFYATTACK','195',0);
REPLACE INTO `const_db` VALUES('EF_CURSEATTACK','196',0);
REPLACE INTO `const_db` VALUES('EF_SLEEPATTACK','197',0);
REPLACE INTO `const_db` VALUES('EF_TELEKHIT','198',0);
REPLACE INTO `const_db` VALUES('EF_PONG','199',0);
REPLACE INTO `const_db` VALUES('EF_LEVEL99','200',0);
REPLACE INTO `const_db` VALUES('EF_LEVEL99_2','201',0);
REPLACE INTO `const_db` VALUES('EF_LEVEL99_3','202',0);
REPLACE INTO `const_db` VALUES('EF_GUMGANG','203',0);
REPLACE INTO `const_db` VALUES('EF_POTION1','204',0);
REPLACE INTO `const_db` VALUES('EF_POTION2','205',0);
REPLACE INTO `const_db` VALUES('EF_POTION3','206',0);
REPLACE INTO `const_db` VALUES('EF_POTION4','207',0);
REPLACE INTO `const_db` VALUES('EF_POTION5','208',0);
REPLACE INTO `const_db` VALUES('EF_POTION6','209',0);
REPLACE INTO `const_db` VALUES('EF_POTION7','210',0);
REPLACE INTO `const_db` VALUES('EF_POTION8','211',0);
REPLACE INTO `const_db` VALUES('EF_DARKBREATH','212',0);
REPLACE INTO `const_db` VALUES('EF_DEFFENDER','213',0);
REPLACE INTO `const_db` VALUES('EF_KEEPING','214',0);
REPLACE INTO `const_db` VALUES('EF_SUMMONSLAVE','215',0);
REPLACE INTO `const_db` VALUES('EF_BLOODDRAIN','216',0);
REPLACE INTO `const_db` VALUES('EF_ENERGYDRAIN','217',0);
REPLACE INTO `const_db` VALUES('EF_POTION_CON','218',0);
REPLACE INTO `const_db` VALUES('EF_POTION_','219',0);
REPLACE INTO `const_db` VALUES('EF_POTION_BERSERK','220',0);
REPLACE INTO `const_db` VALUES('EF_POTIONPILLAR','221',0);
REPLACE INTO `const_db` VALUES('EF_DEFENDER','222',0);
REPLACE INTO `const_db` VALUES('EF_GANBANTEIN','223',0);
REPLACE INTO `const_db` VALUES('EF_WIND','224',0);
REPLACE INTO `const_db` VALUES('EF_VOLCANO','225',0);
REPLACE INTO `const_db` VALUES('EF_GRANDCROSS','226',0);
REPLACE INTO `const_db` VALUES('EF_INTIMIDATE','227',0);
REPLACE INTO `const_db` VALUES('EF_CHOOKGI','228',0);
REPLACE INTO `const_db` VALUES('EF_CLOUD','229',0);
REPLACE INTO `const_db` VALUES('EF_CLOUD2','230',0);
REPLACE INTO `const_db` VALUES('EF_MAPPILLAR','231',0);
REPLACE INTO `const_db` VALUES('EF_LINELINK','232',0);
REPLACE INTO `const_db` VALUES('EF_CLOUD3','233',0);
REPLACE INTO `const_db` VALUES('EF_SPELLBREAKER','234',0);
REPLACE INTO `const_db` VALUES('EF_DISPELL','235',0);
REPLACE INTO `const_db` VALUES('EF_DELUGE','236',0);
REPLACE INTO `const_db` VALUES('EF_VIOLENTGALE','237',0);
REPLACE INTO `const_db` VALUES('EF_LANDPROTECTOR','238',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_VO','239',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_DE','240',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_VI','241',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_LA','242',0);
REPLACE INTO `const_db` VALUES('EF_FASTMOVE','243',0);
REPLACE INTO `const_db` VALUES('EF_MAGICROD','244',0);
REPLACE INTO `const_db` VALUES('EF_HOLYCROSS','245',0);
REPLACE INTO `const_db` VALUES('EF_SHIELDCHARGE','246',0);
REPLACE INTO `const_db` VALUES('EF_MAPPILLAR2','247',0);
REPLACE INTO `const_db` VALUES('EF_PROVIDENCE','248',0);
REPLACE INTO `const_db` VALUES('EF_SHIELDBOOMERANG','249',0);
REPLACE INTO `const_db` VALUES('EF_SPEARQUICKEN','250',0);
REPLACE INTO `const_db` VALUES('EF_DEVOTION','251',0);
REPLACE INTO `const_db` VALUES('EF_REFLECTSHIELD','252',0);
REPLACE INTO `const_db` VALUES('EF_ABSORBSPIRITS','253',0);
REPLACE INTO `const_db` VALUES('EF_STEELBODY','254',0);
REPLACE INTO `const_db` VALUES('EF_FLAMELAUNCHER','255',0);
REPLACE INTO `const_db` VALUES('EF_FROSTWEAPON','256',0);
REPLACE INTO `const_db` VALUES('EF_LIGHTNINGLOADER','257',0);
REPLACE INTO `const_db` VALUES('EF_SEISMICWEAPON','258',0);
REPLACE INTO `const_db` VALUES('EF_MAPPILLAR3','259',0);
REPLACE INTO `const_db` VALUES('EF_MAPPILLAR4','260',0);
REPLACE INTO `const_db` VALUES('EF_GUMGANG2','261',0);
REPLACE INTO `const_db` VALUES('EF_TEIHIT1','262',0);
REPLACE INTO `const_db` VALUES('EF_GUMGANG3','263',0);
REPLACE INTO `const_db` VALUES('EF_TEIHIT2','264',0);
REPLACE INTO `const_db` VALUES('EF_TANJI','265',0);
REPLACE INTO `const_db` VALUES('EF_TEIHIT1X','266',0);
REPLACE INTO `const_db` VALUES('EF_CHIMTO','267',0);
REPLACE INTO `const_db` VALUES('EF_STEALCOIN','268',0);
REPLACE INTO `const_db` VALUES('EF_STRIPWEAPON','269',0);
REPLACE INTO `const_db` VALUES('EF_STRIPSHIELD','270',0);
REPLACE INTO `const_db` VALUES('EF_STRIPARMOR','271',0);
REPLACE INTO `const_db` VALUES('EF_STRIPHELM','272',0);
REPLACE INTO `const_db` VALUES('EF_CHAINCOMBO','273',0);
REPLACE INTO `const_db` VALUES('EF_RG_COIN','274',0);
REPLACE INTO `const_db` VALUES('EF_BACKSTAP','275',0);
REPLACE INTO `const_db` VALUES('EF_TEIHIT3','276',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_DISSONANCE','277',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_LULLABY','278',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_RICHMANKIM','279',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_ETERNALCHAOS','280',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_DRUMBATTLEFIELD','281',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_RINGNIBELUNGEN','282',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_ROKISWEIL','283',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_INTOABYSS','284',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_SIEGFRIED','285',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_WHISTLE','286',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_ASSASSINCROSS','287',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_POEMBRAGI','288',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_APPLEIDUN','289',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_UGLYDANCE','290',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_HUMMING','291',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_DONTFORGETME','292',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_FORTUNEKISS','293',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_SERVICEFORYOU','294',0);
REPLACE INTO `const_db` VALUES('EF_TALK_FROSTJOKE','295',0);
REPLACE INTO `const_db` VALUES('EF_TALK_SCREAM','296',0);
REPLACE INTO `const_db` VALUES('EF_POKJUK','297',0);
REPLACE INTO `const_db` VALUES('EF_THROWITEM','298',0);
REPLACE INTO `const_db` VALUES('EF_THROWITEM2','299',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICALPROTECTION','300',0);
REPLACE INTO `const_db` VALUES('EF_POKJUK_SOUND','301',0);
REPLACE INTO `const_db` VALUES('EF_DEMONSTRATION','302',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICAL2','303',0);
REPLACE INTO `const_db` VALUES('EF_TELEPORTATION2','304',0);
REPLACE INTO `const_db` VALUES('EF_PHARMACY_OK','305',0);
REPLACE INTO `const_db` VALUES('EF_PHARMACY_FAIL','306',0);
REPLACE INTO `const_db` VALUES('EF_FORESTLIGHT','307',0);
REPLACE INTO `const_db` VALUES('EF_THROWITEM3','308',0);
REPLACE INTO `const_db` VALUES('EF_FIRSTAID','309',0);
REPLACE INTO `const_db` VALUES('EF_SPRINKLESAND','310',0);
REPLACE INTO `const_db` VALUES('EF_LOUD','311',0);
REPLACE INTO `const_db` VALUES('EF_HEAL','312',0);
REPLACE INTO `const_db` VALUES('EF_HEAL2','313',0);
REPLACE INTO `const_db` VALUES('EF_EXIT2','314',0);
REPLACE INTO `const_db` VALUES('EF_GLASSWALL2','315',0);
REPLACE INTO `const_db` VALUES('EF_READYPORTAL2','316',0);
REPLACE INTO `const_db` VALUES('EF_PORTAL2','317',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_MAG','318',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_SANC','319',0);
REPLACE INTO `const_db` VALUES('EF_HEAL3','320',0);
REPLACE INTO `const_db` VALUES('EF_WARPZONE2','321',0);
REPLACE INTO `const_db` VALUES('EF_FORESTLIGHT2','322',0);
REPLACE INTO `const_db` VALUES('EF_FORESTLIGHT3','323',0);
REPLACE INTO `const_db` VALUES('EF_FORESTLIGHT4','324',0);
REPLACE INTO `const_db` VALUES('EF_HEAL4','325',0);
REPLACE INTO `const_db` VALUES('EF_FOOT','326',0);
REPLACE INTO `const_db` VALUES('EF_FOOT2','327',0);
REPLACE INTO `const_db` VALUES('EF_BEGINASURA','328',0);
REPLACE INTO `const_db` VALUES('EF_TRIPLEATTACK','329',0);
REPLACE INTO `const_db` VALUES('EF_HITLINE','330',0);
REPLACE INTO `const_db` VALUES('EF_HPTIME','331',0);
REPLACE INTO `const_db` VALUES('EF_SPTIME','332',0);
REPLACE INTO `const_db` VALUES('EF_MAPLE','333',0);
REPLACE INTO `const_db` VALUES('EF_BLIND','334',0);
REPLACE INTO `const_db` VALUES('EF_POISON','335',0);
REPLACE INTO `const_db` VALUES('EF_GUARD','336',0);
REPLACE INTO `const_db` VALUES('EF_JOBLVUP50','337',0);
REPLACE INTO `const_db` VALUES('EF_ANGEL2','338',0);
REPLACE INTO `const_db` VALUES('EF_MAGNUM2','339',0);
REPLACE INTO `const_db` VALUES('EF_CALLZONE','340',0);
REPLACE INTO `const_db` VALUES('EF_PORTAL3','341',0);
REPLACE INTO `const_db` VALUES('EF_COUPLECASTING','342',0);
REPLACE INTO `const_db` VALUES('EF_HEARTCASTING','343',0);
REPLACE INTO `const_db` VALUES('EF_ENTRY2','344',0);
REPLACE INTO `const_db` VALUES('EF_SAINTWING','345',0);
REPLACE INTO `const_db` VALUES('EF_SPHEREWIND','346',0);
REPLACE INTO `const_db` VALUES('EF_COLORPAPER','347',0);
REPLACE INTO `const_db` VALUES('EF_LIGHTSPHERE','348',0);
REPLACE INTO `const_db` VALUES('EF_WATERFALL','349',0);
REPLACE INTO `const_db` VALUES('EF_WATERFALL_90','350',0);
REPLACE INTO `const_db` VALUES('EF_WATERFALL_SMALL','351',0);
REPLACE INTO `const_db` VALUES('EF_WATERFALL_SMALL_90','352',0);
REPLACE INTO `const_db` VALUES('EF_WATERFALL_T2','353',0);
REPLACE INTO `const_db` VALUES('EF_WATERFALL_T2_90','354',0);
REPLACE INTO `const_db` VALUES('EF_WATERFALL_SMALL_T2','355',0);
REPLACE INTO `const_db` VALUES('EF_WATERFALL_SMALL_T2_90','356',0);
REPLACE INTO `const_db` VALUES('EF_MINI_TETRIS','357',0);
REPLACE INTO `const_db` VALUES('EF_GHOST','358',0);
REPLACE INTO `const_db` VALUES('EF_BAT','359',0);
REPLACE INTO `const_db` VALUES('EF_BAT2','360',0);
REPLACE INTO `const_db` VALUES('EF_SOULBREAKER','361',0);
REPLACE INTO `const_db` VALUES('EF_LEVEL99_4','362',0);
REPLACE INTO `const_db` VALUES('EF_VALLENTINE','363',0);
REPLACE INTO `const_db` VALUES('EF_VALLENTINE2','364',0);
REPLACE INTO `const_db` VALUES('EF_PRESSURE','365',0);
REPLACE INTO `const_db` VALUES('EF_BASH3D','366',0);
REPLACE INTO `const_db` VALUES('EF_AURABLADE','367',0);
REPLACE INTO `const_db` VALUES('EF_REDBODY','368',0);
REPLACE INTO `const_db` VALUES('EF_LKCONCENTRATION','369',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_GOSPEL','370',0);
REPLACE INTO `const_db` VALUES('EF_ANGEL','371',0);
REPLACE INTO `const_db` VALUES('EF_DEVIL','372',0);
REPLACE INTO `const_db` VALUES('EF_DRAGONSMOKE','373',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_BASILICA','374',0);
REPLACE INTO `const_db` VALUES('EF_ASSUMPTIO','375',0);
REPLACE INTO `const_db` VALUES('EF_HITLINE2','376',0);
REPLACE INTO `const_db` VALUES('EF_BASH3D2','377',0);
REPLACE INTO `const_db` VALUES('EF_ENERGYDRAIN2','378',0);
REPLACE INTO `const_db` VALUES('EF_TRANSBLUEBODY','379',0);
REPLACE INTO `const_db` VALUES('EF_MAGICCRASHER','380',0);
REPLACE INTO `const_db` VALUES('EF_LIGHTSPHERE2','381',0);
REPLACE INTO `const_db` VALUES('EF_LIGHTBLADE','382',0);
REPLACE INTO `const_db` VALUES('EF_ENERGYDRAIN3','383',0);
REPLACE INTO `const_db` VALUES('EF_LINELINK2','384',0);
REPLACE INTO `const_db` VALUES('EF_LINKLIGHT','385',0);
REPLACE INTO `const_db` VALUES('EF_TRUESIGHT','386',0);
REPLACE INTO `const_db` VALUES('EF_FALCONASSAULT','387',0);
REPLACE INTO `const_db` VALUES('EF_TRIPLEATTACK2','388',0);
REPLACE INTO `const_db` VALUES('EF_PORTAL4','389',0);
REPLACE INTO `const_db` VALUES('EF_MELTDOWN','390',0);
REPLACE INTO `const_db` VALUES('EF_CARTBOOST','391',0);
REPLACE INTO `const_db` VALUES('EF_REJECTSWORD','392',0);
REPLACE INTO `const_db` VALUES('EF_TRIPLEATTACK3','393',0);
REPLACE INTO `const_db` VALUES('EF_SPHEREWIND2','394',0);
REPLACE INTO `const_db` VALUES('EF_LINELINK3','395',0);
REPLACE INTO `const_db` VALUES('EF_PINKBODY','396',0);
REPLACE INTO `const_db` VALUES('EF_LEVEL99_5','397',0);
REPLACE INTO `const_db` VALUES('EF_LEVEL99_6','398',0);
REPLACE INTO `const_db` VALUES('EF_BASH3D3','399',0);
REPLACE INTO `const_db` VALUES('EF_BASH3D4','400',0);
REPLACE INTO `const_db` VALUES('EF_NAPALMVALCAN','401',0);
REPLACE INTO `const_db` VALUES('EF_PORTAL5','402',0);
REPLACE INTO `const_db` VALUES('EF_MAGICCRASHER2','403',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_SPIDER','404',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_FOGWALL','405',0);
REPLACE INTO `const_db` VALUES('EF_SOULBURN','406',0);
REPLACE INTO `const_db` VALUES('EF_SOULCHANGE','407',0);
REPLACE INTO `const_db` VALUES('EF_BABY','408',0);
REPLACE INTO `const_db` VALUES('EF_SOULBREAKER2','409',0);
REPLACE INTO `const_db` VALUES('EF_RAINBOW','410',0);
REPLACE INTO `const_db` VALUES('EF_PEONG','411',0);
REPLACE INTO `const_db` VALUES('EF_TANJI2','412',0);
REPLACE INTO `const_db` VALUES('EF_PRESSEDBODY','413',0);
REPLACE INTO `const_db` VALUES('EF_SPINEDBODY','414',0);
REPLACE INTO `const_db` VALUES('EF_KICKEDBODY','415',0);
REPLACE INTO `const_db` VALUES('EF_AIRTEXTURE','416',0);
REPLACE INTO `const_db` VALUES('EF_HITBODY','417',0);
REPLACE INTO `const_db` VALUES('EF_DOUBLEGUMGANG','418',0);
REPLACE INTO `const_db` VALUES('EF_REFLECTBODY','419',0);
REPLACE INTO `const_db` VALUES('EF_BABYBODY','420',0);
REPLACE INTO `const_db` VALUES('EF_BABYBODY2','421',0);
REPLACE INTO `const_db` VALUES('EF_GIANTBODY','422',0);
REPLACE INTO `const_db` VALUES('EF_GIANTBODY2','423',0);
REPLACE INTO `const_db` VALUES('EF_ASURABODY','424',0);
REPLACE INTO `const_db` VALUES('EF_4WAYBODY','425',0);
REPLACE INTO `const_db` VALUES('EF_QUAKEBODY','426',0);
REPLACE INTO `const_db` VALUES('EF_ASURABODY_MONSTER','427',0);
REPLACE INTO `const_db` VALUES('EF_HITLINE3','428',0);
REPLACE INTO `const_db` VALUES('EF_HITLINE4','429',0);
REPLACE INTO `const_db` VALUES('EF_HITLINE5','430',0);
REPLACE INTO `const_db` VALUES('EF_HITLINE6','431',0);
REPLACE INTO `const_db` VALUES('EF_ELECTRIC','432',0);
REPLACE INTO `const_db` VALUES('EF_ELECTRIC2','433',0);
REPLACE INTO `const_db` VALUES('EF_HITLINE7','434',0);
REPLACE INTO `const_db` VALUES('EF_STORMKICK','435',0);
REPLACE INTO `const_db` VALUES('EF_HALFSPHERE','436',0);
REPLACE INTO `const_db` VALUES('EF_ATTACKENERGY','437',0);
REPLACE INTO `const_db` VALUES('EF_ATTACKENERGY2','438',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICAL3','439',0);
REPLACE INTO `const_db` VALUES('EF_ASSUMPTIO2','440',0);
REPLACE INTO `const_db` VALUES('EF_BLUECASTING','441',0);
REPLACE INTO `const_db` VALUES('EF_RUN','442',0);
REPLACE INTO `const_db` VALUES('EF_STOPRUN','443',0);
REPLACE INTO `const_db` VALUES('EF_STOPEFFECT','444',0);
REPLACE INTO `const_db` VALUES('EF_JUMPBODY','445',0);
REPLACE INTO `const_db` VALUES('EF_LANDBODY','446',0);
REPLACE INTO `const_db` VALUES('EF_FOOT3','447',0);
REPLACE INTO `const_db` VALUES('EF_FOOT4','448',0);
REPLACE INTO `const_db` VALUES('EF_TAE_READY','449',0);
REPLACE INTO `const_db` VALUES('EF_GRANDCROSS2','450',0);
REPLACE INTO `const_db` VALUES('EF_SOULSTRIKE2','451',0);
REPLACE INTO `const_db` VALUES('EF_YUFITEL2','452',0);
REPLACE INTO `const_db` VALUES('EF_NPC_STOP','453',0);
REPLACE INTO `const_db` VALUES('EF_DARKCASTING','454',0);
REPLACE INTO `const_db` VALUES('EF_GUMGANGNPC','455',0);
REPLACE INTO `const_db` VALUES('EF_AGIUP','456',0);
REPLACE INTO `const_db` VALUES('EF_JUMPKICK','457',0);
REPLACE INTO `const_db` VALUES('EF_QUAKEBODY2','458',0);
REPLACE INTO `const_db` VALUES('EF_STORMKICK1','459',0);
REPLACE INTO `const_db` VALUES('EF_STORMKICK2','460',0);
REPLACE INTO `const_db` VALUES('EF_STORMKICK3','461',0);
REPLACE INTO `const_db` VALUES('EF_STORMKICK4','462',0);
REPLACE INTO `const_db` VALUES('EF_STORMKICK5','463',0);
REPLACE INTO `const_db` VALUES('EF_STORMKICK6','464',0);
REPLACE INTO `const_db` VALUES('EF_STORMKICK7','465',0);
REPLACE INTO `const_db` VALUES('EF_SPINEDBODY2','466',0);
REPLACE INTO `const_db` VALUES('EF_BEGINASURA1','467',0);
REPLACE INTO `const_db` VALUES('EF_BEGINASURA2','468',0);
REPLACE INTO `const_db` VALUES('EF_BEGINASURA3','469',0);
REPLACE INTO `const_db` VALUES('EF_BEGINASURA4','470',0);
REPLACE INTO `const_db` VALUES('EF_BEGINASURA5','471',0);
REPLACE INTO `const_db` VALUES('EF_BEGINASURA6','472',0);
REPLACE INTO `const_db` VALUES('EF_BEGINASURA7','473',0);
REPLACE INTO `const_db` VALUES('EF_AURABLADE2','474',0);
REPLACE INTO `const_db` VALUES('EF_DEVIL1','475',0);
REPLACE INTO `const_db` VALUES('EF_DEVIL2','476',0);
REPLACE INTO `const_db` VALUES('EF_DEVIL3','477',0);
REPLACE INTO `const_db` VALUES('EF_DEVIL4','478',0);
REPLACE INTO `const_db` VALUES('EF_DEVIL5','479',0);
REPLACE INTO `const_db` VALUES('EF_DEVIL6','480',0);
REPLACE INTO `const_db` VALUES('EF_DEVIL7','481',0);
REPLACE INTO `const_db` VALUES('EF_DEVIL8','482',0);
REPLACE INTO `const_db` VALUES('EF_DEVIL9','483',0);
REPLACE INTO `const_db` VALUES('EF_DEVIL10','484',0);
REPLACE INTO `const_db` VALUES('EF_DOUBLEGUMGANG2','485',0);
REPLACE INTO `const_db` VALUES('EF_DOUBLEGUMGANG3','486',0);
REPLACE INTO `const_db` VALUES('EF_BLACKDEVIL','487',0);
REPLACE INTO `const_db` VALUES('EF_FLOWERCAST','488',0);
REPLACE INTO `const_db` VALUES('EF_FLOWERCAST2','489',0);
REPLACE INTO `const_db` VALUES('EF_FLOWERCAST3','490',0);
REPLACE INTO `const_db` VALUES('EF_MOCHI','491',0);
REPLACE INTO `const_db` VALUES('EF_LAMADAN','492',0);
REPLACE INTO `const_db` VALUES('EF_EDP','493',0);
REPLACE INTO `const_db` VALUES('EF_SHIELDBOOMERANG2','494',0);
REPLACE INTO `const_db` VALUES('EF_RG_COIN2','495',0);
REPLACE INTO `const_db` VALUES('EF_GUARD2','496',0);
REPLACE INTO `const_db` VALUES('EF_SLIM','497',0);
REPLACE INTO `const_db` VALUES('EF_SLIM2','498',0);
REPLACE INTO `const_db` VALUES('EF_SLIM3','499',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICALBODY','500',0);
REPLACE INTO `const_db` VALUES('EF_CASTSPIN','501',0);
REPLACE INTO `const_db` VALUES('EF_PIERCEBODY','502',0);
REPLACE INTO `const_db` VALUES('EF_SOULLINK','503',0);
REPLACE INTO `const_db` VALUES('EF_CHOOKGI2','504',0);
REPLACE INTO `const_db` VALUES('EF_MEMORIZE','505',0);
REPLACE INTO `const_db` VALUES('EF_SOULLIGHT','506',0);
REPLACE INTO `const_db` VALUES('EF_MAPAE','507',0);
REPLACE INTO `const_db` VALUES('EF_ITEMPOKJUK','508',0);
REPLACE INTO `const_db` VALUES('EF_05VAL','509',0);
REPLACE INTO `const_db` VALUES('EF_BEGINASURA11','510',0);
REPLACE INTO `const_db` VALUES('EF_NIGHT','511',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICAL2DASH','512',0);
REPLACE INTO `const_db` VALUES('EF_GROUNDSAMPLE','513',0);
REPLACE INTO `const_db` VALUES('EF_GI_EXPLOSION','514',0);
REPLACE INTO `const_db` VALUES('EF_CLOUD4','515',0);
REPLACE INTO `const_db` VALUES('EF_CLOUD5','516',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_HERMODE','517',0);
REPLACE INTO `const_db` VALUES('EF_CARTTER','518',0);
REPLACE INTO `const_db` VALUES('EF_ITEMFAST','519',0);
REPLACE INTO `const_db` VALUES('EF_SHIELDBOOMERANG3','520',0);
REPLACE INTO `const_db` VALUES('EF_DOUBLECASTBODY','521',0);
REPLACE INTO `const_db` VALUES('EF_GRAVITATION','522',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD1','523',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD2','524',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD3','525',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD4','526',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD5','527',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD6','528',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD7','529',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD8','530',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD9','531',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD10','532',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD11','533',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD12','534',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD13','535',0);
REPLACE INTO `const_db` VALUES('EF_TAROTCARD14','536',0);
REPLACE INTO `const_db` VALUES('EF_ACIDDEMON','537',0);
REPLACE INTO `const_db` VALUES('EF_GREENBODY','538',0);
REPLACE INTO `const_db` VALUES('EF_THROWITEM4','539',0);
REPLACE INTO `const_db` VALUES('EF_BABYBODY_BACK','540',0);
REPLACE INTO `const_db` VALUES('EF_THROWITEM5','541',0);
REPLACE INTO `const_db` VALUES('EF_BLUEBODY','542',0);
REPLACE INTO `const_db` VALUES('EF_HATED','543',0);
REPLACE INTO `const_db` VALUES('EF_REDLIGHTBODY','544',0);
REPLACE INTO `const_db` VALUES('EF_RO2YEAR','545',0);
REPLACE INTO `const_db` VALUES('EF_SMA_READY','546',0);
REPLACE INTO `const_db` VALUES('EF_STIN','547',0);
REPLACE INTO `const_db` VALUES('EF_RED_HIT','548',0);
REPLACE INTO `const_db` VALUES('EF_BLUE_HIT','549',0);
REPLACE INTO `const_db` VALUES('EF_QUAKEBODY3','550',0);
REPLACE INTO `const_db` VALUES('EF_SMA','551',0);
REPLACE INTO `const_db` VALUES('EF_SMA2','552',0);
REPLACE INTO `const_db` VALUES('EF_STIN2','553',0);
REPLACE INTO `const_db` VALUES('EF_HITTEXTURE','554',0);
REPLACE INTO `const_db` VALUES('EF_STIN3','555',0);
REPLACE INTO `const_db` VALUES('EF_SMA3','556',0);
REPLACE INTO `const_db` VALUES('EF_BLUEFALL','557',0);
REPLACE INTO `const_db` VALUES('EF_BLUEFALL_90','558',0);
REPLACE INTO `const_db` VALUES('EF_FASTBLUEFALL','559',0);
REPLACE INTO `const_db` VALUES('EF_FASTBLUEFALL_90','560',0);
REPLACE INTO `const_db` VALUES('EF_BIG_PORTAL','561',0);
REPLACE INTO `const_db` VALUES('EF_BIG_PORTAL2','562',0);
REPLACE INTO `const_db` VALUES('EF_SCREEN_QUAKE','563',0);
REPLACE INTO `const_db` VALUES('EF_HOMUNCASTING','564',0);
REPLACE INTO `const_db` VALUES('EF_HFLIMOON1','565',0);
REPLACE INTO `const_db` VALUES('EF_HFLIMOON2','566',0);
REPLACE INTO `const_db` VALUES('EF_HFLIMOON3','567',0);
REPLACE INTO `const_db` VALUES('EF_HO_UP','568',0);
REPLACE INTO `const_db` VALUES('EF_HAMIDEFENCE','569',0);
REPLACE INTO `const_db` VALUES('EF_HAMICASTLE','570',0);
REPLACE INTO `const_db` VALUES('EF_HAMIBLOOD','571',0);
REPLACE INTO `const_db` VALUES('EF_HATED2','572',0);
REPLACE INTO `const_db` VALUES('EF_TWILIGHT1','573',0);
REPLACE INTO `const_db` VALUES('EF_TWILIGHT2','574',0);
REPLACE INTO `const_db` VALUES('EF_TWILIGHT3','575',0);
REPLACE INTO `const_db` VALUES('EF_ITEM_THUNDER','576',0);
REPLACE INTO `const_db` VALUES('EF_ITEM_CLOUD','577',0);
REPLACE INTO `const_db` VALUES('EF_ITEM_CURSE','578',0);
REPLACE INTO `const_db` VALUES('EF_ITEM_ZZZ','579',0);
REPLACE INTO `const_db` VALUES('EF_ITEM_RAIN','580',0);
REPLACE INTO `const_db` VALUES('EF_ITEM_LIGHT','581',0);
REPLACE INTO `const_db` VALUES('EF_ANGEL3','582',0);
REPLACE INTO `const_db` VALUES('EF_M01','583',0);
REPLACE INTO `const_db` VALUES('EF_M02','584',0);
REPLACE INTO `const_db` VALUES('EF_M03','585',0);
REPLACE INTO `const_db` VALUES('EF_M04','586',0);
REPLACE INTO `const_db` VALUES('EF_M05','587',0);
REPLACE INTO `const_db` VALUES('EF_M06','588',0);
REPLACE INTO `const_db` VALUES('EF_M07','589',0);
REPLACE INTO `const_db` VALUES('EF_KAIZEL','590',0);
REPLACE INTO `const_db` VALUES('EF_KAAHI','591',0);
REPLACE INTO `const_db` VALUES('EF_CLOUD6','592',0);
REPLACE INTO `const_db` VALUES('EF_FOOD01','593',0);
REPLACE INTO `const_db` VALUES('EF_FOOD02','594',0);
REPLACE INTO `const_db` VALUES('EF_FOOD03','595',0);
REPLACE INTO `const_db` VALUES('EF_FOOD04','596',0);
REPLACE INTO `const_db` VALUES('EF_FOOD05','597',0);
REPLACE INTO `const_db` VALUES('EF_FOOD06','598',0);
REPLACE INTO `const_db` VALUES('EF_SHRINK','599',0);
REPLACE INTO `const_db` VALUES('EF_THROWITEM6','600',0);
REPLACE INTO `const_db` VALUES('EF_SIGHT2','601',0);
REPLACE INTO `const_db` VALUES('EF_QUAKEBODY4','602',0);
REPLACE INTO `const_db` VALUES('EF_FIREHIT2','603',0);
REPLACE INTO `const_db` VALUES('EF_NPC_STOP2','604',0);
REPLACE INTO `const_db` VALUES('EF_NPC_STOP2_DEL','605',0);
REPLACE INTO `const_db` VALUES('EF_FVOICE','606',0);
REPLACE INTO `const_db` VALUES('EF_WINK','607',0);
REPLACE INTO `const_db` VALUES('EF_COOKING_OK','608',0);
REPLACE INTO `const_db` VALUES('EF_COOKING_FAIL','609',0);
REPLACE INTO `const_db` VALUES('EF_TEMP_OK','610',0);
REPLACE INTO `const_db` VALUES('EF_TEMP_FAIL','611',0);
REPLACE INTO `const_db` VALUES('EF_HAPGYEOK','612',0);
REPLACE INTO `const_db` VALUES('EF_THROWITEM7','613',0);
REPLACE INTO `const_db` VALUES('EF_THROWITEM8','614',0);
REPLACE INTO `const_db` VALUES('EF_THROWITEM9','615',0);
REPLACE INTO `const_db` VALUES('EF_THROWITEM10','616',0);
REPLACE INTO `const_db` VALUES('EF_BUNSINJYUTSU','617',0);
REPLACE INTO `const_db` VALUES('EF_KOUENKA','618',0);
REPLACE INTO `const_db` VALUES('EF_HYOUSENSOU','619',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_SUITON','620',0);
REPLACE INTO `const_db` VALUES('EF_STIN4','621',0);
REPLACE INTO `const_db` VALUES('EF_THUNDERSTORM2','622',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICAL4','623',0);
REPLACE INTO `const_db` VALUES('EF_STIN5','624',0);
REPLACE INTO `const_db` VALUES('EF_MADNESS_BLUE','625',0);
REPLACE INTO `const_db` VALUES('EF_MADNESS_RED','626',0);
REPLACE INTO `const_db` VALUES('EF_RG_COIN3','627',0);
REPLACE INTO `const_db` VALUES('EF_BASH3D5','628',0);
REPLACE INTO `const_db` VALUES('EF_CHOOKGI3','629',0);
REPLACE INTO `const_db` VALUES('EF_KIRIKAGE','630',0);
REPLACE INTO `const_db` VALUES('EF_TATAMI','631',0);
REPLACE INTO `const_db` VALUES('EF_KASUMIKIRI','632',0);
REPLACE INTO `const_db` VALUES('EF_ISSEN','633',0);
REPLACE INTO `const_db` VALUES('EF_KAEN','634',0);
REPLACE INTO `const_db` VALUES('EF_BAKU','635',0);
REPLACE INTO `const_db` VALUES('EF_HYOUSYOURAKU','636',0);
REPLACE INTO `const_db` VALUES('EF_DESPERADO','637',0);
REPLACE INTO `const_db` VALUES('EF_LIGHTNING_S','638',0);
REPLACE INTO `const_db` VALUES('EF_BLIND_S','639',0);
REPLACE INTO `const_db` VALUES('EF_POISON_S','640',0);
REPLACE INTO `const_db` VALUES('EF_FREEZING_S','641',0);
REPLACE INTO `const_db` VALUES('EF_FLARE_S','642',0);
REPLACE INTO `const_db` VALUES('EF_RAPIDSHOWER','643',0);
REPLACE INTO `const_db` VALUES('EF_MAGICALBULLET','644',0);
REPLACE INTO `const_db` VALUES('EF_SPREADATTACK','645',0);
REPLACE INTO `const_db` VALUES('EF_TRACKCASTING','646',0);
REPLACE INTO `const_db` VALUES('EF_TRACKING','647',0);
REPLACE INTO `const_db` VALUES('EF_TRIPLEACTION','648',0);
REPLACE INTO `const_db` VALUES('EF_BULLSEYE','649',0);
REPLACE INTO `const_db` VALUES('EF_MAP_MAGICZONE','650',0);
REPLACE INTO `const_db` VALUES('EF_MAP_MAGICZONE2','651',0);
REPLACE INTO `const_db` VALUES('EF_DAMAGE1','652',0);
REPLACE INTO `const_db` VALUES('EF_DAMAGE1_2','653',0);
REPLACE INTO `const_db` VALUES('EF_DAMAGE1_3','654',0);
REPLACE INTO `const_db` VALUES('EF_UNDEADBODY','655',0);
REPLACE INTO `const_db` VALUES('EF_UNDEADBODY_DEL','656',0);
REPLACE INTO `const_db` VALUES('EF_GREEN_NUMBER','657',0);
REPLACE INTO `const_db` VALUES('EF_BLUE_NUMBER','658',0);
REPLACE INTO `const_db` VALUES('EF_RED_NUMBER','659',0);
REPLACE INTO `const_db` VALUES('EF_PURPLE_NUMBER','660',0);
REPLACE INTO `const_db` VALUES('EF_BLACK_NUMBER','661',0);
REPLACE INTO `const_db` VALUES('EF_WHITE_NUMBER','662',0);
REPLACE INTO `const_db` VALUES('EF_YELLOW_NUMBER','663',0);
REPLACE INTO `const_db` VALUES('EF_PINK_NUMBER','664',0);
REPLACE INTO `const_db` VALUES('EF_BUBBLE_DROP','665',0);
REPLACE INTO `const_db` VALUES('EF_NPC_EARTHQUAKE','666',0);
REPLACE INTO `const_db` VALUES('EF_DA_SPACE','667',0);
REPLACE INTO `const_db` VALUES('EF_DRAGONFEAR','668',0);
REPLACE INTO `const_db` VALUES('EF_BLEEDING','669',0);
REPLACE INTO `const_db` VALUES('EF_WIDECONFUSE','670',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_RUNNER','671',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_TRANSFER','672',0);
REPLACE INTO `const_db` VALUES('EF_CRYSTAL_BLUE','673',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_EVILLAND','674',0);
REPLACE INTO `const_db` VALUES('EF_GUARD3','675',0);
REPLACE INTO `const_db` VALUES('EF_NPC_SLOWCAST','676',0);
REPLACE INTO `const_db` VALUES('EF_CRITICALWOUND','677',0);
REPLACE INTO `const_db` VALUES('EF_GREEN99_3','678',0);
REPLACE INTO `const_db` VALUES('EF_GREEN99_5','679',0);
REPLACE INTO `const_db` VALUES('EF_GREEN99_6','680',0);
REPLACE INTO `const_db` VALUES('EF_MAPSPHERE','681',0);
REPLACE INTO `const_db` VALUES('EF_POK_LOVE','682',0);
REPLACE INTO `const_db` VALUES('EF_POK_WHITE','683',0);
REPLACE INTO `const_db` VALUES('EF_POK_VALEN','684',0);
REPLACE INTO `const_db` VALUES('EF_POK_BIRTH','685',0);
REPLACE INTO `const_db` VALUES('EF_POK_CHRISTMAS','686',0);
REPLACE INTO `const_db` VALUES('EF_MAP_MAGICZONE3','687',0);
REPLACE INTO `const_db` VALUES('EF_MAP_MAGICZONE4','688',0);
REPLACE INTO `const_db` VALUES('EF_DUST','689',0);
REPLACE INTO `const_db` VALUES('EF_TORCH_RED','690',0);
REPLACE INTO `const_db` VALUES('EF_TORCH_GREEN','691',0);
REPLACE INTO `const_db` VALUES('EF_MAP_GHOST','692',0);
REPLACE INTO `const_db` VALUES('EF_GLOW1','693',0);
REPLACE INTO `const_db` VALUES('EF_GLOW2','694',0);
REPLACE INTO `const_db` VALUES('EF_GLOW4','695',0);
REPLACE INTO `const_db` VALUES('EF_TORCH_PURPLE','696',0);
REPLACE INTO `const_db` VALUES('EF_CLOUD7','697',0);
REPLACE INTO `const_db` VALUES('EF_CLOUD8','698',0);
REPLACE INTO `const_db` VALUES('EF_FLOWERLEAF','699',0);
REPLACE INTO `const_db` VALUES('EF_MAPSPHERE2','700',0);
REPLACE INTO `const_db` VALUES('EF_GLOW11','701',0);
REPLACE INTO `const_db` VALUES('EF_GLOW12','702',0);
REPLACE INTO `const_db` VALUES('EF_CIRCLELIGHT','703',0);
REPLACE INTO `const_db` VALUES('EF_ITEM315','704',0);
REPLACE INTO `const_db` VALUES('EF_ITEM316','705',0);
REPLACE INTO `const_db` VALUES('EF_ITEM317','706',0);
REPLACE INTO `const_db` VALUES('EF_ITEM318','707',0);
REPLACE INTO `const_db` VALUES('EF_STORM_MIN','708',0);
REPLACE INTO `const_db` VALUES('EF_POK_JAP','709',0);
REPLACE INTO `const_db` VALUES('EF_MAP_GREENLIGHT','710',0);
REPLACE INTO `const_db` VALUES('EF_MAP_MAGICWALL','711',0);
REPLACE INTO `const_db` VALUES('EF_MAP_GREENLIGHT2','712',0);
REPLACE INTO `const_db` VALUES('EF_YELLOWFLY1','713',0);
REPLACE INTO `const_db` VALUES('EF_YELLOWFLY2','714',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_BLUE','715',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_BLUE2','716',0);
REPLACE INTO `const_db` VALUES('EF_WEWISH','717',0);
REPLACE INTO `const_db` VALUES('EF_FIREPILLARON2','718',0);
REPLACE INTO `const_db` VALUES('EF_FORESTLIGHT5','719',0);
REPLACE INTO `const_db` VALUES('EF_SOULBREAKER3','720',0);
REPLACE INTO `const_db` VALUES('EF_ADO_STR','721',0);
REPLACE INTO `const_db` VALUES('EF_IGN_STR','722',0);
REPLACE INTO `const_db` VALUES('EF_CHIMTO2','723',0);
REPLACE INTO `const_db` VALUES('EF_WINDCUTTER','724',0);
REPLACE INTO `const_db` VALUES('EF_DETECT2','725',0);
REPLACE INTO `const_db` VALUES('EF_FROSTMYSTY','726',0);
REPLACE INTO `const_db` VALUES('EF_CRIMSON_STR','727',0);
REPLACE INTO `const_db` VALUES('EF_HELL_STR','728',0);
REPLACE INTO `const_db` VALUES('EF_SPR_MASH','729',0);
REPLACE INTO `const_db` VALUES('EF_SPR_SOULE','730',0);
REPLACE INTO `const_db` VALUES('EF_DHOWL_STR','731',0);
REPLACE INTO `const_db` VALUES('EF_EARTHWALL','732',0);
REPLACE INTO `const_db` VALUES('EF_SOULBREAKER4','733',0);
REPLACE INTO `const_db` VALUES('EF_CHAINL_STR','734',0);
REPLACE INTO `const_db` VALUES('EF_CHOOKGI_FIRE','735',0);
REPLACE INTO `const_db` VALUES('EF_CHOOKGI_WIND','736',0);
REPLACE INTO `const_db` VALUES('EF_CHOOKGI_WATER','737',0);
REPLACE INTO `const_db` VALUES('EF_CHOOKGI_GROUND','738',0);
REPLACE INTO `const_db` VALUES('EF_MAGENTA_TRAP','739',0);
REPLACE INTO `const_db` VALUES('EF_COBALT_TRAP','740',0);
REPLACE INTO `const_db` VALUES('EF_MAIZE_TRAP','741',0);
REPLACE INTO `const_db` VALUES('EF_VERDURE_TRAP','742',0);
REPLACE INTO `const_db` VALUES('EF_NORMAL_TRAP','743',0);
REPLACE INTO `const_db` VALUES('EF_CLOAKING2','744',0);
REPLACE INTO `const_db` VALUES('EF_AIMED_STR','745',0);
REPLACE INTO `const_db` VALUES('EF_ARROWSTORM_STR','746',0);
REPLACE INTO `const_db` VALUES('EF_LAULAMUS_STR','747',0);
REPLACE INTO `const_db` VALUES('EF_LAUAGNUS_STR','748',0);
REPLACE INTO `const_db` VALUES('EF_MILSHIELD_STR','749',0);
REPLACE INTO `const_db` VALUES('EF_CONCENTRATION2','750',0);
REPLACE INTO `const_db` VALUES('EF_FIREBALL2','751',0);
REPLACE INTO `const_db` VALUES('EF_BUNSINJYUTSU2','752',0);
REPLACE INTO `const_db` VALUES('EF_CLEARTIME','753',0);
REPLACE INTO `const_db` VALUES('EF_GLASSWALL3','754',0);
REPLACE INTO `const_db` VALUES('EF_ORATIO','755',0);
REPLACE INTO `const_db` VALUES('EF_POTION_BERSERK2','756',0);
REPLACE INTO `const_db` VALUES('EF_CIRCLEPOWER','757',0);
REPLACE INTO `const_db` VALUES('EF_ROLLING1','758',0);
REPLACE INTO `const_db` VALUES('EF_ROLLING2','759',0);
REPLACE INTO `const_db` VALUES('EF_ROLLING3','760',0);
REPLACE INTO `const_db` VALUES('EF_ROLLING4','761',0);
REPLACE INTO `const_db` VALUES('EF_ROLLING5','762',0);
REPLACE INTO `const_db` VALUES('EF_ROLLING6','763',0);
REPLACE INTO `const_db` VALUES('EF_ROLLING7','764',0);
REPLACE INTO `const_db` VALUES('EF_ROLLING8','765',0);
REPLACE INTO `const_db` VALUES('EF_ROLLING9','766',0);
REPLACE INTO `const_db` VALUES('EF_ROLLING10','767',0);
REPLACE INTO `const_db` VALUES('EF_PURPLEBODY','768',0);
REPLACE INTO `const_db` VALUES('EF_STIN6','769',0);
REPLACE INTO `const_db` VALUES('EF_RG_COIN4','770',0);
REPLACE INTO `const_db` VALUES('EF_POISONWAV','771',0);
REPLACE INTO `const_db` VALUES('EF_POISONSMOKE','772',0);
REPLACE INTO `const_db` VALUES('EF_GUMGANG4','773',0);
REPLACE INTO `const_db` VALUES('EF_SHIELDBOOMERANG4','774',0);
REPLACE INTO `const_db` VALUES('EF_CASTSPIN2','775',0);
REPLACE INTO `const_db` VALUES('EF_VULCANWAV','776',0);
REPLACE INTO `const_db` VALUES('EF_AGIUP2','777',0);
REPLACE INTO `const_db` VALUES('EF_DETECT3','778',0);
REPLACE INTO `const_db` VALUES('EF_AGIUP3','779',0);
REPLACE INTO `const_db` VALUES('EF_DETECT4','780',0);
REPLACE INTO `const_db` VALUES('EF_ELECTRIC3','781',0);
REPLACE INTO `const_db` VALUES('EF_GUARD4','782',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_BARRIER','783',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_STEALTH','784',0);
REPLACE INTO `const_db` VALUES('EF_REPAIRTIME','785',0);
REPLACE INTO `const_db` VALUES('EF_NC_ANAL','786',0);
REPLACE INTO `const_db` VALUES('EF_FIRETHROW','787',0);
REPLACE INTO `const_db` VALUES('EF_VENOMIMPRESS','788',0);
REPLACE INTO `const_db` VALUES('EF_FROSTMISTY','789',0);
REPLACE INTO `const_db` VALUES('EF_BURNING','790',0);
REPLACE INTO `const_db` VALUES('EF_COLDTHROW','791',0);
REPLACE INTO `const_db` VALUES('EF_MAKEHALLU','792',0);
REPLACE INTO `const_db` VALUES('EF_HALLUTIME','793',0);
REPLACE INTO `const_db` VALUES('EF_INFRAREDSCAN','794',0);
REPLACE INTO `const_db` VALUES('EF_CRASHAXE','795',0);
REPLACE INTO `const_db` VALUES('EF_GTHUNDER','796',0);
REPLACE INTO `const_db` VALUES('EF_STONERING','797',0);
REPLACE INTO `const_db` VALUES('EF_INTIMIDATE2','798',0);
REPLACE INTO `const_db` VALUES('EF_STASIS','799',0);
REPLACE INTO `const_db` VALUES('EF_REDLINE','800',0);
REPLACE INTO `const_db` VALUES('EF_FROSTDIVER3','801',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_BASILICA2','802',0);
REPLACE INTO `const_db` VALUES('EF_RECOGNIZED','803',0);
REPLACE INTO `const_db` VALUES('EF_TETRA','804',0);
REPLACE INTO `const_db` VALUES('EF_TETRACASTING','805',0);
REPLACE INTO `const_db` VALUES('EF_FIREBALL3','806',0);
REPLACE INTO `const_db` VALUES('EF_INTIMIDATE3','807',0);
REPLACE INTO `const_db` VALUES('EF_RECOGNIZED2','808',0);
REPLACE INTO `const_db` VALUES('EF_CLOAKING3','809',0);
REPLACE INTO `const_db` VALUES('EF_INTIMIDATE4','810',0);
REPLACE INTO `const_db` VALUES('EF_STRETCH','811',0);
REPLACE INTO `const_db` VALUES('EF_BLACKBODY','812',0);
REPLACE INTO `const_db` VALUES('EF_ENERVATION','813',0);
REPLACE INTO `const_db` VALUES('EF_ENERVATION2','814',0);
REPLACE INTO `const_db` VALUES('EF_ENERVATION3','815',0);
REPLACE INTO `const_db` VALUES('EF_ENERVATION4','816',0);
REPLACE INTO `const_db` VALUES('EF_ENERVATION5','817',0);
REPLACE INTO `const_db` VALUES('EF_ENERVATION6','818',0);
REPLACE INTO `const_db` VALUES('EF_LINELINK4','819',0);
REPLACE INTO `const_db` VALUES('EF_RG_COIN5','820',0);
REPLACE INTO `const_db` VALUES('EF_WATERFALL_ANI','821',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_MANHOLE','822',0);
REPLACE INTO `const_db` VALUES('EF_MANHOLE','823',0);
REPLACE INTO `const_db` VALUES('EF_MAKEFEINT','824',0);
REPLACE INTO `const_db` VALUES('EF_FORESTLIGHT6','825',0);
REPLACE INTO `const_db` VALUES('EF_DARKCASTING2','826',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_ANI','827',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_MAELSTROM','828',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_BLOODYLUST','829',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL_N1','830',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL_N2','831',0);
REPLACE INTO `const_db` VALUES('EF_HEAL_N','832',0);
REPLACE INTO `const_db` VALUES('EF_CHOOKGI_N','833',0);
REPLACE INTO `const_db` VALUES('EF_JOBLVUP50_2','834',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICAL2DASH2','835',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICAL2DASH3','836',0);
REPLACE INTO `const_db` VALUES('EF_ROLLINGCAST','837',0);
REPLACE INTO `const_db` VALUES('EF_WATER_BELOW','838',0);
REPLACE INTO `const_db` VALUES('EF_WATER_FADE','839',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL_N3','840',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL_N4','841',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL_N5','842',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL_N6','843',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL_N7','844',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL_N8','845',0);
REPLACE INTO `const_db` VALUES('EF_WATER_SMOKE','846',0);
REPLACE INTO `const_db` VALUES('EF_DANCE1','847',0);
REPLACE INTO `const_db` VALUES('EF_DANCE2','848',0);
REPLACE INTO `const_db` VALUES('EF_LINKPARTICLE','849',0);
REPLACE INTO `const_db` VALUES('EF_SOULLIGHT2','850',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PARTICLE','851',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PARTICLE2','852',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PLANT','853',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICAL_V','854',0);
REPLACE INTO `const_db` VALUES('EF_SHOOTPARTICLE','855',0);
REPLACE INTO `const_db` VALUES('EF_BOT_REVERB','856',0);
REPLACE INTO `const_db` VALUES('EF_RAIN_PARTICLE','857',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICAL_V2','858',0);
REPLACE INTO `const_db` VALUES('EF_SECRA','859',0);
REPLACE INTO `const_db` VALUES('EF_BOT_REVERB2','860',0);
REPLACE INTO `const_db` VALUES('EF_CIRCLEPOWER2','861',0);
REPLACE INTO `const_db` VALUES('EF_SECRA2','862',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICAL_V3','863',0);
REPLACE INTO `const_db` VALUES('EF_ENERVATION7','864',0);
REPLACE INTO `const_db` VALUES('EF_CIRCLEPOWER3','865',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PLANT2','866',0);
REPLACE INTO `const_db` VALUES('EF_CIRCLEPOWER4','867',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PLANT3','868',0);
REPLACE INTO `const_db` VALUES('EF_RG_COIN6','869',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PLANT4','870',0);
REPLACE INTO `const_db` VALUES('EF_CIRCLEPOWER5','871',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PLANT5','872',0);
REPLACE INTO `const_db` VALUES('EF_CIRCLEPOWER6','873',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PLANT6','874',0);
REPLACE INTO `const_db` VALUES('EF_CIRCLEPOWER7','875',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PLANT7','876',0);
REPLACE INTO `const_db` VALUES('EF_CIRCLEPOWER8','877',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PLANT8','878',0);
REPLACE INTO `const_db` VALUES('EF_HEARTASURA','879',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL_150','880',0);
REPLACE INTO `const_db` VALUES('EF_LEVEL99_150','881',0);
REPLACE INTO `const_db` VALUES('EF_PRIMECHARGE','882',0);
REPLACE INTO `const_db` VALUES('EF_GLASSWALL4','883',0);
REPLACE INTO `const_db` VALUES('EF_GRADIUS_LASER','884',0);
REPLACE INTO `const_db` VALUES('EF_BASH3D6','885',0);
REPLACE INTO `const_db` VALUES('EF_GUMGANG5','886',0);
REPLACE INTO `const_db` VALUES('EF_HITLINE8','887',0);
REPLACE INTO `const_db` VALUES('EF_ELECTRIC4','888',0);
REPLACE INTO `const_db` VALUES('EF_TEIHIT1T','889',0);
REPLACE INTO `const_db` VALUES('EF_SPINMOVE','890',0);
REPLACE INTO `const_db` VALUES('EF_FIREBALL4','891',0);
REPLACE INTO `const_db` VALUES('EF_TRIPLEATTACK4','892',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICAL3S','893',0);
REPLACE INTO `const_db` VALUES('EF_GROUNDSHAKE','894',0);
REPLACE INTO `const_db` VALUES('EF_DQ9_CHARGE','895',0);
REPLACE INTO `const_db` VALUES('EF_DQ9_CHARGE2','896',0);
REPLACE INTO `const_db` VALUES('EF_DQ9_CHARGE3','897',0);
REPLACE INTO `const_db` VALUES('EF_DQ9_CHARGE4','898',0);
REPLACE INTO `const_db` VALUES('EF_BLUELINE','899',0);
REPLACE INTO `const_db` VALUES('EF_SELFSCROLL','900',0);
REPLACE INTO `const_db` VALUES('EF_SPR_LIGHTPRINT','901',0);
REPLACE INTO `const_db` VALUES('EF_PNG_TEST','902',0);
REPLACE INTO `const_db` VALUES('EF_BEGINSPELL_YB','903',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICAL2DASH4','904',0);
REPLACE INTO `const_db` VALUES('EF_GROUNDSHAKE2','905',0);
REPLACE INTO `const_db` VALUES('EF_PRESSURE2','906',0);
REPLACE INTO `const_db` VALUES('EF_RG_COIN7','907',0);
REPLACE INTO `const_db` VALUES('EF_PRIMECHARGE2','908',0);
REPLACE INTO `const_db` VALUES('EF_PRIMECHARGE3','909',0);
REPLACE INTO `const_db` VALUES('EF_PRIMECHARGE4','910',0);
REPLACE INTO `const_db` VALUES('EF_GREENCASTING','911',0);
REPLACE INTO `const_db` VALUES('EF_WALLOFTHORN','912',0);
REPLACE INTO `const_db` VALUES('EF_FIREBALL5','913',0);
REPLACE INTO `const_db` VALUES('EF_THROWITEM11','914',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PLANT9','915',0);
REPLACE INTO `const_db` VALUES('EF_DEMONICFIRE','916',0);
REPLACE INTO `const_db` VALUES('EF_DEMONICFIRE2','917',0);
REPLACE INTO `const_db` VALUES('EF_DEMONICFIRE3','918',0);
REPLACE INTO `const_db` VALUES('EF_HELLSPLANT','919',0);
REPLACE INTO `const_db` VALUES('EF_FIREWALL2','920',0);
REPLACE INTO `const_db` VALUES('EF_VACUUM','921',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PLANT10','922',0);
REPLACE INTO `const_db` VALUES('EF_SPR_LIGHTPRINT2','923',0);
REPLACE INTO `const_db` VALUES('EF_POISONSMOKE2','924',0);
REPLACE INTO `const_db` VALUES('EF_MAKEHALLU2','925',0);
REPLACE INTO `const_db` VALUES('EF_SHOCKWAVE2','926',0);
REPLACE INTO `const_db` VALUES('EF_SPR_PLANT11','927',0);
REPLACE INTO `const_db` VALUES('EF_COLDTHROW2','928',0);
REPLACE INTO `const_db` VALUES('EF_DEMONICFIRE4','929',0);
REPLACE INTO `const_db` VALUES('EF_PRESSURE3','930',0);
REPLACE INTO `const_db` VALUES('EF_LINKPARTICLE2','931',0);
REPLACE INTO `const_db` VALUES('EF_SOULLIGHT3','932',0);
REPLACE INTO `const_db` VALUES('EF_CHAREFFECT','933',0);
REPLACE INTO `const_db` VALUES('EF_GUMGANG6','934',0);
REPLACE INTO `const_db` VALUES('EF_FIREBALL6','935',0);
REPLACE INTO `const_db` VALUES('EF_GUMGANG7','936',0);
REPLACE INTO `const_db` VALUES('EF_GUMGANG8','937',0);
REPLACE INTO `const_db` VALUES('EF_GUMGANG9','938',0);
REPLACE INTO `const_db` VALUES('EF_BOTTOM_DE2','939',0);
REPLACE INTO `const_db` VALUES('EF_COLDSTATUS','940',0);
REPLACE INTO `const_db` VALUES('EF_SPR_LIGHTPRINT3','941',0);
REPLACE INTO `const_db` VALUES('EF_WATERBALL3','942',0);
REPLACE INTO `const_db` VALUES('EF_HEAL_N2','943',0);
REPLACE INTO `const_db` VALUES('EF_RAIN_PARTICLE2','944',0);
REPLACE INTO `const_db` VALUES('EF_CLOUD9','945',0);
REPLACE INTO `const_db` VALUES('EF_YELLOWFLY3','946',0);
REPLACE INTO `const_db` VALUES('EF_EL_GUST','947',0);
REPLACE INTO `const_db` VALUES('EF_EL_BLAST','948',0);
REPLACE INTO `const_db` VALUES('EF_EL_AQUAPLAY','949',0);
REPLACE INTO `const_db` VALUES('EF_EL_UPHEAVAL','950',0);
REPLACE INTO `const_db` VALUES('EF_EL_WILD_STORM','951',0);
REPLACE INTO `const_db` VALUES('EF_EL_CHILLY_AIR','952',0);
REPLACE INTO `const_db` VALUES('EF_EL_CURSED_SOIL','953',0);
REPLACE INTO `const_db` VALUES('EF_EL_COOLER','954',0);
REPLACE INTO `const_db` VALUES('EF_EL_TROPIC','955',0);
REPLACE INTO `const_db` VALUES('EF_EL_PYROTECHNIC','956',0);
REPLACE INTO `const_db` VALUES('EF_EL_PETROLOGY','957',0);
REPLACE INTO `const_db` VALUES('EF_EL_HEATER','958',0);
REPLACE INTO `const_db` VALUES('EF_POISON_MIST','959',0);
REPLACE INTO `const_db` VALUES('EF_ERASER_CUTTER','960',0);
REPLACE INTO `const_db` VALUES('EF_SILENT_BREEZE','961',0);
REPLACE INTO `const_db` VALUES('EF_MAGMA_FLOW','962',0);
REPLACE INTO `const_db` VALUES('EF_GRAYBODY','963',0);
REPLACE INTO `const_db` VALUES('EF_LAVA_SLIDE','964',0);
REPLACE INTO `const_db` VALUES('EF_SONIC_CLAW','965',0);
REPLACE INTO `const_db` VALUES('EF_TINDER_BREAKER','966',0);
REPLACE INTO `const_db` VALUES('EF_MIDNIGHT_FRENZY','967',0);
REPLACE INTO `const_db` VALUES('EF_MACRO','968',0);
REPLACE INTO `const_db` VALUES('EF_CHEMICAL_ALLRANGE','969',0);
REPLACE INTO `const_db` VALUES('EF_TETRA_FIRE','970',0);
REPLACE INTO `const_db` VALUES('EF_TETRA_WATER','971',0);
REPLACE INTO `const_db` VALUES('EF_TETRA_WIND','972',0);
REPLACE INTO `const_db` VALUES('EF_TETRA_GROUND','973',0);
REPLACE INTO `const_db` VALUES('EF_EMITTER','974',0);
REPLACE INTO `const_db` VALUES('EF_VOLCANIC_ASH','975',0);
REPLACE INTO `const_db` VALUES('EF_LEVEL99_ORB1','976',0);
REPLACE INTO `const_db` VALUES('EF_LEVEL99_ORB2','977',0);
REPLACE INTO `const_db` VALUES('EF_LEVEL150','978',0);
REPLACE INTO `const_db` VALUES('EF_LEVEL150_SUB','979',0);
REPLACE INTO `const_db` VALUES('EF_THROWITEM4_1','980',0);
REPLACE INTO `const_db` VALUES('EF_THROW_HAPPOKUNAI','981',0);
REPLACE INTO `const_db` VALUES('EF_THROW_MULTIPLE_COIN','982',0);
REPLACE INTO `const_db` VALUES('EF_THROW_BAKURETSU','983',0);
REPLACE INTO `const_db` VALUES('EF_ROTATE_HUUMARANKA','984',0);
REPLACE INTO `const_db` VALUES('EF_ROTATE_BG','985',0);
REPLACE INTO `const_db` VALUES('EF_ROTATE_LINE_GRAY','986',0);
REPLACE INTO `const_db` VALUES('EF_2011RWC','987',0);
REPLACE INTO `const_db` VALUES('EF_2011RWC2','988',0);
REPLACE INTO `const_db` VALUES('EF_KAIHOU','989',0);
REPLACE INTO `const_db` VALUES('EF_GROUND_EXPLOSION','990',0);
REPLACE INTO `const_db` VALUES('EF_KG_KAGEHUMI','991',0);
REPLACE INTO `const_db` VALUES('EF_KO_ZENKAI_WATER','992',0);
REPLACE INTO `const_db` VALUES('EF_KO_ZENKAI_LAND','993',0);
REPLACE INTO `const_db` VALUES('EF_KO_ZENKAI_FIRE','994',0);
REPLACE INTO `const_db` VALUES('EF_KO_ZENKAI_WIND','995',0);
REPLACE INTO `const_db` VALUES('EF_KO_JYUMONJIKIRI','996',0);
REPLACE INTO `const_db` VALUES('EF_KO_SETSUDAN','997',0);
REPLACE INTO `const_db` VALUES('EF_RED_CROSS','998',0);
REPLACE INTO `const_db` VALUES('EF_KO_IZAYOI','999',0);
REPLACE INTO `const_db` VALUES('EF_ROTATE_LINE_BLUE','1000',0);
REPLACE INTO `const_db` VALUES('EF_KG_KYOMU','1001',0);
REPLACE INTO `const_db` VALUES('EF_KO_HUUMARANKA','1002',0);
REPLACE INTO `const_db` VALUES('EF_BLUELIGHTBODY','1003',0);
REPLACE INTO `const_db` VALUES('EF_KAGEMUSYA','1004',0);
REPLACE INTO `const_db` VALUES('EF_OB_GENSOU','1005',0);
REPLACE INTO `const_db` VALUES('EF_NO100_FIRECRACKER','1006',0);
REPLACE INTO `const_db` VALUES('EF_KO_MAKIBISHI','1007',0);
REPLACE INTO `const_db` VALUES('EF_KAIHOU1','1008',0);
REPLACE INTO `const_db` VALUES('EF_AKAITSUKI','1009',0);
REPLACE INTO `const_db` VALUES('EF_ZANGETSU','1010',0);
REPLACE INTO `const_db` VALUES('EF_GENSOU','1011',0);
REPLACE INTO `const_db` VALUES('EF_HAT_EFFECT','1012',0);
REPLACE INTO `const_db` VALUES('EF_CHERRYBLOSSOM','1013',0);
REPLACE INTO `const_db` VALUES('EF_EVENT_CLOUD','1014',0);
REPLACE INTO `const_db` VALUES('EF_RUN_MAKE_OK','1015',0);
REPLACE INTO `const_db` VALUES('EF_RUN_MAKE_FAILURE','1016',0);
REPLACE INTO `const_db` VALUES('EF_MIRESULT_MAKE_OK','1017',0);
REPLACE INTO `const_db` VALUES('EF_MIRESULT_MAKE_FAIL','1018',0);
REPLACE INTO `const_db` VALUES('EF_ALL_RAY_OF_PROTECTION','1019',0);
REPLACE INTO `const_db` VALUES('EF_VENOMFOG','1020',0);
REPLACE INTO `const_db` VALUES('EF_DUSTSTORM','1021',0);
REPLACE INTO `const_db` VALUES('EF_GC_DARKCROW','1040',0);
REPLACE INTO `const_db` VALUES('EF_RK_DRAGONBREATH_WATER','1041',0);
REPLACE INTO `const_db` VALUES('EF_ALL_FULL_THROTTLE','1042',0);
REPLACE INTO `const_db` VALUES('EF_SR_FLASHCOMBO','1043',0);
REPLACE INTO `const_db` VALUES('EF_RK_LUXANIMA','1044',0);
REPLACE INTO `const_db` VALUES('EF_SO_ELEMENTAL_SHIELD','1046',0);
REPLACE INTO `const_db` VALUES('EF_AB_OFFERTORIUM','1047',0);
REPLACE INTO `const_db` VALUES('EF_WL_TELEKINESIS_INTENSE','1048',0);
REPLACE INTO `const_db` VALUES('EF_GN_ILLUSIONDOPING','1049',0);
REPLACE INTO `const_db` VALUES('EF_NC_MAGMA_ERUPTION','1050',0);
REPLACE INTO `const_db` VALUES('EF_LG_KINGS_GRACE','1051',0);
REPLACE INTO `const_db` VALUES('EF_BLOODDRAIN2','1052',0);
REPLACE INTO `const_db` VALUES('EF_NPC_WIDEWEB','1053',0);
REPLACE INTO `const_db` VALUES('EF_NPC_BURNT','1054',0);
REPLACE INTO `const_db` VALUES('EF_NPC_CHILL','1055',0);
REPLACE INTO `const_db` VALUES('EF_RA_UNLIMIT','1056',0);
REPLACE INTO `const_db` VALUES('EF_AB_OFFERTORIUM_RING','1057',0);
REPLACE INTO `const_db` VALUES('EF_SC_ESCAPE','1058',0);
REPLACE INTO `const_db` VALUES('EF_WM_FRIGG_SONG','1059',0);
REPLACE INTO `const_db` VALUES('EF_C_MAKER','1060',0);
REPLACE INTO `const_db` VALUES('EF_HAMMER_OF_GOD','1062',0);
REPLACE INTO `const_db` VALUES('EF_BANISHING_BUSTER','1066',0);
REPLACE INTO `const_db` VALUES('EF_SLUGSHOT','1067',0);
REPLACE INTO `const_db` VALUES('EF_D_TAIL','1068',0);
REPLACE INTO `const_db` VALUES('EF_S_STORM','1078',0);
REPLACE INTO `const_db` VALUES('WARPNPC','45',0);
REPLACE INTO `const_db` VALUES('1_ETC_01','46',0);
REPLACE INTO `const_db` VALUES('1_M_01','47',0);
REPLACE INTO `const_db` VALUES('1_M_02','48',0);
REPLACE INTO `const_db` VALUES('1_M_03','49',0);
REPLACE INTO `const_db` VALUES('1_M_04','50',0);
REPLACE INTO `const_db` VALUES('1_M_BARD','51',0);
REPLACE INTO `const_db` VALUES('1_M_HOF','52',0);
REPLACE INTO `const_db` VALUES('1_M_INNKEEPER','53',0);
REPLACE INTO `const_db` VALUES('1_M_JOBGUIDER','54',0);
REPLACE INTO `const_db` VALUES('1_M_JOBTESTER','55',0);
REPLACE INTO `const_db` VALUES('1_M_KNIGHTMASTER','56',0);
REPLACE INTO `const_db` VALUES('1_M_LIBRARYMASTER','57',0);
REPLACE INTO `const_db` VALUES('1_M_MERCHANT','58',0);
REPLACE INTO `const_db` VALUES('1_M_ORIENT01','59',0);
REPLACE INTO `const_db` VALUES('1_M_PASTOR','60',0);
REPLACE INTO `const_db` VALUES('1_M_PUBMASTER','61',0);
REPLACE INTO `const_db` VALUES('1_M_SIZ','62',0);
REPLACE INTO `const_db` VALUES('1_M_SMITH','63',0);
REPLACE INTO `const_db` VALUES('1_M_WIZARD','64',0);
REPLACE INTO `const_db` VALUES('1_M_YOUNGKNIGHT','65',0);
REPLACE INTO `const_db` VALUES('1_F_01','66',0);
REPLACE INTO `const_db` VALUES('1_F_02','67',0);
REPLACE INTO `const_db` VALUES('1_F_03','68',0);
REPLACE INTO `const_db` VALUES('1_F_04','69',0);
REPLACE INTO `const_db` VALUES('1_F_GYPSY','70',0);
REPLACE INTO `const_db` VALUES('1_F_LIBRARYGIRL','71',0);
REPLACE INTO `const_db` VALUES('1_F_MARIA','72',0);
REPLACE INTO `const_db` VALUES('1_F_MERCHANT_01','73',0);
REPLACE INTO `const_db` VALUES('1_F_MERCHANT_02','74',0);
REPLACE INTO `const_db` VALUES('1_F_ORIENT_01','75',0);
REPLACE INTO `const_db` VALUES('1_F_ORIENT_02','76',0);
REPLACE INTO `const_db` VALUES('1_F_ORIENT_03','77',0);
REPLACE INTO `const_db` VALUES('1_F_ORIENT_04','78',0);
REPLACE INTO `const_db` VALUES('1_F_PRIEST','79',0);
REPLACE INTO `const_db` VALUES('1_F_PUBGIRL','80',0);
REPLACE INTO `const_db` VALUES('4_DOG01','81',0);
REPLACE INTO `const_db` VALUES('4_KID01','82',0);
REPLACE INTO `const_db` VALUES('4_M_01','83',0);
REPLACE INTO `const_db` VALUES('4_M_02','84',0);
REPLACE INTO `const_db` VALUES('4_M_03','85',0);
REPLACE INTO `const_db` VALUES('4_M_04','86',0);
REPLACE INTO `const_db` VALUES('4_M_BARBER','87',0);
REPLACE INTO `const_db` VALUES('4_M_ORIENT01','88',0);
REPLACE INTO `const_db` VALUES('4_M_ORIENT02','89',0);
REPLACE INTO `const_db` VALUES('4_F_01','90',0);
REPLACE INTO `const_db` VALUES('4_F_02','91',0);
REPLACE INTO `const_db` VALUES('4_F_03','92',0);
REPLACE INTO `const_db` VALUES('4_F_04','93',0);
REPLACE INTO `const_db` VALUES('4_F_MAID','94',0);
REPLACE INTO `const_db` VALUES('4_F_SISTER','95',0);
REPLACE INTO `const_db` VALUES('4W_KID','96',0);
REPLACE INTO `const_db` VALUES('4W_M_01','97',0);
REPLACE INTO `const_db` VALUES('4W_M_02','98',0);
REPLACE INTO `const_db` VALUES('4W_M_03','99',0);
REPLACE INTO `const_db` VALUES('4W_SAILOR','100',0);
REPLACE INTO `const_db` VALUES('4W_F_01','101',0);
REPLACE INTO `const_db` VALUES('8_F','102',0);
REPLACE INTO `const_db` VALUES('8_F_GRANDMOTHER','103',0);
REPLACE INTO `const_db` VALUES('EFFECTLAUNCHER','104',0);
REPLACE INTO `const_db` VALUES('8W_SOLDIER','105',0);
REPLACE INTO `const_db` VALUES('1_M_MOC_LORD','106',0);
REPLACE INTO `const_db` VALUES('1_M_PAY_ELDER','107',0);
REPLACE INTO `const_db` VALUES('1_M_PRON_KING','108',0);
REPLACE INTO `const_db` VALUES('4_M_MANAGER','109',0);
REPLACE INTO `const_db` VALUES('4_M_MINISTER','110',0);
REPLACE INTO `const_db` VALUES('HIDDEN_NPC','111',0);
REPLACE INTO `const_db` VALUES('4_F_KAFRA6','112',0);
REPLACE INTO `const_db` VALUES('4_F_KAFRA5','113',0);
REPLACE INTO `const_db` VALUES('4_F_KAFRA4','114',0);
REPLACE INTO `const_db` VALUES('4_F_KAFRA3','115',0);
REPLACE INTO `const_db` VALUES('4_F_KAFRA2','116',0);
REPLACE INTO `const_db` VALUES('4_F_KAFRA1','117',0);
REPLACE INTO `const_db` VALUES('2_M_THIEFMASTER','118',0);
REPLACE INTO `const_db` VALUES('2_M_SWORDMASTER','119',0);
REPLACE INTO `const_db` VALUES('2_M_PHARMACIST','120',0);
REPLACE INTO `const_db` VALUES('2_M_MOLGENSTEIN','121',0);
REPLACE INTO `const_db` VALUES('2_M_DYEINGER','122',0);
REPLACE INTO `const_db` VALUES('2_F_MAGICMASTER','123',0);
REPLACE INTO `const_db` VALUES('4_F_TELEPORTER','124',0);
REPLACE INTO `const_db` VALUES('4_M_TELEPORTER','125',0);
REPLACE INTO `const_db` VALUES('HIDDEN_WARP_NPC','139',0);
REPLACE INTO `const_db` VALUES('4_M_MUT2','401',0);
REPLACE INTO `const_db` VALUES('4_M_SCIENCE','402',0);
REPLACE INTO `const_db` VALUES('4_F_VALKYRIE2','403',0);
REPLACE INTO `const_db` VALUES('4_M_UNCLEKNIGHT','404',0);
REPLACE INTO `const_db` VALUES('4_M_YOUNGKNIGHT','405',0);
REPLACE INTO `const_db` VALUES('2_MONEMUS','406',0);
REPLACE INTO `const_db` VALUES('4_M_ATEIL','407',0);
REPLACE INTO `const_db` VALUES('4_F_ANNIVERSARY','408',0);
REPLACE INTO `const_db` VALUES('4_M_GREATPO','409',0);
REPLACE INTO `const_db` VALUES('4_M_NOVELIST','410',0);
REPLACE INTO `const_db` VALUES('4_M_CHAMPSOUL','411',0);
REPLACE INTO `const_db` VALUES('4_M_OLDFRIAR','412',0);
REPLACE INTO `const_db` VALUES('4_M_CRU_SOLD','413',0);
REPLACE INTO `const_db` VALUES('4_M_CRU_KNT','414',0);
REPLACE INTO `const_db` VALUES('4_M_CRU_HEAD','415',0);
REPLACE INTO `const_db` VALUES('4_M_CRU_CRUA','416',0);
REPLACE INTO `const_db` VALUES('4_M_KY_SOLD','417',0);
REPLACE INTO `const_db` VALUES('4_M_KY_KNT','418',0);
REPLACE INTO `const_db` VALUES('4_M_KY_HEAD','419',0);
REPLACE INTO `const_db` VALUES('4_M_KY_KIYOM','420',0);
REPLACE INTO `const_db` VALUES('4_M_BOSSCAT','421',0);
REPLACE INTO `const_db` VALUES('4_M_BABYCAT','422',0);
REPLACE INTO `const_db` VALUES('4W_F_KAFRA2','423',0);
REPLACE INTO `const_db` VALUES('4_F_MUNAK','424',0);
REPLACE INTO `const_db` VALUES('4_M_BONGUN','425',0);
REPLACE INTO `const_db` VALUES('4_BEAR','426',0);
REPLACE INTO `const_db` VALUES('4_BLUEWOLF','427',0);
REPLACE INTO `const_db` VALUES('4_PECOPECO','428',0);
REPLACE INTO `const_db` VALUES('4_M_JP_MID','429',0);
REPLACE INTO `const_db` VALUES('4_M_JP_RUN','430',0);
REPLACE INTO `const_db` VALUES('4_ORCLADY','431',0);
REPLACE INTO `const_db` VALUES('4_ORCLADY2','432',0);
REPLACE INTO `const_db` VALUES('4_ORCWARRIOR','433',0);
REPLACE INTO `const_db` VALUES('4_ORCWARRIOR2','434',0);
REPLACE INTO `const_db` VALUES('4_F_FAIRY','435',0);
REPLACE INTO `const_db` VALUES('4_F_FAIRYKID','436',0);
REPLACE INTO `const_db` VALUES('4_F_FAIRYKID2','437',0);
REPLACE INTO `const_db` VALUES('4_F_FAIRYKID3','438',0);
REPLACE INTO `const_db` VALUES('4_F_FAIRYKID4','439',0);
REPLACE INTO `const_db` VALUES('4_F_FAIRYKID5','440',0);
REPLACE INTO `const_db` VALUES('4_F_FAIRYKID6','441',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYKID','442',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYKID2','443',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYKID3','444',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYKID4','445',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYKID5','446',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYSOLDIER','447',0);
REPLACE INTO `const_db` VALUES('4_M_TUFFOLD','448',0);
REPLACE INTO `const_db` VALUES('4_MAN_BENKUNI','449',0);
REPLACE INTO `const_db` VALUES('4_MAN_GALTUN','450',0);
REPLACE INTO `const_db` VALUES('4_MAN_JERUTOO','451',0);
REPLACE INTO `const_db` VALUES('4_MAN_LAVAIL','452',0);
REPLACE INTO `const_db` VALUES('4_MAN_NITT','453',0);
REPLACE INTO `const_db` VALUES('4_MAN_PIOM','454',0);
REPLACE INTO `const_db` VALUES('4_MAN_PIOM2','455',0);
REPLACE INTO `const_db` VALUES('4_M_DSTMAN','456',0);
REPLACE INTO `const_db` VALUES('4_M_DSTMANDEAD','457',0);
REPLACE INTO `const_db` VALUES('4_BABYLEOPARD','458',0);
REPLACE INTO `const_db` VALUES('4_M_REDSWORD','459',0);
REPLACE INTO `const_db` VALUES('4_MAN_PIOM3','460',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYSOLDIER2','461',0);
REPLACE INTO `const_db` VALUES('4_F_FAIRYSOLDIER','462',0);
REPLACE INTO `const_db` VALUES('4_DRAGON_EGG','463',0);
REPLACE INTO `const_db` VALUES('4_MIMIC','464',0);
REPLACE INTO `const_db` VALUES('4_F_FAIRY1','465',0);
REPLACE INTO `const_db` VALUES('4_F_GUILLOTINE','466',0);
REPLACE INTO `const_db` VALUES('4_M_GUILLOTINE','467',0);
REPLACE INTO `const_db` VALUES('4_M_KNIGHT_BLACK','468',0);
REPLACE INTO `const_db` VALUES('4_M_KNIGHT_GOLD','469',0);
REPLACE INTO `const_db` VALUES('4_M_KNIGHT_SILVER','470',0);
REPLACE INTO `const_db` VALUES('4_SKULL_MUD','471',0);
REPLACE INTO `const_db` VALUES('4_M_BRZ_INDIAN','472',0);
REPLACE INTO `const_db` VALUES('4_F_BRZ_INDIAN','473',0);
REPLACE INTO `const_db` VALUES('4_F_BRZ_INDOLD','474',0);
REPLACE INTO `const_db` VALUES('4_M_BRZ_JACI','475',0);
REPLACE INTO `const_db` VALUES('4_M_BRZ_MAN1','476',0);
REPLACE INTO `const_db` VALUES('4_M_BRZ_MAN2','477',0);
REPLACE INTO `const_db` VALUES('4_F_BRZ_WOMAN','478',0);
REPLACE INTO `const_db` VALUES('4_M_MINSTREL','479',0);
REPLACE INTO `const_db` VALUES('4_M_MINSTREL1','480',0);
REPLACE INTO `const_db` VALUES('4_M_SHADOWCHASER','481',0);
REPLACE INTO `const_db` VALUES('4_F_SHADOWCHASER','482',0);
REPLACE INTO `const_db` VALUES('4_M_SURA','483',0);
REPLACE INTO `const_db` VALUES('4_F_SURA','484',0);
REPLACE INTO `const_db` VALUES('4_F_WANDERER','485',0);
REPLACE INTO `const_db` VALUES('4_M_BARD','486',0);
REPLACE INTO `const_db` VALUES('1_FLAG_NOFEAR','487',0);
REPLACE INTO `const_db` VALUES('4_M_NOFEARGUY','488',0);
REPLACE INTO `const_db` VALUES('4_MAN_PIOM6','489',0);
REPLACE INTO `const_db` VALUES('4_MAN_PIOM4','490',0);
REPLACE INTO `const_db` VALUES('4_MAN_PIOM5','491',0);
REPLACE INTO `const_db` VALUES('4_MAN_GALTUN1','492',0);
REPLACE INTO `const_db` VALUES('4_HUMAN_GERUTOO','493',0);
REPLACE INTO `const_db` VALUES('4_M_ROKI','494',0);
REPLACE INTO `const_db` VALUES('4_M_MERCAT1','495',0);
REPLACE INTO `const_db` VALUES('4_M_MERCAT2','496',0);
REPLACE INTO `const_db` VALUES('4_M_CATMAN1','497',0);
REPLACE INTO `const_db` VALUES('4_M_CATMAN2','498',0);
REPLACE INTO `const_db` VALUES('4_F_BRZ_WOMAN2','499',0);
REPLACE INTO `const_db` VALUES('4_M_JP_DISH','500',0);
REPLACE INTO `const_db` VALUES('4_F_JP_NOAH','501',0);
REPLACE INTO `const_db` VALUES('4_F_JP_OZ','502',0);
REPLACE INTO `const_db` VALUES('4_F_JP_CHROME','503',0);
REPLACE INTO `const_db` VALUES('4_F_JP_RINNE','504',0);
REPLACE INTO `const_db` VALUES('4_WHITETIGER','505',0);
REPLACE INTO `const_db` VALUES('4_VENDING_MACHINE','506',0);
REPLACE INTO `const_db` VALUES('4_MISTY','507',0);
REPLACE INTO `const_db` VALUES('4_NECORING','508',0);
REPLACE INTO `const_db` VALUES('4_ELEPHANT','509',0);
REPLACE INTO `const_db` VALUES('4_F_NYDHOG','510',0);
REPLACE INTO `const_db` VALUES('4_F_NYDHOG2','511',0);
REPLACE INTO `const_db` VALUES('4_M_ROKI2','512',0);
REPLACE INTO `const_db` VALUES('4_M_DOGTRAVELER','513',0);
REPLACE INTO `const_db` VALUES('4_M_DOGTRAVELER2','514',0);
REPLACE INTO `const_db` VALUES('4_F_DOGTRAVELER','515',0);
REPLACE INTO `const_db` VALUES('4_M_RAFLE_GR','516',0);
REPLACE INTO `const_db` VALUES('4_M_RAFLE_OLD','517',0);
REPLACE INTO `const_db` VALUES('4_F_RAFLE_PK','518',0);
REPLACE INTO `const_db` VALUES('4_M_LYINGDOG','519',0);
REPLACE INTO `const_db` VALUES('4_F_MORAFINE1','520',0);
REPLACE INTO `const_db` VALUES('4_F_MORAFINE2','521',0);
REPLACE INTO `const_db` VALUES('4_M_RAFLE_OR','522',0);
REPLACE INTO `const_db` VALUES('4_F_RAFLE_YE','523',0);
REPLACE INTO `const_db` VALUES('4_M_RAFLE_VI','524',0);
REPLACE INTO `const_db` VALUES('4_F_RAFLE_VI','525',0);
REPLACE INTO `const_db` VALUES('4_M_ARDHA','526',0);
REPLACE INTO `const_db` VALUES('4_CREEPER','527',0);
REPLACE INTO `const_db` VALUES('JP_RUFAKU','528',0);
REPLACE INTO `const_db` VALUES('JP_SUPIKA','529',0);
REPLACE INTO `const_db` VALUES('JP_SABIKU','530',0);
REPLACE INTO `const_db` VALUES('JP_ARUGORU','531',0);
REPLACE INTO `const_db` VALUES('JP_ARUNA','532',0);
REPLACE INTO `const_db` VALUES('JP_AIRI','533',0);
REPLACE INTO `const_db` VALUES('4_M_DEWOLDMAN','534',0);
REPLACE INTO `const_db` VALUES('4_M_DEWOLDWOMAN','535',0);
REPLACE INTO `const_db` VALUES('4_M_DEWMAN','536',0);
REPLACE INTO `const_db` VALUES('4_M_DEWWOMAN','537',0);
REPLACE INTO `const_db` VALUES('4_M_DEWBOY','538',0);
REPLACE INTO `const_db` VALUES('4_M_DEWGIRL','539',0);
REPLACE INTO `const_db` VALUES('4_M_DEWZATICHIEF','540',0);
REPLACE INTO `const_db` VALUES('4_M_DEWZATIMAN','541',0);
REPLACE INTO `const_db` VALUES('4_M_ALCHE_E','542',0);
REPLACE INTO `const_db` VALUES('4_MASK_SMOKEY','543',0);
REPLACE INTO `const_db` VALUES('4_CAT_SAILOR1','544',0);
REPLACE INTO `const_db` VALUES('4_CAT_SAILOR2','545',0);
REPLACE INTO `const_db` VALUES('4_CAT_SAILOR3','546',0);
REPLACE INTO `const_db` VALUES('4_CAT_SAILOR4','547',0);
REPLACE INTO `const_db` VALUES('4_CAT_CHEF','548',0);
REPLACE INTO `const_db` VALUES('4_CAT_MERMASTER','549',0);
REPLACE INTO `const_db` VALUES('4_CRACK','550',0);
REPLACE INTO `const_db` VALUES('4_ASTER','551',0);
REPLACE INTO `const_db` VALUES('4_F_STARFISHGIRL','552',0);
REPLACE INTO `const_db` VALUES('4_CAT_DOWN','553',0);
REPLACE INTO `const_db` VALUES('4_CAT_REST','554',0);
REPLACE INTO `const_db` VALUES('4_CAT_3COLOR','555',0);
REPLACE INTO `const_db` VALUES('4_CAT_ADMIRAL','556',0);
REPLACE INTO `const_db` VALUES('4_SOIL','557',0);
REPLACE INTO `const_db` VALUES('4_F_ALCHE_A','558',0);
REPLACE INTO `const_db` VALUES('4_CAT_ADV1','559',0);
REPLACE INTO `const_db` VALUES('4_CAT_ADV2','560',0);
REPLACE INTO `const_db` VALUES('4_CAT_SAILOR5','561',0);
REPLACE INTO `const_db` VALUES('2_DROP_MACHINE','562',0);
REPLACE INTO `const_db` VALUES('2_SLOT_MACHINE','563',0);
REPLACE INTO `const_db` VALUES('2_VENDING_MACHINE1','564',0);
REPLACE INTO `const_db` VALUES('MOB_TOMB','565',0);
REPLACE INTO `const_db` VALUES('4_MYSTCASE','566',0);
REPLACE INTO `const_db` VALUES('4_M_SIT_NOVICE','567',0);
REPLACE INTO `const_db` VALUES('4_OCTOPUS_LEG','568',0);
REPLACE INTO `const_db` VALUES('4_F_NURSE','569',0);
REPLACE INTO `const_db` VALUES('4_MAL_SOLDIER','570',0);
REPLACE INTO `const_db` VALUES('4_MAL_CAPTAIN','571',0);
REPLACE INTO `const_db` VALUES('4_MAL_BUDIDAI','572',0);
REPLACE INTO `const_db` VALUES('4_M_MAYOR','573',0);
REPLACE INTO `const_db` VALUES('4_M_BARYO_OLD','574',0);
REPLACE INTO `const_db` VALUES('4_F_BARYO_OLD','575',0);
REPLACE INTO `const_db` VALUES('4_F_BARYO_GIRL','576',0);
REPLACE INTO `const_db` VALUES('4_M_BARYO_BOY','577',0);
REPLACE INTO `const_db` VALUES('4_M_BARYO_MAN','578',0);
REPLACE INTO `const_db` VALUES('4_F_BARYO_WOMAN','579',0);
REPLACE INTO `const_db` VALUES('4_BARYO_CHIEF','580',0);
REPLACE INTO `const_db` VALUES('4_MAL_KAFRA','581',0);
REPLACE INTO `const_db` VALUES('4_M_MALAYA','582',0);
REPLACE INTO `const_db` VALUES('4_F_MALAYA','583',0);
REPLACE INTO `const_db` VALUES('4_F_PATIENT','584',0);
REPLACE INTO `const_db` VALUES('4_M_PATIENT','585',0);
REPLACE INTO `const_db` VALUES('4_F_KR_TIGER','586',0);
REPLACE INTO `const_db` VALUES('4_M_KR_BOY','587',0);
REPLACE INTO `const_db` VALUES('4_M_KAGE_OLD','588',0);
REPLACE INTO `const_db` VALUES('4_WHIKEBAIN','589',0);
REPLACE INTO `const_db` VALUES('4_EREND','590',0);
REPLACE INTO `const_db` VALUES('4_RAWREL','591',0);
REPLACE INTO `const_db` VALUES('4_ARMAIA','592',0);
REPLACE INTO `const_db` VALUES('4_KAVAC','593',0);
REPLACE INTO `const_db` VALUES('4_YGNIZEM','594',0);
REPLACE INTO `const_db` VALUES('4_EREMES','595',0);
REPLACE INTO `const_db` VALUES('4_MAGALETA','596',0);
REPLACE INTO `const_db` VALUES('4_KATRINN','597',0);
REPLACE INTO `const_db` VALUES('4_SHECIL','598',0);
REPLACE INTO `const_db` VALUES('4_SEYREN','599',0);
REPLACE INTO `const_db` VALUES('4_HARWORD','600',0);
REPLACE INTO `const_db` VALUES('4_F_JP_CYNTHIA','601',0);
REPLACE INTO `const_db` VALUES('4_M_JP_GUSTON','602',0);
REPLACE INTO `const_db` VALUES('4_M_JP_BERKUT','603',0);
REPLACE INTO `const_db` VALUES('4_F_JP_DARK_ADELAIDE','604',0);
REPLACE INTO `const_db` VALUES('4_M_JP_DARK_DARIUS','605',0);
REPLACE INTO `const_db` VALUES('4_M_JP_JESTER','606',0);
REPLACE INTO `const_db` VALUES('XMAS_SMOKEY_B','607',0);
REPLACE INTO `const_db` VALUES('XMAS_SMOKEY_R','608',0);
REPLACE INTO `const_db` VALUES('XMAS_SMOKEY_Y','609',0);
REPLACE INTO `const_db` VALUES('4_F_CLOCKDOLL','610',0);
REPLACE INTO `const_db` VALUES('4_F_FAIRY2','611',0);
REPLACE INTO `const_db` VALUES('4_F_PINKWOMAN','612',0);
REPLACE INTO `const_db` VALUES('4_FAIRYDEADLEAF','613',0);
REPLACE INTO `const_db` VALUES('4_FROG','614',0);
REPLACE INTO `const_db` VALUES('4_M_BLACKMAN','615',0);
REPLACE INTO `const_db` VALUES('4_M_BLUEMAN','616',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYANG','617',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYAVANT','618',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYFREAK','619',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYKID6','620',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYSCHOLAR','621',0);
REPLACE INTO `const_db` VALUES('4_M_FAIRYSCHOLAR_DIRTY','622',0);
REPLACE INTO `const_db` VALUES('4_M_FARIY_HISIE','623',0);
REPLACE INTO `const_db` VALUES('4_M_FARIYKING','624',0);
REPLACE INTO `const_db` VALUES('4_M_NEWOZ','625',0);
REPLACE INTO `const_db` VALUES('4_M_OLIVER','626',0);
REPLACE INTO `const_db` VALUES('4_M_PROFESSORWORM','627',0);
REPLACE INTO `const_db` VALUES('4_M_REDMAN','628',0);
REPLACE INTO `const_db` VALUES('4_F_GELKA','629',0);
REPLACE INTO `const_db` VALUES('4_M_ROTERT','630',0);
REPLACE INTO `const_db` VALUES('4_BLACKDRAGON','631',0);
REPLACE INTO `const_db` VALUES('4_M_GUNSLINGER','632',0);
REPLACE INTO `const_db` VALUES('4_F_GUNSLINGER','633',0);
REPLACE INTO `const_db` VALUES('4_M_ARCHER','634',0);
REPLACE INTO `const_db` VALUES('4_M_SWORDMAN','635',0);
REPLACE INTO `const_db` VALUES('4_M_NINJA_RED','636',0);
REPLACE INTO `const_db` VALUES('4_M_NINJA_BLUE','637',0);
REPLACE INTO `const_db` VALUES('4_M_THIEF_RUMIN','638',0);
REPLACE INTO `const_db` VALUES('4_M_NOV_RUMIN','639',0);
REPLACE INTO `const_db` VALUES('4_F_MAYSEL','640',0);
REPLACE INTO `const_db` VALUES('4_F_ACOLYTE','641',0);
REPLACE INTO `const_db` VALUES('4_M_NOV_HUNT','642',0);
REPLACE INTO `const_db` VALUES('4_F_GENETIC','643',0);
REPLACE INTO `const_db` VALUES('4_F_TAEKWON','644',0);
REPLACE INTO `const_db` VALUES('4_F_SWORDMAN','645',0);
REPLACE INTO `const_db` VALUES('4_F_IU','646',0);
REPLACE INTO `const_db` VALUES('4_M_RAGI','647',0);
REPLACE INTO `const_db` VALUES('4_M_MELODY','648',0);
REPLACE INTO `const_db` VALUES('4_TRACE','649',0);
REPLACE INTO `const_db` VALUES('4_F_HIMEL','650',0);
REPLACE INTO `const_db` VALUES('4_LEVITATEMAN','651',0);
REPLACE INTO `const_db` VALUES('4_M_HEINRICH','652',0);
REPLACE INTO `const_db` VALUES('4_M_ROYALGUARD','653',0);
REPLACE INTO `const_db` VALUES('4_M_BARMUND','654',0);
REPLACE INTO `const_db` VALUES('4_F_KHALITZBURG','655',0);
REPLACE INTO `const_db` VALUES('4_F_HIMEL2','656',0);
REPLACE INTO `const_db` VALUES('4_WHITEKNIGHT','657',0);
REPLACE INTO `const_db` VALUES('4_COCO','658',0);
REPLACE INTO `const_db` VALUES('4_M_ALADDIN','659',0);
REPLACE INTO `const_db` VALUES('4_M_GENIE','660',0);
REPLACE INTO `const_db` VALUES('4_F_GENIE','661',0);
REPLACE INTO `const_db` VALUES('4_JP_MID_SWIM','662',0);
REPLACE INTO `const_db` VALUES('4_JP_RUNE_SWIM','663',0);
REPLACE INTO `const_db` VALUES('4_F_FENRIR','664',0);
REPLACE INTO `const_db` VALUES('4_F_GEFFEN_FAY','665',0);
REPLACE INTO `const_db` VALUES('4_F_IRIS','666',0);
REPLACE INTO `const_db` VALUES('4_F_LUCILE','667',0);
REPLACE INTO `const_db` VALUES('4_F_SARAH_BABY','668',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_01','669',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_02','670',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_03','671',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_04','672',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_05','673',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_06','674',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_07','675',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_08','676',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_09','677',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_10','678',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_11','679',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_12','680',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_13','681',0);
REPLACE INTO `const_db` VALUES('4_GEFFEN_14','682',0);
REPLACE INTO `const_db` VALUES('4_M_CHAOS','683',0);
REPLACE INTO `const_db` VALUES('4_M_CHIEF_IRIN','684',0);
REPLACE INTO `const_db` VALUES('4_M_SAKRAY','685',0);
REPLACE INTO `const_db` VALUES('4_M_SAKRAYROYAL','686',0);
REPLACE INTO `const_db` VALUES('4_TOWER_01','687',0);
REPLACE INTO `const_db` VALUES('4_TOWER_02','688',0);
REPLACE INTO `const_db` VALUES('4_TOWER_03','689',0);
REPLACE INTO `const_db` VALUES('4_TOWER_04','690',0);
REPLACE INTO `const_db` VALUES('4_TOWER_05','691',0);
REPLACE INTO `const_db` VALUES('4_TOWER_06','692',0);
REPLACE INTO `const_db` VALUES('4_TOWER_07','693',0);
REPLACE INTO `const_db` VALUES('4_TOWER_08','694',0);
REPLACE INTO `const_db` VALUES('4_TOWER_09','695',0);
REPLACE INTO `const_db` VALUES('4_TOWER_10','696',0);
REPLACE INTO `const_db` VALUES('4_TOWER_11','697',0);
REPLACE INTO `const_db` VALUES('4_TOWER_12','698',0);
REPLACE INTO `const_db` VALUES('4_TOWER_13','699',0);
REPLACE INTO `const_db` VALUES('8_F_GIRL','700',0);
REPLACE INTO `const_db` VALUES('4_F_GODEMOM','701',0);
REPLACE INTO `const_db` VALUES('4_F_GON','702',0);
REPLACE INTO `const_db` VALUES('4_F_KID2','703',0);
REPLACE INTO `const_db` VALUES('4_M_BIBI','704',0);
REPLACE INTO `const_db` VALUES('4_M_GEF_SOLDIER','705',0);
REPLACE INTO `const_db` VALUES('4_M_KID1','706',0);
REPLACE INTO `const_db` VALUES('4_M_MOC_SOLDIER','707',0);
REPLACE INTO `const_db` VALUES('4_M_PAY_SOLDIER','708',0);
REPLACE INTO `const_db` VALUES('4_M_SEAMAN','709',0);
REPLACE INTO `const_db` VALUES('4_M_SNOWMAN','710',0);
REPLACE INTO `const_db` VALUES('4_F_05','711',0);
REPLACE INTO `const_db` VALUES('4_M_05','712',0);
REPLACE INTO `const_db` VALUES('4_M_06','713',0);
REPLACE INTO `const_db` VALUES('4_F_06','714',0);
REPLACE INTO `const_db` VALUES('4_M_PIERROT','715',0);
REPLACE INTO `const_db` VALUES('4_M_KID2','716',0);
REPLACE INTO `const_db` VALUES('4_F_KID3','717',0);
REPLACE INTO `const_db` VALUES('4_M_SANTA','718',0);
REPLACE INTO `const_db` VALUES('4_F_NACORURI','719',0);
REPLACE INTO `const_db` VALUES('4_F_SHAMAN','720',0);
REPLACE INTO `const_db` VALUES('4_F_KAFRA7','721',0);
REPLACE INTO `const_db` VALUES('GUILD_FLAG','722',0);
REPLACE INTO `const_db` VALUES('1_SHADOW_NPC','723',0);
REPLACE INTO `const_db` VALUES('4_F_07','724',0);
REPLACE INTO `const_db` VALUES('4_F_JOB_ASSASSIN','725',0);
REPLACE INTO `const_db` VALUES('4_F_JOB_BLACKSMITH','726',0);
REPLACE INTO `const_db` VALUES('4_F_JOB_HUNTER','727',0);
REPLACE INTO `const_db` VALUES('4_F_JOB_KNIGHT','728',0);
REPLACE INTO `const_db` VALUES('4_F_NOVICE','729',0);
REPLACE INTO `const_db` VALUES('4_M_JOB_ASSASSIN','730',0);
REPLACE INTO `const_db` VALUES('4_M_JOB_BLACKSMITH','731',0);
REPLACE INTO `const_db` VALUES('4_M_JOB_HUNTER','732',0);
REPLACE INTO `const_db` VALUES('4_M_JOB_KNIGHT1','733',0);
REPLACE INTO `const_db` VALUES('4_M_JOB_KNIGHT2','734',0);
REPLACE INTO `const_db` VALUES('4_M_JOB_WIZARD','735',0);
REPLACE INTO `const_db` VALUES('4_BAPHOMET','736',0);
REPLACE INTO `const_db` VALUES('4_DARKLORD','737',0);
REPLACE INTO `const_db` VALUES('4_DEVIRUCHI','738',0);
REPLACE INTO `const_db` VALUES('8_DOPPEL','739',0);
REPLACE INTO `const_db` VALUES('2_M_ALCHE','740',0);
REPLACE INTO `const_db` VALUES('2_M_BARD_ORIENT','741',0);
REPLACE INTO `const_db` VALUES('2_M_SAGE_B','742',0);
REPLACE INTO `const_db` VALUES('2_M_SAGE_OLD','743',0);
REPLACE INTO `const_db` VALUES('4_F_ALCHE','744',0);
REPLACE INTO `const_db` VALUES('4_F_CRU','745',0);
REPLACE INTO `const_db` VALUES('4_F_MONK','746',0);
REPLACE INTO `const_db` VALUES('4_F_ROGUE','747',0);
REPLACE INTO `const_db` VALUES('4_M_ALCHE_A','748',0);
REPLACE INTO `const_db` VALUES('4_M_ALCHE_B','749',0);
REPLACE INTO `const_db` VALUES('4_M_ALCHE_C','750',0);
REPLACE INTO `const_db` VALUES('4_M_CRU','751',0);
REPLACE INTO `const_db` VALUES('4_M_CRU_OLD','752',0);
REPLACE INTO `const_db` VALUES('4_M_MONK','753',0);
REPLACE INTO `const_db` VALUES('4_M_SAGE_A','754',0);
REPLACE INTO `const_db` VALUES('4_M_SAGE_C','755',0);
REPLACE INTO `const_db` VALUES('4_F_SON','756',0);
REPLACE INTO `const_db` VALUES('4_F_JPN2','757',0);
REPLACE INTO `const_db` VALUES('4_F_JPN','758',0);
REPLACE INTO `const_db` VALUES('4_F_JPNCHIBI','759',0);
REPLACE INTO `const_db` VALUES('4_F_JPNOBA2','760',0);
REPLACE INTO `const_db` VALUES('4_F_JPNOBA','761',0);
REPLACE INTO `const_db` VALUES('4_M_JPN2','762',0);
REPLACE INTO `const_db` VALUES('4_M_JPN','763',0);
REPLACE INTO `const_db` VALUES('4_M_JPNCHIBI','764',0);
REPLACE INTO `const_db` VALUES('4_M_JPNOJI2','765',0);
REPLACE INTO `const_db` VALUES('4_M_JPNOJI','766',0);
REPLACE INTO `const_db` VALUES('8_M_JPNSOLDIER','767',0);
REPLACE INTO `const_db` VALUES('8_M_JPNMASTER','768',0);
REPLACE INTO `const_db` VALUES('4_F_JPNMU','769',0);
REPLACE INTO `const_db` VALUES('4_F_TWGIRL','770',0);
REPLACE INTO `const_db` VALUES('4_F_TWGRANDMOM','771',0);
REPLACE INTO `const_db` VALUES('4_F_TWMASKGIRL','772',0);
REPLACE INTO `const_db` VALUES('4_F_TWMIDWOMAN','773',0);
REPLACE INTO `const_db` VALUES('4_M_TWBOY','774',0);
REPLACE INTO `const_db` VALUES('4_M_TWMASKMAN','775',0);
REPLACE INTO `const_db` VALUES('4_M_TWMIDMAN','776',0);
REPLACE INTO `const_db` VALUES('4_M_TWOLDMAN','777',0);
REPLACE INTO `const_db` VALUES('4_M_TWTEAMAN','778',0);
REPLACE INTO `const_db` VALUES('4_M_YOYOROGUE','779',0);
REPLACE INTO `const_db` VALUES('8_M_TWSOLDIER','780',0);
REPLACE INTO `const_db` VALUES('4_F_UMGIRL','781',0);
REPLACE INTO `const_db` VALUES('4_F_UMOLDWOMAN','782',0);
REPLACE INTO `const_db` VALUES('4_F_UMWOMAN','783',0);
REPLACE INTO `const_db` VALUES('4_M_UMCHIEF','784',0);
REPLACE INTO `const_db` VALUES('4_M_UMDANCEKID2','785',0);
REPLACE INTO `const_db` VALUES('4_M_UMDANCEKID','786',0);
REPLACE INTO `const_db` VALUES('4_M_UMKID','787',0);
REPLACE INTO `const_db` VALUES('4_M_UMOLDMAN','788',0);
REPLACE INTO `const_db` VALUES('4_M_UMSOLDIER','789',0);
REPLACE INTO `const_db` VALUES('4_M_SALVATION','790',0);
REPLACE INTO `const_db` VALUES('4_F_NFDEADKAFRA','791',0);
REPLACE INTO `const_db` VALUES('4_F_NFDEADMGCIAN','792',0);
REPLACE INTO `const_db` VALUES('4_F_NFLOSTGIRL','793',0);
REPLACE INTO `const_db` VALUES('4_M_NFDEADMAN2','794',0);
REPLACE INTO `const_db` VALUES('4_M_NFDEADMAN','795',0);
REPLACE INTO `const_db` VALUES('4_M_NFDEADSWDMAN','796',0);
REPLACE INTO `const_db` VALUES('4_M_NFLOSTMAN','797',0);
REPLACE INTO `const_db` VALUES('4_M_NFMAN','798',0);
REPLACE INTO `const_db` VALUES('4_NFBAT','799',0);
REPLACE INTO `const_db` VALUES('4_NFCOCK','800',0);
REPLACE INTO `const_db` VALUES('4_NFCOFFIN','801',0);
REPLACE INTO `const_db` VALUES('4_NFWISP','802',0);
REPLACE INTO `const_db` VALUES('1_F_SIGNZISK','803',0);
REPLACE INTO `const_db` VALUES('1_M_SIGN1','804',0);
REPLACE INTO `const_db` VALUES('1_M_SIGNALCHE','805',0);
REPLACE INTO `const_db` VALUES('1_M_SIGNART','806',0);
REPLACE INTO `const_db` VALUES('1_M_SIGNMCNT','807',0);
REPLACE INTO `const_db` VALUES('1_M_SIGNMONK2','808',0);
REPLACE INTO `const_db` VALUES('1_M_SIGNMONK','809',0);
REPLACE INTO `const_db` VALUES('1_M_SIGNROGUE','810',0);
REPLACE INTO `const_db` VALUES('4_F_VALKYRIE','811',0);
REPLACE INTO `const_db` VALUES('TW_TOWER','812',0);
REPLACE INTO `const_db` VALUES('2_M_OLDBLSMITH','813',0);
REPLACE INTO `const_db` VALUES('4_F_CHNDOCTOR','814',0);
REPLACE INTO `const_db` VALUES('4_F_CHNDRESS1','815',0);
REPLACE INTO `const_db` VALUES('4_F_CHNDRESS2','816',0);
REPLACE INTO `const_db` VALUES('4_F_CHNDRESS3','817',0);
REPLACE INTO `const_db` VALUES('4_F_CHNWOMAN','818',0);
REPLACE INTO `const_db` VALUES('4_M_CHN8GUEK','819',0);
REPLACE INTO `const_db` VALUES('4_M_CHNCOOK','820',0);
REPLACE INTO `const_db` VALUES('4_M_CHNGENERL','821',0);
REPLACE INTO `const_db` VALUES('4_M_CHNMAN','822',0);
REPLACE INTO `const_db` VALUES('4_M_CHNMONK','823',0);
REPLACE INTO `const_db` VALUES('4_M_CHNOLD','824',0);
REPLACE INTO `const_db` VALUES('4_M_CHNSOLDIER','825',0);
REPLACE INTO `const_db` VALUES('4_M_DWARF','826',0);
REPLACE INTO `const_db` VALUES('4_M_GRANDMONK','827',0);
REPLACE INTO `const_db` VALUES('4_M_ROGUE','828',0);
REPLACE INTO `const_db` VALUES('4_M_DOMINO','829',0);
REPLACE INTO `const_db` VALUES('4_F_DOMINO','830',0);
REPLACE INTO `const_db` VALUES('4_F_ZONDAGIRL','831',0);
REPLACE INTO `const_db` VALUES('4_M_REIDIN_KURS','832',0);
REPLACE INTO `const_db` VALUES('4_M_ZONDAOYAJI','833',0);
REPLACE INTO `const_db` VALUES('4_M_BUDDHIST','834',0);
REPLACE INTO `const_db` VALUES('2_BOARD1','835',0);
REPLACE INTO `const_db` VALUES('2_BOARD2','836',0);
REPLACE INTO `const_db` VALUES('2_BULLETIN_BOARD','837',0);
REPLACE INTO `const_db` VALUES('4_F_THAIAYO','838',0);
REPLACE INTO `const_db` VALUES('4_F_THAIGIRL','839',0);
REPLACE INTO `const_db` VALUES('4_F_THAISHAMAN','840',0);
REPLACE INTO `const_db` VALUES('4_M_THAIAYO','841',0);
REPLACE INTO `const_db` VALUES('4_M_THAIOLD','842',0);
REPLACE INTO `const_db` VALUES('4_M_THAIONGBAK','843',0);
REPLACE INTO `const_db` VALUES('CLEAR_NPC','844',0);
REPLACE INTO `const_db` VALUES('4_F_RACING','845',0);
REPLACE INTO `const_db` VALUES('4_F_EINOLD','846',0);
REPLACE INTO `const_db` VALUES('4_M_EINOLD','847',0);
REPLACE INTO `const_db` VALUES('4_M_EINMINER','848',0);
REPLACE INTO `const_db` VALUES('4_M_DIEMAN','849',0);
REPLACE INTO `const_db` VALUES('4_F_EINWOMAN','850',0);
REPLACE INTO `const_db` VALUES('4_M_REPAIR','851',0);
REPLACE INTO `const_db` VALUES('4_M_EIN_SOLDIER','852',0);
REPLACE INTO `const_db` VALUES('4_M_YURI','853',0);
REPLACE INTO `const_db` VALUES('4_M_EINMAN2','854',0);
REPLACE INTO `const_db` VALUES('4_M_EINMAN','855',0);
REPLACE INTO `const_db` VALUES('2_F_SIGN1','856',0);
REPLACE INTO `const_db` VALUES('4_BOARD3','857',0);
REPLACE INTO `const_db` VALUES('4_BULLETIN_BOARD2','858',0);
REPLACE INTO `const_db` VALUES('4_F_AGENTKAFRA','859',0);
REPLACE INTO `const_db` VALUES('4_F_KAFRA8','860',0);
REPLACE INTO `const_db` VALUES('4_F_KAFRA9','861',0);
REPLACE INTO `const_db` VALUES('4_F_LGTGIRL','862',0);
REPLACE INTO `const_db` VALUES('4_F_LGTGRAND','863',0);
REPLACE INTO `const_db` VALUES('4_F_OPERATION','864',0);
REPLACE INTO `const_db` VALUES('4_LGTSCIENCE','865',0);
REPLACE INTO `const_db` VALUES('4_M_LGTGRAND','866',0);
REPLACE INTO `const_db` VALUES('4_M_LGTGUARD2','867',0);
REPLACE INTO `const_db` VALUES('4_M_LGTGUARD','868',0);
REPLACE INTO `const_db` VALUES('4_M_LGTMAN','869',0);
REPLACE INTO `const_db` VALUES('4_M_LGTPOOR','870',0);
REPLACE INTO `const_db` VALUES('4_M_OPERATION','871',0);
REPLACE INTO `const_db` VALUES('4_M_PRESIDENT','872',0);
REPLACE INTO `const_db` VALUES('4_M_REINDEER','873',0);
REPLACE INTO `const_db` VALUES('4_M_ZONDAMAN','874',0);
REPLACE INTO `const_db` VALUES('4_M_PECOKNIGHT','875',0);
REPLACE INTO `const_db` VALUES('4_CAT','876',0);
REPLACE INTO `const_db` VALUES('4_F_YUNYANG','877',0);
REPLACE INTO `const_db` VALUES('4_M_OILMAN','878',0);
REPLACE INTO `const_db` VALUES('4_F_CAPEGIRL','879',0);
REPLACE INTO `const_db` VALUES('4_M_MASKMAN','880',0);
REPLACE INTO `const_db` VALUES('4_M_SITDOWN','881',0);
REPLACE INTO `const_db` VALUES('4_F_SITDOWN','882',0);
REPLACE INTO `const_db` VALUES('4_M_ALCHE_D','883',0);
REPLACE INTO `const_db` VALUES('4_M_ACROSS','884',0);
REPLACE INTO `const_db` VALUES('4_F_ACROSS','885',0);
REPLACE INTO `const_db` VALUES('4_COOK','886',0);
REPLACE INTO `const_db` VALUES('4_M_LIEMAN','887',0);
REPLACE INTO `const_db` VALUES('2_POSTBOX','888',0);
REPLACE INTO `const_db` VALUES('4_BULL','889',0);
REPLACE INTO `const_db` VALUES('4_LAM','890',0);
REPLACE INTO `const_db` VALUES('4_F_HUGIRL','891',0);
REPLACE INTO `const_db` VALUES('4_F_HUGRANMA','892',0);
REPLACE INTO `const_db` VALUES('4_F_HUWOMAN','893',0);
REPLACE INTO `const_db` VALUES('4_F_KHELLISIA','894',0);
REPLACE INTO `const_db` VALUES('4_F_KHELLY','895',0);
REPLACE INTO `const_db` VALUES('4_M_HUBOY','896',0);
REPLACE INTO `const_db` VALUES('4_M_HUGRANFA','897',0);
REPLACE INTO `const_db` VALUES('4_M_HUMAN_01','898',0);
REPLACE INTO `const_db` VALUES('4_M_HUMAN_02','899',0);
REPLACE INTO `const_db` VALUES('4_M_HUMERCHANT','900',0);
REPLACE INTO `const_db` VALUES('4_M_HUOLDARMY','901',0);
REPLACE INTO `const_db` VALUES('4_M_KHKIEL','902',0);
REPLACE INTO `const_db` VALUES('4_M_KHKYEL','903',0);
REPLACE INTO `const_db` VALUES('4_M_KHMAN','904',0);
REPLACE INTO `const_db` VALUES('4_F_KHWOMAN','905',0);
REPLACE INTO `const_db` VALUES('4_F_KHGIRL','906',0);
REPLACE INTO `const_db` VALUES('4_M_KHBOY','907',0);
REPLACE INTO `const_db` VALUES('4_M_PHILMAN','908',0);
REPLACE INTO `const_db` VALUES('4_PORING','909',0);
REPLACE INTO `const_db` VALUES('2_COLAVEND','910',0);
REPLACE INTO `const_db` VALUES('4_F_SOCCER','911',0);
REPLACE INTO `const_db` VALUES('4_M_SOCCER7','912',0);
REPLACE INTO `const_db` VALUES('4_M_SOCCER9','913',0);
REPLACE INTO `const_db` VALUES('4_F_CHILD','914',0);
REPLACE INTO `const_db` VALUES('4_F_MADAME','915',0);
REPLACE INTO `const_db` VALUES('4_F_MASK1','916',0);
REPLACE INTO `const_db` VALUES('4_F_MASK','917',0);
REPLACE INTO `const_db` VALUES('4_F_RACHOLD','918',0);
REPLACE INTO `const_db` VALUES('4_F_SHABBY','919',0);
REPLACE INTO `const_db` VALUES('4_F_TRAINEE','920',0);
REPLACE INTO `const_db` VALUES('4_M_CHILD1','921',0);
REPLACE INTO `const_db` VALUES('4_M_CHILD','922',0);
REPLACE INTO `const_db` VALUES('4_M_DOCTOR','923',0);
REPLACE INTO `const_db` VALUES('4_M_FROZEN1','924',0);
REPLACE INTO `const_db` VALUES('4_M_FROZEN','925',0);
REPLACE INTO `const_db` VALUES('4_M_MASK1','926',0);
REPLACE INTO `const_db` VALUES('4_M_MASK','927',0);
REPLACE INTO `const_db` VALUES('4_M_MIDDLE1','928',0);
REPLACE INTO `const_db` VALUES('4_M_MIDDLE','929',0);
REPLACE INTO `const_db` VALUES('4_M_RACHMAN2','930',0);
REPLACE INTO `const_db` VALUES('4_M_RACHMAN1','931',0);
REPLACE INTO `const_db` VALUES('4_M_RACHOLD1','932',0);
REPLACE INTO `const_db` VALUES('4_M_RACHOLD','933',0);
REPLACE INTO `const_db` VALUES('4_M_RASWORD','934',0);
REPLACE INTO `const_db` VALUES('4_M_TRAINEE','935',0);
REPLACE INTO `const_db` VALUES('4_F_ARUNA_POP','936',0);
REPLACE INTO `const_db` VALUES('4_M_ARUNA_NFM1','937',0);
REPLACE INTO `const_db` VALUES('4_DST_CAMEL','938',0);
REPLACE INTO `const_db` VALUES('4_DST_SOLDIER','939',0);
REPLACE INTO `const_db` VALUES('4_F_DESERT','940',0);
REPLACE INTO `const_db` VALUES('4_F_DST_CHILD','941',0);
REPLACE INTO `const_db` VALUES('4_F_DST_GRAND','942',0);
REPLACE INTO `const_db` VALUES('4_M_DESERT','943',0);
REPLACE INTO `const_db` VALUES('4_M_DST_CHILD','944',0);
REPLACE INTO `const_db` VALUES('4_M_DST_GRAND','945',0);
REPLACE INTO `const_db` VALUES('4_M_DST_MASTER','946',0);
REPLACE INTO `const_db` VALUES('4_M_DST_TOUGH','947',0);
REPLACE INTO `const_db` VALUES('4_ANGELING','948',0);
REPLACE INTO `const_db` VALUES('4_ARCHANGELING','949',0);
REPLACE INTO `const_db` VALUES('4_GHOSTRING','950',0);
REPLACE INTO `const_db` VALUES('4_F_EDEN_MASTER','951',0);
REPLACE INTO `const_db` VALUES('4_F_EDEN_OFFICER','952',0);
REPLACE INTO `const_db` VALUES('4_M_EDEN_GUARDER','953',0);
REPLACE INTO `const_db` VALUES('4_M_PATRICK','954',0);
REPLACE INTO `const_db` VALUES('4_DONKEY','955',0);
REPLACE INTO `const_db` VALUES('4_M_TRISTAN','956',0);
REPLACE INTO `const_db` VALUES('4_WHITE_COW','957',0);
REPLACE INTO `const_db` VALUES('4_F_RUSCHILD','958',0);
REPLACE INTO `const_db` VALUES('4_F_RUSWOMAN1','959',0);
REPLACE INTO `const_db` VALUES('4_F_RUSWOMAN2','960',0);
REPLACE INTO `const_db` VALUES('4_F_RUSWOMAN3','961',0);
REPLACE INTO `const_db` VALUES('4_M_RUSCHILD','962',0);
REPLACE INTO `const_db` VALUES('4_M_GUSLIMAN','963',0);
REPLACE INTO `const_db` VALUES('4_M_RUSBALD','964',0);
REPLACE INTO `const_db` VALUES('4_M_RUSKING','965',0);
REPLACE INTO `const_db` VALUES('4_M_RUSKNIGHT','966',0);
REPLACE INTO `const_db` VALUES('4_M_RUSMAN1','967',0);
REPLACE INTO `const_db` VALUES('4_M_RUSMAN2','968',0);
REPLACE INTO `const_db` VALUES('4_M_DRAKE','969',0);
REPLACE INTO `const_db` VALUES('4_F_BABAYAGA','970',0);
REPLACE INTO `const_db` VALUES('4_F_RUSGREEN','971',0);
REPLACE INTO `const_db` VALUES('4_RUS_DWOLF','972',0);
REPLACE INTO `const_db` VALUES('1_FLAG_LION','973',0);
REPLACE INTO `const_db` VALUES('1_FLAG_EAGLE','974',0);
REPLACE INTO `const_db` VALUES('4_M_MIKID','975',0);
REPLACE INTO `const_db` VALUES('4_BLUE_FLOWER','976',0);
REPLACE INTO `const_db` VALUES('4_RED_FLOWER','977',0);
REPLACE INTO `const_db` VALUES('4_YELL_FLOWER','978',0);
REPLACE INTO `const_db` VALUES('4_F_CAVE1','979',0);
REPLACE INTO `const_db` VALUES('4_F_MUT1','980',0);
REPLACE INTO `const_db` VALUES('4_F_MUT2','981',0);
REPLACE INTO `const_db` VALUES('4_F_SCIENCE','982',0);
REPLACE INTO `const_db` VALUES('4_M_1STPRIN1','983',0);
REPLACE INTO `const_db` VALUES('4_M_1STPRIN2','984',0);
REPLACE INTO `const_db` VALUES('4_M_2NDPRIN1','985',0);
REPLACE INTO `const_db` VALUES('4_M_2NDPRIN2','986',0);
REPLACE INTO `const_db` VALUES('4_M_3RDPRIN1','987',0);
REPLACE INTO `const_db` VALUES('4_M_3RDPRIN2','988',0);
REPLACE INTO `const_db` VALUES('4_M_4THPRIN1','989',0);
REPLACE INTO `const_db` VALUES('4_M_4THPRIN2','990',0);
REPLACE INTO `const_db` VALUES('4_M_5THPRIN1','991',0);
REPLACE INTO `const_db` VALUES('4_M_5THPRIN2','992',0);
REPLACE INTO `const_db` VALUES('4_M_6THPRIN1','993',0);
REPLACE INTO `const_db` VALUES('4_M_6THPRIN2','994',0);
REPLACE INTO `const_db` VALUES('4_M_CASMAN1','995',0);
REPLACE INTO `const_db` VALUES('4_M_CAVE1','996',0);
REPLACE INTO `const_db` VALUES('4_M_MOCASS1','997',0);
REPLACE INTO `const_db` VALUES('4_M_MOCASS2','998',0);
REPLACE INTO `const_db` VALUES('4_M_MUT1','999',0);
REPLACE INTO `const_db` VALUES('4_TOWER_14','10001',0);
REPLACE INTO `const_db` VALUES('4_TOWER_15','10002',0);
REPLACE INTO `const_db` VALUES('4_TOWER_16','10003',0);
REPLACE INTO `const_db` VALUES('4_TOWER_17','10004',0);
REPLACE INTO `const_db` VALUES('4_TREASURE_BOX','10005',0);
REPLACE INTO `const_db` VALUES('ACADEMY_MASTER','10006',0);
REPLACE INTO `const_db` VALUES('PORTAL','10007',0);
REPLACE INTO `const_db` VALUES('THANATOS_BATTLE','10008',0);
REPLACE INTO `const_db` VALUES('THANATOS_KEEP','10009',0);
REPLACE INTO `const_db` VALUES('4_F_LYDIA','10010',0);
REPLACE INTO `const_db` VALUES('4_LUDE','10011',0);
REPLACE INTO `const_db` VALUES('4_ALIZA','10012',0);
REPLACE INTO `const_db` VALUES('4_ALICE','10013',0);
REPLACE INTO `const_db` VALUES('4_ARCHER_SKEL','10014',0);
REPLACE INTO `const_db` VALUES('4_JACK','10015',0);
REPLACE INTO `const_db` VALUES('4_SOLDIER_SKEL','10016',0);
REPLACE INTO `const_db` VALUES('4_LOLI_RURI','10017',0);
REPLACE INTO `const_db` VALUES('4_M_SAKRAY_TIED','10018',0);
REPLACE INTO `const_db` VALUES('4_M_ANTONIO','10019',0);
REPLACE INTO `const_db` VALUES('4_M_COOKIE','10020',0);
REPLACE INTO `const_db` VALUES('4_M_BELIEVER01','10021',0);
REPLACE INTO `const_db` VALUES('4_F_BELIEVER01','10022',0);
REPLACE INTO `const_db` VALUES('4_M_BELIEVER02','10023',0);
REPLACE INTO `const_db` VALUES('4_ROPEPILE','10024',0);
REPLACE INTO `const_db` VALUES('4_BRICKPILE','10025',0);
REPLACE INTO `const_db` VALUES('4_WOODPILE','10026',0);
REPLACE INTO `const_db` VALUES('4_M_TAMARIN','10027',0);
REPLACE INTO `const_db` VALUES('4_M_DEATH','10028',0);
REPLACE INTO `const_db` VALUES('4_GHOST_STAND','10029',0);
REPLACE INTO `const_db` VALUES('4_GHOST_COLLAPSE','10030',0);
REPLACE INTO `const_db` VALUES('4_COOKIEHOUSE','10031',0);
REPLACE INTO `const_db` VALUES('4_F_SKULL06GIRL','10032',0);
REPLACE INTO `const_db` VALUES('4_NONMYSTCASE','10033',0);
REPLACE INTO `const_db` VALUES('4_F_KIMI','10034',0);
REPLACE INTO `const_db` VALUES('4_M_FROZEN_GC','10035',0);
REPLACE INTO `const_db` VALUES('4_M_FROZEN_KN','10036',0);
REPLACE INTO `const_db` VALUES('4_SNAKE_LORD','10037',0);
REPLACE INTO `const_db` VALUES('4_F_MOCBOY','10038',0);
REPLACE INTO `const_db` VALUES('4_F_RUNAIN','10039',0);
REPLACE INTO `const_db` VALUES('4_M_ROEL','10040',0);
REPLACE INTO `const_db` VALUES('4_F_SHALOSH','10041',0);
REPLACE INTO `const_db` VALUES('4_ENERGY_RED','10042',0);
REPLACE INTO `const_db` VALUES('4_ENERGY_BLUE','10043',0);
REPLACE INTO `const_db` VALUES('4_ENERGY_YELLOW','10044',0);
REPLACE INTO `const_db` VALUES('4_ENERGY_BLACK','10045',0);
REPLACE INTO `const_db` VALUES('4_ENERGY_WHITE','10046',0);
REPLACE INTO `const_db` VALUES('4_F_PERE01','10047',0);
REPLACE INTO `const_db` VALUES('4_JITTERBUG','10048',0);
REPLACE INTO `const_db` VALUES('4_SEA_OTTER','10049',0);
REPLACE INTO `const_db` VALUES('4_GALAPAGO','10050',0);
REPLACE INTO `const_db` VALUES('4_DESERTWOLF_B','10051',0);
REPLACE INTO `const_db` VALUES('4_BB_PORING','10052',0);
REPLACE INTO `const_db` VALUES('4_F_CHARLESTON01','10053',0);
REPLACE INTO `const_db` VALUES('4_F_CHARLESTON02','10054',0);
REPLACE INTO `const_db` VALUES('4_F_CHARLESTON03','10055',0);
REPLACE INTO `const_db` VALUES('4_M_IAN','10056',0);
REPLACE INTO `const_db` VALUES('4_M_OLDSCHOLAR','10057',0);
REPLACE INTO `const_db` VALUES('4_F_LAPERM','10058',0);
REPLACE INTO `const_db` VALUES('4_M_DEBON','10059',0);
REPLACE INTO `const_db` VALUES('4_M_BIRMAN','10060',0);
REPLACE INTO `const_db` VALUES('4_F_SHAM','10061',0);
REPLACE INTO `const_db` VALUES('4_M_REBELLION','10062',0);
REPLACE INTO `const_db` VALUES('4_F_REBELLION','10063',0);
REPLACE INTO `const_db` VALUES('4_CHN_SHAOTH','10064',0);
REPLACE INTO `const_db` VALUES('4_SHOAL','10065',0);
REPLACE INTO `const_db` VALUES('4_F_SARAH','10066',0);
REPLACE INTO `const_db` VALUES('4_GIGANTES_BIG','10067',0);
REPLACE INTO `const_db` VALUES('4_GIGANTES','10068',0);
REPLACE INTO `const_db` VALUES('4_GIGANTES_SMALL','10069',0);
REPLACE INTO `const_db` VALUES('4_GARGOYLE_STATUE','10070',0);
REPLACE INTO `const_db` VALUES('4_AIRA','10071',0);
REPLACE INTO `const_db` VALUES('4_EZELLA','10072',0);
REPLACE INTO `const_db` VALUES('4_KULUNA','10073',0);
REPLACE INTO `const_db` VALUES('4_LUNE','10074',0);
REPLACE INTO `const_db` VALUES('4_MALLINA','10075',0);
REPLACE INTO `const_db` VALUES('4_MORIN','10076',0);
REPLACE INTO `const_db` VALUES('4_NASARIN','10077',0);
REPLACE INTO `const_db` VALUES('4_F_BERRYTEA','10078',0);
REPLACE INTO `const_db` VALUES('4_F_FRUIT','10079',0);
REPLACE INTO `const_db` VALUES('4_SCR_MT_ROBOTS','10080',0);
REPLACE INTO `const_db` VALUES('4_MACHINE_DEVICE','10081',0);
REPLACE INTO `const_db` VALUES('4_GC109','10082',0);
REPLACE INTO `const_db` VALUES('4_SYS_MSG','10083',0);
REPLACE INTO `const_db` VALUES('4_M_TATIO','10084',0);
REPLACE INTO `const_db` VALUES('4_M_REKENBER','10085',0);
REPLACE INTO `const_db` VALUES('4_XMAS_CAT1','10086',0);
REPLACE INTO `const_db` VALUES('4_XMAS_CAT2','10087',0);
REPLACE INTO `const_db` VALUES('4_XMAS_CAT3','10088',0);
REPLACE INTO `const_db` VALUES('4_XMAS_CAT4','10089',0);
REPLACE INTO `const_db` VALUES('4_XMAS_CAT5','10090',0);
REPLACE INTO `const_db` VALUES('4_XMAS_CAT6','10091',0);
REPLACE INTO `const_db` VALUES('4_M_DEATH2','10092',0);
REPLACE INTO `const_db` VALUES('4_S_KADOMATSU','10093',0);
REPLACE INTO `const_db` VALUES('4_B_KADOMATSU','10094',0);
REPLACE INTO `const_db` VALUES('4_F_08','10095',0);
REPLACE INTO `const_db` VALUES('4_F_08_STATUE','10096',0);
REPLACE INTO `const_db` VALUES('4_M_DARKPRIEST','10097',0);
REPLACE INTO `const_db` VALUES('4_JP_GARM_H','10098',0);
REPLACE INTO `const_db` VALUES('4_JP_MEDUSA_H','10099',0);
REPLACE INTO `const_db` VALUES('4_CHN_GVG_01','10100',0);
REPLACE INTO `const_db` VALUES('4_SPRING_RABBIT','10101',0);
REPLACE INTO `const_db` VALUES('4_PD_TYRA','10102',0);
REPLACE INTO `const_db` VALUES('4_PD_TYRANOS','10103',0);
REPLACE INTO `const_db` VALUES('4_PD_PLESI','10104',0);
REPLACE INTO `const_db` VALUES('4_PD_PLESIO','10105',0);
REPLACE INTO `const_db` VALUES('4_PD_BRACHI','10106',0);
REPLACE INTO `const_db` VALUES('4_PD_BRACHIOS','10107',0);
REPLACE INTO `const_db` VALUES('4_PD_GOLDDRAGON','10108',0);
REPLACE INTO `const_db` VALUES('4_PD_ZAEROG','10109',0);
REPLACE INTO `const_db` VALUES('4_PD_TAMADORA','10110',0);
REPLACE INTO `const_db` VALUES('MER_LIF','6001',0);
REPLACE INTO `const_db` VALUES('MER_AMISTR','6002',0);
REPLACE INTO `const_db` VALUES('MER_FILIR','6003',0);
REPLACE INTO `const_db` VALUES('MER_VANILMIRTH','6004',0);
REPLACE INTO `const_db` VALUES('MER_LIF2','6005',0);
REPLACE INTO `const_db` VALUES('MER_AMISTR2','6006',0);
REPLACE INTO `const_db` VALUES('MER_FILIR2','6007',0);
REPLACE INTO `const_db` VALUES('MER_VANILMIRTH2','6008',0);
REPLACE INTO `const_db` VALUES('MER_LIF_H','6009',0);
REPLACE INTO `const_db` VALUES('MER_AMISTR_H','6010',0);
REPLACE INTO `const_db` VALUES('MER_FILIR_H','6011',0);
REPLACE INTO `const_db` VALUES('MER_VANILMIRTH_H','6012',0);
REPLACE INTO `const_db` VALUES('MER_LIF_H2','6013',0);
REPLACE INTO `const_db` VALUES('MER_AMISTR_H2','6014',0);
REPLACE INTO `const_db` VALUES('MER_FILIR_H2','6015',0);
REPLACE INTO `const_db` VALUES('MER_VANILMIRTH_H2','6016',0);
REPLACE INTO `const_db` VALUES('MER_ARCHER01','6017',0);
REPLACE INTO `const_db` VALUES('MER_ARCHER02','6018',0);
REPLACE INTO `const_db` VALUES('MER_ARCHER03','6019',0);
REPLACE INTO `const_db` VALUES('MER_ARCHER04','6020',0);
REPLACE INTO `const_db` VALUES('MER_ARCHER05','6021',0);
REPLACE INTO `const_db` VALUES('MER_ARCHER06','6022',0);
REPLACE INTO `const_db` VALUES('MER_ARCHER07','6023',0);
REPLACE INTO `const_db` VALUES('MER_ARCHER08','6024',0);
REPLACE INTO `const_db` VALUES('MER_ARCHER09','6025',0);
REPLACE INTO `const_db` VALUES('MER_ARCHER10','6026',0);
REPLACE INTO `const_db` VALUES('MER_LANCER01','6027',0);
REPLACE INTO `const_db` VALUES('MER_LANCER02','6028',0);
REPLACE INTO `const_db` VALUES('MER_LANCER03','6029',0);
REPLACE INTO `const_db` VALUES('MER_LANCER04','6030',0);
REPLACE INTO `const_db` VALUES('MER_LANCER05','6031',0);
REPLACE INTO `const_db` VALUES('MER_LANCER06','6032',0);
REPLACE INTO `const_db` VALUES('MER_LANCER07','6033',0);
REPLACE INTO `const_db` VALUES('MER_LANCER08','6034',0);
REPLACE INTO `const_db` VALUES('MER_LANCER09','6035',0);
REPLACE INTO `const_db` VALUES('MER_LANCER10','6036',0);
REPLACE INTO `const_db` VALUES('MER_SWORDMAN01','6037',0);
REPLACE INTO `const_db` VALUES('MER_SWORDMAN02','6038',0);
REPLACE INTO `const_db` VALUES('MER_SWORDMAN03','6039',0);
REPLACE INTO `const_db` VALUES('MER_SWORDMAN04','6040',0);
REPLACE INTO `const_db` VALUES('MER_SWORDMAN05','6041',0);
REPLACE INTO `const_db` VALUES('MER_SWORDMAN06','6042',0);
REPLACE INTO `const_db` VALUES('MER_SWORDMAN07','6043',0);
REPLACE INTO `const_db` VALUES('MER_SWORDMAN08','6044',0);
REPLACE INTO `const_db` VALUES('MER_SWORDMAN09','6045',0);
REPLACE INTO `const_db` VALUES('MER_SWORDMAN10','6046',0);
REPLACE INTO `const_db` VALUES('HAVEQUEST','0',0);
REPLACE INTO `const_db` VALUES('PLAYTIME','1',0);
REPLACE INTO `const_db` VALUES('HUNTING','2',0);
REPLACE INTO `const_db` VALUES('QTYPE_NONE','0x270f',0);
REPLACE INTO `const_db` VALUES('QTYPE_QUEST','0x00',0);
REPLACE INTO `const_db` VALUES('QTYPE_QUEST2','0x01',0);
REPLACE INTO `const_db` VALUES('QTYPE_JOB','0x02',0);
REPLACE INTO `const_db` VALUES('QTYPE_JOB2','0x03',0);
REPLACE INTO `const_db` VALUES('QTYPE_EVENT','0x04',0);
REPLACE INTO `const_db` VALUES('QTYPE_EVENT2','0x05',0);
REPLACE INTO `const_db` VALUES('QTYPE_WARG','0x06',0);
REPLACE INTO `const_db` VALUES('QTYPE_WARG2','0x08',0);
REPLACE INTO `const_db` VALUES('FW_DONTCARE','0',0);
REPLACE INTO `const_db` VALUES('FW_THIN','100',0);
REPLACE INTO `const_db` VALUES('FW_EXTRALIGHT','200',0);
REPLACE INTO `const_db` VALUES('FW_LIGHT','300',0);
REPLACE INTO `const_db` VALUES('FW_NORMAL','400',0);
REPLACE INTO `const_db` VALUES('FW_MEDIUM','500',0);
REPLACE INTO `const_db` VALUES('FW_SEMIBOLD','600',0);
REPLACE INTO `const_db` VALUES('FW_BOLD','700',0);
REPLACE INTO `const_db` VALUES('FW_EXTRABOLD','800',0);
REPLACE INTO `const_db` VALUES('FW_HEAVY','900',0);
REPLACE INTO `const_db` VALUES('VAR_HEAD','1',0);
REPLACE INTO `const_db` VALUES('VAR_WEAPON','2',0);
REPLACE INTO `const_db` VALUES('VAR_HEAD_TOP','3',0);
REPLACE INTO `const_db` VALUES('VAR_HEAD_MID','4',0);
REPLACE INTO `const_db` VALUES('VAR_HEAD_BOTTOM','5',0);
REPLACE INTO `const_db` VALUES('VAR_HEADPALETTE','6',0);
REPLACE INTO `const_db` VALUES('VAR_BODYPALETTE','7',0);
REPLACE INTO `const_db` VALUES('VAR_SHIELD','8',0);
REPLACE INTO `const_db` VALUES('VAR_SHOES','9',0);
REPLACE INTO `const_db` VALUES('DIR_NORTH','0',0);
REPLACE INTO `const_db` VALUES('DIR_NORTHWEST','1',0);
REPLACE INTO `const_db` VALUES('DIR_WEST','2',0);
REPLACE INTO `const_db` VALUES('DIR_SOUTHWEST','3',0);
REPLACE INTO `const_db` VALUES('DIR_SOUTH','4',0);
REPLACE INTO `const_db` VALUES('DIR_SOUTHEAST','5',0);
REPLACE INTO `const_db` VALUES('DIR_EAST','6',0);
REPLACE INTO `const_db` VALUES('DIR_NORTHEAST','7',0);
REPLACE INTO `const_db` VALUES('IT_HEALING','0',0);
REPLACE INTO `const_db` VALUES('IT_USABLE','2',0);
REPLACE INTO `const_db` VALUES('IT_ETC','3',0);
REPLACE INTO `const_db` VALUES('IT_WEAPON','4',0);
REPLACE INTO `const_db` VALUES('IT_ARMOR','5',0);
REPLACE INTO `const_db` VALUES('IT_CARD','6',0);
REPLACE INTO `const_db` VALUES('IT_PETEGG','7',0);
REPLACE INTO `const_db` VALUES('IT_PETARMOR','8',0);
REPLACE INTO `const_db` VALUES('IT_AMMO','10',0);
REPLACE INTO `const_db` VALUES('IT_DELAYCONSUME','11',0);
REPLACE INTO `const_db` VALUES('IT_CASH','18',0);
REPLACE INTO `const_db` VALUES('HQO_OnLogout','1',0);
REPLACE INTO `const_db` VALUES('HQO_OnDeath','2',0);
REPLACE INTO `const_db` VALUES('HQO_OnMapChange','3',0);
REPLACE INTO `const_db` VALUES('IOT_NONE','0',0);
REPLACE INTO `const_db` VALUES('IOT_CHAR','1',0);
REPLACE INTO `const_db` VALUES('IOT_PARTY','2',0);
REPLACE INTO `const_db` VALUES('IOT_GUILD','3',0);
REPLACE INTO `const_db` VALUES('false','0',0);
REPLACE INTO `const_db` VALUES('true','1',0);
REPLACE INTO `const_db` VALUES('NST_ZENY','0',0);
REPLACE INTO `const_db` VALUES('NST_CASH','1',0);
REPLACE INTO `const_db` VALUES('NST_MARKET','2',0);
REPLACE INTO `const_db` VALUES('NST_CUSTOM','3',0);
REPLACE INTO `const_db` VALUES('PC_NAME','0',0);
REPLACE INTO `const_db` VALUES('PC_PARTY','1',0);
REPLACE INTO `const_db` VALUES('PC_GUILD','2',0);
REPLACE INTO `const_db` VALUES('PC_MAP','3',0);
REPLACE INTO `const_db` VALUES('SCFLAG_NONE','0x00',0);
REPLACE INTO `const_db` VALUES('SCFLAG_NOAVOID','0x01',0);
REPLACE INTO `const_db` VALUES('SCFLAG_FIXEDTICK','0x02',0);
REPLACE INTO `const_db` VALUES('SCFLAG_LOADED','0x04',0);
REPLACE INTO `const_db` VALUES('SCFLAG_FIXEDRATE','0x08',0);
REPLACE INTO `const_db` VALUES('SCFLAG_NOICON','0x10',0);
REPLACE INTO `const_db` VALUES('MOUNT_NONE','0',0);
REPLACE INTO `const_db` VALUES('MOUNT_PECO','1',0);
REPLACE INTO `const_db` VALUES('MOUNT_WUG','2',0);
REPLACE INTO `const_db` VALUES('MOUNT_MADO','3',0);
REPLACE INTO `const_db` VALUES('MOUNT_DRAGON','4',0);
REPLACE INTO `const_db` VALUES('MOUNT_DRAGON_GREEN','4',0);
REPLACE INTO `const_db` VALUES('MOUNT_DRAGON_BROWN','5',0);
REPLACE INTO `const_db` VALUES('MOUNT_DRAGON_GRAY','6',0);
REPLACE INTO `const_db` VALUES('MOUNT_DRAGON_BLUE','7',0);
REPLACE INTO `const_db` VALUES('MOUNT_DRAGON_RED','8',0);

--
-- Estrutura da tabela `create_arrow_db`
--

CREATE TABLE IF NOT EXISTS `create_arrow_db` (
  `SourceID` smallint(5) unsigned NOT NULL,
  `MakeID1` smallint(5) unsigned DEFAULT NULL,
  `MakeAmount1` smallint(5) unsigned DEFAULT NULL,
  `MakeID2` smallint(5) unsigned DEFAULT NULL,
  `MakeAmount2` smallint(5) unsigned DEFAULT NULL,
  `MakeID3` smallint(5) unsigned DEFAULT NULL,
  `MakeAmount3` smallint(5) unsigned DEFAULT NULL,
  `MakeID4` smallint(5) unsigned DEFAULT NULL,
  `MakeAmount4` smallint(5) unsigned DEFAULT NULL,
  `MakeID5` smallint(5) unsigned DEFAULT NULL,
  `MakeAmount5` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`SourceID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `create_arrow_db` VALUES(603,1764,50,1768,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(604,1769,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(609,1761,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(713,1770,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(714,1757,600,1769,600,1765,600,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(715,1756,30,1768,1,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(716,1762,10,1763,1,1761,1,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(717,1754,30,1759,1,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(724,1761,50,1768,10,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(733,1764,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(756,1765,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(757,1753,200,1758,5,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(902,1750,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(904,1762,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(909,1750,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(910,1770,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(911,1753,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(912,1751,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(913,1767,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(920,1770,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(922,1770,30,1753,5,1756,10,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(923,1767,20,1760,10,1758,5,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(937,1763,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(939,1762,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(947,1770,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(952,1750,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(956,1770,80,1754,150,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(957,1762,1,1767,1,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(958,1767,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(959,1763,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(968,1765,1,1758,5,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(969,1760,50,1765,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(984,1765,250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(985,1753,1000,1758,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(990,1752,600,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(991,1754,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(992,1755,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(993,1756,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(994,1752,1800,1769,5,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(995,1754,450,1759,5,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(996,1755,450,1768,5,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(997,1756,450,1760,5,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(998,1770,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(999,1753,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1000,1760,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1001,1760,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1002,1770,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1003,1767,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1010,1770,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1011,1770,200,1751,40,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1018,1770,50,1756,60,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1019,1750,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1021,1770,40,1767,2,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1027,1750,70,1756,30,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1031,1764,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1035,1765,1,1770,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1038,1761,2,1770,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1041,1770,80,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1043,1753,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1044,1762,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1053,1753,20,1754,300,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1063,1764,2,1751,40,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1064,1770,100,1753,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1066,1750,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1067,1750,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1068,1750,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1095,1768,5,1750,100,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(1098,1753,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(2257,1751,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(2281,1753,200,1769,40,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(2288,1764,200,1753,300,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(2292,1753,200,1758,40,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(2319,1760,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(2328,1750,700,1770,500,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(2329,1750,1000,1770,700,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(2332,1751,700,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(2333,1751,1000,1757,10,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(2408,1770,700,1753,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(2618,1755,150,1753,100,1764,10,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(5014,1754,600,1753,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7002,1753,30,1762,5,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7008,1758,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7010,1753,250,1763,1,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7018,1769,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7019,1767,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7020,1761,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7021,1760,200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7022,1765,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7023,1764,600,1767,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7024,1764,600,1761,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7025,1758,800,1769,400,1768,800,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7026,1765,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7027,1767,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7035,1752,3000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7036,1754,300,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7066,1754,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7067,1756,50,1758,30,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7068,1752,250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7069,1753,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7097,1752,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7098,1752,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7100,1764,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7108,1753,100,1765,100,1757,300,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7109,1765,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7120,1753,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7123,1753,10,1761,50,1769,50,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7150,1750,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7155,1763,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7163,1764,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7164,1758,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7172,1764,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7210,1767,150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7221,1753,50,1767,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7263,1755,200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7315,1761,30,1767,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7316,1764,10,1763,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7318,1762,100,1753,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7319,1762,100,1753,100,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7321,1760,10,1768,30,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7323,1753,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7340,1761,30,1763,30,1767,50,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7435,1751,200,1772,300,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7442,1761,50,1769,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7445,1756,100,1763,80,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7446,1755,50,1754,50,1759,80,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7447,1752,100,1760,80,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7448,1751,50,1757,50,1768,80,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7450,1757,500,1767,200,1765,100,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7451,1752,300,1758,300,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7510,1757,600,1772,600,1764,600,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7511,1767,300,1760,150,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7561,1754,50,1759,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7562,1754,150,1759,400,1769,200,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7566,1761,200,1763,200,1767,100,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7752,1767,50,1761,50,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `create_arrow_db` VALUES(7753,1762,50,1770,10,1761,20,NULL,NULL,NULL,NULL);

--
-- Estrutura da tabela `elemental_db`
--

CREATE TABLE IF NOT EXISTS `elemental_db` (
  `ID` smallint(5) unsigned NOT NULL,
  `Sprite_Name` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `LV` tinyint(4) NOT NULL,
  `HP` smallint(5) unsigned NOT NULL,
  `SP` smallint(5) unsigned NOT NULL,
  `Range1` smallint(6) NOT NULL,
  `ATK1` smallint(5) unsigned NOT NULL,
  `ATK2` smallint(5) unsigned NOT NULL,
  `DEF` tinyint(4) NOT NULL,
  `MDEF` tinyint(4) NOT NULL,
  `STR` smallint(6) NOT NULL,
  `AGI` smallint(6) NOT NULL,
  `VIT` smallint(6) NOT NULL,
  `INT` smallint(6) NOT NULL,
  `DEX` smallint(6) NOT NULL,
  `LUK` smallint(6) NOT NULL,
  `Range2` smallint(6) NOT NULL,
  `Range3` smallint(6) NOT NULL,
  `Scale` tinyint(4) NOT NULL,
  `Race` tinyint(4) NOT NULL,
  `Element` tinyint(4) NOT NULL,
  `Speed` smallint(6) NOT NULL,
  `aDelay` smallint(5) unsigned NOT NULL,
  `aMotion` smallint(5) unsigned NOT NULL,
  `dMotion` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `elemental_db`
--

REPLACE INTO `elemental_db` VALUES(2114,'EL_AGNI_S','Agni',100,0,1,1,0,0,0,0,0,0,0,0,0,0,5,12,0,0,83,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES(2115,'EL_AGNI_M','Agni',100,0,1,1,0,0,0,0,0,0,0,0,0,0,5,12,1,0,83,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES(2116,'EL_AGNI_L','Agni',100,0,1,1,0,0,0,0,0,0,0,0,0,0,5,12,2,0,83,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES(2117,'EL_AQUA_S','Aqua',100,0,1,1,0,0,0,0,0,0,0,0,0,0,5,12,0,0,81,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES(2118,'EL_AQUA_M','Aqua',100,0,1,1,0,0,0,0,0,0,0,0,0,0,5,12,1,0,81,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES(2119,'EL_AQUA_L','Aqua',100,0,1,1,0,0,0,0,1,1,1,1,1,1,5,12,2,0,81,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES(2120,'EL_VENTUS_S','Ventus',100,0,1,1,0,0,0,0,0,0,0,0,0,0,5,12,0,0,84,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES(2121,'EL_VENTUS_M','Ventus',100,0,1,1,0,0,0,0,0,0,0,0,0,0,5,12,1,0,84,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES(2122,'EL_VENTUS_L','Ventus',100,0,1,1,0,0,0,0,0,0,0,0,0,0,5,12,2,0,84,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES(2123,'EL_TERA_S','Tera',100,0,1,1,0,0,0,0,0,0,0,0,0,0,5,12,0,0,82,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES(2124,'EL_TERA_M','Tera',100,0,1,1,0,0,0,0,0,0,0,0,0,0,5,12,1,0,82,200,504,1020,360);
REPLACE INTO `elemental_db` VALUES(2125,'EL_TERA_L','Tera',100,0,1,1,0,0,0,0,0,0,0,0,0,0,5,12,2,0,82,200,504,1020,360);

--
-- Estrutura da tabela `elemental_skill_db`
--

CREATE TABLE IF NOT EXISTS `elemental_skill_db` (
  `ElementalID` smallint(5) unsigned NOT NULL,
  `SkillID` smallint(5) unsigned NOT NULL,
  `SkillLevel` tinyint(4) NOT NULL,
  `ReqMode` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `elemental_skill_db`
--

REPLACE INTO `elemental_skill_db` VALUES(2114,8413,1,1);
REPLACE INTO `elemental_skill_db` VALUES(2114,8401,1,2);
REPLACE INTO `elemental_skill_db` VALUES(2114,8425,1,4);
REPLACE INTO `elemental_skill_db` VALUES(2115,8414,1,1);
REPLACE INTO `elemental_skill_db` VALUES(2115,8402,1,2);
REPLACE INTO `elemental_skill_db` VALUES(2115,8426,1,4);
REPLACE INTO `elemental_skill_db` VALUES(2116,8415,1,1);
REPLACE INTO `elemental_skill_db` VALUES(2116,8403,1,2);
REPLACE INTO `elemental_skill_db` VALUES(2116,8428,1,4);
REPLACE INTO `elemental_skill_db` VALUES(2117,8416,1,1);
REPLACE INTO `elemental_skill_db` VALUES(2117,8404,1,2);
REPLACE INTO `elemental_skill_db` VALUES(2117,8430,1,4);
REPLACE INTO `elemental_skill_db` VALUES(2118,8417,1,1);
REPLACE INTO `elemental_skill_db` VALUES(2118,8405,1,2);
REPLACE INTO `elemental_skill_db` VALUES(2118,8431,1,4);
REPLACE INTO `elemental_skill_db` VALUES(2119,8418,1,1);
REPLACE INTO `elemental_skill_db` VALUES(2119,8406,1,2);
REPLACE INTO `elemental_skill_db` VALUES(2119,8433,1,4);
REPLACE INTO `elemental_skill_db` VALUES(2120,8419,1,1);
REPLACE INTO `elemental_skill_db` VALUES(2120,8407,1,2);
REPLACE INTO `elemental_skill_db` VALUES(2120,8434,1,4);
REPLACE INTO `elemental_skill_db` VALUES(2121,8420,1,1);
REPLACE INTO `elemental_skill_db` VALUES(2121,8408,1,2);
REPLACE INTO `elemental_skill_db` VALUES(2121,8435,1,4);
REPLACE INTO `elemental_skill_db` VALUES(2122,8421,1,1);
REPLACE INTO `elemental_skill_db` VALUES(2122,8409,1,2);
REPLACE INTO `elemental_skill_db` VALUES(2122,8437,1,4);
REPLACE INTO `elemental_skill_db` VALUES(2123,8422,1,1);
REPLACE INTO `elemental_skill_db` VALUES(2123,8410,1,2);
REPLACE INTO `elemental_skill_db` VALUES(2123,8439,1,4);
REPLACE INTO `elemental_skill_db` VALUES(2124,8423,1,1);
REPLACE INTO `elemental_skill_db` VALUES(2124,8411,1,2);
REPLACE INTO `elemental_skill_db` VALUES(2124,8440,1,4);
REPLACE INTO `elemental_skill_db` VALUES(2125,8424,1,1);
REPLACE INTO `elemental_skill_db` VALUES(2125,8412,1,2);
REPLACE INTO `elemental_skill_db` VALUES(2125,8442,1,4);

--
-- Estrutura da tabela `exp_guild_db`
--

CREATE TABLE IF NOT EXISTS `exp_guild_db` (
  `exp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`exp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `exp_guild_db` VALUES(100000);
REPLACE INTO `exp_guild_db` VALUES(400000);
REPLACE INTO `exp_guild_db` VALUES(900000);
REPLACE INTO `exp_guild_db` VALUES(1600000);
REPLACE INTO `exp_guild_db` VALUES(2500000);
REPLACE INTO `exp_guild_db` VALUES(3600000);
REPLACE INTO `exp_guild_db` VALUES(4900000);
REPLACE INTO `exp_guild_db` VALUES(6400000);
REPLACE INTO `exp_guild_db` VALUES(8100000);
REPLACE INTO `exp_guild_db` VALUES(10000000);
REPLACE INTO `exp_guild_db` VALUES(12100000);
REPLACE INTO `exp_guild_db` VALUES(14400000);
REPLACE INTO `exp_guild_db` VALUES(16900000);
REPLACE INTO `exp_guild_db` VALUES(19600000);
REPLACE INTO `exp_guild_db` VALUES(22500000);
REPLACE INTO `exp_guild_db` VALUES(25600000);
REPLACE INTO `exp_guild_db` VALUES(28900000);
REPLACE INTO `exp_guild_db` VALUES(32400000);
REPLACE INTO `exp_guild_db` VALUES(36100000);
REPLACE INTO `exp_guild_db` VALUES(40000000);
REPLACE INTO `exp_guild_db` VALUES(44100000);
REPLACE INTO `exp_guild_db` VALUES(48400000);
REPLACE INTO `exp_guild_db` VALUES(52900000);
REPLACE INTO `exp_guild_db` VALUES(57600000);
REPLACE INTO `exp_guild_db` VALUES(62500000);
REPLACE INTO `exp_guild_db` VALUES(67600000);
REPLACE INTO `exp_guild_db` VALUES(72900000);
REPLACE INTO `exp_guild_db` VALUES(78400000);
REPLACE INTO `exp_guild_db` VALUES(84100000);
REPLACE INTO `exp_guild_db` VALUES(90000000);
REPLACE INTO `exp_guild_db` VALUES(96100000);
REPLACE INTO `exp_guild_db` VALUES(102400000);
REPLACE INTO `exp_guild_db` VALUES(108900000);
REPLACE INTO `exp_guild_db` VALUES(115600000);
REPLACE INTO `exp_guild_db` VALUES(122500000);
REPLACE INTO `exp_guild_db` VALUES(129600000);
REPLACE INTO `exp_guild_db` VALUES(136900000);
REPLACE INTO `exp_guild_db` VALUES(144400000);
REPLACE INTO `exp_guild_db` VALUES(152100000);
REPLACE INTO `exp_guild_db` VALUES(160000000);
REPLACE INTO `exp_guild_db` VALUES(168100000);
REPLACE INTO `exp_guild_db` VALUES(176400000);
REPLACE INTO `exp_guild_db` VALUES(184900000);
REPLACE INTO `exp_guild_db` VALUES(193600000);
REPLACE INTO `exp_guild_db` VALUES(202500000);
REPLACE INTO `exp_guild_db` VALUES(211600000);
REPLACE INTO `exp_guild_db` VALUES(220900000);
REPLACE INTO `exp_guild_db` VALUES(230400000);
REPLACE INTO `exp_guild_db` VALUES(240100000);
REPLACE INTO `exp_guild_db` VALUES(250000000);

--
-- Estrutura da tabela `exp_homun_db`
--

CREATE TABLE IF NOT EXISTS `exp_homun_db` (
  `exp` int(10) unsigned NOT NULL,
  PRIMARY KEY (`exp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `exp_homun_db` VALUES(0);
REPLACE INTO `exp_homun_db` VALUES(347);
REPLACE INTO `exp_homun_db` VALUES(545);
REPLACE INTO `exp_homun_db` VALUES(891);
REPLACE INTO `exp_homun_db` VALUES(1485);
REPLACE INTO `exp_homun_db` VALUES(2178);
REPLACE INTO `exp_homun_db` VALUES(3168);
REPLACE INTO `exp_homun_db` VALUES(3762);
REPLACE INTO `exp_homun_db` VALUES(4158);
REPLACE INTO `exp_homun_db` VALUES(4505);
REPLACE INTO `exp_homun_db` VALUES(4900);
REPLACE INTO `exp_homun_db` VALUES(5390);
REPLACE INTO `exp_homun_db` VALUES(5880);
REPLACE INTO `exp_homun_db` VALUES(5978);
REPLACE INTO `exp_homun_db` VALUES(6223);
REPLACE INTO `exp_homun_db` VALUES(6566);
REPLACE INTO `exp_homun_db` VALUES(7203);
REPLACE INTO `exp_homun_db` VALUES(7840);
REPLACE INTO `exp_homun_db` VALUES(8232);
REPLACE INTO `exp_homun_db` VALUES(8624);
REPLACE INTO `exp_homun_db` VALUES(8924);
REPLACE INTO `exp_homun_db` VALUES(9409);
REPLACE INTO `exp_homun_db` VALUES(9991);
REPLACE INTO `exp_homun_db` VALUES(10670);
REPLACE INTO `exp_homun_db` VALUES(11446);
REPLACE INTO `exp_homun_db` VALUES(12610);
REPLACE INTO `exp_homun_db` VALUES(13580);
REPLACE INTO `exp_homun_db` VALUES(14550);
REPLACE INTO `exp_homun_db` VALUES(15520);
REPLACE INTO `exp_homun_db` VALUES(16490);
REPLACE INTO `exp_homun_db` VALUES(17460);
REPLACE INTO `exp_homun_db` VALUES(18430);
REPLACE INTO `exp_homun_db` VALUES(19400);
REPLACE INTO `exp_homun_db` VALUES(20370);
REPLACE INTO `exp_homun_db` VALUES(21340);
REPLACE INTO `exp_homun_db` VALUES(22504);
REPLACE INTO `exp_homun_db` VALUES(23280);
REPLACE INTO `exp_homun_db` VALUES(25220);
REPLACE INTO `exp_homun_db` VALUES(26675);
REPLACE INTO `exp_homun_db` VALUES(28130);
REPLACE INTO `exp_homun_db` VALUES(28800);
REPLACE INTO `exp_homun_db` VALUES(30240);
REPLACE INTO `exp_homun_db` VALUES(31680);
REPLACE INTO `exp_homun_db` VALUES(32640);
REPLACE INTO `exp_homun_db` VALUES(34560);
REPLACE INTO `exp_homun_db` VALUES(36000);
REPLACE INTO `exp_homun_db` VALUES(36480);
REPLACE INTO `exp_homun_db` VALUES(38400);
REPLACE INTO `exp_homun_db` VALUES(40320);
REPLACE INTO `exp_homun_db` VALUES(42720);
REPLACE INTO `exp_homun_db` VALUES(45120);
REPLACE INTO `exp_homun_db` VALUES(47040);
REPLACE INTO `exp_homun_db` VALUES(48960);
REPLACE INTO `exp_homun_db` VALUES(50880);
REPLACE INTO `exp_homun_db` VALUES(52800);
REPLACE INTO `exp_homun_db` VALUES(54720);
REPLACE INTO `exp_homun_db` VALUES(56640);
REPLACE INTO `exp_homun_db` VALUES(59040);
REPLACE INTO `exp_homun_db` VALUES(60480);
REPLACE INTO `exp_homun_db` VALUES(62400);
REPLACE INTO `exp_homun_db` VALUES(64320);
REPLACE INTO `exp_homun_db` VALUES(66240);
REPLACE INTO `exp_homun_db` VALUES(67200);
REPLACE INTO `exp_homun_db` VALUES(70080);
REPLACE INTO `exp_homun_db` VALUES(73920);
REPLACE INTO `exp_homun_db` VALUES(76800);
REPLACE INTO `exp_homun_db` VALUES(80640);
REPLACE INTO `exp_homun_db` VALUES(84480);
REPLACE INTO `exp_homun_db` VALUES(87360);
REPLACE INTO `exp_homun_db` VALUES(91200);
REPLACE INTO `exp_homun_db` VALUES(104500);
REPLACE INTO `exp_homun_db` VALUES(121600);
REPLACE INTO `exp_homun_db` VALUES(133000);
REPLACE INTO `exp_homun_db` VALUES(147250);
REPLACE INTO `exp_homun_db` VALUES(154850);
REPLACE INTO `exp_homun_db` VALUES(161500);
REPLACE INTO `exp_homun_db` VALUES(171000);
REPLACE INTO `exp_homun_db` VALUES(178600);
REPLACE INTO `exp_homun_db` VALUES(185250);
REPLACE INTO `exp_homun_db` VALUES(190000);
REPLACE INTO `exp_homun_db` VALUES(218500);
REPLACE INTO `exp_homun_db` VALUES(247000);
REPLACE INTO `exp_homun_db` VALUES(285000);
REPLACE INTO `exp_homun_db` VALUES(332500);
REPLACE INTO `exp_homun_db` VALUES(380000);
REPLACE INTO `exp_homun_db` VALUES(456000);
REPLACE INTO `exp_homun_db` VALUES(522500);
REPLACE INTO `exp_homun_db` VALUES(570000);
REPLACE INTO `exp_homun_db` VALUES(646000);
REPLACE INTO `exp_homun_db` VALUES(712500);
REPLACE INTO `exp_homun_db` VALUES(855000);
REPLACE INTO `exp_homun_db` VALUES(950000);
REPLACE INTO `exp_homun_db` VALUES(1140000);
REPLACE INTO `exp_homun_db` VALUES(1425000);
REPLACE INTO `exp_homun_db` VALUES(1710000);
REPLACE INTO `exp_homun_db` VALUES(1995000);
REPLACE INTO `exp_homun_db` VALUES(2280000);
REPLACE INTO `exp_homun_db` VALUES(2660000);
REPLACE INTO `exp_homun_db` VALUES(3135000);
REPLACE INTO `exp_homun_db` VALUES(3800000);
REPLACE INTO `exp_homun_db` VALUES(4124000);
REPLACE INTO `exp_homun_db` VALUES(4260000);
REPLACE INTO `exp_homun_db` VALUES(4462000);
REPLACE INTO `exp_homun_db` VALUES(4527000);
REPLACE INTO `exp_homun_db` VALUES(4779000);
REPLACE INTO `exp_homun_db` VALUES(4921000);
REPLACE INTO `exp_homun_db` VALUES(4984000);
REPLACE INTO `exp_homun_db` VALUES(5118000);
REPLACE INTO `exp_homun_db` VALUES(5353000);
REPLACE INTO `exp_homun_db` VALUES(5438000);
REPLACE INTO `exp_homun_db` VALUES(5507000);
REPLACE INTO `exp_homun_db` VALUES(5610000);
REPLACE INTO `exp_homun_db` VALUES(5776000);
REPLACE INTO `exp_homun_db` VALUES(5867000);
REPLACE INTO `exp_homun_db` VALUES(6000000);
REPLACE INTO `exp_homun_db` VALUES(6116000);
REPLACE INTO `exp_homun_db` VALUES(6241000);
REPLACE INTO `exp_homun_db` VALUES(6373000);
REPLACE INTO `exp_homun_db` VALUES(6498000);
REPLACE INTO `exp_homun_db` VALUES(6639000);
REPLACE INTO `exp_homun_db` VALUES(6720000);
REPLACE INTO `exp_homun_db` VALUES(6907000);
REPLACE INTO `exp_homun_db` VALUES(7025000);
REPLACE INTO `exp_homun_db` VALUES(7105000);
REPLACE INTO `exp_homun_db` VALUES(7264000);
REPLACE INTO `exp_homun_db` VALUES(7454000);
REPLACE INTO `exp_homun_db` VALUES(7611000);
REPLACE INTO `exp_homun_db` VALUES(7688000);
REPLACE INTO `exp_homun_db` VALUES(7735000);
REPLACE INTO `exp_homun_db` VALUES(7940000);
REPLACE INTO `exp_homun_db` VALUES(8020000);
REPLACE INTO `exp_homun_db` VALUES(8198000);
REPLACE INTO `exp_homun_db` VALUES(8318000);
REPLACE INTO `exp_homun_db` VALUES(8376000);
REPLACE INTO `exp_homun_db` VALUES(8469000);
REPLACE INTO `exp_homun_db` VALUES(8528000);
REPLACE INTO `exp_homun_db` VALUES(8573000);
REPLACE INTO `exp_homun_db` VALUES(8650000);
REPLACE INTO `exp_homun_db` VALUES(8701000);
REPLACE INTO `exp_homun_db` VALUES(8769000);
REPLACE INTO `exp_homun_db` VALUES(8814000);
REPLACE INTO `exp_homun_db` VALUES(8820000);
REPLACE INTO `exp_homun_db` VALUES(8826000);
REPLACE INTO `exp_homun_db` VALUES(8838000);
REPLACE INTO `exp_homun_db` VALUES(8887000);
REPLACE INTO `exp_homun_db` VALUES(8905000);
REPLACE INTO `exp_homun_db` VALUES(8916000);
REPLACE INTO `exp_homun_db` VALUES(8922000);
REPLACE INTO `exp_homun_db` VALUES(8966000);
REPLACE INTO `exp_homun_db` VALUES(9094000);

--
-- Estrutura da tabela `guild_skill_tree_db`
--

CREATE TABLE IF NOT EXISTS `guild_skill_tree_db` (
  `SkillID` smallint(5) unsigned NOT NULL,
  `MaxLv` tinyint(4) NOT NULL,
  `PrereqSkillID1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv1` tinyint(4) NOT NULL DEFAULT '0',
  `PrereqSkillID2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv2` tinyint(4) NOT NULL DEFAULT '0',
  `PrereqSkillID3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv3` tinyint(4) NOT NULL DEFAULT '0',
  `PrereqSkillID4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv4` tinyint(4) NOT NULL DEFAULT '0',
  `PrereqSkillID5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrereqSkillLv5` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `guild_skill_tree_db`
--

REPLACE INTO `guild_skill_tree_db` VALUES(10000,1,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10001,1,10000,1,0,0,0,0,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10002,1,10000,1,0,0,0,0,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10003,3,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10004,10,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10005,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10006,5,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10007,5,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10008,5,10007,1,0,0,0,0,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10009,5,10006,1,0,0,0,0,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10010,1,10000,1,10004,2,0,0,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10011,3,10000,1,10004,5,10010,1,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10012,1,10011,1,0,0,0,0,0,0,0,0);
REPLACE INTO `guild_skill_tree_db` VALUES(10013,1,10000,1,10002,1,10004,5,10010,1,10011,1);
REPLACE INTO `guild_skill_tree_db` VALUES(10014,1,0,0,0,0,0,0,0,0,0,0);

--
-- Estrutura da tabela `homunculus_db`
--

CREATE TABLE IF NOT EXISTS `homunculus_db` (
  `Class` smallint(5) unsigned NOT NULL,
  `EvoClass` smallint(5) unsigned NOT NULL,
  `Name` varchar(30) NOT NULL,
  `FoodID` smallint(5) unsigned NOT NULL,
  `HungryDelay` int(5) unsigned NOT NULL,
  `BaseSize` tinyint(4) NOT NULL DEFAULT '0',
  `EvoSize` tinyint(4) NOT NULL,
  `Race` tinyint(4) NOT NULL DEFAULT '0',
  `Element` tinyint(4) NOT NULL DEFAULT '0',
  `bAspd` smallint(5) unsigned NOT NULL,
  `bHp` smallint(5) unsigned NOT NULL,
  `bSp` smallint(6) NOT NULL,
  `bSTR` tinyint(4) NOT NULL,
  `bAGI` tinyint(4) NOT NULL,
  `bVIT` tinyint(4) NOT NULL,
  `bINT` tinyint(4) NOT NULL,
  `bDEX` tinyint(4) NOT NULL,
  `bLUK` tinyint(4) NOT NULL,
  `gnHP` smallint(6) NOT NULL,
  `gxHP` smallint(6) NOT NULL,
  `gnSP` smallint(6) NOT NULL,
  `gxSP` smallint(6) NOT NULL,
  `gnSTR` tinyint(4) NOT NULL,
  `gxSTR` tinyint(4) NOT NULL,
  `gnAGI` tinyint(4) NOT NULL,
  `gxAGI` tinyint(4) NOT NULL,
  `gnVIT` tinyint(4) NOT NULL,
  `gxVIT` tinyint(4) NOT NULL,
  `gnINT` tinyint(4) NOT NULL,
  `gxINT` tinyint(4) NOT NULL,
  `gnDEX` tinyint(4) NOT NULL,
  `gxDEX` tinyint(4) NOT NULL,
  `gnLUK` tinyint(4) NOT NULL,
  `gxLUK` tinyint(4) NOT NULL,
  `enHP` tinyint(4) NOT NULL,
  `exHP` tinyint(4) NOT NULL,
  `enSP` tinyint(4) NOT NULL,
  `exSP` tinyint(4) NOT NULL,
  `enSTR` tinyint(4) NOT NULL,
  `exSTR` tinyint(4) NOT NULL,
  `enAGI` tinyint(4) NOT NULL,
  `exAGI` tinyint(4) NOT NULL,
  `enVIT` tinyint(4) NOT NULL,
  `exVIT` tinyint(4) NOT NULL,
  `enINT` tinyint(4) NOT NULL,
  `exINT` tinyint(4) NOT NULL,
  `enDEX` tinyint(4) NOT NULL,
  `exDEX` tinyint(4) NOT NULL,
  `enLUK` tinyint(4) NOT NULL,
  `exLUK` tinyint(4) NOT NULL,
  PRIMARY KEY (`Class`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `homunculus_db` VALUES(6001,6009,'Lif',537,60000,0,1,7,0,700,150,40,12,20,15,35,24,14,60,100,4,9,5,19,4,20,5,19,6,20,5,19,6,20,127,127,127,127,10,30,30,50,20,40,20,40,10,30,10,20);
REPLACE INTO `homunculus_db` VALUES(6002,6010,'Amistr',912,60000,0,1,2,0,700,320,10,20,17,35,11,24,13,80,130,1,4,8,20,1,10,4,20,3,19,4,20,3,19,127,127,120,127,20,50,20,50,20,50,10,30,10,30,10,30);
REPLACE INTO `homunculus_db` VALUES(6003,6011,'Filir',910,60000,0,1,2,0,700,90,25,29,35,9,8,30,9,45,75,3,6,4,20,3,19,1,10,4,20,8,20,3,19,127,127,127,127,10,30,10,30,10,30,20,50,20,50,10,20);
REPLACE INTO `homunculus_db` VALUES(6004,6012,'Vanilmirth',911,60000,0,1,0,0,700,80,11,11,11,11,11,11,11,30,150,0,7,1,30,1,30,1,30,1,30,1,30,1,30,127,127,127,127,10,30,20,50,10,30,10,50,10,30,10,100);
REPLACE INTO `homunculus_db` VALUES(6005,6013,'Lif',537,60000,0,1,7,0,700,150,40,12,20,15,35,24,14,60,100,4,9,5,19,4,20,5,19,6,20,5,19,6,20,127,127,127,127,10,30,30,50,20,40,20,40,10,30,10,20);
REPLACE INTO `homunculus_db` VALUES(6006,6014,'Amistr',912,60000,0,1,2,0,700,320,10,20,17,35,11,24,13,80,130,1,4,8,20,1,10,4,20,3,19,4,20,3,19,127,127,120,127,20,50,20,50,20,50,10,30,10,30,10,30);
REPLACE INTO `homunculus_db` VALUES(6007,6015,'Filir',910,60000,0,1,2,0,700,90,25,29,35,9,8,30,9,45,75,3,6,4,20,3,19,1,10,4,20,8,20,3,19,127,127,127,127,10,30,10,30,10,30,20,50,20,50,10,20);
REPLACE INTO `homunculus_db` VALUES(6008,6016,'Vanilmirth',911,60000,0,1,0,0,700,80,11,11,11,11,11,11,11,30,150,0,7,1,30,1,30,1,30,1,30,1,30,1,30,127,127,127,127,10,30,20,50,10,30,10,50,10,30,10,100);
REPLACE INTO `homunculus_db` VALUES(6048,6048,'Eira',6098,60000,1,1,8,0,700,450,120,36,60,45,105,86,42,40,160,20,42,13,39,14,48,15,25,16,36,28,42,9,18,127,127,10,127,1,10,1,10,1,10,1,10,1,10,1,10);
REPLACE INTO `homunculus_db` VALUES(6049,6049,'Bayeri',6112,60000,1,1,2,0,700,1060,30,60,51,105,33,86,39,90,360,48,52,18,36,22,44,16,32,12,24,8,36,20,36,127,127,10,127,1,10,1,10,1,10,1,10,1,10,1,10);
REPLACE INTO `homunculus_db` VALUES(6050,6050,'Sera',6108,60000,1,1,4,0,700,330,80,87,90,55,24,126,9,60,240,36,64,10,25,7,35,5,25,28,40,16,32,20,40,127,127,10,127,1,10,1,10,1,10,1,10,1,10,1,10);
REPLACE INTO `homunculus_db` VALUES(6051,6051,'Dieter',6104,60000,1,1,0,0,700,300,44,44,44,44,44,53,44,240,480,40,120,20,40,15,40,18,36,16,32,13,26,4,16,127,127,10,127,1,10,1,10,1,10,1,10,1,10,1,10);
REPLACE INTO `homunculus_db` VALUES(6052,6052,'Eleanor',6115,60000,1,1,7,0,700,310,60,87,115,27,24,108,27,60,300,10,20,20,40,5,15,24,48,12,36,10,50,2,10,127,127,10,127,1,10,1,10,1,10,1,10,1,10,1,10);

--
-- Estrutura da tabela `homun_skill_tree_db`
--

CREATE TABLE IF NOT EXISTS `homun_skill_tree_db` (
  `Class` smallint(5) unsigned NOT NULL,
  `SkillID` smallint(5) unsigned NOT NULL,
  `MaxLv` tinyint(4) NOT NULL,
  `PrereqSkillID1` smallint(5) unsigned NOT NULL,
  `PrereqSkillLv1` tinyint(4) NOT NULL DEFAULT '0',
  `PrereqSkillID2` smallint(5) unsigned NOT NULL,
  `PrereqSkillLv2` tinyint(4) NOT NULL DEFAULT '0',
  `PrereqSkillID3` smallint(5) unsigned NOT NULL,
  `PrereqSkillLv3` tinyint(4) NOT NULL DEFAULT '0',
  `PrereqSkillID4` smallint(5) unsigned NOT NULL,
  `PrereqSkillLv4` tinyint(4) NOT NULL DEFAULT '0',
  `PrereqSkillID5` smallint(5) unsigned NOT NULL,
  `PrereqSkillLv5` tinyint(4) NOT NULL DEFAULT '0',
  `IntimacyLvReq` smallint(5) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `homun_skill_tree_db`
--

REPLACE INTO `homun_skill_tree_db` VALUES(6001,8001,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6001,8002,5,8001,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6001,8003,5,8001,5,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6002,8005,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6002,8006,5,8005,5,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6002,8007,5,8006,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6003,8009,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6003,8010,5,8009,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6003,8011,5,8010,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6004,8013,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6004,8014,5,8013,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6004,8015,5,8013,5,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6005,8001,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6005,8002,5,8001,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6005,8003,5,8001,5,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6006,8005,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6006,8006,5,8005,5,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6006,8007,5,8006,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6007,8009,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6007,8010,5,8009,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6007,8011,5,8010,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6008,8013,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6008,8014,5,8013,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6008,8015,5,8013,5,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6009,8001,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6009,8002,5,8001,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6009,8003,5,8001,5,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6009,8004,3,0,0,0,0,0,0,0,0,0,0,910);
REPLACE INTO `homun_skill_tree_db` VALUES(6010,8005,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6010,8006,5,8005,5,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6010,8007,5,8006,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6010,8008,3,0,0,0,0,0,0,0,0,0,0,910);
REPLACE INTO `homun_skill_tree_db` VALUES(6011,8009,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6011,8010,5,8009,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6011,8011,5,8010,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6011,8012,3,0,0,0,0,0,0,0,0,0,0,910);
REPLACE INTO `homun_skill_tree_db` VALUES(6012,8013,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6012,8014,5,8013,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6012,8015,5,8013,5,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6012,8016,3,0,0,0,0,0,0,0,0,0,0,910);
REPLACE INTO `homun_skill_tree_db` VALUES(6013,8001,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6013,8002,5,8001,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6013,8003,5,8001,5,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6013,8004,3,0,0,0,0,0,0,0,0,0,0,910);
REPLACE INTO `homun_skill_tree_db` VALUES(6014,8005,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6014,8006,5,8005,5,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6014,8007,5,8006,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6014,8008,3,0,0,0,0,0,0,0,0,0,0,910);
REPLACE INTO `homun_skill_tree_db` VALUES(6015,8009,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6015,8010,5,8009,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6015,8011,5,8010,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6015,8012,3,0,0,0,0,0,0,0,0,0,0,910);
REPLACE INTO `homun_skill_tree_db` VALUES(6016,8013,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6016,8014,5,8013,3,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6016,8015,5,8013,5,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6016,8016,3,0,0,0,0,0,0,0,0,0,0,910);
REPLACE INTO `homun_skill_tree_db` VALUES(6048,8022,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6048,8023,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6048,8024,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6048,8025,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6048,8026,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6049,8031,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6049,8032,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6049,8033,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6049,8034,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6049,8035,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6050,8018,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6050,8019,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6050,8020,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6050,8021,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6051,8039,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6051,8040,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6051,8041,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6051,8042,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6051,8043,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052,8027,1,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052,8028,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052,8029,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052,8030,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052,8036,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052,8037,5,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `homun_skill_tree_db` VALUES(6052,8038,5,0,0,0,0,0,0,0,0,0,0,0);

--
-- Estrutura da tabela `item_avail_db`
--

CREATE TABLE IF NOT EXISTS `item_avail_db` (
  `ItemID` smallint(5) unsigned NOT NULL,
  `SpriteID` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `item_bluebox_db`
--

CREATE TABLE IF NOT EXISTS `item_bluebox_db` (
  `GroupID` tinyint(3) unsigned NOT NULL,
  `ItemID` smallint(5) unsigned NOT NULL,
  `Rate` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `item_buyingstore_db`
--

CREATE TABLE IF NOT EXISTS `item_buyingstore_db` (
  `ItemID` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `item_cardalbum_db`
--

CREATE TABLE IF NOT EXISTS `item_cardalbum_db` (
  `GroupID` tinyint(4) NOT NULL,
  `ItemID` smallint(5) unsigned NOT NULL,
  `Rate` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `item_combo_db`
--

CREATE TABLE IF NOT EXISTS `item_combo_db` (
  `Combo` text NOT NULL,
  `Script` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `item_delay_db`
--

CREATE TABLE IF NOT EXISTS `item_delay_db` (
  `ItemID` smallint(5) unsigned NOT NULL,
  `Delay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `item_findingore_db`
--

CREATE TABLE IF NOT EXISTS `item_findingore_db` (
  `GroupID` tinyint(4) NOT NULL,
  `ItemID` smallint(5) unsigned NOT NULL,
  `Rate` smallint(6) NOT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `item_giftbox_db`
--

CREATE TABLE IF NOT EXISTS `item_giftbox_db` (
  `GroupID` tinyint(4) NOT NULL,
  `ItemID` smallint(5) unsigned NOT NULL,
  `Rate` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `item_stack_db`
--

CREATE TABLE IF NOT EXISTS `item_stack_db` (
  `ItemID` smallint(5) unsigned NOT NULL,
  `Amount` smallint(5) unsigned NOT NULL,
  `Type` tinyint(4) NOT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `item_violetbox_db`
--

CREATE TABLE IF NOT EXISTS `item_violetbox_db` (
  `GroupID` tinyint(4) NOT NULL,
  `ItemID` smallint(5) unsigned NOT NULL,
  `Rate` smallint(5) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `job_db1`
--

CREATE TABLE IF NOT EXISTS `job_db1` (
  `JobID` smallint(5) unsigned NOT NULL,
  `Weight` mediumint(9) NOT NULL DEFAULT '0',
  `HPFactor` smallint(6) NOT NULL DEFAULT '0',
  `HPMultiplicator` smallint(6) NOT NULL DEFAULT '0',
  `SPFactor` smallint(6) NOT NULL DEFAULT '0',
  `Unarmed` smallint(6) NOT NULL DEFAULT '0',
  `Dagger` smallint(6) NOT NULL DEFAULT '0',
  `Sword` smallint(6) NOT NULL DEFAULT '0',
  `Two_Handed_Sword` smallint(6) NOT NULL DEFAULT '0',
  `Spear` smallint(6) NOT NULL DEFAULT '0',
  `Two_Handed_Spear` smallint(6) NOT NULL DEFAULT '0',
  `Axe` smallint(6) NOT NULL DEFAULT '0',
  `Two_Handed_Axe` smallint(6) NOT NULL DEFAULT '0',
  `Mace` smallint(6) NOT NULL DEFAULT '0',
  `Two_Handed_Mace` smallint(6) NOT NULL DEFAULT '0',
  `Rod` smallint(6) NOT NULL DEFAULT '0',
  `Bow` smallint(6) NOT NULL DEFAULT '0',
  `Knuckle` smallint(6) NOT NULL DEFAULT '0',
  `Instrument` smallint(6) NOT NULL DEFAULT '0',
  `Whip` smallint(6) NOT NULL DEFAULT '0',
  `Book` smallint(6) NOT NULL DEFAULT '0',
  `Katar` smallint(6) NOT NULL DEFAULT '0',
  `Revolver` smallint(6) NOT NULL DEFAULT '0',
  `Rifle` smallint(6) NOT NULL DEFAULT '0',
  `Gatling Gun` smallint(6) NOT NULL DEFAULT '0',
  `Shotgun` smallint(6) NOT NULL DEFAULT '0',
  `Grenade Launcher` smallint(6) NOT NULL DEFAULT '0',
  `Fuuma Shuriken` smallint(6) NOT NULL DEFAULT '0',
  `Two_Handed_Staff` smallint(6) NOT NULL DEFAULT '0',
  `Shield` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`JobID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `job_db2`
--

CREATE TABLE IF NOT EXISTS `job_db2` (
  `JobID` smallint(4) unsigned NOT NULL,
  `Level 1` tinyint(1) NOT NULL DEFAULT '0',
  `Level 2` tinyint(1) NOT NULL DEFAULT '0',
  `Level 3` tinyint(1) NOT NULL DEFAULT '0',
  `Level 4` tinyint(1) NOT NULL DEFAULT '0',
  `Level 5` tinyint(1) NOT NULL DEFAULT '0',
  `Level 6` tinyint(1) NOT NULL DEFAULT '0',
  `Level 7` tinyint(1) NOT NULL DEFAULT '0',
  `Level 8` tinyint(1) NOT NULL DEFAULT '0',
  `Level 9` tinyint(1) NOT NULL DEFAULT '0',
  `Level 10` tinyint(2) NOT NULL DEFAULT '0',
  `Level 11` tinyint(2) NOT NULL DEFAULT '0',
  `Level 12` tinyint(2) NOT NULL DEFAULT '0',
  `Level 13` tinyint(2) NOT NULL DEFAULT '0',
  `Level 14` tinyint(2) NOT NULL DEFAULT '0',
  `Level 15` tinyint(2) NOT NULL DEFAULT '0',
  `Level 16` tinyint(2) NOT NULL DEFAULT '0',
  `Level 17` tinyint(2) NOT NULL DEFAULT '0',
  `Level 18` tinyint(2) NOT NULL DEFAULT '0',
  `Level 19` tinyint(2) NOT NULL DEFAULT '0',
  `Level 20` tinyint(2) NOT NULL DEFAULT '0',
  `Level 21` tinyint(2) NOT NULL DEFAULT '0',
  `Level 22` tinyint(2) NOT NULL DEFAULT '0',
  `Level 23` tinyint(2) NOT NULL DEFAULT '0',
  `Level 24` tinyint(2) NOT NULL DEFAULT '0',
  `Level 25` tinyint(2) NOT NULL DEFAULT '0',
  `Level 26` tinyint(2) NOT NULL DEFAULT '0',
  `Level 27` tinyint(2) NOT NULL DEFAULT '0',
  `Level 28` tinyint(2) NOT NULL DEFAULT '0',
  `Level 29` tinyint(2) NOT NULL DEFAULT '0',
  `Level 30` tinyint(2) NOT NULL DEFAULT '0',
  `Level 31` tinyint(2) NOT NULL DEFAULT '0',
  `Level 32` tinyint(2) NOT NULL DEFAULT '0',
  `Level 33` tinyint(2) NOT NULL DEFAULT '0',
  `Level 34` tinyint(2) NOT NULL DEFAULT '0',
  `Level 35` tinyint(2) NOT NULL DEFAULT '0',
  `Level 36` tinyint(2) NOT NULL DEFAULT '0',
  `Level 37` tinyint(2) NOT NULL DEFAULT '0',
  `Level 38` tinyint(2) NOT NULL DEFAULT '0',
  `Level 39` tinyint(2) NOT NULL DEFAULT '0',
  `Level 40` tinyint(2) NOT NULL DEFAULT '0',
  `Level 41` tinyint(2) NOT NULL DEFAULT '0',
  `Level 42` tinyint(2) NOT NULL DEFAULT '0',
  `Level 43` tinyint(2) NOT NULL DEFAULT '0',
  `Level 44` tinyint(2) NOT NULL DEFAULT '0',
  `Level 45` tinyint(2) NOT NULL DEFAULT '0',
  `Level 46` tinyint(2) NOT NULL DEFAULT '0',
  `Level 47` tinyint(2) NOT NULL DEFAULT '0',
  `Level 48` tinyint(2) NOT NULL DEFAULT '0',
  `Level 49` tinyint(2) NOT NULL DEFAULT '0',
  `Level 50` tinyint(2) NOT NULL DEFAULT '0',
  `Level 51` tinyint(2) NOT NULL DEFAULT '0',
  `Level 52` tinyint(2) NOT NULL DEFAULT '0',
  `Level 53` tinyint(2) NOT NULL DEFAULT '0',
  `Level 54` tinyint(2) NOT NULL DEFAULT '0',
  `Level 55` tinyint(2) NOT NULL DEFAULT '0',
  `Level 56` tinyint(2) NOT NULL DEFAULT '0',
  `Level 57` tinyint(2) NOT NULL DEFAULT '0',
  `Level 58` tinyint(2) NOT NULL DEFAULT '0',
  `Level 59` tinyint(2) NOT NULL DEFAULT '0',
  `Level 60` tinyint(2) NOT NULL DEFAULT '0',
  `Level 61` tinyint(2) NOT NULL DEFAULT '0',
  `Level 62` tinyint(2) NOT NULL DEFAULT '0',
  `Level 63` tinyint(2) NOT NULL DEFAULT '0',
  `Level 64` tinyint(2) NOT NULL DEFAULT '0',
  `Level 65` tinyint(2) NOT NULL DEFAULT '0',
  `Level 66` tinyint(2) NOT NULL DEFAULT '0',
  `Level 67` tinyint(2) NOT NULL DEFAULT '0',
  `Level 68` tinyint(2) NOT NULL DEFAULT '0',
  `Level 69` tinyint(2) NOT NULL DEFAULT '0',
  `Level 70` tinyint(2) NOT NULL DEFAULT '0',
  `Level 71` tinyint(2) NOT NULL DEFAULT '0',
  `Level 72` tinyint(2) NOT NULL DEFAULT '0',
  `Level 73` tinyint(2) NOT NULL DEFAULT '0',
  `Level 74` tinyint(2) NOT NULL DEFAULT '0',
  `Level 75` tinyint(2) NOT NULL DEFAULT '0',
  `Level 76` tinyint(2) NOT NULL DEFAULT '0',
  `Level 77` tinyint(2) NOT NULL DEFAULT '0',
  `Level 78` tinyint(2) NOT NULL DEFAULT '0',
  `Level 79` tinyint(2) NOT NULL DEFAULT '0',
  `Level 80` tinyint(2) NOT NULL DEFAULT '0',
  `Level 81` tinyint(2) NOT NULL DEFAULT '0',
  `Level 82` tinyint(2) NOT NULL DEFAULT '0',
  `Level 83` tinyint(2) NOT NULL DEFAULT '0',
  `Level 84` tinyint(2) NOT NULL DEFAULT '0',
  `Level 85` tinyint(2) NOT NULL DEFAULT '0',
  `Level 86` tinyint(2) NOT NULL DEFAULT '0',
  `Level 87` tinyint(2) NOT NULL DEFAULT '0',
  `Level 88` tinyint(2) NOT NULL DEFAULT '0',
  `Level 89` tinyint(2) NOT NULL DEFAULT '0',
  `Level 90` tinyint(2) NOT NULL DEFAULT '0',
  `Level 91` tinyint(2) NOT NULL DEFAULT '0',
  `Level 92` tinyint(2) NOT NULL DEFAULT '0',
  `Level 93` tinyint(2) NOT NULL DEFAULT '0',
  `Level 94` tinyint(2) NOT NULL DEFAULT '0',
  `Level 95` tinyint(2) NOT NULL DEFAULT '0',
  `Level 96` tinyint(2) NOT NULL DEFAULT '0',
  `Level 97` tinyint(2) NOT NULL DEFAULT '0',
  `Level 98` tinyint(2) NOT NULL DEFAULT '0',
  `Level 99` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`JobID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Aprendiz
REPLACE INTO `job_db2` VALUES (0,0,6,5,0,2,3,0,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Espadachim
REPLACE INTO `job_db2` VALUES (1,0,1,0,0,0,3,0,0,0,5,0,0,0,1,0,0,0,3,0,0,0,5,0,0,0,6,0,0,0,2,0,0,1,0,0,5,0,3,0,1,0,3,0,6,0,2,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mago
REPLACE INTO `job_db2` VALUES (2,0,4,0,0,0,5,0,0,0,5,0,0,0,4,0,0,0,2,0,0,0,4,0,0,0,2,0,0,0,6,0,0,4,0,0,5,0,4,0,2,0,6,0,4,0,4,2,0,6,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Arqueiro
REPLACE INTO `job_db2` VALUES (3,0,5,0,0,0,1,0,0,0,4,0,0,0,5,0,0,0,5,0,0,0,6,0,0,0,2,0,0,0,5,0,0,2,0,0,5,0,1,0,1,0,5,0,6,0,3,4,0,2,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Noviço
REPLACE INTO `job_db2` VALUES (4,0,6,0,0,0,3,0,0,0,4,0,0,0,5,0,0,0,6,0,0,0,2,0,0,0,1,0,0,0,3,0,0,4,0,0,5,0,6,0,2,0,1,0,3,0,4,5,0,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mercador
REPLACE INTO `job_db2` VALUES (5,0,3,0,0,0,5,0,0,0,1,0,0,0,5,0,0,0,3,0,0,0,1,0,0,0,4,0,0,0,3,0,0,2,0,0,6,0,5,0,1,0,5,0,1,0,6,3,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Gatuno
REPLACE INTO `job_db2` VALUES (6,0,2,0,0,0,1,0,0,0,5,0,0,0,3,0,0,0,4,0,0,0,5,0,0,0,6,0,0,0,1,0,0,2,0,0,2,0,1,0,6,0,5,0,3,0,6,1,0,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Cavaleiro
REPLACE INTO `job_db2` VALUES (7,3,0,3,1,6,0,0,3,0,1,5,3,2,0,1,0,3,3,5,6,1,0,3,0,0,0,1,6,3,0,5,0,1,0,0,3,6,2,0,5,0,0,3,0,0,1,1,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Sacerdote
REPLACE INTO `job_db2` VALUES (8,6,0,6,1,0,2,3,4,4,6,1,0,0,3,0,5,1,0,0,5,6,4,0,0,5,0,1,0,2,0,6,5,0,3,1,3,2,0,6,0,0,4,4,0,3,0,0,2,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bruxo
REPLACE INTO `job_db2` VALUES (9,4,5,0,4,5,2,0,0,4,2,0,1,5,0,6,0,0,4,0,0,0,4,0,2,0,5,0,0,4,0,4,5,4,2,0,6,0,3,5,4,2,0,2,0,4,2,2,4,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Ferreiro
REPLACE INTO `job_db2` VALUES (10,5,0,1,5,5,0,3,1,5,0,6,5,3,0,0,1,0,0,5,3,4,0,1,0,0,5,0,5,2,0,1,3,0,4,0,5,3,2,5,5,0,0,0,1,0,6,5,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Caçador
REPLACE INTO `job_db2` VALUES (11,5,0,4,5,6,1,0,5,0,1,1,2,0,5,6,0,3,0,2,2,5,0,3,0,0,0,5,0,6,0,2,0,5,4,0,0,0,5,2,0,4,6,5,1,0,4,2,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mercenário
REPLACE INTO `job_db2` VALUES (12,2,2,2,4,0,3,0,3,5,0,1,0,0,4,2,2,2,2,2,2,2,0,0,5,1,0,1,0,0,5,5,1,0,0,0,0,0,4,0,5,5,4,0,0,1,5,0,1,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Cavaleiro (Pecopeco)
REPLACE INTO `job_db2` VALUES (13,3,0,3,1,6,0,0,3,0,1,5,3,2,0,1,0,3,3,5,6,1,0,3,0,0,0,1,6,3,0,5,0,1,0,0,3,6,2,0,5,0,0,3,0,0,1,1,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Templário
REPLACE INTO `job_db2` VALUES (14,6,6,6,6,6,0,1,0,4,0,1,3,0,5,3,0,1,0,0,4,4,3,1,0,1,0,0,5,0,2,0,1,0,5,4,2,0,4,0,3,3,0,0,4,0,3,0,1,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Monge
REPLACE INTO `job_db2` VALUES (15,1,1,0,5,2,0,3,0,0,2,0,1,1,0,6,4,0,2,0,3,2,5,2,0,3,1,1,0,0,5,0,6,3,0,2,0,0,4,0,6,3,0,5,2,0,3,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Sábio
REPLACE INTO `job_db2` VALUES (16,4,0,2,3,0,2,0,4,0,0,3,0,2,0,4,0,6,3,0,5,0,2,0,4,5,0,5,0,0,4,0,5,2,0,6,0,4,4,5,6,0,1,0,1,4,1,1,1,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Arruaceiro
REPLACE INTO `job_db2` VALUES (17,2,3,5,0,1,3,2,0,3,0,5,0,0,3,3,2,0,5,0,5,0,0,2,0,1,3,1,0,2,1,0,0,5,5,0,1,0,4,2,0,0,1,4,0,2,0,4,4,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Alquímista
REPLACE INTO `job_db2` VALUES (18,4,5,5,0,0,1,0,5,4,0,2,0,5,2,1,0,4,0,5,3,5,0,4,4,5,1,0,5,4,0,3,5,0,1,0,3,0,4,0,2,0,0,1,0,2,0,0,0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bardo
REPLACE INTO `job_db2` VALUES (19,5,2,1,0,4,6,5,0,6,2,2,0,4,0,5,5,3,0,5,6,4,0,0,2,0,0,0,1,0,2,0,5,3,0,2,0,0,5,0,4,6,0,3,0,0,5,4,2,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Odalisca
REPLACE INTO `job_db2` VALUES (20,6,2,1,0,4,5,6,0,5,2,2,0,4,0,6,5,3,0,6,5,4,0,0,2,0,0,0,1,0,2,0,6,3,0,2,0,0,6,0,4,5,0,3,0,0,6,4,2,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Templário (Pecopeco)
REPLACE INTO `job_db2` VALUES (21,6,6,6,6,6,0,1,0,4,0,1,3,0,5,3,0,1,0,0,4,4,3,1,0,1,0,0,5,0,2,0,1,0,5,4,2,0,4,0,3,3,0,0,4,0,3,0,1,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Super Aprendiz
REPLACE INTO `job_db2` VALUES (23,1,0,2,0,3,0,4,0,5,0,6,0,1,0,2,0,3,0,4,0,5,0,6,0,1,0,2,0,3,0,4,0,5,0,6,0,1,0,2,0,3,0,4,0,5,0,6,0,1,0,0,2,0,0,0,3,0,0,0,4,0,0,0,5,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Justiceiro
REPLACE INTO `job_db2` VALUES (24,5,6,0,6,0,5,0,0,0,0,5,6,0,0,0,0,5,0,0,0,6,0,0,0,5,0,0,0,0,0,6,1,0,0,5,0,0,0,0,0,1,0,0,0,5,0,0,0,0,1,6,4,0,0,5,0,0,0,2,3,4,5,6,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Ninja
REPLACE INTO `job_db2` VALUES (25,2,2,0,0,0,0,0,0,0,5,2,0,0,0,0,0,0,0,0,4,2,5,0,0,0,0,0,0,4,6,2,5,0,0,0,0,0,0,0,6,2,4,5,0,0,0,0,0,0,4,2,6,5,0,0,0,0,0,1,3,2,4,5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Aprendiz Transcedental
REPLACE INTO `job_db2` VALUES (4001,0,6,5,0,2,3,0,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Espadachim Transcedental
REPLACE INTO `job_db2` VALUES (4002,0,1,0,0,0,3,0,0,0,5,0,0,0,1,0,0,0,3,0,0,0,5,0,0,0,6,0,0,0,2,0,0,1,0,0,5,0,3,0,1,0,3,0,6,0,2,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mago Transcedental
REPLACE INTO `job_db2` VALUES (4003,0,4,0,0,0,5,0,0,0,5,0,0,0,4,0,0,0,2,0,0,0,4,0,0,0,2,0,0,0,6,0,0,4,0,0,5,0,4,0,2,0,6,0,4,0,4,2,0,6,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Arqueiro Transcedental
REPLACE INTO `job_db2` VALUES (4004,0,5,0,0,0,1,0,0,0,4,0,0,0,5,0,0,0,5,0,0,0,6,0,0,0,2,0,0,0,5,0,0,2,0,0,5,0,1,0,1,0,5,0,6,0,3,4,0,2,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Noviço Transcedental
REPLACE INTO `job_db2` VALUES (4005,0,6,0,0,0,3,0,0,0,4,0,0,0,5,0,0,0,6,0,0,0,2,0,0,0,1,0,0,0,3,0,0,4,0,0,5,0,6,0,2,0,1,0,3,0,4,5,0,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mercador Transcedental
REPLACE INTO `job_db2` VALUES (4006,0,3,0,0,0,5,0,0,0,1,0,0,0,5,0,0,0,3,0,0,0,1,0,0,0,4,0,0,0,3,0,0,2,0,0,6,0,5,0,1,0,5,0,1,0,6,3,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Gatuno Transcedental
REPLACE INTO `job_db2` VALUES (4007,0,2,0,0,0,1,0,0,0,5,0,0,0,3,0,0,0,4,0,0,0,5,0,0,0,6,0,0,0,1,0,0,2,0,0,2,0,1,0,6,0,5,0,3,0,6,1,0,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Lorde
REPLACE INTO `job_db2` VALUES (4008,1,2,6,5,3,1,1,1,0,2,5,3,4,2,0,5,2,0,1,0,0,3,0,0,1,0,6,5,3,0,5,0,1,0,0,5,2,6,0,3,1,0,3,5,0,1,1,0,5,0,0,1,2,0,0,1,1,3,0,2,0,5,0,1,2,0,4,3,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Sumo-Sacerdote
REPLACE INTO `job_db2` VALUES (4009,4,0,2,3,1,0,4,2,0,0,4,1,5,0,0,5,0,0,2,4,1,3,4,4,0,5,0,5,2,3,1,0,0,4,0,0,5,1,0,6,0,2,5,0,1,5,4,0,6,3,3,0,0,0,2,5,4,3,0,1,4,5,0,0,2,4,3,2,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Arquimago
REPLACE INTO `job_db2` VALUES (4010,4,5,3,0,4,0,0,2,5,4,0,6,0,4,0,0,5,2,4,1,0,5,5,4,0,2,0,4,3,0,5,4,0,2,0,0,4,4,4,1,6,0,5,0,0,4,3,0,4,2,0,0,3,0,4,2,6,0,4,1,5,4,0,0,2,3,5,0,2,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mestre-Ferreiro
REPLACE INTO `job_db2` VALUES (4011,5,1,1,4,0,5,2,6,3,0,0,5,3,0,4,6,1,0,2,2,0,4,5,0,0,1,0,6,3,0,2,5,1,4,0,2,0,5,6,0,5,0,0,6,6,0,5,3,0,4,0,1,0,0,5,5,0,2,0,3,4,5,0,2,3,6,6,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Atirador de Elite
REPLACE INTO `job_db2` VALUES (4012,5,2,5,5,4,2,0,1,0,2,2,3,0,6,0,5,5,0,0,4,2,5,0,1,6,5,0,2,0,5,6,3,2,0,5,6,0,2,0,5,0,4,2,0,1,5,0,2,0,6,5,0,0,4,3,0,6,2,0,5,1,6,0,0,4,0,0,0,5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Algoz
REPLACE INTO `job_db2` VALUES (4013,2,1,6,2,2,0,1,6,3,5,0,1,0,0,2,6,0,6,0,2,1,0,5,2,2,6,0,0,1,0,2,2,2,6,0,0,5,1,5,0,0,2,5,0,0,2,3,6,0,1,2,0,5,1,0,2,5,0,0,0,5,2,0,5,6,1,0,0,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Lorde (Peco)
REPLACE INTO `job_db2` VALUES (4014,1,2,6,5,3,1,1,1,0,2,5,3,4,2,0,5,2,0,1,0,0,3,0,0,1,0,6,5,3,0,5,0,1,0,0,5,2,6,0,3,1,0,3,5,0,1,1,0,5,0,0,1,2,0,0,1,1,3,0,2,0,5,0,1,2,0,4,3,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Paladino
REPLACE INTO `job_db2` VALUES (4015,3,1,2,0,0,5,4,2,3,1,0,5,0,4,3,2,5,1,0,0,3,0,5,2,0,1,0,0,4,3,0,0,1,0,0,5,2,0,6,1,0,3,4,0,5,0,0,1,3,0,0,2,3,4,1,0,5,0,6,2,4,0,3,1,4,0,6,5,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mestre
REPLACE INTO `job_db2` VALUES (4016,1,4,3,2,0,5,0,0,1,0,4,2,6,0,3,5,1,0,0,2,2,5,0,3,0,0,1,0,2,5,0,0,4,6,0,0,1,5,3,0,0,3,0,5,2,6,4,1,0,5,0,2,5,0,0,4,0,3,1,5,0,2,0,4,1,1,5,3,4,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Professor
REPLACE INTO `job_db2` VALUES (4017,4,4,2,0,1,0,3,5,0,0,4,2,0,4,0,5,0,1,0,5,6,4,2,3,0,5,1,0,5,4,0,2,0,5,0,1,5,4,3,0,4,0,2,0,1,5,0,0,4,2,0,5,0,2,5,1,4,0,0,2,0,5,3,4,0,6,0,4,2,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Desordeiro
REPLACE INTO `job_db2` VALUES (4018,1,2,0,6,4,3,0,0,2,5,1,2,0,0,3,5,5,0,0,6,2,1,0,6,0,5,2,0,5,0,6,1,0,2,0,0,5,5,0,0,2,3,1,4,2,0,1,0,5,6,0,5,1,0,0,5,4,2,6,5,0,1,3,2,0,5,1,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Criador
REPLACE INTO `job_db2` VALUES (4019,5,0,6,0,2,1,4,6,3,5,0,0,4,0,5,0,0,2,0,6,0,4,5,0,6,0,2,0,0,4,1,0,3,6,5,0,0,2,0,0,5,5,5,0,6,4,5,0,5,0,6,6,1,2,0,5,5,0,4,6,3,0,5,6,0,1,2,4,6,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Menestrel
REPLACE INTO `job_db2` VALUES (4020,2,5,0,2,1,0,5,4,2,1,6,0,2,0,5,3,0,6,1,0,4,0,5,2,0,6,0,4,0,5,0,2,1,0,0,2,0,0,5,5,4,0,5,0,1,0,6,0,2,5,0,0,2,1,0,5,5,2,3,0,5,1,5,0,2,5,0,2,4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Cigana
REPLACE INTO `job_db2` VALUES (4021,5,1,0,2,0,1,0,4,5,0,2,2,2,5,5,0,3,5,0,1,0,5,5,0,2,4,6,5,0,0,2,0,5,0,1,0,0,2,4,0,5,0,5,0,5,0,2,0,5,1,0,2,4,3,0,0,2,5,0,4,2,2,6,0,5,1,2,0,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Paladino (Pecopeco)
REPLACE INTO `job_db2` VALUES (4022,3,1,2,0,0,5,4,2,3,1,0,5,0,4,3,2,5,1,0,0,3,0,5,2,0,1,0,0,4,3,0,0,1,0,0,5,2,0,6,1,0,3,4,0,5,0,0,1,3,0,0,2,3,4,1,0,5,0,6,2,4,0,3,1,4,0,6,5,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Aprendiz
REPLACE INTO `job_db2` VALUES (4023,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Espadachim
REPLACE INTO `job_db2` VALUES (4024,0,1,0,0,0,3,0,0,0,5,0,0,0,1,0,0,0,3,0,0,0,5,0,0,0,6,0,0,0,2,0,0,1,0,0,5,0,3,0,1,0,3,0,6,0,2,1,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Mago
REPLACE INTO `job_db2` VALUES (4025,0,4,0,0,0,5,0,0,0,5,0,0,0,4,0,0,0,2,0,0,0,4,0,0,0,2,0,0,0,6,0,0,4,0,0,5,0,4,0,2,0,6,0,4,0,4,2,0,6,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Arqueiro
REPLACE INTO `job_db2` VALUES (4026,0,5,0,0,0,1,0,0,0,4,0,0,0,5,0,0,0,5,0,0,0,6,0,0,0,2,0,0,0,5,0,0,2,0,0,5,0,1,0,1,0,5,0,6,0,3,4,0,2,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Noviço
REPLACE INTO `job_db2` VALUES (4027,0,6,0,0,0,3,0,0,0,4,0,0,0,5,0,0,0,6,0,0,0,2,0,0,0,1,0,0,0,3,0,0,4,0,0,5,0,6,0,2,0,1,0,3,0,4,5,0,1,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Mercador
REPLACE INTO `job_db2` VALUES (4028,0,3,0,0,0,5,0,0,0,1,0,0,0,5,0,0,0,3,0,0,0,1,0,0,0,4,0,0,0,3,0,0,0,0,0,6,0,5,0,1,2,5,0,1,0,6,3,0,1,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Gatuno
REPLACE INTO `job_db2` VALUES (4029,0,2,0,0,0,1,0,0,0,5,0,0,0,3,0,0,0,4,0,0,0,5,0,0,0,6,0,0,0,1,0,0,2,0,0,1,0,2,0,6,0,5,0,3,0,6,1,0,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Cavaleiro
REPLACE INTO `job_db2` VALUES (4030,3,0,3,1,6,0,0,3,0,1,5,3,2,0,1,0,3,3,5,6,1,0,3,0,0,0,1,6,3,0,5,0,1,0,0,3,6,2,0,5,0,0,3,0,0,1,1,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Sacerdote
REPLACE INTO `job_db2` VALUES (4031,6,0,6,1,0,2,3,4,4,6,1,0,0,3,5,0,1,0,0,5,6,4,0,0,5,0,1,0,2,0,6,5,0,3,1,3,2,0,6,0,0,4,4,0,3,0,0,2,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Bruxo
REPLACE INTO `job_db2` VALUES (4032,4,5,0,4,5,2,0,0,4,2,0,1,5,0,6,0,0,4,0,0,0,4,0,2,0,5,0,0,4,0,4,5,4,2,0,6,0,3,5,4,2,0,2,0,4,2,2,4,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Ferreiro
REPLACE INTO `job_db2` VALUES (4033,5,0,1,5,5,0,3,1,0,5,6,5,3,0,0,1,0,0,5,3,4,0,1,0,0,5,0,5,2,0,1,3,0,4,0,5,3,2,5,5,0,0,0,1,0,6,5,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Caçador
REPLACE INTO `job_db2` VALUES (4034,5,0,4,5,1,0,6,5,0,1,1,2,0,5,6,0,3,0,2,2,5,3,0,0,0,0,5,0,6,0,2,0,5,4,0,0,0,5,2,0,4,6,5,1,0,4,2,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Mercenário
REPLACE INTO `job_db2` VALUES (4035,2,2,2,4,0,3,0,3,5,0,1,0,0,4,2,2,2,2,2,2,2,0,0,5,1,0,1,0,0,5,5,1,0,0,0,0,0,4,0,5,5,4,0,0,1,5,0,1,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Cavaleiro (Pecopeco)
REPLACE INTO `job_db2` VALUES (4036,3,0,3,1,6,0,0,3,0,1,5,3,2,0,1,0,3,3,5,6,1,0,3,0,0,0,1,6,3,0,5,0,1,0,0,3,6,2,0,5,0,0,3,0,0,1,1,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Templário
REPLACE INTO `job_db2` VALUES (4037,6,6,6,6,6,0,1,0,4,0,1,3,0,5,3,0,1,0,0,4,4,3,1,0,1,0,0,5,0,2,0,1,0,5,4,2,0,4,0,3,3,0,0,4,0,3,0,1,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Monge
REPLACE INTO `job_db2` VALUES (4038,1,1,0,5,2,0,3,0,0,2,0,1,1,0,6,4,0,2,0,3,2,5,2,0,3,1,1,0,0,5,0,6,3,0,2,0,0,4,0,6,3,0,5,2,0,3,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Sábio
REPLACE INTO `job_db2` VALUES (4039,4,0,2,3,0,2,0,4,0,0,3,0,2,0,4,0,6,3,0,5,0,2,0,4,5,0,5,0,0,4,0,5,2,0,6,0,4,4,5,6,0,1,0,1,4,1,1,1,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Arruaceiro
REPLACE INTO `job_db2` VALUES (4040,2,3,5,0,1,3,2,0,3,0,5,0,0,3,3,2,0,5,0,5,0,0,2,0,1,3,1,0,2,1,0,0,5,5,0,1,0,4,2,0,0,1,4,0,2,0,4,4,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Alquimista
REPLACE INTO `job_db2` VALUES (4041,4,5,5,0,0,1,0,5,4,0,2,0,5,2,1,0,4,0,5,3,5,0,4,4,5,1,0,5,4,0,3,5,0,1,0,3,0,4,0,2,0,0,1,0,2,0,0,0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Bardo
REPLACE INTO `job_db2` VALUES (4042,5,2,1,0,4,6,5,0,6,2,2,0,4,0,5,5,3,0,5,6,4,0,0,2,0,0,0,1,0,2,0,5,3,0,2,0,0,5,0,4,6,0,3,0,0,5,4,2,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Odalisca
REPLACE INTO `job_db2` VALUES (4043,6,2,1,0,4,5,6,0,5,2,2,0,4,0,6,5,3,0,6,5,4,0,0,2,0,0,0,1,0,2,0,6,3,0,2,0,0,6,0,4,5,0,3,0,0,6,4,2,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Templário (Pecopeco)
REPLACE INTO `job_db2` VALUES (4044,6,6,6,6,6,0,1,0,4,0,1,3,0,5,3,0,1,0,0,4,4,3,1,0,1,0,0,5,0,2,0,1,0,5,0,2,0,4,0,3,3,0,0,4,0,3,0,1,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Super Aprendiz 
REPLACE INTO `job_db2` VALUES (4045,1,0,2,0,3,0,4,0,5,0,6,0,1,0,2,0,3,0,4,0,5,0,6,0,1,0,2,0,3,0,4,0,5,0,6,0,1,0,2,0,3,0,4,0,5,0,6,0,1,0,0,2,0,0,0,3,0,0,0,4,0,0,0,5,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Taekwon
REPLACE INTO `job_db2` VALUES (4046,1,1,1,1,1,1,0,0,0,5,5,5,5,5,5,0,0,0,0,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mestre Taekwon
REPLACE INTO `job_db2` VALUES (4047,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,5,5,5,5,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mestre Taekwon (União)
REPLACE INTO `job_db2` VALUES (4048,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,5,5,5,5,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Espiritualista
REPLACE INTO `job_db2` VALUES (4049,4,4,4,4,4,4,4,4,4,4,4,4,0,0,0,0,0,0,0,3,3,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,5,5,5,5,5,5,5,5,5,5,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Gangsi (Bongun/Munak)
REPLACE INTO `job_db2` VALUES (4050,1,1,1,0,0,0,2,2,2,0,0,0,5,5,5,0,0,0,4,4,4,0,0,0,3,3,3,0,0,0,6,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Cavaleiro da Morte
REPLACE INTO `job_db2` VALUES (4051,2,2,2,2,2,0,0,0,5,5,5,5,5,0,0,0,6,6,6,6,6,0,0,0,0,4,4,4,4,4,0,0,0,0,0,3,3,3,3,3,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Coletor das Sombras
REPLACE INTO `job_db2` VALUES (4052,5,5,5,5,5,0,0,0,2,2,2,2,2,0,0,0,1,1,1,1,1,0,0,0,0,6,6,6,6,6,0,0,0,0,0,3,3,3,3,3,0,0,0,0,0,4,4,4,4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Cavaleiro Rúnico
REPLACE INTO `job_db2` VALUES (4054,4,4,5,3,4,0,0,0,0,1,1,4,4,3,5,0,0,0,5,2,2,4,3,5,0,0,0,0,0,4,5,3,1,0,0,0,0,0,4,5,2,0,0,5,3,4,6,6,6,4,1,0,2,0,5,0,6,0,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Arcano
REPLACE INTO `job_db2` VALUES (4055,4,4,5,0,0,5,4,2,0,0,0,4,5,0,3,0,0,3,5,2,0,0,4,3,3,0,0,5,2,0,6,0,0,1,4,4,0,0,5,2,4,0,0,4,4,0,2,0,0,4,5,3,6,2,4,0,3,2,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Sentinela
REPLACE INTO `job_db2` VALUES (4056,5,4,4,2,0,0,2,5,4,0,0,3,3,3,0,0,5,2,0,0,4,3,5,0,0,1,1,0,0,5,2,3,0,0,0,4,4,4,2,0,0,0,2,5,2,0,0,0,4,2,6,5,0,4,2,0,3,6,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Arcebispo
REPLACE INTO `job_db2` VALUES (4057,4,0,3,0,5,0,4,4,0,3,3,0,0,5,5,0,0,1,1,0,0,4,0,1,0,2,2,1,0,0,0,4,0,3,0,5,0,2,2,4,4,0,0,5,3,1,0,0,4,5,6,2,3,1,4,0,3,6,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mecânico
REPLACE INTO `job_db2` VALUES (4058,6,1,0,0,1,0,6,2,5,4,0,0,4,6,0,0,2,0,3,3,4,5,0,0,3,6,0,0,3,0,1,1,3,6,0,0,4,4,0,0,0,3,3,1,1,0,0,5,2,0,6,1,5,0,4,3,2,0,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Sicário
REPLACE INTO `job_db2` VALUES (4059,2,5,0,1,1,0,0,0,1,2,5,0,0,3,3,1,0,0,3,1,0,0,2,2,5,0,0,4,4,1,3,0,0,0,2,5,5,0,0,0,4,3,2,2,0,0,0,4,5,5,6,1,2,3,0,4,0,1,6,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Cavaleiro Rúnico Transcedental
REPLACE INTO `job_db2` VALUES (4060,4,4,5,3,4,0,0,0,0,1,1,4,4,3,5,0,0,0,5,2,2,4,3,5,0,0,0,0,0,4,5,3,1,0,0,0,0,0,4,5,2,0,0,5,3,4,6,6,6,4,1,0,2,0,5,0,6,0,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Arcano Transcedental
REPLACE INTO `job_db2` VALUES (4061,4,4,5,0,0,5,4,2,0,0,0,4,5,0,3,0,0,3,5,2,0,0,4,3,3,0,0,5,2,0,6,0,0,1,4,4,0,0,5,2,4,0,0,4,4,0,2,0,0,4,5,3,6,2,4,0,3,2,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Sentinela Transcedental
REPLACE INTO `job_db2` VALUES (4062,5,4,4,2,0,0,2,5,4,0,0,3,3,3,0,0,5,2,0,0,4,3,5,0,0,1,1,0,0,5,2,3,0,0,0,4,4,4,2,0,0,0,2,5,2,0,0,0,4,2,6,5,0,4,2,0,3,6,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Arcebispo Transcedental
REPLACE INTO `job_db2` VALUES (4063,4,0,3,0,5,0,4,4,0,3,3,0,0,5,5,0,0,1,1,0,0,4,0,1,0,2,2,1,0,0,0,4,0,3,0,5,0,2,2,4,4,0,0,5,3,1,0,0,4,5,6,2,3,1,4,0,3,6,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mecânico Transcedental
REPLACE INTO `job_db2` VALUES (4064,6,1,0,0,1,0,6,2,5,4,0,0,4,6,0,0,2,0,3,3,4,5,0,0,3,6,0,0,3,0,1,1,3,6,0,0,4,4,0,0,0,3,3,1,1,0,0,5,2,0,6,1,5,0,4,3,2,0,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Sicário Transcedental
REPLACE INTO `job_db2` VALUES (4065,2,5,0,1,1,0,0,0,1,2,5,0,0,3,3,1,0,0,3,1,0,0,2,2,5,0,0,4,4,1,3,0,0,0,2,5,5,0,0,0,4,3,2,2,0,0,0,4,5,5,6,1,2,3,0,4,0,1,6,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Guardião Real
REPLACE INTO `job_db2` VALUES (4066,0,3,4,1,4,5,0,0,3,0,4,0,1,5,0,6,0,0,4,5,0,0,2,4,0,4,3,0,0,1,5,0,6,2,0,0,4,4,0,1,3,3,0,5,1,4,0,1,5,0,2,0,3,6,0,5,0,1,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Feiticeiro
REPLACE INTO `job_db2` VALUES (4067,4,4,5,3,4,0,0,0,0,1,1,4,4,3,5,0,0,0,5,2,2,4,3,5,0,0,0,0,0,4,5,3,1,0,0,0,0,0,4,5,2,0,0,5,3,4,6,6,6,4,5,0,1,0,2,0,3,0,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Trovador
REPLACE INTO `job_db2` VALUES (4068,4,0,3,0,5,0,4,4,0,3,3,0,0,5,5,0,0,1,1,0,0,4,0,1,0,2,2,1,0,0,0,4,0,3,0,5,0,2,2,4,4,0,0,5,3,1,0,0,4,5,2,3,1,6,0,5,3,1,4,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Musa
REPLACE INTO `job_db2` VALUES (4069,5,4,4,2,0,0,2,5,4,0,0,3,3,3,0,0,5,2,0,0,4,3,5,0,0,1,1,0,0,5,2,3,0,0,0,4,4,4,2,0,0,0,2,5,2,0,0,0,4,2,1,3,5,0,6,4,0,3,2,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Sura
REPLACE INTO `job_db2` VALUES (4070,2,5,0,1,1,0,0,0,1,2,5,0,0,3,3,1,0,0,3,1,0,0,2,2,5,0,0,4,4,1,3,0,0,0,2,5,5,0,0,0,4,3,2,2,0,0,0,4,5,5,1,0,2,4,6,3,0,5,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bioquímico
REPLACE INTO `job_db2` VALUES (4071,4,4,5,0,0,5,4,2,0,0,0,4,5,0,3,0,0,3,5,2,0,0,4,3,3,0,0,5,2,0,6,0,0,1,4,4,0,0,5,2,4,0,0,4,4,0,2,0,0,4,1,3,5,0,2,1,3,6,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Renegado
REPLACE INTO `job_db2` VALUES (4072,6,1,0,0,1,0,6,2,5,4,0,0,4,6,0,0,2,0,3,3,4,5,0,0,3,6,0,0,3,0,1,1,3,6,0,0,4,4,0,0,0,3,3,1,1,0,0,5,2,0,4,3,1,2,0,6,5,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Guardião Real Transcedental
REPLACE INTO `job_db2` VALUES (4073,0,3,4,1,4,5,0,0,3,0,4,0,1,5,0,6,0,0,4,5,0,0,2,4,0,4,3,0,0,1,5,0,6,2,0,0,4,4,0,1,3,3,0,5,1,4,0,1,5,0,2,0,3,6,0,5,0,1,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Feiticeiro Transcedental
REPLACE INTO `job_db2` VALUES (4074,4,4,5,3,4,0,0,0,0,1,1,4,4,3,5,0,0,0,5,2,2,4,3,5,0,0,0,0,0,4,5,3,1,0,0,0,0,0,4,5,2,0,0,5,3,4,6,6,6,4,5,0,1,0,2,0,3,0,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Trovador Transcedental
REPLACE INTO `job_db2` VALUES (4075,4,0,3,0,5,0,4,4,0,3,3,0,0,5,5,0,0,1,1,0,0,4,0,1,0,2,2,1,0,0,0,4,0,3,0,5,0,2,2,4,4,0,0,5,3,1,0,0,4,5,2,3,1,6,0,5,3,1,4,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Musa Transcedental
REPLACE INTO `job_db2` VALUES (4076,5,4,4,2,0,0,2,5,4,0,0,3,3,3,0,0,5,2,0,0,4,3,5,0,0,1,1,0,0,5,2,3,0,0,0,4,4,4,2,0,0,0,2,5,2,0,0,0,4,2,1,3,5,0,6,4,0,3,2,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Shura Transcedental
REPLACE INTO `job_db2` VALUES (4077,2,5,0,1,1,0,0,0,1,2,5,0,0,3,3,1,0,0,3,1,0,0,2,2,5,0,0,4,4,1,3,0,0,0,2,5,5,0,0,0,4,3,2,2,0,0,0,4,5,5,1,0,2,4,6,3,0,5,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Genético Transcedental
REPLACE INTO `job_db2` VALUES (4078,4,4,5,0,0,5,4,2,0,0,0,4,5,0,3,0,0,3,5,2,0,0,4,3,3,0,0,5,2,0,6,0,0,1,4,4,0,0,5,2,4,0,0,4,4,0,2,0,0,4,1,3,5,0,2,1,3,6,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Renegado Transcedental
REPLACE INTO `job_db2` VALUES (4079,6,1,0,0,1,0,6,2,5,4,0,0,4,6,0,0,2,0,3,3,4,5,0,0,3,6,0,0,3,0,1,1,3,6,0,0,4,4,0,0,0,3,3,1,1,0,0,5,2,0,4,3,1,2,0,6,5,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Cavaleiro Rúnico (Dragão)
REPLACE INTO `job_db2` VALUES (4080,4,4,5,3,4,0,0,0,0,1,1,4,4,3,5,0,0,0,5,2,2,4,3,5,0,0,0,0,0,4,5,3,1,0,0,0,0,0,4,5,2,0,0,5,3,4,6,6,6,4,1,0,2,0,5,0,6,0,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Cavaleiro Rúnico Transcedental (Dragão)
REPLACE INTO `job_db2` VALUES (4081,4,4,5,3,4,0,0,0,0,1,1,4,4,3,5,0,0,0,5,2,2,4,3,5,0,0,0,0,0,4,5,3,1,0,0,0,0,0,4,5,2,0,0,5,3,4,6,6,6,4,1,0,2,0,5,0,6,0,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Guardião Real (Grifo)
REPLACE INTO `job_db2` VALUES (4082,0,3,4,1,4,5,0,0,3,0,4,0,1,5,0,6,0,0,4,5,0,0,2,4,0,4,3,0,0,1,5,0,6,2,0,0,4,4,0,1,3,3,0,5,1,4,0,1,5,0,2,0,3,6,0,5,0,1,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Guardião Real Transcedental(Grifo)
REPLACE INTO `job_db2` VALUES (4083,0,3,4,1,4,5,0,0,3,0,4,0,1,5,0,6,0,0,4,5,0,0,2,4,0,4,3,0,0,1,5,0,6,2,0,0,4,4,0,1,3,3,0,5,1,4,0,1,5,0,2,0,3,6,0,5,0,1,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Sentinela (Lobo)
REPLACE INTO `job_db2` VALUES (4084,5,4,4,2,0,0,2,5,4,0,0,3,3,3,0,0,5,2,0,0,4,3,5,0,0,1,1,0,0,5,2,3,0,0,0,4,4,4,2,0,0,0,2,5,2,0,0,0,4,2,6,5,0,4,2,0,3,6,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Sentinela Transcedental (Lobo)
REPLACE INTO `job_db2` VALUES (4085,5,4,4,2,0,0,2,5,4,0,0,3,3,3,0,0,5,2,0,0,4,3,5,0,0,1,1,0,0,5,2,3,0,0,0,4,4,4,2,0,0,0,2,5,2,0,0,0,4,2,6,5,0,4,2,0,3,6,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mecânico (Robô)
REPLACE INTO `job_db2` VALUES (4086,6,1,0,0,1,0,6,2,5,4,0,0,4,6,0,0,2,0,3,3,4,5,0,0,3,6,0,0,3,0,1,1,3,6,0,0,4,4,0,0,0,3,3,1,1,0,0,5,2,0,6,1,5,0,4,3,2,0,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Mecânico Transcedental (Robô)
REPLACE INTO `job_db2` VALUES (4087,6,1,0,0,1,0,6,2,5,4,0,0,4,6,0,0,2,0,3,3,4,5,0,0,3,6,0,0,3,0,1,1,3,6,0,0,4,4,0,0,0,3,3,1,1,0,0,5,2,0,6,1,5,0,4,3,2,0,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Cavaleiro Rúnico
REPLACE INTO `job_db2` VALUES (4096,4,4,5,3,4,0,0,0,0,1,1,4,4,3,5,0,0,0,5,2,2,4,3,5,0,0,0,0,0,4,5,3,1,0,0,0,0,0,4,5,2,0,0,5,3,4,6,6,6,4,1,0,2,0,5,0,6,0,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Arcano
REPLACE INTO `job_db2` VALUES (4097,4,4,5,0,0,5,4,2,0,0,0,4,5,0,3,0,0,3,5,2,0,0,4,3,3,0,0,5,2,0,6,0,0,1,4,4,0,0,5,2,4,0,0,4,4,0,2,0,0,4,5,3,6,2,4,0,3,2,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Sentinela
REPLACE INTO `job_db2` VALUES (4098,5,4,4,2,0,0,2,5,4,0,0,3,3,3,0,0,5,2,0,0,4,3,5,0,0,1,1,0,0,5,2,3,0,0,0,4,4,4,2,0,0,0,2,5,2,0,0,0,4,2,6,5,0,4,2,0,3,6,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Arcebispo
REPLACE INTO `job_db2` VALUES (4099,4,0,3,0,5,0,4,4,0,3,3,0,0,5,5,0,0,1,1,0,0,4,0,1,0,2,2,1,0,0,0,4,0,3,0,5,0,2,2,4,4,0,0,5,3,1,0,0,4,5,6,2,3,1,4,0,3,6,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Mecânico
REPLACE INTO `job_db2` VALUES (4100,6,1,0,0,1,0,6,2,5,4,0,0,4,6,0,0,2,0,3,3,4,5,0,0,3,6,0,0,3,0,1,1,3,6,0,0,4,4,0,0,0,3,3,1,1,0,0,5,2,0,6,1,5,0,4,3,2,0,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Sicário
REPLACE INTO `job_db2` VALUES (4101,2,5,0,1,1,0,0,0,1,2,5,0,0,3,3,1,0,0,3,1,0,0,2,2,5,0,0,4,4,1,3,0,0,0,2,5,5,0,0,0,4,3,2,2,0,0,0,4,5,5,6,1,2,3,0,4,0,1,6,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Guardião Real
REPLACE INTO `job_db2` VALUES (4102,0,3,4,1,4,5,0,0,3,0,4,0,1,5,0,6,0,0,4,5,0,0,2,4,0,4,3,0,0,1,5,0,6,2,0,0,4,4,0,1,3,3,0,5,1,4,0,1,5,0,2,0,3,6,0,5,0,1,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Feiticeiro
REPLACE INTO `job_db2` VALUES (4103,4,4,5,3,4,0,0,0,0,1,1,4,4,3,5,0,0,0,5,2,2,4,3,5,0,0,0,0,0,4,5,3,1,0,0,0,0,0,4,5,2,0,0,5,3,4,6,6,6,4,5,0,1,0,2,0,3,0,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Trovador
REPLACE INTO `job_db2` VALUES (4104,4,0,3,0,5,0,4,4,0,3,3,0,0,5,5,0,0,1,1,0,0,4,0,1,0,2,2,1,0,0,0,4,0,3,0,5,0,2,2,4,4,0,0,5,3,1,0,0,4,5,2,3,1,6,0,5,3,1,4,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Musa
REPLACE INTO `job_db2` VALUES (4105,5,4,4,2,0,0,2,5,4,0,0,3,3,3,0,0,5,2,0,0,4,3,5,0,0,1,1,0,0,5,2,3,0,0,0,4,4,4,2,0,0,0,2,5,2,0,0,0,4,2,1,3,5,0,6,4,0,3,2,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Shura
REPLACE INTO `job_db2` VALUES (4106,2,5,0,1,1,0,0,0,1,2,5,0,0,3,3,1,0,0,3,1,0,0,2,2,5,0,0,4,4,1,3,0,0,0,2,5,5,0,0,0,4,3,2,2,0,0,0,4,5,5,1,0,2,4,6,3,0,5,1,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Bioquímico
REPLACE INTO `job_db2` VALUES (4107,4,4,5,0,0,5,4,2,0,0,0,4,5,0,3,0,0,3,5,2,0,0,4,3,3,0,0,5,2,0,6,0,0,1,4,4,0,0,5,2,4,0,0,4,4,0,2,0,0,4,1,3,5,0,2,1,3,6,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Renegado
REPLACE INTO `job_db2` VALUES (4108,6,1,0,0,1,0,6,2,5,4,0,0,4,6,0,0,2,0,3,3,4,5,0,0,3,6,0,0,3,0,1,1,3,6,0,0,4,4,0,0,0,3,3,1,1,0,0,5,2,0,4,3,1,2,0,6,5,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Cavaleiro Rúnico (Dragão)
REPLACE INTO `job_db2` VALUES (4109,4,4,5,3,4,0,0,0,0,1,1,4,4,3,5,0,0,0,5,2,2,4,3,5,0,0,0,0,0,4,5,3,1,0,0,0,0,0,4,5,2,0,0,5,3,4,6,6,6,4,1,0,2,0,5,0,6,0,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Guardião Real (Grifo)
REPLACE INTO `job_db2` VALUES (4110,0,3,4,1,4,5,0,0,3,0,4,0,1,5,0,6,0,0,4,5,0,0,2,4,0,4,3,0,0,1,5,0,6,2,0,0,4,4,0,1,3,3,0,5,1,4,0,1,5,0,2,0,3,6,0,5,0,1,3,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Sentinela (Lobo)
REPLACE INTO `job_db2` VALUES (4111,5,4,4,2,0,0,2,5,4,0,0,3,3,3,0,0,5,2,0,0,4,3,5,0,0,1,1,0,0,5,2,3,0,0,0,4,4,4,2,0,0,0,2,5,2,0,0,0,4,2,6,5,0,4,2,0,3,6,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Bebê Mecânico (Robô)
REPLACE INTO `job_db2` VALUES (4112,6,1,0,0,1,0,6,2,5,4,0,0,4,6,0,0,2,0,3,3,4,5,0,0,3,6,0,0,3,0,1,1,3,6,0,0,4,4,0,0,0,3,3,1,1,0,0,5,2,0,6,1,5,0,4,3,2,0,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Super Aprendiz (Expandido)
REPLACE INTO `job_db2` VALUES (4190,1,2,0,3,0,4,5,0,6,0,1,2,0,3,0,4,5,0,6,0,1,2,0,3,0,4,5,0,6,0,1,2,0,3,0,4,5,0,6,0,1,2,0,3,0,4,5,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Super Bebê Aprendiz (Expandido)
REPLACE INTO `job_db2` VALUES (4191,1,2,0,3,0,4,5,0,6,0,1,2,0,3,0,4,5,0,6,0,1,2,0,3,0,4,5,0,6,0,1,2,0,3,0,4,5,0,6,0,1,2,0,3,0,4,5,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Kagerou
REPLACE INTO `job_db2` VALUES (4211,5,0,4,0,2,3,0,1,6,0,5,1,2,0,4,6,3,0,1,5,2,0,6,3,4,0,5,0,2,0,1,4,0,5,4,0,3,5,1,0,2,4,1,0,5,6,2,1,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Oboro
REPLACE INTO `job_db2` VALUES (4212,5,0,4,0,2,3,0,1,6,0,5,1,2,0,4,6,3,0,1,5,2,0,6,3,4,0,5,0,2,0,1,4,0,5,4,0,3,5,1,0,2,4,1,0,5,6,2,1,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- Rebelde
REPLACE INTO `job_db2` VALUES (4215,0,5,0,4,0,3,5,4,2,6,0,0,3,4,0,2,5,4,3,6,0,0,3,5,1,4,2,0,0,6,3,0,5,4,1,0,0,5,0,2,6,0,5,3,4,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

--
-- Estrutura da tabela `level_penalty_db`
--

CREATE TABLE IF NOT EXISTS `level_penalty_db` (
  `Type` tinyint(4) NOT NULL DEFAULT '0',
  `Race` tinyint(4) NOT NULL DEFAULT '0',
  `Level difference` smallint(6) NOT NULL,
  `Rate` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `magicmushroom_db`
--

CREATE TABLE IF NOT EXISTS `magicmushroom_db` (
  `SkillID` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `magicmushroom_db` VALUES(7);
REPLACE INTO `magicmushroom_db` VALUES(8);
REPLACE INTO `magicmushroom_db` VALUES(10);
REPLACE INTO `magicmushroom_db` VALUES(24);
REPLACE INTO `magicmushroom_db` VALUES(32);
REPLACE INTO `magicmushroom_db` VALUES(33);
REPLACE INTO `magicmushroom_db` VALUES(45);
REPLACE INTO `magicmushroom_db` VALUES(61);
REPLACE INTO `magicmushroom_db` VALUES(74);
REPLACE INTO `magicmushroom_db` VALUES(110);
REPLACE INTO `magicmushroom_db` VALUES(114);
REPLACE INTO `magicmushroom_db` VALUES(142);
REPLACE INTO `magicmushroom_db` VALUES(150);
REPLACE INTO `magicmushroom_db` VALUES(151);
REPLACE INTO `magicmushroom_db` VALUES(157);
REPLACE INTO `magicmushroom_db` VALUES(249);
REPLACE INTO `magicmushroom_db` VALUES(256);
REPLACE INTO `magicmushroom_db` VALUES(261);
REPLACE INTO `magicmushroom_db` VALUES(270);
REPLACE INTO `magicmushroom_db` VALUES(326);
REPLACE INTO `magicmushroom_db` VALUES(500);
REPLACE INTO `magicmushroom_db` VALUES(527);
REPLACE INTO `magicmushroom_db` VALUES(531);

--
-- Estrutura da tabela `mercenary_db`
--

CREATE TABLE IF NOT EXISTS `mercenary_db` (
  `ID` smallint(5) unsigned NOT NULL,
  `Sprite_Name` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `LV` smallint(6) NOT NULL,
  `HP` smallint(5) unsigned NOT NULL,
  `SP` smallint(5) unsigned NOT NULL,
  `Range1` tinyint(4) NOT NULL,
  `ATK1` smallint(5) unsigned NOT NULL,
  `ATK2` smallint(5) unsigned NOT NULL,
  `DEF` tinyint(4) NOT NULL,
  `MDEF` tinyint(4) NOT NULL,
  `STR` smallint(6) NOT NULL,
  `AGI` smallint(6) NOT NULL,
  `VIT` smallint(6) NOT NULL,
  `INT` smallint(6) NOT NULL,
  `DEX` smallint(6) NOT NULL,
  `LUK` smallint(6) NOT NULL,
  `Range2` smallint(6) NOT NULL,
  `Range3` smallint(6) NOT NULL,
  `Scale` tinyint(4) NOT NULL,
  `Race` tinyint(4) NOT NULL,
  `Element` tinyint(4) NOT NULL,
  `Speed` smallint(6) NOT NULL,
  `aDelay` smallint(5) unsigned NOT NULL,
  `aMotion` smallint(5) unsigned NOT NULL,
  `dMotion` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mercenary_db`
--

REPLACE INTO `mercenary_db` VALUES(1191,'MIMIC','Mímico',51,6120,187,2,150,900,10,40,44,121,1,60,75,110,10,12,1,0,60,100,972,500,288);
REPLACE INTO `mercenary_db` VALUES(1506,'DISGUISE','Mascarado',55,7543,180,2,279,546,18,29,0,72,45,35,48,65,10,12,1,6,82,147,516,768,384);
REPLACE INTO `mercenary_db` VALUES(1275,'ALICE','Alice',62,10000,221,2,550,700,5,5,64,64,42,85,100,130,10,12,1,7,60,200,502,2304,480);
REPLACE INTO `mercenary_db` VALUES(1965,'M_WILD_ROSE','Rosa Selvagem',38,2980,130,2,315,360,0,15,65,85,15,35,65,80,10,12,0,2,24,100,964,864,288);
REPLACE INTO `mercenary_db` VALUES(1966,'M_DOPPELGANGER','Doppelganger',72,7800,200,2,1340,1590,60,35,88,90,30,35,125,65,10,12,1,6,67,100,480,480,288);
REPLACE INTO `mercenary_db` VALUES(1967,'M_YGNIZEM','Egnigem Cenia',58,11200,320,2,823,1212,35,8,60,35,52,18,79,20,10,12,1,7,43,145,576,432,288);
REPLACE INTO `mercenary_db` VALUES(2000,'M_GAMEMASTER','Male Game Master',50,7000,250,1,25,0,10,10,44,121,1,60,75,110,10,12,1,7,20,200,300,384,288);
REPLACE INTO `mercenary_db` VALUES(2001,'F_GAMEMASTER','Female Game Master',50,7000,250,1,25,0,10,10,44,121,1,60,75,110,10,12,1,7,20,200,300,384,288);
REPLACE INTO `mercenary_db` VALUES(2034,'M_DESERT_WOLF_B','Baby Desert Wolf',9,164,15,1,500,600,0,0,1,9,9,5,40,40,10,12,0,2,23,100,1600,900,240);
REPLACE INTO `mercenary_db` VALUES(2037,'VALKYRIE_A','Valkyrie Randgris',90,5000,15,1,10,160,10,20,1,20,40,0,20,20,10,12,1,8,66,100,576,576,480);
REPLACE INTO `mercenary_db` VALUES(2038,'VALKYRIE_B','Valkyrie Randgris',90,10000,15,1,300,450,10,40,1,20,80,0,80,20,10,12,1,8,66,100,576,576,480);
REPLACE INTO `mercenary_db` VALUES(2058,'M_MIMIC','Mimic',51,6120,182,1,800,950,10,40,44,121,1,60,75,110,10,12,1,0,60,100,972,500,288);
REPLACE INTO `mercenary_db` VALUES(2059,'M_DISGUISE','Disguise',55,7543,180,2,526,693,18,29,0,72,45,35,48,65,10,12,1,6,82,147,516,768,384);
REPLACE INTO `mercenary_db` VALUES(2060,'M_ALICE','Alice',62,10000,221,1,700,850,5,5,64,64,42,85,100,130,10,12,1,7,60,200,502,1999,480);
REPLACE INTO `mercenary_db` VALUES(2213,'M_WANDER_MAN','Wander Man',81,8614,220,2,1100,1300,60,20,80,110,63,51,85,90,10,12,1,6,24,100,672,500,192);
REPLACE INTO `mercenary_db` VALUES(2214,'M_WICKED_NYMPH','Wicked Nymph',85,6157,256,2,420,620,30,45,40,50,40,92,60,110,10,12,1,6,67,200,637,1008,360);
REPLACE INTO `mercenary_db` VALUES(2215,'M_KASA','Kasa',83,9815,234,2,1100,1300,60,60,85,90,71,43,85,105,10,12,2,0,63,150,800,600,288);
REPLACE INTO `mercenary_db` VALUES(2216,'M_SALAMANDER','Salamander',87,9517,260,2,900,1100,60,68,90,80,65,45,87,95,10,12,2,0,63,160,140,384,288);
REPLACE INTO `mercenary_db` VALUES(2217,'M_TEDDY_BEAR','Teddy Bear',85,14493,243,1,600,800,100,70,60,20,85,50,75,130,10,12,0,0,60,200,512,780,504);
REPLACE INTO `mercenary_db` VALUES(2325,'M_BAPHOMET_','Baphomet',57,7510,204,1,810,955,70,40,52,60,36,17,57,25,10,12,0,6,27,100,868,480,120);
REPLACE INTO `mercenary_db` VALUES(2326,'M_GALAPAGO','Galapago',45,7513,201,1,760,915,70,40,30,28,29,18,30,16,10,12,0,2,22,165,1430,1080,1080);
REPLACE INTO `mercenary_db` VALUES(2342,'MER_DIABOLIC','MER_DIABOLIC',83,9815,234,2,1100,1300,60,60,85,90,71,43,85,105,10,12,0,6,47,150,1080,780,180);
REPLACE INTO `mercenary_db` VALUES(2344,'MER_WISH_MAIDEN','MER_WISH_MAIDEN',83,9815,234,2,1100,1300,60,60,85,90,71,43,85,105,10,12,0,6,47,150,1080,780,180);
REPLACE INTO `mercenary_db` VALUES(2345,'MER_ZHERLTHSH','MER_ZHERLTHSH',83,9815,234,2,1100,1300,60,60,85,90,71,43,85,105,10,12,0,6,47,150,1080,780,180);
REPLACE INTO `mercenary_db` VALUES(2346,'MER_KTULLANUX','MER_KTULLANUX',83,9815,234,2,1100,1300,60,60,85,90,71,43,85,105,10,12,0,6,47,150,1080,780,180);
REPLACE INTO `mercenary_db` VALUES(2347,'MER_EDDGA','MER_EDDGA',83,9815,234,2,1100,1300,60,60,85,90,71,43,85,105,10,12,0,6,47,150,1080,780,180);
REPLACE INTO `mercenary_db` VALUES(2348,'MER_CIVIL_SERVANT','MER_CIVIL_SERVANT',83,9815,234,2,1100,1300,60,60,85,90,71,43,85,105,10,12,0,6,47,150,1080,780,180);
REPLACE INTO `mercenary_db` VALUES(2349,'MER_LOLI_RURI','MER_LOLI_RURI',83,9815,234,2,1100,1300,60,60,85,90,71,43,85,105,10,12,0,6,47,150,1080,780,180);
REPLACE INTO `mercenary_db` VALUES(2350,'MER_SEDORA','MER_SEDORA',83,9815,234,2,1100,1300,60,60,85,90,71,43,85,105,10,12,0,6,47,150,1080,780,180);
REPLACE INTO `mercenary_db` VALUES(2351,'MER_CHEPET','MER_CHEPET',83,9815,234,2,1100,1300,60,60,85,90,71,43,85,105,10,12,0,6,47,150,1080,780,180);
REPLACE INTO `mercenary_db` VALUES(2378,'MER_ANTLER_SCARABA','MER_ANTLER_SCARABA',136,30000,1,1,1418,1828,127,102,23,99,59,129,137,45,10,12,1,4,42,200,504,624,360);
REPLACE INTO `mercenary_db` VALUES(6017,'MER_ARCHER01','Mina',20,256,200,10,170,85,7,5,1,16,5,1,28,8,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES(6018,'MER_ARCHER02','Dororu',30,457,70,10,228,114,11,7,1,18,8,1,40,11,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES(6019,'MER_ARCHER03','Nami',40,732,93,10,260,130,15,9,3,21,12,4,52,17,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES(6020,'MER_ARCHER04','Elfin',50,1092,116,10,310,155,18,11,5,33,17,6,60,23,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES(6021,'MER_ARCHER05','Clara',60,2212,280,10,360,180,20,13,5,41,17,12,75,30,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES(6022,'MER_ARCHER06','Dali',70,3098,353,10,424,212,21,15,11,46,24,22,83,37,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES(6023,'MER_ARCHER07','Karaya',80,4051,415,10,468,234,22,16,14,55,27,26,91,44,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES(6024,'MER_ARCHER08','Hiyori',90,5039,469,10,482,241,24,18,19,65,27,27,103,49,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES(6025,'MER_ARCHER09','Kero',95,5572,499,10,500,250,25,20,20,71,27,28,110,51,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES(6026,'MER_ARCHER10','Sukye',99,7381,642,10,816,308,49,49,21,83,27,28,123,52,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES(6027,'MER_LANCER01','Rodin',22,2071,100,2,168,84,30,1,27,1,4,1,30,2,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES(6028,'MER_LANCER02','Lancer',34,2523,131,2,208,104,33,1,37,1,4,1,37,4,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES(6029,'MER_LANCER03','Nathan',41,3397,161,2,248,124,36,5,45,1,22,1,40,6,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES(6030,'MER_LANCER04','Roan',55,4580,191,2,300,150,39,5,55,2,35,1,50,8,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES(6031,'MER_LANCER05','Orizaro',60,5899,221,2,350,160,42,10,65,2,39,1,60,10,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES(6032,'MER_LANCER06','Thyla',72,7874,252,2,370,185,46,10,75,3,15,77,61,12,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES(6033,'MER_LANCER07','Ben',81,10260,330,2,380,190,50,15,85,3,63,20,61,14,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES(6034,'MER_LANCER08','Pinaka',90,13167,366,2,400,200,55,20,95,20,74,20,63,16,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES(6035,'MER_LANCER09','Kuhlmann',95,14648,398,2,440,220,60,25,100,25,77,25,63,18,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES(6036,'MER_LANCER10','Roux',99,18000,413,2,700,250,70,30,120,30,90,30,70,30,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES(6037,'MER_SWORDMAN01','David',20,502,70,2,174,87,26,0,21,27,5,1,30,3,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES(6038,'MER_SWORDMAN02','Ellen',30,979,99,2,258,129,31,0,26,38,6,1,35,3,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES(6039,'MER_SWORDMAN03','Luise',40,1555,134,2,326,163,36,3,31,45,7,6,40,6,10,0,0,7,20,150,700,432,300);
REPLACE INTO `mercenary_db` VALUES(6040,'MER_SWORDMAN04','Frank',50,2397,162,2,382,191,39,5,37,59,8,6,40,6,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES(6041,'MER_SWORDMAN05','Ryan',60,3387,195,2,406,203,42,7,48,68,9,6,45,9,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES(6042,'MER_SWORDMAN06','Paolo',70,4495,241,2,436,218,45,12,53,79,10,12,50,9,10,0,0,7,20,150,575,432,300);
REPLACE INTO `mercenary_db` VALUES(6043,'MER_SWORDMAN07','Jens',80,5889,279,2,468,234,47,15,59,88,11,12,55,12,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES(6044,'MER_SWORDMAN08','Thierry',90,7520,325,2,500,250,49,18,70,95,12,18,60,15,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES(6045,'MER_SWORDMAN09','Steven',95,9052,348,2,524,262,51,22,80,95,18,18,60,15,10,0,0,7,20,150,450,432,300);
REPLACE INTO `mercenary_db` VALUES(6046,'MER_SWORDMAN10','Wayne',99,12355,451,2,760,280,64,30,99,105,30,30,60,30,10,0,0,7,20,150,450,432,300);

--
-- Estrutura da tabela `mercenary_skill_db`
--

CREATE TABLE IF NOT EXISTS `mercenary_skill_db` (
  `MercenaryID` smallint(5) unsigned NOT NULL,
  `SkillID` smallint(5) unsigned NOT NULL,
  `SkillLevel` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mercenary_skill_db`
--

REPLACE INTO `mercenary_skill_db` VALUES(6017,8207,2);
REPLACE INTO `mercenary_skill_db` VALUES(6017,8233,1);
REPLACE INTO `mercenary_skill_db` VALUES(6018,8208,2);
REPLACE INTO `mercenary_skill_db` VALUES(6018,8224,1);
REPLACE INTO `mercenary_skill_db` VALUES(6019,8214,1);
REPLACE INTO `mercenary_skill_db` VALUES(6019,8223,1);
REPLACE INTO `mercenary_skill_db` VALUES(6020,8237,1);
REPLACE INTO `mercenary_skill_db` VALUES(6020,8222,1);
REPLACE INTO `mercenary_skill_db` VALUES(6020,8227,1);
REPLACE INTO `mercenary_skill_db` VALUES(6021,8207,5);
REPLACE INTO `mercenary_skill_db` VALUES(6021,8232,1);
REPLACE INTO `mercenary_skill_db` VALUES(6021,8213,1);
REPLACE INTO `mercenary_skill_db` VALUES(6022,8207,7);
REPLACE INTO `mercenary_skill_db` VALUES(6022,8209,3);
REPLACE INTO `mercenary_skill_db` VALUES(6022,8234,1);
REPLACE INTO `mercenary_skill_db` VALUES(6023,8208,10);
REPLACE INTO `mercenary_skill_db` VALUES(6023,8230,1);
REPLACE INTO `mercenary_skill_db` VALUES(6023,8212,2);
REPLACE INTO `mercenary_skill_db` VALUES(6024,8223,2);
REPLACE INTO `mercenary_skill_db` VALUES(6024,8232,3);
REPLACE INTO `mercenary_skill_db` VALUES(6024,8211,3);
REPLACE INTO `mercenary_skill_db` VALUES(6025,8207,10);
REPLACE INTO `mercenary_skill_db` VALUES(6025,8214,1);
REPLACE INTO `mercenary_skill_db` VALUES(6025,8210,5);
REPLACE INTO `mercenary_skill_db` VALUES(6026,8214,1);
REPLACE INTO `mercenary_skill_db` VALUES(6026,8215,5);
REPLACE INTO `mercenary_skill_db` VALUES(6026,8223,5);
REPLACE INTO `mercenary_skill_db` VALUES(6026,8233,1);
REPLACE INTO `mercenary_skill_db` VALUES(6027,8216,1);
REPLACE INTO `mercenary_skill_db` VALUES(6027,8226,1);
REPLACE INTO `mercenary_skill_db` VALUES(6028,8217,2);
REPLACE INTO `mercenary_skill_db` VALUES(6028,8236,1);
REPLACE INTO `mercenary_skill_db` VALUES(6029,8216,2);
REPLACE INTO `mercenary_skill_db` VALUES(6029,8221,1);
REPLACE INTO `mercenary_skill_db` VALUES(6029,8229,1);
REPLACE INTO `mercenary_skill_db` VALUES(6030,8219,1);
REPLACE INTO `mercenary_skill_db` VALUES(6030,8225,4);
REPLACE INTO `mercenary_skill_db` VALUES(6031,8216,5);
REPLACE INTO `mercenary_skill_db` VALUES(6031,8220,3);
REPLACE INTO `mercenary_skill_db` VALUES(6032,8223,2);
REPLACE INTO `mercenary_skill_db` VALUES(6032,8217,5);
REPLACE INTO `mercenary_skill_db` VALUES(6033,8221,1);
REPLACE INTO `mercenary_skill_db` VALUES(6033,8233,1);
REPLACE INTO `mercenary_skill_db` VALUES(6034,8235,1);
REPLACE INTO `mercenary_skill_db` VALUES(6034,8216,10);
REPLACE INTO `mercenary_skill_db` VALUES(6034,8232,5);
REPLACE INTO `mercenary_skill_db` VALUES(6035,8217,10);
REPLACE INTO `mercenary_skill_db` VALUES(6035,8220,7);
REPLACE INTO `mercenary_skill_db` VALUES(6035,8219,3);
REPLACE INTO `mercenary_skill_db` VALUES(6036,8223,5);
REPLACE INTO `mercenary_skill_db` VALUES(6036,8220,10);
REPLACE INTO `mercenary_skill_db` VALUES(6036,8221,3);
REPLACE INTO `mercenary_skill_db` VALUES(6036,8218,5);
REPLACE INTO `mercenary_skill_db` VALUES(6037,8201,1);
REPLACE INTO `mercenary_skill_db` VALUES(6037,8234,1);
REPLACE INTO `mercenary_skill_db` VALUES(6038,8232,5);
REPLACE INTO `mercenary_skill_db` VALUES(6038,8202,3);
REPLACE INTO `mercenary_skill_db` VALUES(6039,8223,1);
REPLACE INTO `mercenary_skill_db` VALUES(6039,8228,1);
REPLACE INTO `mercenary_skill_db` VALUES(6040,8225,1);
REPLACE INTO `mercenary_skill_db` VALUES(6040,8202,5);
REPLACE INTO `mercenary_skill_db` VALUES(6041,8201,5);
REPLACE INTO `mercenary_skill_db` VALUES(6041,8225,4);
REPLACE INTO `mercenary_skill_db` VALUES(6041,8228,1);
REPLACE INTO `mercenary_skill_db` VALUES(6042,8223,5);
REPLACE INTO `mercenary_skill_db` VALUES(6042,8237,1);
REPLACE INTO `mercenary_skill_db` VALUES(6042,8234,3);
REPLACE INTO `mercenary_skill_db` VALUES(6043,8201,10);
REPLACE INTO `mercenary_skill_db` VALUES(6043,8233,1);
REPLACE INTO `mercenary_skill_db` VALUES(6043,8235,1);
REPLACE INTO `mercenary_skill_db` VALUES(6044,8223,10);
REPLACE INTO `mercenary_skill_db` VALUES(6044,8203,5);
REPLACE INTO `mercenary_skill_db` VALUES(6044,8231,1);
REPLACE INTO `mercenary_skill_db` VALUES(6044,8204,4);
REPLACE INTO `mercenary_skill_db` VALUES(6045,8203,8);
REPLACE INTO `mercenary_skill_db` VALUES(6045,8225,3);
REPLACE INTO `mercenary_skill_db` VALUES(6045,8205,5);
REPLACE INTO `mercenary_skill_db` VALUES(6046,8223,10);
REPLACE INTO `mercenary_skill_db` VALUES(6046,8203,10);
REPLACE INTO `mercenary_skill_db` VALUES(6046,8201,10);
REPLACE INTO `mercenary_skill_db` VALUES(6046,8206,1);
REPLACE INTO `mercenary_skill_db` VALUES(1191,8233,1);
REPLACE INTO `mercenary_skill_db` VALUES(1191,8220,5);
REPLACE INTO `mercenary_skill_db` VALUES(1191,8201,5);
REPLACE INTO `mercenary_skill_db` VALUES(1506,8223,2);
REPLACE INTO `mercenary_skill_db` VALUES(1506,8225,5);
REPLACE INTO `mercenary_skill_db` VALUES(1506,8236,3);
REPLACE INTO `mercenary_skill_db` VALUES(1275,8232,5);
REPLACE INTO `mercenary_skill_db` VALUES(1275,8202,5);
REPLACE INTO `mercenary_skill_db` VALUES(1275,8217,5);
REPLACE INTO `mercenary_skill_db` VALUES(1275,8226,1);
REPLACE INTO `mercenary_skill_db` VALUES(1965,8201,5);
REPLACE INTO `mercenary_skill_db` VALUES(1966,8223,5);
REPLACE INTO `mercenary_skill_db` VALUES(1966,8201,5);
REPLACE INTO `mercenary_skill_db` VALUES(1966,8221,3);
REPLACE INTO `mercenary_skill_db` VALUES(1967,8223,5);
REPLACE INTO `mercenary_skill_db` VALUES(1967,8201,5);
REPLACE INTO `mercenary_skill_db` VALUES(1967,8221,3);
REPLACE INTO `mercenary_skill_db` VALUES(2000,8226,1);
REPLACE INTO `mercenary_skill_db` VALUES(2000,8227,1);
REPLACE INTO `mercenary_skill_db` VALUES(2000,8238,5);
REPLACE INTO `mercenary_skill_db` VALUES(2000,8239,5);
REPLACE INTO `mercenary_skill_db` VALUES(2000,8240,5);
REPLACE INTO `mercenary_skill_db` VALUES(2001,8226,1);
REPLACE INTO `mercenary_skill_db` VALUES(2001,8227,1);
REPLACE INTO `mercenary_skill_db` VALUES(2001,8238,5);
REPLACE INTO `mercenary_skill_db` VALUES(2001,8239,5);
REPLACE INTO `mercenary_skill_db` VALUES(2001,8240,5);
REPLACE INTO `mercenary_skill_db` VALUES(2058,8233,1);
REPLACE INTO `mercenary_skill_db` VALUES(2058,8220,5);
REPLACE INTO `mercenary_skill_db` VALUES(2058,8201,5);
REPLACE INTO `mercenary_skill_db` VALUES(2059,8223,2);
REPLACE INTO `mercenary_skill_db` VALUES(2059,8225,5);
REPLACE INTO `mercenary_skill_db` VALUES(2059,8236,3);
REPLACE INTO `mercenary_skill_db` VALUES(2060,8232,5);
REPLACE INTO `mercenary_skill_db` VALUES(2060,8202,5);
REPLACE INTO `mercenary_skill_db` VALUES(2060,8217,5);
REPLACE INTO `mercenary_skill_db` VALUES(2060,8226,1);

--
-- Estrutura da tabela `mob_avail_db`
--

CREATE TABLE IF NOT EXISTS `mob_avail_db` (
  `MobID` smallint(4) unsigned NOT NULL,
  `SpriteID` smallint(6) DEFAULT NULL,
  `Sex` tinyint(4) DEFAULT NULL,
  `Hair_Style` tinyint(4) DEFAULT NULL,
  `Hair_Color` smallint(3) unsigned DEFAULT NULL,
  `Weapon` smallint(5) unsigned DEFAULT NULL,
  `Shield` smallint(5) unsigned DEFAULT NULL,
  `Head_Top` smallint(5) unsigned DEFAULT NULL,
  `Head_Middle` smallint(5) unsigned DEFAULT NULL,
  `Head_Bottom` smallint(5) unsigned DEFAULT NULL,
  `Option` smallint(5) unsigned DEFAULT NULL,
  `Dye_Color` smallint(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `mob_boss_db`
--

CREATE TABLE IF NOT EXISTS `mob_boss_db` (
  `MobID` smallint(5) unsigned NOT NULL,
  `DummyName` varchar(30) NOT NULL,
  `Rate` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mob_boss_db`
--

REPLACE INTO `mob_boss_db` VALUES(0,'Baphomet',1039);
REPLACE INTO `mob_boss_db` VALUES(1038,'Osíris',1000000);
REPLACE INTO `mob_boss_db` VALUES(1039,'Bafomé',1000000);
REPLACE INTO `mob_boss_db` VALUES(1046,'Doppelganger',1000000);
REPLACE INTO `mob_boss_db` VALUES(1059,'Abelha-Rainha',1000000);
REPLACE INTO `mob_boss_db` VALUES(1086,'Besouro-Ladrão Dourado',1000000);
REPLACE INTO `mob_boss_db` VALUES(1087,'Orc Herói',1000000);
REPLACE INTO `mob_boss_db` VALUES(1096,'Angeling',1000000);
REPLACE INTO `mob_boss_db` VALUES(1112,'Drake',1000000);
REPLACE INTO `mob_boss_db` VALUES(1115,'Eddga',1000000);
REPLACE INTO `mob_boss_db` VALUES(1120,'Ghostring',1000000);
REPLACE INTO `mob_boss_db` VALUES(1147,'Maya',1000000);
REPLACE INTO `mob_boss_db` VALUES(1150,'Flor do Luar',1000000);
REPLACE INTO `mob_boss_db` VALUES(1157,'Faraó',1000000);
REPLACE INTO `mob_boss_db` VALUES(1159,'Freeoni',1000000);
REPLACE INTO `mob_boss_db` VALUES(1190,'Senhor dos Orcs',1000000);
REPLACE INTO `mob_boss_db` VALUES(1251,'Cavaleiro da Tempestade',1000000);
REPLACE INTO `mob_boss_db` VALUES(1252,'Hatii',1000000);
REPLACE INTO `mob_boss_db` VALUES(1272,'Senhor das Trevas',1000000);
REPLACE INTO `mob_boss_db` VALUES(1312,'General Tartaruga',1000000);
REPLACE INTO `mob_boss_db` VALUES(1373,'Senhor dos Mortos',1000000);
REPLACE INTO `mob_boss_db` VALUES(1388,'ArchAngeling',1000000);
REPLACE INTO `mob_boss_db` VALUES(1389,'Drácula',1000000);
REPLACE INTO `mob_boss_db` VALUES(1418,'Serpente Suprema',1000000);
REPLACE INTO `mob_boss_db` VALUES(1492,'Samurai Encarnado',1000000);
REPLACE INTO `mob_boss_db` VALUES(1511,'Amon Ra',1000000);
REPLACE INTO `mob_boss_db` VALUES(1582,'Deviling',1000000);
REPLACE INTO `mob_boss_db` VALUES(1583,'Tao Gunka',1000000);
REPLACE INTO `mob_boss_db` VALUES(1623,'RSX-0806',1000000);
REPLACE INTO `mob_boss_db` VALUES(1630,'Lady Branca',1000000);
REPLACE INTO `mob_boss_db` VALUES(1658,'Egnigem Cenia',1000000);
REPLACE INTO `mob_boss_db` VALUES(1685,'Vesper',1000000);
REPLACE INTO `mob_boss_db` VALUES(1688,'Lady Tanee',1000000);
REPLACE INTO `mob_boss_db` VALUES(1708,'Memória de Thanatos',1000000);
REPLACE INTO `mob_boss_db` VALUES(1719,'Detardeurus',1000000);
REPLACE INTO `mob_boss_db` VALUES(1734,'Kiel D-01',1000000);
REPLACE INTO `mob_boss_db` VALUES(1751,'Valkyrie Randgris',1000000);
REPLACE INTO `mob_boss_db` VALUES(1768,'Pesar Noturno',1000000);
REPLACE INTO `mob_boss_db` VALUES(1779,'Ktullanux',1000000);
REPLACE INTO `mob_boss_db` VALUES(1785,'Atroce',1000000);
REPLACE INTO `mob_boss_db` VALUES(1832,'Ifrit',1000000);
REPLACE INTO `mob_boss_db` VALUES(1871,'Bispo Decadente',1000000);
REPLACE INTO `mob_boss_db` VALUES(1873,'Belzebu',1000000);
REPLACE INTO `mob_boss_db` VALUES(1885,'Gorynych',1000000);
REPLACE INTO `mob_boss_db` VALUES(2022,'Sombra de Nidhogg',1000000);
REPLACE INTO `mob_boss_db` VALUES(2068,'Boitata',1000000);
REPLACE INTO `mob_boss_db` VALUES(2087,'Scaraba Queen',1000000);

--
-- Estrutura da tabela `mob_branch_db`
--

CREATE TABLE IF NOT EXISTS `mob_branch_db` (
  `MobID` smallint(5) unsigned NOT NULL,
  `DummyName` varchar(30) NOT NULL,
  `Rate` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mob_branch_db`
--

REPLACE INTO `mob_branch_db` VALUES(0,'Scorpion',1001);
REPLACE INTO `mob_branch_db` VALUES(1001,'Escorpião',214285);
REPLACE INTO `mob_branch_db` VALUES(1002,'Poring',1000000);
REPLACE INTO `mob_branch_db` VALUES(1004,'Zangão',357142);
REPLACE INTO `mob_branch_db` VALUES(1005,'Familiar',357142);
REPLACE INTO `mob_branch_db` VALUES(1007,'Fabre',428571);
REPLACE INTO `mob_branch_db` VALUES(1008,'Pupa',71428);
REPLACE INTO `mob_branch_db` VALUES(1009,'Condor',357142);
REPLACE INTO `mob_branch_db` VALUES(1010,'Salgueiro',357142);
REPLACE INTO `mob_branch_db` VALUES(1011,'ChonChon',357142);
REPLACE INTO `mob_branch_db` VALUES(1012,'Sapo de Rodda',357142);
REPLACE INTO `mob_branch_db` VALUES(1013,'Lobo',357142);
REPLACE INTO `mob_branch_db` VALUES(1014,'Esporo',357142);
REPLACE INTO `mob_branch_db` VALUES(1015,'Zumbi',357142);
REPLACE INTO `mob_branch_db` VALUES(1016,'Esqueleto Arqueiro',214285);
REPLACE INTO `mob_branch_db` VALUES(1018,'Creamy',357142);
REPLACE INTO `mob_branch_db` VALUES(1019,'PecoPeco',357142);
REPLACE INTO `mob_branch_db` VALUES(1020,'Mandrágora',357142);
REPLACE INTO `mob_branch_db` VALUES(1023,'Guerreiro Orc',214285);
REPLACE INTO `mob_branch_db` VALUES(1024,'Rabo de Verme',357142);
REPLACE INTO `mob_branch_db` VALUES(1025,'Jibóia',357142);
REPLACE INTO `mob_branch_db` VALUES(1026,'Munak',214285);
REPLACE INTO `mob_branch_db` VALUES(1028,'Esqueleto Soldado',214285);
REPLACE INTO `mob_branch_db` VALUES(1029,'Isis',71428);
REPLACE INTO `mob_branch_db` VALUES(1030,'Anaconda',214285);
REPLACE INTO `mob_branch_db` VALUES(1031,'Poporing',357142);
REPLACE INTO `mob_branch_db` VALUES(1032,'Verit',214285);
REPLACE INTO `mob_branch_db` VALUES(1033,'Salgueiro Ancião',214285);
REPLACE INTO `mob_branch_db` VALUES(1034,'Sapo de Thara',214285);
REPLACE INTO `mob_branch_db` VALUES(1035,'Mosca Caçadora',71428);
REPLACE INTO `mob_branch_db` VALUES(1036,'Carniçal',214285);
REPLACE INTO `mob_branch_db` VALUES(1037,'Sorrateiro',71428);
REPLACE INTO `mob_branch_db` VALUES(1040,'Golem',214285);
REPLACE INTO `mob_branch_db` VALUES(1041,'Múmia',214285);
REPLACE INTO `mob_branch_db` VALUES(1042,'ChonChon de Aço',357142);
REPLACE INTO `mob_branch_db` VALUES(1044,'Obeaune',214285);
REPLACE INTO `mob_branch_db` VALUES(1045,'Cavalo-Marinho',214285);
REPLACE INTO `mob_branch_db` VALUES(1047,'Ovo de PecoPeco',71428);
REPLACE INTO `mob_branch_db` VALUES(1048,'Ovo de Besouro-Ladrão',71428);
REPLACE INTO `mob_branch_db` VALUES(1049,'Picky',357142);
REPLACE INTO `mob_branch_db` VALUES(1050,'Picky com Casca',357142);
REPLACE INTO `mob_branch_db` VALUES(1051,'Besouro-Ladrão',357142);
REPLACE INTO `mob_branch_db` VALUES(1052,'Rocker',357142);
REPLACE INTO `mob_branch_db` VALUES(1053,'Besouro-Ladrão Fêmea',357142);
REPLACE INTO `mob_branch_db` VALUES(1054,'Besouro-Ladrão Macho',357142);
REPLACE INTO `mob_branch_db` VALUES(1055,'Muka',357142);
REPLACE INTO `mob_branch_db` VALUES(1056,'Fumacento',357142);
REPLACE INTO `mob_branch_db` VALUES(1057,'Yoyo',357142);
REPLACE INTO `mob_branch_db` VALUES(1058,'Metaller',214285);
REPLACE INTO `mob_branch_db` VALUES(1060,'Pé Grande',214285);
REPLACE INTO `mob_branch_db` VALUES(1061,'Pesadelo',71428);
REPLACE INTO `mob_branch_db` VALUES(1062,'Poring Noel',357142);
REPLACE INTO `mob_branch_db` VALUES(1063,'Lunático',357142);
REPLACE INTO `mob_branch_db` VALUES(1064,'Megalodon',214285);
REPLACE INTO `mob_branch_db` VALUES(1065,'Strouf',214285);
REPLACE INTO `mob_branch_db` VALUES(1066,'Vadon',357142);
REPLACE INTO `mob_branch_db` VALUES(1067,'Cornutus',214285);
REPLACE INTO `mob_branch_db` VALUES(1068,'Hidra',357142);
REPLACE INTO `mob_branch_db` VALUES(1069,'Peixe-Espada',214285);
REPLACE INTO `mob_branch_db` VALUES(1070,'Kukre',357142);
REPLACE INTO `mob_branch_db` VALUES(1071,'Esqueleto Pirata',214285);
REPLACE INTO `mob_branch_db` VALUES(1072,'Kaho',71428);
REPLACE INTO `mob_branch_db` VALUES(1073,'Caranguejo',214285);
REPLACE INTO `mob_branch_db` VALUES(1074,'Molusco',357142);
REPLACE INTO `mob_branch_db` VALUES(1076,'Esqueleto',357142);
REPLACE INTO `mob_branch_db` VALUES(1077,'Esporo Venenoso',357142);
REPLACE INTO `mob_branch_db` VALUES(1078,'Planta Vermelha',71428);
REPLACE INTO `mob_branch_db` VALUES(1079,'Planta Azul',71428);
REPLACE INTO `mob_branch_db` VALUES(1080,'Planta Verde',71428);
REPLACE INTO `mob_branch_db` VALUES(1081,'Planta Amarela',71428);
REPLACE INTO `mob_branch_db` VALUES(1082,'Planta Branca',71428);
REPLACE INTO `mob_branch_db` VALUES(1083,'Planta Brilhante',71428);
REPLACE INTO `mob_branch_db` VALUES(1084,'Cogumelo Negro',71428);
REPLACE INTO `mob_branch_db` VALUES(1085,'Cogumelo Vermelho',71428);
REPLACE INTO `mob_branch_db` VALUES(1088,'Vocal',71428);
REPLACE INTO `mob_branch_db` VALUES(1089,'Sapo-Cururu',71428);
REPLACE INTO `mob_branch_db` VALUES(1090,'Mastering',71428);
REPLACE INTO `mob_branch_db` VALUES(1091,'Libélula',71428);
REPLACE INTO `mob_branch_db` VALUES(1092,'Lobo Errante',71428);
REPLACE INTO `mob_branch_db` VALUES(1093,'Eclipse',71428);
REPLACE INTO `mob_branch_db` VALUES(1094,'Ambernite',357142);
REPLACE INTO `mob_branch_db` VALUES(1095,'Andre',357142);
REPLACE INTO `mob_branch_db` VALUES(1096,'Angeling',71428);
REPLACE INTO `mob_branch_db` VALUES(1097,'Ovo de Andre',71428);
REPLACE INTO `mob_branch_db` VALUES(1098,'Anubis',71428);
REPLACE INTO `mob_branch_db` VALUES(1099,'Argiope',71428);
REPLACE INTO `mob_branch_db` VALUES(1100,'Argos',214285);
REPLACE INTO `mob_branch_db` VALUES(1101,'Bafomé Jr.',71428);
REPLACE INTO `mob_branch_db` VALUES(1102,'Bathory',71428);
REPLACE INTO `mob_branch_db` VALUES(1103,'Caramelo',214285);
REPLACE INTO `mob_branch_db` VALUES(1104,'Koko',357142);
REPLACE INTO `mob_branch_db` VALUES(1105,'Deniro',357142);
REPLACE INTO `mob_branch_db` VALUES(1106,'Lobo do Deserto',214285);
REPLACE INTO `mob_branch_db` VALUES(1107,'Filhote de Lobo do Deserto',71428);
REPLACE INTO `mob_branch_db` VALUES(1108,'Deviace',71428);
REPLACE INTO `mob_branch_db` VALUES(1109,'Deviruchi',71428);
REPLACE INTO `mob_branch_db` VALUES(1110,'Dokebi',214285);
REPLACE INTO `mob_branch_db` VALUES(1111,'Drainliar',214285);
REPLACE INTO `mob_branch_db` VALUES(1113,'Drops',357142);
REPLACE INTO `mob_branch_db` VALUES(1114,'Poeira',214285);
REPLACE INTO `mob_branch_db` VALUES(1116,'Eggyra',214285);
REPLACE INTO `mob_branch_db` VALUES(1117,'Druida Maligno',71428);
REPLACE INTO `mob_branch_db` VALUES(1118,'Flora',214285);
REPLACE INTO `mob_branch_db` VALUES(1119,'Frilldora',214285);
REPLACE INTO `mob_branch_db` VALUES(1120,'Ghostring',71428);
REPLACE INTO `mob_branch_db` VALUES(1121,'Giearth',214285);
REPLACE INTO `mob_branch_db` VALUES(1122,'Goblin',214285);
REPLACE INTO `mob_branch_db` VALUES(1123,'Goblin',214285);
REPLACE INTO `mob_branch_db` VALUES(1124,'Goblin',214285);
REPLACE INTO `mob_branch_db` VALUES(1125,'Goblin',214285);
REPLACE INTO `mob_branch_db` VALUES(1126,'Goblin',214285);
REPLACE INTO `mob_branch_db` VALUES(1127,'Hode',214285);
REPLACE INTO `mob_branch_db` VALUES(1128,'Besouro-Chifre',357142);
REPLACE INTO `mob_branch_db` VALUES(1129,'Horong',214285);
REPLACE INTO `mob_branch_db` VALUES(1130,'Jakk',214285);
REPLACE INTO `mob_branch_db` VALUES(1131,'Coringa',71428);
REPLACE INTO `mob_branch_db` VALUES(1132,'Khalitzburg',71428);
REPLACE INTO `mob_branch_db` VALUES(1133,'Cobold',214285);
REPLACE INTO `mob_branch_db` VALUES(1134,'Cobold',214285);
REPLACE INTO `mob_branch_db` VALUES(1135,'Cobold',214285);
REPLACE INTO `mob_branch_db` VALUES(1138,'Magnólia',214285);
REPLACE INTO `mob_branch_db` VALUES(1139,'Louva-a-Deus',214285);
REPLACE INTO `mob_branch_db` VALUES(1140,'Marduk',214285);
REPLACE INTO `mob_branch_db` VALUES(1141,'Marina',214285);
REPLACE INTO `mob_branch_db` VALUES(1142,'Esfera Marinha',214285);
REPLACE INTO `mob_branch_db` VALUES(1143,'Marionete',71428);
REPLACE INTO `mob_branch_db` VALUES(1144,'Marte',214285);
REPLACE INTO `mob_branch_db` VALUES(1145,'Martin',357142);
REPLACE INTO `mob_branch_db` VALUES(1146,'Matyr',214285);
REPLACE INTO `mob_branch_db` VALUES(1148,'Medusa',71428);
REPLACE INTO `mob_branch_db` VALUES(1149,'Minorous',71428);
REPLACE INTO `mob_branch_db` VALUES(1151,'Névoa',214285);
REPLACE INTO `mob_branch_db` VALUES(1152,'Orc Esqueleto',214285);
REPLACE INTO `mob_branch_db` VALUES(1153,'Orc Zumbi',214285);
REPLACE INTO `mob_branch_db` VALUES(1154,'Pasana',71428);
REPLACE INTO `mob_branch_db` VALUES(1155,'Petite',71428);
REPLACE INTO `mob_branch_db` VALUES(1156,'Petite Voador',71428);
REPLACE INTO `mob_branch_db` VALUES(1158,'Fen',214285);
REPLACE INTO `mob_branch_db` VALUES(1160,'Piere',357142);
REPLACE INTO `mob_branch_db` VALUES(1161,'Plankton',357142);
REPLACE INTO `mob_branch_db` VALUES(1163,'Raydric',71428);
REPLACE INTO `mob_branch_db` VALUES(1164,'Requiem',214285);
REPLACE INTO `mob_branch_db` VALUES(1165,'Arenoso',214285);
REPLACE INTO `mob_branch_db` VALUES(1166,'Selvagem',214285);
REPLACE INTO `mob_branch_db` VALUES(1167,'Bebê Selvagem',357142);
REPLACE INTO `mob_branch_db` VALUES(1169,'Esqueleto Operário',214285);
REPLACE INTO `mob_branch_db` VALUES(1170,'Sohee',214285);
REPLACE INTO `mob_branch_db` VALUES(1174,'Percevejo',357142);
REPLACE INTO `mob_branch_db` VALUES(1175,'Tarou',357142);
REPLACE INTO `mob_branch_db` VALUES(1176,'Vitata',214285);
REPLACE INTO `mob_branch_db` VALUES(1177,'Zenorc',214285);
REPLACE INTO `mob_branch_db` VALUES(1178,'Zerom',214285);
REPLACE INTO `mob_branch_db` VALUES(1179,'Sussurro',71428);
REPLACE INTO `mob_branch_db` VALUES(1180,'Nove Caudas',71428);
REPLACE INTO `mob_branch_db` VALUES(1182,'Cogumelo',71428);
REPLACE INTO `mob_branch_db` VALUES(1185,'Sussurro',71428);
REPLACE INTO `mob_branch_db` VALUES(1186,'Cochicho',71428);
REPLACE INTO `mob_branch_db` VALUES(1188,'Bongun',214285);
REPLACE INTO `mob_branch_db` VALUES(1189,'Orc Arqueiro',71428);
REPLACE INTO `mob_branch_db` VALUES(1191,'Mímico',71428);
REPLACE INTO `mob_branch_db` VALUES(1192,'Alma Penada',71428);
REPLACE INTO `mob_branch_db` VALUES(1193,'Alarme',71428);
REPLACE INTO `mob_branch_db` VALUES(1194,'Arclouse',71428);
REPLACE INTO `mob_branch_db` VALUES(1195,'Rideword',71428);
REPLACE INTO `mob_branch_db` VALUES(1196,'Esqueleto Prisioneiro',71428);
REPLACE INTO `mob_branch_db` VALUES(1197,'Zumbi Prisioneiro',71428);
REPLACE INTO `mob_branch_db` VALUES(1199,'Punk',71428);
REPLACE INTO `mob_branch_db` VALUES(1200,'Jirtas',71428);
REPLACE INTO `mob_branch_db` VALUES(1201,'Rybio',71428);
REPLACE INTO `mob_branch_db` VALUES(1202,'Fendark',71428);
REPLACE INTO `mob_branch_db` VALUES(1203,'Mysteltainn',71428);
REPLACE INTO `mob_branch_db` VALUES(1204,'Tirfing',71428);
REPLACE INTO `mob_branch_db` VALUES(1205,'Executor',71428);
REPLACE INTO `mob_branch_db` VALUES(1206,'Anolian',71428);
REPLACE INTO `mob_branch_db` VALUES(1207,'Sting',71428);
REPLACE INTO `mob_branch_db` VALUES(1208,'Andarilho',71428);
REPLACE INTO `mob_branch_db` VALUES(1209,'Cãibra',71428);
REPLACE INTO `mob_branch_db` VALUES(1211,'Escaravelho',71428);
REPLACE INTO `mob_branch_db` VALUES(1212,'Mão de Ferro',71428);
REPLACE INTO `mob_branch_db` VALUES(1213,'Grand Orc',71428);
REPLACE INTO `mob_branch_db` VALUES(1214,'Choco',71428);
REPLACE INTO `mob_branch_db` VALUES(1215,'Talo de Verme',214285);
REPLACE INTO `mob_branch_db` VALUES(1216,'Penomena',71428);
REPLACE INTO `mob_branch_db` VALUES(1219,'Cavaleiro do Abismo',71428);
REPLACE INTO `mob_branch_db` VALUES(1242,'Marin',357142);
REPLACE INTO `mob_branch_db` VALUES(1243,'Sasquatch',214285);
REPLACE INTO `mob_branch_db` VALUES(1245,'Goblin Natalino',71428);
REPLACE INTO `mob_branch_db` VALUES(1246,'Cookie Natalino',214285);
REPLACE INTO `mob_branch_db` VALUES(1248,'Soldadinho de Chumbo',214285);
REPLACE INTO `mob_branch_db` VALUES(1249,'Presente',214285);
REPLACE INTO `mob_branch_db` VALUES(1250,'Chepet',71428);
REPLACE INTO `mob_branch_db` VALUES(1253,'Gárgula',71428);
REPLACE INTO `mob_branch_db` VALUES(1254,'Raggler',214285);
REPLACE INTO `mob_branch_db` VALUES(1255,'Nereida',214285);
REPLACE INTO `mob_branch_db` VALUES(1256,'Peste',214285);
REPLACE INTO `mob_branch_db` VALUES(1257,'Injustiçado',71428);
REPLACE INTO `mob_branch_db` VALUES(1258,'Goblin Arqueiro',214285);
REPLACE INTO `mob_branch_db` VALUES(1259,'Grifo',71428);
REPLACE INTO `mob_branch_db` VALUES(1260,'Moldura Maldita',71428);
REPLACE INTO `mob_branch_db` VALUES(1261,'Rosa Selvagem',214285);
REPLACE INTO `mob_branch_db` VALUES(1262,'Dragão Mutante',71428);
REPLACE INTO `mob_branch_db` VALUES(1263,'Xamã do Vento',71428);
REPLACE INTO `mob_branch_db` VALUES(1264,'Tritão',71428);
REPLACE INTO `mob_branch_db` VALUES(1265,'Cookie',214285);
REPLACE INTO `mob_branch_db` VALUES(1266,'Estrela do Mar',357142);
REPLACE INTO `mob_branch_db` VALUES(1267,'Carat',71428);
REPLACE INTO `mob_branch_db` VALUES(1268,'Cavaleiro Sanguinário',71428);
REPLACE INTO `mob_branch_db` VALUES(1269,'Relógio',71428);
REPLACE INTO `mob_branch_db` VALUES(1270,'Gerente',71428);
REPLACE INTO `mob_branch_db` VALUES(1271,'Crocodilo',71428);
REPLACE INTO `mob_branch_db` VALUES(1273,'Senhora Orc',214285);
REPLACE INTO `mob_branch_db` VALUES(1274,'Megalith',71428);
REPLACE INTO `mob_branch_db` VALUES(1275,'Alice',71428);
REPLACE INTO `mob_branch_db` VALUES(1276,'Raydric Arqueiro',71428);
REPLACE INTO `mob_branch_db` VALUES(1277,'Guardião da Floresta',214285);
REPLACE INTO `mob_branch_db` VALUES(1278,'Golem Estalactítico',71428);
REPLACE INTO `mob_branch_db` VALUES(1279,'Trilobita',214285);
REPLACE INTO `mob_branch_db` VALUES(1280,'Goblin a Vapor',214285);
REPLACE INTO `mob_branch_db` VALUES(1281,'Verme Sábio',71428);
REPLACE INTO `mob_branch_db` VALUES(1282,'Cobold Arqueiro',214285);
REPLACE INTO `mob_branch_db` VALUES(1283,'Quimera',71428);
REPLACE INTO `mob_branch_db` VALUES(1289,'Maya Macho',71428);
REPLACE INTO `mob_branch_db` VALUES(1290,'Esqueleto General',71428);
REPLACE INTO `mob_branch_db` VALUES(1291,'Aparição',71428);
REPLACE INTO `mob_branch_db` VALUES(1292,'Diabinho',71428);
REPLACE INTO `mob_branch_db` VALUES(1293,'Creamy Ameaçador',71428);
REPLACE INTO `mob_branch_db` VALUES(1294,'Mantis Assassino',71428);
REPLACE INTO `mob_branch_db` VALUES(1295,'Barão Coruja',71428);
REPLACE INTO `mob_branch_db` VALUES(1296,'Líder Cobold',71428);
REPLACE INTO `mob_branch_db` VALUES(1297,'Múmia Anciã',71428);
REPLACE INTO `mob_branch_db` VALUES(1298,'Zumbi Mestre',71428);
REPLACE INTO `mob_branch_db` VALUES(1299,'Líder Goblin',71428);
REPLACE INTO `mob_branch_db` VALUES(1300,'Lagarta',71428);
REPLACE INTO `mob_branch_db` VALUES(1301,'Am Mut',71428);
REPLACE INTO `mob_branch_db` VALUES(1302,'Ilusão das Trevas',71428);
REPLACE INTO `mob_branch_db` VALUES(1303,'Zangão Gigante',71428);
REPLACE INTO `mob_branch_db` VALUES(1304,'Aranha Gigante',71428);
REPLACE INTO `mob_branch_db` VALUES(1305,'Verme Ancião',71428);
REPLACE INTO `mob_branch_db` VALUES(1306,'Leib Olmai',71428);
REPLACE INTO `mob_branch_db` VALUES(1307,'Gato de Nove Caudas',71428);
REPLACE INTO `mob_branch_db` VALUES(1308,'Panzer Goblin',71428);
REPLACE INTO `mob_branch_db` VALUES(1309,'Gajomart',71428);
REPLACE INTO `mob_branch_db` VALUES(1310,'Majoruros',71428);
REPLACE INTO `mob_branch_db` VALUES(1311,'Gullinbursti',71428);
REPLACE INTO `mob_branch_db` VALUES(1313,'Yakuza',71428);
REPLACE INTO `mob_branch_db` VALUES(1314,'Batedor',71428);
REPLACE INTO `mob_branch_db` VALUES(1315,'Agressor',71428);
REPLACE INTO `mob_branch_db` VALUES(1316,'Soldado',71428);
REPLACE INTO `mob_branch_db` VALUES(1317,'Foca',71428);
REPLACE INTO `mob_branch_db` VALUES(1318,'Aquecedor',71428);
REPLACE INTO `mob_branch_db` VALUES(1319,'Congelador',71428);
REPLACE INTO `mob_branch_db` VALUES(1320,'Duque Coruja',71428);
REPLACE INTO `mob_branch_db` VALUES(1321,'Lavadeira',71428);
REPLACE INTO `mob_branch_db` VALUES(1322,'Coelho',71428);
REPLACE INTO `mob_branch_db` VALUES(1323,'Lontra',71428);
REPLACE INTO `mob_branch_db` VALUES(1365,'Apocalipse',71428);
REPLACE INTO `mob_branch_db` VALUES(1366,'Golem de Lava',71428);
REPLACE INTO `mob_branch_db` VALUES(1367,'Labareda',71428);
REPLACE INTO `mob_branch_db` VALUES(1368,'Planta Carnívora',71428);
REPLACE INTO `mob_branch_db` VALUES(1369,'Grand Peco',71428);
REPLACE INTO `mob_branch_db` VALUES(1370,'Succubus',71428);
REPLACE INTO `mob_branch_db` VALUES(1371,'Anjo Fajuto',71428);
REPLACE INTO `mob_branch_db` VALUES(1372,'Bode',71428);
REPLACE INTO `mob_branch_db` VALUES(1374,'Incubus',71428);
REPLACE INTO `mob_branch_db` VALUES(1375,'Papel',71428);
REPLACE INTO `mob_branch_db` VALUES(1376,'Harpia',71428);
REPLACE INTO `mob_branch_db` VALUES(1377,'Ancião',71428);
REPLACE INTO `mob_branch_db` VALUES(1378,'Pungus',71428);
REPLACE INTO `mob_branch_db` VALUES(1379,'Pesadelo Sombrio',71428);
REPLACE INTO `mob_branch_db` VALUES(1380,'Furador',71428);
REPLACE INTO `mob_branch_db` VALUES(1381,'Grizzly',71428);
REPLACE INTO `mob_branch_db` VALUES(1382,'Diabolik',71428);
REPLACE INTO `mob_branch_db` VALUES(1383,'Estrondo',71428);
REPLACE INTO `mob_branch_db` VALUES(1384,'Exterminador',71428);
REPLACE INTO `mob_branch_db` VALUES(1385,'Deletério',71428);
REPLACE INTO `mob_branch_db` VALUES(1386,'Rochoso',71428);
REPLACE INTO `mob_branch_db` VALUES(1387,'Ferrão',71428);
REPLACE INTO `mob_branch_db` VALUES(1390,'Violi',71428);
REPLACE INTO `mob_branch_db` VALUES(1391,'Pingu',71428);
REPLACE INTO `mob_branch_db` VALUES(1392,'Giro-Goblin',214285);
REPLACE INTO `mob_branch_db` VALUES(1400,'Karakasa',214285);
REPLACE INTO `mob_branch_db` VALUES(1401,'Shinobi',71428);
REPLACE INTO `mob_branch_db` VALUES(1402,'Sapo Venenoso',71428);
REPLACE INTO `mob_branch_db` VALUES(1403,'Soldado Atirador',71428);
REPLACE INTO `mob_branch_db` VALUES(1404,'Boneco de Miyabi',214285);
REPLACE INTO `mob_branch_db` VALUES(1405,'Tengu',71428);
REPLACE INTO `mob_branch_db` VALUES(1406,'Kapha',71428);
REPLACE INTO `mob_branch_db` VALUES(1408,'Borboleta Sangrenta',71428);
REPLACE INTO `mob_branch_db` VALUES(1409,'Pirralho',214285);
REPLACE INTO `mob_branch_db` VALUES(1410,'Pessegueira Encantada',71428);
REPLACE INTO `mob_branch_db` VALUES(1412,'Ermitão Maligno',71428);
REPLACE INTO `mob_branch_db` VALUES(1413,'Ermitão Selvagem',71428);
REPLACE INTO `mob_branch_db` VALUES(1415,'Filhote de Leopardo',214285);
REPLACE INTO `mob_branch_db` VALUES(1416,'Ninfa Perversa',71428);
REPLACE INTO `mob_branch_db` VALUES(1417,'Zipper',214285);
REPLACE INTO `mob_branch_db` VALUES(1493,'Dríade',71428);
REPLACE INTO `mob_branch_db` VALUES(1494,'Besouro-Rei',214285);
REPLACE INTO `mob_branch_db` VALUES(1495,'Atirador de Pedras',71428);
REPLACE INTO `mob_branch_db` VALUES(1497,'Golem de Madeira',71428);
REPLACE INTO `mob_branch_db` VALUES(1498,'Atirador Wootan',214285);
REPLACE INTO `mob_branch_db` VALUES(1499,'Guerreiro Wootan',71428);
REPLACE INTO `mob_branch_db` VALUES(1500,'Parasita',214285);
REPLACE INTO `mob_branch_db` VALUES(1503,'Árvore Maldita',71428);
REPLACE INTO `mob_branch_db` VALUES(1504,'Dullahan',71428);
REPLACE INTO `mob_branch_db` VALUES(1505,'Loli Ruri',71428);
REPLACE INTO `mob_branch_db` VALUES(1506,'Mascarado',71428);
REPLACE INTO `mob_branch_db` VALUES(1507,'Serial Killer',71428);
REPLACE INTO `mob_branch_db` VALUES(1508,'Quve',214285);
REPLACE INTO `mob_branch_db` VALUES(1509,'Lude',214285);
REPLACE INTO `mob_branch_db` VALUES(1510,'Poltergeist',71428);
REPLACE INTO `mob_branch_db` VALUES(1512,'Yao Jun',71428);
REPLACE INTO `mob_branch_db` VALUES(1513,'Mao Guai',71428);
REPLACE INTO `mob_branch_db` VALUES(1514,'Zhu Po Long',71428);
REPLACE INTO `mob_branch_db` VALUES(1515,'Filhote de Hatii',71428);
REPLACE INTO `mob_branch_db` VALUES(1516,'Mi Gao',71428);
REPLACE INTO `mob_branch_db` VALUES(1517,'Jing Guai',71428);
REPLACE INTO `mob_branch_db` VALUES(1519,'Chung E',71428);
REPLACE INTO `mob_branch_db` VALUES(1520,'Bolinho de Massa',71428);
REPLACE INTO `mob_branch_db` VALUES(1582,'Deviling',71428);
REPLACE INTO `mob_branch_db` VALUES(1584,'Tamruan',71428);
REPLACE INTO `mob_branch_db` VALUES(1586,'Gato de Folha',71428);
REPLACE INTO `mob_branch_db` VALUES(1587,'Kraben',71428);
REPLACE INTO `mob_branch_db` VALUES(1613,'Metaling',71428);
REPLACE INTO `mob_branch_db` VALUES(1614,'Mineral',71428);
REPLACE INTO `mob_branch_db` VALUES(1615,'Obsidiana',71428);
REPLACE INTO `mob_branch_db` VALUES(1616,'Minérios',71428);
REPLACE INTO `mob_branch_db` VALUES(1617,'Fornalha Velha',71428);
REPLACE INTO `mob_branch_db` VALUES(1618,'Ungoliant',71428);
REPLACE INTO `mob_branch_db` VALUES(1619,'Porcellio',71428);
REPLACE INTO `mob_branch_db` VALUES(1620,'Nuvem Tóxica',71428);
REPLACE INTO `mob_branch_db` VALUES(1621,'Nuvem Venenosa',71428);
REPLACE INTO `mob_branch_db` VALUES(1622,'Ursinho',71428);
REPLACE INTO `mob_branch_db` VALUES(1627,'Anopheles',71428);
REPLACE INTO `mob_branch_db` VALUES(1628,'Holden',71428);
REPLACE INTO `mob_branch_db` VALUES(1629,'Vento da Colina',71428);
REPLACE INTO `mob_branch_db` VALUES(1631,'Donzela Verde',71428);
REPLACE INTO `mob_branch_db` VALUES(1632,'Gremlin',71428);
REPLACE INTO `mob_branch_db` VALUES(1633,'Beholder',71428);
REPLACE INTO `mob_branch_db` VALUES(1634,'Seyren Windsor',71428);
REPLACE INTO `mob_branch_db` VALUES(1635,'Eremes Guile',71428);
REPLACE INTO `mob_branch_db` VALUES(1636,'Howard Alt-Eisen',71428);
REPLACE INTO `mob_branch_db` VALUES(1637,'Margaretha Sorin',71428);
REPLACE INTO `mob_branch_db` VALUES(1638,'Cecil Damon',71428);
REPLACE INTO `mob_branch_db` VALUES(1639,'Kathryne Keyron',71428);
REPLACE INTO `mob_branch_db` VALUES(1652,'Egnigem Cenia',71428);
REPLACE INTO `mob_branch_db` VALUES(1653,'Wickebine Tres',71428);
REPLACE INTO `mob_branch_db` VALUES(1654,'Armeyer Dinze',71428);
REPLACE INTO `mob_branch_db` VALUES(1655,'Errende Ebecee',71428);
REPLACE INTO `mob_branch_db` VALUES(1656,'Kavach Icarus',71428);
REPLACE INTO `mob_branch_db` VALUES(1657,'Laurell Weinder',71428);
REPLACE INTO `mob_branch_db` VALUES(1664,'Canhão de Fóton',71428);
REPLACE INTO `mob_branch_db` VALUES(1665,'Canhão de Fóton',71428);
REPLACE INTO `mob_branch_db` VALUES(1666,'Canhão de Fóton',71428);
REPLACE INTO `mob_branch_db` VALUES(1667,'Canhão de Fóton',71428);
REPLACE INTO `mob_branch_db` VALUES(1668,'Archdam',71428);
REPLACE INTO `mob_branch_db` VALUES(1669,'Dimik',71428);
REPLACE INTO `mob_branch_db` VALUES(1670,'Dimik',71428);
REPLACE INTO `mob_branch_db` VALUES(1671,'Dimik',71428);
REPLACE INTO `mob_branch_db` VALUES(1672,'Dimik',71428);
REPLACE INTO `mob_branch_db` VALUES(1673,'Dimik',71428);
REPLACE INTO `mob_branch_db` VALUES(1675,'Venatu',71428);
REPLACE INTO `mob_branch_db` VALUES(1676,'Venatu',71428);
REPLACE INTO `mob_branch_db` VALUES(1677,'Venatu',71428);
REPLACE INTO `mob_branch_db` VALUES(1678,'Venatu',71428);
REPLACE INTO `mob_branch_db` VALUES(1679,'Venatu',71428);
REPLACE INTO `mob_branch_db` VALUES(1680,'Coluna de Vento',71428);
REPLACE INTO `mob_branch_db` VALUES(1681,'Gemini-S58',71428);
REPLACE INTO `mob_branch_db` VALUES(1682,'Exterminador',71428);
REPLACE INTO `mob_branch_db` VALUES(1686,'Filhote de Orc',71428);
REPLACE INTO `mob_branch_db` VALUES(1687,'Grove',71428);
REPLACE INTO `mob_branch_db` VALUES(1692,'Breeze',71428);
REPLACE INTO `mob_branch_db` VALUES(1693,'Plasma',71428);
REPLACE INTO `mob_branch_db` VALUES(1694,'Plasma',71428);
REPLACE INTO `mob_branch_db` VALUES(1695,'Plasma',71428);
REPLACE INTO `mob_branch_db` VALUES(1696,'Plasma',71428);
REPLACE INTO `mob_branch_db` VALUES(1699,'Mímico Antigo',71428);
REPLACE INTO `mob_branch_db` VALUES(1703,'Lady Solace',71428);
REPLACE INTO `mob_branch_db` VALUES(1704,'Odium de Thanatos',71428);
REPLACE INTO `mob_branch_db` VALUES(1705,'Despero de Thanatos',71428);
REPLACE INTO `mob_branch_db` VALUES(1706,'Maero de Thanatos',71428);
REPLACE INTO `mob_branch_db` VALUES(1707,'Pesar de Thanatos',71428);
REPLACE INTO `mob_branch_db` VALUES(1713,'Acidus',71428);
REPLACE INTO `mob_branch_db` VALUES(1714,'Ferus',71428);
REPLACE INTO `mob_branch_db` VALUES(1715,'Novus',71428);
REPLACE INTO `mob_branch_db` VALUES(1717,'Ferus',71428);
REPLACE INTO `mob_branch_db` VALUES(1718,'Novus',71428);
REPLACE INTO `mob_branch_db` VALUES(1720,'Hydrolancer',71428);
REPLACE INTO `mob_branch_db` VALUES(1721,'Ovo de Dragão',71428);
REPLACE INTO `mob_branch_db` VALUES(1736,'Aliot',71428);
REPLACE INTO `mob_branch_db` VALUES(1737,'Aliza',71428);
REPLACE INTO `mob_branch_db` VALUES(1738,'Constante',71428);
REPLACE INTO `mob_branch_db` VALUES(1752,'Skogul',71428);
REPLACE INTO `mob_branch_db` VALUES(1753,'Frus',71428);
REPLACE INTO `mob_branch_db` VALUES(1754,'Skeggiold',71428);
REPLACE INTO `mob_branch_db` VALUES(1755,'Skeggiold',71428);
REPLACE INTO `mob_branch_db` VALUES(1769,'Agav',71428);
REPLACE INTO `mob_branch_db` VALUES(1770,'Echio',71428);
REPLACE INTO `mob_branch_db` VALUES(1771,'Vanberk',71428);
REPLACE INTO `mob_branch_db` VALUES(1772,'Isilla',71428);
REPLACE INTO `mob_branch_db` VALUES(1773,'Hodremlin',71428);
REPLACE INTO `mob_branch_db` VALUES(1774,'Rastreador',71428);
REPLACE INTO `mob_branch_db` VALUES(1775,'Yeti',71428);
REPLACE INTO `mob_branch_db` VALUES(1776,'Siroma',71428);
REPLACE INTO `mob_branch_db` VALUES(1777,'Titã de Gelo',71428);
REPLACE INTO `mob_branch_db` VALUES(1778,'Gazeti',71428);
REPLACE INTO `mob_branch_db` VALUES(1780,'Muscipular',71428);
REPLACE INTO `mob_branch_db` VALUES(1781,'Drosera',71428);
REPLACE INTO `mob_branch_db` VALUES(1782,'Roween',71428);
REPLACE INTO `mob_branch_db` VALUES(1783,'Galion',71428);
REPLACE INTO `mob_branch_db` VALUES(1784,'Stapo',142857);
REPLACE INTO `mob_branch_db` VALUES(1789,'Estalactite',71428);
REPLACE INTO `mob_branch_db` VALUES(1796,'Aunoe',142857);
REPLACE INTO `mob_branch_db` VALUES(1797,'Fanat',142857);
REPLACE INTO `mob_branch_db` VALUES(1829,'Espadachim Guardião',71428);
REPLACE INTO `mob_branch_db` VALUES(1830,'Arqueiro Guardião',71428);
REPLACE INTO `mob_branch_db` VALUES(1831,'Salamandra',71428);
REPLACE INTO `mob_branch_db` VALUES(1833,'Kasa',71428);
REPLACE INTO `mob_branch_db` VALUES(1836,'Magmaring',214285);
REPLACE INTO `mob_branch_db` VALUES(1837,'Imp',71428);
REPLACE INTO `mob_branch_db` VALUES(1838,'Golpeador',71428);
REPLACE INTO `mob_branch_db` VALUES(1839,'Byorgue',71428);
REPLACE INTO `mob_branch_db` VALUES(1864,'Massacre',71428);
REPLACE INTO `mob_branch_db` VALUES(1865,'Zumbi Dilacerado',71428);
REPLACE INTO `mob_branch_db` VALUES(1866,'Cão Infernal',71428);
REPLACE INTO `mob_branch_db` VALUES(1867,'Banshee',71428);
REPLACE INTO `mob_branch_db` VALUES(1869,'Crânio Flamejante',71428);
REPLACE INTO `mob_branch_db` VALUES(1870,'Necromante',71428);
REPLACE INTO `mob_branch_db` VALUES(1872,'Mosca Infernal',71428);
REPLACE INTO `mob_branch_db` VALUES(1880,'Leshij',71428);
REPLACE INTO `mob_branch_db` VALUES(1881,'Les',71428);
REPLACE INTO `mob_branch_db` VALUES(1882,'Baba-Yaga',71428);
REPLACE INTO `mob_branch_db` VALUES(1883,'Kikimora',71428);
REPLACE INTO `mob_branch_db` VALUES(1884,'Mavka',71428);
REPLACE INTO `mob_branch_db` VALUES(1918,'Sombra da Inveja',71428);
REPLACE INTO `mob_branch_db` VALUES(1919,'Sombra da Gula',71428);
REPLACE INTO `mob_branch_db` VALUES(1920,'Sombra da Vaidade',71428);
REPLACE INTO `mob_branch_db` VALUES(1921,'Sombra da Ira',71428);
REPLACE INTO `mob_branch_db` VALUES(1974,'Senhora das Banshees',71428);
REPLACE INTO `mob_branch_db` VALUES(1975,'Mestre Beholder',71428);
REPLACE INTO `mob_branch_db` VALUES(1976,'Cobalto',71428);
REPLACE INTO `mob_branch_db` VALUES(1977,'Metaling Pesado',71428);
REPLACE INTO `mob_branch_db` VALUES(1978,'Apocalipse Infernal',71428);
REPLACE INTO `mob_branch_db` VALUES(1979,'Zakudam',71428);
REPLACE INTO `mob_branch_db` VALUES(1986,'Tatacho',71428);
REPLACE INTO `mob_branch_db` VALUES(1987,'Centopéia',71428);
REPLACE INTO `mob_branch_db` VALUES(1988,'Nepenthes',71428);
REPLACE INTO `mob_branch_db` VALUES(1989,'Leão da Montanha',71428);
REPLACE INTO `mob_branch_db` VALUES(1990,'Mamute Rochoso',71428);
REPLACE INTO `mob_branch_db` VALUES(1991,'Leão de Vinhas',71428);
REPLACE INTO `mob_branch_db` VALUES(1992,'Cornus',71428);
REPLACE INTO `mob_branch_db` VALUES(1993,'Naga',71428);
REPLACE INTO `mob_branch_db` VALUES(1994,'Vespa Vagalume',71428);
REPLACE INTO `mob_branch_db` VALUES(1995,'Pinguicula',71428);
REPLACE INTO `mob_branch_db` VALUES(1999,'Larva de Centopéia',71428);
REPLACE INTO `mob_branch_db` VALUES(2013,'Draco',71428);
REPLACE INTO `mob_branch_db` VALUES(2015,'Pinguicula Sombria',71428);
REPLACE INTO `mob_branch_db` VALUES(2016,'Elemental da Água',71428);
REPLACE INTO `mob_branch_db` VALUES(2017,'Ratatosk',71428);
REPLACE INTO `mob_branch_db` VALUES(2018,'Duneyrr',71428);
REPLACE INTO `mob_branch_db` VALUES(2019,'Árvore Anciã',71428);
REPLACE INTO `mob_branch_db` VALUES(2020,'Ryncho',71428);
REPLACE INTO `mob_branch_db` VALUES(2021,'Phylla',71428);
REPLACE INTO `mob_branch_db` VALUES(2023,'Sombra Obscura',71428);
REPLACE INTO `mob_branch_db` VALUES(2024,'Golem de Bradium',71428);
REPLACE INTO `mob_branch_db` VALUES(2069,'Iara',71428);
REPLACE INTO `mob_branch_db` VALUES(2070,'Piranha',71428);
REPLACE INTO `mob_branch_db` VALUES(2071,'Headless Mule',71428);
REPLACE INTO `mob_branch_db` VALUES(2072,'Jaguar',71428);
REPLACE INTO `mob_branch_db` VALUES(2073,'Toucan',71428);
REPLACE INTO `mob_branch_db` VALUES(2074,'Curupira',71428);
REPLACE INTO `mob_branch_db` VALUES(2083,'One-Horned Scaraba',71428);
REPLACE INTO `mob_branch_db` VALUES(2084,'Two-Horned Scaraba',71428);
REPLACE INTO `mob_branch_db` VALUES(2085,'Antler Scaraba',71428);
REPLACE INTO `mob_branch_db` VALUES(2086,'Rake Scaraba',71428);
REPLACE INTO `mob_branch_db` VALUES(2088,'Scaraba Egg',71428);
REPLACE INTO `mob_branch_db` VALUES(2089,'Scaraba Egg',71428);
REPLACE INTO `mob_branch_db` VALUES(2090,'Antler Scaraba Egg',71428);
REPLACE INTO `mob_branch_db` VALUES(2091,'Rake Scaraba Egg',71428);
REPLACE INTO `mob_branch_db` VALUES(2092,'Dolomedes',71428);
REPLACE INTO `mob_branch_db` VALUES(2093,'Botaring',142857);

--
-- Estrutura da tabela `mob_chat_db`
--

CREATE TABLE IF NOT EXISTS `mob_chat_db` (
  `Line_ID` tinyint(4) NOT NULL,
  `Color_Code` int(10) unsigned DEFAULT NULL,
  `Dialog` tinytext NOT NULL,
  PRIMARY KEY (`Line_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mob_chat_db`
--

REPLACE INTO `mob_chat_db` VALUES(1,0,'Weakling! Challenge me if you have any courage!\n');
REPLACE INTO `mob_chat_db` VALUES(2,0,'Impressive! I wonder how far your recklessness will take you.\n');
REPLACE INTO `mob_chat_db` VALUES(3,0,'I almost pity how outmatched you are against me. Now prepare for my attack!\n');
REPLACE INTO `mob_chat_db` VALUES(4,0,'My loyal servants! Welcome them with a painful death!\n');
REPLACE INTO `mob_chat_db` VALUES(5,0,'Don''t you run away!\n');
REPLACE INTO `mob_chat_db` VALUES(6,0,'You worthless humans. Your so-called holy powers have no effect on me!\n');
REPLACE INTO `mob_chat_db` VALUES(7,0,'Useless underlings!...Well');
REPLACE INTO `mob_chat_db` VALUES(8,0,'Pray to your gods!\n');
REPLACE INTO `mob_chat_db` VALUES(9,0,'Do you still think you''re a match to me?!\n');
REPLACE INTO `mob_chat_db` VALUES(10,0,'Vanish!\n');
REPLACE INTO `mob_chat_db` VALUES(11,0,'Let''s see how long you can endure my power!\n');
REPLACE INTO `mob_chat_db` VALUES(12,0,'Is this all you''ve got?!\n');
REPLACE INTO `mob_chat_db` VALUES(13,0,'You''re tickling me!\n');
REPLACE INTO `mob_chat_db` VALUES(14,0,'This is how you attack? Watch and learn');
REPLACE INTO `mob_chat_db` VALUES(15,0,'It''s time to finish the game!\n');
REPLACE INTO `mob_chat_db` VALUES(16,0,'Oh');
REPLACE INTO `mob_chat_db` VALUES(17,0,'No');
REPLACE INTO `mob_chat_db` VALUES(18,0,'I can never die! I''ll be coming back for you!\n');
REPLACE INTO `mob_chat_db` VALUES(19,0,'I was born to conquer this world! None shall stop me!\n');
REPLACE INTO `mob_chat_db` VALUES(20,0,'Your days are numbered!\n');
REPLACE INTO `mob_chat_db` VALUES(21,0,'Pulse Strike! My fingers tear steel!\n');
REPLACE INTO `mob_chat_db` VALUES(22,0,'Hahaha');
REPLACE INTO `mob_chat_db` VALUES(23,0,'Enjoy your time on the mortal plane while you can');
REPLACE INTO `mob_chat_db` VALUES(24,0,'When are you going to learn your lesson? In death?\n');
REPLACE INTO `mob_chat_db` VALUES(25,0,'No... I can''t lose! I won''t beg for my life! I''m not running away! I don''t accept this as defeat!\n');
REPLACE INTO `mob_chat_db` VALUES(26,0,'Argh... I... I''m weakening...\n');
REPLACE INTO `mob_chat_db` VALUES(27,0,'What do you want from me?\n');
REPLACE INTO `mob_chat_db` VALUES(28,0,'No! I didn''t do this! He''s the one who planned out all this!\n');
REPLACE INTO `mob_chat_db` VALUES(29,0,'I just wanted to find peace..!  That''s why I have been fleeing away!\n');
REPLACE INTO `mob_chat_db` VALUES(30,0,'Ahhhh!!! Now');
REPLACE INTO `mob_chat_db` VALUES(31,0,'Annoying flies!! Get off of me!\n');
REPLACE INTO `mob_chat_db` VALUES(32,0,'Suffer in Hell!\n');
REPLACE INTO `mob_chat_db` VALUES(33,0,'Mwahahaha! Taste the anger of the earth!!!\n');
REPLACE INTO `mob_chat_db` VALUES(34,0,'No... I won''t accept this as defeat!\n');
REPLACE INTO `mob_chat_db` VALUES(35,0,'Will it ease your loneliness to hit me?  Why don''t you stay here with me forever');
REPLACE INTO `mob_chat_db` VALUES(36,0,'You will forgot the meaning of time.  I wonder how long can you last in here...\n');
REPLACE INTO `mob_chat_db` VALUES(37,0,'Is there anyone waiting for you outside of here?  Throw them all away');
REPLACE INTO `mob_chat_db` VALUES(38,0,'Discard your life and stay confined here.  You will yearn for freedom in captivity !!\n');
REPLACE INTO `mob_chat_db` VALUES(39,0,'How much will the outside world change if you stay here in solitude for one thousand years?\n');
REPLACE INTO `mob_chat_db` VALUES(40,0,'Yes! Yearn for your freedom from this confined place');

--
-- Estrutura da tabela `mob_classchange_db`
--

CREATE TABLE IF NOT EXISTS `mob_classchange_db` (
  `MobID` smallint(5) unsigned NOT NULL,
  `DummyName` varchar(30) NOT NULL,
  `Rate` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mob_classchange_db`
--

REPLACE INTO `mob_classchange_db` VALUES(0,'Baphomet',1039);
REPLACE INTO `mob_classchange_db` VALUES(1038,'Osíris',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1039,'Bafomé',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1046,'Doppelganger',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1059,'Abelha-Rainha',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1086,'Besouro-Ladrão Dourado',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1087,'Orc Herói',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1112,'Drake',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1115,'Eddga',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1147,'Maya',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1150,'Flor do Luar',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1157,'Faraó',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1159,'Freeoni',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1190,'Senhor dos Orcs',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1251,'Cavaleiro da Tempestade',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1252,'Hatii',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1272,'Senhor das Trevas',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1312,'General Tartaruga',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1373,'Senhor dos Mortos',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1388,'ArchAngeling',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1389,'Drácula',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1418,'Serpente Suprema',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1492,'Samurai Encarnado',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1511,'Amon Ra',1000000);
REPLACE INTO `mob_classchange_db` VALUES(1583,'Tao Gunka',1000000);

--
-- Estrutura da tabela `mob_db`
--

CREATE TABLE IF NOT EXISTS `mob_db` (
  `ID` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `Sprite` text NOT NULL,
  `kName` text NOT NULL,
  `iName` text NOT NULL,
  `LV` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `HP` int(9) unsigned NOT NULL DEFAULT '0',
  `SP` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `EXP` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `JEXP` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `Range1` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ATK1` smallint(6) unsigned NOT NULL DEFAULT '0',
  `ATK2` smallint(6) unsigned NOT NULL DEFAULT '0',
  `DEF` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MDEF` smallint(6) unsigned NOT NULL DEFAULT '0',
  `STR` smallint(6) unsigned NOT NULL DEFAULT '0',
  `AGI` smallint(6) unsigned NOT NULL DEFAULT '0',
  `VIT` smallint(6) unsigned NOT NULL DEFAULT '0',
  `INT` smallint(6) unsigned NOT NULL DEFAULT '0',
  `DEX` smallint(6) unsigned NOT NULL DEFAULT '0',
  `LUK` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Range2` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `Range3` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `Scale` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `Race` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `Element` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `Mode` smallint(6) unsigned NOT NULL DEFAULT '0',
  `Speed` smallint(6) unsigned NOT NULL DEFAULT '0',
  `aDelay` smallint(6) unsigned NOT NULL DEFAULT '0',
  `aMotion` smallint(6) unsigned NOT NULL DEFAULT '0',
  `dMotion` smallint(6) unsigned NOT NULL DEFAULT '0',
  `MEXP` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `MVP1id` smallint(9) unsigned NOT NULL DEFAULT '0',
  `MVP1per` smallint(9) unsigned NOT NULL DEFAULT '0',
  `MVP2id` smallint(9) unsigned NOT NULL DEFAULT '0',
  `MVP2per` smallint(9) unsigned NOT NULL DEFAULT '0',
  `MVP3id` smallint(9) unsigned NOT NULL DEFAULT '0',
  `MVP3per` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop1id` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop1per` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop2id` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop2per` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop3id` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop3per` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop4id` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop4per` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop5id` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop5per` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop6id` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop6per` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop7id` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop7per` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop8id` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop8per` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop9id` smallint(9) unsigned NOT NULL DEFAULT '0',
  `Drop9per` smallint(9) unsigned NOT NULL DEFAULT '0',
  `DropCardid` smallint(9) unsigned NOT NULL DEFAULT '0',
  `DropCardper` smallint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `mob_item_ratio_db`
--

CREATE TABLE IF NOT EXISTS `mob_item_ratio_db` (
  `ItemID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Ratio` int(10) unsigned NOT NULL DEFAULT '0',
  `MonsterID` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `mob_poring_db`
--

CREATE TABLE IF NOT EXISTS `mob_poring_db` (
  `MobID` smallint(5) unsigned NOT NULL,
  `DummyName` varchar(30) NOT NULL,
  `Rate` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mob_poring_db`
--

REPLACE INTO `mob_poring_db` VALUES(0,'Poring',1002);
REPLACE INTO `mob_poring_db` VALUES(1002,'Poring',1000000);
REPLACE INTO `mob_poring_db` VALUES(1031,'Poporing',1000000);
REPLACE INTO `mob_poring_db` VALUES(1062,'Poring Noel',200000);
REPLACE INTO `mob_poring_db` VALUES(1090,'Mastering',400000);
REPLACE INTO `mob_poring_db` VALUES(1096,'Angeling',200000);
REPLACE INTO `mob_poring_db` VALUES(1113,'Drops',1000000);
REPLACE INTO `mob_poring_db` VALUES(1120,'Ghostring',200000);
REPLACE INTO `mob_poring_db` VALUES(1242,'Marin',1000000);
REPLACE INTO `mob_poring_db` VALUES(1388,'ArchAngeling',200000);
REPLACE INTO `mob_poring_db` VALUES(1582,'Deviling',200000);
REPLACE INTO `mob_poring_db` VALUES(1613,'Metaling',1000000);
REPLACE INTO `mob_poring_db` VALUES(1784,'Stapo',1000000);
REPLACE INTO `mob_poring_db` VALUES(2093,'Botaring',400000);

--
-- Estrutura da tabela `mob_pouch_db`
--

CREATE TABLE IF NOT EXISTS `mob_pouch_db` (
  `MobID` smallint(5) unsigned NOT NULL,
  `DummyName` varchar(30) NOT NULL,
  `Rate` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mob_pouch_db`
--

REPLACE INTO `mob_pouch_db` VALUES(0,'Poring',1002);
REPLACE INTO `mob_pouch_db` VALUES(1001,'Escorpião',214285);
REPLACE INTO `mob_pouch_db` VALUES(1002,'Poring',1000000);
REPLACE INTO `mob_pouch_db` VALUES(1004,'Zangão',357142);
REPLACE INTO `mob_pouch_db` VALUES(1005,'Familiar',357142);
REPLACE INTO `mob_pouch_db` VALUES(1007,'Fabre',428571);
REPLACE INTO `mob_pouch_db` VALUES(1008,'Pupa',71428);
REPLACE INTO `mob_pouch_db` VALUES(1009,'Condor',357142);
REPLACE INTO `mob_pouch_db` VALUES(1010,'Salgueiro',357142);
REPLACE INTO `mob_pouch_db` VALUES(1011,'ChonChon',357142);
REPLACE INTO `mob_pouch_db` VALUES(1012,'Sapo de Rodda',357142);
REPLACE INTO `mob_pouch_db` VALUES(1013,'Lobo',357142);
REPLACE INTO `mob_pouch_db` VALUES(1014,'Esporo',357142);
REPLACE INTO `mob_pouch_db` VALUES(1015,'Zumbi',357142);
REPLACE INTO `mob_pouch_db` VALUES(1016,'Esqueleto Arqueiro',214285);
REPLACE INTO `mob_pouch_db` VALUES(1018,'Creamy',357142);
REPLACE INTO `mob_pouch_db` VALUES(1019,'PecoPeco',357142);
REPLACE INTO `mob_pouch_db` VALUES(1020,'Mandrágora',357142);
REPLACE INTO `mob_pouch_db` VALUES(1023,'Guerreiro Orc',214285);
REPLACE INTO `mob_pouch_db` VALUES(1024,'Rabo de Verme',357142);
REPLACE INTO `mob_pouch_db` VALUES(1025,'Jibóia',357142);
REPLACE INTO `mob_pouch_db` VALUES(1026,'Munak',214285);
REPLACE INTO `mob_pouch_db` VALUES(1028,'Esqueleto Soldado',214285);
REPLACE INTO `mob_pouch_db` VALUES(1029,'Isis',71428);
REPLACE INTO `mob_pouch_db` VALUES(1030,'Anaconda',214285);
REPLACE INTO `mob_pouch_db` VALUES(1031,'Poporing',357142);
REPLACE INTO `mob_pouch_db` VALUES(1032,'Verit',214285);
REPLACE INTO `mob_pouch_db` VALUES(1033,'Salgueiro Ancião',214285);
REPLACE INTO `mob_pouch_db` VALUES(1034,'Sapo de Thara',214285);
REPLACE INTO `mob_pouch_db` VALUES(1035,'Mosca Caçadora',71428);
REPLACE INTO `mob_pouch_db` VALUES(1036,'Carniçal',214285);
REPLACE INTO `mob_pouch_db` VALUES(1037,'Sorrateiro',71428);
REPLACE INTO `mob_pouch_db` VALUES(1040,'Golem',214285);
REPLACE INTO `mob_pouch_db` VALUES(1041,'Múmia',214285);
REPLACE INTO `mob_pouch_db` VALUES(1042,'ChonChon de Aço',357142);
REPLACE INTO `mob_pouch_db` VALUES(1044,'Obeaune',214285);
REPLACE INTO `mob_pouch_db` VALUES(1045,'Cavalo-Marinho',214285);
REPLACE INTO `mob_pouch_db` VALUES(1047,'Ovo de PecoPeco',71428);
REPLACE INTO `mob_pouch_db` VALUES(1048,'Ovo de Besouro-Ladrão',71428);
REPLACE INTO `mob_pouch_db` VALUES(1049,'Picky',357142);
REPLACE INTO `mob_pouch_db` VALUES(1050,'Picky com Casca',357142);
REPLACE INTO `mob_pouch_db` VALUES(1051,'Besouro-Ladrão',357142);
REPLACE INTO `mob_pouch_db` VALUES(1052,'Rocker',357142);
REPLACE INTO `mob_pouch_db` VALUES(1053,'Besouro-Ladrão Fêmea',357142);
REPLACE INTO `mob_pouch_db` VALUES(1054,'Besouro-Ladrão Macho',357142);
REPLACE INTO `mob_pouch_db` VALUES(1055,'Muka',357142);
REPLACE INTO `mob_pouch_db` VALUES(1056,'Fumacento',357142);
REPLACE INTO `mob_pouch_db` VALUES(1057,'Yoyo',357142);
REPLACE INTO `mob_pouch_db` VALUES(1058,'Metaller',214285);
REPLACE INTO `mob_pouch_db` VALUES(1060,'Pé Grande',214285);
REPLACE INTO `mob_pouch_db` VALUES(1061,'Pesadelo',71428);
REPLACE INTO `mob_pouch_db` VALUES(1062,'Poring Noel',357142);
REPLACE INTO `mob_pouch_db` VALUES(1063,'Lunático',357142);
REPLACE INTO `mob_pouch_db` VALUES(1064,'Megalodon',214285);
REPLACE INTO `mob_pouch_db` VALUES(1065,'Strouf',214285);
REPLACE INTO `mob_pouch_db` VALUES(1066,'Vadon',357142);
REPLACE INTO `mob_pouch_db` VALUES(1067,'Cornutus',214285);
REPLACE INTO `mob_pouch_db` VALUES(1068,'Hidra',357142);
REPLACE INTO `mob_pouch_db` VALUES(1069,'Peixe-Espada',214285);
REPLACE INTO `mob_pouch_db` VALUES(1070,'Kukre',357142);
REPLACE INTO `mob_pouch_db` VALUES(1071,'Esqueleto Pirata',214285);
REPLACE INTO `mob_pouch_db` VALUES(1072,'Kaho',71428);
REPLACE INTO `mob_pouch_db` VALUES(1073,'Caranguejo',214285);
REPLACE INTO `mob_pouch_db` VALUES(1074,'Molusco',357142);
REPLACE INTO `mob_pouch_db` VALUES(1076,'Esqueleto',357142);
REPLACE INTO `mob_pouch_db` VALUES(1077,'Esporo Venenoso',357142);
REPLACE INTO `mob_pouch_db` VALUES(1078,'Planta Vermelha',71428);
REPLACE INTO `mob_pouch_db` VALUES(1079,'Planta Azul',71428);
REPLACE INTO `mob_pouch_db` VALUES(1080,'Planta Verde',71428);
REPLACE INTO `mob_pouch_db` VALUES(1081,'Planta Amarela',71428);
REPLACE INTO `mob_pouch_db` VALUES(1082,'Planta Branca',71428);
REPLACE INTO `mob_pouch_db` VALUES(1083,'Planta Brilhante',71428);
REPLACE INTO `mob_pouch_db` VALUES(1084,'Cogumelo Negro',71428);
REPLACE INTO `mob_pouch_db` VALUES(1085,'Cogumelo Vermelho',71428);
REPLACE INTO `mob_pouch_db` VALUES(1088,'Vocal',71428);
REPLACE INTO `mob_pouch_db` VALUES(1089,'Sapo-Cururu',71428);
REPLACE INTO `mob_pouch_db` VALUES(1090,'Mastering',71428);
REPLACE INTO `mob_pouch_db` VALUES(1091,'Libélula',71428);
REPLACE INTO `mob_pouch_db` VALUES(1092,'Lobo Errante',71428);
REPLACE INTO `mob_pouch_db` VALUES(1093,'Eclipse',71428);
REPLACE INTO `mob_pouch_db` VALUES(1094,'Ambernite',357142);
REPLACE INTO `mob_pouch_db` VALUES(1095,'Andre',357142);
REPLACE INTO `mob_pouch_db` VALUES(1096,'Angeling',71428);
REPLACE INTO `mob_pouch_db` VALUES(1097,'Ovo de Andre',71428);
REPLACE INTO `mob_pouch_db` VALUES(1099,'Argiope',71428);
REPLACE INTO `mob_pouch_db` VALUES(1100,'Argos',214285);
REPLACE INTO `mob_pouch_db` VALUES(1101,'Bafomé Jr.',71428);
REPLACE INTO `mob_pouch_db` VALUES(1102,'Bathory',71428);
REPLACE INTO `mob_pouch_db` VALUES(1103,'Caramelo',214285);
REPLACE INTO `mob_pouch_db` VALUES(1104,'Koko',357142);
REPLACE INTO `mob_pouch_db` VALUES(1105,'Deniro',357142);
REPLACE INTO `mob_pouch_db` VALUES(1106,'Lobo do Deserto',214285);
REPLACE INTO `mob_pouch_db` VALUES(1107,'Filhote de Lobo do Deserto',71428);
REPLACE INTO `mob_pouch_db` VALUES(1108,'Deviace',71428);
REPLACE INTO `mob_pouch_db` VALUES(1109,'Deviruchi',71428);
REPLACE INTO `mob_pouch_db` VALUES(1110,'Dokebi',214285);
REPLACE INTO `mob_pouch_db` VALUES(1111,'Drainliar',214285);
REPLACE INTO `mob_pouch_db` VALUES(1113,'Drops',357142);
REPLACE INTO `mob_pouch_db` VALUES(1114,'Poeira',214285);
REPLACE INTO `mob_pouch_db` VALUES(1116,'Eggyra',214285);
REPLACE INTO `mob_pouch_db` VALUES(1117,'Druida Maligno',71428);
REPLACE INTO `mob_pouch_db` VALUES(1118,'Flora',214285);
REPLACE INTO `mob_pouch_db` VALUES(1119,'Frilldora',214285);
REPLACE INTO `mob_pouch_db` VALUES(1120,'Ghostring',71428);
REPLACE INTO `mob_pouch_db` VALUES(1121,'Giearth',214285);
REPLACE INTO `mob_pouch_db` VALUES(1122,'Goblin',214285);
REPLACE INTO `mob_pouch_db` VALUES(1123,'Goblin',214285);
REPLACE INTO `mob_pouch_db` VALUES(1124,'Goblin',214285);
REPLACE INTO `mob_pouch_db` VALUES(1125,'Goblin',214285);
REPLACE INTO `mob_pouch_db` VALUES(1126,'Goblin',214285);
REPLACE INTO `mob_pouch_db` VALUES(1127,'Hode',214285);
REPLACE INTO `mob_pouch_db` VALUES(1128,'Besouro-Chifre',357142);
REPLACE INTO `mob_pouch_db` VALUES(1129,'Horong',214285);
REPLACE INTO `mob_pouch_db` VALUES(1130,'Jakk',214285);
REPLACE INTO `mob_pouch_db` VALUES(1131,'Coringa',71428);
REPLACE INTO `mob_pouch_db` VALUES(1132,'Khalitzburg',71428);
REPLACE INTO `mob_pouch_db` VALUES(1133,'Cobold',214285);
REPLACE INTO `mob_pouch_db` VALUES(1134,'Cobold',214285);
REPLACE INTO `mob_pouch_db` VALUES(1135,'Cobold',214285);
REPLACE INTO `mob_pouch_db` VALUES(1138,'Magnólia',214285);
REPLACE INTO `mob_pouch_db` VALUES(1139,'Louva-a-Deus',214285);
REPLACE INTO `mob_pouch_db` VALUES(1140,'Marduk',214285);
REPLACE INTO `mob_pouch_db` VALUES(1141,'Marina',214285);
REPLACE INTO `mob_pouch_db` VALUES(1142,'Esfera Marinha',214285);
REPLACE INTO `mob_pouch_db` VALUES(1143,'Marionete',71428);
REPLACE INTO `mob_pouch_db` VALUES(1144,'Marte',214285);
REPLACE INTO `mob_pouch_db` VALUES(1145,'Martin',357142);
REPLACE INTO `mob_pouch_db` VALUES(1146,'Matyr',214285);
REPLACE INTO `mob_pouch_db` VALUES(1148,'Medusa',71428);
REPLACE INTO `mob_pouch_db` VALUES(1149,'Minorous',71428);
REPLACE INTO `mob_pouch_db` VALUES(1151,'Névoa',214285);
REPLACE INTO `mob_pouch_db` VALUES(1152,'Orc Esqueleto',214285);
REPLACE INTO `mob_pouch_db` VALUES(1153,'Orc Zumbi',214285);
REPLACE INTO `mob_pouch_db` VALUES(1154,'Pasana',71428);
REPLACE INTO `mob_pouch_db` VALUES(1155,'Petite',71428);
REPLACE INTO `mob_pouch_db` VALUES(1156,'Petite Voador',71428);
REPLACE INTO `mob_pouch_db` VALUES(1158,'Fen',214285);
REPLACE INTO `mob_pouch_db` VALUES(1160,'Piere',357142);
REPLACE INTO `mob_pouch_db` VALUES(1161,'Plankton',357142);
REPLACE INTO `mob_pouch_db` VALUES(1163,'Raydric',71428);
REPLACE INTO `mob_pouch_db` VALUES(1164,'Requiem',214285);
REPLACE INTO `mob_pouch_db` VALUES(1165,'Arenoso',214285);
REPLACE INTO `mob_pouch_db` VALUES(1166,'Selvagem',214285);
REPLACE INTO `mob_pouch_db` VALUES(1167,'Bebê Selvagem',357142);
REPLACE INTO `mob_pouch_db` VALUES(1169,'Esqueleto Operário',214285);
REPLACE INTO `mob_pouch_db` VALUES(1170,'Sohee',214285);
REPLACE INTO `mob_pouch_db` VALUES(1174,'Percevejo',357142);
REPLACE INTO `mob_pouch_db` VALUES(1175,'Tarou',357142);
REPLACE INTO `mob_pouch_db` VALUES(1176,'Vitata',214285);
REPLACE INTO `mob_pouch_db` VALUES(1177,'Zenorc',214285);
REPLACE INTO `mob_pouch_db` VALUES(1178,'Zerom',214285);
REPLACE INTO `mob_pouch_db` VALUES(1179,'Sussurro',71428);
REPLACE INTO `mob_pouch_db` VALUES(1180,'Nove Caudas',71428);
REPLACE INTO `mob_pouch_db` VALUES(1182,'Cogumelo',71428);
REPLACE INTO `mob_pouch_db` VALUES(1185,'Sussurro',71428);
REPLACE INTO `mob_pouch_db` VALUES(1186,'Cochicho',71428);
REPLACE INTO `mob_pouch_db` VALUES(1188,'Bongun',214285);
REPLACE INTO `mob_pouch_db` VALUES(1189,'Orc Arqueiro',71428);
REPLACE INTO `mob_pouch_db` VALUES(1191,'Mímico',71428);
REPLACE INTO `mob_pouch_db` VALUES(1192,'Alma Penada',71428);
REPLACE INTO `mob_pouch_db` VALUES(1193,'Alarme',71428);
REPLACE INTO `mob_pouch_db` VALUES(1194,'Arclouse',71428);
REPLACE INTO `mob_pouch_db` VALUES(1195,'Rideword',71428);
REPLACE INTO `mob_pouch_db` VALUES(1196,'Esqueleto Prisioneiro',71428);
REPLACE INTO `mob_pouch_db` VALUES(1197,'Zumbi Prisioneiro',71428);
REPLACE INTO `mob_pouch_db` VALUES(1199,'Punk',71428);
REPLACE INTO `mob_pouch_db` VALUES(1200,'Jirtas',71428);
REPLACE INTO `mob_pouch_db` VALUES(1201,'Rybio',71428);
REPLACE INTO `mob_pouch_db` VALUES(1202,'Fendark',71428);
REPLACE INTO `mob_pouch_db` VALUES(1203,'Mysteltainn',71428);
REPLACE INTO `mob_pouch_db` VALUES(1204,'Tirfing',71428);
REPLACE INTO `mob_pouch_db` VALUES(1205,'Executor',71428);
REPLACE INTO `mob_pouch_db` VALUES(1206,'Anolian',71428);
REPLACE INTO `mob_pouch_db` VALUES(1207,'Sting',71428);
REPLACE INTO `mob_pouch_db` VALUES(1208,'Andarilho',71428);
REPLACE INTO `mob_pouch_db` VALUES(1209,'Cãibra',71428);
REPLACE INTO `mob_pouch_db` VALUES(1211,'Escaravelho',71428);
REPLACE INTO `mob_pouch_db` VALUES(1212,'Mão de Ferro',71428);
REPLACE INTO `mob_pouch_db` VALUES(1213,'Grand Orc',71428);
REPLACE INTO `mob_pouch_db` VALUES(1214,'Choco',71428);
REPLACE INTO `mob_pouch_db` VALUES(1215,'Talo de Verme',214285);
REPLACE INTO `mob_pouch_db` VALUES(1216,'Penomena',71428);
REPLACE INTO `mob_pouch_db` VALUES(1219,'Cavaleiro do Abismo',71428);
REPLACE INTO `mob_pouch_db` VALUES(1242,'Marin',357142);
REPLACE INTO `mob_pouch_db` VALUES(1243,'Sasquatch',214285);
REPLACE INTO `mob_pouch_db` VALUES(1245,'Goblin Natalino',71428);
REPLACE INTO `mob_pouch_db` VALUES(1246,'Cookie Natalino',214285);
REPLACE INTO `mob_pouch_db` VALUES(1248,'Soldadinho de Chumbo',214285);
REPLACE INTO `mob_pouch_db` VALUES(1249,'Presente',214285);
REPLACE INTO `mob_pouch_db` VALUES(1250,'Chepet',71428);
REPLACE INTO `mob_pouch_db` VALUES(1253,'Gárgula',71428);
REPLACE INTO `mob_pouch_db` VALUES(1254,'Raggler',214285);
REPLACE INTO `mob_pouch_db` VALUES(1255,'Nereida',214285);
REPLACE INTO `mob_pouch_db` VALUES(1256,'Peste',214285);
REPLACE INTO `mob_pouch_db` VALUES(1257,'Injustiçado',71428);
REPLACE INTO `mob_pouch_db` VALUES(1258,'Goblin Arqueiro',214285);
REPLACE INTO `mob_pouch_db` VALUES(1259,'Grifo',71428);
REPLACE INTO `mob_pouch_db` VALUES(1260,'Moldura Maldita',71428);
REPLACE INTO `mob_pouch_db` VALUES(1261,'Rosa Selvagem',214285);
REPLACE INTO `mob_pouch_db` VALUES(1262,'Dragão Mutante',71428);
REPLACE INTO `mob_pouch_db` VALUES(1263,'Xamã do Vento',71428);
REPLACE INTO `mob_pouch_db` VALUES(1264,'Tritão',71428);
REPLACE INTO `mob_pouch_db` VALUES(1265,'Cookie',214285);
REPLACE INTO `mob_pouch_db` VALUES(1266,'Estrela do Mar',357142);
REPLACE INTO `mob_pouch_db` VALUES(1267,'Carat',71428);
REPLACE INTO `mob_pouch_db` VALUES(1268,'Cavaleiro Sanguinário',71428);
REPLACE INTO `mob_pouch_db` VALUES(1269,'Relógio',71428);
REPLACE INTO `mob_pouch_db` VALUES(1270,'Gerente',71428);
REPLACE INTO `mob_pouch_db` VALUES(1271,'Crocodilo',71428);
REPLACE INTO `mob_pouch_db` VALUES(1273,'Senhora Orc',214285);
REPLACE INTO `mob_pouch_db` VALUES(1274,'Megalith',71428);
REPLACE INTO `mob_pouch_db` VALUES(1275,'Alice',71428);
REPLACE INTO `mob_pouch_db` VALUES(1276,'Raydric Arqueiro',71428);
REPLACE INTO `mob_pouch_db` VALUES(1277,'Guardião da Floresta',214285);
REPLACE INTO `mob_pouch_db` VALUES(1278,'Golem Estalactítico',71428);
REPLACE INTO `mob_pouch_db` VALUES(1279,'Trilobita',214285);
REPLACE INTO `mob_pouch_db` VALUES(1280,'Goblin a Vapor',214285);
REPLACE INTO `mob_pouch_db` VALUES(1281,'Verme Sábio',71428);
REPLACE INTO `mob_pouch_db` VALUES(1282,'Cobold Arqueiro',214285);
REPLACE INTO `mob_pouch_db` VALUES(1283,'Quimera',71428);
REPLACE INTO `mob_pouch_db` VALUES(1289,'Maya Macho',71428);
REPLACE INTO `mob_pouch_db` VALUES(1290,'Esqueleto General',71428);
REPLACE INTO `mob_pouch_db` VALUES(1291,'Aparição',71428);
REPLACE INTO `mob_pouch_db` VALUES(1292,'Diabinho',71428);
REPLACE INTO `mob_pouch_db` VALUES(1293,'Creamy Ameaçador',71428);
REPLACE INTO `mob_pouch_db` VALUES(1294,'Mantis Assassino',71428);
REPLACE INTO `mob_pouch_db` VALUES(1295,'Barão Coruja',71428);
REPLACE INTO `mob_pouch_db` VALUES(1296,'Líder Cobold',71428);
REPLACE INTO `mob_pouch_db` VALUES(1297,'Múmia Anciã',71428);
REPLACE INTO `mob_pouch_db` VALUES(1298,'Zumbi Mestre',71428);
REPLACE INTO `mob_pouch_db` VALUES(1299,'Líder Goblin',71428);
REPLACE INTO `mob_pouch_db` VALUES(1300,'Lagarta',71428);
REPLACE INTO `mob_pouch_db` VALUES(1301,'Am Mut',71428);
REPLACE INTO `mob_pouch_db` VALUES(1302,'Ilusão das Trevas',71428);
REPLACE INTO `mob_pouch_db` VALUES(1303,'Zangão Gigante',71428);
REPLACE INTO `mob_pouch_db` VALUES(1304,'Aranha Gigante',71428);
REPLACE INTO `mob_pouch_db` VALUES(1305,'Verme Ancião',71428);
REPLACE INTO `mob_pouch_db` VALUES(1306,'Leib Olmai',71428);
REPLACE INTO `mob_pouch_db` VALUES(1307,'Gato de Nove Caudas',71428);
REPLACE INTO `mob_pouch_db` VALUES(1308,'Panzer Goblin',71428);
REPLACE INTO `mob_pouch_db` VALUES(1309,'Gajomart',71428);
REPLACE INTO `mob_pouch_db` VALUES(1310,'Majoruros',71428);
REPLACE INTO `mob_pouch_db` VALUES(1311,'Gullinbursti',71428);
REPLACE INTO `mob_pouch_db` VALUES(1313,'Yakuza',71428);
REPLACE INTO `mob_pouch_db` VALUES(1314,'Batedor',71428);
REPLACE INTO `mob_pouch_db` VALUES(1315,'Agressor',71428);
REPLACE INTO `mob_pouch_db` VALUES(1316,'Soldado',71428);
REPLACE INTO `mob_pouch_db` VALUES(1317,'Foca',71428);
REPLACE INTO `mob_pouch_db` VALUES(1318,'Aquecedor',71428);
REPLACE INTO `mob_pouch_db` VALUES(1319,'Congelador',71428);
REPLACE INTO `mob_pouch_db` VALUES(1320,'Duque Coruja',71428);
REPLACE INTO `mob_pouch_db` VALUES(1321,'Lavadeira',71428);
REPLACE INTO `mob_pouch_db` VALUES(1322,'Coelho',71428);
REPLACE INTO `mob_pouch_db` VALUES(1323,'Lontra',71428);
REPLACE INTO `mob_pouch_db` VALUES(1365,'Apocalipse',71428);
REPLACE INTO `mob_pouch_db` VALUES(1366,'Golem de Lava',71428);
REPLACE INTO `mob_pouch_db` VALUES(1367,'Labareda',71428);
REPLACE INTO `mob_pouch_db` VALUES(1368,'Planta Carnívora',71428);
REPLACE INTO `mob_pouch_db` VALUES(1369,'Grand Peco',71428);
REPLACE INTO `mob_pouch_db` VALUES(1370,'Succubus',71428);
REPLACE INTO `mob_pouch_db` VALUES(1371,'Anjo Fajuto',71428);
REPLACE INTO `mob_pouch_db` VALUES(1372,'Bode',71428);
REPLACE INTO `mob_pouch_db` VALUES(1374,'Incubus',71428);
REPLACE INTO `mob_pouch_db` VALUES(1375,'Papel',71428);
REPLACE INTO `mob_pouch_db` VALUES(1376,'Harpia',71428);
REPLACE INTO `mob_pouch_db` VALUES(1377,'Ancião',71428);
REPLACE INTO `mob_pouch_db` VALUES(1378,'Pungus',71428);
REPLACE INTO `mob_pouch_db` VALUES(1379,'Pesadelo Sombrio',71428);
REPLACE INTO `mob_pouch_db` VALUES(1380,'Furador',71428);
REPLACE INTO `mob_pouch_db` VALUES(1381,'Grizzly',71428);
REPLACE INTO `mob_pouch_db` VALUES(1382,'Diabolik',71428);
REPLACE INTO `mob_pouch_db` VALUES(1383,'Estrondo',71428);
REPLACE INTO `mob_pouch_db` VALUES(1384,'Exterminador',71428);
REPLACE INTO `mob_pouch_db` VALUES(1385,'Deletério',71428);
REPLACE INTO `mob_pouch_db` VALUES(1386,'Rochoso',71428);
REPLACE INTO `mob_pouch_db` VALUES(1387,'Ferrão',71428);
REPLACE INTO `mob_pouch_db` VALUES(1390,'Violi',71428);
REPLACE INTO `mob_pouch_db` VALUES(1391,'Pingu',71428);
REPLACE INTO `mob_pouch_db` VALUES(1392,'Giro-Goblin',214285);
REPLACE INTO `mob_pouch_db` VALUES(1400,'Karakasa',214285);
REPLACE INTO `mob_pouch_db` VALUES(1401,'Shinobi',71428);
REPLACE INTO `mob_pouch_db` VALUES(1402,'Sapo Venenoso',71428);
REPLACE INTO `mob_pouch_db` VALUES(1403,'Soldado Atirador',71428);
REPLACE INTO `mob_pouch_db` VALUES(1404,'Boneco de Miyabi',214285);
REPLACE INTO `mob_pouch_db` VALUES(1405,'Tengu',71428);
REPLACE INTO `mob_pouch_db` VALUES(1406,'Kapha',71428);
REPLACE INTO `mob_pouch_db` VALUES(1408,'Borboleta Sangrenta',71428);
REPLACE INTO `mob_pouch_db` VALUES(1409,'Pirralho',214285);
REPLACE INTO `mob_pouch_db` VALUES(1410,'Pessegueira Encantada',71428);
REPLACE INTO `mob_pouch_db` VALUES(1412,'Ermitão Maligno',71428);
REPLACE INTO `mob_pouch_db` VALUES(1413,'Ermitão Selvagem',71428);
REPLACE INTO `mob_pouch_db` VALUES(1415,'Filhote de Leopardo',214285);
REPLACE INTO `mob_pouch_db` VALUES(1416,'Ninfa Perversa',71428);
REPLACE INTO `mob_pouch_db` VALUES(1417,'Zipper',214285);
REPLACE INTO `mob_pouch_db` VALUES(1493,'Dríade',71428);
REPLACE INTO `mob_pouch_db` VALUES(1494,'Besouro-Rei',214285);
REPLACE INTO `mob_pouch_db` VALUES(1495,'Atirador de Pedras',71428);
REPLACE INTO `mob_pouch_db` VALUES(1497,'Golem de Madeira',71428);
REPLACE INTO `mob_pouch_db` VALUES(1498,'Atirador Wootan',214285);
REPLACE INTO `mob_pouch_db` VALUES(1499,'Guerreiro Wootan',71428);
REPLACE INTO `mob_pouch_db` VALUES(1500,'Parasita',214285);
REPLACE INTO `mob_pouch_db` VALUES(1503,'Árvore Maldita',71428);
REPLACE INTO `mob_pouch_db` VALUES(1504,'Dullahan',71428);
REPLACE INTO `mob_pouch_db` VALUES(1505,'Loli Ruri',71428);
REPLACE INTO `mob_pouch_db` VALUES(1506,'Mascarado',71428);
REPLACE INTO `mob_pouch_db` VALUES(1507,'Serial Killer',71428);
REPLACE INTO `mob_pouch_db` VALUES(1508,'Quve',214285);
REPLACE INTO `mob_pouch_db` VALUES(1509,'Lude',214285);
REPLACE INTO `mob_pouch_db` VALUES(1510,'Poltergeist',71428);
REPLACE INTO `mob_pouch_db` VALUES(1512,'Yao Jun',71428);
REPLACE INTO `mob_pouch_db` VALUES(1513,'Mao Guai',71428);
REPLACE INTO `mob_pouch_db` VALUES(1514,'Zhu Po Long',71428);
REPLACE INTO `mob_pouch_db` VALUES(1515,'Filhote de Hatii',71428);
REPLACE INTO `mob_pouch_db` VALUES(1516,'Mi Gao',71428);
REPLACE INTO `mob_pouch_db` VALUES(1517,'Jing Guai',71428);
REPLACE INTO `mob_pouch_db` VALUES(1519,'Chung E',71428);
REPLACE INTO `mob_pouch_db` VALUES(1520,'Bolinho de Massa',71428);
REPLACE INTO `mob_pouch_db` VALUES(1582,'Deviling',71428);
REPLACE INTO `mob_pouch_db` VALUES(1584,'Tamruan',71428);
REPLACE INTO `mob_pouch_db` VALUES(1586,'Gato de Folha',71428);
REPLACE INTO `mob_pouch_db` VALUES(1587,'Kraben',71428);
REPLACE INTO `mob_pouch_db` VALUES(1613,'Metaling',71428);
REPLACE INTO `mob_pouch_db` VALUES(1614,'Mineral',71428);
REPLACE INTO `mob_pouch_db` VALUES(1615,'Obsidiana',71428);
REPLACE INTO `mob_pouch_db` VALUES(1616,'Minérios',71428);
REPLACE INTO `mob_pouch_db` VALUES(1617,'Fornalha Velha',71428);
REPLACE INTO `mob_pouch_db` VALUES(1618,'Ungoliant',71428);
REPLACE INTO `mob_pouch_db` VALUES(1619,'Porcellio',71428);
REPLACE INTO `mob_pouch_db` VALUES(1620,'Nuvem Tóxica',71428);
REPLACE INTO `mob_pouch_db` VALUES(1621,'Nuvem Venenosa',71428);
REPLACE INTO `mob_pouch_db` VALUES(1622,'Ursinho',142857);

--
-- Estrutura da tabela `mob_race2_db`
--

CREATE TABLE IF NOT EXISTS `mob_race2_db` (
  `Race2ID` tinyint(4) NOT NULL,
  `MobID1` smallint(5) unsigned DEFAULT NULL,
  `MobID2` smallint(5) unsigned DEFAULT NULL,
  `MobID3` smallint(5) unsigned DEFAULT NULL,
  `MobID4` smallint(5) unsigned DEFAULT NULL,
  `MobID5` smallint(5) unsigned DEFAULT NULL,
  `MobID6` smallint(5) unsigned DEFAULT NULL,
  `MobID7` smallint(5) unsigned DEFAULT NULL,
  `MobID8` smallint(5) unsigned DEFAULT NULL,
  `MobID9` smallint(5) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `mob_skill_db`
--

CREATE TABLE IF NOT EXISTS `mob_skill_db` (
  `MOB_ID` smallint(6) NOT NULL,
  `INFO` text NOT NULL,
  `STATE` text NOT NULL,
  `SKILL_ID` smallint(6) NOT NULL,
  `SKILL_LV` tinyint(4) NOT NULL,
  `RATE` smallint(4) NOT NULL,
  `CASTTIME` mediumint(9) NOT NULL,
  `DELAY` int(9) NOT NULL,
  `CANCELABLE` text NOT NULL,
  `TARGET` text NOT NULL,
  `CONDITION` text NOT NULL,
  `CONDITION_VALUE` text,
  `VAL1` mediumint(9) DEFAULT NULL,
  `VAL2` mediumint(9) DEFAULT NULL,
  `VAL3` mediumint(9) DEFAULT NULL,
  `VAL4` mediumint(9) DEFAULT NULL,
  `VAL5` mediumint(9) DEFAULT NULL,
  `EMOTION` text,
  `CHAT` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `pet_db`
--

CREATE TABLE IF NOT EXISTS `pet_db` (
  `MobID` smallint(5) unsigned NOT NULL,
  `Name` varchar(30) NOT NULL,
  `JName` varchar(30) NOT NULL,
  `LureID` smallint(5) unsigned NOT NULL,
  `EggID` smallint(5) unsigned NOT NULL,
  `EquipID` smallint(5) unsigned NOT NULL,
  `FoodID` smallint(5) unsigned NOT NULL,
  `Fullness` smallint(5) unsigned NOT NULL,
  `HungryDelay` smallint(5) unsigned NOT NULL,
  `R_Hungry` smallint(5) unsigned NOT NULL,
  `R_Full` smallint(5) unsigned NOT NULL,
  `Intimate` smallint(5) unsigned NOT NULL,
  `Die` smallint(5) unsigned NOT NULL,
  `Capture` smallint(5) unsigned NOT NULL,
  `Speed` smallint(5) unsigned NOT NULL,
  `S_Performance` smallint(5) unsigned NOT NULL,
  `Talk_Convert_Class` smallint(5) unsigned NOT NULL,
  `Attack_Rate` smallint(5) unsigned NOT NULL,
  `Defence_Attack_Rate` smallint(5) unsigned NOT NULL,
  `Change_Target_Rate` smallint(5) unsigned NOT NULL,
  `Pet_Script` text NOT NULL,
  `Loyal_Script` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pet_db`
--

REPLACE INTO `pet_db` VALUES(1002,'PORING','Poring',619,9001,10013,531,80,60,50,100,250,20,2000,150,1,0,350,400,800,'{  petloot 10; }','{ bonus bLuk,2; bonus bCritical,1; }\n');
REPLACE INTO `pet_db` VALUES(1113,'DROPS','Drops',620,9002,10013,508,80,60,40,100,250,20,1500,150,1,0,300,400,500,'{  petloot 10; }','{ bonus bHit,3; bonus bAtk,3; }\n');
REPLACE INTO `pet_db` VALUES(1031,'POPORING','Poporing',621,9003,10013,511,80,60,30,100,250,20,1000,150,1,0,300,500,400,'{  petloot 15; }','{ bonus bLuk,2; bonus2 bSubEle,Ele_Poison,10; }\n');
REPLACE INTO `pet_db` VALUES(1063,'LUNATIC','Lunático',622,9004,10007,534,80,60,40,100,250,20,1500,150,0,0,300,300,1000,'{  petskillbonus bLuk,3,10,50; }','{ bonus bCritical,2; bonus bAtk,2; }\n');
REPLACE INTO `pet_db` VALUES(1049,'PICKY','Picky',623,9005,10012,507,80,60,40,100,250,20,2000,150,1,0,500,600,50,'{  petskillbonus bStr,3,10,50;}','{ bonus bStr,1; bonus bAtk,5; }\n');
REPLACE INTO `pet_db` VALUES(1011,'CHONCHON','ChonChon',624,9006,10002,537,80,60,30,100,250,20,1500,150,1,0,500,500,250,'{  petskillbonus bAgi,4,10,50; }','{ bonus bAgi,1; bonus bFlee,2; }\n');
REPLACE INTO `pet_db` VALUES(1042,'STEEL_CHONCHON','ChonChon de Aço',625,9007,10002,1002,80,60,20,100,250,20,1000,150,1,0,500,500,200,'{  petskillbonus bAgiVit,4,20,40; }','{ bonus bFlee,6; bonus bAgi,-1; }\n');
REPLACE INTO `pet_db` VALUES(1035,'HUNTER_FLY','Mosca Caçadora',626,9008,10002,716,80,60,10,100,250,20,500,150,1,0,500,500,200,'{  petskillattack "NPC_WINDATTACK",888,2,0,10; }','{ bonus bFlee,-5; bonus bFlee2,2; }\n');
REPLACE INTO `pet_db` VALUES(1167,'SAVAGE_BABE','Bebê Selvagem',627,9009,10015,537,80,60,40,100,250,20,1500,150,0,0,500,500,200,'{  petskillbonus bVit,4,10,50; }','{ bonus bVit,1; bonus bMaxHP,50; }\n');
REPLACE INTO `pet_db` VALUES(1107,'DESERT_WOLF_B','Filhote de Lobo do Deserto',628,9010,10003,537,80,60,40,100,250,20,1000,150,0,0,400,400,400,'{  petskillattack "SM_PROVOKE",1,0,0,5;}','{ bonus bInt,1; bonus bMaxSP,50; }\n');
REPLACE INTO `pet_db` VALUES(1052,'ROCKER','Rocker',629,9011,10014,537,80,60,30,100,250,20,1500,150,0,0,350,350,600,'{  petskillbonus bAllStats,1,10,50; }','{ bonus bHPrecovRate,5; bonus bMaxHP,25; }\n');
REPLACE INTO `pet_db` VALUES(1014,'SPORE','Esporo',630,9012,10017,537,80,60,30,100,250,20,1500,150,0,0,350,500,500,'{  petrecovery SC_POISON,60; }','{ bonus bHit,5; bonus bAtk,-2; }\n');
REPLACE INTO `pet_db` VALUES(1077,'POISON_SPORE','Esporo Venenoso',631,9013,10017,537,80,60,20,100,250,20,1000,150,0,0,600,200,400,'{  petskillattack "NPC_POISON",20,0,0,10; }','{ bonus bStr,1; bonus bInt,1; }\n');
REPLACE INTO `pet_db` VALUES(1019,'PECOPECO','PecoPeco',632,9014,10010,537,80,60,30,100,250,20,1000,150,1,0,400,500,800,'{  petskillbonus bSpeedRate,25,20,20; }','{ bonus bMaxHP,150; bonus bMaxSP,-10; }\n');
REPLACE INTO `pet_db` VALUES(1056,'SMOKIE','Fumacento',633,9015,10019,537,80,60,30,100,250,20,1000,150,1,0,600,600,100,'{  petskillbonus bPerfectHide,1,3600,0; }','{ bonus bAgi,1; bonus bFlee2,1; }\n');
REPLACE INTO `pet_db` VALUES(1057,'YOYO','Yoyo',634,9016,10018,532,80,60,20,100,250,20,1000,150,1,0,300,800,400,'{  petloot 20; }','{ bonus bCritical,3; bonus bLuk,-1; }\n');
REPLACE INTO `pet_db` VALUES(1023,'ORK_WARRIOR','Guerreiro Orc',635,9017,10009,537,80,60,20,100,250,20,500,150,1,0,600,200,300,'{  petskillattack "NPC_PIERCINGATT",100,1,0,10; }','{ bonus bAtk,10; bonus bDef,-3; }\n');
REPLACE INTO `pet_db` VALUES(1026,'MUNAK','Munak',636,9018,10008,537,80,60,20,100,250,20,500,150,0,0,300,750,300,'{  petskillattack "NPC_DARKNESSATTACK",444,1,0,10; }','{ bonus bInt,1; bonus bDef,1; }\n');
REPLACE INTO `pet_db` VALUES(1110,'DOKEBI','Dokebi',637,9019,10005,537,80,60,20,100,250,20,500,150,0,0,300,300,800,'{  petskillattack "BS_HAMMERFALL",1,0,0,10; }','{ bonus bMatkRate,1; bonus bAtkRate,-1; }\n');
REPLACE INTO `pet_db` VALUES(1170,'SOHEE','Sohee',638,9020,10016,537,80,60,10,100,250,20,500,150,0,0,100,1000,200,'{  petskillsupport AL_HEAL,10,60,33,100; }','{ bonus bStr,1; bonus bDex,1; }\n');
REPLACE INTO `pet_db` VALUES(1029,'ISIS','Isis',639,9021,10006,537,80,60,10,100,250,20,500,150,0,0,650,450,150,'{  petskillsupport "PR_MAGNIFICAT",2,60,50,50; }','{ bonus bMatkRate,-1; bonus bAtkRate,1; }\n');
REPLACE INTO `pet_db` VALUES(1155,'PETIT','Petite',640,9022,10011,537,80,60,20,100,250,20,500,150,0,0,800,400,100,'{  petskillattack "WZ_HEAVENDRIVE",500,1,0,10; }','{ bonus bDef,-2; bonus bMdef,-2; bonus bAspdRate,1; }\n');
REPLACE INTO `pet_db` VALUES(1109,'DEVIRUCHI','Deviruchi',641,9023,10004,711,80,60,10,100,250,20,500,150,0,0,800,200,100,'{  petskillbonus bAgiDexStr,6,20,40; }','{ bonus bMatkRate,1; bonus bAtkRate,1; bonus bMaxHPrate,-3; bonus bMaxSPrate,-3; }\n');
REPLACE INTO `pet_db` VALUES(1101,'BAPHOMET_','Bafomé Jr.',642,9024,10001,518,80,60,10,100,250,20,200,150,0,0,1000,100,200,'{  petskillattack "NPC_DARKNESSATTACK",1776,4,0,5; }','{ bonus bDef,1; bonus bMdef,1; bonus2 bResEff,Eff_Stun,-100; }\n');
REPLACE INTO `pet_db` VALUES(1188,'BON_GUN','Bongun',659,9025,10020,537,80,60,30,100,250,20,500,150,1,0,600,200,400,'{  petskillattack "NPC_DARKNESSATTACK",555,1,1,1; }','{ bonus bVit,1; bonus2 bResEff,Eff_Stun,100; }\n');
REPLACE INTO `pet_db` VALUES(1200,'ZHERLTHSH','Jirtas',660,9026,0,929,80,60,10,100,250,20,300,150,0,0,1000,100,500,'{  petskillattack "AS_SONICBLOW",1,0,0,3; }','{ bonus2 bAddRace,RC_DemiHuman,2; bonus2 bMagicAddRace,RC_DemiHuman,2; }\n');
REPLACE INTO `pet_db` VALUES(1275,'ALICE','Alice',661,9027,0,504,80,60,20,100,250,20,800,150,0,0,100,1000,200,'{  petskillsupport "AL_HEAL",5,60,25,100; }','{ bonus bMdef,1; bonus2 bAddRaceTolerance,RC_DemiHuman,1; }\n');
REPLACE INTO `pet_db` VALUES(1815,'EVENT_RICECAKE','Bolinho de Arroz',0,9028,0,511,80,60,50,100,250,20,2000,150,1,0,500,500,200,'{  petskillsupport "CR_DEFENDER",3,240,50,100; }','{ bonus2 bSubEle,Ele_Neutral,1; bonus bMaxHPrate,-1; }\n');
REPLACE INTO `pet_db` VALUES(1245,'GOBLINE_XMAS','Goblin Natalino',12225,9029,0,911,80,60,50,100,250,20,2000,150,0,0,300,300,800,'{  petskillattack "MG_SIGHT",5,0,5,5; }','{ bonus bMaxHP,30; bonus2 bSubEle,Ele_Water,1; }\n');
REPLACE INTO `pet_db` VALUES(1519,'CHUNG_E','Chung E',12395,9030,0,6115,80,60,50,100,250,20,2000,150,0,0,300,300,800,'{  petskillattack "CR_SHIELDCHARGE",5,0,5,5; }','{ bonus bDef,1; bonus2 bAddRaceTolerance,RC_DemiHuman,1; }\n');
REPLACE INTO `pet_db` VALUES(1879,'ECLIPSE_P','Coelho',0,9031,0,7766,80,60,50,100,250,20,2000,150,0,0,300,300,800,'{  petskillattack "TF_THROWSTONE",1,0,5,5; }','{}\n');
REPLACE INTO `pet_db` VALUES(1122,'GOBLIN_1','Goblin',14569,9032,0,7821,80,60,50,100,250,20,800,150,0,0,300,300,800,'{  petskillattack "NPC_WINDATTACK",5,0,5,5; }','{}\n');
REPLACE INTO `pet_db` VALUES(1123,'GOBLIN_2','Goblin',14570,9033,0,7821,80,60,50,100,250,20,800,150,0,0,300,300,800,'{  petskillattack "NPC_FIREATTACK",5,0,5,5; }','{}\n');
REPLACE INTO `pet_db` VALUES(1125,'GOBLIN_4','Goblin',14571,9034,0,7821,80,60,50,100,250,20,800,150,0,0,300,300,800,'{  petskillattack "NPC_GROUNDATTACK",5,0,5,5; }','{}\n');
REPLACE INTO `pet_db` VALUES(1385,'DELETER_','Deletério',14572,9035,0,7822,80,60,20,100,250,20,800,150,0,0,300,300,800,'{  petskillattack "SM_MAGNUM",5,0,5,5; }','{}\n');
REPLACE INTO `pet_db` VALUES(1382,'DIABOLIC','Diabolik',14573,9036,0,7823,80,60,10,100,250,20,800,150,0,0,300,300,800,'{  petskillattack "WZ_METEOR",2,0,5,5; }','{}\n');
REPLACE INTO `pet_db` VALUES(1208,'WANDER_MAN','Andarilho',14574,9037,0,7824,80,60,20,100,250,20,800,150,0,0,300,300,800,'{  petskillattack "NPC_UNDEADATTACK",5,0,5,5; }','{}\n');
REPLACE INTO `pet_db` VALUES(1963,'P_CHUNG_E','Boneca do Ano Novo',0,9038,0,554,80,60,30,100,250,20,800,150,0,0,300,300,800,'{  petskillattack "CR_SHIELDCHARGE",5,0,5,5; }','{}\n');
REPLACE INTO `pet_db` VALUES(1040,'GOLEM','Golem',12371,9053,10035,6111,80,60,20,100,250,20,500,150,0,0,300,300,800,'{ }','{ bonus bMaxHP,100; bonus bFlee,-5; }\n');
REPLACE INTO `pet_db` VALUES(1143,'MARIONETTE','Marionete',12361,9043,10025,6098,80,60,10,100,250,20,500,150,0,0,300,300,800,'{ }','{ bonus bSPrecovRate,3; }\n');
REPLACE INTO `pet_db` VALUES(1148,'MEDUSA','Medusa',12368,9050,10032,6108,80,60,10,100,250,20,200,150,0,0,300,300,800,'{ }','{ bonus bVit,1; bonus2 bResEff,Eff_Stone,500; }\n');
REPLACE INTO `pet_db` VALUES(1179,'WHISPER','Sussurro',12363,9045,10027,6100,80,60,20,100,250,20,500,150,0,0,300,300,800,'{ }','{ bonus bFlee,7; bonus bDef,-3; }\n');
REPLACE INTO `pet_db` VALUES(1299,'GOBLIN_LEADER','Líder Goblin',12364,9046,10028,6104,80,60,10,100,250,20,50,150,0,0,300,300,800,'{ }','{ bonus2 bAddRace,RC_DemiHuman,3; }\n');
REPLACE INTO `pet_db` VALUES(1370,'SUCCUBUS','Succubus',12373,9055,10037,6113,80,60,10,100,250,20,200,150,0,0,300,300,800,'{ }','{ bonus2 bHPDrainRate,50,5; }\n');
REPLACE INTO `pet_db` VALUES(1374,'INCUBUS','Incubus',12370,9052,10034,6110,80,60,10,100,250,20,50,150,0,0,300,300,800,'{ }','{ bonus bMaxSPrate,3; }\n');
REPLACE INTO `pet_db` VALUES(1379,'NIGHTMARE_TERROR','Pesadelo Sombrio',12372,9054,10036,6112,80,60,10,100,250,20,200,150,0,0,300,300,800,'{ }','{ bonus2 bResEff,Eff_Sleep,10000; }\n');
REPLACE INTO `pet_db` VALUES(1401,'SHINOBI','Shinobi',12362,9044,10026,6099,80,60,20,100,250,20,500,150,0,0,300,300,800,'{ }','{ bonus bAgi,2; }\n');
REPLACE INTO `pet_db` VALUES(1404,'MIYABI_NINGYO','Boneco de Miyabi',12366,9048,10030,6106,80,60,15,100,250,20,200,150,0,0,300,300,800,'{ }','{ bonus bInt,1; bonus bCastrate,-3; }\n');
REPLACE INTO `pet_db` VALUES(1416,'WICKED_NYMPH','Ninfa Perversa',12365,9047,10029,6105,80,60,15,100,250,20,500,150,0,0,300,300,800,'{ }','{ bonus bMaxSP,30; bonus bSPrecovRate,5; }\n');
REPLACE INTO `pet_db` VALUES(1495,'STONE_SHOOTER','Atirador de Pedras',12369,9051,10033,6109,80,60,20,100,250,20,500,150,0,0,300,300,800,'{ }','{ bonus2 bSubEle,Ele_Fire,3; }\n');
REPLACE INTO `pet_db` VALUES(1504,'DULLAHAN','Dullahan',12367,9049,10031,6107,80,60,10,100,250,20,200,150,0,0,300,300,800,'{ }','{ bonus bCritAtkRate,5; }\n');
REPLACE INTO `pet_db` VALUES(1505,'LOLI_RURI','Loli Ruri',12360,9042,10024,6097,80,60,15,100,250,20,200,150,0,0,300,300,800,'{ }','{ bonus bMaxHPrate,3; bonus3 bAutoSpellWhenHit,"AL_HEAL",1,50; }\n');
REPLACE INTO `pet_db` VALUES(1513,'CIVIL_SERVANT','Mao Guai',12358,9040,10022,6095,80,60,10,100,250,20,500,150,0,0,300,300,800,'{ }','{ bonus bMaxSP,10; }\n');
REPLACE INTO `pet_db` VALUES(1586,'LEAF_CAT','Gato de Folha',12359,9041,10023,6096,80,60,20,100,250,20,200,150,0,0,300,300,800,'{ }','{ bonus2 bAddRaceTolerance,RC_Brute,2; }\n');
REPLACE INTO `pet_db` VALUES(1630,'BACSOJIN_','Lady Branca',12357,9039,10021,6094,80,60,10,100,250,20,2000,150,0,0,300,300,800,'{ }','{}\n');
REPLACE INTO `pet_db` VALUES(1837,'IMP','Imp',12374,9056,10038,6114,80,60,10,100,250,20,200,150,0,0,300,300,800,'{ }','{ bonus2 bSubEle,Ele_Fire,2; bonus2 bAddEle,Ele_Fire,2; }\n');
REPLACE INTO `pet_db` VALUES(2057,'E_CRAMP','Cãibra',12408,6221,0,0,0,0,0,0,0,0,50,0,0,0,350,400,800,'{ }','{} \n');
REPLACE INTO `pet_db` VALUES(2081,'E_HYDRA','Hydra',12408,6221,0,0,0,0,0,0,0,0,50,0,0,0,350,400,800,'{ }','{} \n');

--
-- Estrutura da tabela `produce_db`
--

CREATE TABLE IF NOT EXISTS `produce_db` (
  `ProduceItemID` smallint(5) unsigned NOT NULL,
  `ItemLV` smallint(5) unsigned NOT NULL,
  `RequireSkill` smallint(5) unsigned NOT NULL,
  `RequireSkillLv` tinyint(4) NOT NULL,
  `MaterialID1` smallint(5) unsigned DEFAULT NULL,
  `MaterialAmount1` tinyint(4) DEFAULT NULL,
  `MaterialID2` smallint(5) unsigned DEFAULT NULL,
  `MaterialAmount2` tinyint(4) DEFAULT NULL,
  `MaterialID3` smallint(5) unsigned DEFAULT NULL,
  `MaterialAmount3` tinyint(4) DEFAULT NULL,
  `MaterialID4` smallint(5) unsigned DEFAULT NULL,
  `MaterialAmount4` tinyint(4) DEFAULT NULL,
  `MaterialID5` smallint(5) unsigned DEFAULT NULL,
  `MaterialAmount5` tinyint(4) DEFAULT NULL,
  `MaterialID6` smallint(5) unsigned DEFAULT NULL,
  `MaterialAmount6` tinyint(4) DEFAULT NULL,
  `MaterialID7` smallint(5) unsigned DEFAULT NULL,
  `MaterialAmount7` tinyint(4) DEFAULT NULL,
  `MaterialID8` smallint(5) unsigned DEFAULT NULL,
  `MaterialAmount8` tinyint(4) DEFAULT NULL,
  `MaterialID9` smallint(5) unsigned DEFAULT NULL,
  `MaterialAmount9` tinyint(4) DEFAULT NULL,
  `MaterialID10` smallint(5) unsigned DEFAULT NULL,
  `MaterialAmount10` tinyint(4) DEFAULT NULL,
  `MaterialID11` smallint(5) unsigned DEFAULT NULL,
  `MaterialAmount11` tinyint(4) DEFAULT NULL,
  `MaterialID12` smallint(5) unsigned DEFAULT NULL,
  `MaterialAmount12` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `produce_db` VALUES(1101,1,99,1,998,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1104,1,99,1,998,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1107,1,99,1,998,45,913,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1110,2,99,2,999,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1113,2,99,2,999,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1122,2,99,2,999,40,920,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1126,3,99,3,999,5,984,8,727,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1123,3,99,3,984,8,999,10,728,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1119,3,99,3,984,8,999,15,718,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1129,3,99,3,984,16,724,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1201,1,98,1,998,1,909,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1204,1,98,1,998,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1207,1,98,1,998,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1210,2,98,2,999,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1213,2,98,2,999,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1216,2,98,2,999,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1219,3,98,3,984,4,999,40,726,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1222,3,98,3,984,4,999,60,729,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1116,1,100,1,998,35,958,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1151,2,100,2,999,25,957,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1154,2,100,2,999,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1157,3,100,3,984,12,999,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1160,3,100,3,984,12,999,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1163,3,100,3,984,16,999,20,733,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1301,1,101,1,998,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1351,1,101,1,998,110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1354,2,101,2,999,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1357,3,101,3,984,4,999,20,922,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1360,3,101,3,984,8,999,10,719,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1501,1,102,1,998,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1504,1,102,1,998,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1507,2,102,2,999,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1510,2,102,2,999,33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1519,2,102,2,999,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1513,3,102,3,999,85,730,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1516,3,102,3,999,100,963,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1522,3,102,3,999,120,968,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1801,1,103,1,998,127,722,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1803,2,103,2,999,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1805,2,103,2,999,65,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1807,3,103,3,984,4,723,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1809,3,103,3,984,8,728,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1811,3,103,3,984,4,727,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1401,1,104,1,998,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1404,1,104,1,998,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1407,1,104,1,998,70,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1451,2,104,2,999,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1454,2,104,2,999,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1457,2,104,2,999,55,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1460,3,104,3,984,8,999,10,720,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1463,3,104,3,984,12,999,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1410,3,104,3,984,12,723,3,923,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12041,11,0,0,7472,0,940,5,7031,1,7457,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12046,11,0,0,7472,0,514,3,501,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12051,11,0,0,7472,0,960,10,511,10,503,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12056,11,0,0,7472,0,577,1,908,10,1024,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12061,11,0,0,7472,0,518,1,514,2,501,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12066,11,0,0,7472,0,942,5,7031,1,7457,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12042,12,0,0,7473,0,918,20,511,10,508,10,7454,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12052,12,0,0,7473,0,966,10,956,5,951,5,579,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12047,12,0,0,7473,0,510,5,507,10,508,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12057,12,0,0,7473,0,577,1,7454,1,1062,5,515,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12062,12,0,0,7473,0,7182,10,539,1,519,1,736,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12067,12,0,0,7473,0,531,3,534,2,533,1,620,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12063,13,0,0,7474,0,512,5,513,5,582,5,578,5,7452,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12048,13,0,0,7474,0,518,2,509,10,7452,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12043,13,0,0,7474,0,517,4,7031,1,511,10,7286,5,7455,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12053,13,0,0,7474,0,966,20,961,10,518,1,7453,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12058,13,0,0,7474,0,962,10,548,10,549,5,7453,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12068,13,0,0,7474,0,516,10,549,10,633,1,7453,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12049,14,0,0,7475,0,578,10,568,4,582,10,970,2,514,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12054,14,0,0,7475,0,962,30,509,10,7194,10,7031,1,1024,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12044,14,0,0,7475,0,517,5,507,3,508,2,511,3,7453,1,568,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12064,14,0,0,7475,0,580,5,519,15,548,10,508,10,517,1,7453,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12059,14,0,0,7475,0,577,3,7455,1,7066,10,515,10,1062,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12069,14,0,0,7475,0,1054,10,945,10,509,10,579,5,7453,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12050,15,0,0,7476,0,522,4,505,1,970,2,568,2,7452,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12045,15,0,0,7476,0,516,10,518,2,7457,1,515,3,577,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12065,15,0,0,7476,0,520,2,521,3,7100,10,7198,6,7453,1,7452,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12060,15,0,0,7476,0,7006,20,1062,20,7482,1,520,10,507,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12055,15,0,0,7476,0,553,20,508,10,7455,1,7456,1,511,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12070,15,0,0,7476,0,904,20,1042,10,7198,10,7031,2,7457,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12071,16,0,0,7477,0,517,10,518,2,508,1,522,1,954,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12076,16,0,0,7477,0,581,3,533,3,921,20,970,1,7456,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12091,16,0,0,7477,0,7164,20,539,10,548,10,519,10,620,5,7453,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12086,16,0,0,7477,0,7286,20,567,20,7453,1,568,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12081,16,0,0,7477,0,7188,20,1033,10,921,20,581,1,518,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12096,16,0,0,7477,0,903,5,1015,5,705,10,1061,10,704,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12072,17,0,0,7478,0,517,10,7098,1,1003,2,7455,1,1019,15,509,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12077,17,0,0,7478,0,526,4,518,2,509,5,520,10,7452,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12092,17,0,0,7478,0,580,10,522,5,7453,1,708,5,609,5,619,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12087,17,0,0,7478,0,7003,10,1062,10,515,10,521,10,508,10,7452,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12082,17,0,0,7478,0,1023,10,521,5,1028,10,579,2,537,10,7453,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12097,17,0,0,7478,0,936,10,956,5,7194,10,517,5,581,10,966,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12073,18,0,0,7479,0,948,20,515,10,1062,10,521,2,520,1,7454,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12078,18,0,0,7479,0,576,4,520,10,610,3,521,10,526,6,7452,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12093,18,0,0,7479,0,580,10,526,2,517,5,578,10,7455,1,548,10,7453,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12088,18,0,0,7479,0,606,1,7455,1,517,10,520,10,1062,10,515,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12083,18,0,0,7479,0,7298,20,517,20,622,5,1062,10,7454,1,577,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12098,18,0,0,7479,0,578,10,577,5,7298,10,7452,1,7456,2,7454,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12074,19,0,0,7480,0,1050,40,7482,1,548,10,7455,1,1003,2,511,30,1024,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12079,19,0,0,7480,0,610,10,582,10,970,5,526,4,505,2,7452,1,521,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12094,19,0,0,7480,0,619,5,582,10,578,10,7456,1,634,1,533,5,970,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12089,19,0,0,7480,0,517,10,526,5,711,20,7454,4,508,5,509,10,507,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12084,19,0,0,7480,0,7123,10,1037,20,610,3,526,6,7455,1,7456,1,632,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12099,19,0,0,7480,0,702,1,605,2,606,2,970,2,526,6,7456,1,531,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12075,20,0,0,7481,0,1015,20,7482,1,970,1,606,2,7455,1,526,5,610,10,505,2,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12080,20,0,0,7481,0,1033,10,707,1,521,5,526,5,568,5,576,5,607,1,510,10,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12095,20,0,0,7481,0,607,1,7066,10,7119,10,526,4,645,3,970,5,576,2,710,1,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12090,20,0,0,7481,0,904,20,7125,20,606,2,610,3,621,3,526,10,7455,1,7482,1,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12085,20,0,0,7481,0,929,20,934,10,608,1,605,2,950,10,7455,2,609,10,621,2,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12100,20,0,0,7481,0,1022,10,706,2,1033,10,7100,10,610,4,7454,1,7452,1,709,2,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(998,21,94,1,1002,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(999,21,95,1,998,5,1003,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1000,21,96,1,1001,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(994,21,96,1,990,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(995,21,96,1,991,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(997,21,96,1,993,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(996,21,96,1,992,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(501,22,228,1,7144,0,507,1,1093,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(503,22,228,1,7144,0,508,1,1093,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(504,22,228,1,7144,0,509,1,1093,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(505,22,228,1,7144,0,510,1,911,1,1093,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(545,22,228,1,7133,0,501,1,1092,1,952,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(546,22,228,1,7133,0,503,1,1092,1,1017,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(547,22,228,1,7133,0,504,1,1092,1,1061,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(523,22,31,1,713,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(678,22,407,1,937,1,952,1,939,1,7033,1,972,1,657,1,713,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(7135,22,228,1,7128,0,970,1,1059,1,713,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(7136,22,228,1,7129,0,713,1,929,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(7137,22,228,1,7130,0,713,1,1032,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(7138,22,228,1,7131,0,713,1,1050,1,1051,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(7139,22,228,1,7132,0,970,1,950,1,1044,1,713,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12118,22,228,1,7434,0,1012,2,716,1,1093,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12119,22,228,1,7434,0,950,3,717,1,1093,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12120,22,228,1,7434,0,7126,2,715,1,1093,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12121,22,228,1,7434,0,1057,3,717,1,1093,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(605,22,228,1,7144,0,708,1,970,1,713,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(606,22,228,1,7144,0,704,1,518,1,713,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(970,22,228,1,7127,0,713,1,7033,5,905,5,1092,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(7142,22,228,1,7144,0,7140,1,7141,1,7143,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12114,23,1007,1,7433,1,904,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12115,23,1007,1,7433,1,946,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12116,23,1007,1,7433,1,947,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12117,23,1007,1,7433,1,1013,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12333,24,2039,1,717,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12725,24,2010,8,7069,1,7099,1,7938,1,7939,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12726,24,2010,7,716,1,7938,1,7939,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12727,24,2010,9,7210,1,7939,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12728,24,2010,2,7097,1,7939,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12729,24,2010,5,7002,1,7938,1,7939,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12730,24,2010,6,518,1,1048,1,7939,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12731,24,2010,1,1034,1,7030,1,7939,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12732,24,2010,3,1035,1,7221,1,7938,1,7939,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12733,24,2010,4,1096,1,7123,1,7939,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(22540,24,2010,10,969,3,7938,3,7939,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(6128,25,2024,5,509,1,510,1,511,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12717,25,2024,1,7134,1,7155,20,7931,1,7937,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12718,25,2024,4,7134,1,7931,1,7932,1,7936,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12719,25,2024,9,709,1,950,10,7134,1,7931,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12720,25,2024,3,957,25,7134,1,7931,1,7935,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12721,25,2024,8,7134,1,7565,10,7931,1,7932,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12722,25,2024,2,7003,20,7134,1,7931,1,7933,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12723,25,2024,7,7033,10,7134,1,7931,1,7934,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12724,25,2024,6,709,1,7134,1,7565,10,7931,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1045,26,2494,1,940,45,942,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1020,26,2494,1,738,40,1029,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1010,26,2494,1,908,45,746,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1041,26,2494,1,943,10,1032,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1026,26,2494,1,952,30,946,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1008,26,2494,1,754,25,1057,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(958,26,2494,1,905,45,1036,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(971,26,2494,1,915,40,966,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1051,26,2494,1,941,45,916,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1046,26,2494,1,955,40,753,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1038,26,2494,1,953,5,907,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1033,26,2494,1,917,25,1044,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(961,26,2494,1,956,5,929,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(959,26,2494,1,935,20,1015,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1040,26,2494,1,939,35,1039,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1012,26,2494,1,926,20,972,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1011,26,2494,1,950,5,752,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1024,26,2494,1,948,20,737,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1025,26,2494,1,951,50,1048,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1064,26,2494,1,742,30,740,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1019,26,2494,1,930,10,1052,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(962,26,2494,1,957,40,1028,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(974,26,2494,1,937,15,924,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1013,26,2494,1,947,50,912,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1058,26,2494,1,749,20,903,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(960,26,2494,1,938,25,1055,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(967,26,2494,1,914,5,741,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1043,26,2494,1,945,50,910,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1035,26,2494,1,751,50,918,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1049,26,2494,1,936,30,1047,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1037,26,2494,1,913,25,1063,35,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1021,26,2494,1,954,15,1054,25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1056,26,2494,1,747,35,1031,50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(963,26,2494,1,944,10,965,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1042,26,2494,1,920,20,911,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1061,26,2494,1,928,10,735,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1022,26,2494,1,919,10,739,15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1034,26,2494,1,909,45,745,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1014,26,2494,1,743,20,748,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(968,26,2494,1,902,5,1018,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1009,26,2494,1,904,10,1062,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(970,26,2494,1,931,50,932,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(964,26,2494,1,750,50,1023,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1050,26,2494,1,922,25,949,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1030,26,2494,1,906,5,736,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(703,26,2494,1,744,45,1017,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(973,26,2494,1,923,15,934,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1053,26,2494,1,925,35,1059,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1016,26,2494,1,921,35,1060,40,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1003,26,2494,1,2101,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(999,26,2494,1,1119,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(2267,26,2494,1,1304,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1615,26,2494,1,7752,100,7753,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(2267,26,2494,1,1304,1,931,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1061,26,2494,1,1057,100,911,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(7063,26,2494,1,949,30,916,30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(992,26,2494,1,7066,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(991,26,2494,1,920,100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(7166,26,2494,1,1059,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(1059,26,2494,1,7166,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13269,26,2494,1,1093,10,12417,10,7200,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13270,26,2494,1,1093,10,12418,10,7200,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13271,26,2494,1,1093,10,12419,10,7200,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13272,26,2494,1,1093,10,12475,10,7200,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13273,26,2494,1,1093,10,12420,10,7200,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13274,26,2494,1,1093,10,12421,10,7200,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13275,26,2494,1,6297,10,12422,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13276,26,2494,1,6297,10,12423,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13277,26,2494,1,6297,10,12424,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13278,26,2494,1,6297,10,12425,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13279,26,2494,1,6297,10,12426,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13280,26,2494,1,6297,10,12427,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13281,26,2494,1,6297,10,12428,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13282,26,2494,1,6297,10,12436,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13283,26,2494,1,6297,10,12437,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12429,27,2495,1,11022,0,6248,1,6249,1,6250,1,6251,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12430,27,2495,1,11022,0,6248,1,6252,3,6253,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12431,27,2495,1,11022,0,6248,1,6254,2,6255,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12432,27,2495,1,11022,0,6248,1,6256,3,6257,2,6258,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12433,27,2495,1,11022,0,507,3,509,3,510,3,6248,1,6255,1,6259,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12434,27,2495,1,11022,0,6248,1,6260,2,6261,1,6262,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13260,28,2496,1,6279,0,512,1,911,1,1051,1,6244,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13261,28,2496,1,6281,0,1051,1,6263,1,6244,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13262,28,2496,1,6282,0,938,1,1051,1,6244,2,6264,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13263,28,2496,1,6280,0,952,1,1051,1,6244,3,6265,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(13264,28,2496,1,6283,0,513,1,1051,1,6244,4,7001,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(6210,29,2497,1,6284,0,576,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(6211,29,2497,1,6284,0,1033,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(6212,29,2497,1,6284,0,921,10,6244,2,7033,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12422,29,2497,1,11023,0,509,10,528,5,713,10,7455,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12423,29,2497,1,11023,0,508,10,509,10,713,10,7455,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12424,29,2497,1,11023,0,509,15,522,3,523,1,713,10,7455,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12425,29,2497,1,11024,0,514,10,568,10,713,10,7453,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12426,29,2497,1,11024,0,510,10,518,10,713,10,7453,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12427,29,2497,1,11024,0,510,15,526,10,713,10,7453,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12428,29,2497,1,6285,0,504,20,509,10,970,1,1092,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12436,29,2497,1,6285,0,510,10,514,10,518,10,1092,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12437,29,2497,1,6285,0,645,5,656,5,1092,10,7455,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `produce_db` VALUES(12475,29,2497,1,6285,0,511,20,522,1,525,5,610,1,1092,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

--
-- Estrutura da tabela `quest_db`
--

CREATE TABLE IF NOT EXISTS `quest_db` (
  `QuestID` int(10) unsigned NOT NULL,
  `TimeLimit` int(10) unsigned NOT NULL,
  `Target1` smallint(5) unsigned NOT NULL,
  `Val1` smallint(5) unsigned NOT NULL,
  `Target2` smallint(5) unsigned NOT NULL,
  `Val2` smallint(5) unsigned NOT NULL,
  `Target3` smallint(5) unsigned NOT NULL,
  `Val3` smallint(5) unsigned NOT NULL,
  `QuestTitle` tinytext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `refine_db`
--

CREATE TABLE IF NOT EXISTS `refine_db` (
  `Type` tinyint(4) NOT NULL,
  `StatsPerLevel` smallint(5) unsigned NOT NULL,
  `RandomBonusStartLevel` tinyint(4) NOT NULL DEFAULT '0',
  `RandomBonusValue` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Chance1` tinytext NOT NULL,
  `Chance2` tinytext NOT NULL,
  `Chance3` tinytext NOT NULL,
  `Chance4` tinytext NOT NULL,
  `Chance5` tinytext NOT NULL,
  `Chance6` tinytext NOT NULL,
  `Chance7` tinytext NOT NULL,
  `Chance8` tinytext NOT NULL,
  `Chance9` tinytext NOT NULL,
  `Chance10` tinytext NOT NULL,
  `Chance11` tinytext NOT NULL,
  `Chance12` tinytext NOT NULL,
  `Chance13` tinytext NOT NULL,
  `Chance14` tinytext NOT NULL,
  `Chance15` tinytext NOT NULL,
  `Chance16` tinytext NOT NULL,
  `Chance17` tinytext NOT NULL,
  `Chance18` tinytext NOT NULL,
  `Chance19` tinytext NOT NULL,
  `Chance20` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `sc_config`
--

CREATE TABLE IF NOT EXISTS `sc_config` (
  `SC_NAME` varchar(70) NOT NULL,
  `flag` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`SC_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `size_fix_db`
--

CREATE TABLE IF NOT EXISTS `size_fix_db` (
  `Unarmed` tinyint(3) unsigned NOT NULL,
  `Knife` tinyint(3) unsigned NOT NULL,
  `1HSword` tinyint(3) unsigned NOT NULL,
  `2HSword` tinyint(3) unsigned NOT NULL,
  `1HSpear` tinyint(3) unsigned NOT NULL,
  `2HSpears` tinyint(3) unsigned NOT NULL,
  `1HAxe` tinyint(3) unsigned NOT NULL,
  `2HAxe` tinyint(3) unsigned NOT NULL,
  `Mace` tinyint(3) unsigned NOT NULL,
  `2HMace` tinyint(3) unsigned NOT NULL,
  `Staff` tinyint(3) unsigned NOT NULL,
  `Bow` tinyint(3) unsigned NOT NULL,
  `Knuckle` tinyint(3) unsigned NOT NULL,
  `MusicalInstrument` tinyint(3) unsigned NOT NULL,
  `Whip` tinyint(3) unsigned NOT NULL,
  `Book` tinyint(3) unsigned NOT NULL,
  `Katar` tinyint(3) unsigned NOT NULL,
  `Revolver` tinyint(3) unsigned NOT NULL,
  `Rifle` tinyint(3) unsigned NOT NULL,
  `Shotgun` tinyint(3) unsigned NOT NULL,
  `GatlingGun` tinyint(3) unsigned NOT NULL,
  `GrenadeLauncher` tinyint(3) unsigned NOT NULL,
  `FuumaShuriken` tinyint(3) unsigned NOT NULL,
  `2HStaff` tinyint(3) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `skill_castnodex_db`
--

CREATE TABLE IF NOT EXISTS `skill_castnodex_db` (
  `SkillID` smallint(5) unsigned NOT NULL,
  `Cast` tinyint(4) DEFAULT NULL,
  `Delay` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `skill_castnodex_db` VALUES(136,0,2);
REPLACE INTO `skill_castnodex_db` VALUES(263,0,2);
REPLACE INTO `skill_castnodex_db` VALUES(272,0,2);
REPLACE INTO `skill_castnodex_db` VALUES(273,0,2);
REPLACE INTO `skill_castnodex_db` VALUES(336,1,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(366,3,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(370,1,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(371,0,2);
REPLACE INTO `skill_castnodex_db` VALUES(372,0,2);
REPLACE INTO `skill_castnodex_db` VALUES(394,0,2);
REPLACE INTO `skill_castnodex_db` VALUES(403,3,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(408,1,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(409,1,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(410,1,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(482,1,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(462,1,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(496,1,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(497,1,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(498,1,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(512,3,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(1014,1,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(2534,7,7);
REPLACE INTO `skill_castnodex_db` VALUES(2536,7,7);
REPLACE INTO `skill_castnodex_db` VALUES(10010,3,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(10011,3,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(10012,6,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(10013,7,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(8214,7,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(8215,7,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(8217,7,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(8218,7,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(8221,7,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(8222,7,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(8225,7,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(8234,7,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(8235,7,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(8238,7,NULL);
REPLACE INTO `skill_castnodex_db` VALUES(8240,7,NULL);

--
-- Estrutura da tabela `skill_cast_db`
--

CREATE TABLE IF NOT EXISTS `skill_cast_db` (
  `SkillID` smallint(5) unsigned NOT NULL,
  `CastingTime` tinytext NOT NULL,
  `AfterCastActDelay` tinytext NOT NULL,
  `AfterCastWalkDelay` tinytext NOT NULL,
  `Duration1` tinytext NOT NULL,
  `Duration2` tinytext NOT NULL,
  `CoolDown` tinytext NOT NULL,
  `FixedCastingTime` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `skill_cast_db` VALUES(6,'0','0','0','30000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(7,'0','2000','0','2000','10000','0','0');
REPLACE INTO `skill_cast_db` VALUES(8,'0','0','0','10000:13000:16000:19000:22000:25000:28000:31000:34000:37000','10000','10000','0');
REPLACE INTO `skill_cast_db` VALUES(10,'0','0','0','10000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(11,'400','1000:1000:1000:900:900:800:800:700:600:500','0','0','0','0','100');
REPLACE INTO `skill_cast_db` VALUES(12,'3200:2880:2560:2240:1920:1600:1280:960:640:320','0','0','5000:10000:15000:20000:25000:30000:35000:40000:45000:50000','0','0','800:720:640:560:480:400:320:240:160:80');
REPLACE INTO `skill_cast_db` VALUES(13,'400','1200:1200:1600:1600:2000:2000:2400:2400:2800:2500','0','0','0','0','100');
REPLACE INTO `skill_cast_db` VALUES(14,'640:960:1280:1600:1920:2100:1560:2880:3200:3520','1000:1200:1400:1600:1800:2000:2200:2400:2600:2800','0','0','0','0','160:240:320:400:480:700:640:720:800:880');
REPLACE INTO `skill_cast_db` VALUES(15,'640','1500','0','0','3000:6000:9000:12000:15000:18000:21000:24000:27000:30000','0','160');
REPLACE INTO `skill_cast_db` VALUES(16,'800','0','0','5000','20000','0','200');
REPLACE INTO `skill_cast_db` VALUES(17,'1280:1280:1280:1280:1280:800:800:800:800:800','1500:1500:1500:1500:1500:1000:1000:1000:1000:1000','0','0','0','0','320:320:320:320:320:200:200:200:200:200');
REPLACE INTO `skill_cast_db` VALUES(18,'1600:1440:1280:1120:960:880:800:720:640:560','0','0','5000:6000:7000:8000:9000:10000:11000:12000:13000:14000','0','0','400:360:320:280:240:220:200:180:160:140');
REPLACE INTO `skill_cast_db` VALUES(19,'640:960:1280:1600:1920:2100:1560:2880:3200:3520','1000:1200:1400:1600:1800:2000:2200:2400:2600:2800','0','0','0','0','160:240:320:400:480:700:640:720:800:880');
REPLACE INTO `skill_cast_db` VALUES(20,'640:960:1280:1600:1920:2100:1560:2880:3200:3520','1000:1200:1400:1600:1800:2000:2200:2400:2600:2800','0','0','0','0','160:240:320:400:480:700:640:720:800:880');
REPLACE INTO `skill_cast_db` VALUES(21,'640:1280:1920:2560:3200:3840:4480:5120:5760:6400','2000:2000:2000:2000:2000:2000:2000:2000:2000:2000','0','500','0','0','160:320:480:640:800:960:1120:1280:1440:1600');
REPLACE INTO `skill_cast_db` VALUES(24,'0','0','0','10000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(25,'0','0','0','10000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(26,'0','0','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(27,'0','0','0','5000:10000:15000:20000:25000:30000:35000:40000:45000:50000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(28,'0','1000','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(29,'800','1000','0','60000:80000:100000:120000:140000:160000:180000:200000:220000:240000','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(30,'750','1000','0','40000:50000:60000:70000:80000:90000:100000:110000:120000:130000','0','0','250');
REPLACE INTO `skill_cast_db` VALUES(31,'800','500','0','0','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(32,'350','2000','0','0','0','0','150');
REPLACE INTO `skill_cast_db` VALUES(33,'350','3500','0','30000:60000:90000:120000:150000:180000:210000:240000:270000:300000','0','0','150');
REPLACE INTO `skill_cast_db` VALUES(34,'0','0','0','60000:80000:100000:120000:140000:160000:180000:200000:220000:240000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(35,'0','1000','0','0','6000','0','0');
REPLACE INTO `skill_cast_db` VALUES(45,'0','0','0','60000:80000:100000:120000:140000:160000:180000:200000:220000:240000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(46,'0','100','0','100','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(47,'0','100','0','100','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(51,'0','0','0','30000:60000:90000:120000:150000:180000:210000:240000:270000:300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(52,'0','0','0','0','15000:20000:25000:30000:35000:40000:45000:50000:55000:60000','0','0');
REPLACE INTO `skill_cast_db` VALUES(54,'4800:3200:1600:0','0:1000:2000:3000','0','0','0','0','1200:800:400:0');
REPLACE INTO `skill_cast_db` VALUES(57,'350','0','0','0','0','0','350');
REPLACE INTO `skill_cast_db` VALUES(59,'0','1000','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(60,'0','0','0','30000:60000:90000:120000:150000:180000:210000:240000:270000:300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(61,'0','0','0','400:800:1200:1600:2000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(62,'350','0','0','0','0','0','350');
REPLACE INTO `skill_cast_db` VALUES(66,'0','3000','0','60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(67,'0','2000','0','30000:20000:10000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(68,'0','2000','0','60000:90000:120000:150000:180000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(69,'0','0','0','40000:80000:120000:160000:200000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(70,'4000','0','0','4000:7000:10000:13000:16000:19000:22000:25000:28000:31000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(71,'0','0','0','10000:20000:30000:40000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(72,'0','2000','0','0','30000','0','0');
REPLACE INTO `skill_cast_db` VALUES(73,'1600','2000','0','120000','0','0','400');
REPLACE INTO `skill_cast_db` VALUES(74,'3200','2000','0','30000:45000:60000:75000:90000','0','0','800');
REPLACE INTO `skill_cast_db` VALUES(75,'0','2000','0','10000:15000:20000:25000:30000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(76,'0','3000','0','30000:35000:40000:45000:50000:60000:60000:60000:60000:60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(77,'800','3000','0','0','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(78,'0','3000','0','600000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(79,'12000','4000','0','5000:6000:7000:8000:9000:10000:11000:12000:13000:14000','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(80,'1920:1728:1536:1344:1152:960:768:576:384:192','1000','0','30000','600:800:1000:1200:1400:1600:1800:2000:2200:2400','0','480:432:384:336:288:240:192:144:96:48');
REPLACE INTO `skill_cast_db` VALUES(81,'0','2000','0','500','0','0','80');
REPLACE INTO `skill_cast_db` VALUES(83,'9600','2000:3000:3000:4000:4000:5000:5000:6000:6000:7000','0','500','5000','0','2400');
REPLACE INTO `skill_cast_db` VALUES(84,'1600:1920:2240:2560:2880:3200:3520:3840:4160:4480','0','0','0','0','0','400:480:560:640:720:800:880:960:1040:1120');
REPLACE INTO `skill_cast_db` VALUES(85,'9600:9280:8960:8640:8320:8000:7680:7360:7040:6720','5000','0','4000','5500:6000:6500:7000:7500:8000:8500:9000:9500:10000','0','2400:2320:2240:2160:2080:2000:1920:1840:1760:1680');
REPLACE INTO `skill_cast_db` VALUES(86,'640:1280:1920:2560:3200:3200:3200:3200:3200:3200','0','0','0','0','0','160:320:480:640:800:800:800:800:800:800');
REPLACE INTO `skill_cast_db` VALUES(87,'0','0','0','5000:10000:15000:20000:25000:30000:35000:40000:45000:50000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(88,'640:640:576:576:512:512:448:448:384:384','200','0','0','4000:5000:6000:8000:10000:12000:13000:15000:16000:17000','0','160:160:144:144:128:128:112:112:96:96');
REPLACE INTO `skill_cast_db` VALUES(89,'3840:4480:5120:5760:6400:7040:7680:8320:8960:9600','5000','0','4600','12000','0','960:1120:1280:1440:1600:1760:1920:2080:2240:2400');
REPLACE INTO `skill_cast_db` VALUES(90,'448:896:1344:1792:2240:2240:2240:2240:2240:2240','1000:1200:1400:1600:1800:2000:2200:2400:2600:2800','0','0','0','0','112:224:336:448:560:560:560:560:560:560');
REPLACE INTO `skill_cast_db` VALUES(91,'640:1280:1920:2560:3200:3200:3200:3200:3200:3200','1000','0','500','0','0','160:320:480:640:800:800:800:800:800:800');
REPLACE INTO `skill_cast_db` VALUES(92,'0','1000','0','5000:10000:15000:20000:25000','5000:10000:15000:20000:25000','0','0');
REPLACE INTO `skill_cast_db` VALUES(108,'2500','0','0','0','0','0','2500');
REPLACE INTO `skill_cast_db` VALUES(110,'0','0','0','0','5000','0','0');
REPLACE INTO `skill_cast_db` VALUES(111,'0','0','0','30000:60000:90000:120000:150000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(112,'0','0','0','10000:20000:30000:40000:50000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(113,'0','0','0','20000:40000:60000:80000:100000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(114,'0','0','0','1000:2000:3000:4000:5000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(115,'0','0','0','300000:240000:180000:120000:60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(116,'0','1000','0','200000:160000:120000:80000:40000','5000','0','1000');
REPLACE INTO `skill_cast_db` VALUES(117,'0','0','0','250000:200000:150000:100000:50000','4000:8000:12000:16000:20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(118,'0','0','0','200000:160000:120000:80000:40000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(119,'0','0','0','150000:120000:90000:60000:30000','12000:14000:16000:18000:20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(120,'0','0','0','150000:120000:90000:60000:30000','10000:11000:12000:13000:14000','0','0');
REPLACE INTO `skill_cast_db` VALUES(121,'0','0','0','150000:120000:90000:60000:30000','3000:6000:9000:12000:15000','0','0');
REPLACE INTO `skill_cast_db` VALUES(122,'0','1000','0','25000:20000:15000:10000:5000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(123,'0','1000','0','20000:40000:60000:80000:100000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(125,'0','0','0','600000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(129,'800','1000','0','0','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(135,'0','0','0','500:1000:2000:3000:4000:5000:6000:7000:8000:9000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(136,'0','0','2000','0','5000','0','0');
REPLACE INTO `skill_cast_db` VALUES(138,'0','0','0','30000:45000:60000:75000:90000:105000:120000:135000:150000:165000','10000:20000:30000:40000:50000:60000:70000:80000:90000:100000','0','0');
REPLACE INTO `skill_cast_db` VALUES(139,'0','0','0','20000:25000:30000:35000:40000:45000:50000:55000:60000:65000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(140,'0','0','0','5000:10000:15000:20000:25000:30000:35000:40000:45000:50000','15000:20000:25000:30000:35000:40000:45000:50000:55000:60000','0','0');
REPLACE INTO `skill_cast_db` VALUES(141,'500','0','0','5000:5500:6000:6500:7000:7500:8000:8500:9000:9500','15000:20000:25000:30000:35000:40000:45000:50000:55000:60000','7500:8000:8500:9000:9500:10000:10500:11000:11500:12000','500');
REPLACE INTO `skill_cast_db` VALUES(143,'0','0','0','600000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(145,'0','0','0','0','5000','0','0');
REPLACE INTO `skill_cast_db` VALUES(148,'0','0','0','0','0','0','1500');
REPLACE INTO `skill_cast_db` VALUES(149,'0','0','0','0','10000','0','0');
REPLACE INTO `skill_cast_db` VALUES(151,'0','0','0','0','0','0','500');
REPLACE INTO `skill_cast_db` VALUES(152,'0','100','0','5000','8000','0','0');
REPLACE INTO `skill_cast_db` VALUES(155,'0','0','0','300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(156,'1600','0','0','0','0','0','400');
REPLACE INTO `skill_cast_db` VALUES(157,'0','0','0','300000','0','0','5000');
REPLACE INTO `skill_cast_db` VALUES(161,'0','0','0','1800000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(162,'0','0','0','1800000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(163,'0','0','0','1800000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(164,'0','0','0','1800000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(165,'0','0','0','1800000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(166,'0','0','0','1800000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(167,'0','0','0','1800000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(168,'0','0','0','1800000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(169,'0','0','0','1800000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(173,'0','0','0','3500','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(176,'0','0','0','0','60000','0','0');
REPLACE INTO `skill_cast_db` VALUES(177,'0','0','0','0','30000','0','0');
REPLACE INTO `skill_cast_db` VALUES(178,'0','0','0','0','30000','0','0');
REPLACE INTO `skill_cast_db` VALUES(179,'0','0','0','0','5000','0','0');
REPLACE INTO `skill_cast_db` VALUES(180,'0','0','0','0','20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(181,'0','0','0','0','30000','0','0');
REPLACE INTO `skill_cast_db` VALUES(182,'0','0','0','0','30000','0','0');
REPLACE INTO `skill_cast_db` VALUES(192,'0','0','0','15000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(201,'0','0','0','60000:70000:80000:90000:100000:110000:120000:130000:140000:150000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(204,'0','0','0','60000:70000:80000:90000:100000:110000:120000:130000:140000:150000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(205,'0','0','0','60000:70000:80000:90000:100000:110000:120000:130000:140000:150000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(206,'0','0','0','0','3000','0','0');
REPLACE INTO `skill_cast_db` VALUES(207,'0','0','0','30000:40000:50000:60000:70000:80000:90000:100000:110000:120000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(212,'0','500','0','5000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(214,'0','0','0','5000','8000:9000:10000:11000:12000','0','0');
REPLACE INTO `skill_cast_db` VALUES(215,'560:720:880:1140:1200:1200:1200:1200:1200:1200','1000','0','75000:90000:105000:120000:135000','0','0','140:180:220:260:300:300:300:300:300:300');
REPLACE INTO `skill_cast_db` VALUES(216,'560:720:880:1140:1200:1200:1200:1200:1200:1200','1000','0','75000:90000:105000:120000:135000','0','0','140:180:220:260:300:300:300:300:300:300');
REPLACE INTO `skill_cast_db` VALUES(217,'560:720:880:1140:1200:1200:1200:1200:1200:1200','1000','0','75000:90000:105000:120000:135000','0','0','140:180:220:260:300:300:300:300:300:300');
REPLACE INTO `skill_cast_db` VALUES(218,'560:720:880:1140:1200:1200:1200:1200:1200:1200','1000','0','75000:90000:105000:120000:135000','0','0','140:180:220:260:300:300:300:300:300:300');
REPLACE INTO `skill_cast_db` VALUES(220,'0','0','0','180000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(229,'800','500','0','40000:45000:50000:55000:60000','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(230,'500','500','0','3:7:10:12:13','120000','0','500');
REPLACE INTO `skill_cast_db` VALUES(231,'0','500','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(232,'1600','500','0','300000:240000:180000:120000:60000','0','0','400');
REPLACE INTO `skill_cast_db` VALUES(233,'1600','500','0','30000','0','0','400');
REPLACE INTO `skill_cast_db` VALUES(234,'0','500','0','120000:240000:360000:480000:600000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(235,'0','500','0','120000:240000:360000:480000:600000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(236,'0','500','0','120000:240000:360000:480000:600000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(237,'0','500','0','120000:240000:360000:480000:600000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(247,'2000','0','0','0','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(249,'0','0','0','300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(250,'0','0','0','0','5000','0','0');
REPLACE INTO `skill_cast_db` VALUES(251,'0','700','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(252,'0','0','0','300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(253,'0','0','0','0','10000:11000:12000:13000:14000:15000:16000:17000:18000:19000','0','0');
REPLACE INTO `skill_cast_db` VALUES(254,'1500','1500','900','900','10000:11000:12000:13000:14000:15000:16000:17000:18000:19000','0','1500');
REPLACE INTO `skill_cast_db` VALUES(255,'1500','0','0','0','30000:45000:60000:75000:90000','0','1500');
REPLACE INTO `skill_cast_db` VALUES(256,'1500','0','0','180000','0','0','1500');
REPLACE INTO `skill_cast_db` VALUES(257,'0','800','0','180000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(258,'0','0','0','30000:60000:90000:120000:150000:180000:210000:240000:270000:300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(261,'500','0','0','600000','0','0','500');
REPLACE INTO `skill_cast_db` VALUES(262,'1000','0','0','0','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(263,'0','0','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(266,'500','500','0','0','0','0','500');
REPLACE INTO `skill_cast_db` VALUES(267,'500','500','0:200:400:600:800','0','0','0','500');
REPLACE INTO `skill_cast_db` VALUES(268,'2500','0','0','30000:60000:90000:120000:150000','0','0','2500');
REPLACE INTO `skill_cast_db` VALUES(269,'0','500','0','500:700:900:1100:1300','20000:30000:40000:50000:60000','0','0');
REPLACE INTO `skill_cast_db` VALUES(270,'0','0','0','180000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(271,'2000:1750:1500:1250:1000:500:1000:1000:1000:1000','3000:2500:2000:1500:1000','0','10000','300000','0','2000:1750:1500:1250:1000:500:1000:1000:1000:1000');
REPLACE INTO `skill_cast_db` VALUES(276,'0','1000','0','400:600:800:1000:1200','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(277,'560','0','0','0','0','0','140');
REPLACE INTO `skill_cast_db` VALUES(279,'0','0','0','120000:150000:180000:210000:240000:270000:300000:330000:360000:390000','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(280,'0','0','0','1200000:1200000:1200000:1200000:1800000','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(281,'0','0','0','1200000:1200000:1200000:1200000:1800000','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(282,'0','0','0','1200000:1200000:1200000:1200000:1800000','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(283,'0','0','0','1200000:1200000:1200000:1200000:1800000','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(285,'4000','0','0','60000:120000:180000:240000:300000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(286,'4000','0','0','60000:120000:180000:240000:300000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(287,'4000','0','0','60000:120000:180000:240000:300000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(288,'4000','0','0','165000:210000:255000:300000:345000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(289,'1600','0','0','0','0','0','400');
REPLACE INTO `skill_cast_db` VALUES(294,'0','0','0','1200000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(304,'0','0','0','0','5000','0','0');
REPLACE INTO `skill_cast_db` VALUES(306,'0','0','0','60000','15000','0','0');
REPLACE INTO `skill_cast_db` VALUES(307,'0','0','0','60000','60000','0','0');
REPLACE INTO `skill_cast_db` VALUES(308,'0','0','0','60000','60000','0','0');
REPLACE INTO `skill_cast_db` VALUES(309,'0','0','0','60000','60000','0','0');
REPLACE INTO `skill_cast_db` VALUES(310,'0','0','0','60000','60000','0','0');
REPLACE INTO `skill_cast_db` VALUES(311,'0','0','0','60000','60000','0','0');
REPLACE INTO `skill_cast_db` VALUES(312,'0','0','0','60000','60000','0','0');
REPLACE INTO `skill_cast_db` VALUES(313,'0','0','0','60000','60000','0','0');
REPLACE INTO `skill_cast_db` VALUES(316,'1200','0','0','0','0','0','300');
REPLACE INTO `skill_cast_db` VALUES(317,'0','0','0','30000','3000','0','0');
REPLACE INTO `skill_cast_db` VALUES(318,'0','4000','0','0','10000:11000:12000:13000:14000','0','0');
REPLACE INTO `skill_cast_db` VALUES(319,'0','0','0','60000','20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(320,'0','0','0','120000','20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(321,'0','0','0','180000','20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(322,'0','0','0','180000','20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(324,'1200','0','0','0','0','0','300');
REPLACE INTO `skill_cast_db` VALUES(325,'0','0','0','30000','3000','0','0');
REPLACE INTO `skill_cast_db` VALUES(326,'0','4000','0','0','5000','0','0');
REPLACE INTO `skill_cast_db` VALUES(327,'0','0','0','60000','20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(328,'0','0','0','180000','20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(329,'0','0','0','120000','20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(330,'0','0','0','180000','20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(334,'1500','0','0','0','0','0','1500');
REPLACE INTO `skill_cast_db` VALUES(335,'1500','0','0','0','0','0','1500');
REPLACE INTO `skill_cast_db` VALUES(336,'0','0','0','20000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(339,'0','0','900','900','10000:11000:12000:13000:14000:15000:16000:17000:18000:19000','0','0');
REPLACE INTO `skill_cast_db` VALUES(342,'0','0','0','10000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(348,'0','0','0','30000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(349,'0','0','0','10000:15000:20000:25000:30000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(350,'0','0','0','10000:15000:20000:25000:30000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(353,'0','0','0','30000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(354,'0','0','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(355,'0','0','0','40000:60000:80000:100000:120000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(356,'0','0','0','15000:20000:25000:30000:35000:40000:45000:50000:55000:60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(357,'0','0','0','25000:30000:35000:40000:45000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(358,'0','0','0','180000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(359,'0','0','0','300000','15000','0','0');
REPLACE INTO `skill_cast_db` VALUES(360,'0','0','0','300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(361,'800:1200:1600:2000:2400:2400:2400:2400:2400:2400','1100:1200:1300:1400:1500','0','20000:40000:60000:80000:100000','0','0','200:300:400:500:600');
REPLACE INTO `skill_cast_db` VALUES(362,'0','2000:3000:4000:5000:6000','0','20000:25000:30000:35000:40000','20000:25000:30000:35000:40000','0','5000:6000:7000:8000:9000');
REPLACE INTO `skill_cast_db` VALUES(365,'240','300','0','0','0','0','60');
REPLACE INTO `skill_cast_db` VALUES(366,'0','0','0','30000','0','0','');
REPLACE INTO `skill_cast_db` VALUES(367,'1600','2000:2500:3000:3500:4000','0','0','2000:3000:4000:5000:6000','0','400');
REPLACE INTO `skill_cast_db` VALUES(369,'0','0','0','60000','60000','0','');
REPLACE INTO `skill_cast_db` VALUES(370,'0','300','0','0','0','0','');
REPLACE INTO `skill_cast_db` VALUES(371,'0','0','0','0','2000:4000:6000:8000:10000','0','');
REPLACE INTO `skill_cast_db` VALUES(373,'1000:1200:1400:1600:1800','0','0','0','0','0','');
REPLACE INTO `skill_cast_db` VALUES(374,'0','0','0','0','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(375,'0','0','0','0','0','10000:10000:10000:10000:15000','0');
REPLACE INTO `skill_cast_db` VALUES(378,'0','2000','0','40000:45000:50000:55000:60000','20000:30000:40000:50000:60000','0','0');
REPLACE INTO `skill_cast_db` VALUES(379,'250','1000:1200:1400:1600:1800:2000:2200:2400:2600:2800','0','0','0','0','250');
REPLACE INTO `skill_cast_db` VALUES(380,'0','0','0','30000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(381,'500','3000','0','0','0','0','500');
REPLACE INTO `skill_cast_db` VALUES(382,'1000','1500','0','0','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(383,'1500:1800:2100:2400:2700:3000:3300:3600:3900:4200','2000','0','130000:160000:190000:220000:250000:280000:310000:340000:370000:400000','0','0','500:600:700:800:900:1000:1100:1200:1300:1400');
REPLACE INTO `skill_cast_db` VALUES(384,'0','0','0','15000:20000:25000:30000:35000:40000:45000:50000:55000:60000','5000','0','5:5:6:6:7:7:8:8:9:10');
REPLACE INTO `skill_cast_db` VALUES(387,'0','0','0','60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(389,'500','0','0','10000','30000','0','500');
REPLACE INTO `skill_cast_db` VALUES(390,'0','0','0','300000','0','0','');
REPLACE INTO `skill_cast_db` VALUES(394,'1600:1760:1920:2080:2240:2400:2560:2720:2880:3040','2000','2000','0','0','0','400:440:480:520:560:600:640:680:720:760');
REPLACE INTO `skill_cast_db` VALUES(395,'0','0','0','20000:25000:30000:35000:40000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(396,'0','0','0','1000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(397,'150:250:350:450:500:500:500:500:500:500','1200:1400:1600:1800:2000','0','0','1000','0','150:250:350:450:500:500:500:500:500:500');
REPLACE INTO `skill_cast_db` VALUES(398,'0','500','0','0','120000','0','0');
REPLACE INTO `skill_cast_db` VALUES(399,'0','800:800:800:800:1000','0','0','30000','0','0');
REPLACE INTO `skill_cast_db` VALUES(400,'800','1000','0','0','45000','0','200');
REPLACE INTO `skill_cast_db` VALUES(401,'0','0','0','600000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(402,'0','800:900:1000:1100:1200','0','30000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(403,'0','0','0','0','0','0','5000');
REPLACE INTO `skill_cast_db` VALUES(404,'0','0','0','20000','10000','0','0');
REPLACE INTO `skill_cast_db` VALUES(405,'0','0','0','30000','8000','0','0');
REPLACE INTO `skill_cast_db` VALUES(406,'250','500','0','0','10000:5000:120000','0','250');
REPLACE INTO `skill_cast_db` VALUES(407,'0','5000','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(408,'0','0','0','300000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(409,'0','0','0','20000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(410,'0','0','0','20000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(411,'3000:2500:2000:1500:100:500:0:0:0:0','300','0','1000','150000','0','3000:2500:2000:1500:1000:500:0:0:0:0');
REPLACE INTO `skill_cast_db` VALUES(415,'0','0','0','0','3000','0','0');
REPLACE INTO `skill_cast_db` VALUES(417,'0','0','0','0','2000','0','0');
REPLACE INTO `skill_cast_db` VALUES(423,'0','0','0','1800000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(425,'0','0','0','300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(426,'2500:2000:1500:1000:500:500:500:500:500:500','0','0','0','0','0','2500:2000:1500:1000:500:500:500:500:500:500');
REPLACE INTO `skill_cast_db` VALUES(427,'0','0','0','0','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(428,'0','0','0','10000:20000:60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(429,'0','0','0','10000:20000:60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(430,'0','0','0','10000:20000:60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(431,'0','0','0','80000:160000:240000:320000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(432,'0','0','0','80000:160000:240000:320000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(433,'0','0','0','80000:160000:240000:320000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(434,'0','0','0','0','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(442,'0','0','0','10000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(443,'0','0','0','600000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(444,'0','0','0','600000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(445,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(446,'0','0','0','0','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(447,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(448,'800','0','0','150000:200000:250000:300000:350000','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(449,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(450,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(451,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(452,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(453,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(454,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(455,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(456,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(457,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(458,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(459,'0','0','0','150000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(460,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(461,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(462,'3600:3200:2800:2400:2000:2000:2000:2000:2000:2000','0','0','1800000','2000','0','900:800:700:600:500:500:500:500:500:500');
REPLACE INTO `skill_cast_db` VALUES(463,'0','0','0','1800000','500','0','0');
REPLACE INTO `skill_cast_db` VALUES(464,'400','0','0','600000','0','0','100');
REPLACE INTO `skill_cast_db` VALUES(465,'4800:4400:4000:3600:3200:2800:2400:2400:2400:2400','0','0','60000:120000:180000:240000:300000:360000:600000','0','0','1200:1100:1000:900:800:700:600:600:600:600');
REPLACE INTO `skill_cast_db` VALUES(467,'80','500','0','0','0','0','20');
REPLACE INTO `skill_cast_db` VALUES(468,'80','500','0','2000','0','0','20');
REPLACE INTO `skill_cast_db` VALUES(469,'1600','500','0','3000','0','0','400');
REPLACE INTO `skill_cast_db` VALUES(470,'800','500','0','1000:2000:3000:4000:5000:6000:7000','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(471,'2400:1600:800:800:800:800:800:800:800:800','500','0','10000:20000:30000','3000','0','600:400:200:200:200:200:200:200:200:200');
REPLACE INTO `skill_cast_db` VALUES(472,'2400:1600:800:800:800:800:800:800:800:800','500','0','10000:20000:30000','0','0','600:400:200:200:200:200:200:200:200:200');
REPLACE INTO `skill_cast_db` VALUES(473,'0','0','0','30000','0','0','');
REPLACE INTO `skill_cast_db` VALUES(475,'0','0','0','600000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(476,'0','1000','0','75000:90000:105000:120000:135000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(478,'1000','1000','0','0','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(479,'0','500','0','120000:240000:360000:480000:600000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(480,'800','1000','0','0','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(482,'1600','0','0','90000','0','0','400');
REPLACE INTO `skill_cast_db` VALUES(483,'0','5000','0','0','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(484,'0','0','0','5000:6000:7000:8000:9000','0','0','5000');
REPLACE INTO `skill_cast_db` VALUES(485,'0','0','0','0','5000','0','0');
REPLACE INTO `skill_cast_db` VALUES(486,'0','0','0','180000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(487,'0','0','0','180000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(488,'0','0','0','10000:15000:20000:25000:30000','10000:15000:20000:25000:30000','0','0');
REPLACE INTO `skill_cast_db` VALUES(489,'500','3000','0','0','30000','0','500');
REPLACE INTO `skill_cast_db` VALUES(490,'0','1000','0','0','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(491,'0','0','0','300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(492,'0','0','0','180000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(493,'0','0','0','0','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(494,'0','0','0','150000:200000:250000:300000:350000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(495,'0','0','0','300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(496,'0','0','0','0','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(497,'0','0','0','0','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(498,'0','0','0','0','0','0','3000');
REPLACE INTO `skill_cast_db` VALUES(499,'0','100','0','100','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(500,'0','0','0','600000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(501,'0','0','0','30000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(503,'800','1000','0','0','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(504,'1600','3000','0','15000','0','0','400');
REPLACE INTO `skill_cast_db` VALUES(505,'800','2000','0','30000','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(506,'0','1000','0','60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(508,'0','1000','0','0','5000','0','0');
REPLACE INTO `skill_cast_db` VALUES(512,'600:700:800:900:1000:1100:1200:1300:1400:1500','1500','0','0','0','0','600:700:800:900:1000:1100:1200:1300:1400:1500');
REPLACE INTO `skill_cast_db` VALUES(513,'1600','1000','0','30000','0','0','400');
REPLACE INTO `skill_cast_db` VALUES(514,'1200','500','0','0','120000','0','300');
REPLACE INTO `skill_cast_db` VALUES(515,'0','1500','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(516,'0','1000','1000','1000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(517,'800','1000','0','30000:45000:60000:75000:90000:105000:120000:135000:150000:165000','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(518,'1200','1000','0','0','0','0','300');
REPLACE INTO `skill_cast_db` VALUES(519,'800','1200:1400:1600:1800:2000:2200:2400:2600:2800:3000','0','0','10000','0','200');
REPLACE INTO `skill_cast_db` VALUES(521,'800','1000','0','3000:6000:9000:12000:15000:18000:21000:24000:27000:30000','10000','0','200');
REPLACE INTO `skill_cast_db` VALUES(524,'0','1000','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(525,'2400:2400:2400:2400:2400:2400:2400:2400:2400:2400','2000','0','100','0','0','600');
REPLACE INTO `skill_cast_db` VALUES(526,'0','5000','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(527,'0','3000','0','3000','3000','0','0');
REPLACE INTO `skill_cast_db` VALUES(528,'0','1000','0','30000:60000:90000:120000:150000:180000:210000:240000:270000:300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(529,'0','1000','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(531,'0','1000','0','20000:30000:40000:50000:60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(532,'3200:2800:2400:2000:1600:1200:800:800:800:800','1000','0','60000:80000:100000:120000:140000:160000:180000:200000:220000:240000','0','0','800:700:600:500:400:300:200:200:200:200');
REPLACE INTO `skill_cast_db` VALUES(534,'560:1120:1680:2240:2800:3360:3840:4480:5040:5600','0','0','0','0','0','140:280:420:560:700:840:960:1120:1260:1400');
REPLACE INTO `skill_cast_db` VALUES(535,'4800:4400:4000:3600:3200:2800:2400:2000:1600:1200','1000','0','20000','0','0','1200:1100:1000:900:800:700:600:500:400:300');
REPLACE INTO `skill_cast_db` VALUES(536,'2400','2000','0','0','0','0','600');
REPLACE INTO `skill_cast_db` VALUES(537,'560:1120:1680:2240:2800:3360:3840:4480:5040:5600','0','0','0','0','0','140:280:420:560:700:840:960:1120:1260:1400');
REPLACE INTO `skill_cast_db` VALUES(538,'2400','2000','0','15000:20000:25000:30000:35000:40000:45000:50000:55000:60000','15000:20000:25000:30000:35000:40000:45000:50000:55000:60000','0','600');
REPLACE INTO `skill_cast_db` VALUES(539,'1600:2000:2400:2800:3200:3200:3200:3200:3200:3200','2000','0','0','10000:11000:12000:13000:14000:15000:16000:17000:18000:19000','0','400:500:600:700:800:800:800:800:800:800');
REPLACE INTO `skill_cast_db` VALUES(540,'800:1200:1600:2000:2400:2800:3200:3600:4000:4400','1000','0','0','0','0','200:300:400:500:600:700:800:900:1000:1100');
REPLACE INTO `skill_cast_db` VALUES(541,'3200','0','0','100','0','0','800');
REPLACE INTO `skill_cast_db` VALUES(542,'3200','0','0','0','0','0','800');
REPLACE INTO `skill_cast_db` VALUES(543,'4000:3200:2400:1600:800:800:800:800:800:800','0','0','30000:45000:60000:75000:90000','0','0','1000:800:600:400:200:200:200:200:200:200');
REPLACE INTO `skill_cast_db` VALUES(572,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(573,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(574,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(575,'0','0','0','150000:200000:250000:300000:350000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(653,'0','0','0','900','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(655,'0','0','0','0','12000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(657,'0','0','0','0','60000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(659,'0','0','0','0','5000:30000:30000:120000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(660,'0','0','0','0','120000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(662,'0','0','0','0','30000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(663,'0','0','0','0','30000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(664,'0','0','0','0','12000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(665,'0','0','0','0','120000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(666,'0','0','0','0','20000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(667,'0','0','0','0','30000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(668,'0','0','0','0','30000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(669,'0','0','0','10000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(670,'0','0','0','30000','30000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(671,'0','0','0','30000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(672,'0','0','0','0','30000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(673,'0','0','0','0','30000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(675,'0','0','0','30000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(676,'0','0','0','30000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(677,'0','0','0','0','30000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(678,'0','0','0','0','5000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(683,'0','0','0','0','300000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(684,'0','0','0','0','300000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(685,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(686,'0','0','0','60000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(689,'0','0','0','60000:80000:100000:120000:140000:160000:180000:200000:220000:240000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(690,'0','0','0','60000:80000:100000:120000:140000:160000:180000:200000:220000:240000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(691,'0','0','0','20000:40000:60000:80000:100000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(692,'0','5000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(694,'0','0','0','30000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(695,'0','12000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(697,'0','0','0','1200000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(698,'0','20000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(1001,'250','0','0','0','0','0','250');
REPLACE INTO `skill_cast_db` VALUES(1002,'0','0','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(1004,'0','0','0','0','15000:20000:25000:30000:35000:40000:45000:50000:55000:60000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(1005,'0','0','0','10000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(1006,'1280','0','0','120000','0','0','320');
REPLACE INTO `skill_cast_db` VALUES(1008,'0','1000','0','1800000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(1010,'800','2000','0','17000','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(1011,'800','2000','0','10000','17000','0','200');
REPLACE INTO `skill_cast_db` VALUES(1014,'3200','0','0','0','0','0','800');
REPLACE INTO `skill_cast_db` VALUES(1015,'1000','1000','0','600000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(1016,'0','2000','0','0','2000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(1017,'0','1000','0','1800000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(1018,'0','1000','0','1800000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(1019,'0','1000','0','1800000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(2001,'1000','0','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2002,'0','1000','0','0','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2003,'0','2000','0','2000','0','3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2004,'1000:900:800:700:600:500:400:300:200:100','500','0','0','0','3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2005,'0','0','0','15000','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2006,'1000','0','0','0','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2008,'0:0:0:1000:1000:1000:1500:1500:2000:2000','2000','0','10000','0','0','500');
REPLACE INTO `skill_cast_db` VALUES(2009,'0','0','0','15000','0','10000','-1');
REPLACE INTO `skill_cast_db` VALUES(2011,'0','1000','0','180000','60000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2012,'0','0','0','180000','30000','0','1000');
REPLACE INTO `skill_cast_db` VALUES(2013,'0','0','0','60000','120000','0','1000');
REPLACE INTO `skill_cast_db` VALUES(2014,'0','0','0','180000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(2015,'0','0','0','180000','10000','0','2000');
REPLACE INTO `skill_cast_db` VALUES(2016,'0','0','0','180000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2017,'2000','2000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2018,'0','0','0','180000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2019,'0','0','0','180000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(5004,'0:0:0:1000:1000:1000:1500:1500:2000:2000','2000','0','10000','0','0','500');
REPLACE INTO `skill_cast_db` VALUES(5005,'0','0','0','60000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2021,'0','3000:2500:2000:1500:1000','0','10000:20000:30000:40000:50000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2022,'0','2500:2000:1500:1000:500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2023,'0','1500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2025,'0','500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2027,'0','1000','0','60000:120000:180000:240000:300000','300000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2028,'0','2000','0','180000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2029,'0','2000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2030,'0','1000','0','60000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2031,'0','1000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2032,'0','2000','0','6000:8000:10000:12000:14000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(2033,'0','2000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2034,'0','1000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2035,'0','0','0','30000:35000:40000:45000:50000','25000','300000','-1');
REPLACE INTO `skill_cast_db` VALUES(2036,'0','200','0','3000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2037,'0','1000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(5001,'0','1500','0','5000','0','60000','-1');
REPLACE INTO `skill_cast_db` VALUES(2038,'2000','500','0','0','0','0','500');
REPLACE INTO `skill_cast_db` VALUES(2039,'1000','1000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2040,'2000','500','0','6000:7000:8000:9000:10000:11000:12000:13000:14000:15000','15000:20000:25000:30000:35000:40000:45000:50000:55000:60000','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2041,'3000','0','0','120000:180000:240000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(2042,'3000','0','0','120000:180000:240000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(2043,'3000','0','0','0','0','2000','1000:500:-1');
REPLACE INTO `skill_cast_db` VALUES(2044,'2000:2500:3000:3500:4000','2000','0','18000:21000:24000:27000:30000','0','60000','2000');
REPLACE INTO `skill_cast_db` VALUES(2045,'2000','0','0','120000','0','13000:16000:19000:22000:25000:28000:31000:34000:37000:40000','1000');
REPLACE INTO `skill_cast_db` VALUES(2046,'4000','0','0','30000','0','2000','1000');
REPLACE INTO `skill_cast_db` VALUES(2047,'1000','0','0','60000','0','3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2048,'1000','0','0','60000','0','3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2050,'3000','0','0','90000','0','1000','2000');
REPLACE INTO `skill_cast_db` VALUES(2051,'1000','1000','0','0','0','3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2052,'4000','0','0','0','0','10000','-1');
REPLACE INTO `skill_cast_db` VALUES(2053,'1000','0','0','150000:180000:210000:240000:270000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(2054,'2000','1000','0','90000:120000:150000:180000:210000:240000:270000:300000:330000:360000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(2057,'4000','0','0','20000:30000:40000:50000:60000','0','15000','-1');
REPLACE INTO `skill_cast_db` VALUES(5011,'4000','0','0','90000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2201,'0','0','0','6000:8000:10000:12000:14000','15000','4000','-1');
REPLACE INTO `skill_cast_db` VALUES(2202,'2000','500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2203,'2000:2500:3000:3500:4000','1000','0','40000','0','4000','500');
REPLACE INTO `skill_cast_db` VALUES(2204,'2000:2500:3000:3500:4000','1000','0','10000:15000:20000:25000:30000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(2205,'0','1000','0','30000','0','2500:3000:3500:4000:4500','500');
REPLACE INTO `skill_cast_db` VALUES(2206,'1000','1000','0','60000:90000:120000:150000:180000','0','50000:80000:110000:140000:170000','1000');
REPLACE INTO `skill_cast_db` VALUES(2207,'2000','2000','0','10000:12000:14000:16000:18000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2209,'3000','2000','0','10000:15000:20000:25000:30000','1000','180000:190000:200000:210000:220000','1000');
REPLACE INTO `skill_cast_db` VALUES(2210,'4000','0','0','0','0','2000','1000');
REPLACE INTO `skill_cast_db` VALUES(2211,'5000','2000','0','5000','0','5000','1000');
REPLACE INTO `skill_cast_db` VALUES(2212,'3000','1000','0','20000:30000:40000:50000:60000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(2213,'10000:11000:12000:13000:14000','0','0','100','42000','60000','1000:1500:2000:2500:3000');
REPLACE INTO `skill_cast_db` VALUES(2214,'3500:4000:4500:5000:5500','0','0','100','0','3000','1000');
REPLACE INTO `skill_cast_db` VALUES(2216,'2000:3000:4000:5000:6000','1000','0','100','75000:90000:105000:120000:135000','10000','2000');
REPLACE INTO `skill_cast_db` VALUES(2217,'5000:6000:7000:8000:9000','2000','0','15000:120000:40000:5000','0','15000','2000');
REPLACE INTO `skill_cast_db` VALUES(2222,'2000','0','0','120000:160000:200000:240000:280000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2223,'2000','0','0','120000:160000:200000:240000:280000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2224,'2000','0','0','120000:160000:200000:240000:280000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2229,'2000','0','0','120000:160000:200000:240000:280000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2231,'5000','500','0','0','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(5012,'1000','0','0','60000','0','300000','-1');
REPLACE INTO `skill_cast_db` VALUES(2233,'2000:2200:2400:2600:2800:3000:3200:3400:3600:3800','0','0','0','0','5000:4800:4600:4400:4200:4000:3800:3600:3400:3200','-1');
REPLACE INTO `skill_cast_db` VALUES(2234,'0','0','0','60000:90000:120000:150000:180000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(2236,'4000','1000','0','0','0','0','500');
REPLACE INTO `skill_cast_db` VALUES(2237,'0','0','0','1000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2238,'0','0','0','15000','20000:22000:24000:26000:28000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2239,'0','0','0','15000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2240,'0','1000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2241,'0','500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2244,'0','2000','0','1000:2000:3000:4000:5000','0','4000:6000:8000:10000:12000','-1');
REPLACE INTO `skill_cast_db` VALUES(2246,'0','3000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2247,'0','0','0','10000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2249,'0','2000','0','15000','10000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2250,'0','2000','0','15000','10000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2251,'0','2000','0','15000','10000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2252,'0','2000','0','15000','10000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2253,'0','0','0','15000','40000','0','0');
REPLACE INTO `skill_cast_db` VALUES(2254,'0','0','0','15000','20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(5002,'0','500','0','60000','0','300000','1000');
REPLACE INTO `skill_cast_db` VALUES(2256,'200:400:600:800:1000','0','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2257,'0','2000','0','0','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2258,'0','300:200:100','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2259,'500:1000:1500','1500:1000:500','0','7000:14000:21000','0','0','500');
REPLACE INTO `skill_cast_db` VALUES(2260,'1000','1000:2000:3000','0','7000:14000:21000','40000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2261,'1400:1600:1800','500:1000:2000','0','0','0','0','600:400:200');
REPLACE INTO `skill_cast_db` VALUES(2262,'0','0','0','60000:90000:120000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(2263,'0','0','0','90000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2264,'0','500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2265,'0','500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2267,'2000:1500:1000','0','0','0','0','300000','500');
REPLACE INTO `skill_cast_db` VALUES(2268,'0','2000','0','300000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(2269,'0','500','0','0','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2270,'0','500','0','3000','0','3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2271,'0','1000','0','20000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(2272,'0','0','0','4000:6000:8000','0','20000:15000:10000','-1');
REPLACE INTO `skill_cast_db` VALUES(2273,'0','0','0','30000:45000:60000','0','90000','0');
REPLACE INTO `skill_cast_db` VALUES(2274,'0','0','0','15000:20000:25000','0','20000:15000:10000','0');
REPLACE INTO `skill_cast_db` VALUES(2275,'200:300:400:500:600','1000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2278,'0','0','0','0','0','5000:4500:4000:3500:3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2279,'0','1000','0','3000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2280,'0','500','0','0','0','4000:3500:3000:2500:2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2281,'0','0','0','20000:30000:40000:50000:60000','0','0','1800:1600:1400:1200:1000');
REPLACE INTO `skill_cast_db` VALUES(2282,'0','0','0','20000:30000:40000:50000:60000','0','0','1800:1600:1400:1200:1000');
REPLACE INTO `skill_cast_db` VALUES(2283,'2000','0','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(5006,'1000','0','0','10000','42000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2284,'0','500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2285,'0','1000','0','60000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2286,'4000:3600:3200:2800:2400:2000:1600:1200:800:400','0','0','60000:80000:100000:120000:140000:160000:180000:200000:220000:300000','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(2287,'0','1000','0','30000:40000:50000:60000:70000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2288,'1000','500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2289,'0','1000','0','5000:7000:9000:11000:13000','10000','2000','0');
REPLACE INTO `skill_cast_db` VALUES(2290,'1000','1000','0','60000','0','20000:30000:40000:50000:60000','-1');
REPLACE INTO `skill_cast_db` VALUES(2291,'0','1000','0','10000:15000:20000:25000:30000','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2292,'2000','1000','0','10000:15000:20000','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2293,'2000','1000','0','10000:15000:20000','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2294,'2000','1000','0','10000:15000:20000','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2295,'2000','1000','0','10000:15000:20000','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2296,'2000','1000','0','10000:15000:20000','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2297,'2000','1000','0','10000:15000:20000','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2298,'1000','1000','0','60000:70000:80000:90000:100000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2299,'1000','2000','0','5000:10000:15000','5000:10000:15000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2300,'1000','2000','0','4000:8000:12000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2301,'2000','2000','0','5000:10000:15000','4000:8000:12000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2302,'2000','2000','0','7000:14000:21000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2303,'2000','2000','0','5000:10000:15000','0','180000','1000');
REPLACE INTO `skill_cast_db` VALUES(2304,'1000','0','0','1000','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(5010,'0','0','0','1000','0','15000','-1');
REPLACE INTO `skill_cast_db` VALUES(2307,'0','0','0','0','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2309,'0','1000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2310,'0','0','0','3500:4000:4500:5000:5500','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2311,'0','0','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2312,'0','1000','0','5000','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2313,'0','1000','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2314,'0','3000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2315,'1000','1000','0','0','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2316,'5000:5500:6000:6500:7000','1000','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2317,'500','2000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2318,'1000','0','0','30000:45000:60000:75000:90000','0','60000','2000');
REPLACE INTO `skill_cast_db` VALUES(2319,'0','0','0','-1','2000:4000:6000:8000:10000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2320,'1000','1000','0','0','0','6000:5000:4000:3000:2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2321,'2000:2500:3000:3500:4000','2000','0','10000','0','5000','500');
REPLACE INTO `skill_cast_db` VALUES(2322,'3000:2500:2000:1500:1000','0','0','60000:80000:100000:120000:140000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2323,'1000','1000','0','3000:6000:9000:12000:15000','0','7000:6000:5000:4000:3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2324,'1000','3000','0','0','0','20000','-1');
REPLACE INTO `skill_cast_db` VALUES(2325,'2000','2000','0','30000:45000:60000:75000:90000','0','540000:480000:420000:360000:300000','1000');
REPLACE INTO `skill_cast_db` VALUES(5013,'1000','0','0','5000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2326,'0','0','0','3000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2327,'0','500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2328,'0','0','0','1000','0','3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2329,'0','0','0','500:1000:1500:2000:2500','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2330,'1100:1200:1300:1400:1500:1600:1700:1800:1900:2000','1000','0','0','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2332,'0','1000','0','0','0','10000','-1');
REPLACE INTO `skill_cast_db` VALUES(2333,'0','1000','0','3000:4000:5000:6000:7000','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2334,'0','1000','0','3000:4000:5000:6000:7000','0','10000','-1');
REPLACE INTO `skill_cast_db` VALUES(2335,'0','1000','0','5000:6000:7000:8000:9000','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2336,'0','1000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2337,'1000','500','0','0','0','3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2338,'0','1000','0','30000:45000:60000:75000:90000:105000:120000:135000:150000:165000','0','30000','-1');
REPLACE INTO `skill_cast_db` VALUES(2340,'0','1000','0','0','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2341,'1500','0','0','0','0','0','500');
REPLACE INTO `skill_cast_db` VALUES(2343,'1000:1200:1400:1600:1800:2000:2200:2400:2600:2800','100:200:300:400:500:600:700:800:900:1000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2344,'0','0','0','5000:7000:9000:11000:13000','0','1000:1500:2000:2500:3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2345,'0','1000','0','0','0','1000:1500:2000:2500:3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2346,'1000','1000','0','240000','0','0','1000:1500:2000:2500:3000');
REPLACE INTO `skill_cast_db` VALUES(2347,'1000','1000','0','240000','0','200000:180000:160000:140000:120000','1000');
REPLACE INTO `skill_cast_db` VALUES(2348,'1000','1000','0','240000','0','200000:180000:160000:140000:120000','1000');
REPLACE INTO `skill_cast_db` VALUES(5009,'0','4000','0','4000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2350,'1000','2000','0','60000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2351,'1000','2000','0','60000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2352,'1000','2000','0','60000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2381,'1000','2000','0','60000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2382,'1000','2000','0','60000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2383,'1000','1000','0','60000','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2413,'1000:1500:2000:2500:3000','1000','0','0','0','2000:2500:3000:3500:4000','-1');
REPLACE INTO `skill_cast_db` VALUES(2414,'1100:1200:1300:1400:1500','1000','0','9000:10000:11000:12000:13000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2417,'0','1000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2418,'1500:2000:2500:3000:3500','1000','0','3400','0','5000:5500:6000:6500:7000','500');
REPLACE INTO `skill_cast_db` VALUES(2419,'3000','0','0','9000:11000:13000:15000:17000','8000:10000:12000:14000:16000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2420,'2000:2200:2400:2600:2800','1000','0','15000:18000:21000:24000:27000','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2421,'3000:2500:2000:1500:1000','1000','0','0','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(2422,'2000','1000','0','12000:14000:16000:18000:20000','0','10000','1000');
REPLACE INTO `skill_cast_db` VALUES(2423,'2000','1000','0','60000','0','15000','-1');
REPLACE INTO `skill_cast_db` VALUES(2424,'0','1000','0','0','0','3000','-1');
REPLACE INTO `skill_cast_db` VALUES(2425,'1000','1000','0','30000:45000:60000:75000:90000','0','10000','500');
REPLACE INTO `skill_cast_db` VALUES(2426,'2000:2200:2400:2600:2800','1000','0','0','0','10000','500');
REPLACE INTO `skill_cast_db` VALUES(2427,'1000','1000','0','30000:60000:90000:120000:150000','0','90000','500');
REPLACE INTO `skill_cast_db` VALUES(2428,'1500:2000:2500:3000:3500','1000','0','30000:60000:90000:120000:150000','0','90000','500');
REPLACE INTO `skill_cast_db` VALUES(2429,'0:500:1000:1500:2000','1000','0','5000','0','6000:7000:8000:9000:10000','500');
REPLACE INTO `skill_cast_db` VALUES(2430,'1000:2000:3000:4000:5000','1000','0','10000:15000:20000:25000:30000','3000','180000','1000');
REPLACE INTO `skill_cast_db` VALUES(2431,'1000','1000','0','20000:30000:40000:50000:60000','0','180000','500');
REPLACE INTO `skill_cast_db` VALUES(2432,'1000','1000','0','20000:30000:40000:50000:60000','0','180000','500');
REPLACE INTO `skill_cast_db` VALUES(2433,'1000','1000','0','20000:30000:40000:50000:60000','0','180000','500');
REPLACE INTO `skill_cast_db` VALUES(2434,'1000','1000','0','60000:90000:120000:150000:180000','0','110000:120000:130000:140000:150000','500');
REPLACE INTO `skill_cast_db` VALUES(5007,'0','0','0','60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(2443,'1000','1000','0','12000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2444,'1000','1000','0','12000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2445,'0','1000','0','20000:25000:30000:35000:40000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(2446,'2200:2400:2600:2800:3000','1000','0','500','8000:11000:14000:17000:20000','5000','1800:1600:1400:1200:1000');
REPLACE INTO `skill_cast_db` VALUES(2447,'5000:5500:6000:6500:7000','1000','0','500','12000:14000:16000:18000:20000','5000','800:600:400:200:-1');
REPLACE INTO `skill_cast_db` VALUES(2448,'2200:3400:4600:5800:6000','1000','0','0','0','2000','800:600:400:200:-1');
REPLACE INTO `skill_cast_db` VALUES(2449,'8000:9000:10000:11000:12000','1000','0','1200:1700:2200:2700:3200','0','5000','1000:900:800:700:600');
REPLACE INTO `skill_cast_db` VALUES(2450,'2300:2500:2700:2900:3100','1000','0','8000:10000:12000:14000:16000','10000:15000:20000:25000:30000','5000','700:500:300:100:-1');
REPLACE INTO `skill_cast_db` VALUES(2451,'1000','1000','0','60000','0','2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2452,'2200:2400:2600:2800:3000','1000','0','40000:45000:50000:55000:60000','30000','35000:40000:45000:50000:55000','1800:1600:1400:1200:1000');
REPLACE INTO `skill_cast_db` VALUES(2453,'1000:1500:2000:2500:3000','1000','0','4000:6000:8000:10000:12000','1000','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2454,'2200:2400:2600:2800:3000','1000','0','0','2200:2400:2600:2800:3000','2000','1800:1600:1400:1200:1000');
REPLACE INTO `skill_cast_db` VALUES(2455,'2200:2400:2600:2800:3000','1000','0','8000:10000:12000:14000:16000','0','5000:6000:7000:8000:9000','800:600:400:200:-1');
REPLACE INTO `skill_cast_db` VALUES(2456,'2000','0','0','0','0','5000','0');
REPLACE INTO `skill_cast_db` VALUES(2457,'1000:2000:3000','0','0','600000:900000:1200000','0','60000','2000');
REPLACE INTO `skill_cast_db` VALUES(2458,'1000:2000:3000','0','0','600000:900000:1200000','0','60000','2000');
REPLACE INTO `skill_cast_db` VALUES(2459,'1000:2000:3000','0','0','600000:900000:1200000','0','60000','2000');
REPLACE INTO `skill_cast_db` VALUES(2460,'1000:2000:3000','0','0','600000:900000:1200000','0','60000','2000');
REPLACE INTO `skill_cast_db` VALUES(2461,'0','0','0','0','0','5000','0');
REPLACE INTO `skill_cast_db` VALUES(2462,'0','0','0','0','0','0','2000');
REPLACE INTO `skill_cast_db` VALUES(2464,'2000','1000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2465,'1000','0','0','60000','0','60000','1000');
REPLACE INTO `skill_cast_db` VALUES(2466,'1000','0','0','60000','0','60000','1000');
REPLACE INTO `skill_cast_db` VALUES(2467,'1000','0','0','60000','0','60000','1000');
REPLACE INTO `skill_cast_db` VALUES(2468,'1000','0','0','60000','0','60000','1000');
REPLACE INTO `skill_cast_db` VALUES(5008,'1000','0','0','10000','0','10000','-1');
REPLACE INTO `skill_cast_db` VALUES(2476,'0','500','0','5000','0','0:500:1000:1500:2000','-1');
REPLACE INTO `skill_cast_db` VALUES(2477,'1000:1500:2000:2500:3000','500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2478,'1500','500','0','90000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2479,'1500','500','0','10000:12000:14000:16000:18000','20000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2480,'1500','500','0','20000:22000:24000:26000:28000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2481,'1500','500','0','2000:2000:3000:3000:4000','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2482,'1500','500','0','10000:11000:12000:13000:14000','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2483,'3000:3500:4000:4500:5000:5500:6000:6500:7000:7500','500','0','0','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2484,'0','0','0','100','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2485,'3000:3500:4000:4500:5000','500','0','10000:12000:14000:16000:18000','8000:16000:24000:32000:40000','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(2486,'2000','500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2487,'0','0','0','10000:12000:14000:16000:18000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2488,'0','0','0','10000:12000:14000:16000:18000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2490,'3000:3500:4000:4500:5000','500','0','14000:21000:28000:35000:42000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2491,'0','0','0','20000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2492,'1000','500','0','10000:15000:20000:25000:30000','0','10000','-1');
REPLACE INTO `skill_cast_db` VALUES(2493,'0','0','0','0','0','1000','0');
REPLACE INTO `skill_cast_db` VALUES(2498,'0','0','0','3000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(5003,'0','0','0','10000','0','10000','-1');
REPLACE INTO `skill_cast_db` VALUES(2515,'1000','500','0','60000:90000:120000:150000:180000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(2517,'1000','0','0','12000:14000:16000:18000:20000','0','10000','500');
REPLACE INTO `skill_cast_db` VALUES(2518,'1000:2000:3000:4000:5000','1000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(2533,'10000','0','0','0','0','300000','0');
REPLACE INTO `skill_cast_db` VALUES(2534,'3000','0','0','0','0','300000','0');
REPLACE INTO `skill_cast_db` VALUES(2536,'3000','0','0','0','0','300000','0');
REPLACE INTO `skill_cast_db` VALUES(2537,'0','0','0','60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(2555,'0','0','0','0','0','10000:11000:12000:13000:14000','0');
REPLACE INTO `skill_cast_db` VALUES(3001,'0','0','0','60000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(3004,'0','500','0','3000','0','5000','-1');
REPLACE INTO `skill_cast_db` VALUES(3005,'0','0','0','0','0','3000','-1');
REPLACE INTO `skill_cast_db` VALUES(3006,'1000:1400:1800:2200:2600','1000','0','100','0','3000','-1');
REPLACE INTO `skill_cast_db` VALUES(3007,'0','500','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(3008,'1000','0','0','100','0','10000','0');
REPLACE INTO `skill_cast_db` VALUES(3009,'1000:1200:1400:1600:1800','1000','0','100','0','3000','-1');
REPLACE INTO `skill_cast_db` VALUES(3010,'0','0','0','12000:14000:16000:18000:20000','10000','10000','-1');
REPLACE INTO `skill_cast_db` VALUES(3011,'3000','0','0','10000','0','10000','-1');
REPLACE INTO `skill_cast_db` VALUES(3012,'0','1000','0','30000:27000:24000:21000:18000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(3013,'3000:2500:2000:1500:1000','1000','0','12000:14000:16000:18000:20000','0','10000','-1');
REPLACE INTO `skill_cast_db` VALUES(3014,'3000:2500:2000:1500:1000','1000','0','8000:10000:12000:14000:16000','0','10000','-1');
REPLACE INTO `skill_cast_db` VALUES(3015,'2000','0','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(3016,'2000','0','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(3017,'2000','0','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(3018,'2000','0','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(3020,'0','1000','0','10000','10000','0','0');
REPLACE INTO `skill_cast_db` VALUES(3021,'3000:2500:2000:1500:1000','1000','0','5000','0','10000','-1');
REPLACE INTO `skill_cast_db` VALUES(3022,'0','0','0','30000:45000:60000:75000:90000','0','60000','-1');
REPLACE INTO `skill_cast_db` VALUES(3023,'0','0','0','5000:6000:7000:8000:9000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(3024,'0','1000','0','10000:15000:20000:25000:30000','0','20000','-1');
REPLACE INTO `skill_cast_db` VALUES(3025,'0','0','0','60000:90000:120000:150000:180000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(3026,'1000:1500:2000:2500:3000','1000','0','60000:75000:90000:105000:120000','0','30000','2000');
REPLACE INTO `skill_cast_db` VALUES(3027,'1000','0','0','10000:15000:20000:25000:30000','0','15000','0');
REPLACE INTO `skill_cast_db` VALUES(3029,'1000:1500:2000:2500:3000','1000','0','10000:15000:20000:25000:30000','0','30000','2000');
REPLACE INTO `skill_cast_db` VALUES(3031,'0','0','0','0','0','5000','0');
REPLACE INTO `skill_cast_db` VALUES(3032,'0','0','0','0','0','5000','0');
REPLACE INTO `skill_cast_db` VALUES(3033,'0','0','0','0','0','5000','0');
REPLACE INTO `skill_cast_db` VALUES(3034,'0','0','0','0','0','5000','0');
REPLACE INTO `skill_cast_db` VALUES(3035,'0','0','0','0','0','300000','3000');
REPLACE INTO `skill_cast_db` VALUES(5014,'0','0','0','10000:15000:20000:25000:30000','10000','1800000','-1');
REPLACE INTO `skill_cast_db` VALUES(8001,'0','2000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8002,'0','35000','0','40000:35000:30000:25000:20000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8004,'0','600000:900000:1200000','0','60000:120000:180000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8005,'0','0','0','0','60000:70000:80000:90000:129000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8006,'0','0','0','40000:35000:30000:25000:20000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8008,'0','0','0','60000:180000:300000','300000:600000:900000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8009,'0','0','1000','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8010,'0','0','0','60000:55000:50000:45000:40000','60000:70000:80000:90000:120000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8011,'0','0','0','60000:55000:50000:45000:40000','60000:70000:80000:90000:120000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8013,'0','1000:1200:1400:1600:1800','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8014,'0','1000','1000','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8016,'0','0','1000','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8018,'1600:1400:1200:1000:800','0','0','20000:30000:40000:50000:60000','0','0','400:600:800:1000:1200');
REPLACE INTO `skill_cast_db` VALUES(8019,'1000:1100:1200:1300:1400','0','0','12000:14000:16000:18000:20000','0','0','500:400:300:200:100');
REPLACE INTO `skill_cast_db` VALUES(8020,'500:700:900:1100:1300','0','0','12000:14000:16000:18000:20000','4000:6000:8000:10000:12000','0','500');
REPLACE INTO `skill_cast_db` VALUES(8021,'1000:1200:1400:1600:1800','0','0','20000:30000:40000:50000:60000','0','0','1000:800:600:400:200');
REPLACE INTO `skill_cast_db` VALUES(8022,'0','0','0','360000:420000:480000:540000:600000','0','0','1600:1400:1200:1000:800');
REPLACE INTO `skill_cast_db` VALUES(8023,'800:700:600:500:400','0','0','30000:45000:60000:75000:90000','0','0','200:300:400:500:600');
REPLACE INTO `skill_cast_db` VALUES(8024,'1000:1500:2000:2500:3000','2000','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8025,'1500:2500:3500:4500:5500','5000','0','500','0','0','500');
REPLACE INTO `skill_cast_db` VALUES(8026,'1000:1200:1400:1600:1800','0','0','9000:12000:15000:18000:21000','0','0','1000:800:600:400:200');
REPLACE INTO `skill_cast_db` VALUES(8031,'800:600:400:200:0','0','0','5000','0','0','200:400:600:800:1000');
REPLACE INTO `skill_cast_db` VALUES(8032,'1000:1200:1400:1600:1800','0','0','30000:45000:60000:75000:90000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8033,'1000','0','0','30000:45000:60000:75000:90000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8034,'200:400:600:800:1000','0','0','0','0','0','1800:1600:1400:1200:1000');
REPLACE INTO `skill_cast_db` VALUES(8035,'200:400:600:800:1000','0','0','30000:45000:60000:75000:90000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8039,'2000:2500:3000:3500:4000','0','0','30000:45000:60000:75000:90000','0','0','2000:1500:1000:500:-1');
REPLACE INTO `skill_cast_db` VALUES(8040,'6000:5500:5000:4500:4000','0','0','60000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(8041,'6000:5500:5000:4500:4000','0','0','12000:14000:16000:18000:20000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(8042,'5000:4500:4000:3500:3000','0','0','60000:90000:120000:150000:180000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(8043,'5000:4500:4000:3500:3000','0','0','12000:14000:16000:18000:20000','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(8202,'0','1500','2000','2000','10000','0','0');
REPLACE INTO `skill_cast_db` VALUES(8203,'700','2500','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8204,'0','0','0','15000:20000:25000:30000:35000:40000:45000:50000:55000:60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8205,'0','0','0','300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8206,'0','0','0','300000','15000','0','0');
REPLACE INTO `skill_cast_db` VALUES(8207,'0','1000','0','100','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8208,'0','1200','0','100','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8209,'0','0','0','300000:240000:180000:120000:60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8210,'0','0','0','200000:160000:120000:80000:40000','5000','0','0');
REPLACE INTO `skill_cast_db` VALUES(8211,'0','0','0','150000:120000:90000:60000:30000','12000:14000:16000:18000:20000','0','0');
REPLACE INTO `skill_cast_db` VALUES(8212,'0','0','0','150000:120000:90000:60000:30000','3000:6000:9000:12000:15000','0','0');
REPLACE INTO `skill_cast_db` VALUES(8214,'750','1000','0','0','0','0','750');
REPLACE INTO `skill_cast_db` VALUES(8215,'1000','2500','0','0','0','0','1000');
REPLACE INTO `skill_cast_db` VALUES(8217,'350','1200','0','0','0','0','350');
REPLACE INTO `skill_cast_db` VALUES(8218,'150:250:350:450:500:500:500:500:500:500','2500','0','0','1000','0','150:250:350:450:500:500:500:500:500:500');
REPLACE INTO `skill_cast_db` VALUES(8219,'0','800','0','180000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8220,'0','0','0','300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8221,'1500','0','0','0','30000:45000:60000:75000:90000','0','1500');
REPLACE INTO `skill_cast_db` VALUES(8222,'3200','2000','0','30000:45000:60000:75000:90000','0','0','800');
REPLACE INTO `skill_cast_db` VALUES(8223,'0','0','0','30000:60000:90000:120000:150000:180000:210000:240000:270000:300000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8224,'0','0','0','10000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8225,'1000','2000','0','0','5000','0','0');
REPLACE INTO `skill_cast_db` VALUES(8232,'0','0','0','30000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8234,'800','1000','0','40000:50000:60000:70000:80000:90000:100000:110000:120000:130000','0','0','200');
REPLACE INTO `skill_cast_db` VALUES(8235,'3000','0','0','0','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8236,'0','3000','0','30000:35000:40000:45000:50000:60000:60000:60000:60000:60000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8238,'2000','2000','0','120000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8239,'0','0','0','60000:80000:100000:120000:140000:160000:180000:200000:220000:240000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8240,'1000','1000','0','60000:80000:100000:120000:140000:160000:180000:200000:220000:240000','0','0','0');
REPLACE INTO `skill_cast_db` VALUES(8401,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8402,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8403,'0','0','0','15000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8404,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8405,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8406,'0','0','0','15000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8407,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8408,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8409,'0','0','0','15000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8411,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8412,'0','0','0','15000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8413,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8414,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8415,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8416,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8417,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8418,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8419,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8420,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8421,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8422,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8423,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8424,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8433,'0','0','0','-1','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8434,'1000','0','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8435,'1000','0','0','0','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8437,'1000','0','0','15000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8439,'0','0','0','5000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8440,'0','0','0','15000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(8441,'0','0','0','15000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(10006,'0','0','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(10007,'0','0','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(10008,'0','0','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(10009,'0','0','0','300000','0','0','-1');
REPLACE INTO `skill_cast_db` VALUES(10010,'0','0','0','180000','300000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(10011,'0','0','0','60000','300000','0','-1');
REPLACE INTO `skill_cast_db` VALUES(10012,'0','0','0','0','300000','0','10000');
REPLACE INTO `skill_cast_db` VALUES(10013,'0','0','0','0','300000','0','5000');
REPLACE INTO `skill_cast_db` VALUES(10015,'0','0','0','0','300000','0','-1');

--
-- Estrutura da tabela `skill_changematerial_db`
--

CREATE TABLE IF NOT EXISTS `skill_changematerial_db` (
  `ProductID` int(10) unsigned NOT NULL,
  `BaseRate` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MakeAmount1` smallint(6) DEFAULT NULL,
  `MakeAmountRate1` smallint(5) unsigned DEFAULT NULL,
  `MakeAmount2` smallint(6) DEFAULT NULL,
  `MakeAmountRate2` smallint(5) unsigned DEFAULT NULL,
  `MakeAmount3` tinyint(4) DEFAULT NULL,
  `MakeAmountRate3` smallint(5) unsigned DEFAULT NULL,
  `MakeAmount4` tinyint(4) DEFAULT NULL,
  `MakeAmountRate4` smallint(5) unsigned DEFAULT NULL,
  `MakeAmount5` tinyint(4) DEFAULT NULL,
  `MakeAmountRate5` smallint(5) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `skill_changematerial_db` VALUES(703,4,800,2,200,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(958,800,9,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(959,800,7,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(960,1000,6,800,9,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(961,800,3,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(962,1000,4,800,6,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(963,800,3,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(964,800,8,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(967,800,4,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(968,800,5,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(970,800,9,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(971,800,5,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(973,800,4,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(974,1000,4,800,6,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(991,1000,1,500,1,500,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(992,1000,1,500,1,500,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(999,1000,10,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1003,500,1,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1008,800,6,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1009,800,4,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1010,800,8,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1011,800,4,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1012,800,3,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1013,9,800,13,200,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1014,4,800,6,200,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1016,1000,7,800,10,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1019,800,2,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1020,1000,4,800,6,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1021,800,4,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1022,1000,2,800,3,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1024,800,4,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1025,800,8,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1026,800,4,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1030,800,2,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1033,1000,4,800,6,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1034,1000,6,800,9,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1035,1000,8,800,12,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1037,800,6,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1038,1000,1,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1040,1000,8,800,12,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1041,800,3,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1042,800,6,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1043,800,6,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1045,800,8,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1046,800,4,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1049,800,6,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1050,800,3,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1051,800,7,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1053,1000,6,800,9,200,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1056,800,8,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1058,800,5,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1059,1000,5,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1061,80,2,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1061,1000,1,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1064,800,8,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(1615,200,1,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(2267,1000,1,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(7063,1000,1,200,1,200,1,100,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(7166,1000,2,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13269,1000,5,500,2,250,1,100,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13270,1000,5,500,2,250,1,100,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13271,1000,5,500,2,250,1,100,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13272,1000,5,500,2,250,1,100,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13273,1000,5,500,2,250,1,100,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13274,1000,5,500,2,250,1,100,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13275,1000,10,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13276,1000,10,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13277,1000,10,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13278,1000,10,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13279,1000,10,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13280,1000,10,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13281,1000,10,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13282,1000,10,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `skill_changematerial_db` VALUES(13283,1000,10,1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

--
-- Estrutura da tabela `skill_db`
--

CREATE TABLE IF NOT EXISTS `skill_db` (
  `SkillID` smallint(5) unsigned NOT NULL,
  `Range` tinytext NOT NULL,
  `Hit` smallint(6) NOT NULL,
  `Inf` smallint(6) NOT NULL,
  `Element` tinytext NOT NULL,
  `Nk` tinytext NOT NULL,
  `Splash` tinytext NOT NULL,
  `Maxlv` tinytext NOT NULL,
  `NumHits` text NOT NULL,
  `CastInterrupted` tinytext NOT NULL,
  `Cast_Defence_Rate` tinytext NOT NULL,
  `Inf2` tinytext NOT NULL,
  `MaxCount` tinytext NOT NULL,
  `AttackType` tinytext NOT NULL,
  `BlowCount` tinytext NOT NULL,
  `Name` tinytext NOT NULL,
  `Description` tinytext NOT NULL,
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `skill_db` VALUES(1,'0',0,0,'0','0','0',9,'0','no',0,'0','0','none','0','NV_BASIC','Basic Skill');
REPLACE INTO `skill_db` VALUES(2,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','SM_SWORD','Sword Mastery');
REPLACE INTO `skill_db` VALUES(3,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','SM_TWOHAND','Two-Handed Sword Mastery');
REPLACE INTO `skill_db` VALUES(4,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','SM_RECOVERY','Increase HP Recovery');
REPLACE INTO `skill_db` VALUES(5,'-1',6,1,'-1','0','0',10,'1','no',0,'0','0','weapon','0','SM_BASH','Bash');
REPLACE INTO `skill_db` VALUES(6,'9',6,1,'0','1','0',10,'1','no',0,'0','0','none','0','SM_PROVOKE','Provoke');
REPLACE INTO `skill_db` VALUES(7,'0',6,4,'3','0x2','2',10,'1','no',0,'0','0','weapon','2','SM_MAGNUM','Magnum Break');
REPLACE INTO `skill_db` VALUES(8,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','weapon','0','SM_ENDURE','Endure');
REPLACE INTO `skill_db` VALUES(9,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','MG_SRECOVERY','Increase SP Recovery');
REPLACE INTO `skill_db` VALUES(10,'0',6,4,'3','0x3','3',1,'1','yes',0,'0','0','magic','0','MG_SIGHT','Sight');
REPLACE INTO `skill_db` VALUES(11,'9',6,1,'8','0x6','1',10,'1','yes',0,'0','0','magic','0','MG_NAPALMBEAT','Napalm Beat');
REPLACE INTO `skill_db` VALUES(12,'9',8,2,'8','0x1','0',10,'1','yes',0,'0','0','magic','0','MG_SAFETYWALL','Safety Wall');
REPLACE INTO `skill_db` VALUES(13,'9',8,1,'8','0','0',10,'1:1:2:2:3:3:4:4:5:5','yes',0,'0','0','magic','0','MG_SOULSTRIKE','Soul Strike');
REPLACE INTO `skill_db` VALUES(14,'9',8,1,'1','0','0',10,'1:2:3:4:5:6:7:8:9:10','yes',0,'0','0','magic','0','MG_COLDBOLT','Cold Bolt');
REPLACE INTO `skill_db` VALUES(15,'9',6,1,'1','0','0',10,'1','yes',0,'0','0','magic','0','MG_FROSTDIVER','Frost Diver');
REPLACE INTO `skill_db` VALUES(16,'2',6,1,'2','0x1','0',10,'1','yes',0,'0','0','magic','0','MG_STONECURSE','Stone Curse');
REPLACE INTO `skill_db` VALUES(17,'9',6,1,'3','0x2','2',10,'1','yes',0,'0','0','magic','0','MG_FIREBALL','Fire Ball');
REPLACE INTO `skill_db` VALUES(18,'9',6,2,'3','0','0',10,'1','yes',0,'0','3','magic','2','MG_FIREWALL','Fire Wall');
REPLACE INTO `skill_db` VALUES(19,'9',8,1,'3','0','0',10,'1:2:3:4:5:6:7:8:9:10','yes',0,'0','0','magic','0','MG_FIREBOLT','Fire Bolt');
REPLACE INTO `skill_db` VALUES(20,'9',8,1,'4','0','0',10,'1:2:3:4:5:6:7:8:9:10','yes',0,'0','0','magic','0','MG_LIGHTNINGBOLT','Lightning Bolt');
REPLACE INTO `skill_db` VALUES(21,'9',8,2,'4','0','0',10,'1:2:3:4:5:6:7:8:9:10','yes',0,'0','0','magic','0','MG_THUNDERSTORM','Thunderstorm');
REPLACE INTO `skill_db` VALUES(22,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','AL_DP','Divine Protection');
REPLACE INTO `skill_db` VALUES(23,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','AL_DEMONBANE','Demon Bane');
REPLACE INTO `skill_db` VALUES(24,'0',6,4,'6','0x3','2',1,'1','yes',0,'0','0','magic','0','AL_RUWACH','Ruwach');
REPLACE INTO `skill_db` VALUES(25,'9',6,2,'0','0x1','0',1,'1','yes',0,'0','0','magic','0','AL_PNEUMA','Pneuma');
REPLACE INTO `skill_db` VALUES(26,'0',6,4,'0','0x1','0',2,'1','yes',0,'0','0','magic','0','AL_TELEPORT','Teleport');
REPLACE INTO `skill_db` VALUES(27,'9',6,2,'0','0x1','0',4,'1','yes',0,'0','3','magic','0','AL_WARP','Warp Portal');
REPLACE INTO `skill_db` VALUES(28,'9',6,16,'6','0x21','0',10,'1','yes',0,'0','0','magic','0','AL_HEAL','Heal');
REPLACE INTO `skill_db` VALUES(29,'9',6,16,'0','0x1','0',10,'1','yes',0,'0','0','magic','0','AL_INCAGI','Increase AGI');
REPLACE INTO `skill_db` VALUES(30,'9',6,1,'0','0x1','0',10,'1','yes',0,'0','0','magic','0','AL_DECAGI','Decrease AGI');
REPLACE INTO `skill_db` VALUES(31,'0',6,4,'0','0x1','0',1,'1','yes',0,'0','0','magic','0','AL_HOLYWATER','Aqua Benedicta');
REPLACE INTO `skill_db` VALUES(32,'0',6,4,'0','0x3','15',10,'1','yes',0,'0','0','magic','0','AL_CRUCIS','Signum Crucis');
REPLACE INTO `skill_db` VALUES(33,'0',6,4,'0','0x3','-1',10,'1','yes',0,'0','0','magic','0','AL_ANGELUS','Angelus');
REPLACE INTO `skill_db` VALUES(34,'9',6,16,'0','0x1','0',10,'1','yes',0,'0','0','magic','0','AL_BLESSING','Blessing');
REPLACE INTO `skill_db` VALUES(35,'9',6,16,'0','0x1','0',1,'1','yes',0,'0','0','magic','0','AL_CURE','Cure');
REPLACE INTO `skill_db` VALUES(36,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','MC_INCCARRY','Enlarge Weight Limit');
REPLACE INTO `skill_db` VALUES(37,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','MC_DISCOUNT','Discount');
REPLACE INTO `skill_db` VALUES(38,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','MC_OVERCHARGE','Overcharge');
REPLACE INTO `skill_db` VALUES(39,'1',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','MC_PUSHCART','Pushcart');
REPLACE INTO `skill_db` VALUES(40,'1',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','MC_IDENTIFY','Item Appraisal');
REPLACE INTO `skill_db` VALUES(41,'1',6,4,'0','0x1','0',10,'1','no',0,'0','0','none','0','MC_VENDING','Vending');
REPLACE INTO `skill_db` VALUES(42,'-1',6,1,'-1','0','0',10,'1','no',0,'0','0','weapon','0','MC_MAMMONITE','Mammonite');
REPLACE INTO `skill_db` VALUES(43,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','AC_OWL','Owl''s Eye');
REPLACE INTO `skill_db` VALUES(44,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','AC_VULTURE','Vulture''s Eye');
REPLACE INTO `skill_db` VALUES(45,'0',6,4,'0','0x3','3',10,'1','no',0,'0','0','weapon','0','AC_CONCENTRATION','Improve Concentration');
REPLACE INTO `skill_db` VALUES(46,'-9',8,1,'-1','0','0',10,'2','no',0,'0','0','weapon','0','AC_DOUBLE','Double Strafe');
REPLACE INTO `skill_db` VALUES(47,'-9',6,2,'-1','0x2','2:2:2:2:2:3:3:3:3:3',10,'1','no',0,'0x2000','0','weapon','2','AC_SHOWER','Arrow Shower');
REPLACE INTO `skill_db` VALUES(48,'-1',8,0,'-1','0','0',10,'2','no',0,'0','0','weapon','0','TF_DOUBLE','Double Attack');
REPLACE INTO `skill_db` VALUES(49,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','TF_MISS','Improve Dodge');
REPLACE INTO `skill_db` VALUES(50,'1',6,1,'0','1','0',10,'1','no',0,'0','0','weapon','0','TF_STEAL','Steal');
REPLACE INTO `skill_db` VALUES(51,'1',6,4,'0','1','0',10,'1','no',0,'0','0','none','0','TF_HIDING','Hiding');
REPLACE INTO `skill_db` VALUES(52,'-2',6,1,'5','0','0',10,'1','no',0,'0','0','weapon','0','TF_POISON','Envenom');
REPLACE INTO `skill_db` VALUES(53,'9',6,16,'5','0x1','0',1,'1','no',0,'0','0','weapon','0','TF_DETOXIFY','Detoxify');
REPLACE INTO `skill_db` VALUES(54,'9',6,16,'6','0x1','0',4,'1','yes',0,'0','0','magic','0','ALL_RESURRECTION','Resurrection');
REPLACE INTO `skill_db` VALUES(55,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','KN_SPEARMASTERY','Spear Mastery');
REPLACE INTO `skill_db` VALUES(56,'-2',8,1,'-1','0','0',10,'3','no',0,'0','0','weapon','0','KN_PIERCE','Pierce');
REPLACE INTO `skill_db` VALUES(57,'-2',6,1,'-1','0x1','0',10,'1','no',0,'0','0','weapon','3','KN_BRANDISHSPEAR','Brandish Spear');
REPLACE INTO `skill_db` VALUES(58,'-4',6,1,'-1','0x2','0',10,'1','no',0,'0','0','weapon','6','KN_SPEARSTAB','Spear Stab');
REPLACE INTO `skill_db` VALUES(59,'3:5:7:9:11',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','KN_SPEARBOOMERANG','Spear Boomerang');
REPLACE INTO `skill_db` VALUES(60,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','weapon','0','KN_TWOHANDQUICKEN','Twohand Quicken');
REPLACE INTO `skill_db` VALUES(61,'0',6,4,'-1','0x20','0',5,'1','no',0,'0','0','weapon','0','KN_AUTOCOUNTER','Counter Attack');
REPLACE INTO `skill_db` VALUES(62,'-2',6,1,'-1','0x2','1',10,'1','no',0,'0','0','weapon','1','KN_BOWLINGBASH','Bowling Bash');
REPLACE INTO `skill_db` VALUES(63,'0',0,0,'0','0','0',1,'0','no',0,'0','0','weapon','0','KN_RIDING','Peco Peco Riding');
REPLACE INTO `skill_db` VALUES(64,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','KN_CAVALIERMASTERY','Cavalier Mastery');
REPLACE INTO `skill_db` VALUES(65,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','PR_MACEMASTERY','Mace Mastery');
REPLACE INTO `skill_db` VALUES(66,'9',6,16,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','PR_IMPOSITIO','Impositio Manus');
REPLACE INTO `skill_db` VALUES(67,'9',6,16,'0','0x1','0',3,'1','yes',0,'0x200','0','magic','0','PR_SUFFRAGIUM','Suffragium');
REPLACE INTO `skill_db` VALUES(68,'9',6,16,'6','0x31','0',5,'1','yes',0,'0','0','magic','0','PR_ASPERSIO','Aspersio');
REPLACE INTO `skill_db` VALUES(69,'9',6,2,'0','0x23','1',5,'1','yes',0,'0x40','0','magic','0','PR_BENEDICTIO','B.S. Sacramenti');
REPLACE INTO `skill_db` VALUES(70,'9',6,2,'6','0x21','0',10,'1','yes',0,'0','0','magic','1','PR_SANCTUARY','Sanctuary');
REPLACE INTO `skill_db` VALUES(71,'9',6,16,'0','0x1','0',4,'1','yes',0,'0','0','magic','0','PR_SLOWPOISON','Slow Poison');
REPLACE INTO `skill_db` VALUES(72,'9',6,16,'0','0x1','0',1,'1','yes',0,'0','0','magic','0','PR_STRECOVERY','Status Recovery');
REPLACE INTO `skill_db` VALUES(73,'9',6,16,'0','0x1','0',10,'1','yes',0,'0','0','magic','0','PR_KYRIE','Kyrie Eleison');
REPLACE INTO `skill_db` VALUES(74,'0',6,4,'0','0x3','-1',5,'1','yes',0,'0','0','magic','0','PR_MAGNIFICAT','Magnificat');
REPLACE INTO `skill_db` VALUES(75,'0',6,4,'0','0x3','-1',5,'1','yes',0,'0','0','magic','0','PR_GLORIA','Gloria');
REPLACE INTO `skill_db` VALUES(76,'5',6,1,'0','0x1','0',10,'0','yes',0,'0','0','magic','0','PR_LEXDIVINA','Lex Divina');
REPLACE INTO `skill_db` VALUES(77,'5',6,1,'6','0x28','0',10,'1','yes',0,'0','0','magic','0','PR_TURNUNDEAD','Turn Undead');
REPLACE INTO `skill_db` VALUES(78,'9',6,1,'0','0x1','0',1,'0','yes',0,'0','0','magic','0','PR_LEXAETERNA','Lex Aeterna');
REPLACE INTO `skill_db` VALUES(79,'9',8,2,'6','0','0',10,'1:2:3:4:5:6:7:8:9:10','yes',0,'0','0','magic','0','PR_MAGNUS','Magnus Exorcismus');
REPLACE INTO `skill_db` VALUES(80,'9',8,2,'3','0x20','1:1:1:1:1:2:2:2:2:2:2',10,'-3:-4:-5:-6:-7:-8:-9:-10:-11:-12:-12','yes',0,'0','5','magic','0','WZ_FIREPILLAR','Fire Pillar');
REPLACE INTO `skill_db` VALUES(81,'0',6,4,'3','0','3',10,'1','yes',0,'0','0','magic','5','WZ_SIGHTRASHER','Sightrasher');
REPLACE INTO `skill_db` VALUES(83,'9',8,2,'3','0','3:3:3:3:3:3:3:3:3:3:14',10,'1:1:2:2:3:3:4:4:5:5:15','yes',0,'0','0','magic','0','WZ_METEOR','Meteor Storm');
REPLACE INTO `skill_db` VALUES(84,'9',8,1,'4','0','0',10,'3:4:5:6:7:8:9:10:11:12','yes',0,'0','0','magic','2:3:3:4:4:5:5:6:6:7','WZ_JUPITEL','Jupitel Thunder');
REPLACE INTO `skill_db` VALUES(85,'9',8,2,'4','0','0',10,'-10','yes',0,'0','0','magic','0','WZ_VERMILION','Lord of Vermilion');
REPLACE INTO `skill_db` VALUES(86,'9',8,1,'1','0','0',5,'1','yes',0,'0','0','magic','0','WZ_WATERBALL','Water Ball');
REPLACE INTO `skill_db` VALUES(87,'9',6,2,'1','0x1','0',10,'1','yes',0,'0','0','magic','0','WZ_ICEWALL','Ice Wall');
REPLACE INTO `skill_db` VALUES(88,'0',6,4,'1','0x2','2',10,'1','yes',0,'0','0','magic','0','WZ_FROSTNOVA','Frost Nova');
REPLACE INTO `skill_db` VALUES(89,'9',6,2,'1','0','0',10,'1','yes',0,'0','0','magic','2','WZ_STORMGUST','Storm Gust');
REPLACE INTO `skill_db` VALUES(90,'9',8,1,'2','0','0',5,'1:2:3:4:5','yes',0,'0','0','magic','0','WZ_EARTHSPIKE','Earth Spike');
REPLACE INTO `skill_db` VALUES(91,'9',8,2,'2','0','0',5,'1:2:3:4:5','yes',0,'0','0','magic','0','WZ_HEAVENDRIVE','Heaven''s Drive');
REPLACE INTO `skill_db` VALUES(92,'9',6,2,'2','0x1','0',5,'1','yes',0,'0','3','magic','0','WZ_QUAGMIRE','Quagmire');
REPLACE INTO `skill_db` VALUES(93,'9',6,1,'0','0x1','0',1,'1','yes',0,'0','0','magic','0','WZ_ESTIMATION','Sense');
REPLACE INTO `skill_db` VALUES(94,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','BS_IRON','Iron Tempering');
REPLACE INTO `skill_db` VALUES(95,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','BS_STEEL','Steel Tempering');
REPLACE INTO `skill_db` VALUES(96,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','BS_ENCHANTEDSTONE','Enchanted Stone Craft');
REPLACE INTO `skill_db` VALUES(97,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','BS_ORIDEOCON','Oridecon Research');
REPLACE INTO `skill_db` VALUES(98,'0',0,0,'0','0','0',3,'0','no',0,'0','0','weapon','0','BS_DAGGER','Smith Dagger');
REPLACE INTO `skill_db` VALUES(99,'0',0,0,'0','0','0',3,'0','no',0,'0','0','weapon','0','BS_SWORD','Smith Sword');
REPLACE INTO `skill_db` VALUES(100,'0',0,0,'0','0','0',3,'0','no',0,'0','0','weapon','0','BS_TWOHANDSWORD','Smith Two-handed Sword');
REPLACE INTO `skill_db` VALUES(101,'0',0,0,'0','0','0',3,'0','no',0,'0','0','weapon','0','BS_AXE','Smith Axe');
REPLACE INTO `skill_db` VALUES(102,'0',0,0,'0','0','0',3,'0','no',0,'0','0','weapon','0','BS_MACE','Smith Mace');
REPLACE INTO `skill_db` VALUES(103,'0',0,0,'0','0','0',3,'0','no',0,'0','0','weapon','0','BS_KNUCKLE','Smith Knucklebrace');
REPLACE INTO `skill_db` VALUES(104,'0',0,0,'0','0','0',3,'0','no',0,'0','0','weapon','0','BS_SPEAR','Smith Spear');
REPLACE INTO `skill_db` VALUES(105,'0',0,0,'0','0','0',1,'0','no',0,'0','0','weapon','0','BS_HILTBINDING','Hilt Binding');
REPLACE INTO `skill_db` VALUES(106,'0',0,0,'0','0','0',1,'0','no',0,'0','0','weapon','0','BS_FINDINGORE','Ore Discovery');
REPLACE INTO `skill_db` VALUES(107,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','BS_WEAPONRESEARCH','Weaponry Research');
REPLACE INTO `skill_db` VALUES(108,'2',6,16,'0','0x1','0',1,'1','yes',0,'0','0','weapon','0','BS_REPAIRWEAPON','Weapon Repair');
REPLACE INTO `skill_db` VALUES(109,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','BS_SKINTEMPER','Skin Tempering');
REPLACE INTO `skill_db` VALUES(110,'1',6,2,'0','0x3','2:2:2:2:2:14',5,'1','no',0,'0','0','weapon','0','BS_HAMMERFALL','Hammer Fall');
REPLACE INTO `skill_db` VALUES(111,'0',6,4,'0','0x3','-1',5,'1','no',0,'0','0','weapon','0','BS_ADRENALINE','Adrenaline Rush');
REPLACE INTO `skill_db` VALUES(112,'0',6,4,'0','0x3','-1',5,'1','no',0,'0','0','weapon','0','BS_WEAPONPERFECT','Weapon Perfection');
REPLACE INTO `skill_db` VALUES(113,'0',6,4,'0','0x3','-1',5,'1','no',0,'0','0','weapon','0','BS_OVERTHRUST','Power-Thrust');
REPLACE INTO `skill_db` VALUES(114,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','BS_MAXIMIZE','Maximize Power');
REPLACE INTO `skill_db` VALUES(115,'3',6,2,'0','0x1','0',5,'1','no',0,'0x80','0','misc','6:7:8:9:10','HT_SKIDTRAP','Skid Trap');
REPLACE INTO `skill_db` VALUES(116,'3',6,2,'2','0x42','1',5,'1','no',0,'0x80','0','misc','0','HT_LANDMINE','Land Mine');
REPLACE INTO `skill_db` VALUES(117,'3',6,2,'0','0x1','0',5,'1','no',0,'0x80','0','misc','0','HT_ANKLESNARE','Ankle Snare');
REPLACE INTO `skill_db` VALUES(118,'3',6,2,'0','0x2','1',5,'1','no',0,'0x80','0','misc','0','HT_SHOCKWAVE','Shockwave Trap');
REPLACE INTO `skill_db` VALUES(119,'3',6,2,'0','0x3','2',5,'1','no',0,'0x80','0','misc','0','HT_SANDMAN','Sandman');
REPLACE INTO `skill_db` VALUES(120,'3',6,2,'0','0x3','1',5,'1','no',0,'0x80','0','misc','0','HT_FLASHER','Flasher');
REPLACE INTO `skill_db` VALUES(121,'3',6,2,'1','0x42','1',5,'1','no',0,'0x80','0','weapon','0','HT_FREEZINGTRAP','Freezing Trap');
REPLACE INTO `skill_db` VALUES(122,'3',6,2,'4','0x42','1',5,'1','no',0,'0x80','0','misc','0','HT_BLASTMINE','Blast Mine');
REPLACE INTO `skill_db` VALUES(123,'3',6,2,'3','0x42','2',5,'1','no',0,'0x80','0','misc','0','HT_CLAYMORETRAP','Claymore Trap');
REPLACE INTO `skill_db` VALUES(124,'2',6,32,'0','0x1','0',1,'1','no',0,'0','0','misc','0','HT_REMOVETRAP','Remove Trap');
REPLACE INTO `skill_db` VALUES(125,'3',6,2,'0','0x1','0',1,'1','no',0,'0x80','0','misc','0','HT_TALKIEBOX','Talkie Box');
REPLACE INTO `skill_db` VALUES(126,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','HT_BEASTBANE','Beast Bane');
REPLACE INTO `skill_db` VALUES(127,'0',0,0,'0','0','0',1,'0','no',0,'0','0','misc','0','HT_FALCON','Falconry Mastery');
REPLACE INTO `skill_db` VALUES(128,'0',0,0,'0','0','0',10,'0','no',0,'0','0','misc','0','HT_STEELCROW','Steel Crow');
REPLACE INTO `skill_db` VALUES(129,'5',8,1,'0','0x42','1',5,'1:2:3:4:5','yes',0,'0','0','misc','0','HT_BLITZBEAT','Blitz Beat');
REPLACE INTO `skill_db` VALUES(130,'3:5:7:9',6,2,'0','0x3','3',4,'1','no',0,'0','0','misc','0','HT_DETECTING','Detect');
REPLACE INTO `skill_db` VALUES(131,'4:5:6:7:8',6,32,'0','0x1','0',5,'1','no',0,'0','0','misc','0','HT_SPRINGTRAP','Spring Trap');
REPLACE INTO `skill_db` VALUES(132,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','AS_RIGHT','Righthand Mastery');
REPLACE INTO `skill_db` VALUES(133,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','AS_LEFT','Lefthand Mastery');
REPLACE INTO `skill_db` VALUES(134,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','AS_KATAR','Katar Mastery');
REPLACE INTO `skill_db` VALUES(135,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','weapon','0','AS_CLOAKING','Cloaking');
REPLACE INTO `skill_db` VALUES(136,'1',8,1,'-1','0','0',10,'-8','no',0,'0','0','weapon','0','AS_SONICBLOW','Sonic Blow');
REPLACE INTO `skill_db` VALUES(137,'3:4:5:6:7',6,1,'-1','0x2','1',5,'1','no',0,'0','0','weapon','0','AS_GRIMTOOTH','Grimtooth');
REPLACE INTO `skill_db` VALUES(138,'1',6,16,'5','0x1','0',10,'1','no',0,'0x400','0','weapon','0','AS_ENCHANTPOISON','Enchant Poison');
REPLACE INTO `skill_db` VALUES(139,'0',6,4,'0','0','0',10,'1','no',0,'0','0','weapon','0','AS_POISONREACT','Poison React');
REPLACE INTO `skill_db` VALUES(140,'2',6,2,'5','0x1','0',10,'1','no',0,'0','0','weapon','0','AS_VENOMDUST','Venom Dust');
REPLACE INTO `skill_db` VALUES(141,'1',6,1,'-1','0x51','2',10,'1','yes',0,'0','0','weapon','0','AS_SPLASHER','Venom Splasher');
REPLACE INTO `skill_db` VALUES(142,'0',6,4,'0','0x1','0',1,'1','no',0,'0x1','0','none','0','NV_FIRSTAID','First Aid');
REPLACE INTO `skill_db` VALUES(143,'0',6,4,'0','0x1','0',1,'1','no',0,'0x1','0','none','0','NV_TRICKDEAD','Play Dead');
REPLACE INTO `skill_db` VALUES(144,'0',0,0,'0','0','0',1,'0','no',0,'0x1','0','none','0','SM_MOVINGRECOVERY','Moving HP-Recovery');
REPLACE INTO `skill_db` VALUES(145,'0',0,0,'0','0','0',1,'0','no',0,'0x1','0','weapon','0','SM_FATALBLOW','Fatal Blow');
REPLACE INTO `skill_db` VALUES(146,'0',6,4,'0','0x1','0',1,'1','no',0,'0x1','0','weapon','0','SM_AUTOBERSERK','Auto Berserk');
REPLACE INTO `skill_db` VALUES(147,'0',0,4,'0','0x1','0',1,'0','no',0,'0x1','0','weapon','0','AC_MAKINGARROW','Arrow Crafting');
REPLACE INTO `skill_db` VALUES(148,'-9',6,1,'-1','0x2','0',1,'1','no',0,'0x1','0','weapon','6','AC_CHARGEARROW','Arrow Repel');
REPLACE INTO `skill_db` VALUES(149,'1',6,1,'2','0','0',1,'1','no',0,'0x1','0','weapon','0','TF_SPRINKLESAND','Sand Attack');
REPLACE INTO `skill_db` VALUES(150,'0',6,4,'0','0x1','0',1,'1','no',0,'0x1','0','weapon','5','TF_BACKSLIDING','Back Slide');
REPLACE INTO `skill_db` VALUES(151,'0',6,4,'0','0x1','0',1,'1','no',0,'0x1','0','none','0','TF_PICKSTONE','Find Stone');
REPLACE INTO `skill_db` VALUES(152,'7',6,1,'0','0x40','0',1,'1','no',0,'0x1','0','misc','0','TF_THROWSTONE','Stone Fling');
REPLACE INTO `skill_db` VALUES(153,'1',6,1,'-1','0x2','1',1,'1','no',0,'0x1','0','weapon','2','MC_CARTREVOLUTION','Cart Revolution');
REPLACE INTO `skill_db` VALUES(154,'0',6,4,'0','0x1','0',1,'1','no',0,'0x1','0','none','0','MC_CHANGECART','Change Cart');
REPLACE INTO `skill_db` VALUES(155,'0',6,4,'0','0x1','0',1,'1','no',0,'0x1','0','weapon','0','MC_LOUD','Crazy Uproar');
REPLACE INTO `skill_db` VALUES(156,'9',6,1,'6','0','0',1,'1','yes',0,'0x1','0','magic','0','AL_HOLYLIGHT','Holy Light');
REPLACE INTO `skill_db` VALUES(157,'0',6,4,'0','0x1','0',1,'1','yes',0,'0x1','0','magic','0','MG_ENERGYCOAT','Energy Coat');
REPLACE INTO `skill_db` VALUES(158,'3',6,1,'-1','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_PIERCINGATT','Piercing Attack');
REPLACE INTO `skill_db` VALUES(159,'-1',6,1,'-1','0x40','0',5,'1','no',0,'0x2','0','weapon','0','NPC_MENTALBREAKER','Spirit Destruction');
REPLACE INTO `skill_db` VALUES(160,'9',6,1,'0','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_RANGEATTACK','Stand off attack');
REPLACE INTO `skill_db` VALUES(161,'0',0,4,'0','0x1','0',1,'1','no',0,'0x2','0','magic','0','NPC_ATTRICHANGE','Attribute Change');
REPLACE INTO `skill_db` VALUES(162,'0',0,4,'1','0x1','0',1,'1','no',0,'0x2','0','magic','0','NPC_CHANGEWATER','Water Attribute Change');
REPLACE INTO `skill_db` VALUES(163,'0',0,4,'2','0x1','0',1,'1','no',0,'0x2','0','magic','0','NPC_CHANGEGROUND','Earth Attribute Change');
REPLACE INTO `skill_db` VALUES(164,'0',0,4,'3','0x1','0',1,'1','no',0,'0x2','0','magic','0','NPC_CHANGEFIRE','Fire Attribute Change');
REPLACE INTO `skill_db` VALUES(165,'0',0,4,'4','0x1','0',1,'1','no',0,'0x2','0','magic','0','NPC_CHANGEWIND','Wind Attribute Change');
REPLACE INTO `skill_db` VALUES(166,'0',0,4,'5','0x1','0',1,'1','no',0,'0x2','0','magic','0','NPC_CHANGEPOISON','Poison Attribute Change');
REPLACE INTO `skill_db` VALUES(167,'0',0,4,'6','0x1','0',1,'1','no',0,'0x2','0','magic','0','NPC_CHANGEHOLY','Holy Attribute Change');
REPLACE INTO `skill_db` VALUES(168,'0',0,4,'7','0x1','0',1,'1','no',0,'0x2','0','magic','0','NPC_CHANGEDARKNESS','Shadow Attribute Change');
REPLACE INTO `skill_db` VALUES(169,'0',0,4,'8','0x1','0',1,'1','no',0,'0x2','0','magic','0','NPC_CHANGETELEKINESIS','Ghost Attribute Change');
REPLACE INTO `skill_db` VALUES(170,'-9',6,1,'-1','0x20','0',10,'1','no',0,'0x2','0','weapon','0','NPC_CRITICALSLASH','Defense disregard attack');
REPLACE INTO `skill_db` VALUES(171,'-9',8,1,'-1','0','0',10,'-2:-3:-4:-5:-6:-7:-8:-9:-10:-11','no',0,'0x2','0','weapon','0','NPC_COMBOATTACK','Multi-stage Attack');
REPLACE INTO `skill_db` VALUES(172,'-9',6,1,'-1','0x40','0',10,'1','no',0,'0x2','0','weapon','0','NPC_GUIDEDATTACK','Guided Attack');
REPLACE INTO `skill_db` VALUES(173,'5',6,4,'3','0xE2','5',10,'1','no',0,'0x2','0','misc','3','NPC_SELFDESTRUCTION','Suicide bombing');
REPLACE INTO `skill_db` VALUES(174,'-9',6,1,'-1','0x2','3',1,'1','no',0,'0x2','0','weapon','0','NPC_SPLASHATTACK','Splash attack');
REPLACE INTO `skill_db` VALUES(175,'0',0,4,'0','0x41','0',10,'1','no',0,'0x2','0','misc','0','NPC_SUICIDE','Suicide');
REPLACE INTO `skill_db` VALUES(176,'-9',6,1,'-1','0','0',5,'1','no',0,'0x2','0','weapon','0','NPC_POISON','Poison Attack');
REPLACE INTO `skill_db` VALUES(177,'-9',6,1,'-1','0','0',5,'1','no',0,'0x2','0','weapon','0','NPC_BLINDATTACK','Blind Attack');
REPLACE INTO `skill_db` VALUES(178,'-9',6,1,'-1','0','0',5,'1','no',0,'0x2','0','weapon','0','NPC_SILENCEATTACK','Silence Attack');
REPLACE INTO `skill_db` VALUES(179,'-9',6,1,'-1','0','0',5,'1','no',0,'0x2','0','weapon','0','NPC_STUNATTACK','Stun Attack');
REPLACE INTO `skill_db` VALUES(180,'-9',6,1,'-1','0','0',5,'1','no',0,'0x2','0','weapon','0','NPC_PETRIFYATTACK','Petrify Attack');
REPLACE INTO `skill_db` VALUES(181,'-9',6,1,'7','0','0',5,'1','no',0,'0x2','0','weapon','0','NPC_CURSEATTACK','Curse Attack');
REPLACE INTO `skill_db` VALUES(182,'-9',6,1,'-1','0','0',5,'1','no',0,'0x2','0','weapon','0','NPC_SLEEPATTACK','Sleep attack');
REPLACE INTO `skill_db` VALUES(183,'-9',6,1,'-1','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_RANDOMATTACK','Random Attack');
REPLACE INTO `skill_db` VALUES(184,'-9',6,1,'1','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_WATERATTACK','Water Attribute Attack');
REPLACE INTO `skill_db` VALUES(185,'-9',6,1,'2','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_GROUNDATTACK','Earth Attribute Attack');
REPLACE INTO `skill_db` VALUES(186,'-9',6,1,'3','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_FIREATTACK','Fire Attribute Attack');
REPLACE INTO `skill_db` VALUES(187,'-9',6,1,'4','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_WINDATTACK','Wind Attribute Attack');
REPLACE INTO `skill_db` VALUES(188,'-9',6,1,'5','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_POISONATTACK','Poison Attribute Attack');
REPLACE INTO `skill_db` VALUES(189,'-9',6,1,'6','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_HOLYATTACK','Holy Attribute Attack');
REPLACE INTO `skill_db` VALUES(190,'-9',6,1,'7','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_DARKNESSATTACK','Shadow Attribute Attack');
REPLACE INTO `skill_db` VALUES(191,'-9',6,1,'8','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_TELEKINESISATTACK','Ghost Attribute Attack');
REPLACE INTO `skill_db` VALUES(192,'-9',6,1,'-1','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_MAGICALATTACK','Demon Shock Attack');
REPLACE INTO `skill_db` VALUES(193,'0',0,4,'0','0x1','0',10,'1','no',0,'0x2','0','none','0','NPC_METAMORPHOSIS','Metamorphosis');
REPLACE INTO `skill_db` VALUES(194,'0',0,4,'0','0x1','0',10,'1','no',0,'0x2','0','none','0','NPC_PROVOCATION','Provocation');
REPLACE INTO `skill_db` VALUES(195,'0',6,4,'0','0x50','0',10,'1','no',0,'0x2','0','misc','0','NPC_SMOKING','Smoking');
REPLACE INTO `skill_db` VALUES(196,'0',0,4,'0','0x1','0',10,'1','no',0,'0x2','0','magic','0','NPC_SUMMONSLAVE','Follower Summons');
REPLACE INTO `skill_db` VALUES(197,'0',0,4,'0','0x1','0',10,'1','no',0,'0x2','0','none','0','NPC_EMOTION','Emotion');
REPLACE INTO `skill_db` VALUES(198,'0',0,4,'0','0x1','0',10,'1','no',0,'0x2','0','magic','0','NPC_TRANSFORMATION','Transformation');
REPLACE INTO `skill_db` VALUES(199,'9',6,1,'7','0x40','0',1,'1','no',0,'0x2','0','weapon','0','NPC_BLOODDRAIN','Sucking Blood');
REPLACE INTO `skill_db` VALUES(200,'9',6,1,'7','0','0',1,'1','no',0,'0x2','0','magic','0','NPC_ENERGYDRAIN','Energy Drain');
REPLACE INTO `skill_db` VALUES(201,'0',0,4,'0','0x1','0',1,'1','no',0,'0x2','0','weapon','0','NPC_KEEPING','Keeping');
REPLACE INTO `skill_db` VALUES(202,'9',6,1,'7','0','0',5,'1','no',0,'0x2','0','misc','0','NPC_DARKBREATH','Dark Breath');
REPLACE INTO `skill_db` VALUES(203,'9',6,1,'7','0x1','0',10,'1','no',0,'0x2','0','magic','0','NPC_DARKBLESSING','Dark Blessing');
REPLACE INTO `skill_db` VALUES(204,'0',0,4,'0','0x1','0',1,'1','no',0,'0x2','0','magic','0','NPC_BARRIER','Barrier');
REPLACE INTO `skill_db` VALUES(205,'0',0,4,'0','0x1','0',1,'1','no',0,'0x2','0','weapon','0','NPC_DEFENDER','Defender');
REPLACE INTO `skill_db` VALUES(206,'1',6,1,'-1','0x1','0',5,'1','no',0,'0x2','0','weapon','0','NPC_LICK','Lick');
REPLACE INTO `skill_db` VALUES(207,'9',0,1,'0','0x1','0',10,'1','no',0,'0x2','0','magic','0','NPC_HALLUCINATION','Hallucination');
REPLACE INTO `skill_db` VALUES(208,'0',0,4,'0','0x1','0',1,'1','no',0,'0x2','0','magic','0','NPC_REBIRTH','Rebirth');
REPLACE INTO `skill_db` VALUES(209,'0',0,4,'0','0x1','0',10,'1','no',0,'0x2','0','magic','0','NPC_SUMMONMONSTER','Monster Summons');
REPLACE INTO `skill_db` VALUES(210,'0',0,0,'-1','0','0',10,'0','no',0,'0','0','weapon','0','RG_SNATCHER','Gank');
REPLACE INTO `skill_db` VALUES(211,'1',6,1,'0','0x1','0',10,'1','no',0,'0','0','weapon','0','RG_STEALCOIN','Mug');
REPLACE INTO `skill_db` VALUES(212,'-1',6,1,'-1','0x40','0',10,'1','no',0,'0','0','weapon','0','RG_BACKSTAP','Back Stab');
REPLACE INTO `skill_db` VALUES(213,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','RG_TUNNELDRIVE','Stalk');
REPLACE INTO `skill_db` VALUES(214,'0',6,4,'-1','0x2','3',5,'1','no',0,'0','0','weapon','0','RG_RAID','Sightless Mind');
REPLACE INTO `skill_db` VALUES(215,'1',6,1,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','RG_STRIPWEAPON','Divest Weapon');
REPLACE INTO `skill_db` VALUES(216,'1',6,1,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','RG_STRIPSHIELD','Divest Shield');
REPLACE INTO `skill_db` VALUES(217,'1',6,1,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','RG_STRIPARMOR','Divest Armor');
REPLACE INTO `skill_db` VALUES(218,'1',6,1,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','RG_STRIPHELM','Divest Helm');
REPLACE INTO `skill_db` VALUES(219,'1',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','RG_INTIMIDATE','Snatch');
REPLACE INTO `skill_db` VALUES(220,'1',6,2,'0','0x1','0',1,'1','no',0,'0','0','none','0','RG_GRAFFITI','Scribble');
REPLACE INTO `skill_db` VALUES(221,'0',6,2,'0','0x1','0',5,'1','no',0,'0','0','none','0','RG_FLAGGRAFFITI','Piece');
REPLACE INTO `skill_db` VALUES(222,'1',6,2,'0','0x3','5',1,'1','no',0,'0','0','none','0','RG_CLEANER','Remover');
REPLACE INTO `skill_db` VALUES(223,'0',0,0,'0','0','1',1,'0','no',0,'0','0','none','0','RG_GANGSTER','Slyness');
REPLACE INTO `skill_db` VALUES(224,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','RG_COMPULSION','Haggle');
REPLACE INTO `skill_db` VALUES(225,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','RG_PLAGIARISM','Intimidate');
REPLACE INTO `skill_db` VALUES(226,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','AM_AXEMASTERY','Axe Mastery');
REPLACE INTO `skill_db` VALUES(227,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','AM_LEARNINGPOTION','Potion Research');
REPLACE INTO `skill_db` VALUES(228,'0',6,4,'0','0x1','0',10,'0','no',0,'0','0','none','0','AM_PHARMACY','Prepare Potion');
REPLACE INTO `skill_db` VALUES(229,'9',6,2,'3','0x9','0',5,'1','yes',0,'0','0','weapon','0','AM_DEMONSTRATION','Bomb');
REPLACE INTO `skill_db` VALUES(230,'9',6,1,'0','0x48','0',5,'1','yes',0,'0','0','weapon','0','AM_ACIDTERROR','Acid Terror');
REPLACE INTO `skill_db` VALUES(231,'9',6,16,'0','0x1','0',5,'1','yes',0,'0xC00','0','none','0','AM_POTIONPITCHER','Aid Potion');
REPLACE INTO `skill_db` VALUES(232,'4',6,2,'0','0x1','0',5,'1','no',0,'0','5','none','0','AM_CANNIBALIZE','Summon Flora');
REPLACE INTO `skill_db` VALUES(233,'1',6,2,'0','0x1','0',5,'1','no',0,'0','3','none','0','AM_SPHEREMINE','Summon Marine Sphere');
REPLACE INTO `skill_db` VALUES(234,'1',6,16,'0','0x1','0',5,'1','yes',0,'0','0','weapon','0','AM_CP_WEAPON','Alchemical Weapon');
REPLACE INTO `skill_db` VALUES(235,'1',6,16,'0','0x1','0',5,'1','yes',0,'0','0','weapon','0','AM_CP_SHIELD','Synthesized Shield');
REPLACE INTO `skill_db` VALUES(236,'1',6,16,'0','0x1','0',5,'1','yes',0,'0','0','weapon','0','AM_CP_ARMOR','Synthetic Armor');
REPLACE INTO `skill_db` VALUES(237,'1',6,16,'0','0x1','0',5,'1','yes',0,'0','0','weapon','0','AM_CP_HELM','Biochemical Helm');
REPLACE INTO `skill_db` VALUES(238,'0',0,0,'0','0','0',1,'0','no',0,'0x1','0','none','0','AM_BIOETHICS','Bioethics');
/* REPLACE INTO `skill_db` VALUES(239,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','AM_BIOTECHNOLOGY','Biotechnology');*/
/* REPLACE INTO `skill_db` VALUES(240,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','AM_CREATECREATURE','Life Creation');*/
/* REPLACE INTO `skill_db` VALUES(241,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','AM_CULTIVATION','Cultivation');*/
/* REPLACE INTO `skill_db` VALUES(242,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','AM_FLAMECONTROL','Flame Control');*/
REPLACE INTO `skill_db` VALUES(243,'0',0,4,'0','0x1','1',1,'0','no',0,'0','0','none','0','AM_CALLHOMUN','Call Homunculus');
REPLACE INTO `skill_db` VALUES(244,'0',0,4,'0','0x1','0',1,'0','no',0,'0','0','none','0','AM_REST','Vaporize');
/* REPLACE INTO `skill_db` VALUES(245,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','AM_DRILLMASTER','Drillmaster');*/
/* REPLACE INTO `skill_db` VALUES(246,'9',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','AM_HEALHOMUN','Heal Homunculus');*/
REPLACE INTO `skill_db` VALUES(247,'9',6,4,'0','0x1','1',5,'0','no',0,'0','0','none','0','AM_RESURRECTHOMUN','Homunculus Resurrection');
REPLACE INTO `skill_db` VALUES(248,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','CR_TRUST','Faith');
REPLACE INTO `skill_db` VALUES(249,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','weapon','0','CR_AUTOGUARD','Guard');
REPLACE INTO `skill_db` VALUES(250,'3',6,1,'0','0','0',5,'1','no',0,'0','0','weapon','5:6:7:8:9','CR_SHIELDCHARGE','Smite');
REPLACE INTO `skill_db` VALUES(251,'3:5:7:9:11',6,1,'0','0','0',5,'1','no',0,'0','0','weapon','0','CR_SHIELDBOOMERANG','Shield Boomerang');
REPLACE INTO `skill_db` VALUES(252,'0',6,4,'0','0','0',10,'1','no',0,'0','0','weapon','0','CR_REFLECTSHIELD','Shield Reflect');
REPLACE INTO `skill_db` VALUES(253,'-2',8,1,'6','0','0',10,'-2','no',0,'0','0','weapon','0','CR_HOLYCROSS','Holy Cross');
REPLACE INTO `skill_db` VALUES(254,'5',6,4,'6','0x48','0',10,'1','no',33,'0x100','0','magic','0','CR_GRANDCROSS','Grand Cross');
REPLACE INTO `skill_db` VALUES(255,'7:8:9:10:11',6,16,'0','0x1','0',5,'1','yes',0,'0x600','0','none','0','CR_DEVOTION','Sacrifice');
REPLACE INTO `skill_db` VALUES(256,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','none','0','CR_PROVIDENCE','Resistant Souls');
REPLACE INTO `skill_db` VALUES(257,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','CR_DEFENDER','Defending Aura');
REPLACE INTO `skill_db` VALUES(258,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','weapon','0','CR_SPEARQUICKEN','Spear Quicken');
REPLACE INTO `skill_db` VALUES(259,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','MO_IRONHAND','Iron Fists');
REPLACE INTO `skill_db` VALUES(260,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','MO_SPIRITSRECOVERY','Spiritual Cadence');
REPLACE INTO `skill_db` VALUES(261,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','MO_CALLSPIRITS','Summon Spirit Sphere');
REPLACE INTO `skill_db` VALUES(262,'9',6,16,'0','0x1','0',1,'1','yes',0,'0','0','weapon','0','MO_ABSORBSPIRITS','Absorb Spirit Sphere');
REPLACE INTO `skill_db` VALUES(263,'-1',8,0,'-1','0','0',10,'-3','no',0,'0','0','weapon','0','MO_TRIPLEATTACK','Raging Trifecta Blow');
REPLACE INTO `skill_db` VALUES(264,'18',6,2,'0','0x1','0',1,'1','no',0,'0','0','none','0','MO_BODYRELOCATION','Snap');
REPLACE INTO `skill_db` VALUES(265,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','MO_DODGE','Dodge');
REPLACE INTO `skill_db` VALUES(266,'2',6,1,'0','0x40','0',5,'1','no',0,'0','0','weapon','0','MO_INVESTIGATE','Occult Impaction');
REPLACE INTO `skill_db` VALUES(267,'9',8,1,'-1','0','0',5,'1:2:3:4:5','no',0,'0','0','weapon','0','MO_FINGEROFFENSIVE','Throw Spirit Sphere');
REPLACE INTO `skill_db` VALUES(268,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','MO_STEELBODY','Mental Strength');
REPLACE INTO `skill_db` VALUES(269,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','MO_BLADESTOP','Root');
REPLACE INTO `skill_db` VALUES(270,'0',6,4,'0','0x1','0',5,'0','no',0,'0','0','weapon','0','MO_EXPLOSIONSPIRITS','Fury');
REPLACE INTO `skill_db` VALUES(271,'-2',6,1,'0','0x60','0',5,'1','yes',0,'0','0','weapon','0','MO_EXTREMITYFIST','Asura Strike');
REPLACE INTO `skill_db` VALUES(272,'-2',8,4,'-1','0','0',5,'-4','no',0,'0x200','0','weapon','0','MO_CHAINCOMBO','Raging Quadruple Blow');
REPLACE INTO `skill_db` VALUES(273,'-2',6,4,'-1','0x2','2',5,'1','no',0,'0x200','0','weapon','0','MO_COMBOFINISH','Raging Thrust');
REPLACE INTO `skill_db` VALUES(274,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','SA_ADVANCEDBOOK','Study');
REPLACE INTO `skill_db` VALUES(275,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','magic','0','SA_CASTCANCEL','Cast Cancel');
REPLACE INTO `skill_db` VALUES(276,'0',6,4,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','SA_MAGICROD','Magic Rod');
REPLACE INTO `skill_db` VALUES(277,'9',6,1,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','SA_SPELLBREAKER','Spell Breaker');
REPLACE INTO `skill_db` VALUES(278,'0',0,0,'0','0','0',10,'0','no',0,'0','0','magic','0','SA_FREECAST','Free Cast');
REPLACE INTO `skill_db` VALUES(279,'0',6,4,'0','0x1','0',10,'1','yes',0,'0','0','magic','0','SA_AUTOSPELL','Hindsight');
REPLACE INTO `skill_db` VALUES(280,'9',6,16,'3','0x1','0',5,'1','yes',0,'0xC00','0','magic','0','SA_FLAMELAUNCHER','Endow Blaze');
REPLACE INTO `skill_db` VALUES(281,'9',6,16,'1','0x1','0',5,'1','yes',0,'0xC00','0','magic','0','SA_FROSTWEAPON','Endow Tsunami');
REPLACE INTO `skill_db` VALUES(282,'9',6,16,'4','0x1','0',5,'1','yes',0,'0xC00','0','magic','0','SA_LIGHTNINGLOADER','Endow Tornado');
REPLACE INTO `skill_db` VALUES(283,'9',6,16,'2','0x1','0',5,'1','yes',0,'0xC00','0','magic','0','SA_SEISMICWEAPON','Endow Quake');
REPLACE INTO `skill_db` VALUES(284,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','SA_DRAGONOLOGY','Dragonology');
REPLACE INTO `skill_db` VALUES(285,'2',6,2,'3','0x1','0',5,'1','yes',0,'0','0','magic','0','SA_VOLCANO','Volcano');
REPLACE INTO `skill_db` VALUES(286,'2',6,2,'1','0x1','0',5,'1','yes',0,'0','0','magic','0','SA_DELUGE','Deluge');
REPLACE INTO `skill_db` VALUES(287,'2',6,2,'4','0x1','0',5,'1','yes',0,'0','0','magic','0','SA_VIOLENTGALE','Whirlwind');
REPLACE INTO `skill_db` VALUES(288,'2',6,2,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','SA_LANDPROTECTOR','Magnetic Earth');
REPLACE INTO `skill_db` VALUES(289,'9',6,1,'0','0x1','0:0:0:0:0:-1',5,'1','yes',0,'0xE00','0','magic','0','SA_DISPELL','Dispell');
REPLACE INTO `skill_db` VALUES(290,'0',6,4,'0','0x1','0',10,'1','yes',0,'0','0','magic','0','SA_ABRACADABRA','Hocus-pocus');
REPLACE INTO `skill_db` VALUES(291,'9',6,1,'0','0x1','0',1,'1','yes',0,'0x2','0','magic','0','SA_MONOCELL','Monocell');
REPLACE INTO `skill_db` VALUES(292,'9',6,1,'0','0x1','0',1,'1','yes',0,'0x2','0','magic','0','SA_CLASSCHANGE','Class Change');
REPLACE INTO `skill_db` VALUES(293,'0',6,4,'0','0x1','0',1,'1','yes',0,'0x2','0','magic','0','SA_SUMMONMONSTER','Monster Chant');
REPLACE INTO `skill_db` VALUES(294,'9',6,4,'0','0x1','0',1,'1','yes',0,'0x2','0','magic','0','SA_REVERSEORCISH','Grampus Morph');
REPLACE INTO `skill_db` VALUES(295,'9',6,1,'0','0x1','0',1,'1','yes',0,'0x2','0','magic','0','SA_DEATH','Grim Reaper');
REPLACE INTO `skill_db` VALUES(296,'9',6,1,'0','0x1','0',1,'1','yes',0,'0x2','0','magic','0','SA_FORTUNE','Gold Digger');
REPLACE INTO `skill_db` VALUES(297,'9',6,1,'0','0x1','0',1,'1','yes',0,'0x2','0','magic','0','SA_TAMINGMONSTER','Beastly Hypnosis');
REPLACE INTO `skill_db` VALUES(298,'9',6,4,'0','0x1','0',1,'1','yes',0,'0x2','0','magic','0','SA_QUESTION','Questioning');
REPLACE INTO `skill_db` VALUES(299,'9',6,4,'0','0x1','0',1,'1','yes',0,'0x2','0','magic','0','SA_GRAVITY','Gravity');
REPLACE INTO `skill_db` VALUES(300,'9',6,4,'0','0x1','0',1,'1','yes',0,'0x2','0','magic','0','SA_LEVELUP','Leveling');
REPLACE INTO `skill_db` VALUES(301,'9',6,4,'0','0','0',1,'1','yes',0,'0x2','0','magic','0','SA_INSTANTDEATH','Suicide');
REPLACE INTO `skill_db` VALUES(302,'9',6,4,'0','0x1','0',1,'1','yes',0,'0x2','0','magic','0','SA_FULLRECOVERY','Rejuvenation');
REPLACE INTO `skill_db` VALUES(303,'9',6,4,'0','0','0',1,'1','yes',0,'0x2','0','magic','0','SA_COMA','Coma');
REPLACE INTO `skill_db` VALUES(304,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','BD_ADAPTATION','Amp');
REPLACE INTO `skill_db` VALUES(305,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','BD_ENCORE','Encore');
REPLACE INTO `skill_db` VALUES(306,'0',6,4,'0','0x1','0',1,'1','no',0,'0x40','0','misc','0','BD_LULLABY','Lullaby');
REPLACE INTO `skill_db` VALUES(307,'0',6,4,'0','0x1','0',5,'1','no',0,'0x40','0','misc','0','BD_RICHMANKIM','Mental Sensing');
REPLACE INTO `skill_db` VALUES(308,'0',6,4,'0','0x1','0',1,'1','no',0,'0x40','0','misc','0','BD_ETERNALCHAOS','Down Tempo');
REPLACE INTO `skill_db` VALUES(309,'0',6,4,'0','0x1','0',5,'1','no',0,'0x40','0','misc','0','BD_DRUMBATTLEFIELD','Battle Theme');
REPLACE INTO `skill_db` VALUES(310,'0',6,4,'0','0x1','0',5,'1','no',0,'0x40','0','misc','0','BD_RINGNIBELUNGEN','Harmonic Lick');
REPLACE INTO `skill_db` VALUES(311,'0',6,4,'0','0x1','0',1,'1','no',0,'0x40','0','misc','0','BD_ROKISWEIL','Classical Pluck');
REPLACE INTO `skill_db` VALUES(312,'0',6,4,'0','0x1','0',1,'1','no',0,'0x40','0','misc','0','BD_INTOABYSS','Power Chord');
REPLACE INTO `skill_db` VALUES(313,'0',6,4,'0','0x1','0',5,'1','no',0,'0x40','0','misc','0','BD_SIEGFRIED','Acoustic Rhythm');
/* REPLACE INTO `skill_db` VALUES(314,'0',0,0,'0','0','0',1,'1','no',0,'0x40','0','misc','0','BD_RAGNAROK','Ragnarok');*/
REPLACE INTO `skill_db` VALUES(315,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','BA_MUSICALLESSON','Music Lessons');
REPLACE INTO `skill_db` VALUES(316,'9',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','BA_MUSICALSTRIKE','Melody Strike');
REPLACE INTO `skill_db` VALUES(317,'0',8,4,'0','0x41','0',5,'1','no',0,'0x20','0','misc','0','BA_DISSONANCE','Unchained Serenade');
REPLACE INTO `skill_db` VALUES(318,'0',6,4,'0','0x3','-1',5,'1','no',0,'0','0','misc','0','BA_FROSTJOKER','Unbarring Octave');
REPLACE INTO `skill_db` VALUES(319,'0',6,4,'0','0x1','0',10,'1','no',0,'0x20','0','misc','0','BA_WHISTLE','Perfect Tablature');
REPLACE INTO `skill_db` VALUES(320,'0',6,4,'0','0x1','0',10,'1','no',0,'0x20','0','misc','0','BA_ASSASSINCROSS','Impressive Riff');
REPLACE INTO `skill_db` VALUES(321,'0',6,4,'0','0x1','0',10,'1','no',0,'0x20','0','misc','0','BA_POEMBRAGI','Magic Strings');
REPLACE INTO `skill_db` VALUES(322,'0',6,4,'0','0x1','0',10,'1','no',0,'0x20','0','misc','0','BA_APPLEIDUN','Song of Lutie');
REPLACE INTO `skill_db` VALUES(323,'0',0,0,'0','0','0',10,'0','no',0,'0','0','weapon','0','DC_DANCINGLESSON','Dance Lessons');
REPLACE INTO `skill_db` VALUES(324,'9',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','DC_THROWARROW','Slinging Arrow');
REPLACE INTO `skill_db` VALUES(325,'0',8,4,'0','0x1','0',5,'1','no',0,'0x20','0','misc','0','DC_UGLYDANCE','Hip Shaker');
REPLACE INTO `skill_db` VALUES(326,'0',6,4,'0','0x3','-1',5,'1','no',0,'0','0','misc','0','DC_SCREAM','Dazzler');
REPLACE INTO `skill_db` VALUES(327,'0',6,4,'0','0x1','0',10,'1','no',0,'0x20','0','misc','0','DC_HUMMING','Focus Ballet');
REPLACE INTO `skill_db` VALUES(328,'0',6,4,'0','0x1','0',10,'1','no',0,'0x20','0','misc','0','DC_DONTFORGETME','Slow Grace');
REPLACE INTO `skill_db` VALUES(329,'0',6,4,'0','0x1','0',10,'1','no',0,'0x20','0','misc','0','DC_FORTUNEKISS','Lady Luck');
REPLACE INTO `skill_db` VALUES(330,'0',6,4,'0','0x1','0',10,'1','no',0,'0x20','0','misc','0','DC_SERVICEFORYOU','Gypsy''s Kiss');
REPLACE INTO `skill_db` VALUES(331,'0',6,4,'0','0x1','0',10,'0','no',0,'0x2','0','none','0','NPC_RANDOMMOVE','Random Move');
REPLACE INTO `skill_db` VALUES(332,'0',6,4,'0','0x1','0',10,'0','no',0,'0x2','0','none','0','NPC_SPEEDUP','Speed UP');
REPLACE INTO `skill_db` VALUES(333,'0',6,4,'0','0x1','0',1,'0','no',0,'0x2','0','none','0','NPC_REVENGE','Revenge');
REPLACE INTO `skill_db` VALUES(334,'9',6,4,'0','0x1','0',1,'1','yes',0,'0x4','0','none','0','WE_MALE','I Will Protect You');
REPLACE INTO `skill_db` VALUES(335,'9',6,4,'0','0x1','0',1,'1','yes',0,'0x4','0','none','0','WE_FEMALE','I Look up to You');
REPLACE INTO `skill_db` VALUES(336,'9',6,4,'0','0x1','3',1,'1','yes',0,'0x4','1','none','0','WE_CALLPARTNER','I miss You');
REPLACE INTO `skill_db` VALUES(337,'9',6,1,'-1','0','0',1,'1','no',0,'0x2','0','weapon','0','ITM_TOMAHAWK','Throw Tomahawk');
REPLACE INTO `skill_db` VALUES(338,'-1',8,1,'7','0','0',10,'-2','no',0,'0x2','0','weapon','0','NPC_DARKCROSS','Cross of Darkness');
REPLACE INTO `skill_db` VALUES(339,'5',6,4,'7','0x48','0',10,'1','no',0,'0x102','0','magic','0','NPC_GRANDDARKNESS','Grand cross of Darkness');
REPLACE INTO `skill_db` VALUES(340,'9',8,1,'7','0','0',10,'1:1:2:2:3:3:4:4:5:5','yes',0,'0x2','0','magic','0','NPC_DARKSTRIKE','Soul Strike of Darkness');
REPLACE INTO `skill_db` VALUES(341,'9',8,1,'7','0','0',10,'3:4:5:6:7:8:9:10:11:12','yes',0,'0x2','0','magic','2:3:3:4:4:5:5:6:6:7','NPC_DARKTHUNDER','Darkness Jupitel');
REPLACE INTO `skill_db` VALUES(342,'9',6,1,'0','0x1','0',1,'0','no',0,'0x2','0','none','0','NPC_STOP','Stop');
REPLACE INTO `skill_db` VALUES(343,'9',6,1,'-1','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_WEAPONBRAKER','Break weapon');
REPLACE INTO `skill_db` VALUES(344,'9',6,1,'-1','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_ARMORBRAKE','Break armor');
REPLACE INTO `skill_db` VALUES(345,'9',6,1,'-1','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_HELMBRAKE','Break helm');
REPLACE INTO `skill_db` VALUES(346,'9',6,1,'-1','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_SHIELDBRAKE','Break shield');
REPLACE INTO `skill_db` VALUES(347,'-9',6,1,'9','0','0',10,'1','no',0,'0x2','0','weapon','0','NPC_UNDEADATTACK','Undead Element Attack');
REPLACE INTO `skill_db` VALUES(348,'9',0,1,'9','0x1','0',5,'1','no',0,'0x2','0','magic','0','NPC_CHANGEUNDEAD','Undead Attribute Change');
REPLACE INTO `skill_db` VALUES(349,'0',6,4,'0','0x1','0',10,'0','no',0,'0x2','0','weapon','0','NPC_POWERUP','Power Up');
REPLACE INTO `skill_db` VALUES(350,'0',6,4,'0','0x1','0',10,'0','no',0,'0x2','0','none','0','NPC_AGIUP','Agility UP');
REPLACE INTO `skill_db` VALUES(351,'0',0,0,'0','0x1','0',1,'0','no',0,'0x2','0','none','0','NPC_SIEGEMODE','Siege Mode');
REPLACE INTO `skill_db` VALUES(352,'2',0,4,'0','0x1','0',1,'0','no',0,'0x2','0','none','0','NPC_CALLSLAVE','Recall Slaves');
REPLACE INTO `skill_db` VALUES(353,'0',0,0,'0','0x1','0',1,'0','no',0,'0x2','0','none','0','NPC_INVISIBLE','Invisible');
REPLACE INTO `skill_db` VALUES(354,'2',6,4,'0','0x1','0',20,'0','no',0,'0x2','0','misc','0','NPC_RUN','Run');
REPLACE INTO `skill_db` VALUES(355,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','LK_AURABLADE','Aura Blade');
REPLACE INTO `skill_db` VALUES(356,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','weapon','0','LK_PARRYING','Parrying');
REPLACE INTO `skill_db` VALUES(357,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','LK_CONCENTRATION','Concentration');
REPLACE INTO `skill_db` VALUES(358,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','LK_TENSIONRELAX','Relax');
REPLACE INTO `skill_db` VALUES(359,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','LK_BERSERK','Frenzy');
/* REPLACE INTO `skill_db` VALUES(360,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','LK_FURY','Fury');*/
REPLACE INTO `skill_db` VALUES(361,'9',6,16,'0','0x1','1',5,'1','yes',0,'0','0','magic','0','HP_ASSUMPTIO','Assumptio');
REPLACE INTO `skill_db` VALUES(362,'4',6,4,'0','0x1','0',5,'1','yes',0,'0','0','magic','2','HP_BASILICA','Basilica');
REPLACE INTO `skill_db` VALUES(363,'0',0,0,'0','0','0',10,'0','no',0,'0','0','magic','0','HP_MEDITATIO','Meditatio');
REPLACE INTO `skill_db` VALUES(364,'0',0,0,'0','0','0',10,'1','no',0,'0','0','magic','0','HW_SOULDRAIN','Soul Drain');
REPLACE INTO `skill_db` VALUES(365,'9',8,1,'-1','0','0',1,'1','yes',0,'0','0','weapon','0','HW_MAGICCRASHER','Stave Crasher');
REPLACE INTO `skill_db` VALUES(366,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','magic','0','HW_MAGICPOWER','Mystical Amplification');
REPLACE INTO `skill_db` VALUES(367,'9',8,1,'0','0xD0','0',5,'1','no',0,'0','0','misc','0','PA_PRESSURE','Gloria Domini');
REPLACE INTO `skill_db` VALUES(368,'0',6,4,'0','0x69','0',5,'1','yes',0,'0','0','weapon','0','PA_SACRIFICE',' Martyr''s Reckoning');
REPLACE INTO `skill_db` VALUES(369,'0',6,4,'0','0x41','0',10,'1','yes',0,'0','0','misc','0','PA_GOSPEL','Battle Chant');
REPLACE INTO `skill_db` VALUES(370,'-2',6,1,'-1','0','0',5,'1','yes',0,'0','0','weapon','3','CH_PALMSTRIKE','Raging Palm Strike');
REPLACE INTO `skill_db` VALUES(371,'-2',8,4,'-1','0','0',5,'1','no',0,'0x200','0','weapon','0','CH_TIGERFIST','Glacier Fist');
REPLACE INTO `skill_db` VALUES(372,'-2',8,4,'-1','0','0',10,'-1:-1:-2:-2:-3:-3:-4:-4:-5:-5','no',0,'0x200','0','weapon','0','CH_CHAINCRUSH','Chain Crush Combo');
REPLACE INTO `skill_db` VALUES(373,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','magic','0','PF_HPCONVERSION','Indulge');
REPLACE INTO `skill_db` VALUES(374,'9',6,1,'0','0x1','0',1,'1','yes',0,'0xE00','0','none','0','PF_SOULCHANGE','Soul Exhale');
REPLACE INTO `skill_db` VALUES(375,'9',6,1,'0','0x98','0',5,'1','yes',0,'0','0','magic','0','PF_SOULBURN','Soul Siphon');
REPLACE INTO `skill_db` VALUES(376,'0',0,0,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','ASC_KATAR','Advanced Katar Mastery');
/* REPLACE INTO `skill_db` VALUES(377,'0',0,4,'0','0x1','0',10,'1','no',0,'0','0','misc','0','ASC_HALLUCINATION','Hallucination Walk');*/
REPLACE INTO `skill_db` VALUES(378,'0',6,4,'5','0x1','0',5,'1','no',0,'0','0','weapon','0','ASC_EDP','Enchant Deadly Poison');
REPLACE INTO `skill_db` VALUES(379,'7',6,1,'-1','0x40','0',10,'1','yes',0,'0','0','misc','0','ASC_BREAKER','Soul Destroyer');
REPLACE INTO `skill_db` VALUES(380,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','weapon','0','SN_SIGHT','Falcon Eyes');
REPLACE INTO `skill_db` VALUES(381,'5',8,1,'0','0x40','0',5,'1','yes',0,'0','0','misc','0','SN_FALCONASSAULT','Falcon Assault');
REPLACE INTO `skill_db` VALUES(382,'9',8,1,'-1','0','2',5,'1','yes',0,'0','13','weapon','0','SN_SHARPSHOOTING','Focused Arrow Strike');
REPLACE INTO `skill_db` VALUES(383,'0',6,4,'0','0x3','-1',10,'1','yes',0,'0','0','weapon','0','SN_WINDWALK','Wind Walker');
REPLACE INTO `skill_db` VALUES(384,'0',0,4,'0','0x1','0',10,'1','yes',0,'0','0','weapon','0','WS_MELTDOWN','Shattering Strike');
/* REPLACE INTO `skill_db` VALUES(385,'0',0,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','WS_CREATECOIN','Create Coins');*/
/* REPLACE INTO `skill_db` VALUES(386,'0',0,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','WS_CREATENUGGET','Create Nuggets');*/
REPLACE INTO `skill_db` VALUES(387,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','WS_CARTBOOST','Cart Boost');
/* REPLACE INTO `skill_db` VALUES(388,'9',6,2,'0','0x1','0',5,'1','no',0,'0','0','none','0','WS_SYSTEMCREATE','Auto Attack System');*/
REPLACE INTO `skill_db` VALUES(389,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','ST_CHASEWALK','Stealth');
REPLACE INTO `skill_db` VALUES(390,'0',0,4,'0','0','0',5,'1','yes',0,'0','0','weapon','0','ST_REJECTSWORD','Counter Instinct');
/* REPLACE INTO `skill_db` VALUES(391,'0',0,4,'0','1','0',1,'1','yes',0,'0','0','magic','0','ST_STEALBACKPACK','Steal Backpack');*/
REPLACE INTO `skill_db` VALUES(392,'0',0,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','CR_ALCHEMY','Alchemy');
REPLACE INTO `skill_db` VALUES(393,'0',0,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','CR_SYNTHESISPOTION','Potion Synthesis');
REPLACE INTO `skill_db` VALUES(394,'9',8,1,'-1','0','0',10,'-9','yes',0,'0','0','weapon','0','CG_ARROWVULCAN','Vulcan Arrow');
REPLACE INTO `skill_db` VALUES(395,'0',0,4,'0','0x1','3',1,'1','yes',0,'0x40','0','misc','2','CG_MOONLIT','Sheltering Bliss');
REPLACE INTO `skill_db` VALUES(396,'1',6,16,'0','0x1','0',1,'1','yes',0,'0x600','0','none','0','CG_MARIONETTE','Marionette Control');
REPLACE INTO `skill_db` VALUES(397,'5',8,1,'-1','0x0','0',5,'5','no',0,'0','0','weapon','0','LK_SPIRALPIERCE','Spiral Pierce');
REPLACE INTO `skill_db` VALUES(398,'4',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','LK_HEADCRUSH','Traumatic Blow');
REPLACE INTO `skill_db` VALUES(399,'4',6,1,'-1','0','0',10,'1','no',0,'0','0','weapon','0','LK_JOINTBEAT','Vital Strike');
REPLACE INTO `skill_db` VALUES(400,'9',8,1,'8','0x6','1',5,'1:2:3:4:5','yes',0,'0','0','magic','0','HW_NAPALMVULCAN','Napalm Vulcan');
REPLACE INTO `skill_db` VALUES(401,'0',6,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','CH_SOULCOLLECT','Zen');
REPLACE INTO `skill_db` VALUES(402,'9',6,1,'0','0x1','0',5,'1','no',0,'0','0','none','0','PF_MINDBREAKER','Mind Breaker');
REPLACE INTO `skill_db` VALUES(403,'0',0,4,'0','0x1','0',1,'1','yes',0,'0','0','magic','0','PF_MEMORIZE','Foresight');
REPLACE INTO `skill_db` VALUES(404,'9',6,2,'2','0x1','0',5,'1','yes',0,'0x100','2','magic','0','PF_FOGWALL','Blinding Mist');
REPLACE INTO `skill_db` VALUES(405,'7',6,1,'0','0x1','0',1,'1','no',0,'0','3','magic','0','PF_SPIDERWEB','Fiber Lock');
REPLACE INTO `skill_db` VALUES(406,'0',6,4,'-1','0xA','2',10,'1','no',0,'0','0','weapon','0','ASC_METEORASSAULT','Meteor Assault');
REPLACE INTO `skill_db` VALUES(407,'0',6,4,'0','0x1','0',1,'0','no',0,'0','0','none','0','ASC_CDP','Create Deadly Poison');
REPLACE INTO `skill_db` VALUES(408,'9',6,4,'0','0x1','0',1,'1','yes',0,'0x4','0','none','0','WE_BABY','Baby');
REPLACE INTO `skill_db` VALUES(409,'9',6,4,'0','0x1','3',1,'1','yes',0,'0x4','1','none','0','WE_CALLPARENT','Call Parent');
REPLACE INTO `skill_db` VALUES(410,'9',6,4,'0','0x1','3',1,'1','yes',0,'0x4','1','none','0','WE_CALLBABY','Call Baby');
REPLACE INTO `skill_db` VALUES(411,'0',6,4,'0','0x1','0',10,'1','yes',0,'0','0','misc','4','TK_RUN','Running');
REPLACE INTO `skill_db` VALUES(412,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','TK_READYSTORM','Tornado Stance');
REPLACE INTO `skill_db` VALUES(413,'-2',8,4,'-1','0x2','2',7,'-3','no',0,'0x200','0','weapon','0','TK_STORMKICK','Tornado Kick');
REPLACE INTO `skill_db` VALUES(414,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','TK_READYDOWN','Heel Drop Stance');
REPLACE INTO `skill_db` VALUES(415,'-2',8,4,'-1','0','0',7,'-3','no',0,'0x200','0','weapon','0','TK_DOWNKICK','Heel Drop');
REPLACE INTO `skill_db` VALUES(416,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','TK_READYTURN','Roundhouse Stance');
REPLACE INTO `skill_db` VALUES(417,'-2',8,4,'-1','0x2','1',7,'-3','no',0,'0x200','0','weapon','2','TK_TURNKICK','Roundhouse Kick');
REPLACE INTO `skill_db` VALUES(418,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','TK_READYCOUNTER','Counter Kick Stance');
REPLACE INTO `skill_db` VALUES(419,'-2',8,4,'-1','0x40','0',7,'-3','no',0,'0x200','0','weapon','0','TK_COUNTER','Counter Kick');
REPLACE INTO `skill_db` VALUES(420,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','TK_DODGE','Tumbling');
REPLACE INTO `skill_db` VALUES(421,'9',8,16,'-1','0x1','0',7,'-3','no',0,'0','0','weapon','0','TK_JUMPKICK','Flying Kick');
REPLACE INTO `skill_db` VALUES(422,'0',0,0,'0','0','1',10,'0','no',0,'0','0','none','0','TK_HPTIME','Peaceful Break');
REPLACE INTO `skill_db` VALUES(423,'0',0,0,'0','0','1',10,'0','no',0,'0','0','none','0','TK_SPTIME','Happy Break');
REPLACE INTO `skill_db` VALUES(424,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','TK_POWER','Kihop');
REPLACE INTO `skill_db` VALUES(425,'0',6,4,'2:4:1:3:8:7:6','0x1','0',7,'1','no',0,'0','0','weapon','0','TK_SEVENWIND','Mild Wind');
REPLACE INTO `skill_db` VALUES(426,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','TK_HIGHJUMP','Taekwon Jump');
REPLACE INTO `skill_db` VALUES(427,'0',6,4,'0','0x1','0',3,'1','yes',0,'0','0','magic','0','SG_FEEL','Feeling the Sun Moon and Stars');
REPLACE INTO `skill_db` VALUES(428,'1',6,4,'-1','0x2','1',3,'1','yes',0,'0','0','weapon','2','SG_SUN_WARM','Warmth of the Sun');
REPLACE INTO `skill_db` VALUES(429,'1',6,4,'-1','0x2','1',3,'1','yes',0,'0','0','weapon','2','SG_MOON_WARM','Warmth of the Moon');
REPLACE INTO `skill_db` VALUES(430,'1',6,4,'-1','0x2','1',3,'1','yes',0,'0','0','weapon','2','SG_STAR_WARM','Warmth of the Stars');
REPLACE INTO `skill_db` VALUES(431,'0',0,4,'0','0x1','0',4,'1','yes',0,'0','0','magic','0','SG_SUN_COMFORT','Comfort of the Sun');
REPLACE INTO `skill_db` VALUES(432,'0',0,4,'0','0x1','0',4,'1','yes',0,'0','0','magic','0','SG_MOON_COMFORT','Comfort of the Moon');
REPLACE INTO `skill_db` VALUES(433,'0',0,4,'0','0x1','0',4,'1','yes',0,'0','0','magic','0','SG_STAR_COMFORT','Comfort of the Stars');
REPLACE INTO `skill_db` VALUES(434,'10',6,1,'0','0x1','0',3,'1','yes',0,'0','0','magic','0','SG_HATE','Hatred of the Sun Moon and Stars');
REPLACE INTO `skill_db` VALUES(435,'0',0,0,'0','0','0',3,'0','no',0,'0','0','none','0','SG_SUN_ANGER','Anger of the Sun');
REPLACE INTO `skill_db` VALUES(436,'0',0,0,'0','0','0',3,'0','no',0,'0','0','none','0','SG_MOON_ANGER','Anger of the Moon');
REPLACE INTO `skill_db` VALUES(437,'0',0,0,'0','0','0',3,'0','no',0,'0','0','none','0','SG_STAR_ANGER','Anger of the Stars');
REPLACE INTO `skill_db` VALUES(438,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','SG_SUN_BLESS','Blessing of the Sun');
REPLACE INTO `skill_db` VALUES(439,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','SG_MOON_BLESS','Blessing of the Moon');
REPLACE INTO `skill_db` VALUES(440,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','SG_STAR_BLESS','Blessing of the Stars');
REPLACE INTO `skill_db` VALUES(441,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','SG_DEVIL','Demon of the Sun Moon and Stars');
REPLACE INTO `skill_db` VALUES(442,'0',0,0,'0','0','0',3,'0','no',0,'0','0','none','0','SG_FRIEND','Friend of the Sun Moon and Stars');
REPLACE INTO `skill_db` VALUES(443,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','SG_KNOWLEDGE','Knowledge of the Sun Moon and Stars');
REPLACE INTO `skill_db` VALUES(444,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','misc','0','SG_FUSION','Union of the Sun Moon and Stars');
REPLACE INTO `skill_db` VALUES(445,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_ALCHEMIST','Spirit of the Alchemist');
REPLACE INTO `skill_db` VALUES(446,'9',6,16,'0','0x1','0',1,'1','yes',0,'0xC08','0','none','0','AM_BERSERKPITCHER','Aid Berserk Potion');
REPLACE INTO `skill_db` VALUES(447,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_MONK','Spirit of the Monk');
REPLACE INTO `skill_db` VALUES(448,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_STAR','Spirit of the Star Gladiator');
REPLACE INTO `skill_db` VALUES(449,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_SAGE','Spirit of the Sage');
REPLACE INTO `skill_db` VALUES(450,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_CRUSADER','Spirit of the Crusader');
REPLACE INTO `skill_db` VALUES(451,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_SUPERNOVICE','Spirit of the Supernovice');
REPLACE INTO `skill_db` VALUES(452,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_KNIGHT','Spirit of the Knight');
REPLACE INTO `skill_db` VALUES(453,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_WIZARD','Spirit of the Wizard');
REPLACE INTO `skill_db` VALUES(454,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_PRIEST','Spirit of the Priest');
REPLACE INTO `skill_db` VALUES(455,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_BARDDANCER','Spirit of the Artist');
REPLACE INTO `skill_db` VALUES(456,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_ROGUE','Spirit of the Rogue');
REPLACE INTO `skill_db` VALUES(457,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_ASSASIN','Spirit of the Assasin');
REPLACE INTO `skill_db` VALUES(458,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_BLACKSMITH','Spirit of the Blacksmith');
REPLACE INTO `skill_db` VALUES(459,'0',6,4,'0','0x3','-1',1,'1','no',0,'0x8','0','weapon','0 ','BS_ADRENALINE2','Advanced Adrenaline Rush');
REPLACE INTO `skill_db` VALUES(460,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_HUNTER','Spirit of the Hunter');
REPLACE INTO `skill_db` VALUES(461,'9',6,16,'0','0x1','0',5,'1','yes',0,'0x200','0','magic','0','SL_SOULLINKER','Spirit of the Soul Linker');
REPLACE INTO `skill_db` VALUES(462,'9',6,16,'0','0x1','0',7,'1','yes',0,'0','0','magic','0','SL_KAIZEL','Kaizel');
REPLACE INTO `skill_db` VALUES(463,'9',6,16,'0','0x1','0',7,'1','yes',0,'0','0','magic','0','SL_KAAHI','Kaahi');
REPLACE INTO `skill_db` VALUES(464,'9',6,16,'0','0x1','0',3,'1','yes',0,'0','0','magic','0','SL_KAUPE','Kaupe');
REPLACE INTO `skill_db` VALUES(465,'9',6,16,'0','0x1','0',7,'1','yes',0,'0','0','magic','0','SL_KAITE','Kaite');
REPLACE INTO `skill_db` VALUES(466,'0',0,0,'0','0','0',7,'0','yes',0,'0','0','magic','0','SL_KAINA','Kaina');
REPLACE INTO `skill_db` VALUES(467,'9',6,1,'-2','0','0',7,'1','no',0,'0','0','magic','2','SL_STIN','Estin');
REPLACE INTO `skill_db` VALUES(468,'9',6,1,'-2','0','0',7,'1','no',0,'0','0','magic','0','SL_STUN','Estun');
REPLACE INTO `skill_db` VALUES(469,'9',8,1,'-2','0','0',10,'1:2:3:4:5:6:7:8:9:10','yes',0,'0','0','magic','0','SL_SMA','Esma');
REPLACE INTO `skill_db` VALUES(470,'9',6,1,'0','0x1','0',7,'1','no',0,'0','0','magic','0','SL_SWOO','Eswoo');
REPLACE INTO `skill_db` VALUES(471,'9',6,1,'0','0x1','0',3,'1','no',0,'0','0','magic','0','SL_SKE','Eske');
REPLACE INTO `skill_db` VALUES(472,'9',6,1,'0','0x1','0',3,'1','no',0,'0','0','magic','0','SL_SKA','Eska');
REPLACE INTO `skill_db` VALUES(473,'0',6,4,'0','0','0',1,'1','no',0,'0','0','none','0','SM_SELFPROVOKE','Provoke Self');
REPLACE INTO `skill_db` VALUES(474,'0',0,4,'0','0x1','0',10,'1','no',0,'0x2','0','none','0','NPC_EMOTION_ON','Emotion ON');
REPLACE INTO `skill_db` VALUES(475,'0',0,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','ST_PRESERVE','Preserve');
REPLACE INTO `skill_db` VALUES(476,'1',6,1,'0','0x1','0',5,'1','yes',0,'0','0','weapon','0','ST_FULLSTRIP','Divest All');
REPLACE INTO `skill_db` VALUES(477,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','weapon','0','WS_WEAPONREFINE','Upgrade Weapon');
REPLACE INTO `skill_db` VALUES(478,'3',6,2,'0','0x3','3',10,'1','no',0,'0','0','none','0','CR_SLIMPITCHER','Aid Condensed Potion');
REPLACE INTO `skill_db` VALUES(479,'1',6,16,'0','0x1','0',5,'1','yes',0,'0','0','weapon','0','CR_FULLPROTECTION','Full Protection');
REPLACE INTO `skill_db` VALUES(480,'5',8,1,'-1','0','0',5,'5','no',0,'0','0','weapon','0','PA_SHIELDCHAIN','Shield Chain');
REPLACE INTO `skill_db` VALUES(481,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','HP_MANARECHARGE','Mana Recharge');
REPLACE INTO `skill_db` VALUES(482,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','magic','0','PF_DOUBLECASTING','Double Casting');
REPLACE INTO `skill_db` VALUES(483,'16',6,2,'0','0x1','1:2:3:4:5',1,'1','no',0,'0','0','none','0','HW_GANBANTEIN','Ganbantein');
REPLACE INTO `skill_db` VALUES(484,'9',6,2,'2','0x91','0',5,'1','yes',0,'0','0','misc','0','HW_GRAVITATION','Gravitation Field');
REPLACE INTO `skill_db` VALUES(485,'-2',6,1,'-1','0x8','0',10,'1','no',0,'0','0','weapon','0','WS_CARTTERMINATION','Cart Termination');
REPLACE INTO `skill_db` VALUES(486,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','WS_OVERTHRUSTMAX','Maximum Power Thrust');
REPLACE INTO `skill_db` VALUES(487,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','CG_LONGINGFREEDOM','Longing for Freedom');
REPLACE INTO `skill_db` VALUES(488,'0',6,4,'0','0x1','1',5,'1','no',0,'0x40','0','misc','0','CG_HERMODE','Wand of Hermode');
REPLACE INTO `skill_db` VALUES(489,'9',6,1,'0','0x41','0',5,'1','no',0,'0','0','misc','0','CG_TAROTCARD','Tarot Card of Fate');
REPLACE INTO `skill_db` VALUES(490,'9',8,1,'0','0x40','0',10,'-1:-2:-3:-4:-5:-6:-7:-8:-9:-10','yes',0,'0','0','misc','0','CR_ACIDDEMONSTRATION','Acid Demonstration');
REPLACE INTO `skill_db` VALUES(491,'1',6,2,'0','0x1','0',2,'1','no',0,'0','0','none','0','CR_CULTIVATION','Plant Cultivation');
REPLACE INTO `skill_db` VALUES(492,'0',6,4,'0:1:2:3:4:5:6:7:8:9','0x1','0',10,'1','no',0,'0x2','0','none','0','ITEM_ENCHANTARMS','Weapon Enchantment');
REPLACE INTO `skill_db` VALUES(493,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','TK_MISSION','Taekwon Mission');
REPLACE INTO `skill_db` VALUES(494,'9',6,16,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','SL_HIGH','Spirit of Rebirth');
REPLACE INTO `skill_db` VALUES(495,'0',6,4,'0','0x1','0',1,'1','no',0,'0x8','0','weapon','0','KN_ONEHAND','Onehand Quicken');
REPLACE INTO `skill_db` VALUES(496,'0',6,4,'0','0x1','0',1,'0','no',0,'0x8','0','none','0','AM_TWILIGHT1','Twilight Alchemy 1');
REPLACE INTO `skill_db` VALUES(497,'0',6,4,'0','0x1','0',1,'0','no',0,'0x8','0','none','0','AM_TWILIGHT2','Twilight Alchemy 2');
REPLACE INTO `skill_db` VALUES(498,'0',6,4,'0','0x1','0',1,'0','no',0,'0x8','0','none','0','AM_TWILIGHT3','Twilight Alchemy 3');
REPLACE INTO `skill_db` VALUES(499,'-9',8,1,'-1','0','0',1,'2','no',0,'0x8','0','weapon','0','HT_POWER','Beast Strafing');
REPLACE INTO `skill_db` VALUES(500,'0',6,4,'0','0x40','0',5,'1','no',0,'0','0','misc','0','GS_GLITTERING','Flip the Coin');
REPLACE INTO `skill_db` VALUES(501,'9',6,1,'-1','0x50','0',1,'1','no',0,'0','0','misc','0','GS_FLING','Fling');
REPLACE INTO `skill_db` VALUES(502,'-9',8,1,'-1','0','0',1,'3','no',0,'0','0','weapon','0','GS_TRIPLEACTION','Triple Action');
REPLACE INTO `skill_db` VALUES(503,'-9',6,1,'-1','0x8','0',1,'1','no',0,'0','0','weapon','0','GS_BULLSEYE','Bulls Eye');
REPLACE INTO `skill_db` VALUES(504,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','GS_MADNESSCANCEL','Madness Canceller');
REPLACE INTO `skill_db` VALUES(505,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','GS_ADJUSTMENT','AdJustment');
REPLACE INTO `skill_db` VALUES(506,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','GS_INCREASING','Increasing Accuracy');
REPLACE INTO `skill_db` VALUES(507,'-9',6,1,'8','0','0',1,'1','no',0,'0','0','weapon','0','GS_MAGICALBULLET','Magical Bullet');
REPLACE INTO `skill_db` VALUES(508,'-9',6,1,'-1','0x1','0',1,'1','no',0,'0','0','weapon','0','GS_CRACKER','Cracker');
REPLACE INTO `skill_db` VALUES(509,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','GS_SINGLEACTION','Single Action');
REPLACE INTO `skill_db` VALUES(510,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','GS_SNAKEEYE','Snake Eye');
REPLACE INTO `skill_db` VALUES(511,'-9',8,0,'-1','0','0',10,'2','no',0,'0','0','weapon','0','GS_CHAINACTION','Chain Action');
REPLACE INTO `skill_db` VALUES(512,'-9',6,1,'-1','0','0',10,'1','yes',0,'0','0','weapon','0','GS_TRACKING','Tracking');
REPLACE INTO `skill_db` VALUES(513,'-9',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','GS_DISARM','Disarm');
REPLACE INTO `skill_db` VALUES(514,'-9',6,1,'-1','0x20','0',5,'1','no',0,'0','0','weapon','0','GS_PIERCINGSHOT','Piercing Shot');
REPLACE INTO `skill_db` VALUES(515,'-9',8,1,'-1','0','0',10,'5','no',0,'0','0','weapon','0','GS_RAPIDSHOWER','Rapid Shower');
REPLACE INTO `skill_db` VALUES(516,'0',8,4,'-1','0x2','3',10,'1','no',0,'0','0','weapon','0','GS_DESPERADO','Desperado');
REPLACE INTO `skill_db` VALUES(517,'0',6,4,'-1','0x1','0',10,'1','no',0,'0','0','weapon','0','GS_GATLINGFEVER','Gatling Fever');
REPLACE INTO `skill_db` VALUES(518,'2',6,1,'-1','0','0',10,'1','no',0,'0','0','weapon','5','GS_DUST','Dust');
REPLACE INTO `skill_db` VALUES(519,'-9',6,1,'-1','0','0',10,'1','yes',0,'0','0','weapon','0','GS_FULLBUSTER','Full Buster');
REPLACE INTO `skill_db` VALUES(520,'-9',6,1,'-1','0x2','1:1:1:2:2:2:3:3:3:4',10,'1','no',0,'0','0','weapon','0','GS_SPREADATTACK','Spread Attack');
REPLACE INTO `skill_db` VALUES(521,'-9',6,2,'-1','0x40','1',10,'1','no',0,'0','0','weapon','3','GS_GROUNDDRIFT','Ground Drift');
REPLACE INTO `skill_db` VALUES(522,'0',0,0,'0','0','0',10,'1','no',0,'0','0','weapon','0','NJ_TOBIDOUGU','Shuriken Training');
REPLACE INTO `skill_db` VALUES(523,'9',6,1,'-1','0x40','0',10,'1','no',0,'0','0','weapon','0','NJ_SYURIKEN','Throw Shuriken');
REPLACE INTO `skill_db` VALUES(524,'9',8,1,'-1','0x40','0',5,'3','no',0,'0','0','weapon','0','NJ_KUNAI','Throw Kunai');
REPLACE INTO `skill_db` VALUES(525,'9',8,2,'-1','0x2','0',5,'-3:-3:-4:-4:-5','no',0,'0','0','weapon','0','NJ_HUUMA','Throw Huuma Shuriken');
REPLACE INTO `skill_db` VALUES(526,'9',6,1,'0','0x50','0',10,'1','no',0,'0','0','misc','0','NJ_ZENYNAGE','Throw Zeny');
REPLACE INTO `skill_db` VALUES(527,'0',6,4,'-1','0','0',5,'1','no',0,'0','0','weapon','4','NJ_TATAMIGAESHI','Improvised Defense');
REPLACE INTO `skill_db` VALUES(528,'-1',6,1,'-1','0','0',10,'1','no',0,'0','0','weapon','0','NJ_KASUMIKIRI','Vanishing Slash');
REPLACE INTO `skill_db` VALUES(529,'7:9:11:13:15',6,2,'0','0x1','0',5,'1','no',0,'0','0','none','0','NJ_SHADOWJUMP','Shadow Leap');
REPLACE INTO `skill_db` VALUES(530,'7:9:11:13:15',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','NJ_KIRIKAGE','Shadow Slash');
REPLACE INTO `skill_db` VALUES(531,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','7','NJ_UTSUSEMI','Cicada Skin Sheeding');
REPLACE INTO `skill_db` VALUES(532,'0',6,4,'0','0x1','0',10,'1','yes',0,'0','0','magic','0','NJ_BUNSINJYUTSU','Mirror Image');
REPLACE INTO `skill_db` VALUES(533,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','NJ_NINPOU','Spirit of the Blade');
REPLACE INTO `skill_db` VALUES(534,'9',8,1,'3','0','0',10,'1:2:3:4:5:6:7:8:9:10','yes',0,'0','0','magic','0','NJ_KOUENKA','Crimson Fire Petal');
REPLACE INTO `skill_db` VALUES(535,'0',8,4,'3','0','0',10,'1','yes',0,'0','0','magic','0','NJ_KAENSIN','Crimson Fire Formation');
REPLACE INTO `skill_db` VALUES(536,'9',8,1,'3','0x2','2',5,'3','yes',0,'0','0','magic','0','NJ_BAKUENRYU','Raging Fire Dragon');
REPLACE INTO `skill_db` VALUES(537,'9',8,1,'1','0','0',10,'3:4:5:6:7:8:9:10:11:12','yes',0,'0','0','magic','0','NJ_HYOUSENSOU','Spear of Ice');
REPLACE INTO `skill_db` VALUES(538,'9',6,2,'1','0x1','0',10,'1','yes',0,'0','0','magic','0','NJ_SUITON','Hidden Water');
REPLACE INTO `skill_db` VALUES(539,'0',6,4,'1','0x2','3',5,'1','yes',0,'0','0','magic','0','NJ_HYOUSYOURAKU','Ice Meteor');
REPLACE INTO `skill_db` VALUES(540,'9',8,1,'4','0','0',10,'1:2:2:3:3:4:4:5:5:6','yes',0,'0','0','magic','0','NJ_HUUJIN','Wind Blade');
REPLACE INTO `skill_db` VALUES(541,'9',6,2,'4','0x2','2:2:3:3:4',5,'1','yes',0,'0','0','magic','0','NJ_RAIGEKISAI','Lightning Strike of Destruction');
REPLACE INTO `skill_db` VALUES(542,'9',8,1,'4','0','3',5,'1','yes',0,'0','5:6:7:8:9','magic','0','NJ_KAMAITACHI','Kamaitachi');
REPLACE INTO `skill_db` VALUES(543,'0',6,4,'0','0x1','0',5,'1','yes',0,'0','0','none','0','NJ_NEN','Soul');
REPLACE INTO `skill_db` VALUES(544,'-5',8,1,'0','0x40','0',10,'1','no',0,'0','0','weapon','0','NJ_ISSEN','Final Strike');
REPLACE INTO `skill_db` VALUES(653,'0',8,4,'0','0x26','5:7:9:11:13:5:7:9:11:13',10,'1','no',0,'0x2002','0','weapon','0','NPC_EARTHQUAKE','Earthquake');
REPLACE INTO `skill_db` VALUES(654,'9',6,1,'3','0','5',10,'1','no',0,'0x2','14','weapon','0','NPC_FIREBREATH','Fire Breath');
REPLACE INTO `skill_db` VALUES(655,'9',6,1,'1','0','5',10,'1','no',0,'0x2','14','weapon','0','NPC_ICEBREATH','Ice Breath');
REPLACE INTO `skill_db` VALUES(656,'9',6,1,'4','0','5',10,'1','no',0,'0x2','14','weapon','0','NPC_THUNDERBREATH','Thunder Breath');
REPLACE INTO `skill_db` VALUES(657,'9',6,1,'5','0','5',10,'1','no',0,'0x2','14','weapon','0','NPC_ACIDBREATH','Acid Breath');
REPLACE INTO `skill_db` VALUES(658,'9',6,1,'7','0','5',10,'1','no',0,'0x2','14','weapon','0','NPC_DARKNESSBREATH','Darkness Breath');
REPLACE INTO `skill_db` VALUES(659,'0',6,4,'0','0x3','2:5:8:11:14',5,'1','no',0,'0x2','0','none','0','NPC_DRAGONFEAR','Dragon Fear');
REPLACE INTO `skill_db` VALUES(660,'-9',6,1,'-1','0','0',5,'1','no',0,'0x2','0','weapon','0','NPC_BLEEDING','Bleeding');
REPLACE INTO `skill_db` VALUES(661,'0',6,4,'0','0x2','7',5,'1','no',0,'0x2','0','weapon','7','NPC_PULSESTRIKE','Pulse Strike');
REPLACE INTO `skill_db` VALUES(662,'0',6,4,'0','0x2','14',10,'1','no',0,'0x2','0','weapon','0','NPC_HELLJUDGEMENT','Hell''s Judgement');
REPLACE INTO `skill_db` VALUES(663,'0',6,4,'0','0x3','2:5:8:11:14',5,'1','no',0,'0x2','0','none','0','NPC_WIDESILENCE','Wide Silence');
REPLACE INTO `skill_db` VALUES(664,'0',6,4,'0','0x3','2:5:8:11:14',5,'1','no',0,'0x2','0','none','0','NPC_WIDEFREEZE','Wide Freeze');
REPLACE INTO `skill_db` VALUES(665,'0',6,4,'0','0x3','2:5:8:11:14',5,'1','no',0,'0x2','0','none','0','NPC_WIDEBLEEDING','Wide Bleeding');
REPLACE INTO `skill_db` VALUES(666,'0',6,4,'0','0x3','2:5:8:11:14',5,'1','no',0,'0x2','0','none','0','NPC_WIDESTONE','Wide Petrify');
REPLACE INTO `skill_db` VALUES(667,'0',6,4,'0','0x3','2:5:8:11:14',5,'1','no',0,'0x2','0','none','0','NPC_WIDECONFUSE','Wide Confusion');
REPLACE INTO `skill_db` VALUES(668,'0',6,4,'0','0x3','2:5:8:11:14',5,'1','no',0,'0x2','0','none','0','NPC_WIDESLEEP','Wide Sleep');
REPLACE INTO `skill_db` VALUES(669,'0',6,4,'3','0x3','5',1,'1','no',0,'0x2','0','magic','0','NPC_WIDESIGHT','Wide Sight');
REPLACE INTO `skill_db` VALUES(670,'9',6,2,'7','0x91','0',10,'1','no',0,'0x2','0','magic','0','NPC_EVILLAND','Evil Land');
REPLACE INTO `skill_db` VALUES(671,'0',6,4,'0','0x1','0',5,'1','no',0,'0x2','0','magic','0','NPC_MAGICMIRROR','Magic Mirror');
REPLACE INTO `skill_db` VALUES(672,'0',6,4,'0','0x3','2:5:8:11:14',5,'1','no',0,'0x2','0','none','0','NPC_SLOWCAST','Slow Cast');
REPLACE INTO `skill_db` VALUES(673,'-9',6,1,'-1','0','0',5,'1','no',0,'0x2','0','weapon','0','NPC_CRITICALWOUND','Critical Wounds');
REPLACE INTO `skill_db` VALUES(674,'-9',6,1,'-1','0x1','0',1,'1','no',0,'0x2','0','none','0','NPC_EXPULSION','Expulsion');
REPLACE INTO `skill_db` VALUES(675,'0',6,4,'0','0x1','0',5,'1','no',0,'0x2','0','magic','0','NPC_STONESKIN','Stone Skin');
REPLACE INTO `skill_db` VALUES(676,'0',6,4,'0','0x1','0',5,'1','no',0,'0x2','0','magic','0','NPC_ANTIMAGIC','Anti Magic');
REPLACE INTO `skill_db` VALUES(677,'0',6,4,'0','0x3','2:5:8:11:14',5,'1','no',0,'0x2','0','none','0','NPC_WIDECURSE','Wide Curse');
REPLACE INTO `skill_db` VALUES(678,'0',6,4,'0','0x3','2:5:8:11:14',5,'1','no',0,'0x2','0','none','0','NPC_WIDESTUN','Wide Stun');
REPLACE INTO `skill_db` VALUES(679,'0',6,4,'0','0x2','5:7:9:11:13:13:13:13:13:13',10,'1','no',0,'0x2','0','weapon','0','NPC_VAMPIRE_GIFT','Vampire Gift');
REPLACE INTO `skill_db` VALUES(680,'0',6,4,'0','0x3','5:7:9:11:13:13:13:13:13:13',10,'1','no',0,'0x2','0','none','0','NPC_WIDESOULDRAIN','Wide Soul Drain');
REPLACE INTO `skill_db` VALUES(681,'0',0,0,'0','0','0',10,'0','no',0,'0x1','0','none','0','ALL_INCCARRY','Increase Weight Limit R');
REPLACE INTO `skill_db` VALUES(682,'0',0,4,'0','0x1','0',1,'1','no',0,'0x2','0','none','0','NPC_TALK','Talk');
REPLACE INTO `skill_db` VALUES(683,'-9',6,1,'-1','0','0',1,'1','no',0,'0x2','0','none','0','NPC_HELLPOWER','Hell Power');
REPLACE INTO `skill_db` VALUES(684,'0',6,4,'0','0x3','-1',1,'1','no',0,'0x2','0','none','0','NPC_WIDEHELLDIGNITY','Hell Dignity');
REPLACE INTO `skill_db` VALUES(685,'0',0,4,'0','0x1','0',1,'1','no',0,'0x2','0','none','0','NPC_INVINCIBLE','Invincible');
REPLACE INTO `skill_db` VALUES(686,'0',0,4,'0','0x1','0',1,'1','no',0,'0x2','0','none','0','NPC_INVINCIBLEOFF','Invincible off');
REPLACE INTO `skill_db` VALUES(687,'0',6,4,'0','0x1','0',1,'1','yes',0,'0x2','0','none','0','NPC_ALLHEAL','Full Heal');
REPLACE INTO `skill_db` VALUES(688,'9',6,16,'0','0x1','0',10,'0','no',0,'0x200','0','none','0','GM_SANDMAN','GM Sandman');
REPLACE INTO `skill_db` VALUES(689,'0',6,4,'0','0x3','-1',10,'1','yes',0,'0x2','0','magic','0','CASH_BLESSING','Party Blessing');
REPLACE INTO `skill_db` VALUES(690,'0',6,4,'0','0x3','-1',10,'1','yes',0,'0x2','0','magic','0','CASH_INCAGI','Party Increase AGI');
REPLACE INTO `skill_db` VALUES(691,'0',6,4,'0','0x3','-1',5,'1','yes',0,'0x2','0','magic','0','CASH_ASSUMPTIO','Party Assumptio');
REPLACE INTO `skill_db` VALUES(692,'0',6,4,'0','0x01','0',1,'1','no',0,'0x2','0','none','0','ALL_CATCRY','Cat Cry');
REPLACE INTO `skill_db` VALUES(693,'0',6,4,'0','0x3','-1',1,'1','yes',0,'0x2','0','magic','0','ALL_PARTYFLEE','Party Flee');
REPLACE INTO `skill_db` VALUES(694,'6',6,16,'0','0x1','0',1,'0','no',0,'0x202','0','magic','0','ALL_ANGEL_PROTECT','Angel''s Protection');
REPLACE INTO `skill_db` VALUES(695,'0',6,4,'0','0x01','0',1,'1','no',0,'0x2','0','none','0','ALL_DREAM_SUMMERNIGHT','Summer Night Dream');
/* REPLACE INTO `skill_db` VALUES(696,'0',0,0,'0','0','0',9,'0','no',0,'0x2','0','none','0','NPC_CHANGEUNDEAD2','Change Undead');*/
REPLACE INTO `skill_db` VALUES(697,'0',6,4,'0','0x1','0',1,'1','yes',0,'0x2','0','magic','0','ALL_REVERSEORCISH','Reverse Orcish');
REPLACE INTO `skill_db` VALUES(698,'0',6,4,'0','0x01','0',1,'1','no',0,'0x2','0','none','0','ALL_WEWISH','Christmas Carol');
/* REPLACE INTO `skill_db` VALUES(699,'0',0,0,'0','0','0',9,'0','no',0,'0x2','0','none','0','ALL_SONKRAN','ALL_SONKRAN');*/
/* REPLACE INTO `skill_db` VALUES(700,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_WIDEHEALTHFEAR','Wide Health Fear');*/
/* REPLACE INTO `skill_db` VALUES(701,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_WIDEBODYBURNNING','Wide Body Burnning');*/
/* REPLACE INTO `skill_db` VALUES(702,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_WIDEFROSTMISTY','Wide Freezing');*/
/* REPLACE INTO `skill_db` VALUES(703,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_WIDECOLD','Wide Crystalize');*/
/* REPLACE INTO `skill_db` VALUES(704,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_WIDE_DEEP_SLEEP','Wide Deep Sleep');*/
/* REPLACE INTO `skill_db` VALUES(705,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_WIDESIREN','Wide Siren''s Voice');*/
/* REPLACE INTO `skill_db` VALUES(706,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_VENOMFOG','Venom Fog');*/
/* REPLACE INTO `skill_db` VALUES(707,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_MILLENNIUMSHIELD','Millenium Shield 2');*/
/* REPLACE INTO `skill_db` VALUES(708,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_COMET','Comet 2');*/
/* REPLACE INTO `skill_db` VALUES(709,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_ICEMINE','Ice Mine');*/
/* REPLACE INTO `skill_db` VALUES(710,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_ICEEXPLO','Ice Explosion');*/
/* REPLACE INTO `skill_db` VALUES(711,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_FLAMECROSS','Flame Cross');*/
/* REPLACE INTO `skill_db` VALUES(712,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_PULSESTRIKE2','Pulse Strike 2');*/
/* REPLACE INTO `skill_db` VALUES(713,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_DANCINGBLADE','Dancing Blade');*/
/* REPLACE INTO `skill_db` VALUES(714,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_DANCINGBLADE_ATK','Dancing Blade Attack');*/
/* REPLACE INTO `skill_db` VALUES(715,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_DARKPIERCING','Dark Piercing');*/
/* REPLACE INTO `skill_db` VALUES(716,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_MAXPAIN','Max Pain');*/
/* REPLACE INTO `skill_db` VALUES(717,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_MAXPAIN_ATK','Max Pain Attack');*/
/* REPLACE INTO `skill_db` VALUES(718,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_DEATHSUMMON','Death Summon');*/
/* REPLACE INTO `skill_db` VALUES(719,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_HELLBURNING','Hell Burning');*/
/* REPLACE INTO `skill_db` VALUES(720,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_JACKFROST','Jack Frost 2');*/
REPLACE INTO `skill_db` VALUES(1001,'9',6,1,'-1','0','0',1,'1','no',0,'0x1','0','weapon','0','KN_CHARGEATK','Charge Attack');
REPLACE INTO `skill_db` VALUES(1002,'0',6,4,'0','0x1','0',1,'0','no',0,'0x1','0','weapon','2','CR_SHRINK','Shrink');
REPLACE INTO `skill_db` VALUES(1003,'0',0,0,'0','0','0',1,'0','no',0,'0x1','0','weapon','0','AS_SONICACCEL','Sonic Acceleration');
REPLACE INTO `skill_db` VALUES(1004,'9',8,1,'0','0x8','0',1,'1','no',0,'0x1','0','weapon','0','AS_VENOMKNIFE','Throw Venom Knife');
REPLACE INTO `skill_db` VALUES(1005,'1',6,1,'0','0x1','0',1,'1','no',0,'0x1','0','weapon','0','RG_CLOSECONFINE','Close Confine');
REPLACE INTO `skill_db` VALUES(1006,'0',6,4,'3','0','1',1,'1','yes',0,'0x1','0','magic','3','WZ_SIGHTBLASTER','Sight Blaster');
REPLACE INTO `skill_db` VALUES(1007,'0',6,4,'0','0x1','0',1,'0','no',0,'0x1','0','none','0','SA_CREATECON','Create Elemental Converter');
REPLACE INTO `skill_db` VALUES(1008,'9',6,1,'1','0x1','0',1,'1','yes',0,'0x1','0','magic','0','SA_ELEMENTWATER','Elemental Change Water');
REPLACE INTO `skill_db` VALUES(1009,'-9',6,1,'0','0','0',1,'1','no',0,'0x1','0','weapon','3','HT_PHANTASMIC','Phantasmic Arrow');
REPLACE INTO `skill_db` VALUES(1010,'9',6,1,'0','0x1','0',1,'0','no',0,'0x1','0','misc','0','BA_PANGVOICE','Pang Voice');
REPLACE INTO `skill_db` VALUES(1011,'9',6,1,'0','0x1','0',1,'0','no',0,'0x1','0','misc','0','DC_WINKCHARM','Wink of Charm');
REPLACE INTO `skill_db` VALUES(1012,'0',0,0,'0','0','0',1,'0','no',0,'0x1','0','weapon','0','BS_UNFAIRLYTRICK','Unfair Trick');
REPLACE INTO `skill_db` VALUES(1013,'0',6,4,'0','0x3','2',1,'0','no',0,'0x1','0','weapon','0','BS_GREED','Greed');
REPLACE INTO `skill_db` VALUES(1014,'0',6,4,'6','0x3','14',1,'0','yes',0,'0x1','0','magic','0','PR_REDEMPTIO','Redemptio');
REPLACE INTO `skill_db` VALUES(1015,'9',6,16,'0','0x1','0',1,'1','no',0,'0x401','0','weapon','0','MO_KITRANSLATION','Ki Translation');
REPLACE INTO `skill_db` VALUES(1016,'-1',6,1,'-1','0x2','1',1,'1','no',0,'0x1','0','weapon','5','MO_BALKYOUNG','Ki Explosion');
REPLACE INTO `skill_db` VALUES(1017,'9',6,1,'2','0x1','0',1,'1','yes',0,'0x1','0','magic','0','SA_ELEMENTGROUND','Elemental Change Earth');
REPLACE INTO `skill_db` VALUES(1018,'9',6,1,'3','0x1','0',1,'1','yes',0,'0x1','0','magic','0','SA_ELEMENTFIRE','Elemental Change Fire');
REPLACE INTO `skill_db` VALUES(1019,'9',6,1,'4','0x1','0',1,'1','yes',0,'0x1','0','magic','0','SA_ELEMENTWIND','Elemental Change Wind');
REPLACE INTO `skill_db` VALUES(2001,'0',6,4,'0','0x1','0',5,'1','yes',0,'0','0','none','0','RK_ENCHANTBLADE','Enchant Blade');
REPLACE INTO `skill_db` VALUES(2002,'7:8:9:10:11',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','RK_SONICWAVE','Sonic Wave');
REPLACE INTO `skill_db` VALUES(2003,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','weapon','3','RK_DEATHBOUND','Death Bound');
REPLACE INTO `skill_db` VALUES(2004,'5',8,1,'-1','0','0',10,'-5','no',0,'0','0','weapon','0','RK_HUNDREDSPEAR','Hundred Spear');
REPLACE INTO `skill_db` VALUES(2005,'1',6,2,'4','0x2','2',5,'1','no',0,'0','0','weapon','3','RK_WINDCUTTER','Wind Cutter');
REPLACE INTO `skill_db` VALUES(2006,'0',6,4,'-1','0x2','5',5,'1','no',0,'0','0','weapon','0','RK_IGNITIONBREAK','Ignition Break');
REPLACE INTO `skill_db` VALUES(2007,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','RK_DRAGONTRAINING','Dragon Training');
REPLACE INTO `skill_db` VALUES(2008,'9',6,2,'3','0x2','1:1:1:2:2:2:3:3:4:4',10,'1','no',0,'0','0','weapon','0','RK_DRAGONBREATH','Dragon Breath');
REPLACE INTO `skill_db` VALUES(2009,'0',6,4,'0','0x3','3:4:5:6:7',5,'1','yes',0,'0','0','none','0','RK_DRAGONHOWLING','Dragon Howling');
REPLACE INTO `skill_db` VALUES(2010,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','RK_RUNEMASTERY','Rune Mastery');
REPLACE INTO `skill_db` VALUES(2011,'0',6,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','RK_MILLENNIUMSHIELD','Millenium Shield');
REPLACE INTO `skill_db` VALUES(2012,'1',6,4,'-1','0','0x8',1,'1','yes',0,'0','0','weapon','0','RK_CRUSHSTRIKE','Crush Strike');
REPLACE INTO `skill_db` VALUES(2013,'0',6,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','RK_REFRESH','Refresh');
REPLACE INTO `skill_db` VALUES(2014,'0',6,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','RK_GIANTGROWTH','Giant Growth');
REPLACE INTO `skill_db` VALUES(2015,'0',6,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','RK_STONEHARDSKIN','Stone Hard Skin');
REPLACE INTO `skill_db` VALUES(2016,'0',6,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','RK_VITALITYACTIVATION','Vitality Activation');
REPLACE INTO `skill_db` VALUES(2017,'0',6,4,'-1','0x2','3',1,'1','no',0,'0','0','weapon','7','RK_STORMBLAST','Storm Blast');
REPLACE INTO `skill_db` VALUES(2018,'0',6,4,'0','0x3','-1',1,'1','yes',0,'0','0','none','0','RK_FIGHTINGSPIRIT','Fighting Spirit //CHECK Is this splash needed?');
REPLACE INTO `skill_db` VALUES(2019,'9',6,4,'6','0x1','0',1,'1','yes',0,'0','0','none','0','RK_ABUNDANCE','Abundance');
REPLACE INTO `skill_db` VALUES(2020,'5:6:7:8:9',6,1,'-1','0','0',5,'1','yes',0,'0','0','weapon','0','RK_PHANTOMTHRUST','Phantom Thrust');
REPLACE INTO `skill_db` VALUES(2021,'10',6,1,'0','0x1','0',5,'1','no',0,'0','0','none','0','GC_VENOMIMPRESS','Venom Impress');
REPLACE INTO `skill_db` VALUES(2022,'3',8,1,'-1','0','0',5,'-7','no',0,'0','0','weapon','0','GC_CROSSIMPACT','Cross Impact');
REPLACE INTO `skill_db` VALUES(2023,'5:6:7:8:9',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','GC_DARKILLUSION','Dark Illusion');
REPLACE INTO `skill_db` VALUES(2024,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','GC_RESEARCHNEWPOISON','Research New Poison');
REPLACE INTO `skill_db` VALUES(2025,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','GC_CREATENEWPOISON','Create New Poison');
REPLACE INTO `skill_db` VALUES(2026,'5',6,16,'0','0x1','0',1,'1','no',0,'0','0','none','0','GC_ANTIDOTE','Antidote');
REPLACE INTO `skill_db` VALUES(2027,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','GC_POISONINGWEAPON','Poisoning Weapon');
REPLACE INTO `skill_db` VALUES(2028,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','GC_WEAPONBLOCKING','Weapon Blocking');
REPLACE INTO `skill_db` VALUES(2029,'-2',6,4,'-1','0x2','1',5,'1','no',0,'0','0','weapon','3','GC_COUNTERSLASH','Counter Slash');
REPLACE INTO `skill_db` VALUES(2030,'-2',6,4,'-1','0x1','0',5,'1','no',0,'0x200','0','weapon','0','GC_WEAPONCRUSH','Weapon Crush //CHECK SHould this and the above skill have INF2 0x200?');
REPLACE INTO `skill_db` VALUES(2031,'1',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','GC_VENOMPRESSURE','Venom Pressure');
REPLACE INTO `skill_db` VALUES(2032,'5',6,2,'0','0x1','0',5,'1','yes',0,'0','1','none','0','GC_POISONSMOKE','Poison Smoke');
REPLACE INTO `skill_db` VALUES(2033,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','GC_CLOAKINGEXCEED','Cloaking Exceed');
REPLACE INTO `skill_db` VALUES(2034,'0',6,4,'-1','0x2','3',1,'1','no',0,'0','0','weapon','0','GC_PHANTOMMENACE','Phantom Menace');
REPLACE INTO `skill_db` VALUES(2035,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','GC_HALLUCINATIONWALK','Hallucination Walk');
REPLACE INTO `skill_db` VALUES(2036,'0',6,4,'-1','0x2','1:1:1:1:2',5,'1','no',0,'0','0','weapon','0','GC_ROLLINGCUTTER','Rolling Cutter');
REPLACE INTO `skill_db` VALUES(2037,'9:10:11:12:13',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','GC_CROSSRIPPERSLASHER','Cross Ripper Slasher');
REPLACE INTO `skill_db` VALUES(2038,'11',8,1,'6','0x2','3',5,'-3','yes',0,'0','0','magic','0','AB_JUDEX','Judex');
REPLACE INTO `skill_db` VALUES(2039,'0',6,4,'0','0x1','0',1,'1','yes',0,'0','0','magic','0','AB_ANCILLA','Ancilla');
REPLACE INTO `skill_db` VALUES(2040,'11',8,1,'6','0','0',10,'-10','yes',0,'0','0','magic','0','AB_ADORAMUS','Adoramus');
REPLACE INTO `skill_db` VALUES(2041,'0',6,4,'0','0x3','3:7:15',3,'1','yes',0,'0','0','magic','0','AB_CLEMENTIA','Crementia');
REPLACE INTO `skill_db` VALUES(2042,'0',6,4,'0','0x3','3:7:15',3,'1','yes',0,'0','0','magic','0','AB_CANTO','Canto Candidus');
REPLACE INTO `skill_db` VALUES(2043,'0',6,4,'6','0x3','3:7:15',3,'1','yes',0,'0','0','magic','0','AB_CHEAL','Coluceo Heal');
REPLACE INTO `skill_db` VALUES(2044,'11',6,2,'6','0x1','0',5,'1','yes',0,'0','1','magic','0','AB_EPICLESIS','Epiclesis');
REPLACE INTO `skill_db` VALUES(2045,'0',6,4,'0','0x3','15',10,'1','yes',0,'0','0','magic','0','AB_PRAEFATIO','Praefatio');
REPLACE INTO `skill_db` VALUES(2046,'0',6,4,'6','0x3','15',10,'1','yes',0,'0','0','magic','0','AB_ORATIO','Oratio');
REPLACE INTO `skill_db` VALUES(2047,'0',6,4,'6','0x3','15',4,'1','yes',0,'0','0','magic','0','AB_LAUDAAGNUS','Lauda Agnus');
REPLACE INTO `skill_db` VALUES(2048,'0',6,4,'6','0x3','15',4,'1','yes',0,'0','0','magic','0','AB_LAUDARAMUS','Lauda Ramus');
REPLACE INTO `skill_db` VALUES(2049,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','AB_EUCHARISTICA','Eucharistica');
REPLACE INTO `skill_db` VALUES(2050,'11',6,16,'6','0x1','0',1,'1','yes',0,'0','0','magic','0','AB_RENOVATIO','Renovatio');
REPLACE INTO `skill_db` VALUES(2051,'11',6,16,'6','0x21','0',5,'1','yes',0,'0','0','magic','0','AB_HIGHNESSHEAL','Highness Heal //CHECK Info shows this has magic attack.');
REPLACE INTO `skill_db` VALUES(2052,'11',6,16,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','AB_CLEARANCE','Clearance');
REPLACE INTO `skill_db` VALUES(2053,'11',6,16,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','AB_EXPIATIO','Expiatio //CHECK Does this also give the buff to party members?');
REPLACE INTO `skill_db` VALUES(2054,'0',6,4,'6','0x1','0',10,'1','yes',0,'0','0','none','0','AB_DUPLELIGHT','Duple Light //CHECK Had issues adding a skill level check to make the % go higher with the skills level. Will do later.');
REPLACE INTO `skill_db` VALUES(2055,'-1',6,1,'-1','0','0',10,'1','no',0,'0','0','weapon','0','AB_DUPLELIGHT_MELEE','Duple Light Melee');
REPLACE INTO `skill_db` VALUES(2056,'-1',6,1,'0','0','0',10,'1','no',0,'0','0','magic','0','AB_DUPLELIGHT_MAGIC','Duple Light Magic');
REPLACE INTO `skill_db` VALUES(2057,'0',6,4,'6','0x3','4:5:6:7:8',5,'1','yes',0,'0','0','magic','0','AB_SILENTIUM','Silentium //CHECk Marked magic attack as well. Hmmmm....');
REPLACE INTO `skill_db` VALUES(2201,'11',6,16,'0','0','0',5,'1','yes',0,'0','0','magic','0','WL_WHITEIMPRISON','White Imprison');
REPLACE INTO `skill_db` VALUES(2202,'11',8,1,'8','0x2','1:1:1:2:2',5,'-2','yes',0,'0','0','magic','0','WL_SOULEXPANSION','Soul Expansion');
REPLACE INTO `skill_db` VALUES(2203,'0',8,4,'1','0x2','13',5,'-3:-4:-5:-6:-7','yes',0,'0','0','magic','0','WL_FROSTMISTY','Frosty Misty');
REPLACE INTO `skill_db` VALUES(2204,'0',8,4,'1','0x2','13',5,'-5','yes',0,'0','0','magic','0','WL_JACKFROST','Jack Frost');
REPLACE INTO `skill_db` VALUES(2205,'11',6,1,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','WL_MARSHOFABYSS','Marsh of Abyss');
REPLACE INTO `skill_db` VALUES(2206,'0',6,4,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','WL_RECOGNIZEDSPELL','Recognized Spell');
REPLACE INTO `skill_db` VALUES(2207,'7',6,1,'2','0x3','1:2:2:3:3',5,'0','yes',0,'0','0','magic','0','WL_SIENNAEXECRATE','Sienna Execrate');
REPLACE INTO `skill_db` VALUES(2208,'0',0,0,'0','0','0',3,'0','no',0,'0','0','none','0','WL_RADIUS','Radius');
REPLACE INTO `skill_db` VALUES(2209,'0',6,4,'0','0x3','9:10:11:12:13',5,'1','yes',0,'0','0','magic','0','WL_STASIS','Stasis');
REPLACE INTO `skill_db` VALUES(2210,'11',6,1,'0','0','0',5,'1','yes',0,'0','0','magic','0','WL_DRAINLIFE','Drain Life');
REPLACE INTO `skill_db` VALUES(2211,'11',8,1,'3','0x2','3',5,'-7','yes',0,'0','0','magic','3','WL_CRIMSONROCK','Crimson Rock');
REPLACE INTO `skill_db` VALUES(2212,'11',6,1,'3','0','0',5,'1','yes',0,'0','0','magic','0','WL_HELLINFERNO','Hell Inferno');
REPLACE INTO `skill_db` VALUES(2213,'11',8,2,'0','0','0',5,'-20','yes',0,'0','0','magic','2','WL_COMET','Comet');
REPLACE INTO `skill_db` VALUES(2214,'11',6,1,'0','0','3',5,'1','yes',0,'0','0','magic','0','WL_CHAINLIGHTNING','Chain Lightning ');
REPLACE INTO `skill_db` VALUES(2215,'11',6,1,'4','0','0',5,'1','no',0,'0','0','magic','0','WL_CHAINLIGHTNING_ATK','Chain Lightning Attack');
REPLACE INTO `skill_db` VALUES(2216,'3',8,2,'2','0','0',5,'-6:-7:-8:-9:-10','yes',0,'0','0','magic','0','WL_EARTHSTRAIN','Earth Strain');
REPLACE INTO `skill_db` VALUES(2217,'11',6,1,'0','0','0',5,'1','yes',0,'0','0','magic','0','WL_TETRAVORTEX','Tetra Vortex');
REPLACE INTO `skill_db` VALUES(2218,'11',6,1,'3','0','0',5,'1','no',0,'0','0','magic','0','WL_TETRAVORTEX_FIRE','Tetra Vortex Fire');
REPLACE INTO `skill_db` VALUES(2219,'11',6,1,'1','0','0',5,'1','no',0,'0','0','magic','0','WL_TETRAVORTEX_WATER','Tetra Vortex Water');
REPLACE INTO `skill_db` VALUES(2220,'11',6,1,'4','0','0',5,'1','no',0,'0','0','magic','0','WL_TETRAVORTEX_WIND','Tetra Vortex Wind');
REPLACE INTO `skill_db` VALUES(2221,'11',6,1,'2','0','0',5,'1','no',0,'0','0','magic','0','WL_TETRAVORTEX_GROUND','Tetra Vortex Earth');
REPLACE INTO `skill_db` VALUES(2222,'0',6,4,'3','0x1','0',5,'1','yes',0,'0','0','magic','0','WL_SUMMONFB','Summon Fire Ball');
REPLACE INTO `skill_db` VALUES(2223,'0',6,4,'4','0x1','0',5,'1','yes',0,'0','0','magic','0','WL_SUMMONBL','Summon Lightning Ball');
REPLACE INTO `skill_db` VALUES(2224,'0',6,4,'1','0x1','0',5,'1','yes',0,'0','0','magic','0','WL_SUMMONWB','Summon Water Ball');
REPLACE INTO `skill_db` VALUES(2225,'11',6,1,'3','0','0',5,'1','no',0,'0','1','magic','0','WL_SUMMON_ATK_FIRE','Summon Attack Fire ');
REPLACE INTO `skill_db` VALUES(2226,'11',6,1,'4','0','0',5,'1','no',0,'0','1','magic','0','WL_SUMMON_ATK_WIND','Summon Attack Wind');
REPLACE INTO `skill_db` VALUES(2227,'11',6,1,'1','0','0',5,'1','no',0,'0','1','magic','0','WL_SUMMON_ATK_WATER','Summon Attack Water');
REPLACE INTO `skill_db` VALUES(2228,'11',6,1,'2','0','0',5,'1','no',0,'0','1','magic','0','WL_SUMMON_ATK_GROUND','Summon Attack Earth');
REPLACE INTO `skill_db` VALUES(2229,'0',6,4,'2','0x1','0',5,'1','yes',0,'0','0','magic','0','WL_SUMMONSTONE','Summon Stone');
REPLACE INTO `skill_db` VALUES(2230,'11',6,1,'0','0','0',2,'1','yes',0,'0','0','magic','0','WL_RELEASE','Release');
REPLACE INTO `skill_db` VALUES(2231,'0',6,4,'0','0x1','0',1,'1','yes',0,'0','0','magic','0','WL_READING_SB','Reading Spellbook');
REPLACE INTO `skill_db` VALUES(2232,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','WL_FREEZE_SP','Freeze Spell');
REPLACE INTO `skill_db` VALUES(2233,'9',8,1,'-1','0x2','3:3:3:3:3:4:4:4:4:5',10,'-3','yes',0,'0','0','weapon','0',' RA_ARROWSTORM','Arrow Storm');
REPLACE INTO `skill_db` VALUES(2234,'0',6,4,'0','0','0',5,'1','yes',0,'0','0','none','0','RA_FEARBREEZE','Fear Breeze');
REPLACE INTO `skill_db` VALUES(2235,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','RA_RANGERMAIN','Ranger Main');
REPLACE INTO `skill_db` VALUES(2236,'9',8,1,'-1','0','0',10,'1','yes',0,'0','0','weapon','0','RA_AIMEDBOLT','Aimed Bolt');
REPLACE INTO `skill_db` VALUES(2237,'9',6,2,'0','0x3','3',1,'1','no',0,'0','0','none','0','RA_DETONATOR','Detonator');
REPLACE INTO `skill_db` VALUES(2238,'3',6,2,'0','0x3','2',5,'1','no',0,'0x80','3','misc','0','RA_ELECTRICSHOCKER','Electric Shocker');
REPLACE INTO `skill_db` VALUES(2239,'3',6,2,'0','0x42','3',5,'1','no',0,'0x80','3','misc','0','RA_CLUSTERBOMB','Cluster Bomb');
REPLACE INTO `skill_db` VALUES(2240,'0',6,4,'0','0','0',1,'1','no',0,'0','0','none','0','RA_WUGMASTERY','Warg Mastery');
REPLACE INTO `skill_db` VALUES(2241,'0',6,4,'0','0','0',3,'1','no',0,'0','0','none','0','RA_WUGRIDER','Warg Rider');
REPLACE INTO `skill_db` VALUES(2242,'0',6,4,'-1','0x2','1',1,'0','no',0,'0','0','weapon','0','RA_WUGDASH','Warg Dash');
REPLACE INTO `skill_db` VALUES(2243,'9',6,1,'0','0','0',5,'1','no',0,'0','0','weapon','0','RA_WUGSTRIKE','Warg Strike');
REPLACE INTO `skill_db` VALUES(2244,'9',6,1,'0','0','0',5,'1','no',0,'0','0','weapon','0','RA_WUGBITE','Warg Bite');
REPLACE INTO `skill_db` VALUES(2245,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','RA_TOOTHOFWUG','Tooth of Warg');
REPLACE INTO `skill_db` VALUES(2246,'0',6,4,'0','0x2','3:4:5:6:7',5,'1','no',0,'0','0','weapon','0','RA_SENSITIVEKEEN','Sensitive Keen');
REPLACE INTO `skill_db` VALUES(2247,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','RA_CAMOUFLAGE','Camouflage');
REPLACE INTO `skill_db` VALUES(2248,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','RA_RESEARCHTRAP','Research Trap');
REPLACE INTO `skill_db` VALUES(2249,'3',6,2,'3','0x43','2',1,'1','no',0,'0x80','1','misc','0','RA_MAGENTATRAP','Magenta Trap');
REPLACE INTO `skill_db` VALUES(2250,'3',6,2,'1','0x43','2',1,'1','no',0,'0x80','1','misc','0','RA_COBALTTRAP','Cobalt Trap');
REPLACE INTO `skill_db` VALUES(2251,'3',6,2,'2','0x43','2',1,'1','no',0,'0x80','1','misc','0','RA_MAIZETRAP','Maize Trap');
REPLACE INTO `skill_db` VALUES(2252,'3',6,2,'4','0x43','2',1,'1','no',0,'0x80','1','misc','0','RA_VERDURETRAP','Verdure Trap');
REPLACE INTO `skill_db` VALUES(2253,'3',6,2,'3','0x42','2',5,'1','no',0,'0x80','2','misc','0','RA_FIRINGTRAP','Firing Trap');
REPLACE INTO `skill_db` VALUES(2254,'3',6,2,'1','0x42','2',5,'1','no',0,'0x80','2','misc','0','RA_ICEBOUNDTRAP','Icebound Trap');
REPLACE INTO `skill_db` VALUES(2255,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','NC_MADOLICENCE','Mado License');
REPLACE INTO `skill_db` VALUES(2256,'11',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','NC_BOOSTKNUCKLE','Boost Knuckle');
REPLACE INTO `skill_db` VALUES(2257,'3',6,1,'-1','0','0',3,'1','no',0,'0','0','weapon','0','NC_PILEBUNKER','Pile Bunker');
REPLACE INTO `skill_db` VALUES(2258,'13',6,1,'-1','0x2','1',3,'1','no',0,'0','0','weapon','0','NC_VULCANARM','Vulcan Arm');
REPLACE INTO `skill_db` VALUES(2259,'7',6,1,'3','0','2',3,'1','no',0,'0','5','weapon','0','NC_FLAMELAUNCHER','Flame Launcher');
REPLACE INTO `skill_db` VALUES(2260,'7',6,2,'1','0x2','2:3:4',3,'1','no',0,'0','0','weapon','0','NC_COLDSLOWER','Cold Slower');
REPLACE INTO `skill_db` VALUES(2261,'9:11:13',6,1,'-1','0x42','3:2:1',3,'1','no',0,'0','0','weapon','0','NC_ARMSCANNON','Arm Cannon');
REPLACE INTO `skill_db` VALUES(2262,'0',6,4,'0','0x1','0',3,'1','no',0,'0','0','none','0','NC_ACCELERATION','Acceleration');
REPLACE INTO `skill_db` VALUES(2263,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','NC_HOVERING','Hovering');
REPLACE INTO `skill_db` VALUES(2264,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','7','NC_F_SIDESLIDE','Front-Side Slide');
REPLACE INTO `skill_db` VALUES(2265,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','7','NC_B_SIDESLIDE','Back-Side Slide');
REPLACE INTO `skill_db` VALUES(2266,'0',0,0,'0','0','0',4,'0','no',0,'0','0','none','0','NC_MAINFRAME','Mainframe Restructure // Check me. Part of the code notes translated to "The amount of fuel have".');
REPLACE INTO `skill_db` VALUES(2267,'0',6,4,'-1','0xC2','2:3:4',3,'1','no',0,'0','0','misc','5','NC_SELFDESTRUCTION','Self Destruction');
REPLACE INTO `skill_db` VALUES(2268,'0',6,4,'0','0x1','0',4,'1','yes',0,'0','0','none','0','NC_SHAPESHIFT','Shape Shift');
REPLACE INTO `skill_db` VALUES(2269,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','NC_EMERGENCYCOOL','Emergency Cool');
REPLACE INTO `skill_db` VALUES(2270,'0',6,4,'0','0x3','7',1,'1','yes',0,'0','0','none','0','NC_INFRAREDSCAN','Infrared Scan');
REPLACE INTO `skill_db` VALUES(2271,'9',6,1,'0','0x1','0',3,'1','yes',0,'0','0','none','0','NC_ANALYZE','Analyze');
REPLACE INTO `skill_db` VALUES(2272,'0',6,4,'0','0x3','2',3,'1','yes',0,'0','0','none','0','NC_MAGNETICFIELD','Magnetic Field');
REPLACE INTO `skill_db` VALUES(2273,'0',6,4,'0','0x1','0',3,'1','yes',0,'0','0','none','0','NC_NEUTRALBARRIER','Neutral Barrier');
REPLACE INTO `skill_db` VALUES(2274,'0',6,4,'0','0x1','0',3,'1','yes',0,'0','0','none','0','NC_STEALTHFIELD','Stealth Field');
REPLACE INTO `skill_db` VALUES(2275,'5:6:7:8:9',6,16,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','NC_REPAIR','Repair');
REPLACE INTO `skill_db` VALUES(2276,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','NC_TRAININGAXE','Axe Training');
REPLACE INTO `skill_db` VALUES(2277,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','NC_RESEARCHFE','Research Fire/Earth');
REPLACE INTO `skill_db` VALUES(2278,'5:6:7:8:9',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','2:3:4:5:6','NC_AXEBOOMERANG','Axe Boomerang');
REPLACE INTO `skill_db` VALUES(2279,'1',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','NC_POWERSWING','Power Swing');
REPLACE INTO `skill_db` VALUES(2280,'0',8,4,'-1','0x2','2:2:3:3:3',5,'-3','no',0,'0','0','weapon','0','NC_AXETORNADO','Axe Tornado // Check me. Takes 20 * Skill LV amount of HP each use.');
REPLACE INTO `skill_db` VALUES(2281,'2',6,2,'0','0x1','0',5,'1','yes',0,'0','2','none','0','NC_SILVERSNIPER','FAW - Silver Sniper');
REPLACE INTO `skill_db` VALUES(2282,'2',6,2,'0','0x1','0',5,'1','yes',0,'0','2','none','0','NC_MAGICDECOY','FAW - Magic Decoy');
REPLACE INTO `skill_db` VALUES(2283,'2',6,1,'0','0x1','0',1,'1','no',0,'0','0','none','0','NC_DISJOINT','FAW Removal');
REPLACE INTO `skill_db` VALUES(2284,'1',6,1,'-1','0x2','1',5,'1','no',0,'0','0','weapon','0','SC_FATALMENACE','Fatal Menace');
REPLACE INTO `skill_db` VALUES(2285,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','none','0','SC_REPRODUCE','Reproduce');
REPLACE INTO `skill_db` VALUES(2286,'0',6,4,'0','0x1','0',10,'1','yes',0,'0','0','none','0','SC_AUTOSHADOWSPELL','Auto Shadow Spell');
REPLACE INTO `skill_db` VALUES(2287,'5',6,1,'0','0x1','0',5,'1','no',0,'0','0','none','0','SC_SHADOWFORM','Shadow Form');
REPLACE INTO `skill_db` VALUES(2288,'7:7:7:9:9:9:9:11:11:11',8,1,'-1','0','0',10,'-3','yes',0,'0','0','weapon','3','SC_TRIANGLESHOT','Triangle Shot');
REPLACE INTO `skill_db` VALUES(2289,'0',6,4,'0','0x3','2',5,'1','no',0,'0','0','none','0','SC_BODYPAINT','Body Painting');
REPLACE INTO `skill_db` VALUES(2290,'0',6,4,'0','0x1','0',5,'1','yes',0,'0','0','none','0','SC_INVISIBILITY','Invisibility');
REPLACE INTO `skill_db` VALUES(2291,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','SC_DEADLYINFECT','Deadly Infect');
REPLACE INTO `skill_db` VALUES(2292,'3',6,1,'0','0x1','0',3,'1','yes',0,'0','0','none','0','SC_ENERVATION','Masquerade - Enervation');
REPLACE INTO `skill_db` VALUES(2293,'3',6,1,'0','0x1','0',3,'1','yes',0,'0','0','none','0','SC_GROOMY','Masquerade - Gloomy');
REPLACE INTO `skill_db` VALUES(2294,'3',6,1,'0','0x1','0',3,'1','yes',0,'0','0','none','0','SC_IGNORANCE','Masquerade - Ignorance');
REPLACE INTO `skill_db` VALUES(2295,'3',6,1,'0','0x1','0',3,'1','yes',0,'0','0','none','0','SC_LAZINESS','Masquerade - Laziness');
REPLACE INTO `skill_db` VALUES(2296,'3',6,1,'0','0x1','0',3,'1','yes',0,'0','0','none','0','SC_UNLUCKY','Masquerade - Unlucky');
REPLACE INTO `skill_db` VALUES(2297,'3',6,1,'0','0x1','0',3,'1','yes',0,'0','0','none','0','SC_WEAKNESS','Masquerade - Weakness');
REPLACE INTO `skill_db` VALUES(2298,'3',6,1,'0','0x1','0',5,'1','yes',0,'0','0','weapon','0','SC_STRIPACCESSARY','Strip Accessory //CHECK Is weapon attack type needed?');
REPLACE INTO `skill_db` VALUES(2299,'7',6,2,'0','0x1','0',3,'1','yes',0,'0','3','magic','0','SC_MANHOLE','Man Hole');
REPLACE INTO `skill_db` VALUES(2300,'7',6,2,'0','0x1','0',3,'1','yes',0,'0','1','magic','0','SC_DIMENSIONDOOR','Dimension Door');
REPLACE INTO `skill_db` VALUES(2301,'7',6,2,'0','0x1','2',3,'1','yes',0,'0','1','magic','0','SC_CHAOSPANIC','Chaos Panic');
REPLACE INTO `skill_db` VALUES(2302,'7',6,2,'0','0x1','2',3,'1','yes',0,'0','1','magic','0','SC_MAELSTROM','Maelstrom');
REPLACE INTO `skill_db` VALUES(2303,'7',6,2,'0','0x1','0',3,'1','yes',0,'0','0','none','0','SC_BLOODYLUST','Bloody Lust');
REPLACE INTO `skill_db` VALUES(2304,'0',6,4,'-1','0','0',3,'1','no',0,'0','0','weapon','0','SC_FEINTBOMB','Feint Bomb');
REPLACE INTO `skill_db` VALUES(2307,'11',8,1,'-1','0','2',5,'1','no',0,'0','10','weapon','0','LG_CANNONSPEAR','Cannon Spear');
REPLACE INTO `skill_db` VALUES(2308,'7',6,1,'-1','0','0',10,'1','no',0,'0','0','weapon','0','LG_BANISHINGPOINT','Banishing Point');
REPLACE INTO `skill_db` VALUES(2309,'0',6,4,'0','0x3','2',3,'1','no',0,'0','0','none','0','LG_TRAMPLE','Trample');
REPLACE INTO `skill_db` VALUES(2310,'1',6,1,'0','0','0',5,'1','no',0,'0','0','weapon','0','LG_SHIELDPRESS','Shield Press');
REPLACE INTO `skill_db` VALUES(2311,'0',6,4,'0','0x3','3',5,'1','no',0,'0','0','none','0','LG_REFLECTDAMAGE','Reflect Damage');
REPLACE INTO `skill_db` VALUES(2312,'5',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','LG_PINPOINTATTACK','Pinpoint Attack');
REPLACE INTO `skill_db` VALUES(2313,'0',6,4,'0','0x1','0',5,'1','yes',0,'0','0','none','0','LG_FORCEOFVANGUARD','Force of Vanguard');
REPLACE INTO `skill_db` VALUES(2314,'1',6,1,'-1','0','0',1,'1','no',0,'0','0','weapon','0','LG_RAGEBURST','Rage Burst');
REPLACE INTO `skill_db` VALUES(2315,'0',6,4,'0:6:0','0x2','0',3,'1','yes',0,'0','0','none','2:0:0','LG_SHIELDSPELL','Shield Spell');
REPLACE INTO `skill_db` VALUES(2316,'0',6,4,'0','0x1','0',5,'1','yes',0,'0','0','none','0','LG_EXEEDBREAK','Exceed Break');
REPLACE INTO `skill_db` VALUES(2317,'2',6,2,'-1','0x2','0',5,'1','yes',0,'0','0','weapon','0',' LG_OVERBRAND','Over Brand');
REPLACE INTO `skill_db` VALUES(2318,'0',6,4,'0','0x1','0',5,'1','yes',0,'0','0','none','0','LG_PRESTIGE','Prestige');
REPLACE INTO `skill_db` VALUES(2319,'0',6,4,'0','0x1','3',5,'1','no',0,'0','0','weapon','0','LG_BANDING','Banding //CHECK Splash isnt needed right? Banding has its own UNIT ID.');
REPLACE INTO `skill_db` VALUES(2320,'0',6,4,'-1','0x2','3',5,'1','yes',0,'0','0','weapon','0','LG_MOONSLASHER','Moon Slasher');
REPLACE INTO `skill_db` VALUES(2321,'1',8,2,'6','0x2','5',5,'-7','yes',0,'0','0','weapon','0','LG_RAYOFGENESIS','Ray of Genesis');
REPLACE INTO `skill_db` VALUES(2322,'0',6,16,'0','0x3','1',5,'1','yes',0,'0','0','none','0','LG_PIETY','Piety');
REPLACE INTO `skill_db` VALUES(2323,'0',8,4,'2','0x2','1:1:2:2:3',5,'-5','yes',0,'0','0','weapon','0','LG_EARTHDRIVE','Earth Drive');
REPLACE INTO `skill_db` VALUES(2324,'3',8,1,'-1','0','0',5,'3','yes',0,'0','0','weapon','0','LG_HESPERUSLIT','Hesperus Lit');
REPLACE INTO `skill_db` VALUES(2325,'0',6,4,'0','0x1','0',5,'1','yes',0,'0','0','none','0','LG_INSPIRATION','Inspiration');
REPLACE INTO `skill_db` VALUES(2519,'1',6,1,'-1','0x2','0',5,'1','yes',0,'0','0','weapon','3:4:5:6:7',' LG_OVERBRAND_BRANDISH','Over Brand');
REPLACE INTO `skill_db` VALUES(2326,'-2',8,1,'-1','0','0',10,'-2','no',0,'0','0','weapon','0','SR_DRAGONCOMBO','Dragon Combo');
REPLACE INTO `skill_db` VALUES(2327,'0',8,4,'-1','0x2','2',5,'-3','no',0,'0','0','weapon','3','SR_SKYNETBLOW','Sky Net Blow');
REPLACE INTO `skill_db` VALUES(2328,'0',6,4,'-1','0x2','1:2:3:4:5',5,'1','no',0,'0','0','weapon','0','SR_EARTHSHAKER','Earth Shaker //CHECK Must add a check in battle.c to triple damage if hitting a hidden target.');
REPLACE INTO `skill_db` VALUES(2329,'-2',8,4,'-1','0','0',5,'-2','no',0,'0x200','0','weapon','0','SR_FALLENEMPIRE','Fallen Empire //CHECK Video shows 2 hits. Is it sub hits? Yes its divided between 2 hits.');
REPLACE INTO `skill_db` VALUES(2330,'-2',6,1,'-1','0x42','1:1:1:1:1:2:2:2:2:2',10,'1','yes',0,'0','0','weapon','0','SR_TIGERCANNON','Tiger Cannon //CHECK Need to fix to be enemy targeted and also combo after Fallen Empire.');
REPLACE INTO `skill_db` VALUES(2331,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','SR_HELLGATE','Hell Gate');
REPLACE INTO `skill_db` VALUES(2332,'5',6,4,'-1','0x2','3',5,'1','no',0,'0','0','weapon','0','SR_RAMPAGEBLASTER','Rampage Blaster');
REPLACE INTO `skill_db` VALUES(2333,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','SR_CRESCENTELBOW','Crescent Elbow //CHECK Check the autospell ID.');
REPLACE INTO `skill_db` VALUES(2334,'0',6,4,'0','0x3','1:1:2:2:3',5,'1','no',0,'0','0','none','0','SR_CURSEDCIRCLE','Cursed Circle');
REPLACE INTO `skill_db` VALUES(2335,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','SR_LIGHTNINGWALK','Lightning Walk');
REPLACE INTO `skill_db` VALUES(2336,'7:8:9:10:11',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','2:3:4:5:6','SR_KNUCKLEARROW','Knuckle Arrow');
REPLACE INTO `skill_db` VALUES(2337,'0',6,4,'-1','0x2','2',1,'1','yes',0,'0','0','weapon','0','SR_WINDMILL','Windmill');
REPLACE INTO `skill_db` VALUES(2338,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','none','0','SR_RAISINGDRAGON','Raising Dragon');
REPLACE INTO `skill_db` VALUES(2339,'0',0,0,'0','0','0',5,'1','no',0,'0','0','none','0','SR_GENTLETOUCH','Gentle Touch');
REPLACE INTO `skill_db` VALUES(2340,'0',6,4,'0','0x3','2',1,'1','no',0,'0','0','none','0','SR_ASSIMILATEPOWER','Assimilate Power');
REPLACE INTO `skill_db` VALUES(2341,'3',6,16,'0','0x1','0',1,'1','yes',0,'0x200','0','none','0','SR_POWERVELOCITY','Power Velocity');
REPLACE INTO `skill_db` VALUES(2342,'1',6,1,'-1','0x20','0',5,'1','no',0,'0','0','weapon','7','SR_CRESCENTELBOW_AUTOSPELL','Crescent Elbow Autospell //CHECK Does this ignore defense?');
REPLACE INTO `skill_db` VALUES(2343,'1:2:3:3:4:4:5:5:6:7',8,1,'0','0','0',10,'-7','yes',0,'0','0','weapon','0','SR_GATEOFHELL','Gate of Hell //CHECK Need to fix to be enemy targeted and also combo after Fallen Empire');
REPLACE INTO `skill_db` VALUES(2344,'2',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','SR_GENTLETOUCH_QUIET','Gentle Touch - Quiet');
REPLACE INTO `skill_db` VALUES(2345,'2',6,16,'0','0x1','0',5,'1','no',0,'0','0','magic','0','SR_GENTLETOUCH_CURE','Gentle Touch - Cure //CHECK Its a healing skill. Guessing it has to be magic type? Healing isnt working.');
REPLACE INTO `skill_db` VALUES(2346,'0',6,4,'0','0x1','0',5,'1','yes',0,'0','0','none','0','SR_GENTLETOUCH_ENERGYGAIN','Gentle Touch - Energy Gain');
REPLACE INTO `skill_db` VALUES(2347,'2',6,16,'0','0x1','0',5,'1','yes',0,'0','0','none','0','SR_GENTLETOUCH_CHANGE','Gentle Touch - Change');
REPLACE INTO `skill_db` VALUES(2348,'2',6,16,'0','0x1','0',5,'1','yes',0,'0','0','none','0','SR_GENTLETOUCH_REVITALIZE','Gentle Touch - Revitalize');
REPLACE INTO `skill_db` VALUES(2350,'0',6,4,'0','0x3','7:8:9:10:11',5,'1','yes',0,'0','0','none','0','WA_SWING_DANCE','Swing Dance');
REPLACE INTO `skill_db` VALUES(2351,'0',6,4,'0','0x3','7:8:9:10:11',5,'1','yes',0,'0','0','none','0','WA_SYMPHONY_OF_LOVER','Symphony of Lovers');
REPLACE INTO `skill_db` VALUES(2352,'0',6,4,'0','0x3','7:8:9:10:11',5,'1','yes',0,'0','0','none','0','WA_MOONLIT_SERENADE','Moonlit Serenade');
REPLACE INTO `skill_db` VALUES(2381,'0',6,4,'0','0x3','7:8:9:10:11',5,'1','yes',0,'0','0','none','0','MI_RUSH_WINDMILL','Windmill Rush Attack');
REPLACE INTO `skill_db` VALUES(2382,'0',6,4,'0','0x3','7:8:9:10:11',5,'1','yes',0,'0','0','none','0','MI_ECHOSONG','Echo Song');
REPLACE INTO `skill_db` VALUES(2383,'9',6,16,'0','0x1','0',5,'1','yes',0,'0','0','none','0','MI_HARMONIZE','Harmonize');
REPLACE INTO `skill_db` VALUES(2412,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','WM_LESSON','Lesson');
REPLACE INTO `skill_db` VALUES(2413,'9',8,1,'-1','0','0',5,'-2:-2:-3:-3:-4','yes',0,'0','0','magic','0','WM_METALICSOUND','Metallic Sound');
REPLACE INTO `skill_db` VALUES(2414,'9',6,2,'-1','0x1','1',5,'1','yes',0,'0x80','0','none','0','WM_REVERBERATION','Reverberation //CHECK May need to recode. Testing needed. Also need to test AoE size.');
REPLACE INTO `skill_db` VALUES(2415,'0',0,0,'-1','0','0',5,'1','no',0,'0','0','weapon','0','WM_REVERBERATION_MELEE','Reverberation Melee');
REPLACE INTO `skill_db` VALUES(2416,'0',0,0,'-1','0','0',5,'1','no',0,'0','0','magic','0','WM_REVERBERATION_MAGIC','Reverberation Magic');
REPLACE INTO `skill_db` VALUES(2417,'11',6,2,'0','0x3','5',1,'1','no',0,'0','0','none','0','WM_DOMINION_IMPULSE','Dominion Impulse');
REPLACE INTO `skill_db` VALUES(2418,'9',6,2,'0','0x1','0',5,'1','yes',0,'0','0','none','0','WM_SEVERE_RAINSTORM','Severe Rainstorm');
REPLACE INTO `skill_db` VALUES(2419,'9',6,2,'0','0x3','1',5,'1','yes',0,'0x80','5','none','0','WM_POEMOFNETHERWORLD','Poem of The Netherworld //CHECK May need to recode too.');
REPLACE INTO `skill_db` VALUES(2420,'0',6,4,'0','0x2','2:3:4:5:6',5,'1','yes',0,'0','0','none','0','WM_VOICEOFSIREN','Voice of Siren');
REPLACE INTO `skill_db` VALUES(2421,'7',6,16,'0','0x1','0',5,'1','yes',0,'0','0','none','0','WM_DEADHILLHERE','Valley of Death//Enemy targeted magic skill in official. Really? WTF???');
REPLACE INTO `skill_db` VALUES(2422,'0',6,4,'0','0x3','5:6:7:8:9',5,'1','yes',0,'0','0','none','0','WM_LULLABY_DEEPSLEEP','Deep Sleep Lullaby');
REPLACE INTO `skill_db` VALUES(2423,'0',6,4,'0','0x3','3:4:5:6:7',5,'1','yes',0,'0','0','none','0','WM_SIRCLEOFNATURE','Circle of Nature''s Sound');
REPLACE INTO `skill_db` VALUES(2424,'9',6,4,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','WM_RANDOMIZESPELL','Improvised Song');
REPLACE INTO `skill_db` VALUES(2425,'9',6,16,'0','0x1','0',5,'1','yes',0,'0','0','none','0','WM_GLOOMYDAY','Gloomy Day');
REPLACE INTO `skill_db` VALUES(2426,'9',6,2,'0','0x2','2:3:3:4:4',5,'1','yes',0,'0x4000','0','weapon','0','WM_GREAT_ECHO','Great Echo//Skill type in official is set to none. Why?');
REPLACE INTO `skill_db` VALUES(2427,'0',6,4,'0','0x3','5:6:7:8:9',5,'1','yes',0,'0x4000','0','none','0','WM_SONG_OF_MANA','Song of Mana');
REPLACE INTO `skill_db` VALUES(2428,'0',6,4,'0','0x3','5:6:7:8:9',5,'1','yes',0,'0x4000','0','none','0','WM_DANCE_WITH_WUG','Dance With A Warg');
REPLACE INTO `skill_db` VALUES(2429,'9',6,2,'0','0x42','4:4:5:5:6',5,'1','yes',0,'0x4000','0','none','0','WM_SOUND_OF_DESTRUCTION','Sound of Destruction//Using clif damage to deal the fixed damage for now. Testing needed to see how it dealed.');
REPLACE INTO `skill_db` VALUES(2430,'0',6,4,'0','0x3','3:4:5:6:7',5,'1','yes',0,'0x4000','0','none','0','WM_SATURDAY_NIGHT_FEVER','Saturday Night Fever//Info for above skill. Type in official is magic. Has damage changed since 2011? Recheck AoE.');
REPLACE INTO `skill_db` VALUES(2431,'0',6,4,'0','0x3','5:5:6:6:7',5,'1','yes',0,'0x4000','0','none','0','WM_LERADS_DEW','Lerad''s Dew');
REPLACE INTO `skill_db` VALUES(2432,'0',6,4,'0','0x3','5:5:6:6:7',5,'1','yes',0,'0x4000','0','none','0','WM_MELODYOFSINK','Melody of Sink');
REPLACE INTO `skill_db` VALUES(2433,'0',6,4,'0','0x3','5:5:6:6:7',5,'1','yes',0,'0x4000','0','none','0','WM_BEYOND_OF_WARCRY','Warcry of Beyond');
REPLACE INTO `skill_db` VALUES(2434,'0',6,4,'0','0x3','5:5:6:6:7',5,'1','yes',0,'0x4000','0','none','0','WM_UNLIMITED_HUMMING_VOICE','Unlimited Humming Voice');
REPLACE INTO `skill_db` VALUES(2443,'0',6,4,'3','0','0',5,'1','yes',0,'0','8:10:12:14:16','magic','0','SO_FIREWALK','Fire Walk //CHECK Video and data shows each cell only hits once.');
REPLACE INTO `skill_db` VALUES(2444,'0',6,4,'4','0','0',5,'1','yes',0,'0','8:10:12:14:16','magic','0','SO_ELECTRICWALK','Electric Walk');
REPLACE INTO `skill_db` VALUES(2445,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','SO_SPELLFIST','Spell Fist');
REPLACE INTO `skill_db` VALUES(2446,'9',6,2,'2','0','0',5,'-3','yes',0,'0','0','magic','0','SO_EARTHGRAVE','Earth Grave');
REPLACE INTO `skill_db` VALUES(2447,'9',6,2,'1','0','0',5,'-5','yes',0,'0','0','magic','0','SO_DIAMONDDUST','Diamond Dust');
REPLACE INTO `skill_db` VALUES(2448,'9',6,1,'5','0x2','1:1:1:1:2',5,'1','yes',0,'0','0','magic','0','SO_POISON_BUSTER','Poison Buster');
REPLACE INTO `skill_db` VALUES(2449,'9',6,2,'0','0','0',5,'1','yes',0,'0','0','magic','0','SO_PSYCHIC_WAVE','Psychic Wave');
REPLACE INTO `skill_db` VALUES(2450,'9',6,2,'5','0','0',5,'1','yes',0,'0','0','magic','0','SO_CLOUD_KILL','Cloud Kill');
REPLACE INTO `skill_db` VALUES(2451,'9',6,16,'0','0x1','0',5,'1','yes',0,'0','0','none','0','SO_STRIKING','Striking //CHECK Data shows a % for increased successful refine rate. Is this true?');
REPLACE INTO `skill_db` VALUES(2452,'9',6,2,'3','0x1','0',5,'1','yes',0,'0','0','magic','0','SO_WARMER','Warmer');
REPLACE INTO `skill_db` VALUES(2453,'9',6,2,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','SO_VACUUM_EXTREME','Vacuum Extreme');
REPLACE INTO `skill_db` VALUES(2454,'9',6,1,'4','0x2','1:1:2:2:3',5,'1','yes',0,'0','0','magic','0','SO_VARETYR_SPEAR','Varetyr Spear');
REPLACE INTO `skill_db` VALUES(2455,'9',6,2,'0','0x3','1:1:2:2:3',5,'1','yes',0,'0','0','magic','0','SO_ARRULLO','Arrullo');
REPLACE INTO `skill_db` VALUES(2456,'0',6,4,'0','0x1','0',4,'1','yes',0,'0','0','none','0','SO_EL_CONTROL','Spirit Control');
REPLACE INTO `skill_db` VALUES(2457,'0',6,4,'3','0x1','0',3,'1','yes',0,'0','0','none','0','SO_SUMMON_AGNI','Summon Fire Spirit Agni');
REPLACE INTO `skill_db` VALUES(2458,'0',6,4,'1','0x1','0',3,'1','yes',0,'0','0','none','0','SO_SUMMON_AQUA','Summon Water Spirit Aqua');
REPLACE INTO `skill_db` VALUES(2459,'0',6,4,'4','0x1','0',3,'1','yes',0,'0','0','none','0','SO_SUMMON_VENTUS','Summon Wind Spirit Ventus');
REPLACE INTO `skill_db` VALUES(2460,'0',6,4,'2','0x1','0',3,'1','yes',0,'0','0','none','0','SO_SUMMON_TERA','Summon Earth Spirit Tera');
REPLACE INTO `skill_db` VALUES(2461,'5',6,1,'0','0x1','0',1,'1','no',0,'0','0','none','0','SO_EL_ACTION','Elemental Action');
REPLACE INTO `skill_db` VALUES(2462,'0',6,4,'0','0x1','0',2,'1','yes',0,'0','0','none','0','SO_EL_ANALYSIS','Four Spirit Analysis');
REPLACE INTO `skill_db` VALUES(2463,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','SO_EL_SYMPATHY','Spirit Sympathy');
REPLACE INTO `skill_db` VALUES(2464,'0',6,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','SO_EL_CURE','Spirit Recovery');
REPLACE INTO `skill_db` VALUES(2465,'9',6,2,'3','0x1','0',3,'1','yes',0,'0','1','magic','0','SO_FIRE_INSIGNIA','Fire Insignia //CHECK All 4 insignia skills can be targeted and animations work');
REPLACE INTO `skill_db` VALUES(2466,'9',6,2,'1','0x1','0',3,'1','yes',0,'0','1','magic','0','SO_WATER_INSIGNIA','Water Insignia // but its effects havent been coded yet.');
REPLACE INTO `skill_db` VALUES(2467,'9',6,2,'4','0x1','0',3,'1','yes',0,'0','1','magic','0','SO_WIND_INSIGNIA','Wind Insignia');
REPLACE INTO `skill_db` VALUES(2468,'9',6,2,'2','0x1','0',3,'1','yes',0,'0','1','magic','0','SO_EARTH_INSIGNIA','Earth Insignia');
REPLACE INTO `skill_db` VALUES(2474,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','GN_TRAINING_SWORD','Sword Training');
REPLACE INTO `skill_db` VALUES(2475,'0',0,0,'0','0','0',5,'0','no',0,'0','0','none','0','GN_REMODELING_CART','Cart Remodeling');
REPLACE INTO `skill_db` VALUES(2476,'0',6,4,'-1','0x2','2',5,'1','no',0,'0','0','weapon','2','GN_CART_TORNADO','Cart Tornado');
REPLACE INTO `skill_db` VALUES(2477,'7:8:9:10:11',6,1,'-1','0x2','1:1:2:2:3',5,'1','yes',0,'0','0','weapon','0','GN_CARTCANNON','Cart Cannon');
REPLACE INTO `skill_db` VALUES(2478,'0',6,4,'0','0x1','0',5,'1','yes',0,'0','0','none','0','GN_CARTBOOST','Cart Boost');
REPLACE INTO `skill_db` VALUES(2479,'9',6,2,'0','0','0',5,'1','yes',0,'0x80','5','misc','0','GN_THORNS_TRAP','Thorn Trap');
REPLACE INTO `skill_db` VALUES(2480,'11',6,1,'0','0x1','0',5,'1','yes',0,'0','3','misc','0','GN_BLOOD_SUCKER','Blood Sucker //CHECK Data says its a magic attack. Hmmmm....');
REPLACE INTO `skill_db` VALUES(2481,'11',6,1,'-1','0x2','1:2:3:4:5',5,'1','yes',0,'0','0','weapon','0','GN_SPORE_EXPLOSION','Spore Explosion //CHECK Data says its element is set to neutral. Need to confirm.');
REPLACE INTO `skill_db` VALUES(2482,'11',6,16,'0','0x1','0',5,'-1','yes',0,'0','1','weapon','2','GN_WALLOFTHORN','Wall of Thorns');
REPLACE INTO `skill_db` VALUES(2483,'11',6,2,'0','0x3','4',10,'1','yes',0,'0','0','none','0','GN_CRAZYWEED','Crazy Weed');
REPLACE INTO `skill_db` VALUES(2484,'0',6,2,'2','0','0',10,'1','no',0,'0','0','weapon','0','GN_CRAZYWEED_ATK','Crazy Weed Attack');
REPLACE INTO `skill_db` VALUES(2485,'9',6,2,'3','0','0',5,'1','yes',0,'0','0','magic','0','GN_DEMONIC_FIRE','Demonic Fire');
REPLACE INTO `skill_db` VALUES(2486,'9',6,2,'0','0','0',5,'1','yes',0,'0','0','none','0','GN_FIRE_EXPANSION','Fire Expansion //CHECK FIX ME!!!! Level 1 is reducing the damage. Should increase it by 50%');
REPLACE INTO `skill_db` VALUES(2487,'9',6,2,'0','0','0',1,'1','no',0,'0','0','none','0','GN_FIRE_EXPANSION_SMOKE_POWDER','Fire Expansion Smoke Powder');
REPLACE INTO `skill_db` VALUES(2488,'9',6,2,'0','0','0',1,'1','no',0,'0','0','none','0','GN_FIRE_EXPANSION_TEAR_GAS','Fire Expansion Tear Gas');
REPLACE INTO `skill_db` VALUES(2489,'11',6,1,'0','0','0',10,'1:2:3:4:5:6:7:8:9:10','no',0,'0','0','weapon','0','GN_FIRE_EXPANSION_ACID','Fire Expansion Acid');
REPLACE INTO `skill_db` VALUES(2490,'9',6,2,'0','0x3','1',5,'1','yes',0,'0x80','2:3:4:5:6','none','0','GN_HELLS_PLANT','Hell''s Plant');
REPLACE INTO `skill_db` VALUES(2491,'0',6,1,'0','0xC0','0',5,'1','no',0,'0','0','misc','0','GN_HELLS_PLANT_ATK','Hell''s Plant Attack');
REPLACE INTO `skill_db` VALUES(2492,'0',6,4,'0','0x3','5:6:6:7:7',5,'1','yes',0,'0','0','none','0','GN_MANDRAGORA','Howling of Mandragora');
REPLACE INTO `skill_db` VALUES(2493,'11',6,16,'0','0x1','0',1,'1','yes',0,'0','0','none','0','GN_SLINGITEM','Sling Item');
REPLACE INTO `skill_db` VALUES(2494,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','GN_CHANGEMATERIAL','Change Material');
REPLACE INTO `skill_db` VALUES(2495,'0',6,4,'0','0x1','0',2,'1','no',0,'0','0','none','0','GN_MIX_COOKING','Mix Cooking');
REPLACE INTO `skill_db` VALUES(2496,'0',6,4,'0','0x1','0',2,'1','no',0,'0','0','none','0','GN_MAKEBOMB','Create Bomb');
REPLACE INTO `skill_db` VALUES(2497,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','none','0','GN_S_PHARMACY','Special Pharmacy');
REPLACE INTO `skill_db` VALUES(2498,'11',6,1,'0','0','0',1,'1','no',0,'0','0','weapon','0','GN_SLINGITEM_RANGEMELEEATK','Sling Item Attack');
REPLACE INTO `skill_db` VALUES(2515,'11',6,16,'0','0x1','0',5,'1','yes',0,'0','0','magic','0','AB_SECRAMENT','Secrament');
REPLACE INTO `skill_db` VALUES(2516,'11',6,1,'-1','0x2','5',5,'1','no',0,'0','0','weapon','0','WM_SEVERE_RAINSTORM_MELEE','Severe Rainstorm Melee');
REPLACE INTO `skill_db` VALUES(2517,'0',6,4,'-1','0x2','3:4:5:6:7',5,'1','no',0,'0','0','weapon','0','SR_HOWLINGOFLION','Howling of Lion');
REPLACE INTO `skill_db` VALUES(2518,'11',6,2,'-1','0x2','2:2:3:3:4',5,'1','no',0,'0','0','weapon','0','SR_RIDEINLIGHTNING','Ride In Lightening');
/* REPLACE INTO `skill_db` VALUES(2533,'0',0,4,'0','0x1','0',1,'0','no',0,'0','0','none','0','ALL_ODINS_RECALL','Odin''s Recall');*/
REPLACE INTO `skill_db` VALUES(2534,'0',0,4,'0','0x1','0',1,'0','no',0,'0','0','none','0','RETURN_TO_ELDICASTES','Return To Eldicastes');
REPLACE INTO `skill_db` VALUES(2535,'0',0,4,'0','0x1','0',1,'0','no',0,'0x1','0','none','0','ALL_BUYING_STORE','Open Buying Store');
REPLACE INTO `skill_db` VALUES(2536,'0',0,4,'0','0x1','0',1,'0','no',0,'0','0','none','0','ALL_GUARDIAN_RECALL','Guardian''s Recall');
REPLACE INTO `skill_db` VALUES(2537,'9',6,16,'0','0x1','0',2,'1','yes',0,'0','0','magic','0','ALL_ODINS_POWER','Odin''s Power');
/* REPLACE INTO `skill_db` VALUES(2538,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','BEER_BOTTLE_CAP','Beer Bottle Cap');*/
/* REPLACE INTO `skill_db` VALUES(2539,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_ASSASSINCROSS','Assassin Cross of Sunset 2');*/
/* REPLACE INTO `skill_db` VALUES(2540,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_DISSONANCE','Dissonance 2');*/
/* REPLACE INTO `skill_db` VALUES(2541,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','NPC_UGLYDANCE','Ugly Dance 2');*/
/* REPLACE INTO `skill_db` VALUES(2542,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','ALL_TETANY','Tetany');*/
/* REPLACE INTO `skill_db` VALUES(2543,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','ALL_RAY_OF_PROTECTION','Ray of Protection');*/
/* REPLACE INTO `skill_db` VALUES(2544,'0',0,0,'0','0','0',??,'0','no',0,'0','0','none','0','MC_CARTDECORATE','Decorate Cart');*/
/* REPLACE INTO `skill_db` VALUES(2545,'0',0,1,'0','0','0',99,'0','0',none,'0','0','0','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0//GM_ITEM_ATKMAX#Maximum Attack#);*/
/* REPLACE INTO `skill_db` VALUES(2546,'0',0,1,'0','0','0',99,'0','0',none,'0','0','0','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0//GM_ITEM_ATKMIN#Minimal Attack#);*/
/* REPLACE INTO `skill_db` VALUES(2547,'0',0,1,'0','0','0',99,'0','0',none,'0','0','0','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0//GM_ITEM_MATKMAX#Maximum Magic Attack#);*/
/* REPLACE INTO `skill_db` VALUES(2548,'0',0,1,'0','0','0',99,'0','0',none,'0','0','0','0','0','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0//GM_ITEM_MATKMIN#Minimal Magic Attack#);*/
REPLACE INTO `skill_db` VALUES(2551,'0',0,0,'0','0','0',10,'0','no',0,'0','0','none','0','RL_GLITTERING_GREED','Flip The Coin Greed//Not in the skill tree. Why and what does it do? Need real max level.');
REPLACE INTO `skill_db` VALUES(2552,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','RL_RICHS_COIN','Rich''s Coin');
REPLACE INTO `skill_db` VALUES(2553,'15',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','RL_MASS_SPIRAL','Mass Spiral');
REPLACE INTO `skill_db` VALUES(2554,'9',6,1,'-1','0x2','2',5,'1','no',0,'0','0','weapon','0','RL_BANISHING_BUSTER','Banishing Buster');
REPLACE INTO `skill_db` VALUES(2555,'0',6,4,'0','0x1','0',5,'1','no',0,'0','3','none','0','RL_B_TRAP','Bind Trap');
REPLACE INTO `skill_db` VALUES(2556,'0',6,4,'0','0x3','-1',1,'1','no',0,'0','0','none','0','RL_FLICKER','Flicker');
REPLACE INTO `skill_db` VALUES(2557,'9',6,1,'-1','0x2','2',5,'1','no',0,'0','0','weapon','0','RL_S_STORM','Shatter Storm');
REPLACE INTO `skill_db` VALUES(2558,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','none','0','RL_E_CHAIN','Eternal Chain');
REPLACE INTO `skill_db` VALUES(2559,'0',6,4,'-1','0','0',1,'1','no',0,'0x200','0','weapon','0','RL_QD_SHOT','Quick Draw Shot');
REPLACE INTO `skill_db` VALUES(2560,'11',6,1,'0','0x1','0',1,'1','no',0,'0','3','none','0','RL_C_MARKER','Crimson Marker');
REPLACE INTO `skill_db` VALUES(2561,'0',6,4,'-1','0x2','2',5,'1','no',0,'0','0','weapon','0','RL_FIREDANCE','Fire Dance');
REPLACE INTO `skill_db` VALUES(2562,'7:8:9:10:11',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','RL_H_MINE','Howling Mine');
REPLACE INTO `skill_db` VALUES(2563,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','RL_P_ALTER','Platinum Alter');
REPLACE INTO `skill_db` VALUES(2564,'9',6,2,'0','0x1','0',5,'1','no',0,'0','0','none','0','RL_FALLEN_ANGEL','Fallen Angel//This skill doesen''t deal damage and instead autocasts Desperado right?');
REPLACE INTO `skill_db` VALUES(2565,'0',6,4,'-1','0x2','2:3:4:5:6',5,'1','no',0,'0','0','weapon','3','RL_R_TRIP','Round Trip//How much knockback is there? Well put 3 for now.');
REPLACE INTO `skill_db` VALUES(2566,'0',6,4,'-1','0x2','-1',5,'1','no',0,'0','0','weapon','0','RL_D_TAIL','Dragon Tail');
REPLACE INTO `skill_db` VALUES(2567,'3',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','RL_FIRE_RAIN','Fire Rain');
REPLACE INTO `skill_db` VALUES(2568,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','RL_HEAT_BARREL','Heat Barrel');
REPLACE INTO `skill_db` VALUES(2569,'9',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','RL_AM_BLAST','Anti-Material Blast');
REPLACE INTO `skill_db` VALUES(2570,'9',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','6','RL_SLUGSHOT','Slug Shot');
REPLACE INTO `skill_db` VALUES(2571,'7:8:9:10:11',6,1,'-1','0x2','2',5,'1','no',0,'0','0','weapon','0','RL_HAMMER_OF_GOD','Hammer of God');
REPLACE INTO `skill_db` VALUES(2572,'0',6,1,'-1','0x40','0',5,'1','no',0,'0','0','weapon','0','RL_R_TRIP_PLUSATK','Round Trip Plus Attack');
REPLACE INTO `skill_db` VALUES(2573,'0',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','RL_B_FLICKER_ATK','Bind Flicker Attack');
REPLACE INTO `skill_db` VALUES(2574,'0',6,1,'-1','0','0',10,'1','no',0,'0','0','weapon','0','RL_GLITTERING_GREED_ATK','Flip The Coin Greed Attack');
REPLACE INTO `skill_db` VALUES(3001,'0',6,4,'0','0','0',1,'1','no',0,'0','0','none','0','KO_YAMIKUMO','Yamikumo');
REPLACE INTO `skill_db` VALUES(3002,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','KO_RIGHT','Right Hand Mastery');
REPLACE INTO `skill_db` VALUES(3003,'0',0,0,'0','0','0',5,'0','no',0,'0','0','weapon','0','KO_LEFT','Left Hand Mastery');
REPLACE INTO `skill_db` VALUES(3004,'3:4:5:6:7',8,1,'-1','0','0',5,'-2','no',0,'0','0','weapon','0','KO_JYUMONJIKIRI','Cross Strike');
REPLACE INTO `skill_db` VALUES(3005,'2',6,1,'-1','0','0',5,'1','no',0,'0','0','weapon','0','KO_SETSUDAN','Soul Sever');
REPLACE INTO `skill_db` VALUES(3006,'7:8:9:10:11',6,2,'0','0x2','2',5,'0','no',0,'0','0','weapon','0','KO_BAKURETSU','Bakuretsu Kunai');
REPLACE INTO `skill_db` VALUES(3007,'0',6,4,'-1','0x42','4:4:4:4:5',5,'0','no',0,'0','0','misc','0','KO_HAPPOKUNAI','Happo Kunai');
REPLACE INTO `skill_db` VALUES(3008,'9',8,2,'0','0x12','2',10,'-10','no',0,'0','0','misc','0','KO_MUCHANAGE','Mucha Nage');
REPLACE INTO `skill_db` VALUES(3009,'9:10:11:12:13',8,2,'-1','0x2','3',5,'-5','no',0,'0','0','weapon','0','KO_HUUMARANKA','Huuma Shuriken Ranka ');
REPLACE INTO `skill_db` VALUES(3010,'3',6,4,'0','0x42','0',5,'1','no',0,'0x80','0','weapon','0','KO_MAKIBISHI','Makibishi');
REPLACE INTO `skill_db` VALUES(3011,'0',6,4,'0','0x1','0',5,'0','yes',0,'0','0','none','0','KO_MEIKYOUSISUI','Meikyo Shisui');
REPLACE INTO `skill_db` VALUES(3012,'0',6,4,'0','0x1','0',5,'0','no',0,'0','1','none','3:4:5:6:7','KO_ZANZOU','Zanzou');
REPLACE INTO `skill_db` VALUES(3013,'5',6,1,'0','0x1','0',5,'0','no',0,'0','0','none','0','KO_KYOUGAKU','Kyougaku');
REPLACE INTO `skill_db` VALUES(3014,'5',6,1,'0','0x1','0',5,'0','no',0,'0','0','none','0','KO_JYUSATSU','Jyusatsu');
REPLACE INTO `skill_db` VALUES(3015,'0',6,4,'3','0x1','0',1,'1','no',0,'0','0','none','0','KO_KAHU_ENTEN','Kahu Enten');
REPLACE INTO `skill_db` VALUES(3016,'0',6,4,'1','0x1','0',1,'1','no',0,'0','0','none','0','KO_HYOUHU_HUBUKI','Hyouhu Hubuki');
REPLACE INTO `skill_db` VALUES(3017,'0',6,4,'4','0x1','0',1,'1','no',0,'0','0','none','0','KO_KAZEHU_SEIRAN','Kazehu Seiran');
REPLACE INTO `skill_db` VALUES(3018,'0',6,4,'2','0x1','0',1,'1','no',0,'0','0','none','0','KO_DOHU_KOUKAI','Dohu Koukai');
REPLACE INTO `skill_db` VALUES(3019,'11',6,1,'0','0','0',5,'0','no',0,'0','0','magic','0','KO_KAIHOU','Technique Kaihou');
REPLACE INTO `skill_db` VALUES(3020,'7',6,2,'0','0','0',1,'3','yes',0,'0','0','magic','0','KO_ZENKAI','Zenkai');
REPLACE INTO `skill_db` VALUES(3021,'5:6:7:8:9',6,16,'0','0x1','0',5,'1','no',0,'0','0','none','0','KO_GENWAKU','Genwaku');
REPLACE INTO `skill_db` VALUES(3022,'0',6,4,'0','0x1','0',5,'0','no',0,'0','0','none','0','KO_IZAYOI','Izayoi');
REPLACE INTO `skill_db` VALUES(3023,'0',6,4,'0','0x3','2:3:4:5:6',5,'0','no',0,'0','0','none','0','KG_KAGEHUMI','Kagehumi');
REPLACE INTO `skill_db` VALUES(3024,'7',6,1,'0','0x1','0',5,'1','no',0,'0','0','none','0','KG_KYOMU','Kyomu');
REPLACE INTO `skill_db` VALUES(3025,'7',6,16,'0','0x1','0',5,'1','no',0,'0','0','none','0','KG_KAGEMUSYA','Kagemusha');
REPLACE INTO `skill_db` VALUES(3026,'7',6,16,'0','0x1','0',5,'1','no',0,'0','0','none','0','OB_ZANGETSU','Zangetsu');
REPLACE INTO `skill_db` VALUES(3027,'7',6,16,'0','0x1','0',5,'1','no',0,'0','0','none','0','OB_OBOROGENSOU','Oboro Gensou');
REPLACE INTO `skill_db` VALUES(3028,'1',6,4,'0','0x2','3',1,'1','no',0,'0','0','weapon','0','OB_OBOROGENSOU_TRANSITION_ATK','Hazy Moonlight Illusion Transition Attack');
REPLACE INTO `skill_db` VALUES(3029,'7',6,1,'0','0x1','0',5,'0','no',0,'0','0','none','0','OB_AKAITSUKI','Akaitsuki');
REPLACE INTO `skill_db` VALUES(3031,'7',6,16,'0','0x1','0',1,'1','no',0,'0','0','none','0','ECL_SNOWFLIP','Snow Flip');
REPLACE INTO `skill_db` VALUES(3032,'7',6,16,'0','0x1','0',1,'1','no',0,'0','0','none','0','ECL_PEONYMAMY','Peony Mamy');
REPLACE INTO `skill_db` VALUES(3033,'7',6,16,'0','0x1','0',1,'1','no',0,'0','0','none','0','ECL_SADAGUI','Sadagui');
REPLACE INTO `skill_db` VALUES(3034,'7',6,16,'0','0x1','0',1,'1','no',0,'0','0','none','0','ECL_SEQUOIADUST','Sequoia Dust');
REPLACE INTO `skill_db` VALUES(3035,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','ECLAGE_RECALL','Return To Eclage');
REPLACE INTO `skill_db` VALUES(5001,'1',8,1,'-1','0','0',5,'3','no',0,'0','0','weapon','0','GC_DARKCROW','Dark Claw');
REPLACE INTO `skill_db` VALUES(5002,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','RA_UNLIMIT','Unlimited');
REPLACE INTO `skill_db` VALUES(5003,'7',6,1,'-1','0x2','4:5:6:7:8',5,'1','no',0,'0','0','weapon','0','GN_ILLUSIONDOPING','Illusion Doping');
REPLACE INTO `skill_db` VALUES(5004,'9',6,2,'1','0x2','1:1:1:2:2:2:3:3:4:4',10,'1','no',0,'0','0','weapon','0','RK_DRAGONBREATH_WATER','Dragon Breath - Water');
REPLACE INTO `skill_db` VALUES(5005,'0',6,4,'0','0x3','3',1,'1','no',0,'0','0','none','0','RK_LUXANIMA','Lux Anima');
REPLACE INTO `skill_db` VALUES(5006,'1',6,2,'3','0','0',5,'1','no',0,'0','3','misc','0','NC_MAGMA_ERUPTION','Magma Eruption');
REPLACE INTO `skill_db` VALUES(5007,'0',6,4,'0','0x3','5:6:7:8:9',5,'1','no',0,'0','0','none','0','WM_FRIGG_SONG','Frigg''s Song');
REPLACE INTO `skill_db` VALUES(5008,'0',6,4,'0','0x3','15',5,'1','no',0,'0','0','none','0','SO_ELEMENTAL_SHIELD','Elemental Shield');
REPLACE INTO `skill_db` VALUES(5009,'1',6,1,'0','0x1','0',5,'1','no',0,'0','0','none','0','SR_FLASHCOMBO','Flash Combo');
REPLACE INTO `skill_db` VALUES(5010,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','SC_ESCAPE','Emergency Escape');
REPLACE INTO `skill_db` VALUES(5011,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','AB_OFFERTORIUM','Offertorium');
REPLACE INTO `skill_db` VALUES(5012,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','WL_TELEKINESIS_INTENSE','Intense Telekinesis');
REPLACE INTO `skill_db` VALUES(5013,'0',6,4,'0','0x3','5',5,'1','no',0,'0','0','none','0','LG_KINGS_GRACE','King''s Grace');
REPLACE INTO `skill_db` VALUES(5014,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','ALL_FULL_THROTTLE','Full Throttle');
REPLACE INTO `skill_db` VALUES(5015,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','SR_FLASHCOMBO_ATK_STEP1','Flash Combo Attack Step 1');
REPLACE INTO `skill_db` VALUES(5016,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','SR_FLASHCOMBO_ATK_STEP2','Flash Combo Attack Step 2');
REPLACE INTO `skill_db` VALUES(5017,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','SR_FLASHCOMBO_ATK_STEP3','Flash Combo Attack Step 3');
REPLACE INTO `skill_db` VALUES(5018,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','SR_FLASHCOMBO_ATK_STEP4','Flash Combo Attack Step 4');
REPLACE INTO `skill_db` VALUES(8001,'9',6,4,'0','0x1','0',5,'1','no',0,'0','0','magic','0','HLIF_HEAL','Healing Touch');
REPLACE INTO `skill_db` VALUES(8002,'0',6,4,'0','0x3','-1',5,'1','no',0,'0','0','none','0','HLIF_AVOID','Avoid');
REPLACE INTO `skill_db` VALUES(8003,'0',0,0,'0','0','1',5,'0','no',0,'0','0','none','0','HLIF_BRAIN','Brain Surgery');
REPLACE INTO `skill_db` VALUES(8004,'0',6,4,'0','0x1','0',3,'0','no',0,'0','0','none','0','HLIF_CHANGE','Change');
REPLACE INTO `skill_db` VALUES(8005,'0',6,4,'0','0x1','0',5,'0','no',0,'0','0','none','0','HAMI_CASTLE','Castling');
REPLACE INTO `skill_db` VALUES(8006,'0',6,4,'0','0x1','0',5,'0','no',0,'0','0','none','0','HAMI_DEFENCE','Defense');
REPLACE INTO `skill_db` VALUES(8007,'0',0,0,'0','0x1','0',5,'0','no',0,'0','0','none','0','HAMI_SKIN','Adamantium Skin');
REPLACE INTO `skill_db` VALUES(8008,'0',6,4,'0','0x1','0',3,'0','no',0,'0','0','none','0','HAMI_BLOODLUST','Bloodlust');
REPLACE INTO `skill_db` VALUES(8009,'1',8,1,'0','0','0',5,'-1:-2:-2:-2:-3','no',0,'0','0','weapon','0','HFLI_MOON','Moonlight');
REPLACE INTO `skill_db` VALUES(8010,'0',6,4,'0','0x1','0',5,'0','no',0,'0','0','none','0','HFLI_FLEET','Fleeting Move');
REPLACE INTO `skill_db` VALUES(8011,'0',6,4,'0','0x1','0',5,'0','yes',0,'0','0','misc','0','HFLI_SPEED','Speed');
REPLACE INTO `skill_db` VALUES(8012,'1',6,1,'0','0','0',3,'0','no',0,'0','0','none','0','HFLI_SBR44','S.B.R.44');
REPLACE INTO `skill_db` VALUES(8013,'9',6,1,'0','0','0',5,'1:2:3:4:5','no',0,'0','0','magic','0','HVAN_CAPRICE','Caprice');
REPLACE INTO `skill_db` VALUES(8014,'0',6,4,'0','0x1','0',5,'0','no',0,'0','0','none','0','HVAN_CHAOTIC','Benediction of Chaos');
REPLACE INTO `skill_db` VALUES(8015,'0',0,0,'0','0x1','0',5,'0','no',0,'0','0','none','0','HVAN_INSTRUCT','Instruct');
REPLACE INTO `skill_db` VALUES(8016,'4',6,4,'-1','0xD2','4',3,'1','no',0,'0','0','misc','0','HVAN_EXPLOSION','Bio Explosion');
REPLACE INTO `skill_db` VALUES(8018,'9',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','MH_SUMMON_LEGION','Summon Legion');
REPLACE INTO `skill_db` VALUES(8019,'5',6,1,'5','0','0',5,'1','no',0,'0','0','weapon','0','MH_NEEDLE_OF_PARALYZE','Needle of Paralyze');
REPLACE INTO `skill_db` VALUES(8020,'5',6,2,'5','0','0',5,'1','no',0,'0','1','weapon','0','MH_POISON_MIST','Poison Mist');
REPLACE INTO `skill_db` VALUES(8021,'1',6,1,'0','0x1','0',5,'1','no',0,'0','0','none','0','MH_PAIN_KILLER','Pain Killer');
REPLACE INTO `skill_db` VALUES(8022,'0',6,4,'0','0','0x1',5,'1','no',0,'0','0','none','0','MH_LIGHT_OF_REGENE','Light of Regene');
REPLACE INTO `skill_db` VALUES(8023,'0',6,4,'0','0','0x1',5,'1','no',0,'0','0','none','0','MH_OVERED_BOOST','Overed Boost');
REPLACE INTO `skill_db` VALUES(8024,'7',8,1,'4:0:4:0:4','0','0',5,'-6','yes',0,'0','0','magic','0','MH_ERASER_CUTTER','Eraser Cutter');
REPLACE INTO `skill_db` VALUES(8025,'7',8,2,'4:0:4:0:4','0x2','2:2:3:3:4',5,'-6','no',0,'0','0','magic','0','MH_XENO_SLASHER','Xeno Slasher');
REPLACE INTO `skill_db` VALUES(8026,'5:5:7:7:9',6,16,'0','0x1','0',5,'1','no',0,'0','0','magic','0','MH_SILENT_BREEZE','Silent Breeze');
REPLACE INTO `skill_db` VALUES(8027,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','MH_STYLE_CHANGE','Style Change');
REPLACE INTO `skill_db` VALUES(8028,'1',8,1,'0','0','0',5,'1','no',0,'0','0','weapon','0','MH_SONIC_CRAW','Sonic Claw');
REPLACE INTO `skill_db` VALUES(8029,'1',6,4,'0','0','0',5,'1','no',0,'0x200','0','weapon','0','MH_SILVERVEIN_RUSH','Silver Bain Rush');
REPLACE INTO `skill_db` VALUES(8030,'1',6,4,'0','0','0',5,'1','no',0,'0x200','0','weapon','0','MH_MIDNIGHT_FRENZY','Midnight Frenzy');
REPLACE INTO `skill_db` VALUES(8031,'5:6:7:8:9',6,1,'0','0','0',5,'1','no',0,'0','0','weapon','3','MH_STAHL_HORN','Steel Horn');
REPLACE INTO `skill_db` VALUES(8032,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','MH_GOLDENE_FERSE','Golden Heel');
REPLACE INTO `skill_db` VALUES(8033,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','MH_STEINWAND','Stone Wall');
REPLACE INTO `skill_db` VALUES(8034,'9',6,1,'6','0x2','1:1:1:1:2',5,'1','no',0,'0','0','magic','0','MH_HEILIGE_STANGE','Holy Pole');
REPLACE INTO `skill_db` VALUES(8035,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','MH_ANGRIFFS_MODUS','Attack Mode');
REPLACE INTO `skill_db` VALUES(8036,'3:4:5:6:7',6,1,'0','0','0',5,'1','no',0,'0','0','weapon','0','MH_TINDER_BREAKER','Tinder Breaker');
REPLACE INTO `skill_db` VALUES(8037,'1',6,4,'0','0','0',5,'1','no',0,'0x200','0','weapon','0','MH_CBC','Continual Break Combo');
REPLACE INTO `skill_db` VALUES(8038,'1',6,4,'0','0','0',5,'1','no',0,'0x200','0','weapon','0','MH_EQC','Eternal Quick Combo');
REPLACE INTO `skill_db` VALUES(8039,'0',6,4,'3','0x2','1:1:1:2:2',5,'1','no',0,'0','0','weapon','0','MH_MAGMA_FLOW','Magma Flow');
REPLACE INTO `skill_db` VALUES(8040,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','none','0','MH_GRANITIC_ARMOR','Granitic Armor');
REPLACE INTO `skill_db` VALUES(8041,'7',6,2,'3','0x2','0',5,'1','no',0,'0','1','weapon','0','MH_LAVA_SLIDE','Lava Slide');
REPLACE INTO `skill_db` VALUES(8042,'0',6,4,'3','0x1','0',5,'1','no',0,'0','0','none','0','MH_PYROCLASTIC','Pyroclastic');
REPLACE INTO `skill_db` VALUES(8043,'7',6,2,'0','0x1','0',5,'1','no',0,'0','3','none','0','MH_VOLCANIC_ASH','Volcanic Ash');
REPLACE INTO `skill_db` VALUES(8201,'-1',6,1,'-1','0','0',10,'1','no',0,'0','0','weapon','0','MS_BASH','Bash');
REPLACE INTO `skill_db` VALUES(8202,'0',6,4,'3','0x2','2',10,'1','no',0,'0','0','weapon','2','MS_MAGNUM','Magnum_Break');
REPLACE INTO `skill_db` VALUES(8203,'-2',6,1,'-1','0x2','1',10,'1','no',0,'0','0','weapon','1','MS_BOWLINGBASH','Bowling_Bash');
REPLACE INTO `skill_db` VALUES(8204,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','weapon','0','MS_PARRYING','Parry');
REPLACE INTO `skill_db` VALUES(8205,'0',6,4,'0','0','0',10,'1','no',0,'0','0','weapon','0','MS_REFLECTSHIELD','Shield_Reflect');
REPLACE INTO `skill_db` VALUES(8206,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','MS_BERSERK','Frenzy');
REPLACE INTO `skill_db` VALUES(8207,'-9',8,1,'-1','0','0',10,'2','no',0,'0','0','weapon','0','MA_DOUBLE','Double_Strafe');
REPLACE INTO `skill_db` VALUES(8208,'-9',6,2,'-1','0x2','2',10,'1','no',0,'0x2000','0','weapon','2','MA_SHOWER','Arrow_Shower');
REPLACE INTO `skill_db` VALUES(8209,'3',6,2,'0','0x1','0',5,'1','no',0,'0x80','0','misc','6:7:8:9:10','MA_SKIDTRAP','Skid_Trap');
REPLACE INTO `skill_db` VALUES(8210,'3',6,2,'2','0x40','0',5,'1','no',0,'0x80','0','misc','0','MA_LANDMINE','Land_Mine');
REPLACE INTO `skill_db` VALUES(8211,'3',6,2,'0','0x3','2',5,'1','no',0,'0x80','0','misc','0','MA_SANDMAN','Sandman');
REPLACE INTO `skill_db` VALUES(8212,'3',6,2,'1','0x42','1',5,'1','no',0,'0x80','0','weapon','0','MA_FREEZINGTRAP','Freezing_Trap');
REPLACE INTO `skill_db` VALUES(8213,'2',6,32,'0','0x1','0',1,'1','no',0,'0','0','misc','0','MA_REMOVETRAP','Remove_Trap');
REPLACE INTO `skill_db` VALUES(8214,'-9',6,1,'-1','0x2','0',1,'1','no',0,'0x1','0','weapon','6','MA_CHARGEARROW','Arrow_Repel');
REPLACE INTO `skill_db` VALUES(8215,'9',8,1,'-1','0','2',5,'1','yes',0,'0','13','weapon','0','MA_SHARPSHOOTING','Focused_Arrow_Strike');
REPLACE INTO `skill_db` VALUES(8216,'-2',8,1,'-1','0','0',10,'3','no',0,'0','0','weapon','0','ML_PIERCE','Pierce');
REPLACE INTO `skill_db` VALUES(8217,'-2',6,1,'-1','0x1','0',10,'1','no',0,'0','0','weapon','3','ML_BRANDISH','Brandish_Spear');
REPLACE INTO `skill_db` VALUES(8218,'5',8,1,'-1','0x20','0',5,'5','no',0,'0','0','weapon','0','ML_SPIRALPIERCE','Spiral_Pierce');
REPLACE INTO `skill_db` VALUES(8219,'0',6,4,'0','0x1','0',5,'1','no',0,'0','0','weapon','0','ML_DEFENDER','Defending_Aura');
REPLACE INTO `skill_db` VALUES(8220,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','weapon','0','ML_AUTOGUARD','Guard');
REPLACE INTO `skill_db` VALUES(8221,'7:8:9:10:11',6,16,'0','0x1','0',5,'1','yes',0,'0x600','0','none','0','ML_DEVOTION','Sacrifice');
REPLACE INTO `skill_db` VALUES(8222,'0',6,4,'0','0x3','-1',5,'1','yes',0,'0','0','magic','0','MER_MAGNIFICAT','Magnificat');
REPLACE INTO `skill_db` VALUES(8223,'0',6,4,'0','0x1','0',10,'1','no',0,'0','0','weapon','0','MER_QUICKEN','Two-Hand_Quicken');
REPLACE INTO `skill_db` VALUES(8224,'0',6,4,'3','0x3','3',1,'1','yes',0,'0','0','magic','0','MER_SIGHT','Sight');
REPLACE INTO `skill_db` VALUES(8225,'1',8,1,'-1','0','0',5,'3','no',0,'0','0','weapon','0','MER_CRASH','Crash');
REPLACE INTO `skill_db` VALUES(8226,'9',6,16,'0','0x1','0',1,'1','yes',0,'0x1000','0','magic','0','MER_REGAIN','Regain');
REPLACE INTO `skill_db` VALUES(8227,'9',6,16,'0','0x1','0',1,'1','yes',0,'0x1000','0','magic','0','MER_TENDER','Tender');
REPLACE INTO `skill_db` VALUES(8228,'9',6,16,'0','0x1','0',1,'1','yes',0,'0x1000','0','magic','0','MER_BENEDICTION','Benediction');
REPLACE INTO `skill_db` VALUES(8229,'9',6,16,'0','0x1','0',1,'1','yes',0,'0x1000','0','magic','0','MER_RECUPERATE','Recuperate');
REPLACE INTO `skill_db` VALUES(8230,'9',6,16,'0','0x1','0',1,'1','yes',0,'0x1000','0','magic','0','MER_MENTALCURE','Mental_Cure');
REPLACE INTO `skill_db` VALUES(8231,'9',6,16,'0','0x1','0',1,'1','yes',0,'0x1000','0','magic','0','MER_COMPRESS','Compress');
REPLACE INTO `skill_db` VALUES(8232,'9',6,1,'0','0x1','0',10,'1','no',0,'0','0','none','0','MER_PROVOKE','Provoke');
REPLACE INTO `skill_db` VALUES(8233,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','weapon','0','MER_AUTOBERSERK','Berserk');
REPLACE INTO `skill_db` VALUES(8234,'9',6,1,'0','0x1','0',10,'1','yes',0,'0','0','magic','0','MER_DECAGI','Decrease_AGI');
REPLACE INTO `skill_db` VALUES(8235,'0',6,4,'0','0x1','0',1,'1','yes',0,'0','0','none','0','MER_SCAPEGOAT','Scapegoat');
REPLACE INTO `skill_db` VALUES(8236,'5',6,1,'0','0x1','0',10,'0','yes',0,'0','0','magic','0','MER_LEXDIVINA','Lex_Divina');
REPLACE INTO `skill_db` VALUES(8237,'9',6,1,'0','0x1','0',1,'1','yes',0,'0','0','magic','0','MER_ESTIMATION','Sense');
REPLACE INTO `skill_db` VALUES(8238,'9',6,16,'0','0x1','0',10,'1','yes',0,'0','0','magic','0','MER_KYRIE','Kyrie Eleison');
REPLACE INTO `skill_db` VALUES(8239,'9',6,16,'0','0x1','0',10,'1','yes',0,'0','0','magic','0','MER_BLESSING','Blessing');
REPLACE INTO `skill_db` VALUES(8240,'9',6,16,'0','0x1','0',10,'1','yes',0,'0','0','magic','0','MER_INCAGI','Increase Agility');
/* REPLACE INTO `skill_db` VALUES(8241,'2',6,2,'0','0','0',1,'1','no',0,'0','0','none','0','MER_INVINCIBLEOFF2','Mind Blaster');*/
REPLACE INTO `skill_db` VALUES(8401,'0',6,4,'3','0','0',1,'1','no',0,'0','0','weapon','2','EL_CIRCLE_OF_FIRE','Circle of Fire');
REPLACE INTO `skill_db` VALUES(8402,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_FIRE_CLOAK','Fire Cloak');
REPLACE INTO `skill_db` VALUES(8403,'0',6,4,'3','0','0',1,'1','no',0,'0','3','magic','2','EL_FIRE_MANTLE','Fire Mantle');
REPLACE INTO `skill_db` VALUES(8404,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_WATER_SCREEN','Water Screen');
REPLACE INTO `skill_db` VALUES(8405,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_WATER_DROP','Water Drop');
REPLACE INTO `skill_db` VALUES(8406,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_WATER_BARRIER','Water Barrier');
REPLACE INTO `skill_db` VALUES(8407,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','5','EL_WIND_STEP','Wind Step');
REPLACE INTO `skill_db` VALUES(8408,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_WIND_CURTAIN','Wind Curtain');
REPLACE INTO `skill_db` VALUES(8409,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_ZEPHYR','Zephyr');
REPLACE INTO `skill_db` VALUES(8410,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_SOLID_SKIN','Solid Skin');
REPLACE INTO `skill_db` VALUES(8411,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_STONE_SHIELD','Stone Shield');
REPLACE INTO `skill_db` VALUES(8412,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_POWER_OF_GAIA','Power of Gaia');
REPLACE INTO `skill_db` VALUES(8413,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_PYROTECHNIC','Pyrotechnic');
REPLACE INTO `skill_db` VALUES(8414,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_HEATER','Heater');
REPLACE INTO `skill_db` VALUES(8415,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_TROPIC','Tropic');
REPLACE INTO `skill_db` VALUES(8416,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_AQUAPLAY','Aqua Play');
REPLACE INTO `skill_db` VALUES(8417,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_COOLER','Cooler');
REPLACE INTO `skill_db` VALUES(8418,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_CHILLY_AIR','Cool Air');
REPLACE INTO `skill_db` VALUES(8419,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_GUST','Gust');
REPLACE INTO `skill_db` VALUES(8420,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_BLAST','Blast');
REPLACE INTO `skill_db` VALUES(8421,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_WILD_STORM','Wild Storm');
REPLACE INTO `skill_db` VALUES(8422,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_PETROLOGY','Petrology');
REPLACE INTO `skill_db` VALUES(8423,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_CURSED_SOIL','Cursed Soil');
REPLACE INTO `skill_db` VALUES(8424,'0',6,4,'0','0x1','0',1,'1','no',0,'0','0','none','0','EL_UPHEAVAL','Upheaval');
REPLACE INTO `skill_db` VALUES(8425,'6',6,1,'3','0','0',1,'1','no',0,'0','0','magic','0','EL_FIRE_ARROW','Fire Arrow');
REPLACE INTO `skill_db` VALUES(8426,'6',6,1,'3','0','1',1,'1','no',0,'0','0','magic','0','EL_FIRE_BOMB','Fire Bomb');
REPLACE INTO `skill_db` VALUES(8427,'6',6,1,'3','0','1',1,'1','no',0,'0','0','weapon','0','EL_FIRE_BOMB_ATK','Fire Bomb Attack');
REPLACE INTO `skill_db` VALUES(8428,'6',6,1,'3','0','1',1,'1','no',0,'0','0','magic','0','EL_FIRE_WAVE','Fire Wave');
REPLACE INTO `skill_db` VALUES(8429,'6',6,1,'3','0','1',1,'1','no',0,'0','0','weapon','0','EL_FIRE_WAVE_ATK','Fire Wave Attack');
REPLACE INTO `skill_db` VALUES(8430,'9',6,1,'1','0','0',1,'1','no',0,'0','0','magic','0','EL_ICE_NEEDLE','Ice Needle');
REPLACE INTO `skill_db` VALUES(8431,'9',6,1,'1','0','1',1,'1','no',0,'0','0','magic','0','EL_WATER_SCREW','Water Screw');
REPLACE INTO `skill_db` VALUES(8432,'9',6,1,'1','0','1',1,'1','no',0,'0','0','weapon','0','EL_WATER_SCREW_ATK','Water Screw Attack');
REPLACE INTO `skill_db` VALUES(8433,'9',6,1,'1','0','1',1,'1','no',0,'0','0','weapon','0','EL_TIDAL_WEAPON','Tidal Weapon');
REPLACE INTO `skill_db` VALUES(8434,'11',6,1,'4','0','0',1,'1','no',0,'0','0','weapon','0','EL_WIND_SLASH','Wind Slasher');
REPLACE INTO `skill_db` VALUES(8435,'11',6,1,'4','0','1',1,'1','no',0,'0','0','weapon','0','EL_HURRICANE','Hurricane Rage');
REPLACE INTO `skill_db` VALUES(8436,'7',6,1,'4','0','0',1,'1','no',0,'0','0','magic','0','EL_HURRICANE_ATK','Hurricane Rage Attack');
REPLACE INTO `skill_db` VALUES(8437,'11',6,1,'4','0','1',1,'1','no',0,'0','0','weapon','0','EL_TYPOON_MIS','Typhoon Missile');
REPLACE INTO `skill_db` VALUES(8438,'11',6,1,'4','0','1',1,'1','no',0,'0','0','magic','0','EL_TYPOON_MIS_ATK','Typhoon Missile Attack');
REPLACE INTO `skill_db` VALUES(8439,'5',6,1,'2','0','0',1,'1','no',0,'0','0','weapon','0','EL_STONE_HAMMER','Stone Hammer');
REPLACE INTO `skill_db` VALUES(8440,'3',6,1,'2','0','1',1,'1','no',0,'0','0','weapon','0','EL_ROCK_CRUSHER','Rock Launcher');
REPLACE INTO `skill_db` VALUES(8441,'5',6,1,'2','0','1',1,'1','no',0,'0','0','magic','0','EL_ROCK_CRUSHER_ATK','Rock Launcher Attack');
REPLACE INTO `skill_db` VALUES(8442,'9',6,1,'2','0','1',1,'-5','no',0,'0','0','weapon','0','EL_STONE_RAIN','Stone Rain');
REPLACE INTO `skill_db` VALUES(10000,'0',0,0,'0','0','0',1,'0','no',0,'0x10','0','none','0','GD_APPROVAL','Official Guild Approval');
REPLACE INTO `skill_db` VALUES(10001,'0',0,0,'0','0','0',1,'0','no',0,'0x10','0','none','0','GD_KAFRACONTRACT','Kafra Contract');
REPLACE INTO `skill_db` VALUES(10002,'0',0,0,'0','0','0',1,'0','no',0,'0x10','0','none','0','GD_GUARDRESEARCH','Guardian Research');
REPLACE INTO `skill_db` VALUES(10003,'0',0,0,'0','0','0',1,'0','no',0,'0x10','0','none','0','GD_GUARDUP','Strengthen Guardians');
REPLACE INTO `skill_db` VALUES(10004,'0',0,0,'0','0','0',10,'0','no',0,'0x10','0','none','0','GD_EXTENSION','Guild Extension');
REPLACE INTO `skill_db` VALUES(10005,'0',0,0,'0','0','0',1,'0','no',0,'0x10','0','none','0','GD_GLORYGUILD','Guild''s Glory');
REPLACE INTO `skill_db` VALUES(10006,'0',0,0,'0','0','2',1,'0','no',0,'0x10','0','none','0','GD_LEADERSHIP','Great Leadership');
REPLACE INTO `skill_db` VALUES(10007,'0',0,0,'0','0','2',1,'0','no',0,'0x10','0','none','0','GD_GLORYWOUNDS','Glorious Wounds');
REPLACE INTO `skill_db` VALUES(10008,'0',0,0,'0','0','2',1,'0','no',0,'0x10','0','none','0','GD_SOULCOLD','Cold Heart');
REPLACE INTO `skill_db` VALUES(10009,'0',0,0,'0','0','2',1,'0','no',0,'0x10','0','none','0','GD_HAWKEYES','Sharp Gaze');
REPLACE INTO `skill_db` VALUES(10010,'0',0,4,'0','0x3','15',1,'0','yes',0,'0x10','0','none','0','GD_BATTLEORDER','Battle Orders');
REPLACE INTO `skill_db` VALUES(10011,'0',0,4,'0','0x3','15',3,'0','yes',0,'0x10','0','none','0','GD_REGENERATION','Regeneration');
REPLACE INTO `skill_db` VALUES(10012,'0',0,4,'0','0x3','15',1,'0','yes',0,'0x10','0','none','0','GD_RESTORE','Restoration');
REPLACE INTO `skill_db` VALUES(10013,'0',0,4,'0','0x3','0',1,'0','yes',0,'0x10','0','none','0','GD_EMERGENCYCALL','Urgent Call');
REPLACE INTO `skill_db` VALUES(10014,'0',0,0,'0','0','0',1,'0','no',0,'0x10','0','none','0','GD_DEVELOPMENT','Permanent Development');
REPLACE INTO `skill_db` VALUES(10015,'0',0,0,'0','0','0',1,'0','no',0,'0x10','0','none','0','GD_ITEMEMERGENCYCALL','Unknown Skill');

--
-- Estrutura da tabela `skill_improvise_db`
--

CREATE TABLE IF NOT EXISTS `skill_improvise_db` (
  `SkillID` smallint(5) unsigned NOT NULL,
  `Rate` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `skill_improvise_db` VALUES(11,6000);
REPLACE INTO `skill_improvise_db` VALUES(12,4000);
REPLACE INTO `skill_improvise_db` VALUES(13,6000);
REPLACE INTO `skill_improvise_db` VALUES(14,6000);
REPLACE INTO `skill_improvise_db` VALUES(15,6000);
REPLACE INTO `skill_improvise_db` VALUES(17,6000);
REPLACE INTO `skill_improvise_db` VALUES(18,4000);
REPLACE INTO `skill_improvise_db` VALUES(19,6000);
REPLACE INTO `skill_improvise_db` VALUES(20,6000);
REPLACE INTO `skill_improvise_db` VALUES(21,4000);
REPLACE INTO `skill_improvise_db` VALUES(80,4000);
REPLACE INTO `skill_improvise_db` VALUES(83,4000);
REPLACE INTO `skill_improvise_db` VALUES(84,6000);
REPLACE INTO `skill_improvise_db` VALUES(85,4000);
REPLACE INTO `skill_improvise_db` VALUES(86,6000);
REPLACE INTO `skill_improvise_db` VALUES(89,4000);

--
-- Estrutura da tabela `skill_reproduce_db`
--

CREATE TABLE IF NOT EXISTS `skill_reproduce_db` (
  `SkillID` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `skill_reproduce_db` VALUES(5);
REPLACE INTO `skill_reproduce_db` VALUES(7);
REPLACE INTO `skill_reproduce_db` VALUES(11);
REPLACE INTO `skill_reproduce_db` VALUES(13);
REPLACE INTO `skill_reproduce_db` VALUES(14);
REPLACE INTO `skill_reproduce_db` VALUES(15);
REPLACE INTO `skill_reproduce_db` VALUES(17);
REPLACE INTO `skill_reproduce_db` VALUES(18);
REPLACE INTO `skill_reproduce_db` VALUES(19);
REPLACE INTO `skill_reproduce_db` VALUES(20);
REPLACE INTO `skill_reproduce_db` VALUES(21);
REPLACE INTO `skill_reproduce_db` VALUES(24);
REPLACE INTO `skill_reproduce_db` VALUES(28);
REPLACE INTO `skill_reproduce_db` VALUES(42);
REPLACE INTO `skill_reproduce_db` VALUES(46);
REPLACE INTO `skill_reproduce_db` VALUES(47);
REPLACE INTO `skill_reproduce_db` VALUES(52);
REPLACE INTO `skill_reproduce_db` VALUES(54);
REPLACE INTO `skill_reproduce_db` VALUES(62);
REPLACE INTO `skill_reproduce_db` VALUES(68);
REPLACE INTO `skill_reproduce_db` VALUES(69);
REPLACE INTO `skill_reproduce_db` VALUES(70);
REPLACE INTO `skill_reproduce_db` VALUES(77);
REPLACE INTO `skill_reproduce_db` VALUES(79);
REPLACE INTO `skill_reproduce_db` VALUES(80);
REPLACE INTO `skill_reproduce_db` VALUES(81);
REPLACE INTO `skill_reproduce_db` VALUES(83);
REPLACE INTO `skill_reproduce_db` VALUES(84);
REPLACE INTO `skill_reproduce_db` VALUES(85);
REPLACE INTO `skill_reproduce_db` VALUES(86);
REPLACE INTO `skill_reproduce_db` VALUES(88);
REPLACE INTO `skill_reproduce_db` VALUES(89);
REPLACE INTO `skill_reproduce_db` VALUES(90);
REPLACE INTO `skill_reproduce_db` VALUES(91);
REPLACE INTO `skill_reproduce_db` VALUES(116);
REPLACE INTO `skill_reproduce_db` VALUES(121);
REPLACE INTO `skill_reproduce_db` VALUES(122);
REPLACE INTO `skill_reproduce_db` VALUES(123);
REPLACE INTO `skill_reproduce_db` VALUES(141);
REPLACE INTO `skill_reproduce_db` VALUES(148);
REPLACE INTO `skill_reproduce_db` VALUES(152);
REPLACE INTO `skill_reproduce_db` VALUES(156);
REPLACE INTO `skill_reproduce_db` VALUES(212);
REPLACE INTO `skill_reproduce_db` VALUES(229);
REPLACE INTO `skill_reproduce_db` VALUES(230);
REPLACE INTO `skill_reproduce_db` VALUES(250);
REPLACE INTO `skill_reproduce_db` VALUES(251);
REPLACE INTO `skill_reproduce_db` VALUES(253);
REPLACE INTO `skill_reproduce_db` VALUES(254);
REPLACE INTO `skill_reproduce_db` VALUES(263);
REPLACE INTO `skill_reproduce_db` VALUES(266);
REPLACE INTO `skill_reproduce_db` VALUES(267);
REPLACE INTO `skill_reproduce_db` VALUES(271);
REPLACE INTO `skill_reproduce_db` VALUES(272);
REPLACE INTO `skill_reproduce_db` VALUES(337);
REPLACE INTO `skill_reproduce_db` VALUES(421);
REPLACE INTO `skill_reproduce_db` VALUES(526);
REPLACE INTO `skill_reproduce_db` VALUES(527);
REPLACE INTO `skill_reproduce_db` VALUES(528);
REPLACE INTO `skill_reproduce_db` VALUES(529);
REPLACE INTO `skill_reproduce_db` VALUES(531);
REPLACE INTO `skill_reproduce_db` VALUES(534);
REPLACE INTO `skill_reproduce_db` VALUES(536);
REPLACE INTO `skill_reproduce_db` VALUES(537);
REPLACE INTO `skill_reproduce_db` VALUES(539);
REPLACE INTO `skill_reproduce_db` VALUES(540);
REPLACE INTO `skill_reproduce_db` VALUES(541);
REPLACE INTO `skill_reproduce_db` VALUES(542);
REPLACE INTO `skill_reproduce_db` VALUES(1001);
REPLACE INTO `skill_reproduce_db` VALUES(1004);
REPLACE INTO `skill_reproduce_db` VALUES(1006);
REPLACE INTO `skill_reproduce_db` VALUES(1009);
REPLACE INTO `skill_reproduce_db` VALUES(1015);
REPLACE INTO `skill_reproduce_db` VALUES(2002);
REPLACE INTO `skill_reproduce_db` VALUES(2005);
REPLACE INTO `skill_reproduce_db` VALUES(2006);
REPLACE INTO `skill_reproduce_db` VALUES(2022);
REPLACE INTO `skill_reproduce_db` VALUES(2023);
REPLACE INTO `skill_reproduce_db` VALUES(2034);
REPLACE INTO `skill_reproduce_db` VALUES(2038);
REPLACE INTO `skill_reproduce_db` VALUES(2040);
REPLACE INTO `skill_reproduce_db` VALUES(2051);
REPLACE INTO `skill_reproduce_db` VALUES(2054);
REPLACE INTO `skill_reproduce_db` VALUES(2202);
REPLACE INTO `skill_reproduce_db` VALUES(2203);
REPLACE INTO `skill_reproduce_db` VALUES(2204);
REPLACE INTO `skill_reproduce_db` VALUES(2210);
REPLACE INTO `skill_reproduce_db` VALUES(2211);
REPLACE INTO `skill_reproduce_db` VALUES(2212);
REPLACE INTO `skill_reproduce_db` VALUES(2213);
REPLACE INTO `skill_reproduce_db` VALUES(2214);
REPLACE INTO `skill_reproduce_db` VALUES(2216);
REPLACE INTO `skill_reproduce_db` VALUES(2233);
REPLACE INTO `skill_reproduce_db` VALUES(2236);
REPLACE INTO `skill_reproduce_db` VALUES(2239);
REPLACE INTO `skill_reproduce_db` VALUES(2253);
REPLACE INTO `skill_reproduce_db` VALUES(2254);
REPLACE INTO `skill_reproduce_db` VALUES(2284);
REPLACE INTO `skill_reproduce_db` VALUES(2288);
REPLACE INTO `skill_reproduce_db` VALUES(2304);
REPLACE INTO `skill_reproduce_db` VALUES(2310);
REPLACE INTO `skill_reproduce_db` VALUES(2315);
REPLACE INTO `skill_reproduce_db` VALUES(2316);
REPLACE INTO `skill_reproduce_db` VALUES(2320);
REPLACE INTO `skill_reproduce_db` VALUES(2323);
REPLACE INTO `skill_reproduce_db` VALUES(2326);
REPLACE INTO `skill_reproduce_db` VALUES(2327);
REPLACE INTO `skill_reproduce_db` VALUES(2328);
REPLACE INTO `skill_reproduce_db` VALUES(2330);
REPLACE INTO `skill_reproduce_db` VALUES(2332);
REPLACE INTO `skill_reproduce_db` VALUES(2336);
REPLACE INTO `skill_reproduce_db` VALUES(2337);
REPLACE INTO `skill_reproduce_db` VALUES(2343);
REPLACE INTO `skill_reproduce_db` VALUES(2344);
REPLACE INTO `skill_reproduce_db` VALUES(2413);
REPLACE INTO `skill_reproduce_db` VALUES(2414);
REPLACE INTO `skill_reproduce_db` VALUES(2418);
REPLACE INTO `skill_reproduce_db` VALUES(2443);
REPLACE INTO `skill_reproduce_db` VALUES(2444);
REPLACE INTO `skill_reproduce_db` VALUES(2446);
REPLACE INTO `skill_reproduce_db` VALUES(2447);
REPLACE INTO `skill_reproduce_db` VALUES(2448);
REPLACE INTO `skill_reproduce_db` VALUES(2449);
REPLACE INTO `skill_reproduce_db` VALUES(2450);
REPLACE INTO `skill_reproduce_db` VALUES(2454);
REPLACE INTO `skill_reproduce_db` VALUES(2479);
REPLACE INTO `skill_reproduce_db` VALUES(2480);
REPLACE INTO `skill_reproduce_db` VALUES(2481);
REPLACE INTO `skill_reproduce_db` VALUES(2482);
REPLACE INTO `skill_reproduce_db` VALUES(2483);
REPLACE INTO `skill_reproduce_db` VALUES(2490);
REPLACE INTO `skill_reproduce_db` VALUES(2517);
REPLACE INTO `skill_reproduce_db` VALUES(2518);

--
-- Estrutura da tabela `skill_require_db`
--

CREATE TABLE IF NOT EXISTS `skill_require_db` (
  `SkillID` smallint(5) unsigned NOT NULL,
  `HPCost` tinytext NOT NULL,
  `MaxHPTrigger` tinytext NOT NULL,
  `SPCost` tinytext NOT NULL,
  `HPRateCost` tinytext NOT NULL,
  `SPRateCost` tinytext NOT NULL,
  `ZenyCost` tinytext NOT NULL,
  `RequiredWeapons` tinytext NOT NULL,
  `RequiredAmmoTypes` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredAmmoAmount` tinytext NOT NULL,
  `RequiredState` tinytext NOT NULL,
  `SpiritSphereCost` tinytext NOT NULL,
  `RequiredItemID1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemAmount1` tinytext NOT NULL,
  `RequiredItemID2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemAmount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemID3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemAmount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemID4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemAmount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemID5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemAmount5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemID6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemAmount6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemID7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemAmount7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemID8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemAmount8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemID9` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemAmount9` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemID10` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemAmount10` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `skill_require_db` VALUES(5,'0','0','8:8:8:8:8:15:15:15:15:15','0','0','0','0:1:2:3:4:5:6:7:8:9:10:12:13:14:15:16:17:18:19:20:21:22',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(6,'0','0','4:5:6:7:8:9:10:11:12:13','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(7,'20:20:19:19:18:18:17:17:16:16','0','30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(10,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(11,'0','0','9:9:9:12:12:12:15:15:15:18','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(12,'0','0','30:30:30:35:35:35:40:40:40:40','0','0','0','99',0,'0','none','0',717,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(13,'0','0','18:14:24:20:30:26:36:32:42:38','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(14,'0','0','12:14:16:18:20:22:24:26:28:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(15,'0','0','25:24:23:22:21:20:19:18:17:16','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(16,'0','0','25:24:23:22:21:20:19:18:17:16','0','0','0','99',0,'0','none','0',716,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(17,'0','0','25','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(18,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(19,'0','0','12:14:16:18:20:22:24:26:28:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(20,'0','0','12:14:16:18:20:22:24:26:28:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(21,'0','0','29:34:39:44:49:54:59:64:69:74','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(24,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(25,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(26,'0','0','10:9','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(27,'0','0','35:32:29:26','0','0','0','99',0,'0','none','0',717,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 );
REPLACE INTO `skill_require_db` VALUES(28,'0','0','13:16:19:22:25:28:31:34:37:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(29,'15','0','18:21:24:27:30:33:36:39:42:45','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(30,'0','0','15:17:19:21:23:25:27:29:31:33','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(31,'0','0','10','0','0','0','99',0,'0','water','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(32,'0','0','35','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(33,'0','0','23:26:29:32:35:38:41:44:47:50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(34,'0','0','28:32:36:40:44:48:52:56:60:64','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(35,'0','0','15','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(40,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(41,'0','0','30','0','0','0','99',0,'0','cart','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(42,'0','0','5','0','0','100:200:300:400:500:600:700:800:900:1000','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(45,'0','0','25:30:35:40:45:50:55:60:65:70','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(46,'0','0','12','0','0','0','11',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(47,'0','0','15','0','0','0','11',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(50,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(51,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(52,'0','0','12','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(53,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(54,'0','0','60','0','0','0','99',0,'0','none','0',717,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(56,'0','0','7','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(57,'0','0','12','0','0','0','4:5',0,'0','riding','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(58,'0','0','9','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(59,'0','0','10','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(60,'0','0','14:18:22:26:30:34:38:42:46:50','0','0','0','3',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(61,'0','0','3','0','0','0','0:1:2:3:4:5:6:7:8:9:10:12:13:14:15:16:17:18:19:20:21:22',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(62,'0','0','13:14:15:16:17:18:19:20:21:22','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(66,'0','0','13:16:19:22:25','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(67,'0','0','8','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(68,'0','0','14:18:22:26:30','0','0','0','99',0,'0','none','0',523,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(69,'0','0','20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(70,'0','0','15:18:21:24:27:30:33:36:39:42','0','0','0','99',0,'0','none','0',717,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(71,'0','0','6:8:10:12','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(72,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(73,'0','0','20:20:20:25:25:25:30:30:30:35','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(74,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(75,'0','0','20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(76,'0','0','20:20:20:20:20:18:16:14:12:10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(77,'0','0','20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(78,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(79,'0','0','40:42:44:46:48:50:52:54:56:58','0','0','0','99',0,'0','none','0',717,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(80,'0','0','75','0','0','0','99',0,'0','none','0',717,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(81,'0','0','35:37:39:41:43:45:47:49:51:53','0','0','0','99',0,'0','sight','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(83,'0','0','20:24:30:34:40:44:50:54:60:64','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(84,'0','0','20:23:26:29:32:35:38:41:44:47','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(85,'0','0','60:64:68:72:76:80:84:88:92:96','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(86,'0','0','15:20:20:25:25:25:25:25:25:25','0','0','0','99',0,'0','water','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(87,'0','0','20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(88,'0','0','45:43:41:39:37:35:33:31:29:27','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(89,'0','0','78','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(90,'0','0','12:14:16:18:20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(91,'0','0','28:32:36:40:44','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(92,'0','0','5:10:15:20:25','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(93,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(108,'0','0','30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(110,'0','0','10','0','0','0','1:2:6:7:8',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(111,'0','0','20:23:26:29:32','0','0','0','6:7:8',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(112,'0','0','18:16:14:12:10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(113,'0','0','18:16:14:12:10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(114,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(115,'0','0','10','0','0','0','99',0,'0','none','0',1065,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(116,'0','0','10','0','0','0','99',0,'0','none','0',1065,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(117,'0','0','12','0','0','0','99',0,'0','none','0',1065,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(118,'0','0','45','0','0','0','99',0,'0','none','0',1065,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(119,'0','0','12','0','0','0','99',0,'0','none','0',1065,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(120,'0','0','12','0','0','0','99',0,'0','none','0',1065,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(121,'0','0','10','0','0','0','99',0,'0','none','0',1065,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(122,'0','0','10','0','0','0','99',0,'0','none','0',1065,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(123,'0','0','15','0','0','0','99',0,'0','none','0',1065,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(124,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(125,'0','0','1','0','0','0','99',0,'0','none','0',1065,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(129,'0','0','10:13:16:19:22','0','0','0','99',0,'0','falcon','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(130,'0','0','8','0','0','0','99',0,'0','falcon','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(131,'0','0','10','0','0','0','99',0,'0','falcon','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(135,'0','0','15','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(136,'0','0','16:18:20:22:24:26:28:30:32:34','0','0','0','16',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(137,'0','0','3','0','0','0','16',0,'0','hiding','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(138,'0','0','20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(139,'0','0','25:30:35:40:45:50:55:60:45:45','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(140,'0','0','20','0','0','0','99',0,'0','none','0',716,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(141,'0','0','12:14:16:18:20:22:24:26:28:30','0','0','0','99',0,'0','none','0',716,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(142,'0','0','3','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(143,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(146,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(147,'0','0','10','0','0','0','99',0,'0','recover_weight_rate','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(148,'0','0','15','0','0','0','11',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(149,'0','0','9','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(150,'0','0','7','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(151,'0','0','3','0','0','0','99',0,'0','recover_weight_rate','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(152,'0','0','2','0','0','0','99',0,'0','none','0',7049,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(153,'0','0','12','0','0','0','99',0,'0','cart','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(154,'0','0','40','0','0','0','99',0,'0','cart','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(155,'0','0','8','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(156,'0','0','15','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(157,'0','0','30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(211,'0','0','15','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(212,'0','0','16','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(214,'0','0','20','0','0','0','99',0,'0','hiding','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(215,'0','0','17:19:21:23:25','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(216,'0','0','12:14:16:18:20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(217,'0','0','17:19:21:23:25','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(218,'0','0','12:14:16:18:20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(219,'0','0','13:16:19:22:25','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(220,'0','0','15','0','0','0','99',0,'0','none','0',716,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(221,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(222,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(228,'0','0','5','0','0','0','99',0,'0','none','0',7134,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(229,'0','0','10','0','0','0','99',0,'0','none','0',7135,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(230,'0','0','15','0','0','0','99',0,'0','none','0',7136,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(231,'0','0','1','0','0','0','99',0,'0','none','0',501,1,502,1,503,1,504,1,505,1,522,1,526,1,608,1,607,1,657,1);
REPLACE INTO `skill_require_db` VALUES(232,'0','0','20','0','0','0','99',0,'0','none','0',7137,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(233,'0','0','10','0','0','0','99',0,'0','none','0',7138,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(234,'0','0','30','0','0','0','99',0,'0','none','0',7139,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(235,'0','0','25','0','0','0','99',0,'0','none','0',7139,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(236,'0','0','25','0','0','0','99',0,'0','none','0',7139,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(237,'0','0','25','0','0','0','99',0,'0','none','0',7139,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(243,'0','0','10','0','0','0','99',0,'0','none','0',7142,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(244,'0','0','50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(247,'0','0','74:68:62:56:50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(249,'0','0','12:14:16:18:20:22:24:26:28:30','0','0','0','99',0,'0','shield','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(250,'0','0','10','0','0','0','99',0,'0','shield','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(251,'0','0','12','0','0','0','99',0,'0','shield','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(252,'0','0','35:40:45:50:55:60:65:70:75:80','0','0','0','99',0,'0','shield','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(253,'0','0','11:12:13:14:15:16:17:18:19:20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(254,'0','0','37:44:51:58:65:72:79:86:93:100','20','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(255,'0','0','25','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(256,'0','0','30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(257,'0','0','30','0','0','0','99',0,'0','shield','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(258,'0','0','24:28:32:36:40:44:48:52:56:60','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(261,'0','0','8','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(262,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(264,'0','0','14','0','0','0','99',0,'0','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(266,'0','0','10:14:17:19:20','0','0','0','99',0,'0','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(267,'0','0','10','0','0','0','99',0,'0','none','1:2:3:4:5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(268,'0','0','200','0','0','0','99',0,'0','none','5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(269,'0','0','10','0','0','0','0:1:2:3:4:5:6:7:8:9:10:12:13:14:15:16:17:18:19:20:21:22',0,'0','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(270,'0','0','15','0','0','0','99',0,'0','none','5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(271,'0','0','1','0','0','0','0:1:2:3:4:5:6:7:8:9:10:12:13:14:15:16:17:18:19:20:21:22',0,'0','explosionspirits','5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(272,'0','0','11:12:13:14:15','0','0','0','0:1:2:3:4:5:6:7:8:9:10:12:13:14:15:16:17:18:19:20:21:22',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(273,'0','0','11:12:13:14:15','0','0','0','0:1:2:3:4:5:6:7:8:9:10:12:13:14:15:16:17:18:19:20:21:22',0,'0','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(275,'0','0','2','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(276,'0','0','2','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(277,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(279,'0','0','35','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(280,'0','0','40','0','0','0','99',0,'0','none','0',990,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(281,'0','0','40','0','0','0','99',0,'0','none','0',991,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(282,'0','0','40','0','0','0','99',0,'0','none','0',992,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(283,'0','0','40','0','0','0','99',0,'0','none','0',993,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(285,'0','0','48:46:44:42:40','0','0','0','99',0,'0','none','0',715,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(286,'0','0','48:46:44:42:40','0','0','0','99',0,'0','none','0',715,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(287,'0','0','48:46:44:42:40','0','0','0','99',0,'0','none','0',715,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(288,'0','0','66:62:58:54:50','0','0','0','99',0,'0','none','0',717,1,715,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(289,'0','0','1','0','0','0','99',0,'0','none','0',715,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(290,'0','0','50','0','0','0','99',0,'0','none','0',715,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(291,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(292,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(293,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(294,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(295,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(296,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(297,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(298,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(299,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(300,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(301,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(302,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(303,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(304,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(305,'0','0','1','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(306,'0','0','20','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(307,'0','0','20','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(308,'0','0','30','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(309,'0','0','38:41:44:47:50','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(310,'0','0','38:41:44:47:50','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(311,'0','0','15','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(312,'0','0','10','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(313,'0','0','20','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(316,'0','0','1:3:5:7:9','0','0','0','13',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(317,'0','0','18:21:24:27:30','0','0','0','13',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(318,'0','0','12:14:16:18:20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(319,'0','0','24:28:32:36:40:44:48:52:56:60','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(320,'0','0','38:41:44:47:50:53:56:59:62:65','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(321,'0','0','40:45:50:55:60:65:70:75:80:85','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(322,'0','0','40:45:50:55:60:65:70:75:80:85','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(324,'0','0','1:3:5:7:9','0','0','0','14',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(325,'0','0','23:26:29:32:35','0','0','0','14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(326,'0','0','12:14:16:18:20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(327,'0','0','22:24:26:28:30:32:34:36:38:40','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(328,'0','0','28:31:34:37:40:43:46:49:52:55','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(329,'0','0','43:46:49:52:55:58:61:64:67:70','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(330,'0','0','40:45:50:55:60:65:70:75:80:85','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(334,'0','0','1','-10','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(335,'0','0','1','0','-10','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(336,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(337,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(355,'0','0','18:26:34:42:50','0','0','0','1:2:3:4:5:6:7:8:9:10:11:12:13:14:15:16:17:18:19:20:21:22',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(356,'0','0','50','0','0','0','3',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(357,'0','0','14:18:22:26:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(358,'0','0','15','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(359,'0','0','200','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(361,'0','0','20:30:40:50:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(362,'0','0','80:90:100:110:120','0','0','0','99',0,'0','none','0',715,1,716,1,717,1,523,1,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(365,'0','0','8','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(366,'0','0','14:18:22:26:30:34:38:42:46:50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(367,'0','0','30:35:40:45:50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(368,'0','0','100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(369,'0','0','80:80:80:80:80:100:100:100:100:100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(370,'0','0','2:4:6:8:10','0','0','0','99',0,'0','explosionspirits','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(371,'0','0','4:6:8:10:12','0','0','0','99',0,'0','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(372,'0','0','4:6:8:10:12:14:16:18:20:22','0','0','0','99',0,'0','none','2',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(373,'0','0','1:2:3:4:5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(374,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(375,'0','0','80:90:100:110:120','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(378,'0','0','60:70:80:90:100','0','0','0','1:2:3:4:5:6:7:8:9:10:11:12:13:14:15:16:17:18:19:20:21:22',0,'0','none','0',678,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(379,'0','0','20:20:20:20:20:30:30:30:30:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(380,'0','0','20:20:25:25:30:30:35:35:40:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(381,'0','0','30:34:38:42:46','0','0','0','99',0,'0','falcon','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(382,'0','0','18:21:24:27:30','0','0','0','11',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(383,'0','0','46:52:58:64:70:76:82:88:94:100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(384,'0','0','50:50:60:60:70:70:80:80:90:90','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(385,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(386,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(387,'0','0','20','0','0','0','99',0,'0','cart','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(388,'0','0','20','0','0','0','99',0,'0','none','0',7137,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(389,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(390,'0','0','10:15:20:25:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(394,'0','0','12:14:16:18:20:22:24:26:28:30','0','0','0','13:14',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(395,'0','0','30:40:50:60:70','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(396,'0','0','100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(397,'0','0','18:21:24:27:30','0','0','0','2:3:4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(398,'0','0','23','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(399,'0','0','12:12:14:14:16:16:18:18:20:20','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(400,'0','0','10:25:40:55:70','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(401,'0','0','20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(402,'0','0','12:15:18:21:24','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(403,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(404,'0','0','25','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(405,'0','0','50','0','0','0','99',0,'0','none','0',1025,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(406,'0','0','10:12:14:16:18:20:22:24:26:28','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(407,'0','0','50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(408,'0','0','1','0','-10','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(409,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(410,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(411,'0','0','100:90:80:70:60:50:40:30:20:10','0','0','0','99',0,'0','move_enable','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(412,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(413,'0','0','14:12:10:8:6:4:2','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(414,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(415,'0','0','14:12:10:8:6:4:2','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(416,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(417,'0','0','14:12:10:8:6:4:2','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(418,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(419,'0','0','14:12:10:8:6:4:2','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(420,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(421,'0','0','70:60:50:40:30:20:10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(425,'0','0','20:20:20:20:50:50:50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(426,'0','0','50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(427,'0','0','100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(428,'0','0','20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(429,'0','0','20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(430,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(431,'0','0','70:60:50:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(432,'0','0','70:60:50:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(433,'0','0','70:60:50:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(434,'0','0','100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(444,'0','0','100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(445,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(446,'0','0','10','0','8','0','99',0,'0','none','0',657,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(447,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(448,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(449,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(450,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(451,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(452,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(453,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(454,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(455,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(456,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(457,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(458,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(459,'0','0','64','0','0','0','0:1:2:3:4:5:6:7:8:9:10:12:13:14:15:16',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(460,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(461,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(462,'0','0','120:110:100:90:80:70:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 );
REPLACE INTO `skill_require_db` VALUES(463,'0','0','30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 );
REPLACE INTO `skill_require_db` VALUES(464,'0','0','20:30:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 );
REPLACE INTO `skill_require_db` VALUES(465,'0','0','70','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 );
REPLACE INTO `skill_require_db` VALUES(467,'0','0','18:20:22:24:26:28:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(468,'0','0','18:20:22:24:26:28:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(469,'0','0','8:16:24:32:40:48:56:64:72:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(470,'0','0','75:65:55:45:35:25:15','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 );
REPLACE INTO `skill_require_db` VALUES(471,'0','0','55:35:15','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 );
REPLACE INTO `skill_require_db` VALUES(472,'0','0','100:80:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 );
REPLACE INTO `skill_require_db` VALUES(475,'0','0','30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(476,'0','0','22:24:26:28:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(477,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(478,'0','0','30','0','0','0','99',0,'0','none','0',545,1,545,1,545,1,545,1,545,1,546,1,546,1,546,1,546,1,547,1);
REPLACE INTO `skill_require_db` VALUES(479,'0','0','40','0','0','0','99',0,'0','none','0',7139,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(480,'0','0','28:31:34:37:40','0','0','0','99',0,'0','shield','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(482,'0','0','40:45:50:55:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(483,'0','0','40','0','0','0','99',0,'0','none','0',715,1,717,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(484,'0','0','20:40:60:80:100','0','0','0','99',0,'0','none','0',717,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(485,'0','0','15','0','0','600:700:800:900:1000:1100:1200:1300:1400:1500','0:1:2:3:4:5:6:7:8:9:10:12:13:14:15:16:17:18:19:20:21:22',0,'0','cartboost','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(486,'0','0','15','0','0','3000:3500:4000:4500:5000','0:1:2:3:4:5:6:7:8:9:10:12:13:14:15:16:17:18:19:20:21:22',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(487,'0','0','15','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(488,'0','0','20:30:40:50:60','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(489,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(490,'0','0','30','0','0','0','99',0,'0','none','0',7135,1,7136,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(491,'0','0','10','0','0','0','99',0,'0','none','0',921,1,905,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(492,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(493,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(494,'0','0','460:360:260:160:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(495,'0','0','100','0','0','0','2',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(496,'0','0','200','0','0','0','99',0,'0','none','0',7134,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(497,'0','0','200','0','0','0','99',0,'0','none','0',7134,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(498,'0','0','200','0','0','0','99',0,'0','none','0',7134,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(499,'0','0','12','0','0','0','11',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(500,'0','0','2','0','0','1','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(501,'0','0','10','0','0','0','99',0,'0','none','5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(502,'0','0','20','0','0','0','99',99,'1','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(503,'0','0','30','0','0','0','99',99,'1','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(504,'0','0','30','0','0','0','99',0,'0','none','4',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(505,'0','0','15','0','0','0','99',0,'0','none','2',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(506,'0','0','30','0','0','0','99',0,'0','none','4',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(507,'0','0','7','0','0','0','99',0,'0','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(508,'0','0','10','0','0','0','99',99,'1','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(512,'0','0','15:20:25:30:35:40:45:50:55:60','0','0','0','17:18',3,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(513,'0','0','15:20:25:30:35','0','0','0','17:18',3,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(514,'0','0','11:12:13:14:15','0','0','0','17:18',3,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(515,'0','0','22:24:26:28:30:32:34:36:38:40','0','0','0','17',3,'5','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(516,'0','0','32:34:36:38:40:42:44:46:48:50','0','0','0','17',3,'10','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(517,'0','0','30:32:34:36:38:40:42:44:46:48','0','0','0','19',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(518,'0','0','3:6:9:12:15:18:21:24:27:30','0','0','0','20',3,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(519,'0','0','20:25:30:35:40:45:50:55:60:65','0','0','0','20',3,'2:2:4:4:6:6:8:8:10:10','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(520,'0','0','15:20:25:30:35:40:45:50:55:60','0','0','0','20:21',3,'5','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(521,'0','0','4:8:12:16:20:24:28:32:36:40','0','0','0','21',5,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(523,'0','0','2','0','0','0','99',6,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(524,'0','0','30:25:20:15:10','0','0','0','99',7,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(525,'0','0','20:25:30:35:40','0','0','0','22',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(526,'0','0','50','0','0','500:1000:1500:2000:2500:3000:3500:4000:4500:5000','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(527,'0','0','15','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(528,'0','0','15','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(529,'0','0','10','0','0','0','99',0,'0','hiding','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(530,'0','0','10','0','0','0','99',0,'0','hiding','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(531,'0','0','12:15:18:21:24','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(532,'0','0','30:32:34:36:38:40:42:44:46:48','0','0','0','99',0,'0','none','0',7524,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(533,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(534,'0','0','18:20:22:24:26:28:30:32:34:36','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(535,'0','0','25','0','0','0','99',0,'0','none','0',7521,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(536,'0','0','20:25:30:35:40','0','0','0','99',0,'0','none','0',7521,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(537,'0','0','15:18:21:24:27:30:33:36:39:42','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(538,'0','0','15:18:21:24:27:30:33:36:39:42','0','0','0','99',0,'0','none','0',7522,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(539,'0','0','40:45:50:55:60','0','0','0','99',0,'0','none','0',7522,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(540,'0','0','12:14:16:18:20:22:24:26:28:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(541,'0','0','16:20:24:28:32','0','0','0','99',0,'0','none','0',7523,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(542,'0','0','24:28:32:36:40','0','0','0','99',0,'0','none','0',7523,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(543,'0','0','20:30:40:50:60','-5','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(544,'0','0','55:60:65:70:75:80:85:90:95:100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(688,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(692,'0','0','50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(694,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(695,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(697,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(698,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1001,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1002,'0','0','15','0','0','0','99',0,'0','shield','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1004,'0','0','15','0','0','0','99',2,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1005,'0','0','25','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1006,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1007,'0','0','30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1008,'0','0','30','0','0','0','99',0,'0','none','0',12115,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1009,'0','0','10','0','0','0','11',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1010,'0','0','20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1011,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1013,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1014,'0','0','400','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1015,'0','0','40','0','0','0','99',0,'0','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1016,'10','0','20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1017,'0','0','30','0','0','0','99',0,'0','none','0',12116,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1018,'0','0','30','0','0','0','99',0,'0','none','0',12114,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(1019,'0','0','30','0','0','0','99',0,'0','none','0',12117,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2001,'0','0','40:45:50:55:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2002,'0','0','30:35:40:45:50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2003,'0','0','28:31:34:37:40:43:46:49:52:55','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2004,'0','0','60','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2005,'0','0','20:24:28:32:36','0','0','0','1:2:3:4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2006,'0','0','35:40:45:50:55','0','0','0','1:2:3:4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 );
REPLACE INTO `skill_require_db` VALUES(2008,'0','0','30:35:40:45:50:55:60:65:70:75','0','0','0','99',0,'0','dragon','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2009,'0','0','30','0','0','0','99',0,'0','dragon','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2011,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2012,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2013,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2014,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2015,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2016,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2017,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2018,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2019,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2020,'0','0','15:18:21:24:27','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2021,'0','0','12:16:20:24:28','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2022,'0','0','25','0','0','0','99',0,'0','move_enable','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2023,'0','0','20:25:30:35:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2025,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2026,'0','0','10','0','0','0','99',0,'0','none','0',6128,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2027,'0','0','20:24:28:32:36','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2028,'0','0','40:36:32:28:24','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2029,'0','0','5:8:11:14:17','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2030,'0','0','20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2031,'0','0','30:40:50:60:70','0','0','0','99',0,'0','poisonweapon','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2032,'0','0','40','0','0','0','99',0,'0','poisonweapon','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2033,'0','0','45','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2034,'0','0','30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2035,'0','0','100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2036,'0','0','5','0','0','0','16',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2037,'0','0','20:24:28:32:36','0','0','0','16',0,'0','rollingcutter','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2201,'0','0','50:55:60:65:70','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2202,'0','0','30:35:40:45:50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2203,'0','0','40:48:56:64:72','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2204,'0','0','50:60:70:80:90','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2205,'0','0','40:42:44:46:48','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2206,'0','0','100:120:140:160:180','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2207,'0','0','32:34:36:38:40','0','0','0','99',0,'0','none','0',716,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2209,'0','0','50:60:70:80:90','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2210,'0','0','20:24:28:32:36','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2211,'0','0','60:70:80:90:100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2212,'0','0','35:40:45:50:55','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2213,'0','0','480:560:640:720:800','0','0','0','99',0,'0','none','0',716,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2214,'0','0','80:90:100:110:120','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2215,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2216,'0','0','70:78:86:94:102','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2217,'0','0','120:150:180:210:240','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2218,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2219,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2220,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2221,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2222,'0','0','10:12:14:16:18','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2223,'0','0','10:12:14:16:18','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2224,'0','0','10:12:14:16:18','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2225,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2226,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2227,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2228,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2229,'0','0','10:12:14:16:18','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2230,'0','0','3:20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2231,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/* REPLACE INTO `skill_require_db` VALUES(2232,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);*/
REPLACE INTO `skill_require_db` VALUES(2038,'0','0','20:23:26:29:32','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2039,'0','0','30','0','-30','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2040,'0','0','20:24:28:32:36:40:44:48:52:56','0','0','0','99',0,'0','none','0',717,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2041,'0','0','280:320:360','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2042,'0','0','200:220:240','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2043,'0','0','200:220:240','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2044,'0','0','300','0','0','0','99',0,'0','none','0',12333,1,523,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2045,'0','0','90:100:110:120:130:140:150:160:170:180','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2046,'0','0','35:38:41:44:47:50:53:56:59:62','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2047,'0','0','50:60:70:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2048,'0','0','50:60:70:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2050,'0','0','70','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2051,'0','0','70:100:130:160:190','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2052,'0','0','54:60:66:72:78','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2053,'0','0','35:40:45:50:55','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2054,'0','0','55:60:65:70:75:80:85:90:95:100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2055,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2056,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2057,'0','0','64:68:72:76:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2515,'0','0','100:120:140:160:180','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2233,'0','0','30:32:34:36:38:40:42:44:46:48','0','0','0','11',1,'10','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2234,'0','0','55:60:65:70:75','0','0','0','11',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2236,'0','0','30:32:34:36:38:40:42:44:46:48','0','0','0','11',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2237,'0','0','15','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2238,'0','0','35','0','0','0','99',0,'0','none','0',7940,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2239,'0','0','20','0','0','0','99',0,'0','none','0',7940,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2240,'0','0','5','0','0','0','99',0,'0','none','0',6124,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2241,'0','0','2','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2242,'0','0','4','0','0','0','99',0,'0','move_enable','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2243,'0','0','20:22:24:26:28','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2244,'0','0','40:42:44:46:48','0','0','0','99',0,'0','warg','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2246,'0','0','12','0','0','0','99',0,'0','warg','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2247,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2249,'0','0','10','0','0','0','99',0,'0','none','0',7940,1,990,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2250,'0','0','10','0','0','0','99',0,'0','none','0',7940,1,991,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2251,'0','0','10','0','0','0','99',0,'0','none','0',7940,1,993,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2252,'0','0','10','0','0','0','99',0,'0','none','0',7940,1,992,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2253,'0','0','10','0','0','0','99',0,'0','none','0',7940,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2254,'0','0','10','0','0','0','99',0,'0','none','0',7940,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2256,'0','0','3:6:9:12:15','0','0','0','99',0,'0','mado','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2257,'0','0','50','0','0','0','99',0,'0','mado','0',1549,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2258,'0','0','2:4:6','0','0','0','99',0,'0','mado','0',6145,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2259,'0','0','20','0','0','0','99',0,'0','mado','0',2139,0,6146,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2260,'0','0','20','0','0','0','99',0,'0','mado','0',6146,1,6147,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2261,'0','0','40:45:50','0','0','0','99',8,'1','mado','0',6146,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2262,'0','0','20:40:60','0','0','0','99',0,'0','mado','0',2800,0,6146,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2263,'0','0','25','0','0','0','99',0,'0','mado','0',2801,0,6146,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2264,'0','0','5','0','0','0','99',0,'0','mado','0',6146,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2265,'0','0','5','0','0','0','99',0,'0','mado','0',6146,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2267,'0','0','1','0','0','0','99',0,'0','mado','0',2802,0,6146,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2268,'0','0','100','0','0','0','99',0,'0','mado','0',6360,1,6363,1,6362,1,6361,1,6146,2,2803,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2269,'0','0','20','0','0','0','99',0,'0','mado','0',2804,0,6146,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2270,'0','0','45','0','0','0','99',0,'0','mado','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2271,'0','0','30','0','0','0','99',0,'0','mado','0',6146,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2272,'0','0','60:70:80','0','0','0','99',0,'0','mado','0',2805,0,6146,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2273,'0','0','80:90:100','0','0','0','99',0,'0','mado','0',2806,0,6146,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2274,'0','0','80:100:120','0','0','0','99',0,'0','mado','0',2808,0,6146,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2275,'0','0','25:30:35:40:45','0','0','0','99',0,'0','mado','0',2807,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2278,'0','0','20:22:24:26:28','0','0','0','6:7',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2279,'0','0','20:22:24:26:28','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2280,'20:40:60:80:100','0','18:20:22:24:26','0','0','0','6:7',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2281,'0','0','25:30:35:40:45','0','0','0','99',0,'0','none','0',612,0,615,0,998,1,999,2,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2282,'0','0','40:45:50:55:60','0','0','0','99',0,'0','none','0',612,0,615,0,998,2,7054,1,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2283,'0','0','15','0','0','0','99',0,'0','none','0',6186,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2284,'0','0','20:25:30:35:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2285,'0','0','40:45:50:55:60:65:70:75:80:85','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2286,'0','0','40:45:50:55:60:65:70:75:80:85','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2287,'0','0','40:50:60:70:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2288,'0','0','22:24:26:28:30:32:34:36:38:40','0','0','0','11',1,'3','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2289,'0','0','10:15:20:25:30','0','0','0','99',0,'0','none','0',6122,0,6123,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2290,'0','0','100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2291,'0','0','40:44:48:52:56','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2292,'0','0','30:40:50','0','0','0','99',0,'0','none','0',6120,1,6121,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2293,'0','0','30:40:50','0','0','0','99',0,'0','none','0',6120,1,6121,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2294,'0','0','30:40:50','0','0','0','99',0,'0','none','0',6120,1,6121,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2295,'0','0','30:40:50','0','0','0','99',0,'0','none','0',6120,1,6121,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2296,'0','0','30:40:50','0','0','0','99',0,'0','none','0',6120,1,6121,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2297,'0','0','30:40:50','0','0','0','99',0,'0','none','0',6120,1,6121,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2298,'0','0','15:18:21:24:27','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2299,'0','0','20:25:30','0','0','0','99',0,'0','none','0',6122,0,6123,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2300,'0','0','30:36:42','0','0','0','99',0,'0','none','0',6122,0,6123,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2301,'0','0','30:36:42','0','0','0','99',0,'0','none','0',6122,0,6123,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2302,'0','0','50:55:60','0','0','0','99',0,'0','none','0',6122,0,6123,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2303,'0','0','60:70:80','0','0','0','99',0,'0','none','0',6122,0,6123,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2304,'0','0','24:28:32','0','0','0','99',0,'0','none','0',6122,0,6123,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2307,'0','0','12:16:20:24:28','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2308,'0','0','20:20:20:20:20:25:25:25:25:25','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2309,'0','0','30:45:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2310,'0','0','10:12:14:16:18','0','0','0','99',0,'0','shield','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2311,'0','0','60:80:100:120:140','0','0','0','99',0,'0','shield','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2312,'0','0','50','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2313,'0','0','30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2314,'0','0','150','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2315,'0','0','50','0','0','0','99',0,'0','shield','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2316,'0','0','20:32:44:56:68','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2317,'0','0','20:30:40:50:60','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2318,'0','0','75:80:85:90:95','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2319,'0','0','30:36:42:48:54','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2320,'0','0','20:24:28:32:36','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2321,'0','0','60:65:70:75:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2322,'0','0','40:45:50:55:60','0','0','0','99',0,'0','none','0',523,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2323,'0','0','52:60:68:76:84','0','0','0','99',0,'0','shield','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2324,'0','0','80:90:100:110:120','0','0','0','4:5',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2325,'0','0','80:90:100:110:120','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2326,'0','0','3:4:5:6:7:8:9:10:11:12','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2327,'0','0','8:9:10:11:12','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2328,'0','0','36:40:44:48:52','0','0','0','99',0,'0','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2329,'0','0','20:30:40:50:60','0','0','0','99',0,'0','none','2',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2330,'0','0','1:2:3:4:5:6:7:8:9:10','-12:-14:-16:-18:-20:-22:-24:-26:-28:-30','-6:-7:-8:-9:-10:-11:-12:-13:-14:-15','0','99',0,'0','explosionspirits','2',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2331,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2332,'0','0','150','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2333,'0','0','80','0','0','0','99',0,'0','none','2',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2334,'0','0','40:60:80:100:120','-1:-2:-3:-4:-5','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2335,'0','0','80:70:60:50:40','-5:-4:-3:-2:-1','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2336,'0','0','10:15:20:25:30','0','0','0','99',0,'0','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2337,'0','0','45','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2338,'0','0','120','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2339,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2340,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2341,'0','0','50','0','0','0','99',0,'0','none','5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2342,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2343,'0','0','11:12:13:14:15:16:17:18:19:20','0','-11:-12:-13:-14:-15:-16:-17:-18:-19:-20','0','99',0,'0','none','5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2344,'0','0','20:25:30:35:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2345,'0','0','40:50:60:70:80','0','0','0','99',0,'0','none','1:2:3:4:5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2346,'0','0','40:50:60:70:80','-1:-2:-3:-4:-5','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2347,'0','0','40:50:60:70:80','-2:-4:-6:-8:-10','0','0','99',0,'0','none','1:2:3:4:5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2348,'0','0','40:50:60:70:80','0','0','0','99',0,'0','none','1:2:3:4:5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2517,'0','0','40:45:50:55:60','0','0','0','99',0,'0','none','1:2:3:4:5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2518,'0','0','40:50:60:70:80','0','0','0','99',0,'0','none','1:2:3:4:5',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2350,'0','0','96:112:128:144:160','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2351,'0','0','60:69:78:87:96','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2352,'0','0','84:96:108:120:134','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2381,'0','0','82:88:94:100:106','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2382,'0','0','86:92:98:104:110','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2383,'0','0','70:75:80:85:90','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2413,'0','0','64:68:72:76:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2414,'0','0','28:32:38:42:48','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2415,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2416,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2417,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2418,'0','0','80:90:100:110:120','0','0','0','11',1,'20','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2419,'0','0','12:16:20:24:28','0','0','0','13:14',0,'0','none','0',11513,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2420,'0','0','48:56:64:72:80','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2421,'0','0','50:53:56:59:62','0','0','0','13:14',0,'0','none','0',6144,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2422,'0','0','80:90:100:110:120','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2423,'0','0','42:46:50:54:58','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2424,'0','0','40:45:50:55:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2425,'0','0','60:75:90:105:120','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2426,'0','0','80:90:100:110:120','0','0','0','99',0,'0','none','0',11513,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2427,'0','0','120:140:160:180:200','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2428,'0','0','120:140:160:180:200','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2429,'0','0','50:60:70:80:90','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2430,'0','0','150:160:170:180:190','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2431,'0','0','120:130:140:150:160','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2432,'0','0','120:130:140:150:160','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2433,'0','0','120:130:140:150:160','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2434,'0','0','120:130:140:150:160','0','0','0','13:14',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2443,'0','0','30:34:38:42:46','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2444,'0','0','30:34:38:42:46','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2445,'0','0','40:44:48:52:56','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2446,'0','0','62:70:78:86:94','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2447,'0','0','50:56:62:68:74','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2448,'0','0','70:90:110:130:150','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2449,'0','0','48:56:64:70:78','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2450,'0','0','48:56:64:70:78','0','0','0','99',0,'0','none','0',716,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2451,'0','0','50:55:60:65:70','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2452,'0','0','40:52:64:76:88','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2453,'0','0','34:42:50:58:66','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2454,'0','0','55:62:69:76:83','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2455,'0','0','30:35:40:45:50','0','0','0','99',0,'0','none','0',715,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2456,'0','0','10','0','0','0','99',0,'0','elementalspirit','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2457,'0','0','100:150:200','0','0','0','99',0,'0','none','0',990,3,990,6,994,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2458,'0','0','100:150:200','0','0','0','99',0,'0','none','0',991,3,991,6,995,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2459,'0','0','100:150:200','0','0','0','99',0,'0','none','0',992,3,992,6,996,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2460,'0','0','100:150:200','0','0','0','99',0,'0','none','0',993,3,993,6,997,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2461,'0','0','50','0','0','0','99',0,'0','elementalspirit','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2462,'0','0','10:20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2464,'0','0','10','0','0','0','99',0,'0','elementalspirit','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2465,'0','0','22:30:38','0','0','0','99',0,'0','none','0',6360,1,6360,2,6360,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2466,'0','0','22:30:38','0','0','0','99',0,'0','none','0',6361,1,6361,2,6361,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2467,'0','0','22:30:38','0','0','0','99',0,'0','none','0',6362,1,6362,2,6362,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2468,'0','0','22:30:38','0','0','0','99',0,'0','none','0',6363,1,6363,2,6363,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2476,'0','0','30','0','0','0','99',0,'0','cart','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2477,'0','0','40:42:44:46:48','0','0','0','99',8,'1','cart','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2478,'0','0','20:24:28:32:36','0','0','0','99',0,'0','cart','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2479,'0','0','22:26:30:34:38','0','0','0','99',0,'0','none','0',6210,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2480,'0','0','30:35:40:45:50','0','0','0','99',0,'0','none','0',6211,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2481,'0','0','55:60:65:70:75','0','0','0','99',0,'0','none','0',6212,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2482,'0','0','40:50:60:70:80','0','0','0','99',0,'0','none','0',6210,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2483,'0','0','24:28:32:36:40:44:48:52:56:60','0','0','0','99',0,'0','none','0',6210,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2484,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2485,'0','0','24:28:32:36:40','0','0','0','99',0,'0','none','0',7135,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2486,'0','0','30:35:40:45:50','0','0','0','99',0,'0','none','0',6216,1,6213,1,6214,1,6215,1,7136,1,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2487,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2488,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2489,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2490,'0','0','40:45:50:55:60','0','0','0','99',0,'0','none','0',7137,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2491,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2492,'0','0','40:45:50:55:60','0','0','0','99',0,'0','none','0',6217,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2493,'0','0','4','0','0','0','99',9,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2494,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2495,'0','0','5:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2496,'0','0','5:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2497,'0','0','12','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2498,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/* REPLACE INTO `skill_require_db` VALUES(2533,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);*/
REPLACE INTO `skill_require_db` VALUES(2534,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2535,'0','0','1','0','0','0','99',0,'0','none','0',6377,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2536,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2537,'0','0','70:100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/* REPLACE INTO `skill_require_db` VALUES(2538,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- REPLACE INTO `skill_require_db` VALUES(2542,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- REPLACE INTO `skill_require_db` VALUES(2543,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
-- REPLACE INTO `skill_require_db` VALUES(2544,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);*/
REPLACE INTO `skill_require_db` VALUES(2551,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2552,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2553,'0','0','80:84:88:92:96','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2554,'0','0','55:60:65:70:75','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2555,'0','0','30:32:34:36:38','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2556,'0','0','2','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2557,'0','0','55:60:65:70:75','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2558,'0','0','45','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2559,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2560,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2561,'0','0','10:15:20:25:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2562,'0','0','45:50:55:60:65','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2563,'0','0','20:24:28:32:36','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2564,'0','0','90','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2565,'0','0','40:45:50:55:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2566,'0','0','60:70:80:90:100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2567,'0','0','70','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2568,'0','0','30:40:50:60:70','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2569,'0','0','80:84:88:92:96','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2570,'0','0','55:60:65:70:75','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2571,'0','0','70:80:90:100:110','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2572,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2573,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(2574,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3001,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3004,'0','0','10:12:14:16:18','0','0','0','25:26:28',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3005,'0','0','12:16:20:24:28','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3006,'0','0','5:6:7:8:9','0','0','0','99',0,'0','none','0',13294,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3007,'0','0','8:9:10:11:12','0','0','0','99',7,'8','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3008,'0','0','50','0','0','10000:20000:30000:40000:50000:60000:70000:80000:90000:100000','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3009,'0','0','24:28:32:36:40','0','0','0','22',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3010,'0','0','9:12:15:18:21','0','0','0','99',0,'0','none','0',6493,'3:4:5:6:7',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3011,'0','0','100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3012,'0','0','40:44:48:52:56','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3013,'0','0','40:44:48:52:56','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3014,'0','0','40:44:48:52:56','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3015,'0','0','20','0','0','0','99',0,'0','none','0',6512,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3016,'0','0','20','0','0','0','99',0,'0','none','0',6513,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3017,'0','0','20','0','0','0','99',0,'0','none','0',6514,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3018,'0','0','20','0','0','0','99',0,'0','none','0',6515,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3019,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3020,'0','0','30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3021,'0','0','40:44:48:52:56','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3022,'0','0','70:75:80:85:90','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3023,'0','0','60:65:70:75:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3024,'0','0','50','0','0','0','99',0,'0','none','0',7524,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3025,'0','0','25:30:35:40:45','0','0','0','99',0,'0','none','0',7524,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3026,'0','0','60:70:80:90:100 ','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3027,'0','0','55:60:65:70:75 ','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(3029,'0','0','20:30:40:50:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(5001,'0','0','22:34:46:58:70','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0   );
REPLACE INTO `skill_require_db` VALUES(5002,'0','0','100:120:140:160:180','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0      );
REPLACE INTO `skill_require_db` VALUES(5003,'0','0','60:70:80:90:100','0','0','0','99',0,'0','none','0',970,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0  );
REPLACE INTO `skill_require_db` VALUES(5004,'0','0','30:35:40:45:50:55:60:65:70:75','0','0','0','99',0,'0','dragon','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0    );
REPLACE INTO `skill_require_db` VALUES(5005,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0        );
REPLACE INTO `skill_require_db` VALUES(5006,'0','0','60:70:80:90:100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0  );
REPLACE INTO `skill_require_db` VALUES(5007,'0','0','200:230:260:290:320','0','0','0','13:14',0,'0','none','0',6144,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0      );
REPLACE INTO `skill_require_db` VALUES(5008,'0','0','120','0','0','0','99',0,'0','elementalspirit','0',717,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0      );
REPLACE INTO `skill_require_db` VALUES(5009,'0','0','65','0','0','0','99',0,'0','none','5:5:4:4:3',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0   );
REPLACE INTO `skill_require_db` VALUES(5010,'0','0','30:26:22:18:14','0','0','0','99',0,'0','none','0',7940,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0   );
REPLACE INTO `skill_require_db` VALUES(5011,'0','0','30:60:90:120:150','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 );
REPLACE INTO `skill_require_db` VALUES(5012,'0','0','100:150:200:250:300','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0      );
REPLACE INTO `skill_require_db` VALUES(5013,'0','0','200:180:160:140:120','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0      );
REPLACE INTO `skill_require_db` VALUES(5014,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0        );
REPLACE INTO `skill_require_db` VALUES(5015,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0        );
REPLACE INTO `skill_require_db` VALUES(5016,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0        );
REPLACE INTO `skill_require_db` VALUES(5017,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0        );
REPLACE INTO `skill_require_db` VALUES(5018,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0        );
REPLACE INTO `skill_require_db` VALUES(8001,'0','0','13:16:19:22:25','0','0','0','99',0,'0','none','0',545,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8002,'0','0','20:25:30:35:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8004,'0','0','100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8005,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8006,'0','0','20:25:30:35:40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8008,'0','0','120','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8009,'0','0','4:8:12:16:20','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8010,'0','0','30:40:50:60:70','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8011,'0','0','30:40:50:60:70','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8012,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8013,'0','0','22:24:26:28:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8014,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8016,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8018,'0','0','60:80:100:120:140','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8019,'0','0','48:60:72:84:96','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8020,'0','0','65:75:85:95:105','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8021,'0','0','48:52:56:60:64','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8022,'0','0','40:50:60:70:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8023,'0','0','70:90:110:130:150','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8024,'0','0','25:30:35:40:45','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8025,'0','0','90:100:110:120:130','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8026,'0','0','45:54:63:72:81','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8027,'0','0','35','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8028,'0','0','20:25:30:35:40','0','0','0','99',0,'0','mh_fighting','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8029,'0','0','10:15:20:25:30','0','0','0','99',0,'0','none','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8030,'0','0','8:16:24:32:40','0','0','0','99',0,'0','none','2',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8031,'0','0','40:45:50:55:60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8032,'0','0','60:65:70:75:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8033,'0','0','80:90:100:110:120','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8034,'0','0','60:68:76:84:100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8035,'0','0','60:65:70:75:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8036,'0','0','20:25:30:35:40','0','0','0','99',0,'0','mh_grappling','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8037,'0','0','10:20:30:40:50','0','0','0','99',0,'0','0','1',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8038,'0','0','24:28:32:36:40','0','0','0','99',0,'0','none','2',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8039,'0','0','34:38:42:46:50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8040,'0','0','54:58:62:66:70','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8041,'0','0','30:35:40:45:50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8042,'0','0','20:28:36:44:52','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8043,'0','0','60:65:70:75:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8201,'0','0','8:8:8:8:8:15:15:15:15:15','0','0','0','0:1:2:3:4:5:6:7:8:9:10:12:13:14:15:16:17:18:19:20:21:22',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8202,'20:20:19:19:18:18:17:17:16:16','0','30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8203,'0','0','13:14:15:16:17:18:19:20:21:22','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8204,'0','0','50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8205,'0','0','35:40:45:50:55:60:65:70:75:80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8206,'0','0','100','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8207,'0','0','12','0','0','0','99',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8208,'0','0','15','0','0','0','99',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8209,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8210,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8211,'0','0','12','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8212,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8213,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8214,'0','0','15','0','0','0','99',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8215,'0','0','18:21:24:27:30','0','0','0','99',1,'1','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8216,'0','0','7','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8217,'0','0','12','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8218,'0','0','18:21:24:27:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8219,'0','0','30','0','0','0','99',0,'0','shield','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8220,'0','0','12:14:16:18:20:22:24:26:28:30','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8221,'0','0','25','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8222,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8223,'0','0','14:18:22:26:30:34:38:42:46:50','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8224,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8225,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8226,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8227,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8228,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8229,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8230,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8231,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8232,'0','0','4:5:6:7:8:9:10:11:12:13','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8233,'0','0','5','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8234,'0','0','15:17:19:21:23:25:27:29:31:33','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8235,'0','0','10','100','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8236,'0','0','20:20:20:20:20:18:16:14:12:10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8237,'0','0','10','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8238,'0','0','20:20:20:25:25:25:30:30:30:35','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8239,'0','0','28:32:36:40:44:48:52:56:60:64','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8240,'15','0','18:21:24:27:30:33:36:39:42:45','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8401,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8402,'0','0','60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8403,'0','0','80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8404,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8405,'0','0','60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8406,'0','0','80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8407,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8408,'0','0','60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8409,'0','0','80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8410,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8411,'0','0','60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8412,'0','0','80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8413,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8414,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8415,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8416,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8417,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8418,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8419,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8420,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8421,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8422,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8423,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8424,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8425,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8426,'0','0','60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8427,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8428,'0','0','80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8429,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8430,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8431,'0','0','60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8432,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8433,'0','0','80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8434,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8435,'0','0','60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8436,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8437,'0','0','80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8438,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8439,'0','0','40','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8440,'0','0','60','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8441,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(8442,'0','0','80','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(10010,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(10011,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(10012,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(10013,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
REPLACE INTO `skill_require_db` VALUES(10015,'0','0','1','0','0','0','99',0,'0','none','0',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

--
-- Estrutura da tabela `skill_unit_db`
--

CREATE TABLE IF NOT EXISTS `skill_unit_db` (
  `SkillID` smallint(5) unsigned NOT NULL,
  `UnitID` tinytext NOT NULL,
  `UnitID2` tinytext,
  `Layout` tinytext NOT NULL,
  `Range` tinytext NOT NULL,
  `Interval` tinytext NOT NULL,
  `Target` tinytext NOT NULL,
  `Flag` tinytext NOT NULL,
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `skill_unit_db` VALUES(12,'0x7e',NULL,'0',' 0','-1','all',' 0x003');
REPLACE INTO `skill_unit_db` VALUES(18,'0x7f',NULL,' -1',' 0','20','enemy',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(21,'0x86',NULL,'0',' 2','1000','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(25,'0x85',NULL,'1',' 0','-1','all',' 0x2003');
REPLACE INTO `skill_unit_db` VALUES(27,'0x81','0x80','0',' 0','-1','all',' 0x00E');
REPLACE INTO `skill_unit_db` VALUES(47,'0x86',NULL,'0',' 2:2:2:2:2:3:3:3:3:3','1000','enemy',' 0x080');
REPLACE INTO `skill_unit_db` VALUES(70,'0x83',NULL,' -1',' 1','1000','all',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(79,'0x84',NULL,' -1',' 1','3000','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(80,'0x87','0x88','0',' 1','2000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(83,'0x86',NULL,'0',' 3','1000','enemy',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(85,'0x86',NULL,'5',' 1:1:1:1:1:1:1:1:1:1:3','1250','enemy','0x018');
REPLACE INTO `skill_unit_db` VALUES(87,'0x8d',NULL,' -1',' 0','-1','all',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(89,'0x86',NULL,'4',' 1',' 450','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(91,'0x86',NULL,'2',' 0','1000','enemy',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(92,'0x8e',NULL,'2',' 0','-1','enemy',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(115,'0x90',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(116,'0x93',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(117,'0x91',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(118,'0x94',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(119,'0x95',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(120,'0x96',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(121,'0x97',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(122,'0x8f',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(123,'0x98',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(125,'0x99',NULL,'0',' 1','1000','all',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(140,'0x92',NULL,' -1',' 1','1000','enemy',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(220,'0xb0',NULL,'0',' 0','-1','all',' 0x002');
REPLACE INTO `skill_unit_db` VALUES(229,'0xb1',NULL,'0',' 1',' 500','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(254,'0x86',NULL,' -1',' 0',' 300','enemy',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(285,'0x9a',NULL,'3',' 0','-1','all',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(286,'0x9b',NULL,'3',' 0','-1','all',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(287,'0x9c',NULL,'3',' 0','-1','all',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(288,'0x9d',NULL,'3:3:4:4:5','0',' -1','all',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(306,'0x9e',NULL,'4',' 0','6000','enemy',' 0x200');
REPLACE INTO `skill_unit_db` VALUES(307,'0x9f',NULL,'4',' 0','-1','enemy',' 0x220');
REPLACE INTO `skill_unit_db` VALUES(308,'0xa0',NULL,'4',' 0','-1','enemy',' 0x200');
REPLACE INTO `skill_unit_db` VALUES(309,'0xa1',NULL,'4',' 0','-1','party',' 0x200');
REPLACE INTO `skill_unit_db` VALUES(310,'0xa2',NULL,'4',' 0','-1','party',' 0x200');
REPLACE INTO `skill_unit_db` VALUES(311,'0xa3',NULL,'4',' 0','-1','all',' 0x200');
REPLACE INTO `skill_unit_db` VALUES(312,'0xa4',NULL,'4',' 0','-1','party',' 0x240');
REPLACE INTO `skill_unit_db` VALUES(313,'0xa5',NULL,'4',' 0','-1','party',' 0x200');
REPLACE INTO `skill_unit_db` VALUES(317,'0xa6',NULL,'3',' 0','3000','enemy',' 0x400');
REPLACE INTO `skill_unit_db` VALUES(319,'0xa7',NULL,'3',' 0','3000','all',' 0xC40');
REPLACE INTO `skill_unit_db` VALUES(320,'0xa8',NULL,'3',' 0','3000','all',' 0xC40');
REPLACE INTO `skill_unit_db` VALUES(321,'0xa9',NULL,'3',' 0','3000','all',' 0xC40');
REPLACE INTO `skill_unit_db` VALUES(322,'0xaa',NULL,'3',' 0','6000','all',' 0xC40');
REPLACE INTO `skill_unit_db` VALUES(325,'0xab',NULL,'3',' 0','3000','enemy',' 0x100');
REPLACE INTO `skill_unit_db` VALUES(327,'0xac',NULL,'3',' 0','3000','all',' 0x940');
REPLACE INTO `skill_unit_db` VALUES(328,'0xad',NULL,'3',' 0','3000','enemy',' 0x900');
REPLACE INTO `skill_unit_db` VALUES(329,'0xae',NULL,'3',' 0','3000','all',' 0x940');
REPLACE INTO `skill_unit_db` VALUES(330,'0xaf',NULL,'3',' 0','3000','all',' 0x940');
REPLACE INTO `skill_unit_db` VALUES(336,'0xb2',NULL,'0','-1','-1','noone',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(339,'0x86',NULL,' -1',' 0',' 300','enemy',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(362,'0xb4',NULL,'0',' 2',' 300','all',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(369,'0xb3',NULL,' -1',' 0','10000','all','0x008');
REPLACE INTO `skill_unit_db` VALUES(395,'0xb5',NULL,'4',' 0','-1','all',' 0x200');
REPLACE INTO `skill_unit_db` VALUES(404,'0xb6',NULL,' -1',' 0','-1','all',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(405,'0xb7',NULL,'0',' 0','-1','enemy',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(409,'0xb2',NULL,'0','-1','-1','noone',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(410,'0xb2',NULL,'0','-1','-1','noone',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(428,'0x86',NULL,'0',' 1',' 100','enemy',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(429,'0x86',NULL,'0',' 1',' 100','enemy',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(430,'0x86',NULL,'0',' 1',' 100','enemy',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(484,'0xb8',NULL,'2',' 0',' 500','enemy',' 0x808');
REPLACE INTO `skill_unit_db` VALUES(488,'0xb9',NULL,'3',' 0','-1','all',' 0x200');
REPLACE INTO `skill_unit_db` VALUES(516,'0x86',NULL,'3',' 0',' 100','enemy',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(521,'0xbe',NULL,'0',' 1','1000','enemy',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(525,'0x86',NULL,'0',' 2',' 100','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(527,'0xbc',NULL,' -1',' 0','2000','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(535,'0xbd',NULL,' -1',' 0','20','enemy',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(538,'0xbb',NULL,'1:1:1:2:2:2:3:3:3:4','0','-1','all','0x010');
REPLACE INTO `skill_unit_db` VALUES(541,'0x86',NULL,'0',' 3:3:4:4:5',' 100','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(653,'0xc6',NULL,'0',' 5:7:9:11:13:5:7:9:11:13',' 300','enemy',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(670,'0xc7',NULL,'1',' 4:7:10:13:16:19:22:25:28:31','1000','all','0x008');
REPLACE INTO `skill_unit_db` VALUES(2044,'0xca',NULL,'0',' 2','1000','all',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(2032,'0xe1',NULL,'2',' 0','1000','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(2213,'0x86',NULL,'0',' 8',' 100','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(2216,'0xcb',NULL,' -1',' 0',' 100','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(2238,'0xd8',NULL,'0',' 2','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(2239,'0xd9',NULL,'0',' 0','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(2249,'0xd2',NULL,'0',' 2','1000','enemy',' 0x022');
REPLACE INTO `skill_unit_db` VALUES(2250,'0xd3',NULL,'0',' 2','1000','enemy',' 0x022');
REPLACE INTO `skill_unit_db` VALUES(2251,'0xd4',NULL,'0',' 2','1000','enemy',' 0x022');
REPLACE INTO `skill_unit_db` VALUES(2252,'0xd5',NULL,'0',' 2','1000','enemy',' 0x022');
REPLACE INTO `skill_unit_db` VALUES(2253,'0xd6',NULL,'0',' 1','1000','enemy',' 0x002');
REPLACE INTO `skill_unit_db` VALUES(2254,'0xd7',NULL,'0',' 1','1000','enemy',' 0x002');
REPLACE INTO `skill_unit_db` VALUES(2273,'0xe2',NULL,'2',' 0',' 500','friend','0x000');
REPLACE INTO `skill_unit_db` VALUES(2274,'0xe3',NULL,'2',' 0',' 500','all',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(2299,'0xcc',NULL,'0',' 1','1000','all',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(2300,'0xcd',NULL,'0',' 1','1000','all',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(2301,'0xce',NULL,'2',' 0','-1','enemy',' 0x200E');
REPLACE INTO `skill_unit_db` VALUES(2302,'0xcf',NULL,'2',' 0','-1','all',' 0x2002');
REPLACE INTO `skill_unit_db` VALUES(2303,'0xd0',NULL,'3',' 0','-1','all',' 0x2018');
REPLACE INTO `skill_unit_db` VALUES(2304,'0xd1',NULL,'0',' 2','1000','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(2319,'0xec',NULL,'0',' 3','5000','all',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(2414,'0xda',NULL,'0',' 0','-1','enemy',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(2418,'0xdb',NULL,'0',' 5',' 300','enemy',' 0x800');
REPLACE INTO `skill_unit_db` VALUES(2419,'0xde',NULL,'0',' 1','1000','all','0x014');
REPLACE INTO `skill_unit_db` VALUES(2443,'0xdc',NULL,'0',' 0','300','enemy',' 0x00A');
REPLACE INTO `skill_unit_db` VALUES(2444,'0xdd',NULL,'0',' 0','1000','enemy',' 0x00A');
REPLACE INTO `skill_unit_db` VALUES(2446,'0x86',NULL,'0',' 3:3:3:4:4','1000','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(2447,'0x86',NULL,'0',' 3:3:3:4:4','1000','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(2449,'0xdf',NULL,'0',' 3:3:4:4:5','500','enemy','0x018');
REPLACE INTO `skill_unit_db` VALUES(2450,'0xe0',NULL,'3',' 0',' 500','enemy',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(2452,'0xe4',NULL,'0',' 3','3000','all',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(2453,'0xeb',NULL,'0',' 1:1:2:2:3','500','enemy','0x010');
REPLACE INTO `skill_unit_db` VALUES(2465,'0xf1',NULL,'0',' 1','1000','all',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(2466,'0xf2',NULL,'0',' 1','1000','all',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(2467,'0xf3',NULL,'0',' 1','1000','all',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(2468,'0xf4',NULL,'0',' 1','1000','all',' 0x010');
REPLACE INTO `skill_unit_db` VALUES(2479,'0xe5',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(2482,'0xe6','0x7f',' -1',' 2','-1','all',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(2484,'0x86',NULL,'0',' 2',' 100','enemy',' 0x080');
REPLACE INTO `skill_unit_db` VALUES(2485,'0xe7',NULL,'0',' 3','2000','enemy',' 0x098');
REPLACE INTO `skill_unit_db` VALUES(2487,'0xe8',NULL,'0',' 3','1000','enemy',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(2488,'0xe9',NULL,'0',' 3','1000','enemy',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(2490,'0xea',NULL,'0',' 1','1000','all',' 0x002');
REPLACE INTO `skill_unit_db` VALUES(2555,'0x104',NULL,'0',' 1:2:2:3:3','500','enemy','0x006');
REPLACE INTO `skill_unit_db` VALUES(3006,'0x86',NULL,'0',' 2',' 100','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(3008,'0x86',NULL,'0',' 2',' 100','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(3009,'0x86',NULL,'0',' 3',' 100','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(3020,'0xf8',NULL,'0',' 3',' 100','all',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(3010,'0xfc',NULL,'0',' 0','5000','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(5006,'0x101',NULL,'0',' 3','2000','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(5008,'0x7e',NULL,'0',' 0','-1','all',' 0x003');
REPLACE INTO `skill_unit_db` VALUES(5010,'0xfe',NULL,'0',' 2','-1','enemy',' 0x000');
REPLACE INTO `skill_unit_db` VALUES(8020,'0xf5',NULL,'0',' 3','2300:2100:1900:1700:1500','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(8033,'0x7e',NULL,'0',' 0','-1','all',' 0x003');
REPLACE INTO `skill_unit_db` VALUES(8025,'0x86',NULL,'0',' 2:2:3:3:4','1000','enemy',' 0x018');
REPLACE INTO `skill_unit_db` VALUES(8041,'0xf6',NULL,'1:1:2:2:3',' 0','2000','enemy',' 0x01A');
REPLACE INTO `skill_unit_db` VALUES(8043,'0xf7',NULL,'1',' 0','-1','enemy',' 0x2018');
REPLACE INTO `skill_unit_db` VALUES(8208,'0x86',NULL,'0',' 2','1000','enemy',' 0x080');
REPLACE INTO `skill_unit_db` VALUES(8209,'0x90',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(8210,'0x93',NULL,'0',' 0','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(8211,'0x95',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(8212,'0x97',NULL,'0',' 1','1000','enemy',' 0x006');
REPLACE INTO `skill_unit_db` VALUES(8403,'0xed',NULL,' -1',' 1','1000','enemy',' 0x018 ');
REPLACE INTO `skill_unit_db` VALUES(8406,'0xee',NULL,'1',' 0','-1','friend','0x2018');
REPLACE INTO `skill_unit_db` VALUES(8409,'0xef',NULL,'0',' 1','-1','friend','0x2018');
REPLACE INTO `skill_unit_db` VALUES(8412,'0xf0',NULL,'0',' 1','-1','friend','0x2018');
REPLACE INTO `skill_unit_db` VALUES(10006,'0xc1',NULL,'2',' 0','-1','sameguild',' 0x040');
REPLACE INTO `skill_unit_db` VALUES(10007,'0xc2',NULL,'2',' 0','-1','sameguild',' 0x040');
REPLACE INTO `skill_unit_db` VALUES(10008,'0xc3',NULL,'2',' 0','-1','sameguild',' 0x040');
REPLACE INTO `skill_unit_db` VALUES(10009,'0xc4',NULL,'2',' 0','-1','sameguild',' 0x040');

--
-- Estrutura da tabela `spellbook_db`
--

CREATE TABLE IF NOT EXISTS `spellbook_db` (
  `SkillID` smallint(5) unsigned NOT NULL,
  `PreservePoints` tinyint(4) NOT NULL,
  `RequiredBook` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`SkillID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `spellbook_db` VALUES(14,7,6190);
REPLACE INTO `spellbook_db` VALUES(19,7,6189);
REPLACE INTO `spellbook_db` VALUES(20,7,6191);
REPLACE INTO `spellbook_db` VALUES(21,9,6197);
REPLACE INTO `spellbook_db` VALUES(83,10,6194);
REPLACE INTO `spellbook_db` VALUES(84,9,6198);
REPLACE INTO `spellbook_db` VALUES(85,10,6193);
REPLACE INTO `spellbook_db` VALUES(86,9,6199);
REPLACE INTO `spellbook_db` VALUES(89,10,6192);
REPLACE INTO `spellbook_db` VALUES(90,8,6201);
REPLACE INTO `spellbook_db` VALUES(91,9,6200);
REPLACE INTO `spellbook_db` VALUES(2210,8,6205);
REPLACE INTO `spellbook_db` VALUES(2211,12,6204);
REPLACE INTO `spellbook_db` VALUES(2213,22,6195);
REPLACE INTO `spellbook_db` VALUES(2214,12,6203);
REPLACE INTO `spellbook_db` VALUES(2216,12,6202);
REPLACE INTO `spellbook_db` VALUES(2217,22,6196);

--
-- Estrutura da tabela `statpoint_db`
--

CREATE TABLE IF NOT EXISTS `statpoint_db` (
  `StatPoints` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`StatPoints`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
