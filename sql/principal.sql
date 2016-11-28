--  _________________________________________________________________________
-- |                                                                         |
-- |                       brAthena © 2016 - Banco de Dados                  |
-- |      Contém as tabelas para funcionamento dos sistemas do emulador      |
-- |_________________________________________________________________________|
--

--
-- Estrutura da tabela `account_data`
--

CREATE TABLE IF NOT EXISTS `account_data` (
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `bank_vault` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `base_exp` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '100',
  `base_drop` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '100',
  `base_death` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '100',
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM; 

--
-- Estrutura da tabela `acc_reg_num_db`
--

CREATE TABLE IF NOT EXISTS `acc_reg_num_db` (
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `acc_reg_str_db`
--

CREATE TABLE IF NOT EXISTS `acc_reg_str_db` (
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` VARCHAR(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `auction`
--

CREATE TABLE IF NOT EXISTS `auction` (
  `auction_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `seller_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `seller_name` VARCHAR(30) NOT NULL DEFAULT '',
  `buyer_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `buyer_name` VARCHAR(30) NOT NULL DEFAULT '',
  `price` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `buynow` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `hours` SMALLINT(6) NOT NULL DEFAULT '0',
  `timestamp` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `item_name` VARCHAR(50) NOT NULL DEFAULT '',
  `type` SMALLINT(6) NOT NULL DEFAULT '0',
  `refine` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `card0` SMALLINT(11) NOT NULL DEFAULT '0',
  `card1` SMALLINT(11) NOT NULL DEFAULT '0',
  `card2` SMALLINT(11) NOT NULL DEFAULT '0',
  `card3` SMALLINT(11) NOT NULL DEFAULT '0',
  `unique_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`auction_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `autotrade_data`
--

CREATE TABLE IF NOT EXISTS `autotrade_data` (
  `char_id` INT(11) NOT NULL DEFAULT '0',
  `itemkey` INT(11) NOT NULL DEFAULT '0',
  `amount` INT(11) NOT NULL DEFAULT '0',
  `price` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`itemkey`)
) ENGINE=MyISAM; 

--
-- Estrutura da tabela `autotrade_merchants`
--

CREATE TABLE IF NOT EXISTS `autotrade_merchants` (
  `account_id` INT(11) NOT NULL DEFAULT '0',
  `char_id` INT(11) NOT NULL DEFAULT '0',
  `sex` TINYINT(2) NOT NULL DEFAULT '0',
  `title` VARCHAR(80) NOT NULL DEFAULT 'Buy From Me!',
  PRIMARY KEY (`account_id`,`char_id`)
) ENGINE=MyISAM; 

--
-- Estrutura da tabela `cart_inventory`
--

CREATE TABLE IF NOT EXISTS `cart_inventory` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `char_id` INT(11) NOT NULL DEFAULT '0',
  `nameid` INT(11) NOT NULL DEFAULT '0',
  `amount` INT(11) NOT NULL DEFAULT '0',
  `equip` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `identify` SMALLINT(6) NOT NULL DEFAULT '0',
  `refine` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` TINYINT(4) NOT NULL DEFAULT '0',
  `card0` SMALLINT(11) NOT NULL DEFAULT '0',
  `card1` SMALLINT(11) NOT NULL DEFAULT '0',
  `card2` SMALLINT(11) NOT NULL DEFAULT '0',
  `card3` SMALLINT(11) NOT NULL DEFAULT '0',
  `expire_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `bound` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `char`
--

CREATE TABLE IF NOT EXISTS `char` (
  `char_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `char_num` TINYINT(1) NOT NULL DEFAULT '0',
  `name` VARCHAR(30) NOT NULL DEFAULT '',
  `class` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `base_level` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '1',
  `job_level` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '1',
  `base_exp` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `job_exp` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `zeny` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `str` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `agi` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `vit` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `int` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `dex` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `luk` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_hp` INT(9) UNSIGNED NOT NULL DEFAULT '0',
  `hp` INT(9) UNSIGNED NOT NULL DEFAULT '0',
  `max_sp` INT(9) UNSIGNED NOT NULL DEFAULT '0',
  `sp` INT(9) UNSIGNED NOT NULL DEFAULT '0',
  `status_point` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `skill_point` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `option` INT(11) NOT NULL DEFAULT '0',
  `karma` TINYINT(3) NOT NULL DEFAULT '0',
  `manner` SMALLINT(6) NOT NULL DEFAULT '0',
  `party_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `guild_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `pet_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `homun_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `elemental_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `hair` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `hair_color` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `clothes_color` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
  `body` SMALLINT(5) unsigned NOT NULL default '0',
  `weapon` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `shield` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `head_top` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `head_mid` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `head_bottom` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `robe` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `last_map` VARCHAR(11) NOT NULL DEFAULT '',
  `last_x` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '53',
  `last_y` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '111',
  `save_map` VARCHAR(11) NOT NULL DEFAULT '',
  `save_x` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '53',
  `save_y` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '111',
  `partner_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `online` TINYINT(2) NOT NULL DEFAULT '0',
  `father` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `mother` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `child` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `fame` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `rename` SMALLINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `delete_date` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `slotchange` SMALLINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `char_opt` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `font` TINYINT(3) UNSIGNED NOT NULL DEFAULT  '0',
  `unban_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `uniqueitem_counter` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `sex` ENUM('M','F','U') NOT NULL DEFAULT 'U',
  `hotkey_rowshift` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`),
  UNIQUE KEY `name_key` (`name`),
  KEY `account_id` (`account_id`),
  KEY `party_id` (`party_id`),
  KEY `guild_id` (`guild_id`),
  KEY `online` (`online`)
) ENGINE=MyISAM AUTO_INCREMENT=150000; 

--
-- Estrutura da tabela `char_reg_num_db`
--

CREATE TABLE IF NOT EXISTS `char_reg_num_db` (
  `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`key`,`index`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `char_reg_str_db`
--

CREATE TABLE IF NOT EXISTS `char_reg_str_db` (
  `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` VARCHAR(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`key`,`index`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `charlog`
--

CREATE TABLE IF NOT EXISTS `charlog` (
  `time` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00',
  `char_msg` VARCHAR(255) NOT NULL DEFAULT 'char select',
  `account_id` INT(11) NOT NULL DEFAULT '0',
  `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `char_num` TINYINT(4) NOT NULL DEFAULT '0',
  `name` VARCHAR(23) NOT NULL DEFAULT '',
  `str` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `agi` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `vit` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `INT` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `dex` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `luk` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `hair` TINYINT(4) NOT NULL DEFAULT '0',
  `hair_color` INT(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM; 

--
-- Estrutura da tabela `elemental`
--

CREATE TABLE IF NOT EXISTS `elemental` (
  `ele_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` INT(11) NOT NULL,
  `class` MEDIUMINT(9) UNSIGNED NOT NULL DEFAULT '0',
  `mode` INT(11) UNSIGNED NOT NULL DEFAULT '1',
  `hp` INT(12) NOT NULL DEFAULT '1',
  `sp` INT(12) NOT NULL DEFAULT '1',
  `max_hp` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `max_sp` MEDIUMINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `atk1` MEDIUMINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `atk2` MEDIUMINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `matk` MEDIUMINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `aspd` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `def` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `mdef` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `flee` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `hit` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `life_time` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ele_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `char_id` INT(11) NOT NULL DEFAULT '0',
  `friend_account` INT(11) NOT NULL DEFAULT '0',
  `friend_id` INT(11) NOT NULL DEFAULT '0',
  KEY  `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `hotkey`
--

CREATE TABLE IF NOT EXISTS `hotkey` (
  `char_id` INT(11) NOT NULL,
  `hotkey` TINYINT(2) UNSIGNED NOT NULL,
  `type` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `itemskill_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `skill_lvl` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`hotkey`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `global_acc_reg_num_db`
--

CREATE TABLE IF NOT EXISTS `global_acc_reg_num_db` (
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `global_acc_reg_str_db`
--

CREATE TABLE IF NOT EXISTS `global_acc_reg_str_db` (
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` VARCHAR(32) BINARY NOT NULL DEFAULT '',
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` VARCHAR(254) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`,`key`,`index`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `guild`
--

CREATE TABLE IF NOT EXISTS `guild` (
  `guild_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `master` VARCHAR(24) NOT NULL DEFAULT '',
  `guild_lv` TINYINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `connect_member` TINYINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `max_member` TINYINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `average_lv` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '1',
  `exp` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `next_exp` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `skill_point` TINYINT(11) UNSIGNED NOT NULL DEFAULT '0',
  `mes1` VARCHAR(60) NOT NULL DEFAULT '',
  `mes2` VARCHAR(120) NOT NULL DEFAULT '',
  `emblem_len` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `emblem_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `emblem_data` blob,
  PRIMARY KEY (`guild_id`,`char_id`),
  UNIQUE KEY `guild_id` (`guild_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `guild_alliance`
--

CREATE TABLE IF NOT EXISTS `guild_alliance` (
  `guild_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `opposition` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `alliance_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`alliance_id`),
  KEY `alliance_id` (`alliance_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `guild_castle`
--

CREATE TABLE IF NOT EXISTS `guild_castle` (
  `castle_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `guild_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `economy` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `defense` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `triggerE` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `triggerD` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `nextTime` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `payTime` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `createTime` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleC` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG0` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG1` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG2` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG3` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG4` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG5` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG6` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG7` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`castle_id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `guild_expulsion`
--

CREATE TABLE IF NOT EXISTS `guild_expulsion` (
  `guild_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `mes` VARCHAR(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`name`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `guild_member`
--

CREATE TABLE IF NOT EXISTS `guild_member` (
  `guild_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `hair` TINYINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `hair_color` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `gender` TINYINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `class` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `lv` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `exp` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `exp_payper` TINYINT(11) UNSIGNED NOT NULL DEFAULT '0',
  `online` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `position` TINYINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`char_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `guild_position`
--

CREATE TABLE IF NOT EXISTS `guild_position` (
  `guild_id` INT(9) UNSIGNED NOT NULL DEFAULT '0',
  `position` TINYINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `mode` TINYINT(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_mode` TINYINT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`position`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `guild_skill`
--

CREATE TABLE IF NOT EXISTS `guild_skill` (
  `guild_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `id` SMALLINT(11) UNSIGNED NOT NULL DEFAULT '0',
  `lv` TINYINT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `guild_storage`
--

CREATE TABLE IF NOT EXISTS `guild_storage` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `guild_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `equip` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `identify` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `refine` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `card0` SMALLINT(11) NOT NULL DEFAULT '0',
  `card1` SMALLINT(11) NOT NULL DEFAULT '0',
  `card2` SMALLINT(11) NOT NULL DEFAULT '0',
  `card3` SMALLINT(11) NOT NULL DEFAULT '0',
  `expire_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `bound` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `homunculus`
--

CREATE TABLE IF NOT EXISTS `homunculus` (
  `homun_id` INT(11) NOT NULL AUTO_INCREMENT,
  `char_id` INT(11) NOT NULL,
  `class` MEDIUMINT(9) UNSIGNED NOT NULL DEFAULT '0',
  `prev_class` MEDIUMINT(9) NOT NULL DEFAULT '0',
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `level` SMALLINT(4) NOT NULL DEFAULT '0',
  `exp` INT(12) NOT NULL DEFAULT '0',
  `intimacy` INT(12) NOT NULL DEFAULT '0',
  `hunger` SMALLINT(4) NOT NULL DEFAULT '0',
  `str` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `agi` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `vit` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `INT` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `dex` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `luk` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `hp` INT(12) NOT NULL DEFAULT '1',
  `max_hp` INT(12) NOT NULL DEFAULT '1',
  `sp` INT(12) NOT NULL DEFAULT '1',
  `max_sp` INT(12) NOT NULL DEFAULT '1',
  `skill_point` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `alive` TINYINT(2) NOT NULL DEFAULT '1',
  `rename_flag` TINYINT(2) NOT NULL DEFAULT '0',
  `vaporize` TINYINT(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`homun_id`)
) ENGINE=MyISAM;

-- 
-- Estrutura da tabela `interlog`
--

CREATE TABLE IF NOT EXISTS `interlog` (
  `time` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00',
  `log` VARCHAR(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM; 

--
-- Estrutura da tabela `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `equip` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `identify` SMALLINT(6) NOT NULL DEFAULT '0',
  `refine` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `card0` SMALLINT(11) NOT NULL DEFAULT '0',
  `card1` SMALLINT(11) NOT NULL DEFAULT '0',
  `card2` SMALLINT(11) NOT NULL DEFAULT '0',
  `card3` SMALLINT(11) NOT NULL DEFAULT '0',
  `expire_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `favorite` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `bound` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `ipbanlist`
--

CREATE TABLE IF NOT EXISTS `ipbanlist` (
  `list` VARCHAR(255) NOT NULL DEFAULT '',
  `btime` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00',
  `rtime` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00',
  `reason` VARCHAR(255) NOT NULL DEFAULT '',
  KEY (`list`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `macban_list`
--

CREATE TABLE IF NOT EXISTS `macban_list` (

  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `mac_address` VARCHAR(18) NOT NULL,
  `ban_tick` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `unban_tick` INT(11) UNSIGNED NOT NULL DEFAULT 0,
  `reason` VARCHAR(255) NOT NULL DEFAULT '',
  `banned` BOOLEAN NOT NULL DEFAULT true,

  INDEX (`mac_address`, `unban_tick`, `banned`)

) ENGINE=MyISAM;

-- 
-- Estrutura da tabela `macban_log`
-- 
CREATE TABLE IF NOT EXISTS `macban_log` (

  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `mac_address` VARCHAR(18) NOT NULL,
  `log_date` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00',
  `log_type` TINYINT(1) NOT NULL DEFAULT 0,
  `log_reason` VARCHAR(255) NOT NULL DEFAULT '',

  INDEX (`mac_address`, `log_date`)

) ENGINE=MyISAM;

--
-- Estrutura da tabela `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `account_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` VARCHAR(23) NOT NULL DEFAULT '',
  `user_pass` VARCHAR(32) NOT NULL DEFAULT '',
  `sex` ENUM('M','F','S') NOT NULL DEFAULT 'M',
  `email` VARCHAR(39) NOT NULL DEFAULT '',
  `group_id` TINYINT(3) NOT NULL DEFAULT '0',
  `state` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `unban_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `expiration_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `logincount` MEDIUMINT(9) UNSIGNED NOT NULL DEFAULT '0',
  `lastlogin` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00',
  `last_ip` VARCHAR(100) NOT NULL DEFAULT '',
  `mac_address` VARCHAR(18) NOT NULL DEFAULT '',
  `birthdate` DATE NOT NULL DEFAULT '1970-01-01',
  `character_slots` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `pincode` VARCHAR(4) NOT NULL DEFAULT '',
  `pincode_change` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_password_change` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`),
  KEY `name` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2000000; 

-- added standard accounts for servers, VERY INSECURE!!!
-- inserted into the table called login which is above

INSERT IGNORE INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('1', 's1', 'p1', 'S','brathena@brathena.org');

DELIMITER ;;

DROP TRIGGER IF EXISTS `login_insert`;;
CREATE TRIGGER `login_insert` BEFORE INSERT ON `login`
FOR EACH ROW
BEGIN

  IF NEW.sex <> 'S' AND NEW.last_password_change = 0 THEN
    SET NEW.last_password_change = UNIX_TIMESTAMP();
  END IF;

END;;

DROP TRIGGER IF EXISTS `login_update`;;
CREATE TRIGGER `login_update` BEFORE UPDATE ON `login`
FOR EACH ROW
BEGIN

  IF OLD.sex <> 'S' AND MD5(OLD.user_pass) <> MD5(NEW.user_pass) THEN
    SET NEW.last_password_change = UNIX_TIMESTAMP();
  END IF;

END;;

DELIMITER ;

--
-- Estrutura da tabela `mapreg`
--

CREATE TABLE IF NOT EXISTS `mapreg` (
  `varname` VARCHAR(32) BINARY NOT NULL,
  `index` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`varname`,`index`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `npc_market_data`
--

CREATE TABLE IF NOT EXISTS `npc_market_data` (
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `itemid` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`,`itemid`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `sc_data`
--

CREATE TABLE IF NOT EXISTS `sc_data` (
  `account_id` INT(11) UNSIGNED NOT NULL,
  `char_id` INT(11) UNSIGNED NOT NULL,
  `type` SMALLINT(11) UNSIGNED NOT NULL,
  `tick` INT(11) NOT NULL,
  `val1` INT(11) NOT NULL DEFAULT '0',
  `val2` INT(11) NOT NULL DEFAULT '0',
  `val3` INT(11) NOT NULL DEFAULT '0',
  `val4` INT(11) NOT NULL DEFAULT '0',
  KEY (`account_id`),
  KEY (`char_id`),
  PRIMARY KEY (`account_id`,`char_id`,`type`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `mail`
--

CREATE TABLE IF NOT EXISTS `mail` (
  `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_name` VARCHAR(30) NOT NULL DEFAULT '',
  `send_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `dest_name` VARCHAR(30) NOT NULL DEFAULT '',
  `dest_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `title` VARCHAR(45) NOT NULL DEFAULT '',
  `message` VARCHAR(255) NOT NULL DEFAULT '',
  `time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` TINYINT(2) NOT NULL DEFAULT '0',
  `zeny` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `refine` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `identify` SMALLINT(6) NOT NULL DEFAULT '0',
  `card0` SMALLINT(11) NOT NULL DEFAULT '0',
  `card1` SMALLINT(11) NOT NULL DEFAULT '0',
  `card2` SMALLINT(11) NOT NULL DEFAULT '0',
  `card3` SMALLINT(11) NOT NULL DEFAULT '0',
  `unique_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `memo`
--

CREATE TABLE IF NOT EXISTS `memo` (
  `memo_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `map` VARCHAR(11) NOT NULL DEFAULT '',
  `x` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `y` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`memo_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `mercenary`
--

CREATE TABLE IF NOT EXISTS `mercenary` (
  `mer_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `char_id` INT(11) NOT NULL,
  `class` MEDIUMINT(9) UNSIGNED NOT NULL DEFAULT '0',
  `hp` INT(12) NOT NULL DEFAULT '1',
  `sp` INT(12) NOT NULL DEFAULT '1',
  `kill_counter` INT(11) NOT NULL,
  `life_time` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mer_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `mercenary_owner`
--

CREATE TABLE IF NOT EXISTS `mercenary_owner` (
  `char_id` INT(11) NOT NULL,
  `merc_id` INT(11) NOT NULL DEFAULT '0',
  `arch_calls` INT(11) NOT NULL DEFAULT '0',
  `arch_faith` INT(11) NOT NULL DEFAULT '0',
  `spear_calls` INT(11) NOT NULL DEFAULT '0',
  `spear_faith` INT(11) NOT NULL DEFAULT '0',
  `sword_calls` INT(11) NOT NULL DEFAULT '0',
  `sword_faith` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `party`
--

CREATE TABLE IF NOT EXISTS `party` (
  `party_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `exp` TINYINT(11) UNSIGNED NOT NULL DEFAULT '0',
  `item` TINYINT(11) UNSIGNED NOT NULL DEFAULT '0',
  `leader_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `leader_char` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`party_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `pet`
--

CREATE TABLE IF NOT EXISTS `pet` (
  `pet_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `class` MEDIUMINT(9) UNSIGNED NOT NULL DEFAULT '0',
  `name` VARCHAR(24) NOT NULL DEFAULT '',
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `level` SMALLINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `egg_id` SMALLINT(11) UNSIGNED NOT NULL DEFAULT '0',
  `equip` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `intimate` SMALLINT(9) UNSIGNED NOT NULL DEFAULT '0',
  `hungry` SMALLINT(9) UNSIGNED NOT NULL DEFAULT '0',
  `rename_flag` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `incubate` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`pet_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `quest`
--

CREATE TABLE IF NOT EXISTS `quest` (
  `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `quest_id` INT(10) UNSIGNED NOT NULL,
  `state` ENUM('0','1','2') NOT NULL DEFAULT '0',
  `time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `count1` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `count2` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  `count3` MEDIUMINT(8) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`quest_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `ragsrvinfo`
--

CREATE TABLE IF NOT EXISTS `ragsrvinfo` (
  `index` INT(11) NOT NULL DEFAULT '0',
  `name` VARCHAR(255) NOT NULL DEFAULT '',
  `exp` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `jexp` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `drop` INT(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM;

--
-- Estrutura da tabela `skill`
--

CREATE TABLE IF NOT EXISTS `skill` (
  `char_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `id` SMALLINT(11) UNSIGNED NOT NULL DEFAULT '0',
  `lv` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `flag` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `skill_homunculus`
--

CREATE TABLE IF NOT EXISTS `skill_homunculus` (
  `homun_id` INT(11) NOT NULL,
  `id` INT(11) NOT NULL,
  `lv` SMALLINT(6) NOT NULL,
  PRIMARY KEY (`homun_id`,`id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `sql_updates`
--

CREATE TABLE IF NOT EXISTS `sql_updates` (
  `timestamp` INT(11) UNSIGNED NOT NULL,
  `ignored` ENUM('Yes','No') NOT NULL DEFAULT 'No',
  PRIMARY KEY (`timestamp`)
) ENGINE=MyISAM;

INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1443394980);
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1440688342);
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1445742780);
INSERT IGNORE INTO `sql_updates` (`timestamp`) VALUES (1459870423);

--
-- Estrutura da tabela `storage`
--

CREATE TABLE IF NOT EXISTS `storage` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` SMALLINT(11) UNSIGNED NOT NULL DEFAULT '0',
  `equip` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `identify` SMALLINT(6) UNSIGNED NOT NULL DEFAULT '0',
  `refine` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` TINYINT(4) UNSIGNED NOT NULL DEFAULT '0',
  `card0` SMALLINT(11) NOT NULL DEFAULT '0',
  `card1` SMALLINT(11) NOT NULL DEFAULT '0',
  `card2` SMALLINT(11) NOT NULL DEFAULT '0',
  `card3` SMALLINT(11) NOT NULL DEFAULT '0',
  `expire_time` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `bound` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM;

--
-- Estrutura da tabela `updatecharlog` [Megasantos]
--

CREATE TABLE IF NOT EXISTS `updatecharlog` (
  `gid` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `charname_old` VARCHAR(24) NOT NULL DEFAULT '',
  `charname_new` VARCHAR(24) NOT NULL DEFAULT '',
  `gdid` INT(11) UNSIGNED NOT NULL DEFAULT '0',
  `position` TINYINT NOT NULL DEFAULT '0',
  `regdate` DATETIME NOT NULL DEFAULT '1970-01-01 00:00:00'
) ENGINE=MyISAM;
