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

INSERT INTO bbs_master VALUES (28,'Struts�Ƃ́H','�悵�ҁI','2002-09-17 23:05:39','Struts���Ă������ł��ˁB<br /><br />�ł����B','123',0,0);
INSERT INTO bbs_master VALUES (4,'PHP��JSP�Ƃ͉����Ⴄ�H','������','2001-11-10 14:39:23','�Ȃɂ��������́[�H','123',0,0);
INSERT INTO bbs_master VALUES (5,'Re:�@PHP��JSP�Ƃ͉����Ⴄ�H','�Ђ�','2001-11-10 15:41:47','�����ōl���Ȃ���','123',4,1);
INSERT INTO bbs_master VALUES (6,'�V�Z�pASP.NET�Ƃ́H','�݂�','2001-11-11 14:42:03','�݂Ȃł�','123',0,0);
INSERT INTO bbs_master VALUES (7,'XSL�̓o��ŉ����ς��H','�݂قЂ�','2001-11-13 14:42:17','�Ȃɂ��ς��Ȃ�','123',0,0);
INSERT INTO bbs_master VALUES (8,'Re:�@XSL�̓o��ŉ����ς��H','�͂�����','2001-11-14 14:42:31','�������ȁ[','123',7,1);
INSERT INTO bbs_master VALUES (9,'Re:�@Re:�@XSL�̓o��ŉ����ς��H','�Ƃ肤��','2001-11-14 16:51:10','���񂤂�','123',8,2);
INSERT INTO bbs_master VALUES (10,'Re:�@Re:�@Re:�@XSL�̓o��ŉ����ς��H','����','2001-11-15 04:56:49','�ق�','123',9,3);
INSERT INTO bbs_master VALUES (11,'PHP5�͂��ł�H','���h��','2001-11-18 14:57:01','�����낤�H','123',0,0);
INSERT INTO bbs_master VALUES (12,'JavaScript�Ńt���[���𐧌�','����Ƌ��q','2001-11-19 14:57:24','���[��','123',0,0);
INSERT INTO bbs_master VALUES (13,'VBScript�͂Ȃ��Ȃ�H','����','2001-11-21 14:57:30','�ӂ���','123',0,0);
INSERT INTO bbs_master VALUES (29,'�폜�ς�','','2002-09-17 23:09:08','> Struts���Ă������ł��ˁB<br />�ł��傤�H','123',28,1);
INSERT INTO bbs_master VALUES (15,'IMAP�Ŏ擾���������R�[�h�̕ϊ�','�n���V','2001-12-01 14:57:01','�n���V�ł��B','123',0,0);
INSERT INTO bbs_master VALUES (16,'Re:�@IMAP�Ŏ擾���������R�[�h�̕ϊ�','�킽�ׁ[','2001-12-01 14:59:24','���[��','123',15,1);
INSERT INTO bbs_master VALUES (17,'Re:�@Re:�@IMAP�Ŏ擾���������R�[�h�̕ϊ�','���X��','2001-12-02 01:57:30','�ӂ���','123',16,2);
INSERT INTO bbs_master VALUES (18,'DOM�Ń\�[�g�������s�Ȃ��ɂ́H','����','2001-12-04 09:48:08','����','123',0,0);
INSERT INTO bbs_master VALUES (19,'Re:�@DOM�Ń\�[�g�������s�Ȃ��ɂ́H','�͂�����','2001-12-11 14:01:01','���񂿂�','123',18,1);
INSERT INTO bbs_master VALUES (20,'CGI�ŕ����R�[�h�ϊ����s�Ȃ��ɂ́H','��','2001-12-19 10:57:24','����ɂ���','123',0,0);
INSERT INTO bbs_master VALUES (21,'Re:�@CGI�ŕ����R�[�h�ϊ����s�Ȃ��ɂ́H','�̂肫��[','2001-12-21 10:27:30','�ӂ���','123',20,1);
INSERT INTO bbs_master VALUES (22,'�e�[�u�����������A���ʂ��o��','�V���J�l�R','2001-12-30 15:48:08','�Ӂ[��','123',0,0);

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


INSERT INTO brd_usr VALUES ('00001','123','�c���Ύ�',1,'','','2002-12-21 12:44:50','');
INSERT INTO brd_usr VALUES ('00002','123','���a�L',2,'1014��c��','12:00','2002-09-12 11:10:00','�Г���c�B�d�b�͂Ȃ��ł�������\r');
INSERT INTO brd_usr VALUES ('00003','123','��ؐ���',1,'','','2002-09-12 08:45:10','\r');
INSERT INTO brd_usr VALUES ('00004','123','�c�����v',1,'','','2002-09-12 11:45:10','\r');
INSERT INTO brd_usr VALUES ('00005','123','����O�q',3,'�\�~�[','15:00','2002-09-12 13:11:08','\r');
INSERT INTO brd_usr VALUES ('00006','123','�����^��',3,'�s����','���A','2002-09-12 15:03:10','�A�����(090)XXX-XXXXX\r');

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


INSERT INTO cht_list VALUES (1,'JSP�̂�����','123','#191970','#DB7093','#556B2F');
INSERT INTO cht_list VALUES (2,'�킦���y�Ƃ���','123','#191970','#DB7093','#556B2F');
INSERT INTO cht_list VALUES (3,'XML Q&A�|�X�g','123','#191970','#DB7093','#556B2F');

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

INSERT INTO ec_store VALUES (1,'Books�n���V','book.gif');
INSERT INTO ec_store VALUES (2,'nb�V�X�e���Y','computer.gif');
INSERT INTO ec_store VALUES (3,'���j��H�̓���','daiku.gif');

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


INSERT INTO ec_product VALUES ('A0001','�������������XML�T���v���W',2800,1,'xml.jpg','XSLT�ADOM�AXMLSchema�Ȃ�XML�֘A�Z�p��L�x�ȃT���v���A���t�@�����X�Ƌ���');
INSERT INTO ec_product VALUES ('A0002','�������������ASP3.0�T���v���W',2800,1,'asp.jpg','�T�[�o�T�C�h�̃R�A�Z�pASP�T���v���W�̋������BVBScript�AJavaScript5.6�Ή�');
INSERT INTO ec_product VALUES ('A0003','ASP3.0�p�[�t�F�N�g���t�@�����X',4000,1,'','��{�I�u�W�F�N�g�A�R���|�[�l���g�AADO�AVBScript�ȂǊ֘A�Z�p���W�听�B�L�x�ȃT���v���̓e�N�j�b�N�̕��');
INSERT INTO ec_product VALUES ('A0004','Web�A�v���P�[�V�����\�z�Z�@',3200,1,'web.jpg','�O���[�v�E�F�A��ASP�ŁB�����e�N�j�b�N���ÏW����ASP�J���Q�l���̌����');
INSERT INTO ec_product VALUES ('B0001','�L�k���݃o�P�c',500,3,'bucket.gif','�L�k���݂̏_��łǂ��ɂł������^��OK�I');
INSERT INTO ec_product VALUES ('B0002','���ł�������g�уN���[�i',300,3,'','��y�Ȍ`�ԃN���[�i�B���ł������邱�̎�y���͐�i�I');
INSERT INTO ec_product VALUES ('B0003','�����^�уJ���^�����ݓ���',700,3,'gomi.gif','�y�ʋ����Ŏ����^�т��J���^���B���R�ɗD�����A�E�g�h�A�p�A�C�e��');
INSERT INTO ec_product VALUES ('B0004','��w�̎O�_�_��',350,3,'','���g�͌��Ă̂��y���݁B��w�Ȃ�ΐ�Ύ����Ă��������O�_�Z�b�g');
INSERT INTO ec_product VALUES ('C0001','WindowsZ����PC',35000,2,'computer.gif','�ŐV�sWindowsZ�B256�r�b�g�������S�Ή��̃n�C�G���hOS');
INSERT INTO ec_product VALUES ('C0002','�l���郍�{�b�gOBIA',105000,2,'robot.gif','�����ōl���A�����ōs�����܂��B���i�͂��Ȃ��̂�������H�H');
INSERT INTO ec_product VALUES ('C0003','������10T�f�B�X�N',10000,2,'dvd.gif','DVD�f�B�X�N�̌���ŁB10�e���o�C�g�Ή��ł���Ƃ�����f�[�^�͂��̒��ɁI');

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


INSERT INTO fac_facility VALUES (10001,'�~�[�e�B���O�R�[�i�[1');
INSERT INTO fac_facility VALUES (10002,'1204��c��');
INSERT INTO fac_facility VALUES (10003,'1205��c��');
INSERT INTO fac_facility VALUES (10004,'1206��c��');
INSERT INTO fac_facility VALUES (10005,'�O�����ڎ�');

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


INSERT INTO master VALUES ('00001','�������������ASP3.0�T���v���W',2800);
INSERT INTO master VALUES ('00002','�������������XML�T���v���W',2800);
INSERT INTO master VALUES ('00003','�������������JSP�T���v���W',2900);
INSERT INTO master VALUES ('00004','5���ł��ڂ���XML+XSLT�i����сj',1500);
INSERT INTO master VALUES ('00005','�������������PHP4�T���v���W',2800);
INSERT INTO master VALUES ('00006','Web�A�v���P�[�V�����\�z�Z�@',3200);

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

INSERT INTO ml_usr VALUES ('CQW15204@nifty.com','�R�c�ˊ�');
INSERT INTO ml_usr VALUES ('sample4@localhost','�����L�G');
INSERT INTO ml_usr VALUES ('sample5@localhost','�n�ӏ��l');

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


