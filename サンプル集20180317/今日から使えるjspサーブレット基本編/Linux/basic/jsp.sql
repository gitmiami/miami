-- MySQL dump 8.22
--
-- Host: localhost    Database: jsp
---------------------------------------------------------
-- Server version	3.23.54-nt

--
-- Table structure for table 'auth_tomcat_role'
--

CREATE TABLE auth_tomcat_role (
  uid varchar(10) NOT NULL default '',
  role varchar(30) default NULL
) TYPE=MyISAM;

--
-- Dumping data for table 'auth_tomcat_role'
--


INSERT INTO auth_tomcat_role VALUES ('khonda','administrator');
INSERT INTO auth_tomcat_role VALUES ('khonda','supervisor');
INSERT INTO auth_tomcat_role VALUES ('khonda','user');

--
-- Table structure for table 'auth_tomcat_usr'
--

CREATE TABLE auth_tomcat_usr (
  uid varchar(10) NOT NULL default '',
  passwd varchar(10) default NULL,
  PRIMARY KEY  (uid)
) TYPE=MyISAM;

--
-- Dumping data for table 'auth_tomcat_usr'
--


INSERT INTO auth_tomcat_usr VALUES ('khonda','999');

--
-- Table structure for table 'bbs_master'
--

CREATE TABLE bbs_master (
  id int(11) NOT NULL auto_increment,
  title varchar(50) default NULL,
  nam varchar(20) default NULL,
  sdat datetime default NULL,
  article text,
  passwd varchar(15) default NULL,
  parent int(11) default NULL,
  level int(11) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'bbs_master'
--

INSERT INTO bbs_master VALUES (28,'Strutsとは？','よしぴ！','2002-09-17 23:05:39','Strutsってすごいですね。<br /><br />でした。','123',0,0);
INSERT INTO bbs_master VALUES (4,'PHPとJSPとは何が違う？','あきこ','2001-11-10 14:39:23','なにがちがうのー？','123',0,0);
INSERT INTO bbs_master VALUES (5,'Re:　PHPとJSPとは何が違う？','ひを','2001-11-10 15:41:47','自分で考えなさい','123',4,1);
INSERT INTO bbs_master VALUES (6,'新技術ASP.NETとは？','みな','2001-11-11 14:42:03','みなです','123',0,0);
INSERT INTO bbs_master VALUES (7,'XSLの登場で何が変わる？','みほひめ','2001-11-13 14:42:17','なにも変わらない','123',0,0);
INSERT INTO bbs_master VALUES (8,'Re:　XSLの登場で何が変わる？','はぎもと','2001-11-14 14:42:31','そうかなー','123',7,1);
INSERT INTO bbs_master VALUES (9,'Re:　Re:　XSLの登場で何が変わる？','とりうち','2001-11-14 16:51:10','うんうん','123',8,2);
INSERT INTO bbs_master VALUES (10,'Re:　Re:　Re:　XSLの登場で何が変わる？','金崎','2001-11-15 04:56:49','ほぅ','123',9,3);
INSERT INTO bbs_master VALUES (11,'PHP5はいつでる？','薄ドン','2001-11-18 14:57:01','いつだろう？','123',0,0);
INSERT INTO bbs_master VALUES (12,'JavaScriptでフレームを制御','酒井と金子','2001-11-19 14:57:24','うーん','123',0,0);
INSERT INTO bbs_master VALUES (13,'VBScriptはなくなる？','きよ','2001-11-21 14:57:30','ふっふ','123',0,0);
INSERT INTO bbs_master VALUES (29,'削除済み','','2002-09-17 23:09:08','> Strutsってすごいですね。<br />でしょう？','123',28,1);
INSERT INTO bbs_master VALUES (15,'IMAPで取得した文字コードの変換','ハヤシ','2001-12-01 14:57:01','ハヤシです。','123',0,0);
INSERT INTO bbs_master VALUES (16,'Re:　IMAPで取得した文字コードの変換','わたべー','2001-12-01 14:59:24','うーん','123',15,1);
INSERT INTO bbs_master VALUES (17,'Re:　Re:　IMAPで取得した文字コードの変換','佐々木','2001-12-02 01:57:30','ふっふ','123',16,2);
INSERT INTO bbs_master VALUES (18,'DOMでソート処理を行なうには？','高橋','2001-12-04 09:48:08','こんち','123',0,0);
INSERT INTO bbs_master VALUES (19,'Re:　DOMでソート処理を行なうには？','はせがわ','2001-12-11 14:01:01','こんちは','123',18,1);
INSERT INTO bbs_master VALUES (20,'CGIで文字コード変換を行なうには？','栓','2001-12-19 10:57:24','こんにちは','123',0,0);
INSERT INTO bbs_master VALUES (21,'Re:　CGIで文字コード変換を行なうには？','のりきゅー','2001-12-21 10:27:30','ふっふ','123',20,1);
INSERT INTO bbs_master VALUES (22,'テーブルを結合し、結果を出力','新潟カネコ','2001-12-30 15:48:08','ふーむ','123',0,0);

--
-- Table structure for table 'brd_msg'
--

CREATE TABLE brd_msg (
  id int(11) NOT NULL auto_increment,
  uid varchar(10) default NULL,
  sec varchar(30) default NULL,
  psn varchar(25) default NULL,
  uTime datetime default NULL,
  dSec int(11) default NULL,
  tel varchar(15) default NULL,
  comment varchar(255) default NULL,
  uPsn varchar(10) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'brd_msg'
--

--
-- Table structure for table 'brd_usr'
--

CREATE TABLE brd_usr (
  uid varchar(10) NOT NULL default '',
  passwd varchar(20) default NULL,
  unam varchar(20) default NULL,
  present int(11) default NULL,
  plac varchar(50) default NULL,
  rTime varchar(15) default NULL,
  uTime datetime default NULL,
  memo varchar(255) default NULL,
  PRIMARY KEY  (uid)
) TYPE=MyISAM;

--
-- Dumping data for table 'brd_usr'
--


INSERT INTO brd_usr VALUES ('00001','123','田中茂樹',1,'','','2002-12-21 12:44:50','');
INSERT INTO brd_usr VALUES ('00002','123','篠原和広',2,'1014会議室','12:00','2002-09-12 11:10:00','社内会議。電話はつないでください\r');
INSERT INTO brd_usr VALUES ('00003','123','鈴木聖樹',1,'','','2002-09-12 08:45:10','\r');
INSERT INTO brd_usr VALUES ('00004','123','田中正夫',1,'','','2002-09-12 11:45:10','\r');
INSERT INTO brd_usr VALUES ('00005','123','中野三子',3,'ソミー','15:00','2002-09-12 13:11:08','\r');
INSERT INTO brd_usr VALUES ('00006','123','清水真梨',3,'不死通','直帰','2002-09-12 15:03:10','連絡先は(090)XXX-XXXXX\r');

--
-- Table structure for table 'cht_list'
--

CREATE TABLE cht_list (
  id int(11) NOT NULL auto_increment,
  nam varchar(50) default NULL,
  passwd varchar(20) default NULL,
  namc varchar(7) default NULL,
  timc varchar(7) default NULL,
  comc varchar(7) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'cht_list'
--


INSERT INTO cht_list VALUES (1,'JSPのお部屋','123','#191970','#DB7093','#556B2F');
INSERT INTO cht_list VALUES (2,'戦え音楽家たち','123','#191970','#DB7093','#556B2F');
INSERT INTO cht_list VALUES (3,'XML Q&Aポスト','123','#191970','#DB7093','#556B2F');

--
-- Table structure for table 'cht_master'
--

CREATE TABLE cht_master (
  id int(11) default NULL,
  nam varchar(20) default NULL,
  comment varchar(255) default NULL,
  dat datetime default NULL,
  icon char(2) default NULL
) TYPE=MyISAM;

--
-- Dumping data for table 'cht_master'
--

--
-- Table structure for table 'ec_store'
--

CREATE TABLE ec_store (
  id int(11) NOT NULL default '0',
  nam varchar(30) default NULL,
  pic varchar(30) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ec_store'
--

INSERT INTO ec_store VALUES (1,'Booksハヤシ','book.gif');
INSERT INTO ec_store VALUES (2,'nbシステムズ','computer.gif');
INSERT INTO ec_store VALUES (3,'日曜大工の日尾','daiku.gif');

--
-- Table structure for table 'ec_customer'
--

CREATE TABLE ec_customer (
  id int(11) NOT NULL default '0',
  nam varchar(30) default NULL,
  zip varchar(8) default NULL,
  address varchar(100) default NULL,
  tel varchar(15) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ec_customer'
--

--
-- Table structure for table 'ec_master'
--

CREATE TABLE ec_master (
  id int(11) NOT NULL auto_increment,
  code varchar(50) default NULL,
  num int(11) default NULL,
  person int(11) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ec_master'
--

--
-- Table structure for table 'ec_product'
--

CREATE TABLE ec_product (
  code varchar(10) NOT NULL default '',
  nam varchar(100) default NULL,
  pric int(11) default NULL,
  stor int(11) default NULL,
  pic varchar(30) default NULL,
  info varchar(255) default NULL,
  PRIMARY KEY  (code)
) TYPE=MyISAM;

--
-- Dumping data for table 'ec_product'
--


INSERT INTO ec_product VALUES ('A0001','今日からつかえるXMLサンプル集',2800,1,'xml.jpg','XSLT、DOM、XMLSchemaなどXML関連技術を豊富なサンプル、リファレンスと共に');
INSERT INTO ec_product VALUES ('A0002','今日からつかえるASP3.0サンプル集',2800,1,'asp.jpg','サーバサイドのコア技術ASPサンプル集の金字塔。VBScript、JavaScript5.6対応');
INSERT INTO ec_product VALUES ('A0003','ASP3.0パーフェクトリファレンス',4000,1,'','基本オブジェクト、コンポーネント、ADO、VBScriptなど関連技術が集大成。豊富なサンプルはテクニックの宝庫');
INSERT INTO ec_product VALUES ('A0004','Webアプリケーション構築技法',3200,1,'web.jpg','グループウェアをASPで。実線テクニックを凝集したASP開発参考書の決定版');
INSERT INTO ec_product VALUES ('B0001','伸縮自在バケツ',500,3,'bucket.gif','伸縮自在の柔軟さでどこにでも持ち運びOK！');
INSERT INTO ec_product VALUES ('B0002','足でもつかえる携帯クリーナ',300,3,'','手軽な形態クリーナ。足でもつかえるこの手軽さは絶品！');
INSERT INTO ec_product VALUES ('B0003','持ち運びカンタンごみ入れ',700,3,'gomi.gif','軽量金属で持ち運びもカンタン。自然に優しいアウトドア用アイテム');
INSERT INTO ec_product VALUES ('B0004','主婦の三点神器',350,3,'','中身は見てのお楽しみ。主婦ならば絶対持っておきたい三点セット');
INSERT INTO ec_product VALUES ('C0001','WindowsZ搭載PC',35000,2,'computer.gif','最新鋭WindowsZ。256ビット処理完全対応のハイエンドOS');
INSERT INTO ec_product VALUES ('C0002','考えるロボットOBIA',105000,2,'robot.gif','自分で考え、自分で行動します。性格はあなたのしつけ次第？？');
INSERT INTO ec_product VALUES ('C0003','次世代10Tディスク',10000,2,'dvd.gif','DVDディスクの決定版。10テラバイト対応でありとあらゆるデータはこの中に！');

--
-- Table structure for table 'fac_facility'
--

CREATE TABLE fac_facility (
  fId int(11) NOT NULL default '0',
  fNam varchar(30) default NULL,
  PRIMARY KEY  (fId)
) TYPE=MyISAM;

--
-- Dumping data for table 'fac_facility'
--


INSERT INTO fac_facility VALUES (10001,'ミーティングコーナ1');
INSERT INTO fac_facility VALUES (10002,'1204会議室');
INSERT INTO fac_facility VALUES (10003,'1205会議室');
INSERT INTO fac_facility VALUES (10004,'1206会議室');
INSERT INTO fac_facility VALUES (10005,'外来応接室');

--
-- Table structure for table 'fac_master'
--

CREATE TABLE fac_master (
  fId int(11) NOT NULL default '0',
  rDate date NOT NULL default '0000-00-00',
  r08 varchar(10) default NULL,
  r09 varchar(10) default NULL,
  r10 varchar(10) default NULL,
  r11 varchar(10) default NULL,
  r12 varchar(10) default NULL,
  r13 varchar(10) default NULL,
  r14 varchar(10) default NULL,
  r15 varchar(10) default NULL,
  r16 varchar(10) default NULL,
  r17 varchar(10) default NULL,
  PRIMARY KEY  (fId,rDate)
) TYPE=MyISAM;

--
-- Dumping data for table 'fac_master'
--

--
-- Table structure for table 'flt_cnt'
--

CREATE TABLE flt_cnt (
  accessUrl varchar(100) NOT NULL default '',
  cnt int(11) default 0,
  PRIMARY KEY  (accessUrl)
) TYPE=MyISAM;

--
-- Dumping data for table 'flt_cnt'
--

--
-- Table structure for table 'flt_log'
--

CREATE TABLE flt_log (
  accessTime datetime default NULL,
  accessUrl varchar(100) default NULL,
  userAgent varchar(60) default NULL,
  httpReferer varchar(100) default NULL,
  userIp varchar(20) default NULL
) TYPE=MyISAM;

--
-- Dumping data for table 'flt_log'
--

--
-- Table structure for table 'master'
--

CREATE TABLE master (
  id char(10) NOT NULL default '',
  nam char(50) default NULL,
  val double default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'master'
--


INSERT INTO master VALUES ('00001','今日からつかえるASP3.0サンプル集',2800);
INSERT INTO master VALUES ('00002','今日からつかえるXMLサンプル集',2800);
INSERT INTO master VALUES ('00003','今日からつかえるJSPサンプル集',2900);
INSERT INTO master VALUES ('00004','5日でおぼえるXML+XSLT（入門篇）',1500);
INSERT INTO master VALUES ('00005','今日からつかえるPHP4サンプル集',2800);
INSERT INTO master VALUES ('00006','Webアプリケーション構築技法',3200);

--
-- Table structure for table 'ml_master'
--

CREATE TABLE ml_master (
  id int(11) NOT NULL auto_increment,
  title varchar(255) default NULL,
  body text,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'ml_master'
--

--
-- Table structure for table 'ml_usr'
--

CREATE TABLE ml_usr (
  email varchar(100) NOT NULL default '',
  unam varchar(20) default NULL,
  PRIMARY KEY  (email)
) TYPE=MyISAM;

--
-- Dumping data for table 'ml_usr'
--

INSERT INTO ml_usr VALUES ('CQW15204@nifty.com','山田祥寛');
INSERT INTO ml_usr VALUES ('sample4@localhost','日尾有宏');
INSERT INTO ml_usr VALUES ('sample5@localhost','渡辺将人');

--
-- Table structure for table 'mng_del'
--

CREATE TABLE mng_del (
  id varchar(20) NOT NULL default '',
  depart varchar(20) default NULL,
  hdate date default NULL,
  mem text
) TYPE=MyISAM;

--
-- Dumping data for table 'mng_del'
--

--
-- Table structure for table 'mng_master'
--

CREATE TABLE mng_master (
  id varchar(10) NOT NULL default '',
  nam varchar(50) default NULL,
  fnum varchar(50) default NULL,
  depart varchar(20) default NULL,
  plac varchar(30) default NULL,
  dat date default NULL,
  mem text,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'mng_master'
--


INSERT INTO mng_master VALUES ('101-000003','業務用PC','PC5800/10T','資材','302オフィス','2000-11-20','ユーザ渡辺Ｓ');
INSERT INTO mng_master VALUES ('101-000041','シートリーダ','SR2003','資材','OCRルーム','2001-12-12','山浦S管理');
INSERT INTO mng_master VALUES ('101-000040','バーコードハンディターミナル','SMLP-99','資材','通路キャビネット','2001-11-11','山浦S管理');
INSERT INTO mng_master VALUES ('101-000023','会議用テーブル','TABLE1','資材','503会議室','2001-11-10','山浦S管理');
INSERT INTO mng_master VALUES ('101-000022','移動書庫','SHOKO2','資材','サイドP','2001-12-21','萩本S管理');
INSERT INTO mng_master VALUES ('101-000021','移動書庫','SHOKO1','資材','サイドS','2000-08-15','萩本S管理');
INSERT INTO mng_master VALUES ('101-000020','メディアボード','E32-490-9898','資材','905会議室','2002-03-01','萩本S管理');
INSERT INTO mng_master VALUES ('101-000045','ディスクアレイ装置','DR200-XR','システム','サーバ室','2001-08-06','浜島S管理');
INSERT INTO mng_master VALUES ('101-000036','磁気ディスク装置','N1133-88','システム','XYZビル4F','2001-08-23','浜島S管理');
INSERT INTO mng_master VALUES ('101-000035','日本語カラーシリアルプリンタ','CSP5200PR','システム','XYZビル4F','2001-12-07','浜島S管理');
INSERT INTO mng_master VALUES ('101-000034','オフィスプロセッサ','OP5200','システム','サーバ室','2001-12-06','浜島S管理');
INSERT INTO mng_master VALUES ('101-000012','UNIXサーバ','NX4800-J','システム','システムセンタ','2001-10-01','浜島S預かり');
INSERT INTO mng_master VALUES ('101-000011','NTサーバ（部門用）','N8500-160B','システム','サーバ室','2001-06-07','大橋S管理');
INSERT INTO mng_master VALUES ('101-000002','無停電電源装置','DGN-58-A','システム','OCRルーム','2001-12-18','川端氏管理');
INSERT INTO mng_master VALUES ('101-000000','オフィスプロセッサ','OP5200-98','システム','サーバ室','2001-08-15','川端氏管理');
INSERT INTO mng_master VALUES ('101-000039','サーマルプリンタ','SMLP-00','製造','行方不明中','2001-09-19','小野氏保管');
INSERT INTO mng_master VALUES ('101-000033','ワークステーション','OP5200-98','製造','サーバ室','2001-11-21','小野氏保管');
INSERT INTO mng_master VALUES ('101-000032','ワークステーション','OP5200-98','製造','サーバ室','2001-12-22','小野氏保管');
INSERT INTO mng_master VALUES ('101-000029','日本語ラインプリンタ','LN23-JX-00','製造','XCビル','2001-08-03','小野氏保管');
INSERT INTO mng_master VALUES ('101-000028','モデム','MODEM5800-12','製造','XCビル','2001-08-27','小野氏保管');
INSERT INTO mng_master VALUES ('101-000015','ラインプリンタ','PC-KRT800','製造','OCRルーム','2000-09-10','本多S保有');
INSERT INTO mng_master VALUES ('101-000014','光学文字読取装置','K5000TR','製造','武蔵工場','2000-09-03','横井T');
INSERT INTO mng_master VALUES ('101-000009','業務用PC','PC5800/10T','製造','海外工場にて使用','2001-02-10','韓国鈴木Ｋ');
INSERT INTO mng_master VALUES ('101-000007','業務用PC','PC5800/80','製造','管理課保管','2000-10-04','小野氏保管');
INSERT INTO mng_master VALUES ('101-000006','業務用PC','PC5800/13TA','製造','製造部キャビネット保管','2000-11-13','営業部より融通');
INSERT INTO mng_master VALUES ('101-000048','タイプライター','TW2001/XZ','総務','製造部設置','2001-12-10','小野K管理');
INSERT INTO mng_master VALUES ('101-000047','OHP','OHP','総務','総務部キャビネット','2001-01-01','山田左脇');
INSERT INTO mng_master VALUES ('101-000044','投影型フルカラー液晶','PC-PJ600','総務','移動書庫内','2001-08-08','漆原K保有');
INSERT INTO mng_master VALUES ('101-000038','ラインプリンタ','LNPRT-00-X','総務','ＯＣＲルーム','2001-07-02','漆原K保有');
INSERT INTO mng_master VALUES ('101-000027','照明回路スイッチ','SWT01','総務','601会議室照明スイッチ部分','2001-09-07','漆原K保有');
INSERT INTO mng_master VALUES ('101-000026','排煙口','OTHER','総務','802会議室天井','2001-10-17','漆原K保有');
INSERT INTO mng_master VALUES ('101-000025','スチールパーティション','PART1','総務','503会議室','2001-12-29','漆原K保有');
INSERT INTO mng_master VALUES ('101-000024','ウォールキャビネット','CABI1','総務','906会議室前','2001-12-01','漆原K保有');
INSERT INTO mng_master VALUES ('101-000019','応接セット','OUSETSU','総務','支配人室','2000-12-25','小野氏管理');
INSERT INTO mng_master VALUES ('101-000018','UNIXサーバ','NX4800-JD','総務','システム管理センタ','2001-07-16','松岡K保持');
INSERT INTO mng_master VALUES ('101-000017','NTサーバ','N8500-140K','総務','システム管理室','2001-06-18','松岡K保持');
INSERT INTO mng_master VALUES ('101-000016','光学文字読取装置','K7500SR','総務','行方不明中','2001-03-05','川村S預かり');
INSERT INTO mng_master VALUES ('101-000010','液晶プロジェクタ','PC-PJ600','総務','総務部裏倉庫','2001-05-13','漆原K保有');
INSERT INTO mng_master VALUES ('101-000001','ファックス装置','FAX-DX6800','総務','総務部業務FAX','2001-04-21','川端氏管理');
INSERT INTO mng_master VALUES ('101-000004','業務用PC','PC5800/15T','技術','301オフィス','2002-01-03','ユーザ田中Ｓ');
INSERT INTO mng_master VALUES ('101-000005','業務用PC','PC5800/17TE','技術','行方不明中','2001-10-08','営業部より融通');
INSERT INTO mng_master VALUES ('101-000008','業務用PC','PC5800/95','技術','管理課保管','2001-03-22','井上氏保管');
INSERT INTO mng_master VALUES ('101-000013','プリンタ','PC-PRT500','技術','技術管理グループ使用','2000-12-09','鎌本B専用');
INSERT INTO mng_master VALUES ('101-000030','オフィスプロセッサ','OP5200-98','技術','335会議室キャビネット','2001-12-04','田中S管理');
INSERT INTO mng_master VALUES ('101-000031','日本語ラインプリンタ','LNPRT-00-X','技術','オフィス500','2001-06-28','田中S管理');
INSERT INTO mng_master VALUES ('101-000037','オフィスプロセッサ','OP5200','技術','サーバ室','2001-07-08','田中S管理');
INSERT INTO mng_master VALUES ('101-000042','マルチポートFAX','MP200-0-1X','技術','サーバ室','2001-10-10','田中S管理');
INSERT INTO mng_master VALUES ('101-000043','光ディスク装置','KNK-1312-DA','技術','OCRルーム','2001-09-09','田中S管理');
INSERT INTO mng_master VALUES ('101-000046','日本語カラー熱転写プリンタ','PC-PR630TR','技術','技術部内','2001-03-03','田中S管理');

--
-- Table structure for table 'mng_menu'
--

CREATE TABLE mng_menu (
  mid int(11) NOT NULL default '0',
  mnam varchar(50) default NULL,
  url varchar(50) default NULL,
  perms int(11) default NULL,
  PRIMARY KEY  (mid)
) TYPE=MyISAM;

--
-- Dumping data for table 'mng_menu'
--


INSERT INTO mng_menu VALUES (1,'新規資産登録','/advance/servlet/mng.mng_new',4);
INSERT INTO mng_menu VALUES (2,'既存資産更新・削除','/advance/servlet/mng.mng_update',2);
INSERT INTO mng_menu VALUES (3,'既存資産検索','search.jsp',1);
INSERT INTO mng_menu VALUES (4,'ユーザ情報更新','/advance/servlet/mng.mng_usr',4);
INSERT INTO mng_menu VALUES (5,'ログアウト','/advance/servlet/mng.mng_logout',1);

--
-- Table structure for table 'mng_pmaster'
--

CREATE TABLE mng_pmaster (
  id varchar(10) default NULL,
  ip varchar(15) default NULL,
  pnum varchar(8) default NULL,
  memory int(11) default NULL,
  hdd int(11) default NULL,
  mem text
) TYPE=MyISAM;

--
-- Dumping data for table 'mng_pmaster'
--


INSERT INTO mng_pmaster VALUES ('101-000001','10.2.109.200','ZZUI12',256,8000,'CD-RW機器増設');

--
-- Table structure for table 'mng_usr'
--

CREATE TABLE mng_usr (
  uid varchar(10) NOT NULL default '',
  passwd varchar(20) NOT NULL default '',
  unam varchar(50) default NULL,
  depart varchar(50) default NULL,
  perms int(11) default NULL,
  PRIMARY KEY  (uid)
) TYPE=MyISAM;

--
-- Dumping data for table 'mng_usr'
--

INSERT INTO mng_usr VALUES ('admin','admin','システム管理者','システム',7);
INSERT INTO mng_usr VALUES ('super','super','部門管理者','総務',3);
INSERT INTO mng_usr VALUES ('usr','usr','一般ユーザ','製造',1);

--
-- Table structure for table 'sche_category'
--

CREATE TABLE sche_category (
  id int(11) NOT NULL default '0',
  nam varchar(20) default NULL,
  pic varchar(15) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'sche_category'
--


INSERT INTO sche_category VALUES (1,'会議','kaigi.gif');
INSERT INTO sche_category VALUES (2,'研修','ken.gif');
INSERT INTO sche_category VALUES (3,'作業','pen.gif');
INSERT INTO sche_category VALUES (4,'私用','pri.gif');
INSERT INTO sche_category VALUES (5,'外出','out.gif');

--
-- Table structure for table 'sche_master'
--

CREATE TABLE sche_master (
  pid int(11) NOT NULL auto_increment,
  id varchar(10) default NULL,
  pDat date default NULL,
  bTim time default NULL,
  eTim time default NULL,
  pNam varchar(100) default NULL,
  cate varchar(20) default NULL,
  memo text,
  PRIMARY KEY  (pid)
) TYPE=MyISAM;

--
-- Dumping data for table 'sche_master'
--

--
-- Table structure for table 'sche_usr'
--

CREATE TABLE sche_usr (
  id varchar(10) NOT NULL default '',
  passwd varchar(20) default NULL,
  nam varchar(50) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'sche_usr'
--


INSERT INTO sche_usr VALUES ('yyamada','123','山田祥寛');
INSERT INTO sche_usr VALUES ('khonda','123','本多こずえ');
INSERT INTO sche_usr VALUES ('tkawamura','123','川村智美');

--
-- Table structure for table 'src_category'
--

CREATE TABLE src_category (
  cid int(11) NOT NULL default 0,
  cname varchar(50) default NULL,
  parent int(11) default NULL,
  img varchar(20) default NULL,
  PRIMARY KEY  (cid)
) TYPE=MyISAM;

--
-- Dumping data for table 'src_category'
--


INSERT INTO src_category VALUES (100,'趣味',0,'music.gif');
INSERT INTO src_category VALUES (200,'健康',0,'sun.gif');
INSERT INTO src_category VALUES (300,'経済・産業',0,'eco.gif');
INSERT INTO src_category VALUES (400,'教育',0,'doc.gif');
INSERT INTO src_category VALUES (500,'占い',0,'urn.gif');
INSERT INTO src_category VALUES (600,'生活',0,'life.gif');
INSERT INTO src_category VALUES (700,'メディア',0,'pen.gif');
INSERT INTO src_category VALUES (800,'自然科学',0,'sci.gif');
INSERT INTO src_category VALUES (110,'コレクション',100,'dog.gif');
INSERT INTO src_category VALUES (120,'音楽',100,'dog.gif');
INSERT INTO src_category VALUES (130,'工芸・工作',100,'dog.gif');
INSERT INTO src_category VALUES (140,'旅行',100,'dog.gif');
INSERT INTO src_category VALUES (150,'スポーツ',100,'dog.gif');
INSERT INTO src_category VALUES (210,'食事',200,'dog.gif');
INSERT INTO src_category VALUES (220,'メンタルヘルス',200,'dog.gif');
INSERT INTO src_category VALUES (230,'看護',200,'dog.gif');
INSERT INTO src_category VALUES (240,'医療',200,'dog.gif');
INSERT INTO src_category VALUES (310,'税金',300,'dog.gif');
INSERT INTO src_category VALUES (320,'ゲーム',300,'dog.gif');
INSERT INTO src_category VALUES (330,'経済学',300,'dog.gif');
INSERT INTO src_category VALUES (410,'幼児教育',400,'dog.gif');
INSERT INTO src_category VALUES (420,'小学校',400,'dog.gif');
INSERT INTO src_category VALUES (430,'中学・高校',400,'dog.gif');
INSERT INTO src_category VALUES (440,'社会人',400,'dog.gif');
INSERT INTO src_category VALUES (510,'星座占い',500,'dog.gif');
INSERT INTO src_category VALUES (520,'カード占い',500,'dog.gif');
INSERT INTO src_category VALUES (530,'東洋の占い',500,'dog.gif');
INSERT INTO src_category VALUES (540,'数字占い',500,'dog.gif');
INSERT INTO src_category VALUES (610,'住まい',600,'dog.gif');
INSERT INTO src_category VALUES (620,'家族',600,'dog.gif');
INSERT INTO src_category VALUES (630,'生活ガイド',600,'dog.gif');
INSERT INTO src_category VALUES (710,'雑誌',700,'dog.gif');
INSERT INTO src_category VALUES (720,'テレビ・ラジオ',700,'dog.gif');
INSERT INTO src_category VALUES (730,'新聞',700,'dog.gif');
INSERT INTO src_category VALUES (810,'科学',800,'dog.gif');
INSERT INTO src_category VALUES (820,'宇宙',800,'dog.gif');
INSERT INTO src_category VALUES (830,'天文学',800,'dog.gif');
INSERT INTO src_category VALUES (111,'カード',110,'cat.gif');
INSERT INTO src_category VALUES (112,'切手',110,'cat.gif');
INSERT INTO src_category VALUES (113,'おまけ',110,'cat.gif');
INSERT INTO src_category VALUES (114,'縁起物',110,'cat.gif');
INSERT INTO src_category VALUES (115,'時計',110,'cat.gif');
INSERT INTO src_category VALUES (121,'ポップス',120,'cat.gif');
INSERT INTO src_category VALUES (122,'クラシック',120,'cat.gif');
INSERT INTO src_category VALUES (123,'童謡',120,'cat.gif');
INSERT INTO src_category VALUES (124,'伝統音楽',120,'cat.gif');
INSERT INTO src_category VALUES (125,'ジャズ',120,'cat.gif');
INSERT INTO src_category VALUES (131,'手芸',130,'cat.gif');
INSERT INTO src_category VALUES (132,'木工',130,'cat.gif');
INSERT INTO src_category VALUES (133,'ガラス',130,'cat.gif');
INSERT INTO src_category VALUES (134,'陶芸',130,'cat.gif');
INSERT INTO src_category VALUES (135,'その他工作・工芸',130,'cat.gif');
INSERT INTO src_category VALUES (141,'国内旅行',140,'cat.gif');
INSERT INTO src_category VALUES (142,'海外旅行',140,'cat.gif');
INSERT INTO src_category VALUES (143,'宿',140,'cat.gif');
INSERT INTO src_category VALUES (144,'観光',140,'cat.gif');
INSERT INTO src_category VALUES (145,'チケット',140,'cat.gif');
INSERT INTO src_category VALUES (151,'球技',150,'cat.gif');
INSERT INTO src_category VALUES (152,'陸上',150,'cat.gif');
INSERT INTO src_category VALUES (153,'水泳',150,'cat.gif');
INSERT INTO src_category VALUES (154,'格闘技',150,'cat.gif');
INSERT INTO src_category VALUES (155,'winterスポーツ',150,'cat.gif');
INSERT INTO src_category VALUES (211,'栄養',210,'cat.gif');
INSERT INTO src_category VALUES (212,'食品',210,'cat.gif');
INSERT INTO src_category VALUES (213,'レシピ',210,'cat.gif');
INSERT INTO src_category VALUES (214,'保存食',210,'cat.gif');
INSERT INTO src_category VALUES (215,'サプリメント',210,'cat.gif');
INSERT INTO src_category VALUES (216,'ストレス',210,'cat.gif');
INSERT INTO src_category VALUES (221,'心理学',220,'cat.gif');
INSERT INTO src_category VALUES (222,'カウンセリング',220,'cat.gif');
INSERT INTO src_category VALUES (241,'治療法',240,'cat.gif');
INSERT INTO src_category VALUES (242,'相談',240,'cat.gif');
INSERT INTO src_category VALUES (831,'彗星・流星',830,'cat.gif');
INSERT INTO src_category VALUES (832,'星座',830,'cat.gif');
INSERT INTO src_category VALUES (833,'オーロラ',830,'cat.gif');

--
-- Table structure for table 'src_master'
--

CREATE TABLE src_master (
  title varchar(100) default NULL,
  url varchar(255) default NULL,
  cid int(11) default NULL,
  sDate date default NULL,
  cnt int(11) default NULL,
  descript varchar(255) default NULL
) TYPE=MyISAM;

--
-- Dumping data for table 'src_master'
--


INSERT INTO src_master VALUES ('食品添加物','http://member.nifty.ne.jp/Y-Yamada/addition',212,'2000-05-16',5339,'食品添加物について詳しく解説。');
INSERT INTO src_master VALUES ('生涯学習のページ','http://member.nifty.ne.jp/Y-Yamada/adult01',440,'2001-07-19',7891,'生涯学習という言葉をご存知ですか？このページでは生涯学習について皆で考えています。');
INSERT INTO src_master VALUES ('通信教育のうらがわ','http://member.nifty.ne.jp/Y-Yamada/adult02',440,'2000-06-12',2349,'通信教育の実態調査。広告に惑わされていませんか？');
INSERT INTO src_master VALUES ('習い事特集','http://member.nifty.ne.jp/Y-Yamada/adult03',440,'2000-11-30',4398,'話題のフラメンコやゴスペルなど。人気の教室検索。');
INSERT INTO src_master VALUES ('一発目覚し時計','http://member.nifty.ne.jp/Y-Yamada/alarm_clock',115,'2000-11-25',7329,'ねぼすけさんもコレで安心。一発で目が覚める目覚し時計。');
INSERT INTO src_master VALUES ('いろいろ灰皿','http://member.nifty.ne.jp/Y-Yamada/ashtray',113,'2000-02-04',16398,'タバコの景品灰皿。結構色々ある。お気に入り携帯灰皿。');
INSERT INTO src_master VALUES ('月と星の観察日記','http://member.nifty.ne.jp/Y-Yamada/astoronomy01',830,'2000-04-10',5135,'夏休みに毎日つけた月と星の観察日記のページです。');
INSERT INTO src_master VALUES ('天体写真撮影','http://member.nifty.ne.jp/Y-Yamada/astoronomy02',830,'2001-03-20',3464,'天体写真の取り方を図を使って詳しく解説。デジタルカメラ。');
INSERT INTO src_master VALUES ('日食のすべて','http://member.nifty.ne.jp/Y-Yamada/astoronomy03',830,'2000-04-01',7453,'日食の始まりから終わりまでを写真撮影。世界各地の日食。');
INSERT INTO src_master VALUES ('オーロラ研究','http://member.nifty.ne.jp/Y-Yamada/aurora01',833,'2000-08-09',1235,'オーロラについての研究結果発表。オーロラ関連リンク。');
INSERT INTO src_master VALUES ('アラスカ旅行','http://member.nifty.ne.jp/Y-Yamada/aurora02',833,'2001-06-10',6342,'アラスカ旅行。オーロラの撮影に成功。とても幻想的です。');
INSERT INTO src_master VALUES ('南極とオーロラと','http://member.nifty.ne.jp/Y-Yamada/aurora03',833,'1999-10-28',16352,'南極での暮らしぶりについて。オーロラを背景にパチリ。');
INSERT INTO src_master VALUES ('はじめてのえいご','http://member.nifty.ne.jp/Y-Yamada/babyhood01',410,'2000-09-08',4332,'ABCの歌からはじまり、日常会話まで。幼児の為の英語教室。');
INSERT INTO src_master VALUES ('スポーツで脳を鍛える','http://member.nifty.ne.jp/Y-Yamada/babyhood02',410,'2000-04-01',9438,'音楽にあわせて飛んだりはねたりしながら、国語や算数の学習。');
INSERT INTO src_master VALUES ('はだしで遊ぶ','http://member.nifty.ne.jp/Y-Yamada/babyhood03',410,'2001-11-09',1374,'当幼稚園では、全員一年中はだしです。足の裏をしげきすることでは、とても良いことです。');
INSERT INTO src_master VALUES ('バドミントン同好会','http://member.nifty.ne.jp/Y-Yamada/bado',151,'2000-10-19',5237,'バドミントン好きな人なら誰でもどうぞ！年齢も関係なしです。');
INSERT INTO src_master VALUES ('バンド','http://member.nifty.ne.jp/Y-Yamada/band',121,'2001-04-03',12726,'これから売れる今、注目のバンド。');
INSERT INTO src_master VALUES ('バトンタッチ','http://member.nifty.ne.jp/Y-Yamada/baton',152,'2000-05-11',5393,'運動会と言えばリレー。リレーと言えばバトンタッチ。');
INSERT INTO src_master VALUES ('ボブスレーとリュージュ','http://member.nifty.ne.jp/Y-Yamada/bobu',155,'2001-12-19',4297,'ボブスレーとリュージュについて解説。冬季オリンピック。');
INSERT INTO src_master VALUES ('書籍','http://member.nifty.ne.jp/Y-Yamada/book_classic',122,'2000-09-11',8397,'クラシック音楽に関する書籍販売。検索も簡単。');
INSERT INTO src_master VALUES ('お勧めブランド','http://member.nifty.ne.jp/Y-Yamada/brand',215,'2000-09-01',3428,'サプリメントのお勧めブランドをご紹介。');
INSERT INTO src_master VALUES ('文楽・浄瑠璃','http://member.nifty.ne.jp/Y-Yamada/bunraku',124,'2001-09-18',4307,'人形浄瑠璃・文楽の解説。古典芸能関連リンク集。');
INSERT INTO src_master VALUES ('缶詰料理','http://member.nifty.ne.jp/Y-Yamada/can',214,'2000-06-01',9782,'コレも缶詰。アレも缶詰。缶詰でできる料理。');
INSERT INTO src_master VALUES ('時計のお手入れ','http://member.nifty.ne.jp/Y-Yamada/care_clock',115,'2000-04-18',4972,'さまざまの時計のお手入れの仕方を解説。');
INSERT INTO src_master VALUES ('クラシックCD','http://member.nifty.ne.jp/Y-Yamada/cd_classical',122,'1999-03-19',32807,'クラシックCDランキング。今月の注目CD。');
INSERT INTO src_master VALUES ('中国の切手','http://member.nifty.ne.jp/Y-Yamada/cha_stamp',112,'2000-02-08',1276,'中国の住んでいた頃にあつめたきっての数々。貴重な切手多数あり。');
INSERT INTO src_master VALUES ('チェックストレス','http://member.nifty.ne.jp/Y-Yamada/check',216,'2000-08-09',8943,'定期的にストレスチェック。溜め込まない為に。');
INSERT INTO src_master VALUES ('こどもたちの歌','http://member.nifty.ne.jp/Y-Yamada/child_cd',123,'2000-09-11',12897,'童謡CD。意外と知らない曲がたくさんあるものです。');
INSERT INTO src_master VALUES ('こどものための楽譜','http://member.nifty.ne.jp/Y-Yamada/child_score',123,'1999-08-26',20947,'幼児向け童謡楽譜。すべてひらがなでイラスト入りです。');
INSERT INTO src_master VALUES ('はとぽっぽたいそう','http://member.nifty.ne.jp/Y-Yamada/children_gymnas',150,'1999-04-01',18294,'童謡はとぽっぽなどなどに合わせる、幼児用体操。');
INSERT INTO src_master VALUES ('童謡研究所','http://member.nifty.ne.jp/Y-Yamada/children_song',123,'2000-05-09',14637,'外国の童謡と日本の童謡の比較。国内地域別歌い方比較。');
INSERT INTO src_master VALUES ('ちょこっとチョコレート','http://member.nifty.ne.jp/Y-Yamada/chocolate',113,'2000-11-21',8398,'チョコの中からちょこっと出てくるおもちゃたち。どうぶつの赤ちゃん。');
INSERT INTO src_master VALUES ('我が家の置時計','http://member.nifty.ne.jp/Y-Yamada/clock',115,'2001-01-13',3421,'各部屋にある我が家の置時計をご紹介。');
INSERT INTO src_master VALUES ('かわいい布集め','http://member.nifty.ne.jp/Y-Yamada/cloth',131,'2000-11-15',5983,'花柄やキャラクター柄などいろんな柄が豊富。もちろん材質にもこだわってます。');
INSERT INTO src_master VALUES ('カウンセラーをさがせ','http://member.nifty.ne.jp/Y-Yamada/counselor01',222,'2000-07-28',5142,'1人で悩んでても仕方ない。上手なカウンセラーの見つけ方。');
INSERT INTO src_master VALUES ('メールでカウンセリング','http://member.nifty.ne.jp/Y-Yamada/counselor02',222,'2000-05-18',2356,'メールを使って気楽にカウンセリングを受けてみよう。');
INSERT INTO src_master VALUES ('女性の悩み','http://member.nifty.ne.jp/Y-Yamada/counselor03',222,'2001-07-24',8252,'女性にしか分からない悩みはやっぱり女性のカウンセラー。');
INSERT INTO src_master VALUES ('音楽療法のすべて','http://member.nifty.ne.jp/Y-Yamada/cure01',241,'2000-02-18',5123,'障害児や痴呆性老人に対するミュージックセラピーについて');
INSERT INTO src_master VALUES ('アニマルセラピー','http://member.nifty.ne.jp/Y-Yamada/cure02',241,'2000-06-01',6234,'動物介在療法。老人ホームでも大人気。');
INSERT INTO src_master VALUES ('園芸療法','http://member.nifty.ne.jp/Y-Yamada/cure03',241,'2001-04-04',2341,'ガーデニングを通してリフレッシュ。リラックス。');
INSERT INTO src_master VALUES ('危険なたべもの','http://member.nifty.ne.jp/Y-Yamada/danger',212,'2000-02-19',4271,'巷に出回っている危険な食品について解説。');
INSERT INTO src_master VALUES ('だるまるま','http://member.nifty.ne.jp/Y-Yamada/dharma',114,'2000-07-25',3167,'いろいろなだるまの紹介。婚礼用だるま。受験合格用だるま。');
INSERT INTO src_master VALUES ('ぼっちゃ〜ん','http://member.nifty.ne.jp/Y-Yamada/diving',153,'2001-09-10',7764,'飛び込み競技のルール説明。飛び込みのできるプール施設。');
INSERT INTO src_master VALUES ('童謡の会','http://member.nifty.ne.jp/Y-Yamada/douyounokai',123,'2000-05-18',7286,'一緒に童謡を歌ってみませんか。初心者歓迎です。');
INSERT INTO src_master VALUES ('絶対安産','http://member.nifty.ne.jp/Y-Yamada/easy_delivery',114,'2001-03-18',7438,'この安産のお守りでもう心配なし。元気な子どもが生まれます。');
INSERT INTO src_master VALUES ('夢のマイホーム','http://member.nifty.ne.jp/Y-Yamada/economy01',310,'2000-11-26',2604,'そろそろマイホームを持ちたいなぁ。でも、おかねが…住宅購入に関わるお金のお話。');
INSERT INTO src_master VALUES ('とっても簡単確定申告','http://member.nifty.ne.jp/Y-Yamada/economy02',310,'2000-06-10',3216,'毎年、年度末になると頭を悩ませてしまう確定申告。ついつい後回しになって、いつも焦ってやる事に。確定申告Q&A');
INSERT INTO src_master VALUES ('神様もお手上げ','http://member.nifty.ne.jp/Y-Yamada/economy03',310,'2001-04-09',2820,'宗教と言えども税金は払わねば。宗教法人の税金と会計について。マルサの入ったとある教会のエピソード付。');
INSERT INTO src_master VALUES ('税金むかしものがたり','http://member.nifty.ne.jp/Y-Yamada/economy04',310,'2001-05-18',2648,'昔の税金と今の税金を楽しいイラストで解説。租税について詳しく説明。税金の使われ方、知ってますか？');
INSERT INTO src_master VALUES ('お金にかかわるお仕事','http://member.nifty.ne.jp/Y-Yamada/economy06',330,'2001-02-27',1065,'銀行員やら税理士やら会計士。お金にかかわる職業はいっぱい。お金の専門家になる。会計用語について');
INSERT INTO src_master VALUES ('金は天下のまわりもの','http://member.nifty.ne.jp/Y-Yamada/economy07',330,'2001-03-26',1603,'お金はいつから使われてるの？経営学の基礎もわかりやすく解説。ぐるぐるまわるお金の行き先。');
INSERT INTO src_master VALUES ('今さら、現代社会の勉強','http://member.nifty.ne.jp/Y-Yamada/economy08',330,'2001-07-02',2105,'経済思想史､社会思想史ってなんじゃらほい。学生のうちにまじめに勉強しとけばよかった…');
INSERT INTO src_master VALUES ('ニッポン大赤字','http://member.nifty.ne.jp/Y-Yamada/economy09',330,'2000-09-28',1803,'経済政策について。不良債権ってなんだろう。子どもにもわかる、詳しくやさしい説明です。');
INSERT INTO src_master VALUES ('建物のない銀行','http://member.nifty.ne.jp/Y-Yamada/economy11',300,'2001-02-07',8065,'インターネットバンキングの説明。わざわざ銀行まで行かなくても、家から振込・送金・など出来ちゃうの。');
INSERT INTO src_master VALUES ('魔法のお金','http://member.nifty.ne.jp/Y-Yamada/economy12',300,'2000-06-09',8403,'電子マネーだけで生活できる？もう、お財布は必要ない。お金がなくなる日。デビットカードって知ってる？');
INSERT INTO src_master VALUES ('居ながらにして丸儲け','http://member.nifty.ne.jp/Y-Yamada/economy13',300,'2001-08-03',8615,'ホームトレードってなんだろう。おうちに居ながらにして、儲けちゃう術教えちゃう。　電話やメールで株の売買');
INSERT INTO src_master VALUES ('これからのビジネス','http://member.nifty.ne.jp/Y-Yamada/economy14',300,'2000-07-16',8614,'企業間電子商取引に関する国内外の実用化事例。想定される問題に対する、解決策も多数用意。');
INSERT INTO src_master VALUES ('教育改革とは','http://member.nifty.ne.jp/Y-Yamada/education01',400,'2000-08-06',9873,'巷で叫ばれている教育改革とは何か。本当に教育は変わるのか。');
INSERT INTO src_master VALUES ('これからの教育','http://member.nifty.ne.jp/Y-Yamada/education02',400,'2001-06-19',23487,'これからの教育について。学校のあり方。指導法など。');
INSERT INTO src_master VALUES ('教育者として','http://member.nifty.ne.jp/Y-Yamada/education03',400,'2000-11-15',3478,'教育者としてどうあるべきか。教員採用試験の見直しなど。');
INSERT INTO src_master VALUES ('生きる力を','http://member.nifty.ne.jp/Y-Yamada/education04',400,'2000-07-02',5382,'生きる力とは何か。特別活動・道徳教育について。');
INSERT INTO src_master VALUES ('栄養士になりたい','http://member.nifty.ne.jp/Y-Yamada/eiyou',211,'2000-08-10',4969,'栄養士になるにはどうすればいいのか。');
INSERT INTO src_master VALUES ('栄養士のおすすめレシピ','http://member.nifty.ne.jp/Y-Yamada/eiyou_menu',213,'1999-02-14',10298,'管理栄養士がおすすめする栄養満点簡単レシピ。');
INSERT INTO src_master VALUES ('家族で駅伝','http://member.nifty.ne.jp/Y-Yamada/ekiden',620,'2001-08-12',4169,'親戚・家族チームで競い合う駅伝大会。');
INSERT INTO src_master VALUES ('お店めぐり','http://member.nifty.ne.jp/Y-Yamada/elementary01',420,'2001-09-07',7439,'「せいかつ」の授業。学校周辺のお店めぐりをして、お店の人から話を聞きます。');
INSERT INTO src_master VALUES ('学級新聞ホームページ','http://member.nifty.ne.jp/Y-Yamada/elementary02',420,'2000-10-17',6541,'4年1組の学級新聞ホームページ。学区内でのニュースも掲載。');
INSERT INTO src_master VALUES ('ペットボトルでロケット作り','http://member.nifty.ne.jp/Y-Yamada/elementary03',420,'2000-04-01',7324,'ペットボトルでロケットを作りました。理科の授業が楽しくなりました。');
INSERT INTO src_master VALUES ('共働きと育児','http://member.nifty.ne.jp/Y-Yamada/family01',620,'2000-08-29',5478,'共働きの家庭における育児のあり方についての話し合い。どんどん投稿ください。');
INSERT INTO src_master VALUES ('二世帯住居について','http://member.nifty.ne.jp/Y-Yamada/family02',620,'2000-03-01',6934,'二世帯住居のメリットデメリット。体験談を交えて詳しく。');
INSERT INTO src_master VALUES ('家族の誕生日','http://member.nifty.ne.jp/Y-Yamada/family03',620,'2000-06-23',3124,'家族の誕生日には、毎回決まって手巻き寿司。一家団欒のひと時です。');
INSERT INTO src_master VALUES ('民謡について','http://member.nifty.ne.jp/Y-Yamada/folk',124,'1999-03-12',18361,'各地の民謡研究。三味線、太鼓、唄の教室紹介。');
INSERT INTO src_master VALUES ('たべもので健康','http://member.nifty.ne.jp/Y-Yamada/food_health',211,'2000-02-18',9802,'薬を飲むより、食事で健康になろう。');
INSERT INTO src_master VALUES ('早食い大食い','http://member.nifty.ne.jp/Y-Yamada/food01',210,'2000-07-12',4329,'早食い・大食いが体に及ぼす影響について。よく噛んでゆっくりと食べよう。');
INSERT INTO src_master VALUES ('雑誌の後ろの方','http://member.nifty.ne.jp/Y-Yamada/fortune01',510,'2001-01-10',9064,'コンビニや本屋で雑誌を見かけると、ついつい後ろの方の星座占いを見てしまうよね。どんな時に、占いたくなる？');
INSERT INTO src_master VALUES ('へびつかい座？','http://member.nifty.ne.jp/Y-Yamada/fortune02',510,'2001-02-06',94562,'皆さんは13星座占いって知ってますか？いつもの12星座にへびつかい座という、星座が加わってるらしい。');
INSERT INTO src_master VALUES ('１２通りしかないのかい','http://member.nifty.ne.jp/Y-Yamada/fortune03',510,'2000-12-11',9452,'星座占いと言うとやっぱり12.星座。でも、12通りしかないなんて…そこで、血液型などもプラスしてもっと詳しく占ってみよう。');
INSERT INTO src_master VALUES ('マニアック星座占い','http://member.nifty.ne.jp/Y-Yamada/fortune04',510,'2001-01-16',11206,'誕生日をもとに、星座で占うのはあたりまえ。でも、ここでは更に細かく生まれた日時まで参考にして占います。');
INSERT INTO src_master VALUES ('タロット恋愛','http://member.nifty.ne.jp/Y-Yamada/fortune06',520,'2001-01-17',12105,'タロットカードを使った恋愛占いをご紹介。いろんな種類のタロットカードの販売もやってますよ。');
INSERT INTO src_master VALUES ('トランぷりん','http://member.nifty.ne.jp/Y-Yamada/fortune07',520,'2001-02-20',12305,'トランプを使った恋愛占いの総合サイト。いろんな占いがあるから、いっぱい試してみてね。');
INSERT INTO src_master VALUES ('らんらんトランプ','http://member.nifty.ne.jp/Y-Yamada/fortune08',520,'2001-02-26',14095,'トランプカードでいろいろな占いをやってみよう。恋愛占いはもちろんの事、金運や健康運も。');
INSERT INTO src_master VALUES ('ゲームでうらない','http://member.nifty.ne.jp/Y-Yamada/fortune09',520,'2001-03-16',16307,'いろんなトランプゲームを通して占っちゃう。神経衰弱・七ならべなどなど。ビリでも運勢は最高だったりして。');
INSERT INTO src_master VALUES ('数学じゃないよ','http://member.nifty.ne.jp/Y-Yamada/fortune11',530,'2001-04-16',16037,'今、巷で噂の0学占い。あなたはもう、やってみた？某テレビ番組でも取り上げられた０学占いのサイトです。');
INSERT INTO src_master VALUES ('水周りに花はダメ','http://member.nifty.ne.jp/Y-Yamada/fortune12',530,'2001-05-24',17036,'風水占い。水周りにお花を飾っちゃいけない、とか…方角によって、幸運を呼び込む色があるとか。');
INSERT INTO src_master VALUES ('四柱推命','http://member.nifty.ne.jp/Y-Yamada/fortune13',530,'2001-05-16',15064,'４つの柱（年・月・日・時）から推命するから四柱推命。あなたの性格と今月の運勢を占います。');
INSERT INTO src_master VALUES ('おみくじら','http://member.nifty.ne.jp/Y-Yamada/fortune14',530,'2001-06-03',12064,'くじらくんのおみくじ。今日の運勢は？鯨をクリックすると、潮を吹きます。その後結果が出るよ。');
INSERT INTO src_master VALUES ('ばあすでぃ占い','http://member.nifty.ne.jp/Y-Yamada/fortune16',540,'2001-06-01',14502,'あの人と私の生年月日を足したり引いたりして、いろいろ占えちゃうよ。さあて、相性はどうかしら。');
INSERT INTO src_master VALUES ('リンリン占い','http://member.nifty.ne.jp/Y-Yamada/fortune17',540,'2001-01-03',16175,'自分の携帯番号から占うリンリン占い。携帯を変えたら勿論、運勢も変わっちゃいます。');
INSERT INTO src_master VALUES ('My　Nameうらない','http://member.nifty.ne.jp/Y-Yamada/fortune18',540,'2001-04-16',10342,'名前を数字に置き換えて、占います。相性占いから性格判断まで。あの人の事も占ってみる？');
INSERT INTO src_master VALUES ('誕生日恋愛','http://member.nifty.ne.jp/Y-Yamada/fortune19',540,'2001-06-21',11206,'生年月日、曜日、日時から占う本格、誕生日占い。今後の貴女の運勢を知って、楽しく過ごそう。');
INSERT INTO src_master VALUES ('皿割り占い','http://member.nifty.ne.jp/Y-Yamada/fortune21',500,'2001-04-27',15064,'パッリーン！と割ったお皿で占う、皿割り占い。なんだかもったいないような気もするけど…お岩さんも嘆いちゃう？');
INSERT INTO src_master VALUES ('マダム・ダージリン','http://member.nifty.ne.jp/Y-Yamada/fortune22',500,'2001-04-30',13023,'気を込めた紅茶を布にたらして、その染みで占う､紅茶染み占い。うさんくさいけど、当たるんです。');
INSERT INTO src_master VALUES ('ダーツで大当たり','http://member.nifty.ne.jp/Y-Yamada/fortune23',500,'2001-05-09',14065,'そのままズバリのダーツ占い。ダーツの当たった所があなたの運勢。とってもシンプルだけど、ダーツを当てるのが難しい。');
INSERT INTO src_master VALUES ('可憐な花','http://member.nifty.ne.jp/Y-Yamada/fortune24',500,'2001-04-29',12035,'昔からある花びら占い。やっぱりコレが一番当たる。でも、花びらの少ない花じゃあねぇ。');
INSERT INTO src_master VALUES ('こんこんさま','http://member.nifty.ne.jp/Y-Yamada/fox',114,'1999-08-04',12367,'我が家のきつね。こんこんさま。何でも叶えてくれる。');
INSERT INTO src_master VALUES ('何でも冷凍','http://member.nifty.ne.jp/Y-Yamada/freeze',210,'2000-02-01',5439,'ほんの少しの手間でいろいろ冷凍保存。');
INSERT INTO src_master VALUES ('かえるのぴょんたくん','http://member.nifty.ne.jp/Y-Yamada/frog',152,'2000-06-18',4107,'三段跳びの跳び方をマンガをつかって分かりやすく説明。');
INSERT INTO src_master VALUES ('雅楽の部屋','http://member.nifty.ne.jp/Y-Yamada/gagaku',124,'2000-06-09',4625,'雅楽団体の紹介。雅楽器の解説。唐楽、高麗楽などについて。');
INSERT INTO src_master VALUES ('ガリコのおまけ','http://member.nifty.ne.jp/Y-Yamada/galiko',113,'2000-04-12',18926,'のりものシリーズ。くらしシリーズ。ヒーローシリーズ。');
INSERT INTO src_master VALUES ('遺伝子組換え食品は','http://member.nifty.ne.jp/Y-Yamada/gene',212,'2001-09-10',4231,'遺伝子組換え食品について説明。');
INSERT INTO src_master VALUES ('元気もりもり','http://member.nifty.ne.jp/Y-Yamada/genki',210,'2001-02-01',4292,'栄養に関する基本知識。症状別不足栄養一覧。');
INSERT INTO src_master VALUES ('グッズで解消','http://member.nifty.ne.jp/Y-Yamada/goods',216,'2001-02-04',9873,'ストレス解消グッズを販売。もぐらたたきおやじ版、ゴキブリ版などなど。');
INSERT INTO src_master VALUES ('里のガラス工房','http://member.nifty.ne.jp/Y-Yamada/grass01',133,'2000-08-09',1532,'広島の山奥のガラス工房を見学した。ガラスの風鈴を作ってみました。');
INSERT INTO src_master VALUES ('ハンバーガーのおまけ','http://member.nifty.ne.jp/Y-Yamada/hamburger',110,'2001-02-04',17368,'人気の映画キャラクターフィギュアつきストラップ。');
INSERT INTO src_master VALUES ('かなづちの会','http://member.nifty.ne.jp/Y-Yamada/hammer',153,'2000-12-15',4242,'泳げる人は入会できません。泳げない人の為の水泳サークル。');
INSERT INTO src_master VALUES ('花札しましょ','http://member.nifty.ne.jp/Y-Yamada/hanafuda',320,'2000-10-01',5673,'花札のルールを分かりやすく説明。色々な遊び方紹介。');
INSERT INTO src_master VALUES ('お囃子','http://member.nifty.ne.jp/Y-Yamada/hayashi',124,'2000-02-01',2398,'祭囃子の歴史と楽器の説明。年間行事スケジュール。');
INSERT INTO src_master VALUES ('より高くより遠くへ','http://member.nifty.ne.jp/Y-Yamada/high',152,'2001-08-10',4217,'走り高跳び、幅跳びの説明。競技大会情報。');
INSERT INTO src_master VALUES ('6年間英語','http://member.nifty.ne.jp/Y-Yamada/highschool01',430,'1999-07-01',7498,'中高一貫校の丸星学園では、6年間通しで英語授業を行っています。');
INSERT INTO src_master VALUES ('生徒の天使','http://member.nifty.ne.jp/Y-Yamada/highschool02',430,'1999-05-18',16278,'思春期の難しい精神状態を研究。スクールカウンセラー。');
INSERT INTO src_master VALUES ('クラブ活動','http://member.nifty.ne.jp/Y-Yamada/highschool03',430,'2000-11-16',5981,'運動部。文化部。それぞれのクラブ活動、大会成績を掲載。');
INSERT INTO src_master VALUES ('ぱっかぱっか倶楽部','http://member.nifty.ne.jp/Y-Yamada/horse',150,'2000-08-10',3496,'アットホームな乗馬倶楽部。随時無料体験受付中。');
INSERT INTO src_master VALUES ('パワフルママの砲丸投げ','http://member.nifty.ne.jp/Y-Yamada/hougan',152,'2000-01-18',4307,'ストレス解消？ママの砲丸投げ。パパも投げ飛ばされちゃう？');
INSERT INTO src_master VALUES ('ザ・カーリング','http://member.nifty.ne.jp/Y-Yamada/ice',155,'2000-09-07',1108,'カーリングのルール説明。用語集や選手紹介。');
INSERT INTO src_master VALUES ('輸入食品のメリット・デメリット','http://member.nifty.ne.jp/Y-Yamada/import',212,'1999-01-19',3298,'輸入食品を食べますか？意外と知らない身近な輸入食品。');
INSERT INTO src_master VALUES ('きっての中の昆虫たち','http://member.nifty.ne.jp/Y-Yamada/insect_stamp',112,'2000-04-02',12386,'さまざまな昆虫切手を紹介。');
INSERT INTO src_master VALUES ('日本の楽器・世界の楽器','http://member.nifty.ne.jp/Y-Yamada/instrument',120,'2000-05-11',4879,'日本古来の楽器から世界各国の民族音楽楽器まで解説。');
INSERT INTO src_master VALUES ('招きにゃん','http://member.nifty.ne.jp/Y-Yamada/invite',114,'2000-11-13',6849,'招き猫のコレクション紹介。お気に入り招き猫写真つき。');
INSERT INTO src_master VALUES ('ジャズ基礎講座','http://member.nifty.ne.jp/Y-Yamada/jazz_kiso',125,'2000-06-18',8367,'ジャズの歴史。ジャズの聴き方。');
INSERT INTO src_master VALUES ('ジャズオーケストラ','http://member.nifty.ne.jp/Y-Yamada/jazz_orchestra',125,'1999-11-17',10123,'アマチュアビッグバンド。メンバー紹介。ライブ活動スケジュール。');
INSERT INTO src_master VALUES ('ジャズ喫茶Poo','http://member.nifty.ne.jp/Y-Yamada/jazz_tea',125,'2000-09-11',12169,'ジャズの生演奏をたのしみながら、ゆっくりティータイムを。');
INSERT INTO src_master VALUES ('日本の切手','http://member.nifty.ne.jp/Y-Yamada/jp_stamp',112,'2000-01-30',9832,'日本の切手カタログ。最新記念切手。');
INSERT INTO src_master VALUES ('ランキングJ-POP','http://member.nifty.ne.jp/Y-Yamada/j-pop',121,'2000-02-14',21879,'J-POP。シングル、アルバム週間売上ランキング。');
INSERT INTO src_master VALUES ('ジュースといっしょ','http://member.nifty.ne.jp/Y-Yamada/juice',113,'2000-04-19',13786,'かわいいボトルキャップ。1万本に1本の確率でゴールドキャップ。');
INSERT INTO src_master VALUES ('症状別看護','http://member.nifty.ne.jp/Y-Yamada/kango01',230,'2000-07-17',9782,'症状別の看護の仕方について。家庭でできる応急処置など。');
INSERT INTO src_master VALUES ('ナースのひみつ','http://member.nifty.ne.jp/Y-Yamada/kango02',230,'2000-02-02',9535,'ナースだけが知っている病院・医者の秘密。ナース達の本音。');
INSERT INTO src_master VALUES ('患者のきもち','http://member.nifty.ne.jp/Y-Yamada/kango03',230,'1999-02-10',4322,'看護婦の私が患者となってはじめて知った、患者の気持ち。');
INSERT INTO src_master VALUES ('カラオケ','http://member.nifty.ne.jp/Y-Yamada/karaoke',121,'2000-12-21',28312,'最新ヒットカラオケ。上手に歌えるワンポイント講座。');
INSERT INTO src_master VALUES ('ザ・カルタ','http://member.nifty.ne.jp/Y-Yamada/karuta',111,'2001-03-17',8948,'カルタ収集。カルタの歴史について。日本で行われる競技カルタ大会。');
INSERT INTO src_master VALUES ('おいしいレトルト','http://member.nifty.ne.jp/Y-Yamada/keep',214,'2000-11-18',3427,'こんなにあるレトルト食材。保存期間も長くて便利。');
INSERT INTO src_master VALUES ('日本拳法のすべて','http://member.nifty.ne.jp/Y-Yamada/kenpou',154,'2000-06-05',1296,'日本拳法の説明。技術や理論など解説。');
INSERT INTO src_master VALUES ('キックボクシングの歴史','http://member.nifty.ne.jp/Y-Yamada/kick',154,'2001-08-10',3112,'キックボクシングの歴史について。ムエタイって知ってる？');
INSERT INTO src_master VALUES ('初めての手編み','http://member.nifty.ne.jp/Y-Yamada/knit',131,'2001-08-11',2879,'針を持つのも初めて。超初心者でもかならず出来る手編みのセーター。');
INSERT INTO src_master VALUES ('組み合わせサプリ','http://member.nifty.ne.jp/Y-Yamada/kumiawase',215,'2000-11-18',3894,'食べ合わせがあるようにサプリにも組み合わせがあるんです。');
INSERT INTO src_master VALUES ('カーナビでレッツゴー','http://member.nifty.ne.jp/Y-Yamada/life01',100,'2000-04-29',948,'カーナビの製品案内とアフター保証。もう迷子にならない、これで遠出も安心です。');
INSERT INTO src_master VALUES ('できる奥さんサイト','http://member.nifty.ne.jp/Y-Yamada/life01',600,'2000-11-11',21348,'家事も仕事も育児も何でもこなせる奥さん。もちろん自分の時間だって作っちゃいます。');
INSERT INTO src_master VALUES ('節約じょうず','http://member.nifty.ne.jp/Y-Yamada/life02',600,'2000-04-23',24902,'ほんの少しの努力と知恵でこんなに節約上手。いろんなアイデアを伝授します。');
INSERT INTO src_master VALUES ('掃除の裏技','http://member.nifty.ne.jp/Y-Yamada/life03',600,'2000-04-10',5092,'新聞紙で窓ガラス掃除などなど。意外なものできれいに仕上げる裏技特集。');
INSERT INTO src_master VALUES ('ドライブのためのBGM','http://member.nifty.ne.jp/Y-Yamada/life04',100,'2001-04-08',945,'初めてのデートでドライブ。音質からこだわった彼は、オーディオを新調した。果たして結果は…');
INSERT INTO src_master VALUES ('一人で着付け','http://member.nifty.ne.jp/Y-Yamada/life21',100,'1905-06-22',3065,'美容院へ行かなくても、一人で着られる。着物の着付けを、簡単説明。これで友人の結婚式にも、着物で出席！');
INSERT INTO src_master VALUES ('新人デザイナー','http://member.nifty.ne.jp/Y-Yamada/life25',100,'2001-03-01',6003,'これから売れるであろう、新人デザイナーの商品紹介。誰よりも早く、新ブランドをGetしよう。');
INSERT INTO src_master VALUES ('ライターコレクション','http://member.nifty.ne.jp/Y-Yamada/lighter',110,'1999-08-02',20188,'無料で貰ったライター。種類も数も豊富。収納場所に困ってます。');
INSERT INTO src_master VALUES ('おすすめライブ情報','http://member.nifty.ne.jp/Y-Yamada/live',125,'2000-07-06',4730,'ジャズコンサート開催スケジュール。チケット販売。');
INSERT INTO src_master VALUES ('ファッション雑誌カンカン','http://member.nifty.ne.jp/Y-Yamada/magazine01',710,'1999-05-02',4315,'流行先取りファッション雑誌。スーパーモデルも愛用化粧品。');
INSERT INTO src_master VALUES ('週間4コマ','http://member.nifty.ne.jp/Y-Yamada/magazine02',710,'2001-04-02',4532,'読者投稿型マンガ雑誌。週間4コマ。');
INSERT INTO src_master VALUES ('わんわんBOOK','http://member.nifty.ne.jp/Y-Yamada/magazine03',710,'2001-08-04',6233,'ペット自慢。わんちゃんのためのお洋服、アクセサリー。とっておき散歩コース。');
INSERT INTO src_master VALUES ('メルマガえいよう','http://member.nifty.ne.jp/Y-Yamada/mail_magazine',211,'2000-05-03',4739,'栄養士の栄子さんによるとってもためになるメールマガジン。');
INSERT INTO src_master VALUES ('メディアのあり方','http://member.nifty.ne.jp/Y-Yamada/media01',700,'2001-02-04',3421,'どこまでが許されるのか。メディアのありかたについて議論。');
INSERT INTO src_master VALUES ('インターネットニュース','http://member.nifty.ne.jp/Y-Yamada/media02',700,'2001-04-12',5789,'毎日のニュースを素早くキャッチ。リアルタイムニュース。');
INSERT INTO src_master VALUES ('マスコミ業界','http://member.nifty.ne.jp/Y-Yamada/media03',700,'2000-05-03',3241,'マスコミ業界の就職方法などについて。先輩達の生の声も収録。');
INSERT INTO src_master VALUES ('救急救命士の仕事','http://member.nifty.ne.jp/Y-Yamada/medical01',240,'2000-03-02',9873,'救急救命士の仕事について。一日の仕事を追跡。');
INSERT INTO src_master VALUES ('医療事務','http://member.nifty.ne.jp/Y-Yamada/medical02',240,'1999-01-03',6432,'保険請求事務技能検定試験について。試験範囲、過去問題。');
INSERT INTO src_master VALUES ('医療倫理について','http://member.nifty.ne.jp/Y-Yamada/medical03',240,'2001-09-21',5287,'レセプト開示、遺族へのカルテ開示等の問題についての話し合いのページ');
INSERT INTO src_master VALUES ('眠れない日々','http://member.nifty.ne.jp/Y-Yamada/medical07',200,'2001-03-13',5054,'人間の体は意外とデリケート。ちょっとした事が原因で不眠症に。睡眠のメカニズムを知って今日から快眠');
INSERT INTO src_master VALUES ('ピーちゃんにバイバイ','http://member.nifty.ne.jp/Y-Yamada/medical09',200,'2001-07-08',5604,'突然の腹痛、そしてピーちゃんのお出まし。食中毒は、本当に怖い。そこで、食中毒の　予防法､応急処置について解説。');
INSERT INTO src_master VALUES ('頑張れ母ちゃん','http://member.nifty.ne.jp/Y-Yamada/medical10',200,'2001-02-24',5689,'突然倒れてしまった僕の母ちゃん。即日入院､緊急手術。僕と母ちゃんは､交換日記を始めた。');
INSERT INTO src_master VALUES ('人気着メロ','http://member.nifty.ne.jp/Y-Yamada/melo',120,'2000-05-03',30298,'人気のJ-POP着メロ。ダウンロード。リクエストコーナー。');
INSERT INTO src_master VALUES ('緊張と不安のしくみ','http://member.nifty.ne.jp/Y-Yamada/mental01',220,'2000-07-24',4318,'緊張と不安はどのように体に作用していくのか。図を使って説明。');
INSERT INTO src_master VALUES ('アダルトチルドレンの謎','http://member.nifty.ne.jp/Y-Yamada/mental02',220,'2000-05-09',5318,'アダルトチルドレンと言う言葉を知っていますか？');
INSERT INTO src_master VALUES ('こころの声','http://member.nifty.ne.jp/Y-Yamada/mental03',220,'2000-06-18',9872,'こころは、いつも声を発しています。自分でも気づかない自分の心の声を聞いてみましょう。');
INSERT INTO src_master VALUES ('モダンジャズ','http://member.nifty.ne.jp/Y-Yamada/modern',120,'2000-04-03',7298,'幻の名盤紹介。50年代の作品。曲名検索。');
INSERT INTO src_master VALUES ('オルゴールの響き','http://member.nifty.ne.jp/Y-Yamada/music_box',122,'2000-12-21',4798,'クラシック音楽を中心に定番オルゴールの曲名紹介。');
INSERT INTO src_master VALUES ('ゆらゆらミュージック','http://member.nifty.ne.jp/Y-Yamada/music_yurayura',120,'2000-08-01',2349,'川のせせらぎ、高原のそよ風など。リラクゼーションミュージック。');
INSERT INTO src_master VALUES ('表札','http://member.nifty.ne.jp/Y-Yamada/nameplate',110,'2001-04-21',13786,'家庭に福を呼ぶ表札。');
INSERT INTO src_master VALUES ('なみのおうち','http://member.nifty.ne.jp/Y-Yamada/namihome',131,'2000-07-14',5329,'家の中の手作り小物を写真で紹介。');
INSERT INTO src_master VALUES ('エネルギー危機','http://member.nifty.ne.jp/Y-Yamada/natural01',800,'2000-06-01',9872,'地球上の申告なエネルギー危機。いま、私達にできることは。');
INSERT INTO src_master VALUES ('発電所の種類','http://member.nifty.ne.jp/Y-Yamada/natural02',800,'2000-04-08',21359,'火力、水力、原子力。それぞれについての詳しい説明。');
INSERT INTO src_master VALUES ('太陽エネルギー','http://member.nifty.ne.jp/Y-Yamada/natural03',800,'2000-08-14',25319,'太陽光を利用してエネルギーに変える太陽エネルギー。自然の力は偉大です。');
INSERT INTO src_master VALUES ('新譜','http://member.nifty.ne.jp/Y-Yamada/new_score',120,'2000-08-07',9074,'今月発売の新譜情報。');
INSERT INTO src_master VALUES ('CD新着情報','http://member.nifty.ne.jp/Y-Yamada/newCD',121,'2000-04-17',24897,'今月の新着情報。握手会、サイン会情報。');
INSERT INTO src_master VALUES ('朝一番新聞','http://member.nifty.ne.jp/Y-Yamada/newspaper01',730,'2001-04-20',6243,'どこよりも早く、どこよりも新鮮な情報をご家庭に運びます。');
INSERT INTO src_master VALUES ('地域新聞あじさい','http://member.nifty.ne.jp/Y-Yamada/newspaper02',730,'2001-04-02',3467,'地域密着型新聞あじさい。知りたい事がすぐわかる。');
INSERT INTO src_master VALUES ('ど根性スポーツ','http://member.nifty.ne.jp/Y-Yamada/newspaper03',730,'2001-05-02',4367,'スポーツ情報満載のど根性スポーツ新聞。');
INSERT INTO src_master VALUES ('トールペイント','http://member.nifty.ne.jp/Y-Yamada/paint',132,'2000-08-10',6298,'トールペイントの基礎知識が身に付きます。素材も掲載。');
INSERT INTO src_master VALUES ('パクぱくぱくストレス','http://member.nifty.ne.jp/Y-Yamada/paku',216,'1999-07-16',7985,'ストレスを食べるパクちゃんにおまかせ。何でも書いて！すぐ食べちゃうよ。');
INSERT INTO src_master VALUES ('PCストレス','http://member.nifty.ne.jp/Y-Yamada/pc_stress',216,'2000-01-16',9421,'一日中PCに向かっていると溜まりまくりのストレス。');
INSERT INTO src_master VALUES ('演奏家','http://member.nifty.ne.jp/Y-Yamada/player',120,'2000-01-24',10021,'国内外の有名演奏家の公演情報。プレゼント企画もあります。');
INSERT INTO src_master VALUES ('みんなでトランプ','http://member.nifty.ne.jp/Y-Yamada/playingcard',320,'2000-08-03',10285,'大勢で遊べるトランプゲームを紹介。');
INSERT INTO src_master VALUES ('ぷらすあるふぁ食材','http://member.nifty.ne.jp/Y-Yamada/plus',211,'2001-04-02',12369,'いつもの料理にプラスするだけで、こんなに栄養価が高まります。');
INSERT INTO src_master VALUES ('もう一品','http://member.nifty.ne.jp/Y-Yamada/plus_one',213,'2000-08-05',7893,'何か物足りないときにもう一品。あまりもので作れます。');
INSERT INTO src_master VALUES ('マイポストカード','http://member.nifty.ne.jp/Y-Yamada/postcard',111,'2001-03-05',8427,'私が旅した世界各国の絵葉書。旅先エピソードと共に掲載。');
INSERT INTO src_master VALUES ('おもしろ消印','http://member.nifty.ne.jp/Y-Yamada/postmark',112,'2000-11-27',17298,'消印の見方を画像をつかって解説。種類も豊富。');
INSERT INTO src_master VALUES ('ポーチのおまけ','http://member.nifty.ne.jp/Y-Yamada/pouch',110,'2001-06-09',7219,'意外。1カートンに1個、オリジナルポーチがついてくる。期間限定。');
INSERT INTO src_master VALUES ('プロレス観戦','http://member.nifty.ne.jp/Y-Yamada/prowres',154,'2000-05-03',2179,'話題のプロレスラーの試合観戦レポート。ここだけの秘話。');
INSERT INTO src_master VALUES ('心理学入門','http://member.nifty.ne.jp/Y-Yamada/psychology01',221,'2001-06-22',1235,'心理学の初歩の初歩から。心理学者。基本基礎知識。');
INSERT INTO src_master VALUES ('心理学用語リスト','http://member.nifty.ne.jp/Y-Yamada/psychology02',221,'2001-07-20',6234,'心理学用語のリスト。詳しい解説とサンプル心理テスト付き。');
INSERT INTO src_master VALUES ('心理実験の結果','http://member.nifty.ne.jp/Y-Yamada/psychology03',221,'2001-04-21',1264,'精神検査法の種類。心理テストの結果別症状リスト。');
INSERT INTO src_master VALUES ('使えるレシピ','http://member.nifty.ne.jp/Y-Yamada/recipe',213,'2000-07-06',20187,'雑誌、洗剤、食材についてた使えるレシピを教えちゃいます。');
INSERT INTO src_master VALUES ('いちおしコンサート','http://member.nifty.ne.jp/Y-Yamada/recom',122,'1999-09-21',11238,'おすすめコンサート情報満載。チケット予約もできます。');
INSERT INTO src_master VALUES ('リンリンパワー','http://member.nifty.ne.jp/Y-Yamada/rinrin',114,'2000-07-18',21097,'骨董屋の片隅で売られていた小さな鈴の不思議なパワーについて。');
INSERT INTO src_master VALUES ('科学者を目指す','http://member.nifty.ne.jp/Y-Yamada/science01',810,'2001-03-09',5213,'「なぜ？どうして？」を大切にしよう。疑問をもつことから科学は始まります。');
INSERT INTO src_master VALUES ('科学の歴史','http://member.nifty.ne.jp/Y-Yamada/science02',810,'2001-08-03',6423,'ここまで発達してきた科学。その歴史を詳しく説明。');
INSERT INTO src_master VALUES ('子どもの科学','http://member.nifty.ne.jp/Y-Yamada/science03',810,'1999-09-11',6493,'子どもでも安心して行える科学実験を多数掲載。自由研究にどうぞ。');
INSERT INTO src_master VALUES ('楽譜','http://member.nifty.ne.jp/Y-Yamada/score',121,'2000-04-12',12876,'ピアノ、ギター、バンドスコア。');
INSERT INTO src_master VALUES ('シールでポン','http://member.nifty.ne.jp/Y-Yamada/seal',110,'1999-03-27',26432,'ぎっくりまんシールなど。トレードもやってます。');
INSERT INTO src_master VALUES ('引越しの準備','http://member.nifty.ne.jp/Y-Yamada/seikatu01',630,'2000-06-18',9785,'何処から手をつけたらいいのか分からない引越しの準備。効率よい引越しの準備方法を解説。');
INSERT INTO src_master VALUES ('役所の使い方','http://member.nifty.ne.jp/Y-Yamada/seikatu02',630,'2001-04-02',8947,'各種書類の取り方などを解説。書き方の見本もあり。');
INSERT INTO src_master VALUES ('分別ごみの出し方','http://member.nifty.ne.jp/Y-Yamada/seikatu03',630,'2000-08-07',6423,'どんどん細分化されていく分別ごみ。分類別にごみを解説。');
INSERT INTO src_master VALUES ('スポーツでシェイプアップ','http://member.nifty.ne.jp/Y-Yamada/shape',150,'1999-07-10',4223,'みんなでわいわいスポーツを楽しみながら、シェイプアップもしちゃいましょう。');
INSERT INTO src_master VALUES ('スキー好きー','http://member.nifty.ne.jp/Y-Yamada/ski',155,'2000-08-09',4239,'スキー大好きインストラクターたちによる華麗なショウをご覧あれ。');
INSERT INTO src_master VALUES ('ゲレンデの華','http://member.nifty.ne.jp/Y-Yamada/slope',155,'2001-11-19',4129,'各地のスキー場で見つけた美男美女。');
INSERT INTO src_master VALUES ('ゼロからスノボ','http://member.nifty.ne.jp/Y-Yamada/snow',155,'1999-08-10',5234,'スノーボード初心者もコレで安心。練習方法。');
INSERT INTO src_master VALUES ('もしもし健康相談','http://member.nifty.ne.jp/Y-Yamada/soudan01',242,'2000-03-01',1353,'電話による24時間健康相談。困ったときにはすぐコールして。');
INSERT INTO src_master VALUES ('検診センターばら','http://member.nifty.ne.jp/Y-Yamada/soudan02',242,'2000-05-12',6432,'無料健康相談も実施。健康診断センターばら。');
INSERT INTO src_master VALUES ('メールで安心','http://member.nifty.ne.jp/Y-Yamada/soudan03',242,'2000-05-10',2135,'病院に行くのはちょっと…と言う方。メールで相談してみては？');
INSERT INTO src_master VALUES ('宇宙飛行士になりたい','http://member.nifty.ne.jp/Y-Yamada/space01',820,'2000-08-01',5312,'宇宙飛行士になるにはどうしたらいいのだろうか？');
INSERT INTO src_master VALUES ('宇宙船に乗って','http://member.nifty.ne.jp/Y-Yamada/space02',820,'2001-04-12',1983,'アポロに乗って再び宇宙へ飛び立つ。その時月は…');
INSERT INTO src_master VALUES ('宇宙ステーション','http://member.nifty.ne.jp/Y-Yamada/space03',820,'2001-04-19',5132,'国際宇宙ステーションについて。無重力調査。');
INSERT INTO src_master VALUES ('使いきりレシピ','http://member.nifty.ne.jp/Y-Yamada/special',213,'2000-06-05',4397,'食材を端から端まで使い切る事のできるレシピ集。');
INSERT INTO src_master VALUES ('スポーツカード一覧','http://member.nifty.ne.jp/Y-Yamada/sportcard',111,'2001-02-15',4783,'プロ野球、サッカーのトレーディングカード。');
INSERT INTO src_master VALUES ('ステンドグラスの世界','http://member.nifty.ne.jp/Y-Yamada/stained_grass',133,'2000-07-21',7397,'ステンドグラスの作り方を解説。作品紹介。');
INSERT INTO src_master VALUES ('あつめて来って','http://member.nifty.ne.jp/Y-Yamada/stamp_come',215,'2000-03-11',13787,'昔ながらの切手収集法の紹介。これから始める方に。');
INSERT INTO src_master VALUES ('切手ミュージアム','http://member.nifty.ne.jp/Y-Yamada/stamp_museum',112,'2000-09-28',16238,'我が家の一室は、切手ミュージアム。一度ご覧あれ！');
INSERT INTO src_master VALUES ('切手旅行','http://member.nifty.ne.jp/Y-Yamada/stamp_trip',112,'1999-12-29',18324,'世界各国の切手を収集。国別に一挙公開。');
INSERT INTO src_master VALUES ('木のスタンド','http://member.nifty.ne.jp/Y-Yamada/stand',132,'2001-08-10',4628,'木を使って電気スタンドを作成。ぬくもりのある明かりをご家庭に。');
INSERT INTO src_master VALUES ('星座を探そう','http://member.nifty.ne.jp/Y-Yamada/star01',832,'2000-02-01',1352,'比較的見つけやすい星座をイラストで紹介。星座早見表。');
INSERT INTO src_master VALUES ('真夏の星座','http://member.nifty.ne.jp/Y-Yamada/star02',832,'2000-04-14',3463,'真夏の星座の見つけ方。七夕伝説など。');
INSERT INTO src_master VALUES ('ギリシャ神話と星座','http://member.nifty.ne.jp/Y-Yamada/star03',832,'2000-08-01',3214,'ギリシャ神話の紹介。星を素材にした画像。');
INSERT INTO src_master VALUES ('ストップ食中毒','http://member.nifty.ne.jp/Y-Yamada/stop',212,'2000-06-02',5933,'食中毒の予防法を解説。原因菌の研究。');
INSERT INTO src_master VALUES ('彗星・流星研究会','http://member.nifty.ne.jp/Y-Yamada/suisei01',831,'2000-04-01',5232,'彗星・流星に関する研究。最新ニュースも掲載。質問コーナーも。');
INSERT INTO src_master VALUES ('しし座流星群を見たい','http://member.nifty.ne.jp/Y-Yamada/suisei02',831,'2001-04-08',2341,'今年の出現日をずばり予想。当日の星空。気象情報。');
INSERT INTO src_master VALUES ('ヘールボップ彗星','http://member.nifty.ne.jp/Y-Yamada/suisei03',831,'1999-05-21',10351,'ヘールボップ彗星の写真画像掲載。その他彗星の話題も満載。');
INSERT INTO src_master VALUES ('お部屋ナビ','http://member.nifty.ne.jp/Y-Yamada/sumai01',610,'2001-09-12',5234,'あなたの要望にお答えできるお部屋がきっと見つかります。');
INSERT INTO src_master VALUES ('1人暮らしの楽しみ方','http://member.nifty.ne.jp/Y-Yamada/sumai02',610,'2000-05-03',2098,'1人だからこそ、楽しく暮らそう。食器の揃え方。見せる収納法。');
INSERT INTO src_master VALUES ('窓へのこだわり','http://member.nifty.ne.jp/Y-Yamada/sumai03',610,'2001-08-12',5293,'とにかく明るいおうちにしたい。窓に徹底的にこだわりました。');
INSERT INTO src_master VALUES ('上手な選び方','http://member.nifty.ne.jp/Y-Yamada/supple',215,'2001-05-02',7893,'サプリメントの上手な選び方を解説。何が足りない？何が必要？');
INSERT INTO src_master VALUES ('アメリカサプリメント事情','http://member.nifty.ne.jp/Y-Yamada/supplement',77,'2001-08-13',3289,'サプリ先進国アメリカ。アメリカのサプリ事情を紹介。');
INSERT INTO src_master VALUES ('50歳からのシンクロ','http://member.nifty.ne.jp/Y-Yamada/synchro',153,'2000-07-26',4111,'中高年のためのシンクロナイズドスイミング。');
INSERT INTO src_master VALUES ('初心者のテコンドー','http://member.nifty.ne.jp/Y-Yamada/tekondo',154,'2001-09-02',1213,'テコンドーのルール説明。道場一覧。');
INSERT INTO src_master VALUES ('自慢のテレホンカード','http://member.nifty.ne.jp/Y-Yamada/telcard',111,'2001-01-27',3972,'超レアものテレホンカード。懐かしのあのアイドルも。');
INSERT INTO src_master VALUES ('ちくたく時計たち','http://member.nifty.ne.jp/Y-Yamada/tokei',115,'1999-04-11',12198,'私が集めた約３００個の時計。');
INSERT INTO src_master VALUES ('トレカでトレード','http://member.nifty.ne.jp/Y-Yamada/trade',111,'2001-02-24',6732,'アニメ・ゲーム系のアイテムが豊富。トレード掲示板。');
INSERT INTO src_master VALUES ('あつまれ漬物','http://member.nifty.ne.jp/Y-Yamada/tukemono',214,'2001-09-13',4987,'たくあん、キムチ、千枚漬などなど。いろんな漬物大集合。');
INSERT INTO src_master VALUES ('コマーシャルの作り方','http://member.nifty.ne.jp/Y-Yamada/tv01',720,'2000-08-12',4132,'テレビコマーシャルの作り方。面白メーキングビデオ。');
INSERT INTO src_master VALUES ('アナウンサーの日常','http://member.nifty.ne.jp/Y-Yamada/tv02',720,'2001-04-12',5322,'テレビ・ラジオで大活躍中のアナウンサーの日常をウォッチ。');
INSERT INTO src_master VALUES ('テレビ番組表','http://member.nifty.ne.jp/Y-Yamada/tv03',720,'2001-05-24',3245,'月刊テレビ番組表。しっかりチェックしてお見逃しなく。');
INSERT INTO src_master VALUES ('やっぱり梅干','http://member.nifty.ne.jp/Y-Yamada/ume',214,'2001-09-10',4327,'梅干を作ろう。はじめてでも必ず成功。');
INSERT INTO src_master VALUES ('ゆっくり散歩','http://member.nifty.ne.jp/Y-Yamada/walking',200,'2001-10-19',3428,'健康の為ゆっくり歩いてみませんか？道端に咲く季節の草花に目を向けよう。');
INSERT INTO src_master VALUES ('柱時計','http://member.nifty.ne.jp/Y-Yamada/wall_clock',115,'2000-04-10',5982,'古い柱時計。今も動いてます。');
INSERT INTO src_master VALUES ('手作り腕時計','http://member.nifty.ne.jp/Y-Yamada/watch',130,'1999-12-28',21868,'ハンドメイドのあたたかい腕時計。世界にたった一つ。');
INSERT INTO src_master VALUES ('水遊びだいすき','http://member.nifty.ne.jp/Y-Yamada/water',153,'2001-07-19',4027,'水泳を上達させるにはまず水を好きになろう。');
INSERT INTO src_master VALUES ('大人といっしょ','http://member.nifty.ne.jp/Y-Yamada/weaning',210,'1999-06-12',12397,'大人のメニューに一工夫で、離乳食の出来上がり。');
INSERT INTO src_master VALUES ('本棚作り','http://member.nifty.ne.jp/Y-Yamada/wood01',132,'2000-06-19',2343,'おじいちゃんと一緒に本棚を作った。僕の大好きな象の絵を彫ってもらった。');
INSERT INTO src_master VALUES ('ママの手作りお洋服','http://member.nifty.ne.jp/Y-Yamada/youfuku',131,'2001-08-12',4298,'子供の服はすべて手作り。リメイク法も掲載。');
INSERT INTO src_master VALUES ('有線放送','http://member.nifty.ne.jp/Y-Yamada/yusen',53,'2000-04-13',12879,'有線ヒット歌謡曲。歴代有線大賞一覧。');
INSERT INTO src_master VALUES ('安心一人旅','http;//member.nifty.ne.jp/Y-Yamada/alone',143,'2000-04-24',12708,'女性一人でも安心して泊まれる宿。おすすめ情報満載。');
INSERT INTO src_master VALUES ('あいらんど水族館','http;//member.nifty.ne.jp/Y-Yamada/aquarism',144,'2000-09-12',29368,'かわいいラッコが出迎えます。赤ちゃんもたくさん。');
INSERT INTO src_master VALUES ('ポートボール','http;//member.nifty.ne.jp/Y-Yamada/ball',152,'2000-05-11',12379,'ポートボールって知ってる？ルールを詳しく解説。');
INSERT INTO src_master VALUES ('草野球軍団','http;//member.nifty.ne.jp/Y-Yamada/baseball',151,'2001-06-14',10473,'近所のおじさんたちが集まって作った草野球チーム。はっきり言って弱いです。');
INSERT INTO src_master VALUES ('ガイドブック','http;//member.nifty.ne.jp/Y-Yamada/book',140,'2001-01-14',12789,'地域別ガイドブック。現地の生の声も収録。');
INSERT INTO src_master VALUES ('キャンプしよう','http;//member.nifty.ne.jp/Y-Yamada/camp',141,'2001-05-12',10230,'何もなくても大丈夫。いますぐみんなでキャンプしよう。');
INSERT INTO src_master VALUES ('サイバー陶芸教室','http;//member.nifty.ne.jp/Y-Yamada/ceramic',134,'1999-07-04',8396,'基本的な知識や技法を学び、実際に作品を作成していただきます。');
INSERT INTO src_master VALUES ('レベルアップ料理','http;//member.nifty.ne.jp/Y-Yamada/cook',134,'2001-08-14',3987,'料理は器も重要。オリジナルガラス器でレベルアップ。');
INSERT INTO src_master VALUES ('お得なクーポン','http;//member.nifty.ne.jp/Y-Yamada/coupon',145,'2001-06-02',18496,'キャンセル宿などを当日検索。プリントして持っていけば得割あり。');
INSERT INTO src_master VALUES ('電子工作','http;//member.nifty.ne.jp/Y-Yamada/denshi',135,'2000-05-01',2789,'電子工作に必要なもの、基本知識を解説。');
INSERT INTO src_master VALUES ('記念日割引・宿','http;//member.nifty.ne.jp/Y-Yamada/discount',143,'2000-01-19',12796,'キャンセル宿などを当日検索。プリントして持っていけば得割あり。');
INSERT INTO src_master VALUES ('こびとパーク','http;//member.nifty.ne.jp/Y-Yamada/dwarf',145,'2000-04-03',12698,'カップル、家族で行けばお得な入園チケット。2人で2割引。3人で3割引。');
INSERT INTO src_master VALUES ('子どもも大人も','http;//member.nifty.ne.jp/Y-Yamada/family',141,'2000-08-11',9179,'子供も大人もみんなが楽しめる旅行プランんの立て方。');
INSERT INTO src_master VALUES ('花器と花','http;//member.nifty.ne.jp/Y-Yamada/flower',135,'2000-07-19',4987,'生け花はもちろん、花器も手作りしてます。');
INSERT INTO src_master VALUES ('ガラス屋さん','http;//member.nifty.ne.jp/Y-Yamada/grass_shop',133,'2000-07-27',3987,'ガラスについて細かく研究。Q&A掲示板。');
INSERT INTO src_master VALUES ('山に行こう','http;//member.nifty.ne.jp/Y-Yamada/hill',140,'2000-05-19',13682,'おすすめ山ベスト２０');
INSERT INTO src_master VALUES ('ハネムーン','http;//member.nifty.ne.jp/Y-Yamada/honeymoon',142,'2000-11-13',11236,'一生に一度の大切な旅行。しっかり計画。人気の国。');
INSERT INTO src_master VALUES ('食事が自慢の宿','http;//member.nifty.ne.jp/Y-Yamada/jiman',143,'1999-02-21',31228,'三ツ星シェフの自慢料理が堪能できるホテル。');
INSERT INTO src_master VALUES ('優しいたび','http;//member.nifty.ne.jp/Y-Yamada/journey',140,'2001-09-10',12879,'お年よりも障害者も気楽に旅行を楽しもう。');
INSERT INTO src_master VALUES ('窯作り','http;//member.nifty.ne.jp/Y-Yamada/kama',130,'1999-03-25',4269,'全くの初心者の私が、陶芸窯を作るまでの過程を写真つきで。');
INSERT INTO src_master VALUES ('小金井ロープウェイ','http;//member.nifty.ne.jp/Y-Yamada/koganei',145,'2001-09-18',7269,'小金井ロープウェイ。往復で買えば２０％割引。');
INSERT INTO src_master VALUES ('まるとくホテル情報','http;//member.nifty.ne.jp/Y-Yamada/marutoku',143,'1999-11-11',21478,'記念日割引のあるホテルなど、お得なホテル情報満載。');
INSERT INTO src_master VALUES ('ねずみいらんど徹底攻略法','http;//member.nifty.ne.jp/Y-Yamada/nezumi',144,'2000-05-14',42981,'ねずみいらんどで思いっきり遊びましょう。どこからまわれば効率が良い？');
INSERT INTO src_master VALUES ('やまだ観光農園','http;//member.nifty.ne.jp/Y-Yamada/nouen',141,'2001-03-14',21498,'りんご狩り。みかん狩り。など季節にあわせていろんな果物がとれます。');
INSERT INTO src_master VALUES ('合宿OK団体歓迎宿','http;//member.nifty.ne.jp/Y-Yamada/ok',143,'1999-12-14',21987,'団体さん大歓迎の宿。合宿に最適です。');
INSERT INTO src_master VALUES ('人気のおみやげ','http;//member.nifty.ne.jp/Y-Yamada/omiyage',142,'2000-07-21',19267,'国別人気おみやげランキング。');
INSERT INTO src_master VALUES ('動く折り紙','http;//member.nifty.ne.jp/Y-Yamada/origami',135,'2001-07-12',4187,'たかが折り紙と侮ってはいけません。自由自在に動くおりがみたち。');
INSERT INTO src_master VALUES ('パパの日曜大工','http;//member.nifty.ne.jp/Y-Yamada/papa',135,'2001-09-08',3127,'パパがチャッピー(犬)のおうちを作りました。1作目は雨漏り？');
INSERT INTO src_master VALUES ('ペーパークラフト','http;//member.nifty.ne.jp/Y-Yamada/paper',130,'2000-07-14',5983,'季節に合ったペーパークラフトを紹介。誰でも簡単に作れます。');
INSERT INTO src_master VALUES ('パスポートの取り方','http;//member.nifty.ne.jp/Y-Yamada/pass',142,'2001-01-12',23986,'はじめての海外旅行。まずはパスポートをゲット。');
INSERT INTO src_master VALUES ('ペンションいちご','http;//member.nifty.ne.jp/Y-Yamada/pensyon',143,'1999-01-12',12378,'山の中のかわいいおうち。犬やアヒルもお客様のお越しをお待ちしております。');
INSERT INTO src_master VALUES ('卓球研究会','http;//member.nifty.ne.jp/Y-Yamada/pinpon',151,'2000-05-19',5296,'ピンポンか、なんて言わないで。本気で研究しています。');
INSERT INTO src_master VALUES ('茶道道具','http;//member.nifty.ne.jp/Y-Yamada/sadou',134,'1999-12-18',6295,'有名陶芸家による茶道道具を紹介。');
INSERT INTO src_master VALUES ('海に行こう','http;//member.nifty.ne.jp/Y-Yamada/sea',140,'2000-09-08',12789,'おすすめ海ベスト２０');
INSERT INTO src_master VALUES ('手作り石鹸','http;//member.nifty.ne.jp/Y-Yamada/soap',135,'2000-09-10',12262,'自分の肌にピッタリ合った石鹸を手作りしましょう。ハーブ石鹸など。');
INSERT INTO src_master VALUES ('ちびっこサッカークラブ','http;//member.nifty.ne.jp/Y-Yamada/soccer',151,'2000-06-14',12369,'4歳から10歳までのちびっこ向けサッカークラブ。みんな仲良しです。');
INSERT INTO src_master VALUES ('効能別温泉リスト','http;//member.nifty.ne.jp/Y-Yamada/spring',140,'2000-07-18',34789,'全国の温泉旅館。効能別リスト。');
INSERT INTO src_master VALUES ('ミニミニ牧場','http;//member.nifty.ne.jp/Y-Yamada/stockfarm',141,'2001-01-12',12398,'乳搾り体験。搾りたてミルクでソフトクリームはいかが。');
INSERT INTO src_master VALUES ('テニスさーくるん','http;//member.nifty.ne.jp/Y-Yamada/tennis',151,'2001-07-14',3247,'5つの大学から集まったメンバーで構成されたテニスサークル。');
INSERT INTO src_master VALUES ('ホテルで使えるチケット','http;//member.nifty.ne.jp/Y-Yamada/ticket',145,'2000-05-13',10298,'当日予約で50％OFF。ホテルで使える格安チケット。');
INSERT INTO src_master VALUES ('観光で陶芸','http;//member.nifty.ne.jp/Y-Yamada/tougei',134,'2000-11-17',3269,'山口で一日体験陶芸を楽しみました。意外と簡単で面白いです。');
INSERT INTO src_master VALUES ('おすすめツアー情報','http;//member.nifty.ne.jp/Y-Yamada/tour',142,'2001-03-12',22179,'格安おすすめツアーをご紹介。');
INSERT INTO src_master VALUES ('粘土でおもちゃ','http;//member.nifty.ne.jp/Y-Yamada/toy',130,'2000-05-04',19398,'粘土を使ってぞうやきりんなどの動物を作っています。');
INSERT INTO src_master VALUES ('ホワイトワイナリー','http;//member.nifty.ne.jp/Y-Yamada/wine',144,'2000-06-19',5239,'ワインの造り方が一からわかる。試飲会もやってます。');
INSERT INTO src_master VALUES ('貸切温泉宿','http;//member.nifty.ne.jp/Y-Yamada/yado',141,'2000-09-13',21489,'家族、カップルに大人気。貸切温泉宿。');
INSERT INTO src_master VALUES ('焼き物リンク集','http;//member.nifty.ne.jp/Y-Yamada/yakimono',130,'2000-04-03',4697,'全国各地の焼き物に関するリンク集です。');

--
-- Table structure for table 'struts_address'
--

CREATE TABLE struts_address (
  id int(11) NOT NULL auto_increment,
  nam varchar(20) default NULL,
  gender char(2) default NULL,
  birth datetime default NULL,
  address varchar(100) default NULL,
  tel varchar(20) default NULL,
  email varchar(50) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'struts_address'
--


INSERT INTO struts_address VALUES (1,'篠原和広','男','1955-12-17 00:00:00','千葉県XXXX市XXXXX','0XX-XXX-9999','shinohara@XXXX.XX.XX');
INSERT INTO struts_address VALUES (2,'鈴木聖樹','男','1962-02-02 00:00:00','埼玉県○○市XX-X-XX','0XX-X9X-7777','suzuks@XXXX.XX.XX');
INSERT INTO struts_address VALUES (3,'田中正夫','男','1964-03-30 00:00:00','神奈川県△△市XXX','0X9-98X-1111','tanaka@XXXX.XX.XX');
INSERT INTO struts_address VALUES (4,'清水真梨','女','1977-10-19 00:00:00','東京都□□区XXX-XXX','X78-78X-6661','shimizu@XXXX.XX.XX');
INSERT INTO struts_address VALUES (5,'中野三子','女','1970-05-28 00:00:00','山梨県××町X-X-XXX','0X9-X11-2222','nakano@XXXX.XX.XX');
INSERT INTO struts_address VALUES (6,'山田祥寛','男','2002-12-04 00:00:00','静岡県XXXXX市','042-111-1111','CQW15204@nifty.com');
INSERT INTO struts_address VALUES (7,'渡部浩史','男','1975-01-01 00:00:00','宮崎県XXX市1-12-111','02x-654x-324x','nabenabe@yama.ne.zz');
INSERT INTO struts_address VALUES (8,'掛谷奈美','女','2002-08-05 00:00:00','広島県福山市△△市9-9-99','03-111-1xx1','namidon@mbh.nifty.com');

--
-- Table structure for table 'upload_master'
--

CREATE TABLE upload_master (
  id varchar(5) NOT NULL default '',
  nam varchar(50) default NULL,
  val int(11) default NULL,
  PRIMARY KEY  (id)
) TYPE=MyISAM;

--
-- Dumping data for table 'upload_master'
--


INSERT INTO upload_master VALUES ('00002','今日からつかえるXMLサンプル集',2900);
INSERT INTO upload_master VALUES ('00003','今日からつかえるPHP5サンプル集',2800);
INSERT INTO upload_master VALUES ('00004','今日からつかえるJSP/サーブレットサンプル集',2800);
INSERT INTO upload_master VALUES ('00005','プチリファレンスASP',1500);
INSERT INTO upload_master VALUES ('00006','プチリファレンスPHP',1800);
INSERT INTO upload_master VALUES ('00007','Webアプリケーション構築技法',3000);
