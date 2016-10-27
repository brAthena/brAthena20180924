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