INSERT INTO mng_master VALUES ('101-000003','�Ɩ��pPC','PC5800/10T','����','302�I�t�B�X','2000-11-20','���[�U�n�ӂr');
INSERT INTO mng_master VALUES ('101-000041','�V�[�g���[�_','SR2003','����','OCR���[��','2001-12-12','�R�YS�Ǘ�');
INSERT INTO mng_master VALUES ('101-000040','�o�[�R�[�h�n���f�B�^�[�~�i��','SMLP-99','����','�ʘH�L���r�l�b�g','2001-11-11','�R�YS�Ǘ�');
INSERT INTO mng_master VALUES ('101-000023','��c�p�e�[�u��','TABLE1','����','503��c��','2001-11-10','�R�YS�Ǘ�');
INSERT INTO mng_master VALUES ('101-000022','�ړ�����','SHOKO2','����','�T�C�hP','2001-12-21','���{S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000021','�ړ�����','SHOKO1','����','�T�C�hS','2000-08-15','���{S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000020','���f�B�A�{�[�h','E32-490-9898','����','905��c��','2002-03-01','���{S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000045','�f�B�X�N�A���C���u','DR200-XR','�V�X�e��','�T�[�o��','2001-08-06','�l��S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000036','���C�f�B�X�N���u','N1133-88','�V�X�e��','XYZ�r��4F','2001-08-23','�l��S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000035','���{��J���[�V���A���v�����^','CSP5200PR','�V�X�e��','XYZ�r��4F','2001-12-07','�l��S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000034','�I�t�B�X�v���Z�b�T','OP5200','�V�X�e��','�T�[�o��','2001-12-06','�l��S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000012','UNIX�T�[�o','NX4800-J','�V�X�e��','�V�X�e���Z���^','2001-10-01','�l��S�a����');
INSERT INTO mng_master VALUES ('101-000011','NT�T�[�o�i����p�j','N8500-160B','�V�X�e��','�T�[�o��','2001-06-07','�勴S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000002','����d�d�����u','DGN-58-A','�V�X�e��','OCR���[��','2001-12-18','��[���Ǘ�');
INSERT INTO mng_master VALUES ('101-000000','�I�t�B�X�v���Z�b�T','OP5200-98','�V�X�e��','�T�[�o��','2001-08-15','��[���Ǘ�');
INSERT INTO mng_master VALUES ('101-000039','�T�[�}���v�����^','SMLP-00','����','�s���s����','2001-09-19','���쎁�ۊ�');
INSERT INTO mng_master VALUES ('101-000033','���[�N�X�e�[�V����','OP5200-98','����','�T�[�o��','2001-11-21','���쎁�ۊ�');
INSERT INTO mng_master VALUES ('101-000032','���[�N�X�e�[�V����','OP5200-98','����','�T�[�o��','2001-12-22','���쎁�ۊ�');
INSERT INTO mng_master VALUES ('101-000029','���{�ꃉ�C���v�����^','LN23-JX-00','����','XC�r��','2001-08-03','���쎁�ۊ�');
INSERT INTO mng_master VALUES ('101-000028','���f��','MODEM5800-12','����','XC�r��','2001-08-27','���쎁�ۊ�');
INSERT INTO mng_master VALUES ('101-000015','���C���v�����^','PC-KRT800','����','OCR���[��','2000-09-10','�{��S�ۗL');
INSERT INTO mng_master VALUES ('101-000014','���w�����ǎ摕�u','K5000TR','����','�����H��','2000-09-03','����T');
INSERT INTO mng_master VALUES ('101-000009','�Ɩ��pPC','PC5800/10T','����','�C�O�H��ɂĎg�p','2001-02-10','�؍���؂j');
INSERT INTO mng_master VALUES ('101-000007','�Ɩ��pPC','PC5800/80','����','�Ǘ��ەۊ�','2000-10-04','���쎁�ۊ�');
INSERT INTO mng_master VALUES ('101-000006','�Ɩ��pPC','PC5800/13TA','����','�������L���r�l�b�g�ۊ�','2000-11-13','�c�ƕ����Z��');
INSERT INTO mng_master VALUES ('101-000048','�^�C�v���C�^�[','TW2001/XZ','����','�������ݒu','2001-12-10','����K�Ǘ�');
INSERT INTO mng_master VALUES ('101-000047','OHP','OHP','����','�������L���r�l�b�g','2001-01-01','�R�c���e');
INSERT INTO mng_master VALUES ('101-000044','���e�^�t���J���[�t��','PC-PJ600','����','�ړ����ɓ�','2001-08-08','����K�ۗL');
INSERT INTO mng_master VALUES ('101-000038','���C���v�����^','LNPRT-00-X','����','�n�b�q���[��','2001-07-02','����K�ۗL');
INSERT INTO mng_master VALUES ('101-000027','�Ɩ���H�X�C�b�`','SWT01','����','601��c���Ɩ��X�C�b�`����','2001-09-07','����K�ۗL');
INSERT INTO mng_master VALUES ('101-000026','�r����','OTHER','����','802��c���V��','2001-10-17','����K�ۗL');
INSERT INTO mng_master VALUES ('101-000025','�X�`�[���p�[�e�B�V����','PART1','����','503��c��','2001-12-29','����K�ۗL');
INSERT INTO mng_master VALUES ('101-000024','�E�H�[���L���r�l�b�g','CABI1','����','906��c���O','2001-12-01','����K�ۗL');
INSERT INTO mng_master VALUES ('101-000019','���ڃZ�b�g','OUSETSU','����','�x�z�l��','2000-12-25','���쎁�Ǘ�');
INSERT INTO mng_master VALUES ('101-000018','UNIX�T�[�o','NX4800-JD','����','�V�X�e���Ǘ��Z���^','2001-07-16','����K�ێ�');
INSERT INTO mng_master VALUES ('101-000017','NT�T�[�o','N8500-140K','����','�V�X�e���Ǘ���','2001-06-18','����K�ێ�');
INSERT INTO mng_master VALUES ('101-000016','���w�����ǎ摕�u','K7500SR','����','�s���s����','2001-03-05','�쑺S�a����');
INSERT INTO mng_master VALUES ('101-000010','�t���v���W�F�N�^','PC-PJ600','����','���������q��','2001-05-13','����K�ۗL');
INSERT INTO mng_master VALUES ('101-000001','�t�@�b�N�X���u','FAX-DX6800','����','�������Ɩ�FAX','2001-04-21','��[���Ǘ�');
INSERT INTO mng_master VALUES ('101-000004','�Ɩ��pPC','PC5800/15T','�Z�p','301�I�t�B�X','2002-01-03','���[�U�c���r');
INSERT INTO mng_master VALUES ('101-000005','�Ɩ��pPC','PC5800/17TE','�Z�p','�s���s����','2001-10-08','�c�ƕ����Z��');
INSERT INTO mng_master VALUES ('101-000008','�Ɩ��pPC','PC5800/95','�Z�p','�Ǘ��ەۊ�','2001-03-22','��㎁�ۊ�');
INSERT INTO mng_master VALUES ('101-000013','�v�����^','PC-PRT500','�Z�p','�Z�p�Ǘ��O���[�v�g�p','2000-12-09','���{B��p');
INSERT INTO mng_master VALUES ('101-000030','�I�t�B�X�v���Z�b�T','OP5200-98','�Z�p','335��c���L���r�l�b�g','2001-12-04','�c��S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000031','���{�ꃉ�C���v�����^','LNPRT-00-X','�Z�p','�I�t�B�X500','2001-06-28','�c��S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000037','�I�t�B�X�v���Z�b�T','OP5200','�Z�p','�T�[�o��','2001-07-08','�c��S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000042','�}���`�|�[�gFAX','MP200-0-1X','�Z�p','�T�[�o��','2001-10-10','�c��S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000043','���f�B�X�N���u','KNK-1312-DA','�Z�p','OCR���[��','2001-09-09','�c��S�Ǘ�');
INSERT INTO mng_master VALUES ('101-000046','���{��J���[�M�]�ʃv�����^','PC-PR630TR','�Z�p','�Z�p����','2001-03-03','�c��S�Ǘ�');

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


INSERT INTO mng_menu VALUES (1,'�V�K���Y�o�^','/advanced/servlet/mng.mng_new',4);
INSERT INTO mng_menu VALUES (2,'�������Y�X�V�E�폜','/advanced/servlet/mng.mng_update',2);
INSERT INTO mng_menu VALUES (3,'�������Y����','search.jsp',1);
INSERT INTO mng_menu VALUES (4,'���[�U���X�V','/advanced/servlet/mng.mng_usr',4);
INSERT INTO mng_menu VALUES (5,'���O�A�E�g','/advanced/servlet/mng.mng_logout',1);

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


INSERT INTO mng_pmaster VALUES ('101-000001','10.2.109.200','ZZUI12',256,8000,'CD-RW�@�푝��');

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

INSERT INTO mng_usr VALUES ('admin','admin','�V�X�e���Ǘ���','�V�X�e��',7);
INSERT INTO mng_usr VALUES ('super','super','����Ǘ���','����',3);
INSERT INTO mng_usr VALUES ('usr','usr','��ʃ��[�U','����',1);

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


INSERT INTO sche_category VALUES (1,'��c','kaigi.gif');
INSERT INTO sche_category VALUES (2,'���C','ken.gif');
INSERT INTO sche_category VALUES (3,'���','pen.gif');
INSERT INTO sche_category VALUES (4,'���p','pri.gif');
INSERT INTO sche_category VALUES (5,'�O�o','out.gif');

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


INSERT INTO sche_usr VALUES ('yyamada','123','�R�c�ˊ�');
INSERT INTO sche_usr VALUES ('khonda','123','�{��������');
INSERT INTO sche_usr VALUES ('tkawamura','123','�쑺�q��');

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


INSERT INTO src_category VALUES (100,'�',0,'music.gif');
INSERT INTO src_category VALUES (200,'���N',0,'sun.gif');
INSERT INTO src_category VALUES (300,'�o�ρE�Y��',0,'eco.gif');
INSERT INTO src_category VALUES (400,'����',0,'doc.gif');
INSERT INTO src_category VALUES (500,'�肢',0,'urn.gif');
INSERT INTO src_category VALUES (600,'����',0,'life.gif');
INSERT INTO src_category VALUES (700,'���f�B�A',0,'pen.gif');
INSERT INTO src_category VALUES (800,'���R�Ȋw',0,'sci.gif');
INSERT INTO src_category VALUES (110,'�R���N�V����',100,'dog.gif');
INSERT INTO src_category VALUES (120,'���y',100,'dog.gif');
INSERT INTO src_category VALUES (130,'�H�|�E�H��',100,'dog.gif');
INSERT INTO src_category VALUES (140,'���s',100,'dog.gif');
INSERT INTO src_category VALUES (150,'�X�|�[�c',100,'dog.gif');
INSERT INTO src_category VALUES (210,'�H��',200,'dog.gif');
INSERT INTO src_category VALUES (220,'�����^���w���X',200,'dog.gif');
INSERT INTO src_category VALUES (230,'�Ō�',200,'dog.gif');
INSERT INTO src_category VALUES (240,'���',200,'dog.gif');
INSERT INTO src_category VALUES (310,'�ŋ�',300,'dog.gif');
INSERT INTO src_category VALUES (320,'�Q�[��',300,'dog.gif');
INSERT INTO src_category VALUES (330,'�o�ϊw',300,'dog.gif');
INSERT INTO src_category VALUES (410,'�c������',400,'dog.gif');
INSERT INTO src_category VALUES (420,'���w�Z',400,'dog.gif');
INSERT INTO src_category VALUES (430,'���w�E���Z',400,'dog.gif');
INSERT INTO src_category VALUES (440,'�Љ�l',400,'dog.gif');
INSERT INTO src_category VALUES (510,'�����肢',500,'dog.gif');
INSERT INTO src_category VALUES (520,'�J�[�h�肢',500,'dog.gif');
INSERT INTO src_category VALUES (530,'���m�̐肢',500,'dog.gif');
INSERT INTO src_category VALUES (540,'�����肢',500,'dog.gif');
INSERT INTO src_category VALUES (610,'�Z�܂�',600,'dog.gif');
INSERT INTO src_category VALUES (620,'�Ƒ�',600,'dog.gif');
INSERT INTO src_category VALUES (630,'�����K�C�h',600,'dog.gif');
INSERT INTO src_category VALUES (710,'�G��',700,'dog.gif');
INSERT INTO src_category VALUES (720,'�e���r�E���W�I',700,'dog.gif');
INSERT INTO src_category VALUES (730,'�V��',700,'dog.gif');
INSERT INTO src_category VALUES (810,'�Ȋw',800,'dog.gif');
INSERT INTO src_category VALUES (820,'�F��',800,'dog.gif');
INSERT INTO src_category VALUES (830,'�V���w',800,'dog.gif');
INSERT INTO src_category VALUES (111,'�J�[�h',110,'cat.gif');
INSERT INTO src_category VALUES (112,'�؎�',110,'cat.gif');
INSERT INTO src_category VALUES (113,'���܂�',110,'cat.gif');
INSERT INTO src_category VALUES (114,'���N��',110,'cat.gif');
INSERT INTO src_category VALUES (115,'���v',110,'cat.gif');
INSERT INTO src_category VALUES (121,'�|�b�v�X',120,'cat.gif');
INSERT INTO src_category VALUES (122,'�N���V�b�N',120,'cat.gif');
INSERT INTO src_category VALUES (123,'���w',120,'cat.gif');
INSERT INTO src_category VALUES (124,'�`�����y',120,'cat.gif');
INSERT INTO src_category VALUES (125,'�W���Y',120,'cat.gif');
INSERT INTO src_category VALUES (131,'��|',130,'cat.gif');
INSERT INTO src_category VALUES (132,'�؍H',130,'cat.gif');
INSERT INTO src_category VALUES (133,'�K���X',130,'cat.gif');
INSERT INTO src_category VALUES (134,'���|',130,'cat.gif');
INSERT INTO src_category VALUES (135,'���̑��H��E�H�|',130,'cat.gif');
INSERT INTO src_category VALUES (141,'�������s',140,'cat.gif');
INSERT INTO src_category VALUES (142,'�C�O���s',140,'cat.gif');
INSERT INTO src_category VALUES (143,'�h',140,'cat.gif');
INSERT INTO src_category VALUES (144,'�ό�',140,'cat.gif');
INSERT INTO src_category VALUES (145,'�`�P�b�g',140,'cat.gif');
INSERT INTO src_category VALUES (151,'���Z',150,'cat.gif');
INSERT INTO src_category VALUES (152,'����',150,'cat.gif');
INSERT INTO src_category VALUES (153,'���j',150,'cat.gif');
INSERT INTO src_category VALUES (154,'�i���Z',150,'cat.gif');
INSERT INTO src_category VALUES (155,'winter�X�|�[�c',150,'cat.gif');
INSERT INTO src_category VALUES (211,'�h�{',210,'cat.gif');
INSERT INTO src_category VALUES (212,'�H�i',210,'cat.gif');
INSERT INTO src_category VALUES (213,'���V�s',210,'cat.gif');
INSERT INTO src_category VALUES (214,'�ۑ��H',210,'cat.gif');
INSERT INTO src_category VALUES (215,'�T�v�������g',210,'cat.gif');
INSERT INTO src_category VALUES (216,'�X�g���X',210,'cat.gif');
INSERT INTO src_category VALUES (221,'�S���w',220,'cat.gif');
INSERT INTO src_category VALUES (222,'�J�E���Z�����O',220,'cat.gif');
INSERT INTO src_category VALUES (241,'���Ö@',240,'cat.gif');
INSERT INTO src_category VALUES (242,'���k',240,'cat.gif');
INSERT INTO src_category VALUES (831,'�a���E����',830,'cat.gif');
INSERT INTO src_category VALUES (832,'����',830,'cat.gif');
INSERT INTO src_category VALUES (833,'�I�[����',830,'cat.gif');

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


