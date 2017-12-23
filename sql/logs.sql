--  _________________________________________________________________________
-- |                                                                         |
-- |                       brAthena © 2016 - Banco de Dados                  |
-- |             Contém as tabelas de logs para ações no emulador            |
-- |_________________________________________________________________________|
--

--
-- Estrutura da tabela `atcommandlog`
--

CREATE TABLE IF NOT EXISTS `atcommandlog` (
  `atcommand_id` mediumint(9) unsigned NOT NULL,
  `atcommand_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT '',
  `command` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `branchlog`
--

CREATE TABLE IF NOT EXISTS `branchlog` (
  `branch_id` mediumint(9) unsigned NOT NULL,
  `branch_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `char_id` int(11) NOT NULL DEFAULT '0',
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `buyingstore_log`
--

CREATE TABLE IF NOT EXISTS `buyingstore_log` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `Mapname` varchar(24) NOT NULL DEFAULT '',
  `Shop_Name` varchar(23) NOT NULL DEFAULT '',
  `Buyer_CharID` int(11) NOT NULL DEFAULT '0',
  `Buyer_Name` varchar(23) NOT NULL DEFAULT '',
  `Buyer_IP` varchar(20) NOT NULL DEFAULT '',
  `Buyer_PosX` smallint(4) NOT NULL DEFAULT '0',
  `Buyer_PosY` smallint(4) NOT NULL DEFAULT '0',
  `Vendor_CharID` int(11) NOT NULL DEFAULT '0',
  `Vendor_Name` varchar(23) NOT NULL DEFAULT '',
  `Vendor_IP` varchar(20) NOT NULL DEFAULT '',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `Amount` int(11) unsigned NOT NULL DEFAULT '0',
  `Unit_Cost` int(11) NOT NULL DEFAULT '0',
  `Total_Cost` int(11) NOT NULL DEFAULT '0',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ItemSlot1` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot2` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot3` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot4` smallint(11) NOT NULL DEFAULT '0',
  `ItemRefiningLevel` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `card_log`
--

CREATE TABLE IF NOT EXISTS `card_log` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `Mapname` varchar(24) NOT NULL DEFAULT '',
  `PosX` smallint(4) NOT NULL DEFAULT '0',
  `PosY` smallint(4) NOT NULL DEFAULT '0',
  `AccountID` int(11) NOT NULL DEFAULT '0',
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `CharName` varchar(23) NOT NULL DEFAULT '',
  `CharacterIPaddr` varchar(20) NOT NULL DEFAULT '',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Type` enum('Insert','Removed','Removed_Fail') NOT NULL DEFAULT 'Insert',
  `Slot` smallint(1) NOT NULL DEFAULT '0',
  `Card_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `CardName` varchar(24) NOT NULL DEFAULT '',
  `ItemSlot1` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot2` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot3` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot4` smallint(11) NOT NULL DEFAULT '0',
  `ItemRefiningLevel` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `cashitemshop`
--

CREATE TABLE IF NOT EXISTS `cashitemshop` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `Mapname` varchar(24) NOT NULL DEFAULT '',
  `AccountID` int(11) NOT NULL DEFAULT '0',
  `AccountName` varchar(23) NOT NULL DEFAULT '',
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `CharacterIPaddr` varchar(20) NOT NULL DEFAULT '',
  `Type` enum('Botão de Cash','NPC') NOT NULL DEFAULT 'Botão de Cash',
  `PosX` smallint(4) NOT NULL DEFAULT '0',
  `PosY` smallint(4) NOT NULL DEFAULT '0',
  `NpcName` varchar(51) NOT NULL DEFAULT '',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `ItemCount` int(11) NOT NULL DEFAULT '0',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ItemSlot1` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot2` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot3` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot4` smallint(11) NOT NULL DEFAULT '0',
  `ItemRefiningLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Cash_Price` int(11) unsigned NOT NULL DEFAULT '0',
  `Cash_View` int(11) unsigned NOT NULL DEFAULT '0',
  `Cash_Before` int(11) unsigned NOT NULL DEFAULT '0',
  `Cash_After` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `chatlog`
--

CREATE TABLE IF NOT EXISTS `chatlog` (
  `id` bigint(20) NOT NULL,
  `time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `type` enum('O','W','P','G','M') NOT NULL DEFAULT 'O',
  `type_id` int(11) NOT NULL DEFAULT '0',
  `src_charid` int(11) NOT NULL DEFAULT '0',
  `src_accountid` int(11) NOT NULL DEFAULT '0',
  `src_map` varchar(11) NOT NULL DEFAULT '',
  `src_map_x` smallint(4) NOT NULL DEFAULT '0',
  `src_map_y` smallint(4) NOT NULL DEFAULT '0',
  `dst_charname` varchar(25) NOT NULL DEFAULT '',
  `message` varchar(150) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `guild_storage_log`
--

CREATE TABLE IF NOT EXISTS `guild_storage_log` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `Type_` enum('D','W') NOT NULL DEFAULT 'D',
  `Mapname` varchar(24) NOT NULL DEFAULT '',
  `PosX` smallint(4) NOT NULL DEFAULT '0',
  `PosY` smallint(4) NOT NULL DEFAULT '0',
  `GuildID` int(11) NOT NULL DEFAULT '0',
  `GuildName` varchar(24) NOT NULL DEFAULT '',
  `AccountID` int(11) NOT NULL DEFAULT '0',
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `CharName` varchar(23) NOT NULL DEFAULT '',
  `CharacterIPaddr` varchar(20) NOT NULL DEFAULT '',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Amount` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemSlot1` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot2` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot3` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot4` smallint(11) NOT NULL DEFAULT '0',
  `ItemRefiningLevel` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `itemconsume_log`
--

CREATE TABLE IF NOT EXISTS `itemconsume_log` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `Mapname` varchar(24) NOT NULL DEFAULT '',
  `PosX` smallint(4) NOT NULL DEFAULT '0',
  `PosY` smallint(4) NOT NULL DEFAULT '0',
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `CharName` varchar(23) NOT NULL DEFAULT '',
  `CharacterIPaddr` varchar(20) NOT NULL DEFAULT '',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Amount` int(11) unsigned NOT NULL DEFAULT '0',
  `Type_` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `itemproduce_log`
--

CREATE TABLE IF NOT EXISTS `itemproduce_log` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `Mapname` varchar(24) NOT NULL DEFAULT '',
  `PosX` smallint(4) NOT NULL DEFAULT '0',
  `PosY` smallint(4) NOT NULL DEFAULT '0',
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `CharName` varchar(23) NOT NULL DEFAULT '',
  `CharacterIPaddr` varchar(20) NOT NULL DEFAULT '',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Amount` INT(11) NOT NULL DEFAULT '0',
  `Type_` enum('Falha ao refinar','Item para refinar','Item para criar','Falha ao criar','Sucesso ao criar','Cozinhar','Flecha criada','Ele.Analysis','Sucesso ao refinar','Downgrade') NOT NULL DEFAULT 'Item para criar'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `item_get_removelog`
--

CREATE TABLE IF NOT EXISTS `item_get_removelog` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `Type_` enum('Get','Del') NOT NULL DEFAULT 'Get',
  `Source` enum('Script','Cmd','Mail','Box','Egg','C_Rem','Expired','Divorce') NOT NULL DEFAULT 'Script',
  `Mapname` varchar(24) NOT NULL DEFAULT '',
  `PosX` smallint(4) NOT NULL DEFAULT '0',
  `PosY` smallint(4) NOT NULL DEFAULT '0',
  `AccountID` int(11) unsigned NOT NULL DEFAULT '0',
  `CharID` int(11) unsigned NOT NULL DEFAULT '0',
  `CharName` varchar(30) NOT NULL DEFAULT '',
  `CharIP` varchar(20) NOT NULL DEFAULT '',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `Amount` int(11) NOT NULL DEFAULT '0',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ItemSlot1` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot2` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot3` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot4` smallint(11) NOT NULL DEFAULT '0',
  `ItemRefiningLevel` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `loginlog`
--

CREATE TABLE IF NOT EXISTS `loginlog` (
  `time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user` varchar(23) NOT NULL DEFAULT '',
  `rcode` tinyint(4) NOT NULL DEFAULT '0',
  `log` varchar(255) NOT NULL DEFAULT '',
  `mac_address` VARCHAR(18) NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `mail_log`
--

CREATE TABLE IF NOT EXISTS `mail_log` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `SenderID` int(11) NOT NULL DEFAULT '0',
  `SenderName` varchar(23) NOT NULL DEFAULT '',
  `DestID` int(11) NOT NULL DEFAULT '0',
  `DestName` varchar(23) NOT NULL DEFAULT '',
  `Zeny` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Amount` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemSlot1` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot2` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot3` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot4` smallint(11) NOT NULL DEFAULT '0',
  `ItemRefiningLevel` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `npclog`
--

CREATE TABLE IF NOT EXISTS `npclog` (
  `npc_id` mediumint(9) unsigned NOT NULL,
  `npc_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT '',
  `mes` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `npcshop_log`
--

CREATE TABLE IF NOT EXISTS `npcshop_log` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `Mapname` varchar(24) NOT NULL DEFAULT '',
  `NPC_Name` varchar(23) NOT NULL DEFAULT '',
  `Player_CharID` int(11) NOT NULL DEFAULT '0',
  `Player_Name` varchar(23) NOT NULL DEFAULT '',
  `Player_IP` varchar(20) NOT NULL DEFAULT '',
  `Player_PosX` smallint(4) NOT NULL DEFAULT '0',
  `Player_PosY` smallint(4) NOT NULL DEFAULT '0',
  `Player_Action` enum('Compra','Venda') NOT NULL DEFAULT 'Compra',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `Amount` int(11) unsigned NOT NULL DEFAULT '0',
  `Unit_Cost` int(11) NOT NULL DEFAULT '0',
  `Total_Cost` int(11) NOT NULL DEFAULT '0',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Slots` tinyint(3) NOT NULL DEFAULT '0',
  `ItemRefiningLevel` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `pickdrop_log`
--

CREATE TABLE IF NOT EXISTS `pickdrop_log` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `Action` enum('Pick','Drop','Loot','MvP Award','Party Pick','Steal') NOT NULL DEFAULT 'Pick',
  `Mapname` varchar(24) NOT NULL DEFAULT '',
  `PosX` smallint(4) NOT NULL DEFAULT '0',
  `PosY` smallint(4) NOT NULL DEFAULT '0',
  `Subject` varchar(24) NOT NULL DEFAULT '',
  `Name` varchar(30) NOT NULL DEFAULT '',
  `AccountID` int(11) unsigned NOT NULL DEFAULT '0',
  `CharID` int(11) unsigned NOT NULL DEFAULT '0',
  `IP` varchar(20) NOT NULL DEFAULT '',
  `Source` enum('Player','Monster') NOT NULL DEFAULT 'Player',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `Amount` int(11) NOT NULL DEFAULT '0',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ItemSlot1` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot2` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot3` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot4` smallint(11) NOT NULL DEFAULT '0',
  `ItemRefiningLevel` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `storage_log`
--

CREATE TABLE IF NOT EXISTS `storage_log` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `Type_` enum('D','W') NOT NULL DEFAULT 'D',
  `Mapname` varchar(24) NOT NULL DEFAULT '',
  `PosX` smallint(4) NOT NULL DEFAULT '0',
  `PosY` smallint(4) NOT NULL DEFAULT '0',
  `AccountID` int(11) NOT NULL DEFAULT '0',
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `CharName` varchar(23) NOT NULL DEFAULT '',
  `CharacterIPaddr` varchar(20) NOT NULL DEFAULT '',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Amount` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemSlot1` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot2` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot3` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot4` smallint(11) NOT NULL DEFAULT '0',
  `ItemRefiningLevel` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `trade_log`
--

CREATE TABLE IF NOT EXISTS `trade_log` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `Mapname` varchar(24) NOT NULL DEFAULT '',
  `P1_CharID` int(11) NOT NULL DEFAULT '0',
  `P1_Name` varchar(23) NOT NULL DEFAULT '',
  `P1_PosX` smallint(4) NOT NULL DEFAULT '0',
  `P1_PosY` smallint(4) NOT NULL DEFAULT '0',
  `P1_IP` varchar(20) NOT NULL DEFAULT '',
  `P2_CharID` int(11) NOT NULL DEFAULT '0',
  `P2_Name` varchar(23) NOT NULL DEFAULT '',
  `P2_PosX` smallint(4) NOT NULL DEFAULT '0',
  `P2_PosY` smallint(4) NOT NULL DEFAULT '0',
  `P2_IP` varchar(20) NOT NULL DEFAULT '',
  `Zeny` int(11) NOT NULL DEFAULT '0',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemCount` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ItemSlot1` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot2` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot3` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot4` smallint(11) NOT NULL DEFAULT '0',
  `ItemRefiningLevel` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `vending_log`
--

CREATE TABLE IF NOT EXISTS `vending_log` (
  `Index` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `Mapname` varchar(24) NOT NULL DEFAULT '',
  `Shop_Name` varchar(23) NOT NULL DEFAULT '',
  `Buyer_CharID` int(11) NOT NULL DEFAULT '0',
  `Buyer_Name` varchar(23) NOT NULL DEFAULT '',
  `Buyer_IP` varchar(20) NOT NULL DEFAULT '',
  `Vendor_CharID` int(11) NOT NULL DEFAULT '0',
  `Vendor_Name` varchar(23) NOT NULL DEFAULT '',
  `Vendor_PosX` smallint(4) NOT NULL DEFAULT '0',
  `Vendor_PosY` smallint(4) NOT NULL DEFAULT '0',
  `Vendor_Status` enum('Online','Autotrade') NOT NULL DEFAULT 'Online',
  `Vendor_IP` varchar(20) NOT NULL DEFAULT '',
  `ItemID` int(11) unsigned NOT NULL DEFAULT '0',
  `ItemName` varchar(50) NOT NULL DEFAULT '',
  `Amount` int(11) NOT NULL DEFAULT '0',
  `Unit_Cost` int(11) NOT NULL DEFAULT '0',
  `Total_Cost` int(11) NOT NULL DEFAULT '0',
  `ItemSerial` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ItemSlot1` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot2` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot3` smallint(11) NOT NULL DEFAULT '0',
  `ItemSlot4` smallint(11) NOT NULL DEFAULT '0',
  `ItemRefiningLevel` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

--
-- Estrutura da tabela `zenylog`
--

CREATE TABLE IF NOT EXISTS `zenylog` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `char_id` int(11) NOT NULL DEFAULT '0',
  `src_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('Auction','Bank','Monster','Script','bStore','Steal','Cmd','Npc','Trade','Mail','Vending','Other') NOT NULL DEFAULT 'Other',
  `amount` int(11) NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atcommandlog`
--
ALTER TABLE `atcommandlog`
  ADD PRIMARY KEY (`atcommand_id`), ADD KEY `account_id` (`account_id`), ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `branchlog`
--
ALTER TABLE `branchlog`
  ADD PRIMARY KEY (`branch_id`), ADD KEY `account_id` (`account_id`), ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `buyingstore_log`
--
ALTER TABLE `buyingstore_log`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `card_log`
--
ALTER TABLE `card_log`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `cashitemshop`
--
ALTER TABLE `cashitemshop`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `chatlog`
--
ALTER TABLE `chatlog`
  ADD PRIMARY KEY (`id`), ADD KEY `src_accountid` (`src_accountid`), ADD KEY `src_charid` (`src_charid`);

--
-- Indexes for table `guild_storage_log`
--
ALTER TABLE `guild_storage_log`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `itemconsume_log`
--
ALTER TABLE `itemconsume_log`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `itemproduce_log`
--
ALTER TABLE `itemproduce_log`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `item_get_removelog`
--
ALTER TABLE `item_get_removelog`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `loginlog`
--
ALTER TABLE `loginlog`
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `mail_log`
--
ALTER TABLE `mail_log`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `npclog`
--
ALTER TABLE `npclog`
  ADD PRIMARY KEY (`npc_id`), ADD KEY `account_id` (`account_id`), ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `npcshop_log`
--
ALTER TABLE `npcshop_log`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `pickdrop_log`
--
ALTER TABLE `pickdrop_log`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `storage_log`
--
ALTER TABLE `storage_log`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `trade_log`
--
ALTER TABLE `trade_log`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `vending_log`
--
ALTER TABLE `vending_log`
  ADD PRIMARY KEY (`Index`);

--
-- Indexes for table `zenylog`
--
ALTER TABLE `zenylog`
  ADD PRIMARY KEY (`id`), ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atcommandlog`
--
ALTER TABLE `atcommandlog`
  MODIFY `atcommand_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `branchlog`
--
ALTER TABLE `branchlog`
  MODIFY `branch_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `buyingstore_log`
--
ALTER TABLE `buyingstore_log`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `card_log`
--
ALTER TABLE `card_log`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cashitemshop`
--
ALTER TABLE `cashitemshop`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chatlog`
--
ALTER TABLE `chatlog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guild_storage_log`
--
ALTER TABLE `guild_storage_log`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `itemconsume_log`
--
ALTER TABLE `itemconsume_log`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `itemproduce_log`
--
ALTER TABLE `itemproduce_log`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_get_removelog`
--
ALTER TABLE `item_get_removelog`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `mail_log`
--
ALTER TABLE `mail_log`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `npclog`
--
ALTER TABLE `npclog`
  MODIFY `npc_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `npcshop_log`
--
ALTER TABLE `npcshop_log`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pickdrop_log`
--
ALTER TABLE `pickdrop_log`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `storage_log`
--
ALTER TABLE `storage_log`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `trade_log`
--
ALTER TABLE `trade_log`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `vending_log`
--
ALTER TABLE `vending_log`
  MODIFY `Index` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=0;
--
-- AUTO_INCREMENT for table `zenylog`
--
ALTER TABLE `zenylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
