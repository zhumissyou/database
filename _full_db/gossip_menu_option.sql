--
-- Copyright (C) 2005-2013 MaNGOS <http://getmangos.com/>
-- Copyright (C) 2009-2013 MaNGOSZero <https://github.com/mangoszero>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gossip_menu_option`
--

DROP TABLE IF EXISTS `gossip_menu_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gossip_menu_option` (
  `menu_id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `option_icon` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_text` text,
  `option_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `npc_option_npcflag` int(10) unsigned NOT NULL DEFAULT '0',
  `action_menu_id` mediumint(8) NOT NULL DEFAULT '0',
  `action_poi_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_script_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `box_coded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `box_money` int(11) unsigned NOT NULL DEFAULT '0',
  `box_text` text,
  `condition_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gossip_menu_option`
--

LOCK TABLES `gossip_menu_option` WRITE;
/*!40000 ALTER TABLE `gossip_menu_option` DISABLE KEYS */;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(0,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(0,1,1,'I want to browse your goods.',3,4,0,0,0,0,0,NULL,0),
(0,2,2,'I need a ride.',4,8,0,0,0,0,0,NULL,0),
(0,3,3,'Train me.',5,16,0,0,0,0,0,NULL,0),
(0,4,4,'Return me to life.',6,32,0,0,0,0,0,NULL,0),
(0,5,4,'GOSSIP_OPTION_SPIRITGUIDE',7,64,0,0,0,0,0,NULL,0),
(0,6,5,'Make this inn my home.',8,128,0,0,0,0,0,NULL,0),
(0,7,6,'I would like to check my deposit box.',9,256,0,0,0,0,0,NULL,0),
(0,8,7,'How do I form a guild?',10,512,0,0,0,0,0,NULL,0),
(0,9,8,'I want to create a guild crest.',11,1024,0,0,0,0,0,NULL,0),
(0,10,9,'I wish to join the battle!',12,2048,0,0,0,0,0,NULL,0),
(0,11,6,'GOSSIP_OPTION_AUCTIONEER',13,4096,0,0,0,0,0,NULL,0),
(0,12,0,'I\'d like to stable my pet here.',14,8192,0,0,0,0,0,NULL,0),
(0,13,1,'GOSSIP_OPTION_ARMORER',15,16384,0,0,0,0,0,NULL,0),
(0,14,0,'I wish to unlearn my talents.',16,16,0,0,0,0,0,NULL,0),
(0,15,2,'I wish to unlearn my pet\'s skills.',17,16,0,0,0,0,0,NULL,0),
(21,1,0,'Can you tell me about this shard?',1,1,20024,0,21,0,0,NULL,513),
(21,0,0,'Than I can help?',1,1,22,0,0,0,0,NULL,0),
(24,0,0,'Tell me a story, Skorn.',1,1,23,0,0,0,0,'',188),
(83,0,4,'Return me to life.',6,32,0,0,0,0,0,'',0),
(125,0,0,'You\'ve got something I need, Astor. And I\'ll be taking it now.',1,1,-1,0,125,0,0,'',0),
(126,0,0,'You\'re Astor Hadren, right?',1,1,125,0,0,0,0,'',0),
(321,0,0,'Please port me to Darnassus.',1,1,0,0,321,0,0,'',0),
(342,0,0,'Trick or Treat!',1,1,0,0,0,0,0,'',0),
(342,2,5,'Make this inn my home.',8,128,0,0,0,0,0,'',0),
(342,3,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0),
(345,2,5,'Make this inn my home.',8,128,0,0,0,0,0,'',0),
(345,3,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0),
(401,0,0,'Druid',1,1,405,32,0,0,0,'',0),
(401,1,0,'Hunter',1,1,408,33,0,0,0,'',0),
(401,2,0,'Mage',1,1,402,34,0,0,0,'',0),
(401,3,0,'Paladin',1,1,407,35,0,0,0,'',0),
(401,4,0,'Priest',1,1,406,35,0,0,0,'',0),
(401,5,0,'Rogue',1,1,403,36,0,0,0,'',0),
(401,7,0,'Warlock',1,1,409,38,0,0,0,'',0),
(401,8,0,'Warrior',1,1,404,39,0,0,0,'',0),
(421,0,0,'Alchemy',1,1,422,40,0,0,0,'',0),
(421,1,0,'Blacksmithing',1,1,423,41,0,0,0,'',0),
(421,2,0,'Cooking',1,1,424,42,0,0,0,'',0),
(421,3,0,'Enchanting',1,1,444,43,0,0,0,'',0),
(421,4,0,'Engineering',1,1,425,44,0,0,0,'',0),
(421,5,0,'First Aid',1,1,426,45,0,0,0,'',0),
(421,6,0,'Fishing',1,1,443,46,0,0,0,'',0),
(421,7,0,'Herbalism',1,1,427,40,0,0,0,'',0),
(421,8,0,'Leatherworking',1,1,428,47,0,0,0,'',0),
(421,9,0,'Mining',1,1,430,48,0,0,0,'',0),
(421,10,0,'Skinning',1,1,431,47,0,0,0,'',0),
(421,11,0,'Tailoring',1,1,432,49,0,0,0,'',0),
(435,0,0,'Auction House',1,1,3102,18,0,0,0,'',0),
(435,1,0,'Bank of Stormwind',1,1,265,19,0,0,0,'',0),
(435,2,0,'Deeprun Tram',1,1,3081,21,0,0,0,'',0),
(435,3,0,'The Inn',1,1,3126,22,0,0,0,'',0),
(435,4,0,'Gryphon Master',1,1,382,23,0,0,0,'',0),
(435,5,0,'Guild Master',1,1,383,24,0,0,0,'',0),
(435,6,0,'Stable Master',1,1,4925,26,0,0,0,'',0),
(435,7,0,'Weapons Trainer',1,1,3721,27,0,0,0,'',0),
(435,8,0,'Officers\' Lounge',1,1,5883,28,0,0,0,'',0),
(435,9,0,'Battlemaster',1,1,8222,29,0,0,0,'',0),
(435,10,0,'Class Trainer',1,1,401,0,0,0,0,'',0),
(435,11,0,'Profession Trainer',1,1,421,0,0,0,0,'',0),
(581,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(593,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(643,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(685,0,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0),
(686,0,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0),
(688,0,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0),
(704,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(704,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(721,0,0,'The Bank',1,1,743,325,0,0,0,'',0),
(721,1,0,'Wind Rider Master',1,1,744,324,0,0,0,'',0),
(721,2,0,'Guild Master',1,1,742,323,0,0,0,'',0),
(721,3,0,'The Inn',1,1,2461,322,0,0,0,'',0),
(721,4,0,'Mailbox',1,1,2462,321,0,0,0,'',0),
(721,5,0,'Auction House',1,1,2463,320,0,0,0,'',0),
(721,6,0,'Weapon Master',1,1,3725,319,0,0,0,'',0),
(721,7,0,'Stable Master',1,1,4904,318,0,0,0,'',0),
(721,8,0,'Battlemaster',1,1,8223,317,0,0,0,'',0),
(721,9,0,'Class Trainer',1,1,740,0,0,0,0,'',0),
(721,10,0,'Profession Trainer',1,1,751,0,0,0,0,'',0),
(740,0,0,'Druid',1,1,745,0,0,0,0,'',0),
(740,1,0,'Hunter',1,1,746,0,0,0,0,'',0),
(740,2,0,'Mage',1,1,747,0,0,0,0,'',0),
(740,3,0,'Priest',1,1,748,0,0,0,0,'',0),
(740,4,0,'Shaman',1,1,749,0,0,0,0,'',0),
(740,5,0,'Warrior',1,1,750,0,0,0,0,'',0),
(751,0,0,'Alchemy',1,1,780,0,0,0,0,'',0),
(751,1,0,'Blacksmithing',1,1,781,0,0,0,0,'',0),
(751,2,0,'Cooking',1,1,782,0,0,0,0,'',0),
(751,3,0,'Enchanting',1,1,783,0,0,0,0,'',0),
(751,4,0,'First Aid',1,1,784,0,0,0,0,'',0),
(751,5,0,'Fishing',1,1,785,0,0,0,0,'',0),
(751,6,0,'Herbalism',1,1,786,0,0,0,0,'',0),
(751,7,0,'Leatherworking',1,1,787,0,0,0,0,'',0),
(751,8,0,'Mining',1,1,788,0,0,0,0,'',0),
(751,9,0,'Skinning',1,1,791,0,0,0,0,'',0),
(751,10,0,'Tailoring',1,1,789,0,0,0,0,'',0),
(922,1,0,'Seen any strange things in the desert lately?',1,1,1423,0,0,0,0,'',0),
(922,0,1,'Yes! I want more of that fabulous Noggenfogger Elixir!',3,128,0,0,0,0,0,'',221),
(1285,0,0,'I wish to hear your tale.',1,1,1287,0,0,0,0,'',222),
(1286,0,0,'Let me think about it, Zamael.',1,1,-1,0,1286,0,0,'',0),
(1287,0,0,'Please continue, Zamael.',1,1,1286,0,0,0,0,'',0),
(1291,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,0),
(1291,1,5,'Make this inn my home.',8,128,0,0,0,0,0,'',0),
(1291,2,0,'What can I do at an inn?',1,1,1221,0,0,0,0,'',0),
(1291,3,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0),
(1291,4,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(1293,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,0),
(1293,1,5,'Make this inn my home.',8,128,0,0,0,0,0,'',0),
(1293,2,0,'What can I do at an inn?',1,1,1221,0,0,0,0,'',0),
(1293,3,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0),
(1296,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,0),
(1296,1,5,'Make this inn my home.',8,128,0,0,0,0,0,'',0),
(1296,2,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0),
(1296,3,0,'What can I do at an inn?',1,1,1221,0,0,0,0,'',0),
(1296,4,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(1297,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,0),
(1297,1,5,'Make this inn my home.',8,128,0,0,0,0,0,'',0),
(1297,2,1,'Let me browse your goods.',3,4,0,0,0,0,0,'',0),
(1297,3,0,'What can I do at an inn?',1,1,1221,0,0,0,0,'',0),
(1321,0,0,'Let me confer with my colleagues.',1,1,1323,0,1321,0,0,'',0),
(1322,0,0,'Continue please.',1,1,1321,0,0,0,0,'',0),
(1323,0,0,'Tell me what drives this vengeance?',1,1,1322,0,0,0,0,'',223),
(1323,2,0,'Kalaran, I have misplaced my torch. I require another.',1,1,-1,0,132302,0,0,'',538),
(1323,3,0,'Kalaran, please enchant the torch.',1,1,0,0,0,0,0,'',0),
(1443,1,0,'You\'re an alchemist?  So am I.  Perhaps you can teach me what you know...',1,1,1442,0,144301,0,0,'',597),
(1443,0,0,'You can cook?  So can I!  Is there a recipe you can teach me?',1,1,1501,0,144300,0,0,'',539),
(1482,0,0,'Tell me more about these hippogryphs.',1,1,0,0,0,0,0,'',0),
(1482,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(1561,0,0,'I am ready, Historian Archesonus.',1,1,1565,0,0,0,0,'',122),
(1562,0,0,'Unbelievable! How dare they??',1,1,1563,0,0,0,0,'',0),
(1563,0,0,'Of course I will help!',1,1,-1,0,1563,0,0,'',0),
(1564,0,0,'Interesting, continue please.',1,1,1562,0,0,0,0,'',0),
(1565,0,0,'That is tragic. How did this happen?',1,1,1564,0,0,0,0,'',0),
(1581,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,0),
(1581,2,5,'Make this inn my home.',8,128,0,0,0,0,0,'',0),
(1581,3,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0),
(1623,0,6,'I would like to check my deposit box.',9,256,0,0,0,0,0,'',0),
(1623,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(1624,0,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0),
(1721,0,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0),
(1781,0,1,'I\'d like to see what you have to sell.',3,4,0,0,0,0,0,'',0),
(1802,0,1,'Buy somethin\', will ya?',3,128,0,0,0,0,0,NULL,157),
(1942,0,0,'Alchemy',1,1,1845,427,0,0,0,'',0),
(1942,1,0,'Blacksmithing',1,1,1846,428,0,0,0,'',0),
(1942,2,0,'Cooking',1,1,1861,429,0,0,0,'',0),
(1942,3,0,'Enchanting',1,1,1862,430,0,0,0,'',0),
(1942,4,0,'Engineering',1,1,1981,431,0,0,0,'',0),
(1942,5,0,'First Aid',1,1,1863,432,0,0,0,'',0),
(1942,6,0,'Fishing',1,1,1864,433,0,0,0,'',0),
(1942,7,0,'Herbalism',1,1,1865,434,0,0,0,'',0),
(1942,8,0,'Leatherworking',1,1,1866,436,0,0,0,'',0),
(1942,9,0,'Mining',1,1,1868,435,0,0,0,'',0),
(1942,10,0,'Skinning',1,1,1869,436,0,0,0,'',0),
(1942,11,0,'Tailoring',1,1,1871,437,0,0,0,'',0),
(1949,0,0,'Hunter',1,1,1906,420,0,0,0,'',0),
(1949,1,0,'Mage',1,1,1907,421,0,0,0,'',0),
(1949,2,0,'Priest',1,1,1908,422,0,0,0,'',0),
(1949,3,0,'Shaman',1,1,1909,423,0,0,0,'',0),
(1949,4,0,'Rogue',1,1,1910,424,0,0,0,'',0),
(1949,5,0,'Warlock',1,1,1911,425,0,0,0,'',0),
(1949,6,0,'Warrior',1,1,1912,426,0,0,0,'',0),
(1951,0,0,'The Bank',1,1,1901,176,0,0,0,'',0),
(1951,1,0,'Wind Rider Master',1,1,1902,177,0,0,0,'',0),
(1951,2,0,'Guild Master',1,1,1903,178,0,0,0,'',0),
(1951,3,0,'The Inn',1,1,1904,179,0,0,0,'',0),
(1951,4,0,'Mailbox',1,1,1905,180,0,0,0,'',0),
(1951,5,0,'Auction House',1,1,2403,181,0,0,0,'',0),
(1951,6,0,'Weapon Master',1,1,3724,184,0,0,0,'',0),
(1951,7,0,'Stable Master',1,1,4902,185,0,0,0,'',0),
(1951,8,0,'The officers\' lounge',1,1,5882,186,0,0,0,'',0),
(1951,9,0,'Battlemaster',1,1,8224,187,0,0,0,'',0),
(1951,10,0,'Class Trainer',1,1,1949,0,0,0,0,'',0),
(1951,11,0,'Profession Trainer',1,1,1942,0,0,0,0,'',0),
(1969,0,0,'Where is the zeppelin now?',1,1,0,0,0,0,0,'',0),
(1971,0,0,'Where is the zeppelin now?',1,1,0,0,0,0,0,'',0),
(2101,0,0,'Where is the zeppelin now?',1,1,0,0,0,0,0,'',0),
(2121,0,0,'Auction House',1,1,2321,50,0,0,0,'',0),
(2121,1,0,'Bank of Ironforge',1,1,2141,51,0,0,0,'',0),
(2121,2,0,'Deeprun Tram',1,1,3082,52,0,0,0,'',0),
(2121,3,0,'Gryphon Master',1,1,2142,53,0,0,0,'',0),
(2121,4,0,'Guild Master',1,1,2143,54,0,0,0,'',0),
(2121,5,0,'The Inn',1,1,2145,55,0,0,0,'',0),
(2121,6,0,'Mailbox',1,1,2146,56,0,0,0,'',0),
(2121,7,0,'Stable Master',1,1,4927,57,0,0,0,'',0),
(2121,8,0,'Weapons Trainer',1,1,3723,58,0,0,0,'',0),
(2121,9,0,'Battlemaster',1,1,8220,59,0,0,0,'',0),
(2121,10,0,'Class Trainer',1,1,2144,0,0,0,0,'',0),
(2121,11,0,'Profession Trainer',1,1,2168,0,0,0,0,'',0),
(2144,0,0,'Hunter',1,1,2147,61,0,0,0,'',0),
(2144,1,0,'Mage',1,1,2148,62,0,0,0,'',0),
(2144,2,0,'Paladin',1,1,2150,62,0,0,0,'',0),
(2144,3,0,'Priest',1,1,2149,62,0,0,0,'',0),
(2144,4,0,'Rogue',1,1,2151,63,0,0,0,'',0),
(2144,5,0,'Warlock',1,1,2152,64,0,0,0,'',0),
(2144,6,0,'Warrior',1,1,2153,61,0,0,0,'',0),
(2168,0,0,'Alchemy',1,1,2161,66,0,0,0,'',0),
(2168,1,0,'Blacksmithing',1,1,2162,67,0,0,0,'',0),
(2168,2,0,'Cooking',1,1,2163,68,0,0,0,'',0),
(2168,3,0,'Enchanting',1,1,2164,69,0,0,0,'',0),
(2168,4,0,'Engineering',1,1,2165,419,0,0,0,'',0),
(2168,5,0,'First Aid',1,1,2166,70,0,0,0,'',0),
(2168,6,0,'Fishing',1,1,2167,71,0,0,0,'',0),
(2168,7,0,'Herbalism',1,1,2169,70,0,0,0,'',0),
(2168,8,0,'Leatherworking',1,1,2170,73,0,0,0,'',0),
(2168,9,0,'Mining',1,1,2172,74,0,0,0,'',0),
(2168,10,0,'Skinning',1,1,2173,73,0,0,0,'',0),
(2168,11,0,'Tailoring',1,1,2175,75,0,0,0,'',0),
(2177,0,0,'I want to examine this pylon.',1,1,2181,0,2177,0,0,'',316),
(2178,0,0,'I want to examine this pylon.',1,1,2180,0,2178,0,0,'',317),
(2179,0,0,'I want to examine this pylon.',1,1,2182,0,2179,0,0,'',318),
(2208,1,0,'What plants are in Felwood that might be corrupted?',1,1,0,0,0,0,0,'',0),
(2208,0,0,'I need a Cenarion beacon.',1,1,-1,0,2208,0,0,'',540),
(2343,0,0,'Druid',1,1,2328,98,0,0,0,'',0),
(2343,1,0,'Hunter',1,1,2327,99,0,0,0,'',0),
(2343,2,0,'Priest',1,1,2329,364,0,0,0,'',0),
(2343,3,0,'Rogue',1,1,2341,100,0,0,0,'',0),
(2343,4,0,'Warrior',1,1,2342,101,0,0,0,'',0),
(2351,0,0,'Alchemy',1,1,2344,102,0,0,0,'',0),
(2351,1,0,'Cooking',1,1,2345,103,0,0,0,'',0),
(2351,2,0,'Enchanting',1,1,2347,104,0,0,0,'',0),
(2351,3,0,'First Aid',1,1,2348,105,0,0,0,'',0),
(2351,4,0,'Fishing',1,1,2349,106,0,0,0,'',0),
(2351,5,0,'Herbalism',1,1,2350,440,0,0,0,'',0),
(2351,6,0,'Leatherworking',1,1,2354,108,0,0,0,'',0),
(2351,7,0,'Skinning',1,1,2356,109,0,0,0,'',0),
(2351,8,0,'Tailoring',1,1,2358,110,0,0,0,'',0),
(2352,0,0,'Auction House',1,1,0,0,0,0,0,'',0),
(2352,1,0,'The Bank',1,1,2322,0,0,0,0,'',0),
(2352,2,0,'Hippogryph Master',1,1,0,0,0,0,0,'',0),
(2352,3,0,'Guild Master',1,1,0,0,0,0,0,'',0),
(2352,4,0,'The Inn',1,1,0,0,0,0,0,'',0),
(2352,5,0,'Mailbox',1,1,0,0,0,0,0,'',0),
(2352,6,0,'Stable Master',1,1,0,0,0,0,0,'',0),
(2352,7,0,'Weapons Trainer',1,1,0,0,0,0,0,'',0),
(2352,8,0,'Battlemaster',1,1,0,0,0,0,0,'',0),
(2352,9,0,'Class Trainer',1,1,0,0,0,0,0,'',0),
(2352,10,0,'Profession Trainer',1,1,2351,0,0,0,0,'',0),
(2441,0,0,'Where is the zeppelin now?',1,1,0,0,0,0,0,'',0),
(2465,0,0,'Lady Jaina, this may sound like an odd request... but I have a young ward who is quite shy. You are a hero to him, and he asked me to get your autograph.',1,1,5850,0,2465,0,0,'',562),
(2703,0,0,'How do I use the Cache of Mau\'ari?',1,1,-1,0,2703,0,0,'',229),
(2703,1,0,'What is E\'ko?',1,1,0,0,0,0,0,'',0),
(2744,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(2744,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(2847,0,0,'Alchemy',1,1,2834,0,0,0,0,'',0),
(2847,1,0,'Blacksmithing',1,1,2835,0,0,0,0,'',0),
(2847,2,0,'Cooking',1,1,2836,0,0,0,0,'',0),
(2847,3,0,'Enchanting',1,1,2837,0,0,0,0,'',0),
(2847,4,0,'Engineering',1,1,2838,0,0,0,0,'',0),
(2847,5,0,'First Aid',1,1,2839,0,0,0,0,'',0),
(2847,6,0,'Fishing',1,1,2840,0,0,0,0,'',0),
(2847,7,0,'Herbalism',1,1,2841,0,0,0,0,'',0),
(2847,8,0,'Leatherworking',1,1,2842,0,0,0,0,'',0),
(2847,9,0,'Mining',1,1,2843,0,0,0,0,'',0),
(2847,10,0,'Skinning',1,1,2844,0,0,0,0,'',0),
(2847,11,0,'Tailoring',1,1,2845,0,0,0,0,'',0),
(2848,0,0,'Mage',1,1,2821,0,0,0,0,'',0),
(2848,2,0,'Priest',1,1,2829,0,0,0,0,'',0),
(2848,3,0,'Rogue',1,1,2830,0,0,0,0,'',0),
(2848,4,0,'Warlock',1,1,2832,0,0,0,0,'',0),
(2848,5,0,'Warrior',1,1,2833,0,0,0,0,'',0),
(2849,0,0,'The Bank',1,1,2822,0,0,0,0,'',0),
(2849,1,0,'The Bat Handler',1,1,2823,0,0,0,0,'',0),
(2849,2,0,'Guild Master',1,1,2824,0,0,0,0,'',0),
(2849,3,0,'The Inn',1,1,2825,0,0,0,0,'',0),
(2849,4,0,'The Mailbox',1,1,2826,0,0,0,0,'',0),
(2849,5,0,'Auction House',1,1,2827,0,0,0,0,'',0),
(2849,6,0,'The zeppelin master',1,1,2828,0,0,0,0,'',0),
(2849,7,0,'Weapon Master',1,1,3726,0,0,0,0,'',0),
(2849,8,0,'Stable Master',1,1,4906,0,0,0,0,'',0),
(2849,9,0,'Battlemaster',1,1,8225,0,0,0,0,'',0),
(2849,10,0,'Class Trainer',1,1,2848,0,0,0,0,'',0),
(2849,11,0,'Profession Trainer',1,1,2847,0,0,0,0,'',0),
(2890,0,0,'Trick or Treat!',1,1,0,0,0,0,0,NULL,0),
(2890,1,5,'Make this inn my home.',8,128,0,0,0,0,0,'',0),
(2890,2,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(2890,5,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0),
(3062,0,0,'Low spirits',1,1,0,0,0,0,0,NULL,0),
(3062,1,0,'Bad hang nail',1,1,0,0,0,0,0,NULL,0),
(3062,2,0,'Feeling underpowered',1,1,0,0,0,0,0,NULL,0),
(3062,3,0,'Jungle Fever',1,1,0,0,0,0,0,NULL,0),
(3062,4,0,'Uni-brow',1,1,0,0,0,0,0,NULL,0),
(3062,5,0,'Whiplash',1,1,0,0,0,0,0,NULL,0),
(3062,6,0,'I don\'t want to go back to work',1,1,0,0,0,0,0,NULL,0),
(3185,1,1,'I would like to buy from you.',3,4,0,0,0,0,0,NULL,0),
(3185,2,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(3228,4,1,'What does the Writhing Haunt Cauldron need?',1,1,3226,0,0,0,0,NULL,76),
(3228,3,1,'What does the Dalson\'s Tears Cauldron need?',1,1,3225,0,0,0,0,NULL,76),
(3228,2,1,'What does the Felstone Field Cauldron need?',1,1,3224,0,0,0,0,NULL,76),
(3228,1,1,'I wish to purchase arcane quickener from you.',3,128,0,0,0,0,0,NULL,76),
(3228,0,0,'I need a vitreous focuser.',1,1,-1,0,3223,0,0,NULL,621),
(3228,5,1,'What does the Gahrron\'s Withering Cauldron need?',1,1,3227,0,0,0,0,NULL,76),
(3283,0,0,'Hunter',1,1,3261,251,0,0,0,'',0),
(3283,1,0,'Mage',1,1,3262,250,0,0,0,'',0),
(3283,2,0,'Priest',1,1,3263,249,0,0,0,'',0),
(3283,3,0,'Rogue',1,1,3264,248,0,0,0,'',0),
(3283,4,0,'Shaman',1,1,3265,247,0,0,0,'',0),
(3283,5,0,'Warlock',1,1,3266,246,0,0,0,'',0),
(3283,6,0,'Warrior',1,1,3267,245,0,0,0,'',0),
(3284,0,0,'Alchemy',1,1,3268,244,0,0,0,'',0),
(3284,1,0,'Blacksmithing',1,1,3269,243,0,0,0,'',0),
(3284,2,0,'Cooking',1,1,3270,0,0,0,0,'',0),
(3284,3,0,'Enchanting',1,1,3271,0,0,0,0,'',0),
(3284,4,0,'Engineering',1,1,3272,242,0,0,0,'',0),
(3284,5,0,'First Aid',1,1,3273,241,0,0,0,'',0),
(3284,6,0,'Fishing',1,1,3274,240,0,0,0,'',0),
(3284,7,0,'Herbalism',1,1,3275,239,0,0,0,'',0),
(3284,8,0,'Leatherworking',1,1,3276,0,0,0,0,'',0),
(3284,9,0,'Mining',1,1,3277,238,0,0,0,'',0),
(3284,10,0,'Skinning',1,1,3278,0,0,0,0,'',0),
(3284,11,0,'Tailoring',1,1,3279,0,0,0,0,'',0),
(3285,0,0,'The Bank',1,1,3280,0,0,0,0,'',0),
(3285,1,0,'Wind Rider Master',1,1,3281,0,0,0,0,'',0),
(3285,2,0,'The Inn',1,1,3282,253,0,0,0,'',0),
(3285,3,0,'Stable Master',1,1,4901,252,0,0,0,'',0),
(3285,4,0,'Class Trainer',1,1,3283,0,0,0,0,'',0),
(3285,5,0,'Profession Trainer',1,1,3284,0,0,0,0,'',0),
(3329,0,0,'Druid',1,1,3314,336,0,0,0,'',0),
(3329,1,0,'Hunter',1,1,3315,335,0,0,0,'',0),
(3329,2,0,'Shaman',1,1,3316,334,0,0,0,'',0),
(3329,3,0,'Warrior',1,1,3317,332,0,0,0,'',0),
(3330,0,0,'Alchemy',1,1,3318,0,0,0,0,'',0),
(3330,1,0,'Blacksmithing',1,1,3319,0,0,0,0,'',0),
(3330,2,0,'Cooking',1,1,3320,331,0,0,0,'',0),
(3330,3,0,'Enchanting',1,1,3321,0,0,0,0,'',0),
(3330,4,0,'First Aid',1,1,3322,330,0,0,0,'',0),
(3330,5,0,'Fishing',1,1,3323,329,0,0,0,'',0),
(3330,6,0,'Herbalism',1,1,3324,0,0,0,0,'',0),
(3330,7,0,'Leatherworking',1,1,3325,327,0,0,0,'',0),
(3330,8,0,'Mining',1,1,3326,0,0,0,0,'',0),
(3330,9,0,'Skinning',1,1,3327,326,0,0,0,'',0),
(3330,10,0,'Tailoring',1,1,3328,0,0,0,0,'',0),
(3331,0,0,'The Bank',1,1,3311,0,0,0,0,'',0),
(3331,1,0,'Wind Rider Master',1,1,3312,0,0,0,0,'',0),
(3331,2,0,'The Inn',1,1,3313,338,0,0,0,'',0),
(3331,3,0,'Stable Master',1,1,4903,337,0,0,0,'',0),
(3331,4,0,'Class Trainer',1,1,3329,0,0,0,0,'',0),
(3331,5,0,'Profession Trainer',1,1,3330,0,0,0,0,'',0),
(3354,0,0,'Mage',1,1,3337,298,0,0,0,'',0),
(3354,1,0,'Priest',1,1,3338,297,0,0,0,'',0),
(3354,2,0,'Rogue',1,1,3339,295,0,0,0,'',0),
(3354,3,0,'Warlock',1,1,3340,294,0,0,0,'',0),
(3354,4,0,'Warrior',1,1,3341,293,0,0,0,'',0),
(3355,0,0,'Alchemy',1,1,3342,292,0,0,0,'',0),
(3355,1,0,'Blacksmithing',1,1,3343,0,0,0,0,'',0),
(3355,2,0,'Cooking',1,1,3344,0,0,0,0,'',0),
(3355,3,0,'Enchanting',1,1,3345,291,0,0,0,'',0),
(3355,4,0,'Engineering',1,1,3346,0,0,0,0,'',0),
(3355,5,0,'First Aid',1,1,3347,290,0,0,0,'',0),
(3355,6,0,'Fishing',1,1,3348,289,0,0,0,'',0),
(3355,7,0,'Herbalism',1,1,3349,288,0,0,0,'',0),
(3355,8,0,'Leatherworking',1,1,3350,287,0,0,0,'',0),
(3355,9,0,'Mining',1,1,3351,0,0,0,0,'',0),
(3355,10,0,'Skinning',1,1,3352,286,0,0,0,'',0),
(3355,11,0,'Tailoring',1,1,3353,285,0,0,0,'',0),
(3356,0,0,'The Bank',1,1,3334,0,0,0,0,'',0),
(3356,1,0,'The Bat Handler',1,1,3335,0,0,0,0,'',0),
(3356,2,0,'The Inn',1,1,3336,299,0,0,0,'',0),
(3356,3,0,'Stable Master',1,1,4905,296,0,0,0,'',0),
(3356,4,0,'Class Trainer',1,1,3354,0,0,0,0,'',0),
(3356,5,0,'Profession Trainer',1,1,3355,0,0,0,0,'',0),
(3421,0,0,'I need another Argent Dawn Commission.',1,1,0,0,0,0,0,'',0),
(3421,1,1,'I would like to buy from you.',3,4,0,0,0,0,0,'',0),
(3502,0,0,'I am ready to hear your tale, Tirion.',1,1,3683,0,0,0,0,NULL,139),
(3506,0,0,'Bank',1,1,3507,19,0,0,0,'',0),
(3506,1,0,'Gryphon Master',1,1,3508,23,0,0,0,'',0),
(3506,2,0,'Guild Master',1,1,3509,24,0,0,0,'',0),
(3506,3,0,'Inn',1,1,3510,1,0,0,0,'',0),
(3506,4,0,'Stable Master',1,1,4924,17,0,0,0,'',0),
(3506,5,0,'Class Trainer',1,1,3519,0,0,0,0,'',0),
(3506,6,0,'Profession Trainer',1,1,3532,0,0,0,0,'',0),
(3519,0,0,'Druid',1,1,3511,0,0,0,0,'',0),
(3519,1,0,'Hunter',1,1,3512,0,0,0,0,'',0),
(3519,2,0,'Mage',1,1,3514,2,0,0,0,'',0),
(3519,3,0,'Paladin',1,1,3515,3,0,0,0,'',0),
(3519,4,0,'Priest',1,1,3513,4,0,0,0,'',0),
(3519,5,0,'Rogue',1,1,3516,5,0,0,0,'',0),
(3519,6,0,'Warlock',1,1,3518,6,0,0,0,'',0),
(3519,7,0,'Warrior',1,1,3517,7,0,0,0,'',0),
(3532,0,0,'Alchemy',1,1,3520,8,0,0,0,'',0),
(3532,1,0,'Blacksmithing',1,1,3521,9,0,0,0,'',0),
(3532,2,0,'Cooking',1,1,3522,10,0,0,0,'',0),
(3532,3,0,'Enchanting',1,1,3523,0,0,0,0,'',0),
(3532,4,0,'Engineering',1,1,3524,0,0,0,0,'',0),
(3532,5,0,'First Aid',1,1,3525,11,0,0,0,'',0),
(3532,6,0,'Fishing',1,1,3526,11,0,0,0,'',0),
(3532,7,0,'Herbalism',1,1,3527,363,0,0,0,'',0),
(3532,8,0,'Leatherworking',1,1,3528,14,0,0,0,'',0),
(3532,9,0,'Mining',1,1,3529,0,0,0,0,'',0),
(3532,10,0,'Skinning',1,1,3530,15,0,0,0,'',0),
(3532,11,0,'Tailoring',1,1,3531,16,0,0,0,'',0),
(3533,0,0,'The Bank',1,1,3534,0,0,0,0,'',0),
(3533,1,0,'Gryphon Master',1,1,3535,0,0,0,0,'',0),
(3533,2,0,'Guild Master',1,1,3536,0,0,0,0,'',0),
(3533,3,0,'The Inn',1,1,3537,76,0,0,0,'',0),
(3533,4,0,'Stable Master',1,1,4926,77,0,0,0,'',0),
(3533,5,0,'Class Trainer',1,1,3545,0,0,0,0,'',0),
(3533,6,0,'Profession Trainer',1,1,3558,0,0,0,0,'',0),
(3545,0,0,'Hunter',1,1,3538,78,0,0,0,'',0),
(3545,1,0,'Mage',1,1,3539,79,0,0,0,'',0),
(3545,2,0,'Paladin',1,1,3540,80,0,0,0,'',0),
(3545,3,0,'Priest',1,1,3541,81,0,0,0,'',0),
(3545,4,0,'Rogue',1,1,3542,82,0,0,0,'',0),
(3545,5,0,'Warlock',1,1,3543,83,0,0,0,'',0),
(3545,6,0,'Warrior',1,1,3544,84,0,0,0,'',0),
(3558,0,0,'Alchemy',1,1,3546,0,0,0,0,'',0),
(3558,1,0,'Blacksmithing',1,1,3547,85,0,0,0,'',0),
(3558,2,0,'Cooking',1,1,3548,86,0,0,0,'',0),
(3558,3,0,'Enchanting',1,1,3549,0,0,0,0,'',0),
(3558,4,0,'Engineering',1,1,3550,0,0,0,0,'',0),
(3558,5,0,'First Aid',1,1,3551,87,0,0,0,'',0),
(3558,6,0,'Fishing',1,1,3552,88,0,0,0,'',0),
(3558,7,0,'Herbalism',1,1,3553,0,0,0,0,'',0),
(3558,8,0,'Leatherworking',1,1,3554,0,0,0,0,'',0),
(3558,9,0,'Mining',1,1,3555,339,0,0,0,'',0),
(3558,10,0,'Skinning\n',1,1,3556,0,0,0,0,'',0),
(3558,11,0,'Tailoring',1,1,3557,0,0,0,0,'',0),
(3564,0,0,'Druid',1,1,3565,113,0,0,0,'',0),
(3564,1,0,'Hunter',1,1,3566,114,0,0,0,'',0),
(3564,2,0,'Priest',1,1,3567,115,0,0,0,'',0),
(3564,3,0,'Rogue',1,1,3568,116,0,0,0,'',0),
(3564,4,0,'Warrior',1,1,3569,117,0,0,0,'',0),
(3572,0,0,'Alchemy',1,1,3570,118,0,0,0,'',0),
(3572,1,0,'Cooking',1,1,3571,119,0,0,0,'',0),
(3572,2,0,'Enchanting',1,1,3573,120,0,0,0,'',0),
(3572,3,0,'First Aid',1,1,3574,121,0,0,0,'',0),
(3572,4,0,'Fishing',1,1,3575,106,0,0,0,'',0),
(3572,5,0,'Herbalism',1,1,3576,122,0,0,0,'',0),
(3572,6,0,'Leatherworking',1,1,3577,123,0,0,0,'',0),
(3572,7,0,'Skinning',1,1,3578,124,0,0,0,'',0),
(3572,8,0,'Tailoring',1,1,3579,0,0,0,0,'',0),
(3580,0,0,'The Bank',1,1,3560,0,0,0,0,'',0),
(3580,1,0,'Rut\'theran Ferry',1,1,3561,0,0,0,0,'',0),
(3580,2,0,'The Guild Master.',1,1,3562,0,0,0,0,'',0),
(3580,3,0,'The Inn',1,1,3563,111,0,0,0,'',0),
(3580,4,0,'Stable Master',1,1,4923,112,0,0,0,'',0),
(3580,5,0,'Class Trainer',1,1,3564,0,0,0,0,'',0),
(3580,6,0,'Profession Trainer',1,1,3572,0,0,0,0,'',0),
(3624,0,0,'What about the Winterfall furbolg?',1,1,3623,0,0,0,0,NULL,0),
(3624,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(3681,0,0,'I will, Tirion.',1,1,-1,0,3681,0,0,NULL,0),
(3682,0,0,'That is terrible.',1,1,3681,0,0,0,0,NULL,0),
(3683,0,0,'Thank you, Tirion. What of your identity?',1,1,3682,0,0,0,0,NULL,0),
(3841,0,0,'Where is the zeppelin now?',1,1,0,0,0,0,0,'',0),
(3842,0,0,'Where is the zeppelin now?',1,1,0,0,0,0,0,'',0),
(3862,0,0,'You have fought well, spirit.  I ask you to grant me the strength of your body and the strength of your heart.',1,1,3863,0,386201,0,0,'',230),
(3862,1,0,'You have fought well, spirit.  I ask you to grant me the strength of your body and the strength of your heart.',1,1,3863,0,386202,0,0,'',455),
(3881,0,0,'I seek to understand the importance of strength of the body.',1,1,3883,0,0,0,0,'',0),
(3882,0,0,'What do you represent, spirit?',1,1,3881,0,0,0,0,'',676),
(3883,0,0,'I seek to understand the importance of strength of the heart.',1,1,3884,0,0,0,0,'',0),
(3884,0,0,'I have heard your words, Great Bear Spirit, and I understand.  I now seek your blessings to fully learn the way of the Claw.',1,1,3885,0,3884,0,0,'',507),
(3884,1,0,'I have heard your words, Great Bear Spirit, and I understand.  I now seek your blessings to fully learn the way of the Claw.',1,1,3885,0,3885,0,0,'',231),
(4041,0,0,'I\'d like to fly to Rut\'theran Village.',1,1,-1,0,4041,0,0,NULL,520),
(4041,1,0,'Do you know where I can find Half Pendant of Aquatic Agility?',1,1,20009,0,0,0,0,NULL,677),
(4042,0,0,'I\'d like to fly to Thunder Bluff.',1,1,-1,0,4042,0,0,NULL,519),
(4042,1,0,'Do you know where I can find Half Pendant of Aquatic Endurance?',1,1,20010,0,0,0,0,NULL,677),
(4085,0,1,'Yes, Augustus.  I would like to do business.',3,128,0,0,0,0,0,'',141),
(4106,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(4106,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(4107,0,1,'I would like to buy from you.',3,4,0,0,0,0,0,'',0),
(4107,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(4123,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(4135,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(4150,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(4163,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(4174,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(4209,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(4281,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(4281,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(4282,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(4301,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(4302,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(4302,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(4303,0,1,'I want to browse your goods.',3,4,0,0,0,0,0,'',0),
(4307,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(4307,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(4323,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(4323,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(4326,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(4342,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(4342,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(4360,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(4360,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(4362,0,0,'Place Termite Barrel on the crate.',1,1,0,0,4362,0,0,'',716),
(4485,0,3,'I am interested in mage training.',5,16,0,0,0,0,0,'',0),
(4485,1,0,'I wish to unlearn my talents.',1,1,0,0,0,0,0,'',0),
(4485,2,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(4659,0,3,'Can you train me how to use rogue skills?',5,16,0,0,0,0,0,'',0),
(4659,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(4660,0,3,'I am interested in mage training.',5,16,0,0,0,0,0,'',0),
(4661,0,3,'I am interested in mage training.',5,16,0,0,0,0,0,'',0),
(4664,0,3,'I would like to train further in the ways of the Light.',5,16,0,0,0,0,0,'',0),
(4746,0,1,'I wish to browse your goods, Dirge.',3,4,0,0,0,0,0,'',0),
(4746,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(4763,4,0,'My answer - Malygos.',1,1,-1,0,476301,0,0,NULL,160),
(4763,3,0,'My answer - Alexstrasza.',1,1,-1,0,476301,0,0,NULL,160),
(4763,2,0,'My answer - Nozdormu.',1,1,-1,0,476301,0,0,NULL,160),
(4763,1,0,'My answer - Neltharion.',1,1,-1,0,476302,0,0,NULL,160),
(4763,0,0,'My answer - Ysera.',1,1,-1,0,476301,0,0,NULL,160),
(4781,1,0,'Hmm, I listen. Also that you offer?',1,1,-1,0,4781,0,0,NULL,683),
(4781,0,1,'Show me what I have access to, Lokhtos.',3,128,0,0,0,0,0,'',81),
(4822,0,3,'Please teach me.',5,16,0,0,0,0,0,'',0),
(4826,0,3,'Please teach me.',5,16,0,0,0,0,0,'',0),
(5271,0,3,'I\'d like some weapon training',5,16,0,0,0,0,0,'',0),
(5271,1,0,'What can other weapon masters teach?',1,1,5270,0,0,0,0,'',0),
(5665,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(5750,1,0,'Teleport me to the Molten Core, Lothos.',1,1,-1,0,5750,0,0,'',0),
(5851,0,0,'I know this is rather silly but a young ward who is a bit shy would like your hoofprint.',1,1,20021,0,5851,0,0,NULL,623),
(5853,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(5853,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(5855,0,3,'Train me.',5,16,0,0,0,0,0,'',0),
(5962,0,1,'I wish to browse your wares.',3,4,0,0,0,0,0,'',0),
(6023,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(6162,0,2,'I need a ride.',4,8,0,0,0,0,0,'',0),
(6213,0,0,'The Darkmoon Faire has arrived, you say? And where is she now?',1,1,6222,0,0,0,0,NULL,0),
(6214,0,0,'When the Darkmoon Faire arrives, where will it be located?',1,1,6221,0,0,0,0,NULL,0),
(6533,0,0,'Hello, Frankal. I\'ve heard that you might have some information as to the whereabouts of Mistress Natalia Mar\'alith.',1,1,6558,0,0,0,0,NULL,512),
(6534,0,0,'Hello, Rutgar. The Commander has sent me here to gather some information about his missing wife.',1,1,6551,0,0,0,0,NULL,512),
(6545,0,0,'I\'ll be back once I straighten this mess out.',1,1,-1,0,6545,0,0,NULL,0),
(6546,0,0,'Possessed by what?',1,1,6545,0,0,0,0,NULL,0),
(6547,0,0,'Lost it? What do you mean?',1,1,6546,0,0,0,0,NULL,0),
(6548,0,0,'What demands?',1,1,6547,0,0,0,0,NULL,0),
(6549,0,0,'Natalia?',1,1,6548,0,0,0,0,NULL,0),
(6550,0,0,'What happened to her after that?',1,1,6549,0,0,0,0,NULL,0),
(6551,0,0,'That sounds dangerous.',1,1,6550,0,0,0,0,NULL,0),
(6552,0,0,'Thanks for the information, Frankal.',1,1,-1,0,6552,0,0,NULL,0),
(6553,0,0,'What a story! So she went into Hive\'Regal and that was the last you saw of her?',1,1,6552,0,0,0,0,NULL,0),
(6554,0,0,'Then what?',1,1,6553,0,0,0,0,NULL,0),
(6555,0,0,'I\'ve been meaning to ask out about that monkey.',1,1,6554,0,0,0,0,NULL,0),
(6556,0,0,'You couldn\'t handle a lone night elf priestess?',1,1,6555,0,0,0,0,NULL,0),
(6557,0,0,'That\'s odd.',1,1,6556,0,0,0,0,NULL,0),
(6558,0,0,'That\'s what I like to hear.',1,1,6557,0,0,0,0,NULL,0),
(6586,0,0,'And what do you say?',1,1,0,0,0,0,0,'',0),
(6587,0,0,'What do they say?',1,1,0,0,0,0,0,'',0),
(6588,0,0,'How do you know?',1,1,0,0,0,0,0,'',0),
(6599,0,0,'What is an Alliance Commendation Signet?',1,1,6700,0,0,0,0,'',0),
(6602,0,0,'What is an Alliance Commendation Signet?',1,1,6702,0,0,0,0,'',0),
(6603,0,0,'What is an Alliance Commendation Signet?',1,1,6704,0,0,0,0,'',0),
(6604,0,0,'What is an Alliance Commendation Signet?',1,1,0,0,0,0,0,'',0),
(6605,0,0,'What is an Alliance Commendation Signet?',1,1,6708,0,0,0,0,'',0),
(6606,0,0,'What is an Alliance Commendation Signet?',1,1,6710,0,0,0,0,'',0),
(6607,0,0,'What is an Alliance Commendation Signet?',1,1,6696,0,0,0,0,'',0),
(6608,0,0,'What is an Alliance Commendation Signet?',1,1,6712,0,0,0,0,'',0),
(6609,0,0,'What is an Alliance Commendation Signet?',1,1,6714,0,0,0,0,'',0),
(6610,0,0,'What is an Alliance Commendation Signet?',1,1,6716,0,0,0,0,'',0),
(6612,0,0,'What is an Alliance Commendation Signet?',1,1,6718,0,0,0,0,'',0),
(6613,0,0,'What is an Alliance Commendation Signet?',1,1,6720,0,0,0,0,'',0),
(6614,0,0,'What is an Alliance Commendation Signet?',1,1,6722,0,0,0,0,'',0),
(6615,0,0,'What is an Alliance Commendation Signet?',1,1,6724,0,0,0,0,'',0),
(6616,0,0,'What is an Alliance Commendation Signet?',1,1,6726,0,0,0,0,'',0),
(6665,0,0,'What is the Ahn\'Qiraj war effort?',1,1,6671,0,0,0,0,'',0),
(6665,1,0,'How many metal bars have the Horde collected so far?',1,1,6672,0,0,0,0,'',0),
(6665,2,0,'How many herbs have the Horde collected so far?',1,1,6673,0,0,0,0,'',0),
(6665,3,0,'How many leather skins have the Horde collected so far?',1,1,6674,0,0,0,0,'',0),
(6665,4,0,'How many bandages have the Horde collected so far?',1,1,6675,0,0,0,0,'',0),
(6665,5,0,'How many cooked goods have the Horde collected so far?',1,1,6676,0,0,0,0,'',0),
(6671,0,0,'I want to ask you about something else.',1,1,6665,0,0,0,0,'',0),
(6672,0,0,'I want to ask you about something else.',1,1,6665,0,0,0,0,'',0),
(6673,0,0,'I want to ask you about something else.',1,1,6665,0,0,0,0,'',0),
(6674,0,0,'I want to ask you about something else.',1,1,6665,0,0,0,0,'',0),
(6675,0,0,'I want to ask you about something else.',1,1,6665,0,0,0,0,'',0),
(6676,0,0,'I want to ask you about something else.',1,1,6665,0,0,0,0,'',0),
(6692,0,0,'May I have your report?',1,1,-1,0,6692,0,0,NULL,1777),
(6696,0,0,'I want to ask you about something else.',1,1,6607,0,0,0,0,'',0),
(6700,0,0,'I want to ask you about something else.',1,1,6599,0,0,0,0,'',0),
(6702,0,0,'I want to ask you about something else.',1,1,6602,0,0,0,0,'',0),
(6704,0,0,'I want to ask you about something else.',1,1,6603,0,0,0,0,'',0),
(6708,0,0,'I want to ask you about something else.',1,1,6605,0,0,0,0,'',0),
(6710,0,0,'I want to ask you about something else.',1,1,6606,0,0,0,0,'',0),
(6712,0,0,'I want to ask you about something else.',1,1,6608,0,0,0,0,'',0),
(6714,0,0,'I want to ask you about something else.',1,1,6609,0,0,0,0,'',0),
(6716,0,0,'I want to ask you about something else.',1,1,6610,0,0,0,0,'',0),
(6718,0,0,'I want to ask you about something else.',1,1,0,0,0,0,0,'',0),
(6720,0,0,'I want to ask you about something else.',1,1,6613,0,0,0,0,'',0),
(6722,0,0,'I want to ask you about something else.',1,1,6614,0,0,0,0,'',0),
(6724,0,0,'I want to ask you about something else.',1,1,6615,0,0,0,0,'',0),
(6726,0,0,'I want to ask you about something else.',1,1,6616,0,0,0,0,'',0),
(6771,0,0,'I want to ask you about something else.',1,1,6772,0,0,0,0,'',0),
(6772,0,0,'What is the Ahn\'Qiraj war effort?',1,1,6771,0,0,0,0,'',0),
(6772,1,0,'How many metal bars have the Alliance collected so far?',1,1,6773,0,0,0,0,'',0),
(6772,2,0,'How many herbs have the Alliance collected so far?',1,1,6774,0,0,0,0,'',0),
(6772,3,0,'How many leather skins have the Alliance collected so far?',1,1,6775,0,0,0,0,'',0),
(6772,4,0,'How many bandages have the Alliance collected so far?',1,1,6776,0,0,0,0,'',0),
(6772,5,0,'How many cooked goods have the Alliance collected so far?',1,1,6777,0,0,0,0,'',0),
(6773,0,0,'I want to ask you about something else.',1,1,6772,0,0,0,0,'',0),
(6774,0,0,'I want to ask you about something else.',1,1,6772,0,0,0,0,'',0),
(6775,0,0,'I want to ask you about something else.',1,1,6772,0,0,0,0,'',0),
(6776,0,0,'I want to ask you about something else.',1,1,6772,0,0,0,0,'',0),
(6777,0,0,'I want to ask you about something else.',1,1,6772,0,0,0,0,'',0),
(6944,0,2,'Show me where I can fly.',4,8,0,0,0,0,0,'',0),
(6944,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,0,0,0,0,0,NULL,0),
(7379,0,0,'Take me to Northpass Tower.',1,1,0,0,737901,0,0,'',0),
(7379,1,0,'Take me to Eastwall Tower.',1,1,0,0,737902,0,0,'',0),
(7379,2,0,'Take me to Crown Guard Tower.',1,1,0,0,737903,0,0,'',0),
(10265,0,0,'Auction House',1,1,3101,89,0,0,0,'',0),
(10265,1,0,'The Bank',1,1,2322,90,0,0,0,'',0),
(10265,2,0,'Hippogryph Master',1,1,10266,91,0,0,0,'',0),
(10265,3,0,'Guild Master',1,1,2324,92,0,0,0,'',0),
(10265,4,0,'The Inn',1,1,2325,93,0,0,0,'',0),
(10265,5,0,'Mailbox',1,1,2326,94,0,0,0,'',0),
(10265,6,0,'Stable Master',1,1,4921,95,0,0,0,'',0),
(10265,7,0,'Weapons Trainer',1,1,3722,96,0,0,0,'',0),
(10265,8,0,'Battlemaster',1,1,8221,97,0,0,0,'',0),
(10265,9,0,'Class Trainer',1,1,2343,0,0,0,0,'',0),
(10265,10,0,'Profession Trainer',1,1,2351,0,0,0,0,'',0),
(20022,0,0,'I need a Cenarion beacon.',1,1,-1,0,2208,0,0,NULL,628);
/*!40000 ALTER TABLE `gossip_menu_option` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