INSERT INTO src_master VALUES ('�H�i�Y����','http://member.nifty.ne.jp/Y-Yamada/addition',212,'2000-05-16',5339,'�H�i�Y�����ɂ��ďڂ�������B');
INSERT INTO src_master VALUES ('���U�w�K�̃y�[�W','http://member.nifty.ne.jp/Y-Yamada/adult01',440,'2001-07-19',7891,'���U�w�K�Ƃ������t�������m�ł����H���̃y�[�W�ł͐��U�w�K�ɂ��ĊF�ōl���Ă��܂��B');
INSERT INTO src_master VALUES ('�ʐM����̂��炪��','http://member.nifty.ne.jp/Y-Yamada/adult02',440,'2000-06-12',2349,'�ʐM����̎��Ԓ����B�L���ɘf�킳��Ă��܂��񂩁H');
INSERT INTO src_master VALUES ('�K�������W','http://member.nifty.ne.jp/Y-Yamada/adult03',440,'2000-11-30',4398,'�b��̃t�������R��S�X�y���ȂǁB�l�C�̋��������B');
INSERT INTO src_master VALUES ('�ꔭ�ڊo�����v','http://member.nifty.ne.jp/Y-Yamada/alarm_clock',115,'2000-11-25',7329,'�˂ڂ���������R���ň��S�B�ꔭ�Ŗڂ��o�߂�ڊo�����v�B');
INSERT INTO src_master VALUES ('���낢��D�M','http://member.nifty.ne.jp/Y-Yamada/ashtray',113,'2000-02-04',16398,'�^�o�R�̌i�i�D�M�B���\�F�X����B���C�ɓ���g�ъD�M�B');
INSERT INTO src_master VALUES ('���Ɛ��̊ώ@���L','http://member.nifty.ne.jp/Y-Yamada/astoronomy01',830,'2000-04-10',5135,'�ċx�݂ɖ����������Ɛ��̊ώ@���L�̃y�[�W�ł��B');
INSERT INTO src_master VALUES ('�V�̎ʐ^�B�e','http://member.nifty.ne.jp/Y-Yamada/astoronomy02',830,'2001-03-20',3464,'�V�̎ʐ^�̎�����}���g���ďڂ�������B�f�W�^���J�����B');
INSERT INTO src_master VALUES ('���H�̂��ׂ�','http://member.nifty.ne.jp/Y-Yamada/astoronomy03',830,'2000-04-01',7453,'���H�̎n�܂肩��I���܂ł��ʐ^�B�e�B���E�e�n�̓��H�B');
INSERT INTO src_master VALUES ('�I�[��������','http://member.nifty.ne.jp/Y-Yamada/aurora01',833,'2000-08-09',1235,'�I�[�����ɂ��Ă̌������ʔ��\�B�I�[�����֘A�����N�B');
INSERT INTO src_master VALUES ('�A���X�J���s','http://member.nifty.ne.jp/Y-Yamada/aurora02',833,'2001-06-10',6342,'�A���X�J���s�B�I�[�����̎B�e�ɐ����B�ƂĂ����z�I�ł��B');
INSERT INTO src_master VALUES ('��ɂƃI�[������','http://member.nifty.ne.jp/Y-Yamada/aurora03',833,'1999-10-28',16352,'��ɂł̕�炵�Ԃ�ɂ��āB�I�[������w�i�Ƀp�`���B');
INSERT INTO src_master VALUES ('�͂��߂Ă̂�����','http://member.nifty.ne.jp/Y-Yamada/babyhood01',410,'2000-09-08',4332,'ABC�̉̂���͂��܂�A�����b�܂ŁB�c���ׂ̈̉p�ꋳ���B');
INSERT INTO src_master VALUES ('�X�|�[�c�Ŕ]��b����','http://member.nifty.ne.jp/Y-Yamada/babyhood02',410,'2000-04-01',9438,'���y�ɂ��킹�Ĕ�񂾂�͂˂��肵�Ȃ���A�����Z���̊w�K�B');
INSERT INTO src_master VALUES ('�͂����ŗV��','http://member.nifty.ne.jp/Y-Yamada/babyhood03',410,'2001-11-09',1374,'���c�t���ł́A�S����N���͂����ł��B���̗������������邱�Ƃł́A�ƂĂ��ǂ����Ƃł��B');
INSERT INTO src_master VALUES ('�o�h�~���g�����D��','http://member.nifty.ne.jp/Y-Yamada/bado',151,'2000-10-19',5237,'�o�h�~���g���D���Ȑl�Ȃ�N�ł��ǂ����I�N����֌W�Ȃ��ł��B');
INSERT INTO src_master VALUES ('�o���h','http://member.nifty.ne.jp/Y-Yamada/band',121,'2001-04-03',12726,'���ꂩ�甄��鍡�A���ڂ̃o���h�B');
INSERT INTO src_master VALUES ('�o�g���^�b�`','http://member.nifty.ne.jp/Y-Yamada/baton',152,'2000-05-11',5393,'�^����ƌ����΃����[�B�����[�ƌ����΃o�g���^�b�`�B');
INSERT INTO src_master VALUES ('�{�u�X���[�ƃ����[�W��','http://member.nifty.ne.jp/Y-Yamada/bobu',155,'2001-12-19',4297,'�{�u�X���[�ƃ����[�W���ɂ��ĉ���B�~�G�I�����s�b�N�B');
INSERT INTO src_master VALUES ('����','http://member.nifty.ne.jp/Y-Yamada/book_classic',122,'2000-09-11',8397,'�N���V�b�N���y�Ɋւ��鏑�Д̔��B�������ȒP�B');
INSERT INTO src_master VALUES ('�����߃u�����h','http://member.nifty.ne.jp/Y-Yamada/brand',215,'2000-09-01',3428,'�T�v�������g�̂����߃u�����h�����Љ�B');
INSERT INTO src_master VALUES ('���y�E��ڗ�','http://member.nifty.ne.jp/Y-Yamada/bunraku',124,'2001-09-18',4307,'�l�`��ڗ��E���y�̉���B�ÓT�|�\�֘A�����N�W�B');
INSERT INTO src_master VALUES ('�ʋl����','http://member.nifty.ne.jp/Y-Yamada/can',214,'2000-06-01',9782,'�R�����ʋl�B�A�����ʋl�B�ʋl�łł��闿���B');
INSERT INTO src_master VALUES ('���v�̂������','http://member.nifty.ne.jp/Y-Yamada/care_clock',115,'2000-04-18',4972,'���܂��܂̎��v�̂������̎d��������B');
INSERT INTO src_master VALUES ('�N���V�b�NCD','http://member.nifty.ne.jp/Y-Yamada/cd_classical',122,'1999-03-19',32807,'�N���V�b�NCD�����L���O�B�����̒���CD�B');
INSERT INTO src_master VALUES ('�����̐؎�','http://member.nifty.ne.jp/Y-Yamada/cha_stamp',112,'2000-02-08',1276,'�����̏Z��ł������ɂ��߂������Ă̐��X�B�M�d�Ȑ؎葽������B');
INSERT INTO src_master VALUES ('�`�F�b�N�X�g���X','http://member.nifty.ne.jp/Y-Yamada/check',216,'2000-08-09',8943,'����I�ɃX�g���X�`�F�b�N�B���ߍ��܂Ȃ��ׂɁB');
INSERT INTO src_master VALUES ('���ǂ������̉�','http://member.nifty.ne.jp/Y-Yamada/child_cd',123,'2000-09-11',12897,'���wCD�B�ӊO�ƒm��Ȃ��Ȃ��������񂠂���̂ł��B');
INSERT INTO src_master VALUES ('���ǂ��̂��߂̊y��','http://member.nifty.ne.jp/Y-Yamada/child_score',123,'1999-08-26',20947,'�c���������w�y���B���ׂĂЂ炪�ȂŃC���X�g����ł��B');
INSERT INTO src_master VALUES ('�͂Ƃۂ��ۂ�������','http://member.nifty.ne.jp/Y-Yamada/children_gymnas',150,'1999-04-01',18294,'���w�͂Ƃۂ��ۂȂǂȂǂɍ��킹��A�c���p�̑��B');
INSERT INTO src_master VALUES ('���w������','http://member.nifty.ne.jp/Y-Yamada/children_song',123,'2000-05-09',14637,'�O���̓��w�Ɠ��{�̓��w�̔�r�B�����n��ʉ̂�����r�B');
INSERT INTO src_master VALUES ('���傱���ƃ`���R���[�g','http://member.nifty.ne.jp/Y-Yamada/chocolate',113,'2000-11-21',8398,'�`���R�̒����炿�傱���Əo�Ă��邨�����Ⴝ���B�ǂ��Ԃ̐Ԃ����B');
INSERT INTO src_master VALUES ('�䂪�Ƃ̒u���v','http://member.nifty.ne.jp/Y-Yamada/clock',115,'2001-01-13',3421,'�e�����ɂ���䂪�Ƃ̒u���v�����Љ�B');
INSERT INTO src_master VALUES ('���킢���z�W��','http://member.nifty.ne.jp/Y-Yamada/cloth',131,'2000-11-15',5983,'�ԕ���L�����N�^�[���Ȃǂ����ȕ����L�x�B�������ގ��ɂ���������Ă܂��B');
INSERT INTO src_master VALUES ('�J�E���Z���[��������','http://member.nifty.ne.jp/Y-Yamada/counselor01',222,'2000-07-28',5142,'1�l�ŔY��łĂ��d���Ȃ��B���ȃJ�E���Z���[�̌������B');
INSERT INTO src_master VALUES ('���[���ŃJ�E���Z�����O','http://member.nifty.ne.jp/Y-Yamada/counselor02',222,'2000-05-18',2356,'���[�����g���ċC�y�ɃJ�E���Z�����O���󂯂Ă݂悤�B');
INSERT INTO src_master VALUES ('�����̔Y��','http://member.nifty.ne.jp/Y-Yamada/counselor03',222,'2001-07-24',8252,'�����ɂ���������Ȃ��Y�݂͂���ς菗���̃J�E���Z���[�B');
INSERT INTO src_master VALUES ('���y�Ö@�̂��ׂ�','http://member.nifty.ne.jp/Y-Yamada/cure01',241,'2000-02-18',5123,'��Q����s�𐫘V�l�ɑ΂���~���[�W�b�N�Z���s�[�ɂ���');
INSERT INTO src_master VALUES ('�A�j�}���Z���s�[','http://member.nifty.ne.jp/Y-Yamada/cure02',241,'2000-06-01',6234,'������ݗÖ@�B�V�l�z�[���ł���l�C�B');
INSERT INTO src_master VALUES ('���|�Ö@','http://member.nifty.ne.jp/Y-Yamada/cure03',241,'2001-04-04',2341,'�K�[�f�j���O��ʂ��ă��t���b�V���B�����b�N�X�B');
INSERT INTO src_master VALUES ('�댯�Ȃ��ׂ���','http://member.nifty.ne.jp/Y-Yamada/danger',212,'2000-02-19',4271,'�J�ɏo����Ă���댯�ȐH�i�ɂ��ĉ���B');
INSERT INTO src_master VALUES ('����܂��','http://member.nifty.ne.jp/Y-Yamada/dharma',114,'2000-07-25',3167,'���낢��Ȃ���܂̏Љ�B����p����܁B�󌱍��i�p����܁B');
INSERT INTO src_master VALUES ('�ڂ�����`��','http://member.nifty.ne.jp/Y-Yamada/diving',153,'2001-09-10',7764,'��э��݋��Z�̃��[�������B��э��݂̂ł���v�[���{�݁B');
INSERT INTO src_master VALUES ('���w�̉�','http://member.nifty.ne.jp/Y-Yamada/douyounokai',123,'2000-05-18',7286,'�ꏏ�ɓ��w���̂��Ă݂܂��񂩁B���S�Ҋ��}�ł��B');
INSERT INTO src_master VALUES ('��Έ��Y','http://member.nifty.ne.jp/Y-Yamada/easy_delivery',114,'2001-03-18',7438,'���̈��Y�̂����ł����S�z�Ȃ��B���C�Ȏq�ǂ������܂�܂��B');
INSERT INTO src_master VALUES ('���̃}�C�z�[��','http://member.nifty.ne.jp/Y-Yamada/economy01',310,'2000-11-26',2604,'���낻��}�C�z�[�������������Ȃ��B�ł��A�����˂��c�Z��w���Ɋւ�邨���̂��b�B');
INSERT INTO src_master VALUES ('�Ƃ��Ă��ȒP�m��\��','http://member.nifty.ne.jp/Y-Yamada/economy02',310,'2000-06-10',3216,'���N�A�N�x���ɂȂ�Ɠ���Y�܂��Ă��܂��m��\���B������񂵂ɂȂ��āA�����ł��Ă�鎖�ɁB�m��\��Q&A');
INSERT INTO src_master VALUES ('�_�l������グ','http://member.nifty.ne.jp/Y-Yamada/economy03',310,'2001-04-09',2820,'�@���ƌ����ǂ��ŋ��͕���˂΁B�@���@�l�̐ŋ��Ɖ�v�ɂ��āB�}���T�̓������Ƃ��鋳��̃G�s�\�[�h�t�B');
INSERT INTO src_master VALUES ('�ŋ��ނ������̂�����','http://member.nifty.ne.jp/Y-Yamada/economy04',310,'2001-05-18',2648,'�̂̐ŋ��ƍ��̐ŋ����y�����C���X�g�ŉ���B�d�łɂ��ďڂ��������B�ŋ��̎g�����A�m���Ă܂����H');
INSERT INTO src_master VALUES ('�����ɂ�����邨�d��','http://member.nifty.ne.jp/Y-Yamada/economy06',330,'2001-02-27',1065,'��s�����ŗ��m����v�m�B�����ɂ������E�Ƃ͂����ς��B�����̐��ƂɂȂ�B��v�p��ɂ���');
INSERT INTO src_master VALUES ('���͓V���̂܂�����','http://member.nifty.ne.jp/Y-Yamada/economy07',330,'2001-03-26',1603,'�����͂�����g���Ă�́H�o�c�w�̊�b���킩��₷������B���邮��܂�邨���̍s����B');
INSERT INTO src_master VALUES ('������A����Љ�̕׋�','http://member.nifty.ne.jp/Y-Yamada/economy08',330,'2001-07-02',2105,'�o�ώv�z�j��Љ�v�z�j���ĂȂ񂶂��ق��B�w���̂����ɂ܂��߂ɕ׋����Ƃ��΂悩�����c');
INSERT INTO src_master VALUES ('�j�b�|����Ԏ�','http://member.nifty.ne.jp/Y-Yamada/economy09',330,'2000-09-28',1803,'�o�ϐ���ɂ��āB�s�Ǎ����ĂȂ񂾂낤�B�q�ǂ��ɂ��킩��A�ڂ����₳���������ł��B');
INSERT INTO src_master VALUES ('�����̂Ȃ���s','http://member.nifty.ne.jp/Y-Yamada/economy11',300,'2001-02-07',8065,'�C���^�[�l�b�g�o���L���O�̐����B�킴�킴��s�܂ōs���Ȃ��Ă��A�Ƃ���U���E�����E�ȂǏo�����Ⴄ�́B');
INSERT INTO src_master VALUES ('���@�̂���','http://member.nifty.ne.jp/Y-Yamada/economy12',300,'2000-06-09',8403,'�d�q�}�l�[�����Ő����ł���H�����A�����z�͕K�v�Ȃ��B�������Ȃ��Ȃ���B�f�r�b�g�J�[�h���Ēm���Ă�H');
INSERT INTO src_master VALUES ('���Ȃ���ɂ��Ċׂۖ�','http://member.nifty.ne.jp/Y-Yamada/economy13',300,'2001-08-03',8615,'�z�[���g���[�h���ĂȂ񂾂낤�B�������ɋ��Ȃ���ɂ��āA�ׂ����Ⴄ�p�������Ⴄ�B�@�d�b�⃁�[���Ŋ��̔���');
INSERT INTO src_master VALUES ('���ꂩ��̃r�W�l�X','http://member.nifty.ne.jp/Y-Yamada/economy14',300,'2000-07-16',8614,'��Ɗԓd�q������Ɋւ��鍑���O�̎��p������B�z�肳�����ɑ΂���A������������p�ӁB');
INSERT INTO src_master VALUES ('������v�Ƃ�','http://member.nifty.ne.jp/Y-Yamada/education01',400,'2000-08-06',9873,'�J�ŋ��΂�Ă��鋳����v�Ƃ͉����B�{���ɋ���͕ς��̂��B');
INSERT INTO src_master VALUES ('���ꂩ��̋���','http://member.nifty.ne.jp/Y-Yamada/education02',400,'2001-06-19',23487,'���ꂩ��̋���ɂ��āB�w�Z�̂�����B�w���@�ȂǁB');
INSERT INTO src_master VALUES ('����҂Ƃ���','http://member.nifty.ne.jp/Y-Yamada/education03',400,'2000-11-15',3478,'����҂Ƃ��Ăǂ�����ׂ����B�����̗p�����̌������ȂǁB');
INSERT INTO src_master VALUES ('������͂�','http://member.nifty.ne.jp/Y-Yamada/education04',400,'2000-07-02',5382,'������͂Ƃ͉����B���ʊ����E��������ɂ��āB');
INSERT INTO src_master VALUES ('�h�{�m�ɂȂ肽��','http://member.nifty.ne.jp/Y-Yamada/eiyou',211,'2000-08-10',4969,'�h�{�m�ɂȂ�ɂ͂ǂ�����΂����̂��B');
INSERT INTO src_master VALUES ('�h�{�m�̂������߃��V�s','http://member.nifty.ne.jp/Y-Yamada/eiyou_menu',213,'1999-02-14',10298,'�Ǘ��h�{�m���������߂���h�{���_�ȒP���V�s�B');
INSERT INTO src_master VALUES ('�Ƒ��ŉw�`','http://member.nifty.ne.jp/Y-Yamada/ekiden',620,'2001-08-12',4169,'�e�ʁE�Ƒ��`�[���ŋ��������w�`���B');
INSERT INTO src_master VALUES ('���X�߂���','http://member.nifty.ne.jp/Y-Yamada/elementary01',420,'2001-09-07',7439,'�u�������v�̎��ƁB�w�Z���ӂ̂��X�߂�������āA���X�̐l����b�𕷂��܂��B');
INSERT INTO src_master VALUES ('�w���V���z�[���y�[�W','http://member.nifty.ne.jp/Y-Yamada/elementary02',420,'2000-10-17',6541,'4�N1�g�̊w���V���z�[���y�[�W�B�w����ł̃j���[�X���f�ځB');
INSERT INTO src_master VALUES ('�y�b�g�{�g���Ń��P�b�g���','http://member.nifty.ne.jp/Y-Yamada/elementary03',420,'2000-04-01',7324,'�y�b�g�{�g���Ń��P�b�g�����܂����B���Ȃ̎��Ƃ��y�����Ȃ�܂����B');
INSERT INTO src_master VALUES ('�������ƈ玙','http://member.nifty.ne.jp/Y-Yamada/family01',620,'2000-08-29',5478,'�������̉ƒ�ɂ�����玙�̂�����ɂ��Ă̘b�������B�ǂ�ǂ񓊍e���������B');
INSERT INTO src_master VALUES ('�񐢑яZ���ɂ���','http://member.nifty.ne.jp/Y-Yamada/family02',620,'2000-03-01',6934,'�񐢑яZ���̃����b�g�f�����b�g�B�̌��k�������ďڂ����B');
INSERT INTO src_master VALUES ('�Ƒ��̒a����','http://member.nifty.ne.jp/Y-Yamada/family03',620,'2000-06-23',3124,'�Ƒ��̒a�����ɂ́A���񌈂܂��Ď芪�����i�B��ƒc�R�̂ЂƎ��ł��B');
INSERT INTO src_master VALUES ('���w�ɂ���','http://member.nifty.ne.jp/Y-Yamada/folk',124,'1999-03-12',18361,'�e�n�̖��w�����B�O�����A���ہA�S�̋����Љ�B');
INSERT INTO src_master VALUES ('���ׂ��̂Ō��N','http://member.nifty.ne.jp/Y-Yamada/food_health',211,'2000-02-18',9802,'������ނ��A�H���Ō��N�ɂȂ낤�B');
INSERT INTO src_master VALUES ('���H����H��','http://member.nifty.ne.jp/Y-Yamada/food01',210,'2000-07-12',4329,'���H���E��H�����̂ɋy�ڂ��e���ɂ��āB�悭����ł������ƐH�ׂ悤�B');
INSERT INTO src_master VALUES ('�G���̌��̕�','http://member.nifty.ne.jp/Y-Yamada/fortune01',510,'2001-01-10',9064,'�R���r�j��{���ŎG������������ƁA�������̕��̐����肢�����Ă��܂���ˁB�ǂ�Ȏ��ɁA�肢�����Ȃ�H');
INSERT INTO src_master VALUES ('�ւт������H','http://member.nifty.ne.jp/Y-Yamada/fortune02',510,'2001-02-06',94562,'�F�����13�����肢���Ēm���Ă܂����H������12�����ɂւт������Ƃ����A������������Ă�炵���B');
INSERT INTO src_master VALUES ('�P�Q�ʂ肵���Ȃ��̂���','http://member.nifty.ne.jp/Y-Yamada/fortune03',510,'2000-12-11',9452,'�����肢�ƌ����Ƃ���ς�12.�����B�ł��A12�ʂ肵���Ȃ��Ȃ�āc�����ŁA���t�^�Ȃǂ��v���X���Ă����Əڂ�������Ă݂悤�B');
INSERT INTO src_master VALUES ('�}�j�A�b�N�����肢','http://member.nifty.ne.jp/Y-Yamada/fortune04',510,'2001-01-16',11206,'�a���������ƂɁA�����Ő肤�̂͂�����܂��B�ł��A�����ł͍X�ɍׂ������܂ꂽ�����܂ŎQ�l�ɂ��Đ肢�܂��B');
INSERT INTO src_master VALUES ('�^���b�g����','http://member.nifty.ne.jp/Y-Yamada/fortune06',520,'2001-01-17',12105,'�^���b�g�J�[�h���g���������肢�����Љ�B�����Ȏ�ނ̃^���b�g�J�[�h�̔̔�������Ă܂���B');
INSERT INTO src_master VALUES ('�g�����Ղ��','http://member.nifty.ne.jp/Y-Yamada/fortune07',520,'2001-02-20',12305,'�g�����v���g���������肢�̑����T�C�g�B�����Ȑ肢�����邩��A�����ς������Ă݂ĂˁB');
INSERT INTO src_master VALUES ('�����g�����v','http://member.nifty.ne.jp/Y-Yamada/fortune08',520,'2001-02-26',14095,'�g�����v�J�[�h�ł��낢��Ȑ肢������Ă݂悤�B�����肢�͂������̎��A���^�⌒�N�^���B');
INSERT INTO src_master VALUES ('�Q�[���ł���Ȃ�','http://member.nifty.ne.jp/Y-Yamada/fortune09',520,'2001-03-16',16307,'�����ȃg�����v�Q�[����ʂ��Đ�����Ⴄ�B�_�o����E���Ȃ�ׂȂǂȂǁB�r���ł��^���͍ō��������肵�āB');
INSERT INTO src_master VALUES ('���w����Ȃ���','http://member.nifty.ne.jp/Y-Yamada/fortune11',530,'2001-04-16',16037,'���A�J�ŉ\��0�w�肢�B���Ȃ��͂����A����Ă݂��H�^�e���r�ԑg�ł����グ��ꂽ�O�w�肢�̃T�C�g�ł��B');
INSERT INTO src_master VALUES ('������ɉԂ̓_��','http://member.nifty.ne.jp/Y-Yamada/fortune12',530,'2001-05-24',17036,'�����肢�B������ɂ��Ԃ��������Ⴂ���Ȃ��A�Ƃ��c���p�ɂ���āA�K�^���Ăэ��ސF������Ƃ��B');
INSERT INTO src_master VALUES ('�l������','http://member.nifty.ne.jp/Y-Yamada/fortune13',530,'2001-05-16',15064,'�S�̒��i�N�E���E���E���j���琄�����邩��l�������B���Ȃ��̐��i�ƍ����̉^����肢�܂��B');
INSERT INTO src_master VALUES ('���݂�����','http://member.nifty.ne.jp/Y-Yamada/fortune14',530,'2001-06-03',12064,'�����炭��̂��݂����B�����̉^���́H�~���N���b�N����ƁA���𐁂��܂��B���̌㌋�ʂ��o���B');
INSERT INTO src_master VALUES ('�΂����ł��肢','http://member.nifty.ne.jp/Y-Yamada/fortune16',540,'2001-06-01',14502,'���̐l�Ǝ��̐��N�����𑫂�����������肵�āA���낢��肦���Ⴄ��B�����āA�����͂ǂ�������B');
INSERT INTO src_master VALUES ('���������肢','http://member.nifty.ne.jp/Y-Yamada/fortune17',540,'2001-01-03',16175,'�����̌g�єԍ�����肤���������肢�B�g�т�ς�����ܘ_�A�^�����ς�����Ⴂ�܂��B');
INSERT INTO src_master VALUES ('My�@Name����Ȃ�','http://member.nifty.ne.jp/Y-Yamada/fortune18',540,'2001-04-16',10342,'���O�𐔎��ɒu�������āA�肢�܂��B�����肢���琫�i���f�܂ŁB���̐l�̎�������Ă݂�H');
INSERT INTO src_master VALUES ('�a��������','http://member.nifty.ne.jp/Y-Yamada/fortune19',540,'2001-06-21',11206,'���N�����A�j���A��������肤�{�i�A�a�����肢�B����̋M���̉^����m���āA�y�����߂������B');
INSERT INTO src_master VALUES ('�M����肢','http://member.nifty.ne.jp/Y-Yamada/fortune21',500,'2001-04-27',15064,'�p�b���[���I�Ɗ��������M�Ő肤�A�M����肢�B�Ȃ񂾂����������Ȃ��悤�ȋC�����邯�ǁc���₳����Q�����Ⴄ�H');
INSERT INTO src_master VALUES ('�}�_���E�_�[�W����','http://member.nifty.ne.jp/Y-Yamada/fortune22',500,'2001-04-30',13023,'�C�����߂��g����z�ɂ��炵�āA���̐��݂Ő肤��g�����ݐ肢�B�����񂭂������ǁA�������ł��B');
INSERT INTO src_master VALUES ('�_�[�c�ő哖����','http://member.nifty.ne.jp/Y-Yamada/fortune23',500,'2001-05-09',14065,'���̂܂܃Y�o���̃_�[�c�肢�B�_�[�c�̓��������������Ȃ��̉^���B�Ƃ��Ă��V���v�������ǁA�_�[�c�𓖂Ă�̂�����B');
INSERT INTO src_master VALUES ('���ȉ�','http://member.nifty.ne.jp/Y-Yamada/fortune24',500,'2001-04-29',12035,'�̂��炠��Ԃт�肢�B����ς�R������ԓ�����B�ł��A�Ԃт�̏��Ȃ��Ԃ��Ⴀ�˂��B');
INSERT INTO src_master VALUES ('���񂱂񂳂�','http://member.nifty.ne.jp/Y-Yamada/fox',114,'1999-08-04',12367,'�䂪�Ƃ̂��ˁB���񂱂񂳂܁B���ł������Ă����B');
INSERT INTO src_master VALUES ('���ł��Ⓚ','http://member.nifty.ne.jp/Y-Yamada/freeze',210,'2000-02-01',5439,'�ق�̏����̎�Ԃł��낢��Ⓚ�ۑ��B');
INSERT INTO src_master VALUES ('������̂҂�񂽂���','http://member.nifty.ne.jp/Y-Yamada/frog',152,'2000-06-18',4107,'�O�i���т̒��ѕ����}���K�������ĕ�����₷�������B');
INSERT INTO src_master VALUES ('��y�̕���','http://member.nifty.ne.jp/Y-Yamada/gagaku',124,'2000-06-09',4625,'��y�c�̂̏Љ�B��y��̉���B���y�A����y�Ȃǂɂ��āB');
INSERT INTO src_master VALUES ('�K���R�̂��܂�','http://member.nifty.ne.jp/Y-Yamada/galiko',113,'2000-04-12',18926,'�̂���̃V���[�Y�B���炵�V���[�Y�B�q�[���[�V���[�Y�B');
INSERT INTO src_master VALUES ('��`�q�g�����H�i��','http://member.nifty.ne.jp/Y-Yamada/gene',212,'2001-09-10',4231,'��`�q�g�����H�i�ɂ��Đ����B');
INSERT INTO src_master VALUES ('���C�������','http://member.nifty.ne.jp/Y-Yamada/genki',210,'2001-02-01',4292,'�h�{�Ɋւ����{�m���B�Ǐ�ʕs���h�{�ꗗ�B');
INSERT INTO src_master VALUES ('�O�b�Y�ŉ���','http://member.nifty.ne.jp/Y-Yamada/goods',216,'2001-02-04',9873,'�X�g���X�����O�b�Y��̔��B�����炽�������₶�ŁA�S�L�u���łȂǂȂǁB');
INSERT INTO src_master VALUES ('���̃K���X�H�[','http://member.nifty.ne.jp/Y-Yamada/grass01',133,'2000-08-09',1532,'�L���̎R���̃K���X�H�[�����w�����B�K���X�̕��������Ă݂܂����B');
INSERT INTO src_master VALUES ('�n���o�[�K�[�̂��܂�','http://member.nifty.ne.jp/Y-Yamada/hamburger',110,'2001-02-04',17368,'�l�C�̉f��L�����N�^�[�t�B�M���A���X�g���b�v�B');
INSERT INTO src_master VALUES ('���ȂÂ��̉�','http://member.nifty.ne.jp/Y-Yamada/hammer',153,'2000-12-15',4242,'�j����l�͓���ł��܂���B�j���Ȃ��l�ׂ̈̐��j�T�[�N���B');
INSERT INTO src_master VALUES ('�ԎD���܂���','http://member.nifty.ne.jp/Y-Yamada/hanafuda',320,'2000-10-01',5673,'�ԎD�̃��[���𕪂���₷�������B�F�X�ȗV�ѕ��Љ�B');
INSERT INTO src_master VALUES ('�����q','http://member.nifty.ne.jp/Y-Yamada/hayashi',124,'2000-02-01',2398,'�՚��q�̗��j�Ɗy��̐����B�N�ԍs���X�P�W���[���B');
INSERT INTO src_master VALUES ('��荂����艓����','http://member.nifty.ne.jp/Y-Yamada/high',152,'2001-08-10',4217,'���荂���сA�����т̐����B���Z�����B');
INSERT INTO src_master VALUES ('6�N�ԉp��','http://member.nifty.ne.jp/Y-Yamada/highschool01',430,'1999-07-01',7498,'������эZ�̊ې��w���ł́A6�N�Ԓʂ��ŉp����Ƃ��s���Ă��܂��B');
INSERT INTO src_master VALUES ('���k�̓V�g','http://member.nifty.ne.jp/Y-Yamada/highschool02',430,'1999-05-18',16278,'�v�t���̓�����_��Ԃ������B�X�N�[���J�E���Z���[�B');
INSERT INTO src_master VALUES ('�N���u����','http://member.nifty.ne.jp/Y-Yamada/highschool03',430,'2000-11-16',5981,'�^�����B�������B���ꂼ��̃N���u�����A���т��f�ځB');
INSERT INTO src_master VALUES ('�ς����ς�����y��','http://member.nifty.ne.jp/Y-Yamada/horse',150,'2000-08-10',3496,'�A�b�g�z�[���ȏ�n��y���B���������̌���t���B');
INSERT INTO src_master VALUES ('�p���t���}�}�̖C�ۓ���','http://member.nifty.ne.jp/Y-Yamada/hougan',152,'2000-01-18',4307,'�X�g���X�����H�}�}�̖C�ۓ����B�p�p��������΂��ꂿ�Ⴄ�H');
INSERT INTO src_master VALUES ('�U�E�J�[�����O','http://member.nifty.ne.jp/Y-Yamada/ice',155,'2000-09-07',1108,'�J�[�����O�̃��[�������B�p��W��I��Љ�B');
INSERT INTO src_master VALUES ('�A���H�i�̃����b�g�E�f�����b�g','http://member.nifty.ne.jp/Y-Yamada/import',212,'1999-01-19',3298,'�A���H�i��H�ׂ܂����H�ӊO�ƒm��Ȃ��g�߂ȗA���H�i�B');
INSERT INTO src_master VALUES ('�����Ă̒��̍�������','http://member.nifty.ne.jp/Y-Yamada/insect_stamp',112,'2000-04-02',12386,'���܂��܂ȍ����؎���Љ�B');
INSERT INTO src_master VALUES ('���{�̊y��E���E�̊y��','http://member.nifty.ne.jp/Y-Yamada/instrument',120,'2000-05-11',4879,'���{�×��̊y�킩�琢�E�e���̖������y�y��܂ŉ���B');
INSERT INTO src_master VALUES ('�����ɂ��','http://member.nifty.ne.jp/Y-Yamada/invite',114,'2000-11-13',6849,'�����L�̃R���N�V�����Љ�B���C�ɓ��菵���L�ʐ^���B');
INSERT INTO src_master VALUES ('�W���Y��b�u��','http://member.nifty.ne.jp/Y-Yamada/jazz_kiso',125,'2000-06-18',8367,'�W���Y�̗��j�B�W���Y�̒������B');
INSERT INTO src_master VALUES ('�W���Y�I�[�P�X�g��','http://member.nifty.ne.jp/Y-Yamada/jazz_orchestra',125,'1999-11-17',10123,'�A�}�`���A�r�b�O�o���h�B�����o�[�Љ�B���C�u�����X�P�W���[���B');
INSERT INTO src_master VALUES ('�W���Y�i��Poo','http://member.nifty.ne.jp/Y-Yamada/jazz_tea',125,'2000-09-11',12169,'�W���Y�̐����t�����̂��݂Ȃ���A�������e�B�[�^�C�����B');
INSERT INTO src_master VALUES ('���{�̐؎�','http://member.nifty.ne.jp/Y-Yamada/jp_stamp',112,'2000-01-30',9832,'���{�̐؎�J�^���O�B�ŐV�L�O�؎�B');
INSERT INTO src_master VALUES ('�����L���OJ-POP','http://member.nifty.ne.jp/Y-Yamada/j-pop',121,'2000-02-14',21879,'J-POP�B�V���O���A�A���o���T�Ԕ��ド���L���O�B');
INSERT INTO src_master VALUES ('�W���[�X�Ƃ�������','http://member.nifty.ne.jp/Y-Yamada/juice',113,'2000-04-19',13786,'���킢���{�g���L���b�v�B1���{��1�{�̊m���ŃS�[���h�L���b�v�B');
INSERT INTO src_master VALUES ('�Ǐ�ʊŌ�','http://member.nifty.ne.jp/Y-Yamada/kango01',230,'2000-07-17',9782,'�Ǐ�ʂ̊Ō�̎d���ɂ��āB�ƒ�łł��鉞�}���u�ȂǁB');
INSERT INTO src_master VALUES ('�i�[�X�̂Ђ݂�','http://member.nifty.ne.jp/Y-Yamada/kango02',230,'2000-02-02',9535,'�i�[�X�������m���Ă���a�@�E��҂̔閧�B�i�[�X�B�̖{���B');
INSERT INTO src_master VALUES ('���҂̂�����','http://member.nifty.ne.jp/Y-Yamada/kango03',230,'1999-02-10',4322,'�Ō�w�̎������҂ƂȂ��Ă͂��߂Ēm�����A���҂̋C�����B');
INSERT INTO src_master VALUES ('�J���I�P','http://member.nifty.ne.jp/Y-Yamada/karaoke',121,'2000-12-21',28312,'�ŐV�q�b�g�J���I�P�B���ɉ̂��郏���|�C���g�u���B');
INSERT INTO src_master VALUES ('�U�E�J���^','http://member.nifty.ne.jp/Y-Yamada/karuta',111,'2001-03-17',8948,'�J���^���W�B�J���^�̗��j�ɂ��āB���{�ōs���鋣�Z�J���^���B');
INSERT INTO src_master VALUES ('�����������g���g','http://member.nifty.ne.jp/Y-Yamada/keep',214,'2000-11-18',3427,'����Ȃɂ��郌�g���g�H�ށB�ۑ����Ԃ������ĕ֗��B');
INSERT INTO src_master VALUES ('���{���@�̂��ׂ�','http://member.nifty.ne.jp/Y-Yamada/kenpou',154,'2000-06-05',1296,'���{���@�̐����B�Z�p�◝�_�Ȃǉ���B');
INSERT INTO src_master VALUES ('�L�b�N�{�N�V���O�̗��j','http://member.nifty.ne.jp/Y-Yamada/kick',154,'2001-08-10',3112,'�L�b�N�{�N�V���O�̗��j�ɂ��āB���G�^�C���Ēm���Ă�H');
INSERT INTO src_master VALUES ('���߂Ă̎�҂�','http://member.nifty.ne.jp/Y-Yamada/knit',131,'2001-08-11',2879,'�j�����̂����߂āB�����S�҂ł����Ȃ炸�o�����҂݂̃Z�[�^�[�B');
INSERT INTO src_master VALUES ('�g�ݍ��킹�T�v��','http://member.nifty.ne.jp/Y-Yamada/kumiawase',215,'2000-11-18',3894,'�H�׍��킹������悤�ɃT�v���ɂ��g�ݍ��킹�������ł��B');
INSERT INTO src_master VALUES ('�J�[�i�r�Ń��b�c�S�[','http://member.nifty.ne.jp/Y-Yamada/life01',100,'2000-04-29',948,'�J�[�i�r�̐��i�ē��ƃA�t�^�[�ۏ؁B�������q�ɂȂ�Ȃ��A����ŉ��o�����S�ł��B');
INSERT INTO src_master VALUES ('�ł��鉜����T�C�g','http://member.nifty.ne.jp/Y-Yamada/life01',600,'2000-11-11',21348,'�Ǝ����d�����玙�����ł����Ȃ��鉜����B������񎩕��̎��Ԃ����č�����Ⴂ�܂��B');
INSERT INTO src_master VALUES ('�ߖ񂶂傤��','http://member.nifty.ne.jp/Y-Yamada/life02',600,'2000-04-23',24902,'�ق�̏����̓w�͂ƒm�b�ł���Ȃɐߖ���B�����ȃA�C�f�A��`�����܂��B');
INSERT INTO src_master VALUES ('�|���̗��Z','http://member.nifty.ne.jp/Y-Yamada/life03',600,'2000-04-10',5092,'�V�����ő��K���X�|���ȂǂȂǁB�ӊO�Ȃ��̂ł��ꂢ�Ɏd�グ�闠�Z���W�B');
INSERT INTO src_master VALUES ('�h���C�u�̂��߂�BGM','http://member.nifty.ne.jp/Y-Yamada/life04',100,'2001-04-08',945,'���߂Ẵf�[�g�Ńh���C�u�B�������炱��������ނ́A�I�[�f�B�I��V�������B�ʂ����Č��ʂ́c');
INSERT INTO src_master VALUES ('��l�Œ��t��','http://member.nifty.ne.jp/Y-Yamada/life21',100,'1905-06-22',3065,'���e�@�֍s���Ȃ��Ă��A��l�Œ�����B�����̒��t�����A�ȒP�����B����ŗF�l�̌������ɂ��A�����ŏo�ȁI');
INSERT INTO src_master VALUES ('�V�l�f�U�C�i�[','http://member.nifty.ne.jp/Y-Yamada/life25',100,'2001-03-01',6003,'���ꂩ�甄���ł��낤�A�V�l�f�U�C�i�[�̏��i�Љ�B�N���������A�V�u�����h��Get���悤�B');
INSERT INTO src_master VALUES ('���C�^�[�R���N�V����','http://member.nifty.ne.jp/Y-Yamada/lighter',110,'1999-08-02',20188,'�����Ŗ�������C�^�[�B��ނ������L�x�B���[�ꏊ�ɍ����Ă܂��B');
INSERT INTO src_master VALUES ('�������߃��C�u���','http://member.nifty.ne.jp/Y-Yamada/live',125,'2000-07-06',4730,'�W���Y�R���T�[�g�J�ÃX�P�W���[���B�`�P�b�g�̔��B');
INSERT INTO src_master VALUES ('�t�@�b�V�����G���J���J��','http://member.nifty.ne.jp/Y-Yamada/magazine01',710,'1999-05-02',4315,'���s����t�@�b�V�����G���B�X�[�p�[���f�������p���ϕi�B');
INSERT INTO src_master VALUES ('�T��4�R�}','http://member.nifty.ne.jp/Y-Yamada/magazine02',710,'2001-04-02',4532,'�ǎғ��e�^�}���K�G���B�T��4�R�}�B');
INSERT INTO src_master VALUES ('�����BOOK','http://member.nifty.ne.jp/Y-Yamada/magazine03',710,'2001-08-04',6233,'�y�b�g�����B��񂿂��̂��߂̂��m���A�A�N�Z�T���[�B�Ƃ��Ă����U���R�[�X�B');
INSERT INTO src_master VALUES ('�����}�K�����悤','http://member.nifty.ne.jp/Y-Yamada/mail_magazine',211,'2000-05-03',4739,'�h�{�m�̉h�q����ɂ��Ƃ��Ă����߂ɂȂ郁�[���}�K�W���B');
INSERT INTO src_master VALUES ('���f�B�A�̂����','http://member.nifty.ne.jp/Y-Yamada/media01',700,'2001-02-04',3421,'�ǂ��܂ł��������̂��B���f�B�A�̂��肩���ɂ��ċc�_�B');
INSERT INTO src_master VALUES ('�C���^�[�l�b�g�j���[�X','http://member.nifty.ne.jp/Y-Yamada/media02',700,'2001-04-12',5789,'�����̃j���[�X��f�����L���b�`�B���A���^�C���j���[�X�B');
INSERT INTO src_master VALUES ('�}�X�R�~�ƊE','http://member.nifty.ne.jp/Y-Yamada/media03',700,'2000-05-03',3241,'�}�X�R�~�ƊE�̏A�E���@�Ȃǂɂ��āB��y�B�̐��̐������^�B');
INSERT INTO src_master VALUES ('�~�}�~���m�̎d��','http://member.nifty.ne.jp/Y-Yamada/medical01',240,'2000-03-02',9873,'�~�}�~���m�̎d���ɂ��āB����̎d����ǐՁB');
INSERT INTO src_master VALUES ('��Î���','http://member.nifty.ne.jp/Y-Yamada/medical02',240,'1999-01-03',6432,'�ی����������Z�\���莎���ɂ��āB�����͈́A�ߋ����B');
INSERT INTO src_master VALUES ('��×ϗ��ɂ���','http://member.nifty.ne.jp/Y-Yamada/medical03',240,'2001-09-21',5287,'���Z�v�g�J���A�⑰�ւ̃J���e�J�����̖��ɂ��Ă̘b�������̃y�[�W');
INSERT INTO src_master VALUES ('����Ȃ����X','http://member.nifty.ne.jp/Y-Yamada/medical07',200,'2001-03-13',5054,'�l�Ԃ͈̑̂ӊO�ƃf���P�[�g�B������Ƃ������������ŕs���ǂɁB�����̃��J�j�Y����m���č����������');
INSERT INTO src_master VALUES ('�s�[�����Ƀo�C�o�C','http://member.nifty.ne.jp/Y-Yamada/medical09',200,'2001-07-08',5604,'�ˑR�̕��ɁA�����ăs�[�����̂��o�܂��B�H���ł́A�{���ɕ|���B�����ŁA�H���ł́@�\�h�@����}���u�ɂ��ĉ���B');
INSERT INTO src_master VALUES ('�撣��ꂿ���','http://member.nifty.ne.jp/Y-Yamada/medical10',200,'2001-02-24',5689,'�ˑR�|��Ă��܂����l�̕ꂿ���B�������@��ً}��p�B�l�ƕꂿ���ͤ�������L���n�߂��B');
INSERT INTO src_master VALUES ('�l�C������','http://member.nifty.ne.jp/Y-Yamada/melo',120,'2000-05-03',30298,'�l�C��J-POP�������B�_�E�����[�h�B���N�G�X�g�R�[�i�[�B');
INSERT INTO src_master VALUES ('�ْ��ƕs���̂�����','http://member.nifty.ne.jp/Y-Yamada/mental01',220,'2000-07-24',4318,'�ْ��ƕs���͂ǂ̂悤�ɑ̂ɍ�p���Ă����̂��B�}���g���Đ����B');
INSERT INTO src_master VALUES ('�A�_���g�`���h�����̓�','http://member.nifty.ne.jp/Y-Yamada/mental02',220,'2000-05-09',5318,'�A�_���g�`���h�����ƌ������t��m���Ă��܂����H');
INSERT INTO src_master VALUES ('������̐�','http://member.nifty.ne.jp/Y-Yamada/mental03',220,'2000-06-18',9872,'������́A�������𔭂��Ă��܂��B�����ł��C�Â��Ȃ������̐S�̐��𕷂��Ă݂܂��傤�B');
INSERT INTO src_master VALUES ('���_���W���Y','http://member.nifty.ne.jp/Y-Yamada/modern',120,'2000-04-03',7298,'���̖��ՏЉ�B50�N��̍�i�B�Ȗ������B');
INSERT INTO src_master VALUES ('�I���S�[���̋���','http://member.nifty.ne.jp/Y-Yamada/music_box',122,'2000-12-21',4798,'�N���V�b�N���y�𒆐S�ɒ�ԃI���S�[���̋Ȗ��Љ�B');
INSERT INTO src_master VALUES ('�����~���[�W�b�N','http://member.nifty.ne.jp/Y-Yamada/music_yurayura',120,'2000-08-01',2349,'��̂����炬�A�����̂��敗�ȂǁB�����N�[�[�V�����~���[�W�b�N�B');
INSERT INTO src_master VALUES ('�\�D','http://member.nifty.ne.jp/Y-Yamada/nameplate',110,'2001-04-21',13786,'�ƒ�ɕ����Ăԕ\�D�B');
INSERT INTO src_master VALUES ('�Ȃ݂̂�����','http://member.nifty.ne.jp/Y-Yamada/namihome',131,'2000-07-14',5329,'�Ƃ̒��̎��菬�����ʐ^�ŏЉ�B');
INSERT INTO src_master VALUES ('�G�l���M�[��@','http://member.nifty.ne.jp/Y-Yamada/natural01',800,'2000-06-01',9872,'�n����̐\���ȃG�l���M�[��@�B���܁A���B�ɂł��邱�Ƃ́B');
INSERT INTO src_master VALUES ('���d���̎��','http://member.nifty.ne.jp/Y-Yamada/natural02',800,'2000-04-08',21359,'�ΉA���́A���q�́B���ꂼ��ɂ��Ă̏ڂ��������B');
INSERT INTO src_master VALUES ('���z�G�l���M�[','http://member.nifty.ne.jp/Y-Yamada/natural03',800,'2000-08-14',25319,'���z���𗘗p���ăG�l���M�[�ɕς��鑾�z�G�l���M�[�B���R�̗͈͂̑�ł��B');
INSERT INTO src_master VALUES ('�V��','http://member.nifty.ne.jp/Y-Yamada/new_score',120,'2000-08-07',9074,'���������̐V�����B');
INSERT INTO src_master VALUES ('CD�V�����','http://member.nifty.ne.jp/Y-Yamada/newCD',121,'2000-04-17',24897,'�����̐V�����B�����A�T�C������B');
INSERT INTO src_master VALUES ('����ԐV��','http://member.nifty.ne.jp/Y-Yamada/newspaper01',730,'2001-04-20',6243,'�ǂ����������A�ǂ������V�N�ȏ������ƒ�ɉ^�т܂��B');
INSERT INTO src_master VALUES ('�n��V����������','http://member.nifty.ne.jp/Y-Yamada/newspaper02',730,'2001-04-02',3467,'�n�斧���^�V�����������B�m�肽�����������킩��B');
INSERT INTO src_master VALUES ('�Ǎ����X�|�[�c','http://member.nifty.ne.jp/Y-Yamada/newspaper03',730,'2001-05-02',4367,'�X�|�[�c��񖞍ڂ̂Ǎ����X�|�[�c�V���B');
INSERT INTO src_master VALUES ('�g�[���y�C���g','http://member.nifty.ne.jp/Y-Yamada/paint',132,'2000-08-10',6298,'�g�[���y�C���g�̊�b�m�����g�ɕt���܂��B�f�ނ��f�ځB');
INSERT INTO src_master VALUES ('�p�N�ς��ς��X�g���X','http://member.nifty.ne.jp/Y-Yamada/paku',216,'1999-07-16',7985,'�X�g���X��H�ׂ�p�N�����ɂ��܂����B���ł������āI�����H�ׂ��Ⴄ��B');
INSERT INTO src_master VALUES ('PC�X�g���X','http://member.nifty.ne.jp/Y-Yamada/pc_stress',216,'2000-01-16',9421,'�����PC�Ɍ������Ă���Ɨ��܂�܂���̃X�g���X�B');
INSERT INTO src_master VALUES ('���t��','http://member.nifty.ne.jp/Y-Yamada/player',120,'2000-01-24',10021,'�����O�̗L�����t�Ƃ̌������B�v���[���g��������܂��B');
INSERT INTO src_master VALUES ('�݂�ȂŃg�����v','http://member.nifty.ne.jp/Y-Yamada/playingcard',320,'2000-08-03',10285,'�吨�ŗV�ׂ�g�����v�Q�[�����Љ�B');
INSERT INTO src_master VALUES ('�Ղ炷����ӂ��H��','http://member.nifty.ne.jp/Y-Yamada/plus',211,'2001-04-02',12369,'�����̗����Ƀv���X���邾���ŁA����Ȃɉh�{�������܂�܂��B');
INSERT INTO src_master VALUES ('������i','http://member.nifty.ne.jp/Y-Yamada/plus_one',213,'2000-08-05',7893,'����������Ȃ��Ƃ��ɂ�����i�B���܂���̂ō��܂��B');
INSERT INTO src_master VALUES ('�}�C�|�X�g�J�[�h','http://member.nifty.ne.jp/Y-Yamada/postcard',111,'2001-03-05',8427,'�������������E�e���̊G�t���B����G�s�\�[�h�Ƌ��Ɍf�ځB');
INSERT INTO src_master VALUES ('�����������','http://member.nifty.ne.jp/Y-Yamada/postmark',112,'2000-11-27',17298,'����̌������摜�������ĉ���B��ނ��L�x�B');
INSERT INTO src_master VALUES ('�|�[�`�̂��܂�','http://member.nifty.ne.jp/Y-Yamada/pouch',110,'2001-06-09',7219,'�ӊO�B1�J�[�g����1�A�I���W�i���|�[�`�����Ă���B���Ԍ���B');
INSERT INTO src_master VALUES ('�v�����X�ϐ�','http://member.nifty.ne.jp/Y-Yamada/prowres',154,'2000-05-03',2179,'�b��̃v�����X���[�̎����ϐ탌�|�[�g�B���������̔�b�B');
INSERT INTO src_master VALUES ('�S���w����','http://member.nifty.ne.jp/Y-Yamada/psychology01',221,'2001-06-22',1235,'�S���w�̏����̏�������B�S���w�ҁB��{��b�m���B');
INSERT INTO src_master VALUES ('�S���w�p�ꃊ�X�g','http://member.nifty.ne.jp/Y-Yamada/psychology02',221,'2001-07-20',6234,'�S���w�p��̃��X�g�B�ڂ�������ƃT���v���S���e�X�g�t���B');
INSERT INTO src_master VALUES ('�S�������̌���','http://member.nifty.ne.jp/Y-Yamada/psychology03',221,'2001-04-21',1264,'���_�����@�̎�ށB�S���e�X�g�̌��ʕʏǏ󃊃X�g�B');
INSERT INTO src_master VALUES ('�g���郌�V�s','http://member.nifty.ne.jp/Y-Yamada/recipe',213,'2000-07-06',20187,'�G���A��܁A�H�ނɂ��Ă��g���郌�V�s���������Ⴂ�܂��B');
INSERT INTO src_master VALUES ('���������R���T�[�g','http://member.nifty.ne.jp/Y-Yamada/recom',122,'1999-09-21',11238,'�������߃R���T�[�g��񖞍ځB�`�P�b�g�\����ł��܂��B');
INSERT INTO src_master VALUES ('���������p���[','http://member.nifty.ne.jp/Y-Yamada/rinrin',114,'2000-07-18',21097,'�������̕Ћ��Ŕ����Ă��������ȗ�̕s�v�c�ȃp���[�ɂ��āB');
INSERT INTO src_master VALUES ('�Ȋw�҂�ڎw��','http://member.nifty.ne.jp/Y-Yamada/science01',810,'2001-03-09',5213,'�u�Ȃ��H�ǂ����āH�v���؂ɂ��悤�B�^��������Ƃ���Ȋw�͎n�܂�܂��B');
INSERT INTO src_master VALUES ('�Ȋw�̗��j','http://member.nifty.ne.jp/Y-Yamada/science02',810,'2001-08-03',6423,'�����܂Ŕ��B���Ă����Ȋw�B���̗��j���ڂ��������B');
INSERT INTO src_master VALUES ('�q�ǂ��̉Ȋw','http://member.nifty.ne.jp/Y-Yamada/science03',810,'1999-09-11',6493,'�q�ǂ��ł����S���čs����Ȋw�����𑽐��f�ځB���R�����ɂǂ����B');
INSERT INTO src_master VALUES ('�y��','http://member.nifty.ne.jp/Y-Yamada/score',121,'2000-04-12',12876,'�s�A�m�A�M�^�[�A�o���h�X�R�A�B');
INSERT INTO src_master VALUES ('�V�[���Ń|��','http://member.nifty.ne.jp/Y-Yamada/seal',110,'1999-03-27',26432,'��������܂�V�[���ȂǁB�g���[�h������Ă܂��B');
INSERT INTO src_master VALUES ('���z���̏���','http://member.nifty.ne.jp/Y-Yamada/seikatu01',630,'2000-06-18',9785,'���������������炢���̂�������Ȃ����z���̏����B�����悢���z���̏������@������B');
INSERT INTO src_master VALUES ('�����̎g����','http://member.nifty.ne.jp/Y-Yamada/seikatu02',630,'2001-04-02',8947,'�e�폑�ނ̎����Ȃǂ�����B�������̌��{������B');
INSERT INTO src_master VALUES ('���ʂ��݂̏o����','http://member.nifty.ne.jp/Y-Yamada/seikatu03',630,'2000-08-07',6423,'�ǂ�ǂ�ו�������Ă������ʂ��݁B���ޕʂɂ��݂�����B');
INSERT INTO src_master VALUES ('�X�|�[�c�ŃV�F�C�v�A�b�v','http://member.nifty.ne.jp/Y-Yamada/shape',150,'1999-07-10',4223,'�݂�Ȃł킢�킢�X�|�[�c���y���݂Ȃ���A�V�F�C�v�A�b�v�������Ⴂ�܂��傤�B');
INSERT INTO src_master VALUES ('�X�L�[�D���[','http://member.nifty.ne.jp/Y-Yamada/ski',155,'2000-08-09',4239,'�X�L�[��D���C���X�g���N�^�[�����ɂ��ؗ�ȃV���E����������B');
INSERT INTO src_master VALUES ('�Q�����f�̉�','http://member.nifty.ne.jp/Y-Yamada/slope',155,'2001-11-19',4129,'�e�n�̃X�L�[��Ō��������j�����B');
INSERT INTO src_master VALUES ('�[������X�m�{','http://member.nifty.ne.jp/Y-Yamada/snow',155,'1999-08-10',5234,'�X�m�[�{�[�h���S�҂��R���ň��S�B���K���@�B');
INSERT INTO src_master VALUES ('�����������N���k','http://member.nifty.ne.jp/Y-Yamada/soudan01',242,'2000-03-01',1353,'�d�b�ɂ��24���Ԍ��N���k�B�������Ƃ��ɂ͂����R�[�����āB');
INSERT INTO src_master VALUES ('���f�Z���^�[�΂�','http://member.nifty.ne.jp/Y-Yamada/soudan02',242,'2000-05-12',6432,'�������N���k�����{�B���N�f�f�Z���^�[�΂�B');
INSERT INTO src_master VALUES ('���[���ň��S','http://member.nifty.ne.jp/Y-Yamada/soudan03',242,'2000-05-10',2135,'�a�@�ɍs���̂͂�����Ɓc�ƌ������B���[���ő��k���Ă݂ẮH');
INSERT INTO src_master VALUES ('�F����s�m�ɂȂ肽��','http://member.nifty.ne.jp/Y-Yamada/space01',820,'2000-08-01',5312,'�F����s�m�ɂȂ�ɂ͂ǂ������炢���̂��낤���H');
INSERT INTO src_master VALUES ('�F���D�ɏ����','http://member.nifty.ne.jp/Y-Yamada/space02',820,'2001-04-12',1983,'�A�|���ɏ���čĂщF���֔�ї��B���̎����́c');
INSERT INTO src_master VALUES ('�F���X�e�[�V����','http://member.nifty.ne.jp/Y-Yamada/space03',820,'2001-04-19',5132,'���ۉF���X�e�[�V�����ɂ��āB���d�͒����B');
INSERT INTO src_master VALUES ('�g�����背�V�s','http://member.nifty.ne.jp/Y-Yamada/special',213,'2000-06-05',4397,'�H�ނ�[����[�܂Ŏg���؂鎖�̂ł��郌�V�s�W�B');
INSERT INTO src_master VALUES ('�X�|�[�c�J�[�h�ꗗ','http://member.nifty.ne.jp/Y-Yamada/sportcard',111,'2001-02-15',4783,'�v���싅�A�T�b�J�[�̃g���[�f�B���O�J�[�h�B');
INSERT INTO src_master VALUES ('�X�e���h�O���X�̐��E','http://member.nifty.ne.jp/Y-Yamada/stained_grass',133,'2000-07-21',7397,'�X�e���h�O���X�̍���������B��i�Љ�B');
INSERT INTO src_master VALUES ('���߂ė�����','http://member.nifty.ne.jp/Y-Yamada/stamp_come',215,'2000-03-11',13787,'�̂Ȃ���̐؎���W�@�̏Љ�B���ꂩ��n�߂���ɁB');
INSERT INTO src_master VALUES ('�؎�~���[�W�A��','http://member.nifty.ne.jp/Y-Yamada/stamp_museum',112,'2000-09-28',16238,'�䂪�Ƃ̈ꎺ�́A�؎�~���[�W�A���B��x��������I');
INSERT INTO src_master VALUES ('�؎藷�s','http://member.nifty.ne.jp/Y-Yamada/stamp_trip',112,'1999-12-29',18324,'���E�e���̐؎�����W�B���ʂɈꋓ���J�B');
INSERT INTO src_master VALUES ('�؂̃X�^���h','http://member.nifty.ne.jp/Y-Yamada/stand',132,'2001-08-10',4628,'�؂��g���ēd�C�X�^���h���쐬�B�ʂ�����̂��閾��������ƒ�ɁB');
INSERT INTO src_master VALUES ('������T����','http://member.nifty.ne.jp/Y-Yamada/star01',832,'2000-02-01',1352,'��r�I�����₷���������C���X�g�ŏЉ�B���������\�B');
INSERT INTO src_master VALUES ('�^�Ă̐���','http://member.nifty.ne.jp/Y-Yamada/star02',832,'2000-04-14',3463,'�^�Ă̐����̌������B���[�`���ȂǁB');
INSERT INTO src_master VALUES ('�M���V���_�b�Ɛ���','http://member.nifty.ne.jp/Y-Yamada/star03',832,'2000-08-01',3214,'�M���V���_�b�̏Љ�B����f�ނɂ����摜�B');
INSERT INTO src_master VALUES ('�X�g�b�v�H����','http://member.nifty.ne.jp/Y-Yamada/stop',212,'2000-06-02',5933,'�H���ł̗\�h�@������B�����ۂ̌����B');
INSERT INTO src_master VALUES ('�a���E����������','http://member.nifty.ne.jp/Y-Yamada/suisei01',831,'2000-04-01',5232,'�a���E�����Ɋւ��錤���B�ŐV�j���[�X���f�ځB����R�[�i�[���B');
INSERT INTO src_master VALUES ('�����������Q��������','http://member.nifty.ne.jp/Y-Yamada/suisei02',831,'2001-04-08',2341,'���N�̏o���������΂�\�z�B�����̐���B�C�ۏ��B');
INSERT INTO src_master VALUES ('�w�[���{�b�v�a��','http://member.nifty.ne.jp/Y-Yamada/suisei03',831,'1999-05-21',10351,'�w�[���{�b�v�a���̎ʐ^�摜�f�ځB���̑��a���̘b������ځB');
INSERT INTO src_master VALUES ('�������i�r','http://member.nifty.ne.jp/Y-Yamada/sumai01',610,'2001-09-12',5234,'���Ȃ��̗v�]�ɂ������ł��邨�����������ƌ�����܂��B');
INSERT INTO src_master VALUES ('1�l��炵�̊y���ݕ�','http://member.nifty.ne.jp/Y-Yamada/sumai02',610,'2000-05-03',2098,'1�l�����炱���A�y������炻���B�H��̑������B��������[�@�B');
INSERT INTO src_master VALUES ('���ւ̂������','http://member.nifty.ne.jp/Y-Yamada/sumai03',610,'2001-08-12',5293,'�Ƃɂ������邢�������ɂ������B���ɓO��I�ɂ������܂����B');
INSERT INTO src_master VALUES ('���ȑI�ѕ�','http://member.nifty.ne.jp/Y-Yamada/supple',215,'2001-05-02',7893,'�T�v�������g�̏��ȑI�ѕ�������B��������Ȃ��H�����K�v�H');
INSERT INTO src_master VALUES ('�A�����J�T�v�������g����','http://member.nifty.ne.jp/Y-Yamada/supplement',77,'2001-08-13',3289,'�T�v����i���A�����J�B�A�����J�̃T�v��������Љ�B');
INSERT INTO src_master VALUES ('50�΂���̃V���N��','http://member.nifty.ne.jp/Y-Yamada/synchro',153,'2000-07-26',4111,'�����N�̂��߂̃V���N���i�C�Y�h�X�C�~���O�B');
INSERT INTO src_master VALUES ('���S�҂̃e�R���h�[','http://member.nifty.ne.jp/Y-Yamada/tekondo',154,'2001-09-02',1213,'�e�R���h�[�̃��[�������B����ꗗ�B');
INSERT INTO src_master VALUES ('�����̃e���z���J�[�h','http://member.nifty.ne.jp/Y-Yamada/telcard',111,'2001-01-27',3972,'�����A���̃e���z���J�[�h�B�������̂��̃A�C�h�����B');
INSERT INTO src_master VALUES ('�����������v����','http://member.nifty.ne.jp/Y-Yamada/tokei',115,'1999-04-11',12198,'�����W�߂���R�O�O�̎��v�B');
INSERT INTO src_master VALUES ('�g���J�Ńg���[�h','http://member.nifty.ne.jp/Y-Yamada/trade',111,'2001-02-24',6732,'�A�j���E�Q�[���n�̃A�C�e�����L�x�B�g���[�h�f���B');
INSERT INTO src_master VALUES ('���܂�Е�','http://member.nifty.ne.jp/Y-Yamada/tukemono',214,'2001-09-13',4987,'��������A�L���`�A�疇�ЂȂǂȂǁB�����ȒЕ���W���B');
INSERT INTO src_master VALUES ('�R�}�[�V�����̍���','http://member.nifty.ne.jp/Y-Yamada/tv01',720,'2000-08-12',4132,'�e���r�R�}�[�V�����̍����B�ʔ����[�L���O�r�f�I�B');
INSERT INTO src_master VALUES ('�A�i�E���T�[�̓���','http://member.nifty.ne.jp/Y-Yamada/tv02',720,'2001-04-12',5322,'�e���r�E���W�I�ő劈�����̃A�i�E���T�[�̓�����E�H�b�`�B');
INSERT INTO src_master VALUES ('�e���r�ԑg�\','http://member.nifty.ne.jp/Y-Yamada/tv03',720,'2001-05-24',3245,'�����e���r�ԑg�\�B��������`�F�b�N���Ă��������Ȃ��B');
INSERT INTO src_master VALUES ('����ς�~��','http://member.nifty.ne.jp/Y-Yamada/ume',214,'2001-09-10',4327,'�~������낤�B�͂��߂Ăł��K�������B');
INSERT INTO src_master VALUES ('�������U��','http://member.nifty.ne.jp/Y-Yamada/walking',200,'2001-10-19',3428,'���N�ׂ̈����������Ă݂܂��񂩁H���[�ɍ炭�G�߂̑��Ԃɖڂ������悤�B');
INSERT INTO src_master VALUES ('�����v','http://member.nifty.ne.jp/Y-Yamada/wall_clock',115,'2000-04-10',5982,'�Â������v�B���������Ă܂��B');
INSERT INTO src_master VALUES ('����r���v','http://member.nifty.ne.jp/Y-Yamada/watch',130,'1999-12-28',21868,'�n���h���C�h�̂����������r���v�B���E�ɂ�������B');
INSERT INTO src_master VALUES ('���V�т�������','http://member.nifty.ne.jp/Y-Yamada/water',153,'2001-07-19',4027,'���j����B������ɂ͂܂������D���ɂȂ낤�B');
INSERT INTO src_master VALUES ('��l�Ƃ�������','http://member.nifty.ne.jp/Y-Yamada/weaning',210,'1999-06-12',12397,'��l�̃��j���[�Ɉ�H�v�ŁA�����H�̏o���オ��B');
INSERT INTO src_master VALUES ('�{�I���','http://member.nifty.ne.jp/Y-Yamada/wood01',132,'2000-06-19',2343,'�����������ƈꏏ�ɖ{�I��������B�l�̑�D���ȏۂ̊G�𒤂��Ă�������B');
INSERT INTO src_master VALUES ('�}�}�̎��肨�m��','http://member.nifty.ne.jp/Y-Yamada/youfuku',131,'2001-08-12',4298,'�q���̕��͂��ׂĎ���B�����C�N�@���f�ځB');
INSERT INTO src_master VALUES ('�L������','http://member.nifty.ne.jp/Y-Yamada/yusen',53,'2000-04-13',12879,'�L���q�b�g�̗w�ȁB���L����܈ꗗ�B');
INSERT INTO src_master VALUES ('���S��l��','http://member.nifty.ne.jp/Y-Yamada/alone',143,'2000-04-24',12708,'������l�ł����S���Ĕ��܂��h�B�������ߏ�񖞍ځB');
INSERT INTO src_master VALUES ('�������ǐ�����','http://member.nifty.ne.jp/Y-Yamada/aquarism',144,'2000-09-12',29368,'���킢�����b�R���o�}���܂��B�Ԃ�������������B');
INSERT INTO src_master VALUES ('�|�[�g�{�[��','http://member.nifty.ne.jp/Y-Yamada/ball',152,'2000-05-11',12379,'�|�[�g�{�[�����Ēm���Ă�H���[�����ڂ�������B');
INSERT INTO src_master VALUES ('���싅�R�c','http://member.nifty.ne.jp/Y-Yamada/baseball',151,'2001-06-14',10473,'�ߏ��̂������񂽂����W�܂��č�������싅�`�[���B�͂����茾���Ďア�ł��B');
INSERT INTO src_master VALUES ('�K�C�h�u�b�N','http://member.nifty.ne.jp/Y-Yamada/book',140,'2001-01-14',12789,'�n��ʃK�C�h�u�b�N�B���n�̐��̐������^�B');
INSERT INTO src_master VALUES ('�L�����v���悤','http://member.nifty.ne.jp/Y-Yamada/camp',141,'2001-05-12',10230,'�����Ȃ��Ă����v�B���܂����݂�ȂŃL�����v���悤�B');
INSERT INTO src_master VALUES ('�T�C�o�[���|����','http://member.nifty.ne.jp/Y-Yamada/ceramic',134,'1999-07-04',8396,'��{�I�Ȓm����Z�@���w�сA���ۂɍ�i���쐬���Ă��������܂��B');
INSERT INTO src_master VALUES ('���x���A�b�v����','http://member.nifty.ne.jp/Y-Yamada/cook',134,'2001-08-14',3987,'�����͊���d�v�B�I���W�i���K���X��Ń��x���A�b�v�B');
INSERT INTO src_master VALUES ('�����ȃN�[�|��','http://member.nifty.ne.jp/Y-Yamada/coupon',145,'2001-06-02',18496,'�L�����Z���h�Ȃǂ𓖓������B�v�����g���Ď����Ă����Γ�������B');
INSERT INTO src_master VALUES ('�d�q�H��','http://member.nifty.ne.jp/Y-Yamada/denshi',135,'2000-05-01',2789,'�d�q�H��ɕK�v�Ȃ��́A��{�m��������B');
INSERT INTO src_master VALUES ('�L�O�������E�h','http://member.nifty.ne.jp/Y-Yamada/discount',143,'2000-01-19',12796,'�L�����Z���h�Ȃǂ𓖓������B�v�����g���Ď����Ă����Γ�������B');
INSERT INTO src_master VALUES ('���тƃp�[�N','http://member.nifty.ne.jp/Y-Yamada/dwarf',145,'2000-04-03',12698,'�J�b�v���A�Ƒ��ōs���΂����ȓ����`�P�b�g�B2�l��2�����B3�l��3�����B');
INSERT INTO src_master VALUES ('�q�ǂ�����l��','http://member.nifty.ne.jp/Y-Yamada/family',141,'2000-08-11',9179,'�q������l���݂�Ȃ��y���߂闷�s�v������̗��ĕ��B');
INSERT INTO src_master VALUES ('�Ԋ�Ɖ�','http://member.nifty.ne.jp/Y-Yamada/flower',135,'2000-07-19',4987,'�����Ԃ͂������A�Ԋ�����肵�Ă܂��B');
INSERT INTO src_master VALUES ('�K���X������','http://member.nifty.ne.jp/Y-Yamada/grass_shop',133,'2000-07-27',3987,'�K���X�ɂ��čׂ��������BQ&A�f���B');
INSERT INTO src_master VALUES ('�R�ɍs����','http://member.nifty.ne.jp/Y-Yamada/hill',140,'2000-05-19',13682,'�������ߎR�x�X�g�Q�O');
INSERT INTO src_master VALUES ('�n�l���[��','http://member.nifty.ne.jp/Y-Yamada/honeymoon',142,'2000-11-13',11236,'�ꐶ�Ɉ�x�̑�؂ȗ��s�B��������v��B�l�C�̍��B');
INSERT INTO src_master VALUES ('�H���������̏h','http://member.nifty.ne.jp/Y-Yamada/jiman',143,'1999-02-21',31228,'�O�c���V�F�t�̎������������\�ł���z�e���B');
INSERT INTO src_master VALUES ('�D��������','http://member.nifty.ne.jp/Y-Yamada/journey',140,'2001-09-10',12879,'���N������Q�҂��C�y�ɗ��s���y�������B');
INSERT INTO src_master VALUES ('�q���','http://member.nifty.ne.jp/Y-Yamada/kama',130,'1999-03-25',4269,'�S���̏��S�҂̎����A���|�q�����܂ł̉ߒ����ʐ^���ŁB');
INSERT INTO src_master VALUES ('�����䃍�[�v�E�F�C','http://member.nifty.ne.jp/Y-Yamada/koganei',145,'2001-09-18',7269,'�����䃍�[�v�E�F�C�B�����Ŕ����΂Q�O�������B');
INSERT INTO src_master VALUES ('�܂�Ƃ��z�e�����','http://member.nifty.ne.jp/Y-Yamada/marutoku',143,'1999-11-11',21478,'�L�O�������̂���z�e���ȂǁA�����ȃz�e����񖞍ځB');
INSERT INTO src_master VALUES ('�˂��݂����ǓO��U���@','http://member.nifty.ne.jp/Y-Yamada/nezumi',144,'2000-05-14',42981,'�˂��݂����ǂŎv��������V�т܂��傤�B�ǂ�����܂��Ό������ǂ��H');
INSERT INTO src_master VALUES ('��܂��ό��_��','http://member.nifty.ne.jp/Y-Yamada/nouen',141,'2001-03-14',21498,'��񂲎��B�݂�����B�ȂǋG�߂ɂ��킹�Ă����ȉʕ����Ƃ�܂��B');
INSERT INTO src_master VALUES ('���hOK�c�̊��}�h','http://member.nifty.ne.jp/Y-Yamada/ok',143,'1999-12-14',21987,'�c�̂���劽�}�̏h�B���h�ɍœK�ł��B');
INSERT INTO src_master VALUES ('�l�C�̂��݂₰','http://member.nifty.ne.jp/Y-Yamada/omiyage',142,'2000-07-21',19267,'���ʐl�C���݂₰�����L���O�B');
INSERT INTO src_master VALUES ('�����܂莆','http://member.nifty.ne.jp/Y-Yamada/origami',135,'2001-07-12',4187,'�������܂莆�ƕ����Ă͂����܂���B���R���݂ɓ������肪�݂����B');
INSERT INTO src_master VALUES ('�p�p�̓��j��H','http://member.nifty.ne.jp/Y-Yamada/papa',135,'2001-09-08',3127,'�p�p���`���b�s�[(��)�̂����������܂����B1��ڂ͉J�R��H');
INSERT INTO src_master VALUES ('�y�[�p�[�N���t�g','http://member.nifty.ne.jp/Y-Yamada/paper',130,'2000-07-14',5983,'�G�߂ɍ������y�[�p�[�N���t�g���Љ�B�N�ł��ȒP�ɍ��܂��B');
INSERT INTO src_master VALUES ('�p�X�|�[�g�̎���','http://member.nifty.ne.jp/Y-Yamada/pass',142,'2001-01-12',23986,'�͂��߂Ă̊C�O���s�B�܂��̓p�X�|�[�g���Q�b�g�B');
INSERT INTO src_master VALUES ('�y���V����������','http://member.nifty.ne.jp/Y-Yamada/pensyon',143,'1999-01-12',12378,'�R�̒��̂��킢���������B����A�q�������q�l�̂��z�������҂����Ă���܂��B');
INSERT INTO src_master VALUES ('�싅������','http://member.nifty.ne.jp/Y-Yamada/pinpon',151,'2000-05-19',5296,'�s���|�����A�Ȃ�Č���Ȃ��ŁB�{�C�Ō������Ă��܂��B');
INSERT INTO src_master VALUES ('��������','http://member.nifty.ne.jp/Y-Yamada/sadou',134,'1999-12-18',6295,'�L�����|�Ƃɂ�钃��������Љ�B');
INSERT INTO src_master VALUES ('�C�ɍs����','http://member.nifty.ne.jp/Y-Yamada/sea',140,'2000-09-08',12789,'�������ߊC�x�X�g�Q�O');
INSERT INTO src_master VALUES ('����Ό�','http://member.nifty.ne.jp/Y-Yamada/soap',135,'2000-09-10',12262,'�����̔��Ƀs�b�^���������Ό������肵�܂��傤�B�n�[�u�Ό��ȂǁB');
INSERT INTO src_master VALUES ('���т����T�b�J�[�N���u','http://member.nifty.ne.jp/Y-Yamada/soccer',151,'2000-06-14',12369,'4�΂���10�΂܂ł̂��т��������T�b�J�[�N���u�B�݂�Ȓ��ǂ��ł��B');
INSERT INTO src_master VALUES ('���\�ʉ��򃊃X�g','http://member.nifty.ne.jp/Y-Yamada/spring',140,'2000-07-18',34789,'�S���̉��򗷊فB���\�ʃ��X�g�B');
INSERT INTO src_master VALUES ('�~�j�~�j�q��','http://member.nifty.ne.jp/Y-Yamada/stockfarm',141,'2001-01-12',12398,'�����̌��B��肽�ă~���N�Ń\�t�g�N���[���͂������B');
INSERT INTO src_master VALUES ('�e�j�X���[�����','http://member.nifty.ne.jp/Y-Yamada/tennis',151,'2001-07-14',3247,'5�̑�w����W�܂��������o�[�ō\�����ꂽ�e�j�X�T�[�N���B');
INSERT INTO src_master VALUES ('�z�e���Ŏg����`�P�b�g','http://member.nifty.ne.jp/Y-Yamada/ticket',145,'2000-05-13',10298,'�����\���50��OFF�B�z�e���Ŏg����i���`�P�b�g�B');
INSERT INTO src_master VALUES ('�ό��œ��|','http://member.nifty.ne.jp/Y-Yamada/tougei',134,'2000-11-17',3269,'�R���ň���̌����|���y���݂܂����B�ӊO�ƊȒP�Ŗʔ����ł��B');
INSERT INTO src_master VALUES ('�������߃c�A�[���','http://member.nifty.ne.jp/Y-Yamada/tour',142,'2001-03-12',22179,'�i���������߃c�A�[�����Љ�B');
INSERT INTO src_master VALUES ('�S�y�ł�������','http://member.nifty.ne.jp/Y-Yamada/toy',130,'2000-05-04',19398,'�S�y���g���Ă����₫���Ȃǂ̓���������Ă��܂��B');
INSERT INTO src_master VALUES ('�z���C�g���C�i���[','http://member.nifty.ne.jp/Y-Yamada/wine',144,'2000-06-19',5239,'���C���̑�������ꂩ��킩��B�����������Ă܂��B');
INSERT INTO src_master VALUES ('�ݐ؉���h','http://member.nifty.ne.jp/Y-Yamada/yado',141,'2000-09-13',21489,'�Ƒ��A�J�b�v���ɑ�l�C�B�ݐ؉���h�B');
INSERT INTO src_master VALUES ('�Ă��������N�W','http://member.nifty.ne.jp/Y-Yamada/yakimono',130,'2000-04-03',4697,'�S���e�n�̏Ă����Ɋւ��郊���N�W�ł��B');

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


INSERT INTO struts_address VALUES (1,'���a�L','�j','1955-12-17 00:00:00','��t��XXXX�sXXXXX','0XX-XXX-9999','shinohara@XXXX.XX.XX');
INSERT INTO struts_address VALUES (2,'��ؐ���','�j','1962-02-02 00:00:00','��ʌ������sXX-X-XX','0XX-X9X-7777','suzuks@XXXX.XX.XX');
INSERT INTO struts_address VALUES (3,'�c�����v','�j','1964-03-30 00:00:00','�_�ސ쌧�����sXXX','0X9-98X-1111','tanaka@XXXX.XX.XX');
INSERT INTO struts_address VALUES (4,'�����^��','��','1977-10-19 00:00:00','�����s������XXX-XXX','X78-78X-6661','shimizu@XXXX.XX.XX');
INSERT INTO struts_address VALUES (5,'����O�q','��','1970-05-28 00:00:00','�R�����~�~��X-X-XXX','0X9-X11-2222','nakano@XXXX.XX.XX');
INSERT INTO struts_address VALUES (6,'�R�c�ˊ�','�j','2002-12-04 00:00:00','�É���XXXXX�s','042-111-1111','CQW15204@nifty.com');
INSERT INTO struts_address VALUES (7,'�n���_�j','�j','1975-01-01 00:00:00','�{�茧XXX�s1-12-111','02x-654x-324x','nabenabe@yama.ne.zz');
INSERT INTO struts_address VALUES (8,'�|�J�ޔ�','��','2002-08-05 00:00:00','�L�������R�s�����s9-9-99','03-111-1xx1','namidon@mbh.nifty.com');

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


INSERT INTO upload_master VALUES ('00002','�������������XML�T���v���W',2900);
INSERT INTO upload_master VALUES ('00003','�������������PHP5�T���v���W',2800);
INSERT INTO upload_master VALUES ('00004','�������������JSP/�T�[�u���b�g�T���v���W',2800);
INSERT INTO upload_master VALUES ('00005','�v�`���t�@�����XASP',1500);
INSERT INTO upload_master VALUES ('00006','�v�`���t�@�����XPHP',1800);
INSERT INTO upload_master VALUES ('00007','Web�A�v���P�[�V�����\�z�Z�@',3000);
