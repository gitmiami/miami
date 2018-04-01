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

INSERT INTO bbs_master VALUES (28,'Struts�Ȥϡ�','�褷�ԡ�','2002-09-17 23:05:39','Struts�äƤ������Ǥ��͡�<br /><br />�Ǥ�����','123',0,0);
INSERT INTO bbs_master VALUES (4,'PHP��JSP�Ȥϲ����㤦��','������','2001-11-10 14:39:23','�ʤˤ��������Ρ���','123',0,0);
INSERT INTO bbs_master VALUES (5,'Re:��PHP��JSP�Ȥϲ����㤦��','�Ҥ�','2001-11-10 15:41:47','��ʬ�ǹͤ��ʤ���','123',4,1);
INSERT INTO bbs_master VALUES (6,'������ASP.NET�Ȥϡ�','�ߤ�','2001-11-11 14:42:03','�ߤʤǤ�','123',0,0);
INSERT INTO bbs_master VALUES (7,'XSL���о�ǲ����Ѥ�롩','�ߤۤҤ�','2001-11-13 14:42:17','�ʤˤ��Ѥ��ʤ�','123',0,0);
INSERT INTO bbs_master VALUES (8,'Re:��XSL���о�ǲ����Ѥ�롩','�Ϥ����','2001-11-14 14:42:31','�������ʡ�','123',7,1);
INSERT INTO bbs_master VALUES (9,'Re:��Re:��XSL���о�ǲ����Ѥ�롩','�Ȥꤦ��','2001-11-14 16:51:10','���󤦤�','123',8,2);
INSERT INTO bbs_master VALUES (10,'Re:��Re:��Re:��XSL���о�ǲ����Ѥ�롩','���','2001-11-15 04:56:49','�ۤ�','123',9,3);
INSERT INTO bbs_master VALUES (11,'PHP5�Ϥ��ĤǤ롩','���ɥ�','2001-11-18 14:57:01','���Ĥ�����','123',0,0);
INSERT INTO bbs_master VALUES (12,'JavaScript�ǥե졼�������','���ȶ��','2001-11-19 14:57:24','������','123',0,0);
INSERT INTO bbs_master VALUES (13,'VBScript�Ϥʤ��ʤ롩','����','2001-11-21 14:57:30','�դä�','123',0,0);
INSERT INTO bbs_master VALUES (29,'����Ѥ�','','2002-09-17 23:09:08','> Struts�äƤ������Ǥ��͡�<br />�Ǥ��礦��','123',28,1);
INSERT INTO bbs_master VALUES (15,'IMAP�Ǽ�������ʸ�������ɤ��Ѵ�','�ϥ䥷','2001-12-01 14:57:01','�ϥ䥷�Ǥ���','123',0,0);
INSERT INTO bbs_master VALUES (16,'Re:��IMAP�Ǽ�������ʸ�������ɤ��Ѵ�','�錄�١�','2001-12-01 14:59:24','������','123',15,1);
INSERT INTO bbs_master VALUES (17,'Re:��Re:��IMAP�Ǽ�������ʸ�������ɤ��Ѵ�','������','2001-12-02 01:57:30','�դä�','123',16,2);
INSERT INTO bbs_master VALUES (18,'DOM�ǥ����Ƚ�����Ԥʤ��ˤϡ�','�ⶶ','2001-12-04 09:48:08','�����','123',0,0);
INSERT INTO bbs_master VALUES (19,'Re:��DOM�ǥ����Ƚ�����Ԥʤ��ˤϡ�','�Ϥ�����','2001-12-11 14:01:01','�������','123',18,1);
INSERT INTO bbs_master VALUES (20,'CGI��ʸ���������Ѵ���Ԥʤ��ˤϡ�','��','2001-12-19 10:57:24','����ˤ���','123',0,0);
INSERT INTO bbs_master VALUES (21,'Re:��CGI��ʸ���������Ѵ���Ԥʤ��ˤϡ�','�Τ꤭�塼','2001-12-21 10:27:30','�դä�','123',20,1);
INSERT INTO bbs_master VALUES (22,'�ơ��֥���礷����̤����','���㥫�ͥ�','2001-12-30 15:48:08','�ա���','123',0,0);

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


INSERT INTO brd_usr VALUES ('00001','123','�����м�',1,'','','2002-12-21 12:44:50','');
INSERT INTO brd_usr VALUES ('00002','123','�ĸ��¹�',2,'1014��ļ�','12:00','2002-09-12 11:10:00','�����ġ����äϤĤʤ��Ǥ�������\r');
INSERT INTO brd_usr VALUES ('00003','123','��������',1,'','','2002-09-12 08:45:10','\r');
INSERT INTO brd_usr VALUES ('00004','123','��������',1,'','','2002-09-12 11:45:10','\r');
INSERT INTO brd_usr VALUES ('00005','123','�����',3,'���ߡ�','15:00','2002-09-12 13:11:08','\r');
INSERT INTO brd_usr VALUES ('00006','123','���忿��',3,'�Ի���','ľ��','2002-09-12 15:03:10','Ϣ�����(090)XXX-XXXXX\r');

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


INSERT INTO cht_list VALUES (1,'JSP�Τ�����','123','#191970','#DB7093','#556B2F');
INSERT INTO cht_list VALUES (2,'�廊���ڲȤ���','123','#191970','#DB7093','#556B2F');
INSERT INTO cht_list VALUES (3,'XML Q&A�ݥ���','123','#191970','#DB7093','#556B2F');

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

INSERT INTO ec_store VALUES (1,'Books�ϥ䥷','book.gif');
INSERT INTO ec_store VALUES (2,'nb�����ƥॺ','computer.gif');
INSERT INTO ec_store VALUES (3,'�����繩������','daiku.gif');

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


INSERT INTO ec_product VALUES ('A0001','��������Ĥ�����XML����ץ뽸',2800,1,'xml.jpg','XSLT��DOM��XMLSchema�ʤ�XML��Ϣ���Ѥ�˭�٤ʥ���ץ롢��ե���󥹤ȶ���');
INSERT INTO ec_product VALUES ('A0002','��������Ĥ�����ASP3.0����ץ뽸',2800,1,'asp.jpg','�����Х����ɤΥ�������ASP����ץ뽸�ζ���㡣VBScript��JavaScript5.6�б�');
INSERT INTO ec_product VALUES ('A0003','ASP3.0�ѡ��ե����ȥ�ե����',4000,1,'','���ܥ��֥������ȡ�����ݡ��ͥ�ȡ�ADO��VBScript�ʤɴ�Ϣ���Ѥ���������˭�٤ʥ���ץ�ϥƥ��˥å�������');
INSERT INTO ec_product VALUES ('A0004','Web���ץꥱ��������۵�ˡ',3200,1,'web.jpg','���롼�ץ�������ASP�ǡ������ƥ��˥å���Ž�����ASP��ȯ���ͽ�η�����');
INSERT INTO ec_product VALUES ('B0001','���̼��ߥХ���',500,3,'bucket.gif','���̼��ߤν��𤵤Ǥɤ��ˤǤ��������OK��');
INSERT INTO ec_product VALUES ('B0002','­�Ǥ�Ĥ�������ӥ��꡼��',300,3,'','��ڤʷ��֥��꡼�ʡ�­�Ǥ�Ĥ����뤳�μ�ڤ������ʡ�');
INSERT INTO ec_product VALUES ('B0003','�������ӥ��󥿥󤴤�����',700,3,'gomi.gif','���̶�°�ǻ������Ӥ⥫�󥿥󡣼�����ͥ���������ȥɥ��ѥ����ƥ�');
INSERT INTO ec_product VALUES ('B0004','���ؤλ�������',350,3,'','��Ȥϸ��ƤΤ��ڤ��ߡ����ؤʤ�����л��äƤ��������������å�');
INSERT INTO ec_product VALUES ('C0001','WindowsZ���PC',35000,2,'computer.gif','�ǿ���WindowsZ��256�ӥåȽ��������б��Υϥ������OS');
INSERT INTO ec_product VALUES ('C0002','�ͤ����ܥå�OBIA',105000,2,'robot.gif','��ʬ�ǹͤ�����ʬ�ǹ�ư���ޤ������ʤϤ��ʤ��Τ��Ĥ����衩��');
INSERT INTO ec_product VALUES ('C0003','������10T�ǥ�����',10000,2,'dvd.gif','DVD�ǥ������η����ǡ�10�ƥ�Х����б��Ǥ���Ȥ�����ǡ����Ϥ�����ˡ�');

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


INSERT INTO fac_facility VALUES (10001,'�ߡ��ƥ��󥰥�����1');
INSERT INTO fac_facility VALUES (10002,'1204��ļ�');
INSERT INTO fac_facility VALUES (10003,'1205��ļ�');
INSERT INTO fac_facility VALUES (10004,'1206��ļ�');
INSERT INTO fac_facility VALUES (10005,'������ܼ�');

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


INSERT INTO master VALUES ('00001','��������Ĥ�����ASP3.0����ץ뽸',2800);
INSERT INTO master VALUES ('00002','��������Ĥ�����XML����ץ뽸',2800);
INSERT INTO master VALUES ('00003','��������Ĥ�����JSP����ץ뽸',2900);
INSERT INTO master VALUES ('00004','5���Ǥ��ܤ���XML+XSLT�������ӡ�',1500);
INSERT INTO master VALUES ('00005','��������Ĥ�����PHP4����ץ뽸',2800);
INSERT INTO master VALUES ('00006','Web���ץꥱ��������۵�ˡ',3200);

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

INSERT INTO ml_usr VALUES ('CQW15204@nifty.com','���ľʹ�');
INSERT INTO ml_usr VALUES ('sample4@localhost','����ͭ��');
INSERT INTO ml_usr VALUES ('sample5@localhost','���վ���');

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


INSERT INTO mng_master VALUES ('101-000003','��̳��PC','PC5800/10T','���','302���ե���','2000-11-20','�桼�����գ�');
INSERT INTO mng_master VALUES ('101-000041','�����ȥ꡼��','SR2003','���','OCR�롼��','2001-12-12','����S����');
INSERT INTO mng_master VALUES ('101-000040','�С������ɥϥ�ǥ������ߥʥ�','SMLP-99','���','��ϩ����ӥͥå�','2001-11-11','����S����');
INSERT INTO mng_master VALUES ('101-000023','����ѥơ��֥�','TABLE1','���','503��ļ�','2001-11-10','����S����');
INSERT INTO mng_master VALUES ('101-000022','��ư���','SHOKO2','���','������P','2001-12-21','����S����');
INSERT INTO mng_master VALUES ('101-000021','��ư���','SHOKO1','���','������S','2000-08-15','����S����');
INSERT INTO mng_master VALUES ('101-000020','��ǥ����ܡ���','E32-490-9898','���','905��ļ�','2002-03-01','����S����');
INSERT INTO mng_master VALUES ('101-000045','�ǥ��������쥤����','DR200-XR','�����ƥ�','�����м�','2001-08-06','����S����');
INSERT INTO mng_master VALUES ('101-000036','�����ǥ���������','N1133-88','�����ƥ�','XYZ�ӥ�4F','2001-08-23','����S����');
INSERT INTO mng_master VALUES ('101-000035','���ܸ쥫�顼���ꥢ��ץ��','CSP5200PR','�����ƥ�','XYZ�ӥ�4F','2001-12-07','����S����');
INSERT INTO mng_master VALUES ('101-000034','���ե����ץ��å�','OP5200','�����ƥ�','�����м�','2001-12-06','����S����');
INSERT INTO mng_master VALUES ('101-000012','UNIX������','NX4800-J','�����ƥ�','�����ƥॻ��','2001-10-01','����S�¤���');
INSERT INTO mng_master VALUES ('101-000011','NT�����С������ѡ�','N8500-160B','�����ƥ�','�����м�','2001-06-07','�綶S����');
INSERT INTO mng_master VALUES ('101-000002','̵�����Ÿ�����','DGN-58-A','�����ƥ�','OCR�롼��','2001-12-18','��ü�����');
INSERT INTO mng_master VALUES ('101-000000','���ե����ץ��å�','OP5200-98','�����ƥ�','�����м�','2001-08-15','��ü�����');
INSERT INTO mng_master VALUES ('101-000039','�����ޥ�ץ��','SMLP-00','��¤','����������','2001-09-19','������ݴ�');
INSERT INTO mng_master VALUES ('101-000033','������ơ������','OP5200-98','��¤','�����м�','2001-11-21','������ݴ�');
INSERT INTO mng_master VALUES ('101-000032','������ơ������','OP5200-98','��¤','�����м�','2001-12-22','������ݴ�');
INSERT INTO mng_master VALUES ('101-000029','���ܸ�饤��ץ��','LN23-JX-00','��¤','XC�ӥ�','2001-08-03','������ݴ�');
INSERT INTO mng_master VALUES ('101-000028','��ǥ�','MODEM5800-12','��¤','XC�ӥ�','2001-08-27','������ݴ�');
INSERT INTO mng_master VALUES ('101-000015','�饤��ץ��','PC-KRT800','��¤','OCR�롼��','2000-09-10','��¿S��ͭ');
INSERT INTO mng_master VALUES ('101-000014','����ʸ���ɼ�����','K5000TR','��¤','��¢����','2000-09-03','����T');
INSERT INTO mng_master VALUES ('101-000009','��̳��PC','PC5800/10T','��¤','��������ˤƻ���','2001-02-10','�ڹ����ڣ�');
INSERT INTO mng_master VALUES ('101-000007','��̳��PC','PC5800/80','��¤','�������ݴ�','2000-10-04','������ݴ�');
INSERT INTO mng_master VALUES ('101-000006','��̳��PC','PC5800/13TA','��¤','��¤������ӥͥå��ݴ�','2000-11-13','�Ķ������ͻ��');
INSERT INTO mng_master VALUES ('101-000048','�����ץ饤����','TW2001/XZ','��̳','��¤������','2001-12-10','����K����');
INSERT INTO mng_master VALUES ('101-000047','OHP','OHP','��̳','��̳������ӥͥå�','2001-01-01','���ĺ���');
INSERT INTO mng_master VALUES ('101-000044','��Ʒ��ե륫�顼�վ�','PC-PJ600','��̳','��ư�����','2001-08-08','����K��ͭ');
INSERT INTO mng_master VALUES ('101-000038','�饤��ץ��','LNPRT-00-X','��̳','�ϣãҥ롼��','2001-07-02','����K��ͭ');
INSERT INTO mng_master VALUES ('101-000027','������ϩ�����å�','SWT01','��̳','601��ļ����������å���ʬ','2001-09-07','����K��ͭ');
INSERT INTO mng_master VALUES ('101-000026','�ӱ��','OTHER','��̳','802��ļ�ŷ��','2001-10-17','����K��ͭ');
INSERT INTO mng_master VALUES ('101-000025','��������ѡ��ƥ������','PART1','��̳','503��ļ�','2001-12-29','����K��ͭ');
INSERT INTO mng_master VALUES ('101-000024','�������륭��ӥͥå�','CABI1','��̳','906��ļ���','2001-12-01','����K��ͭ');
INSERT INTO mng_master VALUES ('101-000019','���ܥ��å�','OUSETSU','��̳','���ۿͼ�','2000-12-25','��������');
INSERT INTO mng_master VALUES ('101-000018','UNIX������','NX4800-JD','��̳','�����ƥ��������','2001-07-16','����K�ݻ�');
INSERT INTO mng_master VALUES ('101-000017','NT������','N8500-140K','��̳','�����ƥ������','2001-06-18','����K�ݻ�');
INSERT INTO mng_master VALUES ('101-000016','����ʸ���ɼ�����','K7500SR','��̳','����������','2001-03-05','��¼S�¤���');
INSERT INTO mng_master VALUES ('101-000010','�վ��ץ�������','PC-PJ600','��̳','��̳��΢�Ҹ�','2001-05-13','����K��ͭ');
INSERT INTO mng_master VALUES ('101-000001','�ե��å�������','FAX-DX6800','��̳','��̳����̳FAX','2001-04-21','��ü�����');
INSERT INTO mng_master VALUES ('101-000004','��̳��PC','PC5800/15T','����','301���ե���','2002-01-03','�桼�������');
INSERT INTO mng_master VALUES ('101-000005','��̳��PC','PC5800/17TE','����','����������','2001-10-08','�Ķ������ͻ��');
INSERT INTO mng_master VALUES ('101-000008','��̳��PC','PC5800/95','����','�������ݴ�','2001-03-22','�����ݴ�');
INSERT INTO mng_master VALUES ('101-000013','�ץ��','PC-PRT500','����','���Ѵ������롼�׻���','2000-12-09','����B����');
INSERT INTO mng_master VALUES ('101-000030','���ե����ץ��å�','OP5200-98','����','335��ļ�����ӥͥå�','2001-12-04','����S����');
INSERT INTO mng_master VALUES ('101-000031','���ܸ�饤��ץ��','LNPRT-00-X','����','���ե���500','2001-06-28','����S����');
INSERT INTO mng_master VALUES ('101-000037','���ե����ץ��å�','OP5200','����','�����м�','2001-07-08','����S����');
INSERT INTO mng_master VALUES ('101-000042','�ޥ���ݡ���FAX','MP200-0-1X','����','�����м�','2001-10-10','����S����');
INSERT INTO mng_master VALUES ('101-000043','���ǥ���������','KNK-1312-DA','����','OCR�롼��','2001-09-09','����S����');
INSERT INTO mng_master VALUES ('101-000046','���ܸ쥫�顼Ǯž�̥ץ��','PC-PR630TR','����','��������','2001-03-03','����S����');

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


INSERT INTO mng_menu VALUES (1,'��������Ͽ','/advance/servlet/mng.mng_new',4);
INSERT INTO mng_menu VALUES (2,'��¸�񻺹��������','/advance/servlet/mng.mng_update',2);
INSERT INTO mng_menu VALUES (3,'��¸�񻺸���','search.jsp',1);
INSERT INTO mng_menu VALUES (4,'�桼�����󹹿�','/advance/servlet/mng.mng_usr',4);
INSERT INTO mng_menu VALUES (5,'��������','/advance/servlet/mng.mng_logout',1);

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


INSERT INTO mng_pmaster VALUES ('101-000001','10.2.109.200','ZZUI12',256,8000,'CD-RW��������');

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

INSERT INTO mng_usr VALUES ('admin','admin','�����ƥ������','�����ƥ�',7);
INSERT INTO mng_usr VALUES ('super','super','���������','��̳',3);
INSERT INTO mng_usr VALUES ('usr','usr','���̥桼��','��¤',1);

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


INSERT INTO sche_category VALUES (1,'���','kaigi.gif');
INSERT INTO sche_category VALUES (2,'����','ken.gif');
INSERT INTO sche_category VALUES (3,'���','pen.gif');
INSERT INTO sche_category VALUES (4,'����','pri.gif');
INSERT INTO sche_category VALUES (5,'����','out.gif');

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


INSERT INTO sche_usr VALUES ('yyamada','123','���ľʹ�');
INSERT INTO sche_usr VALUES ('khonda','123','��¿������');
INSERT INTO sche_usr VALUES ('tkawamura','123','��¼����');

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


INSERT INTO src_category VALUES (100,'��̣',0,'music.gif');
INSERT INTO src_category VALUES (200,'��',0,'sun.gif');
INSERT INTO src_category VALUES (300,'�кѡ�����',0,'eco.gif');
INSERT INTO src_category VALUES (400,'����',0,'doc.gif');
INSERT INTO src_category VALUES (500,'�ꤤ',0,'urn.gif');
INSERT INTO src_category VALUES (600,'����',0,'life.gif');
INSERT INTO src_category VALUES (700,'��ǥ���',0,'pen.gif');
INSERT INTO src_category VALUES (800,'�����ʳ�',0,'sci.gif');
INSERT INTO src_category VALUES (110,'���쥯�����',100,'dog.gif');
INSERT INTO src_category VALUES (120,'����',100,'dog.gif');
INSERT INTO src_category VALUES (130,'���ݡ�����',100,'dog.gif');
INSERT INTO src_category VALUES (140,'ι��',100,'dog.gif');
INSERT INTO src_category VALUES (150,'���ݡ���',100,'dog.gif');
INSERT INTO src_category VALUES (210,'����',200,'dog.gif');
INSERT INTO src_category VALUES (220,'��󥿥�إ륹',200,'dog.gif');
INSERT INTO src_category VALUES (230,'�Ǹ�',200,'dog.gif');
INSERT INTO src_category VALUES (240,'����',200,'dog.gif');
INSERT INTO src_category VALUES (310,'�Ƕ�',300,'dog.gif');
INSERT INTO src_category VALUES (320,'������',300,'dog.gif');
INSERT INTO src_category VALUES (330,'�кѳ�',300,'dog.gif');
INSERT INTO src_category VALUES (410,'�Ļ�����',400,'dog.gif');
INSERT INTO src_category VALUES (420,'���ع�',400,'dog.gif');
INSERT INTO src_category VALUES (430,'��ء��⹻',400,'dog.gif');
INSERT INTO src_category VALUES (440,'�Ҳ��',400,'dog.gif');
INSERT INTO src_category VALUES (510,'�����ꤤ',500,'dog.gif');
INSERT INTO src_category VALUES (520,'�������ꤤ',500,'dog.gif');
INSERT INTO src_category VALUES (530,'���Τ��ꤤ',500,'dog.gif');
INSERT INTO src_category VALUES (540,'�����ꤤ',500,'dog.gif');
INSERT INTO src_category VALUES (610,'���ޤ�',600,'dog.gif');
INSERT INTO src_category VALUES (620,'��²',600,'dog.gif');
INSERT INTO src_category VALUES (630,'���襬����',600,'dog.gif');
INSERT INTO src_category VALUES (710,'����',700,'dog.gif');
INSERT INTO src_category VALUES (720,'�ƥ�ӡ��饸��',700,'dog.gif');
INSERT INTO src_category VALUES (730,'��ʹ',700,'dog.gif');
INSERT INTO src_category VALUES (810,'�ʳ�',800,'dog.gif');
INSERT INTO src_category VALUES (820,'����',800,'dog.gif');
INSERT INTO src_category VALUES (830,'ŷʸ��',800,'dog.gif');
INSERT INTO src_category VALUES (111,'������',110,'cat.gif');
INSERT INTO src_category VALUES (112,'�ڼ�',110,'cat.gif');
INSERT INTO src_category VALUES (113,'���ޤ�',110,'cat.gif');
INSERT INTO src_category VALUES (114,'�ﵯʪ',110,'cat.gif');
INSERT INTO src_category VALUES (115,'����',110,'cat.gif');
INSERT INTO src_category VALUES (121,'�ݥåץ�',120,'cat.gif');
INSERT INTO src_category VALUES (122,'���饷�å�',120,'cat.gif');
INSERT INTO src_category VALUES (123,'Ƹ��',120,'cat.gif');
INSERT INTO src_category VALUES (124,'��������',120,'cat.gif');
INSERT INTO src_category VALUES (125,'���㥺',120,'cat.gif');
INSERT INTO src_category VALUES (131,'���',130,'cat.gif');
INSERT INTO src_category VALUES (132,'�ڹ�',130,'cat.gif');
INSERT INTO src_category VALUES (133,'���饹',130,'cat.gif');
INSERT INTO src_category VALUES (134,'ƫ��',130,'cat.gif');
INSERT INTO src_category VALUES (135,'����¾�������',130,'cat.gif');
INSERT INTO src_category VALUES (141,'����ι��',140,'cat.gif');
INSERT INTO src_category VALUES (142,'����ι��',140,'cat.gif');
INSERT INTO src_category VALUES (143,'��',140,'cat.gif');
INSERT INTO src_category VALUES (144,'�Ѹ�',140,'cat.gif');
INSERT INTO src_category VALUES (145,'�����å�',140,'cat.gif');
INSERT INTO src_category VALUES (151,'�嵻',150,'cat.gif');
INSERT INTO src_category VALUES (152,'Φ��',150,'cat.gif');
INSERT INTO src_category VALUES (153,'���',150,'cat.gif');
INSERT INTO src_category VALUES (154,'��Ʈ��',150,'cat.gif');
INSERT INTO src_category VALUES (155,'winter���ݡ���',150,'cat.gif');
INSERT INTO src_category VALUES (211,'����',210,'cat.gif');
INSERT INTO src_category VALUES (212,'����',210,'cat.gif');
INSERT INTO src_category VALUES (213,'�쥷��',210,'cat.gif');
INSERT INTO src_category VALUES (214,'��¸��',210,'cat.gif');
INSERT INTO src_category VALUES (215,'���ץ����',210,'cat.gif');
INSERT INTO src_category VALUES (216,'���ȥ쥹',210,'cat.gif');
INSERT INTO src_category VALUES (221,'������',220,'cat.gif');
INSERT INTO src_category VALUES (222,'�����󥻥��',220,'cat.gif');
INSERT INTO src_category VALUES (241,'����ˡ',240,'cat.gif');
INSERT INTO src_category VALUES (242,'����',240,'cat.gif');
INSERT INTO src_category VALUES (831,'������ή��',830,'cat.gif');
INSERT INTO src_category VALUES (832,'����',830,'cat.gif');
INSERT INTO src_category VALUES (833,'�������',830,'cat.gif');

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


INSERT INTO src_master VALUES ('����ź��ʪ','http://member.nifty.ne.jp/Y-Yamada/addition',212,'2000-05-16',5339,'����ź��ʪ�ˤĤ��ƾܤ������⡣');
INSERT INTO src_master VALUES ('�����ؽ��Υڡ���','http://member.nifty.ne.jp/Y-Yamada/adult01',440,'2001-07-19',7891,'�����ؽ��Ȥ������դ�¸�ΤǤ��������Υڡ����Ǥ������ؽ��ˤĤ��Ƴ��ǹͤ��Ƥ��ޤ���');
INSERT INTO src_master VALUES ('�̿�����Τ��餬��','http://member.nifty.ne.jp/Y-Yamada/adult02',440,'2000-06-12',2349,'�̿�����μ���Ĵ����������Ǥ蘆��Ƥ��ޤ��󤫡�');
INSERT INTO src_master VALUES ('�������ý�','http://member.nifty.ne.jp/Y-Yamada/adult03',440,'2000-11-30',4398,'����Υե��󥳤䥴���ڥ�ʤɡ��͵��ζ���������');
INSERT INTO src_master VALUES ('��ȯ�ܳФ�����','http://member.nifty.ne.jp/Y-Yamada/alarm_clock',115,'2000-11-25',7329,'�ͤܤ�������⥳��ǰ¿�����ȯ���ܤ��Ф���ܳФ����ס�');
INSERT INTO src_master VALUES ('��������','http://member.nifty.ne.jp/Y-Yamada/ashtray',113,'2000-02-04',16398,'���Х��η��ʳ������빽�������롣������������ӳ�����');
INSERT INTO src_master VALUES ('������δѻ�����','http://member.nifty.ne.jp/Y-Yamada/astoronomy01',830,'2000-04-10',5135,'�Ƶ٤ߤ������Ĥ���������δѻ������Υڡ����Ǥ���');
INSERT INTO src_master VALUES ('ŷ�μ̿�����','http://member.nifty.ne.jp/Y-Yamada/astoronomy02',830,'2001-03-20',3464,'ŷ�μ̿��μ������ޤ�Ȥäƾܤ������⡣�ǥ����륫��顣');
INSERT INTO src_master VALUES ('�����Τ��٤�','http://member.nifty.ne.jp/Y-Yamada/astoronomy03',830,'2000-04-01',7453,'�����λϤޤ꤫�齪���ޤǤ�̿����ơ��������Ϥ�������');
INSERT INTO src_master VALUES ('������鸦��','http://member.nifty.ne.jp/Y-Yamada/aurora01',833,'2000-08-09',1235,'�������ˤĤ��Ƥθ�����ȯɽ����������Ϣ��󥯡�');
INSERT INTO src_master VALUES ('���饹��ι��','http://member.nifty.ne.jp/Y-Yamada/aurora02',833,'2001-06-10',6342,'���饹��ι�ԡ��������λ��Ƥ��������ȤƤ⸸��Ū�Ǥ���');
INSERT INTO src_master VALUES ('��ˤȥ�������','http://member.nifty.ne.jp/Y-Yamada/aurora03',833,'1999-10-28',16352,'��ˤǤ���餷�֤�ˤĤ��ơ����������طʤ˥ѥ��ꡣ');
INSERT INTO src_master VALUES ('�Ϥ���ƤΤ�����','http://member.nifty.ne.jp/Y-Yamada/babyhood01',410,'2000-09-08',4332,'ABC�βΤ���Ϥ��ޤꡢ������äޤǡ��Ļ��ΰ٤αѸ춵����');
INSERT INTO src_master VALUES ('���ݡ��Ĥ�Ǿ���ä���','http://member.nifty.ne.jp/Y-Yamada/babyhood02',410,'2000-04-01',9438,'���ڤˤ��碌���������Ϥͤ��ꤷ�ʤ��顢���任���γؽ���');
INSERT INTO src_master VALUES ('�Ϥ�����ͷ��','http://member.nifty.ne.jp/Y-Yamada/babyhood03',410,'2001-11-09',1374,'�����ձ�Ǥϡ�������ǯ��Ϥ����Ǥ���­��΢�򤷤������뤳�ȤǤϡ��ȤƤ��ɤ����ȤǤ���');
INSERT INTO src_master VALUES ('�Хɥߥ�ȥ�Ʊ����','http://member.nifty.ne.jp/Y-Yamada/bado',151,'2000-10-19',5237,'�Хɥߥ�ȥ󹥤��ʿͤʤ�ï�Ǥ�ɤ�����ǯ���ط��ʤ��Ǥ���');
INSERT INTO src_master VALUES ('�Х��','http://member.nifty.ne.jp/Y-Yamada/band',121,'2001-04-03',12726,'���줫�����뺣�����ܤΥХ�ɡ�');
INSERT INTO src_master VALUES ('�Хȥ󥿥å�','http://member.nifty.ne.jp/Y-Yamada/baton',152,'2000-05-11',5393,'��ư��ȸ����Х�졼����졼�ȸ����ХХȥ󥿥å���');
INSERT INTO src_master VALUES ('�ܥ֥��졼�ȥ�塼����','http://member.nifty.ne.jp/Y-Yamada/bobu',155,'2001-12-19',4297,'�ܥ֥��졼�ȥ�塼����ˤĤ��Ʋ��⡣�ߵ������ԥå���');
INSERT INTO src_master VALUES ('����','http://member.nifty.ne.jp/Y-Yamada/book_classic',122,'2000-09-11',8397,'���饷�å����ڤ˴ؤ���������䡣�������ñ��');
INSERT INTO src_master VALUES ('������֥���','http://member.nifty.ne.jp/Y-Yamada/brand',215,'2000-09-01',3428,'���ץ���ȤΤ�����֥��ɤ򤴾Ҳ�');
INSERT INTO src_master VALUES ('ʸ�ڡ�������','http://member.nifty.ne.jp/Y-Yamada/bunraku',124,'2001-09-18',4307,'�ͷ���������ʸ�ڤβ��⡣��ŵ��ǽ��Ϣ��󥯽���');
INSERT INTO src_master VALUES ('�̵�����','http://member.nifty.ne.jp/Y-Yamada/can',214,'2000-06-01',9782,'�����̵͡������̵͡��̵ͤǤǤ���������');
INSERT INTO src_master VALUES ('���פΤ�������','http://member.nifty.ne.jp/Y-Yamada/care_clock',115,'2000-04-18',4972,'���ޤ��ޤλ��פΤ�������λ�������⡣');
INSERT INTO src_master VALUES ('���饷�å�CD','http://member.nifty.ne.jp/Y-Yamada/cd_classical',122,'1999-03-19',32807,'���饷�å�CD��󥭥󥰡����������CD��');
INSERT INTO src_master VALUES ('�����ڼ�','http://member.nifty.ne.jp/Y-Yamada/cha_stamp',112,'2000-02-08',1276,'���ν���Ǥ������ˤ��Ĥ᤿���äƤο��������Ť��ڼ�¿�����ꡣ');
INSERT INTO src_master VALUES ('�����å����ȥ쥹','http://member.nifty.ne.jp/Y-Yamada/check',216,'2000-08-09',8943,'���Ū�˥��ȥ쥹�����å���ί����ޤʤ��٤ˡ�');
INSERT INTO src_master VALUES ('���ɤ⤿���β�','http://member.nifty.ne.jp/Y-Yamada/child_cd',123,'2000-09-11',12897,'Ƹ��CD���ճ����Τ�ʤ��ʤ��������󤢤��ΤǤ���');
INSERT INTO src_master VALUES ('���ɤ�Τ���γ���','http://member.nifty.ne.jp/Y-Yamada/child_score',123,'1999-08-26',20947,'�Ļ�����Ƹ�س��衣���٤ƤҤ餬�ʤǥ��饹������Ǥ���');
INSERT INTO src_master VALUES ('�ϤȤݤäݤ�������','http://member.nifty.ne.jp/Y-Yamada/children_gymnas',150,'1999-04-01',18294,'Ƹ�ؤϤȤݤäݤʤɤʤɤ˹�碌�롢�Ļ������ࡣ');
INSERT INTO src_master VALUES ('Ƹ�ظ����','http://member.nifty.ne.jp/Y-Yamada/children_song',123,'2000-05-09',14637,'�����Ƹ�ؤ����ܤ�Ƹ�ؤ���ӡ������ϰ��̲Τ�����ӡ�');
INSERT INTO src_master VALUES ('���礳�äȥ��祳�졼��','http://member.nifty.ne.jp/Y-Yamada/chocolate',113,'2000-11-21',8398,'���祳���椫����礳�äȽФƤ��뤪����㤿�����ɤ��֤Ĥ��֤����');
INSERT INTO src_master VALUES ('�椬�Ȥ��ֻ���','http://member.nifty.ne.jp/Y-Yamada/clock',115,'2001-01-13',3421,'�������ˤ���椬�Ȥ��ֻ��פ򤴾Ҳ�');
INSERT INTO src_master VALUES ('���襤���۽���','http://member.nifty.ne.jp/Y-Yamada/cloth',131,'2000-11-15',5983,'�����䥭��饯�������ʤɤ���������˭�١����������ˤ⤳����äƤޤ���');
INSERT INTO src_master VALUES ('�����󥻥顼�򤵤���','http://member.nifty.ne.jp/Y-Yamada/counselor01',222,'2000-07-28',5142,'1�ͤ�Ǻ��ǤƤ�����ʤ������ʥ����󥻥顼�θ��Ĥ�����');
INSERT INTO src_master VALUES ('�᡼��ǥ����󥻥��','http://member.nifty.ne.jp/Y-Yamada/counselor02',222,'2000-05-18',2356,'�᡼���ȤäƵ��ڤ˥����󥻥�󥰤�����Ƥߤ褦��');
INSERT INTO src_master VALUES ('������Ǻ��','http://member.nifty.ne.jp/Y-Yamada/counselor03',222,'2001-07-24',8252,'�����ˤ���ʬ����ʤ�Ǻ�ߤϤ�äѤ�����Υ����󥻥顼��');
INSERT INTO src_master VALUES ('������ˡ�Τ��٤�','http://member.nifty.ne.jp/Y-Yamada/cure01',241,'2000-02-18',5123,'�㳲����������Ϸ�ͤ��Ф���ߥ塼���å�����ԡ��ˤĤ���');
INSERT INTO src_master VALUES ('���˥ޥ륻��ԡ�','http://member.nifty.ne.jp/Y-Yamada/cure02',241,'2000-06-01',6234,'ưʪ�����ˡ��Ϸ�ͥۡ���Ǥ���͵���');
INSERT INTO src_master VALUES ('�����ˡ','http://member.nifty.ne.jp/Y-Yamada/cure03',241,'2001-04-04',2341,'�����ǥ˥󥰤��̤��ƥ�ե�å��塣���å�����');
INSERT INTO src_master VALUES ('���ʤ��٤��','http://member.nifty.ne.jp/Y-Yamada/danger',212,'2000-02-19',4271,'���˽в�äƤ�����ʿ��ʤˤĤ��Ʋ��⡣');
INSERT INTO src_master VALUES ('����ޤ��','http://member.nifty.ne.jp/Y-Yamada/dharma',114,'2000-07-25',3167,'������ʤ���ޤξҲ𡣺����Ѥ���ޡ���������Ѥ���ޡ�');
INSERT INTO src_master VALUES ('�ܤä������','http://member.nifty.ne.jp/Y-Yamada/diving',153,'2001-09-10',7764,'���ӹ��߶����Υ롼�����������ӹ��ߤΤǤ���ס�����ߡ�');
INSERT INTO src_master VALUES ('Ƹ�ؤβ�','http://member.nifty.ne.jp/Y-Yamada/douyounokai',123,'2000-05-18',7286,'����Ƹ�ؤ�ΤäƤߤޤ��󤫡��鿴�Դ��ޤǤ���');
INSERT INTO src_master VALUES ('���а»�','http://member.nifty.ne.jp/Y-Yamada/easy_delivery',114,'2001-03-18',7438,'���ΰ»��Τ����Ǥ⤦���ۤʤ��������ʻҤɤ⤬���ޤ�ޤ���');
INSERT INTO src_master VALUES ('̴�Υޥ��ۡ���','http://member.nifty.ne.jp/Y-Yamada/economy01',310,'2000-11-26',2604,'������ޥ��ۡ������������ʤ����Ǥ⡢�����ͤ��Ľ�������˴ؤ�뤪��Τ��á�');
INSERT INTO src_master VALUES ('�ȤäƤ��ñ���꿽��','http://member.nifty.ne.jp/Y-Yamada/economy02',310,'2000-06-10',3216,'��ǯ��ǯ�����ˤʤ��Ƭ��Ǻ�ޤ��Ƥ��ޤ����꿽�𡣤Ĥ��Ĥ���󤷤ˤʤäơ����Ĥ�ǤäƤ����ˡ����꿽��Q&A');
INSERT INTO src_master VALUES ('���ͤ⤪��夲','http://member.nifty.ne.jp/Y-Yamada/economy03',310,'2001-04-09',2820,'�����ȸ����ɤ��Ƕ��ʧ��ͤС�����ˡ�ͤ��Ƕ�Ȳ�פˤĤ��ơ��ޥ륵�����ä��Ȥ��붵��Υ��ԥ������ա�');
INSERT INTO src_master VALUES ('�Ƕ�फ����Τ�����','http://member.nifty.ne.jp/Y-Yamada/economy04',310,'2001-05-18',2648,'�Τ��Ƕ�Ⱥ����Ƕ��ڤ������饹�Ȥǲ��⡣���ǤˤĤ��ƾܤ����������Ƕ�λȤ�������ΤäƤޤ�����');
INSERT INTO src_master VALUES ('����ˤ�����뤪�Ż�','http://member.nifty.ne.jp/Y-Yamada/economy06',330,'2001-02-27',1065,'��԰���������Τ���׻Ρ�����ˤ�����뿦�ȤϤ��äѤ������������Ȥˤʤ롣����Ѹ�ˤĤ���');
INSERT INTO src_master VALUES ('���ŷ���Τޤ����','http://member.nifty.ne.jp/Y-Yamada/economy07',330,'2001-03-26',1603,'����Ϥ��Ĥ���Ȥ��Ƥ�Ρ��бĳؤδ��ä�狼��䤹�����⡣���뤰��ޤ�뤪��ιԤ��衣');
INSERT INTO src_master VALUES ('�����顢����Ҳ���ٶ�','http://member.nifty.ne.jp/Y-Yamada/economy08',330,'2001-07-02',2105,'�кѻ��ۻˎ��Ҳ���ۻˤäƤʤ󤸤��ۤ��������Τ����ˤޤ�����ٶ����Ȥ��Ф褫�ä���');
INSERT INTO src_master VALUES ('�˥åݥ����ֻ�','http://member.nifty.ne.jp/Y-Yamada/economy09',330,'2000-09-28',1803,'�к������ˤĤ��ơ����ɺĸ��äƤʤ�������Ҥɤ�ˤ�狼�롢�ܤ����䤵���������Ǥ���');
INSERT INTO src_master VALUES ('��ʪ�Τʤ����','http://member.nifty.ne.jp/Y-Yamada/economy11',300,'2001-02-07',8065,'���󥿡��ͥåȥХ󥭥󥰤��������虜�虜��ԤޤǹԤ��ʤ��Ƥ⡢�Ȥ��鿶�������⡦�ʤɽ�����㤦�Ρ�');
INSERT INTO src_master VALUES ('��ˡ�Τ���','http://member.nifty.ne.jp/Y-Yamada/economy12',300,'2000-06-09',8403,'�Żҥޥ͡�����������Ǥ��롩�⤦�������ۤ�ɬ�פʤ������⤬�ʤ��ʤ������ǥӥåȥ����ɤä��ΤäƤ롩');
INSERT INTO src_master VALUES ('��ʤ���ˤ��ƴ��٤�','http://member.nifty.ne.jp/Y-Yamada/economy13',300,'2001-08-03',8615,'�ۡ���ȥ졼�ɤäƤʤ�������������˵�ʤ���ˤ��ơ��٤����㤦�Ѷ������㤦�������ä�᡼��ǳ�������');
INSERT INTO src_master VALUES ('���줫��Υӥ��ͥ�','http://member.nifty.ne.jp/Y-Yamada/economy14',300,'2000-07-16',8614,'��ȴ��ŻҾ�����˴ؤ�����⳰�μ��Ѳ����㡣���ꤵ���������Ф��롢������¿���Ѱա�');
INSERT INTO src_master VALUES ('������פȤ�','http://member.nifty.ne.jp/Y-Yamada/education01',400,'2000-08-06',9873,'���Ƕ��Ф�Ƥ��붵����פȤϲ����������˶�����Ѥ��Τ���');
INSERT INTO src_master VALUES ('���줫��ζ���','http://member.nifty.ne.jp/Y-Yamada/education02',400,'2001-06-19',23487,'���줫��ζ���ˤĤ��ơ��ع��Τ���������Ƴˡ�ʤɡ�');
INSERT INTO src_master VALUES ('����ԤȤ���','http://member.nifty.ne.jp/Y-Yamada/education03',400,'2000-11-15',3478,'����ԤȤ��Ƥɤ�����٤������������ѻ�θ�ľ���ʤɡ�');
INSERT INTO src_master VALUES ('�������Ϥ�','http://member.nifty.ne.jp/Y-Yamada/education04',400,'2000-07-02',5382,'�������ϤȤϲ��������̳�ư��ƻ������ˤĤ��ơ�');
INSERT INTO src_master VALUES ('���ܻΤˤʤꤿ��','http://member.nifty.ne.jp/Y-Yamada/eiyou',211,'2000-08-10',4969,'���ܻΤˤʤ�ˤϤɤ�����Ф����Τ���');
INSERT INTO src_master VALUES ('���ܻΤΤ�������쥷��','http://member.nifty.ne.jp/Y-Yamada/eiyou_menu',213,'1999-02-14',10298,'�������ܻΤ��������᤹�����������ñ�쥷�ԡ�');
INSERT INTO src_master VALUES ('��²�Ǳ���','http://member.nifty.ne.jp/Y-Yamada/ekiden',620,'2001-08-12',4169,'���̡���²������Ƕ����礦�������');
INSERT INTO src_master VALUES ('��Ź�ᤰ��','http://member.nifty.ne.jp/Y-Yamada/elementary01',420,'2001-09-07',7439,'�֤������ġפμ��ȡ��ع����դΤ�Ź�ᤰ��򤷤ơ���Ź�οͤ����ä�ʹ���ޤ���');
INSERT INTO src_master VALUES ('�ص鿷ʹ�ۡ���ڡ���','http://member.nifty.ne.jp/Y-Yamada/elementary02',420,'2000-10-17',6541,'4ǯ1�Ȥγص鿷ʹ�ۡ���ڡ������ض���ǤΥ˥塼����Ǻܡ�');
INSERT INTO src_master VALUES ('�ڥåȥܥȥ�ǥ��åȺ��','http://member.nifty.ne.jp/Y-Yamada/elementary03',420,'2000-04-01',7324,'�ڥåȥܥȥ�ǥ��åȤ���ޤ��������ʤμ��Ȥ��ڤ����ʤ�ޤ�����');
INSERT INTO src_master VALUES ('��Ư���Ȱ��','http://member.nifty.ne.jp/Y-Yamada/family01',620,'2000-08-29',5478,'��Ư���β���ˤ��������Τ������ˤĤ��Ƥ��ä��礤���ɤ�ɤ���Ƥ���������');
INSERT INTO src_master VALUES ('�����ӽ���ˤĤ���','http://member.nifty.ne.jp/Y-Yamada/family02',620,'2000-03-01',6934,'�����ӽ���Υ��åȥǥ��åȡ��θ��̤�򤨤ƾܤ�����');
INSERT INTO src_master VALUES ('��²��������','http://member.nifty.ne.jp/Y-Yamada/family03',620,'2000-06-23',3124,'��²���������ˤϡ�����ޤäƼ괬�����ʡ������ݳ�ΤҤȻ��Ǥ���');
INSERT INTO src_master VALUES ('̱�ؤˤĤ���','http://member.nifty.ne.jp/Y-Yamada/folk',124,'1999-03-12',18361,'���Ϥ�̱�ظ��档��̣�������ݡ����ζ����Ҳ�');
INSERT INTO src_master VALUES ('���٤�ΤǷ�','http://member.nifty.ne.jp/Y-Yamada/food_health',211,'2000-02-18',9802,'��������ꡢ�����Ƿ򹯤ˤʤ���');
INSERT INTO src_master VALUES ('�Ῡ���翩��','http://member.nifty.ne.jp/Y-Yamada/food01',210,'2000-07-12',4329,'�Ῡ�����翩�����Τ˵ڤܤ��ƶ��ˤĤ��ơ��褯����Ǥ�ä���ȿ��٤褦��');
INSERT INTO src_master VALUES ('����θ�����','http://member.nifty.ne.jp/Y-Yamada/fortune01',510,'2001-01-10',9064,'����ӥˤ��ܲ��ǻ���򸫤�����ȡ��Ĥ��Ĥ��������������ꤤ�򸫤Ƥ��ޤ���͡��ɤ�ʻ��ˡ��ꤤ�����ʤ롩');
INSERT INTO src_master VALUES ('�ؤӤĤ����¡�','http://member.nifty.ne.jp/Y-Yamada/fortune02',510,'2001-02-06',94562,'�������13�����ꤤ�ä��ΤäƤޤ��������Ĥ��12���¤ˤؤӤĤ����¤Ȥ��������¤��ä�äƤ�餷����');
INSERT INTO src_master VALUES ('�����̤ꤷ���ʤ��Τ���','http://member.nifty.ne.jp/Y-Yamada/fortune03',510,'2000-12-11',9452,'�����ꤤ�ȸ����Ȥ�äѤ�12.���¡��Ǥ⡢12�̤ꤷ���ʤ��ʤ�ơĤ����ǡ���շ��ʤɤ�ץ饹���Ƥ�äȾܤ�����äƤߤ褦��');
INSERT INTO src_master VALUES ('�ޥ˥��å������ꤤ','http://member.nifty.ne.jp/Y-Yamada/fortune04',510,'2001-01-16',11206,'���������Ȥˡ����¤��ꤦ�ΤϤ�����ޤ����Ǥ⡢�����ǤϹ��˺٤������ޤ줿�����ޤǻ��ͤˤ����ꤤ�ޤ���');
INSERT INTO src_master VALUES ('����å�����','http://member.nifty.ne.jp/Y-Yamada/fortune06',520,'2001-01-17',12105,'����åȥ����ɤ�Ȥä������ꤤ�򤴾Ҳ𡣤����ʼ���Υ���åȥ����ɤ�������äƤޤ��衣');
INSERT INTO src_master VALUES ('�ȥ��פ��','http://member.nifty.ne.jp/Y-Yamada/fortune07',520,'2001-02-20',12305,'�ȥ��פ�Ȥä������ꤤ����祵���ȡ��������ꤤ�����뤫�顢���äѤ���ƤߤƤ͡�');
INSERT INTO src_master VALUES ('�����ȥ���','http://member.nifty.ne.jp/Y-Yamada/fortune08',520,'2001-02-26',14095,'�ȥ��ץ����ɤǤ�������ꤤ���äƤߤ褦�������ꤤ�Ϥ�����λ����Ɀ��򹯱��⡣');
INSERT INTO src_master VALUES ('������Ǥ���ʤ�','http://member.nifty.ne.jp/Y-Yamada/fortune09',520,'2001-03-16',16307,'�����ʥȥ��ץ�������̤�����ä��㤦�����п�塦���ʤ�٤ʤɤʤɡ��ӥ�ǤⱿ���Ϻǹ���ä��ꤷ�ơ�');
INSERT INTO src_master VALUES ('���ؤ���ʤ���','http://member.nifty.ne.jp/Y-Yamada/fortune11',530,'2001-04-16',16037,'�������Ǳ���0���ꤤ�����ʤ��Ϥ⤦����äƤߤ���˿�ƥ�����ȤǤ���夲��줿�����ꤤ�Υ����ȤǤ���');
INSERT INTO src_master VALUES ('�����˲֤ϥ���','http://member.nifty.ne.jp/Y-Yamada/fortune12',530,'2001-05-24',17036,'�����ꤤ�������ˤ��֤���ä��㤤���ʤ����Ȥ������Ѥˤ�äơ�������Ƥӹ��࿧������Ȥ���');
INSERT INTO src_master VALUES ('�����̿','http://member.nifty.ne.jp/Y-Yamada/fortune13',530,'2001-05-16',15064,'���Ĥ����ǯ����������ˤ����̿���뤫������̿�����ʤ������ʤȺ���α������ꤤ�ޤ���');
INSERT INTO src_master VALUES ('���ߤ�����','http://member.nifty.ne.jp/Y-Yamada/fortune14',530,'2001-06-03',12064,'�����餯��Τ��ߤ����������α����ϡ��ߤ򥯥�å�����ȡ�Ĭ��᤭�ޤ������θ��̤��Ф�衣');
INSERT INTO src_master VALUES ('�Ф����Ǥ��ꤤ','http://member.nifty.ne.jp/Y-Yamada/fortune16',540,'2001-06-01',14502,'���οͤȻ����ǯ������­������������ꤷ�ơ��������ꤨ���㤦�衣�����ơ������Ϥɤ������顣');
INSERT INTO src_master VALUES ('������ꤤ','http://member.nifty.ne.jp/Y-Yamada/fortune17',540,'2001-01-03',16175,'��ʬ�η����ֹ椫���ꤦ������ꤤ�����Ӥ��Ѥ������������������Ѥ�ä��㤤�ޤ���');
INSERT INTO src_master VALUES ('My��Name����ʤ�','http://member.nifty.ne.jp/Y-Yamada/fortune18',540,'2001-04-16',10342,'̾����������֤������ơ��ꤤ�ޤ��������ꤤ��������Ƚ�Ǥޤǡ����οͤλ�����äƤߤ롩');
INSERT INTO src_master VALUES ('����������','http://member.nifty.ne.jp/Y-Yamada/fortune19',540,'2001-06-21',11206,'��ǯ���������������������ꤦ�ܳʡ��������ꤤ������ε����α������Τäơ��ڤ����ᤴ������');
INSERT INTO src_master VALUES ('������ꤤ','http://member.nifty.ne.jp/Y-Yamada/fortune21',500,'2001-04-27',15064,'�ѥå꡼�󡪤ȳ�ä��������ꤦ��������ꤤ���ʤ������ä����ʤ��褦�ʵ��⤹�뤱�ɡĤ��䤵���ò�����㤦��');
INSERT INTO src_master VALUES ('�ޥ��ࡦ���������','http://member.nifty.ne.jp/Y-Yamada/fortune22',500,'2001-04-30',13023,'������᤿������ۤˤ��餷�ơ��������ߤ��ꤦ�����������ꤤ�������󤯤������ɡ��������Ǥ���');
INSERT INTO src_master VALUES ('�����Ĥ���������','http://member.nifty.ne.jp/Y-Yamada/fortune23',500,'2001-05-09',14065,'���Τޤޥ��Х�Υ������ꤤ�������Ĥ������ä��꤬���ʤ��α������ȤäƤ⥷��ץ�����ɡ������Ĥ����Ƥ�Τ��񤷤���');
INSERT INTO src_master VALUES ('�����ʲ�','http://member.nifty.ne.jp/Y-Yamada/fortune24',500,'2001-04-29',12035,'�Τ��餢��֤Ӥ��ꤤ����äѤꥳ�줬���������롣�Ǥ⡢�֤Ӥ�ξ��ʤ��֤��㤢�ͤ���');
INSERT INTO src_master VALUES ('���󤳤󤵤�','http://member.nifty.ne.jp/Y-Yamada/fox',114,'1999-08-04',12367,'�椬�ȤΤ��Ĥ͡����󤳤󤵤ޡ����Ǥ�𤨤Ƥ���롣');
INSERT INTO src_master VALUES ('���Ǥ�����','http://member.nifty.ne.jp/Y-Yamada/freeze',210,'2000-02-01',5439,'�ۤ�ξ����μ�֤Ǥ�����������¸��');
INSERT INTO src_master VALUES ('������ΤԤ�󤿤���','http://member.nifty.ne.jp/Y-Yamada/frog',152,'2000-06-18',4107,'����ķ�Ӥ�ķ������ޥ󥬤�Ĥ��ä�ʬ����䤹��������');
INSERT INTO src_master VALUES ('��ڤ�����','http://member.nifty.ne.jp/Y-Yamada/gagaku',124,'2000-06-09',4625,'������ΤξҲ𡣲�ڴ�β��⡣��ڡ�����ڤʤɤˤĤ��ơ�');
INSERT INTO src_master VALUES ('���ꥳ�Τ��ޤ�','http://member.nifty.ne.jp/Y-Yamada/galiko',113,'2000-04-12',18926,'�Τ��Υ��꡼�������餷���꡼�����ҡ������꡼����');
INSERT INTO src_master VALUES ('�������ȴ������ʤ�','http://member.nifty.ne.jp/Y-Yamada/gene',212,'2001-09-10',4231,'�������ȴ������ʤˤĤ���������');
INSERT INTO src_master VALUES ('���������','http://member.nifty.ne.jp/Y-Yamada/genki',210,'2001-02-01',4292,'���ܤ˴ؤ�������μ����ɾ�����­���ܰ�����');
INSERT INTO src_master VALUES ('���å��ǲ��','http://member.nifty.ne.jp/Y-Yamada/goods',216,'2001-02-04',9873,'���ȥ쥹��å��å������䡣�⤰�餿�������䤸�ǡ������֥��Ǥʤɤʤɡ�');
INSERT INTO src_master VALUES ('Τ�Υ��饹��˼','http://member.nifty.ne.jp/Y-Yamada/grass01',133,'2000-08-09',1532,'����λ����Υ��饹��˼�򸫳ؤ��������饹��������äƤߤޤ�����');
INSERT INTO src_master VALUES ('�ϥ�С������Τ��ޤ�','http://member.nifty.ne.jp/Y-Yamada/hamburger',110,'2001-02-04',17368,'�͵��αǲ襭��饯�����ե����奢�Ĥ����ȥ�åס�');
INSERT INTO src_master VALUES ('���ʤŤ��β�','http://member.nifty.ne.jp/Y-Yamada/hammer',153,'2000-12-15',4242,'�ˤ���ͤ�����Ǥ��ޤ��󡣱ˤ��ʤ��ͤΰ٤ο�˥������롣');
INSERT INTO src_master VALUES ('�ֻ����ޤ���','http://member.nifty.ne.jp/Y-Yamada/hanafuda',320,'2000-10-01',5673,'�ֻ��Υ롼���ʬ����䤹��������������ͷ�����Ҳ�');
INSERT INTO src_master VALUES ('�����','http://member.nifty.ne.jp/Y-Yamada/hayashi',124,'2000-02-01',2398,'����Ҥ���ˤȳڴ��������ǯ�ֹԻ��������塼�롣');
INSERT INTO src_master VALUES ('���⤯���󤯤�','http://member.nifty.ne.jp/Y-Yamada/high',152,'2001-08-10',4217,'�����ķ�ӡ���ķ�Ӥ�����������������');
INSERT INTO src_master VALUES ('6ǯ�ֱѸ�','http://member.nifty.ne.jp/Y-Yamada/highschool01',430,'1999-07-01',7498,'����ӹ��δ����ر�Ǥϡ�6ǯ���̤��ǱѸ���Ȥ�ԤäƤ��ޤ���');
INSERT INTO src_master VALUES ('���̤�ŷ��','http://member.nifty.ne.jp/Y-Yamada/highschool02',430,'1999-05-18',16278,'�׽մ����񤷤��������֤򸦵档�������륫���󥻥顼��');
INSERT INTO src_master VALUES ('����ֳ�ư','http://member.nifty.ne.jp/Y-Yamada/highschool03',430,'2000-11-16',5981,'��ư����ʸ���������줾��Υ���ֳ�ư��������Ӥ�Ǻܡ�');
INSERT INTO src_master VALUES ('�Ѥä��Ѥä������','http://member.nifty.ne.jp/Y-Yamada/horse',150,'2000-08-10',3496,'���åȥۡ���ʾ��϶���������̵���θ������档');
INSERT INTO src_master VALUES ('�ѥ�ե�ޥޤ�ˤ���ꤲ','http://member.nifty.ne.jp/Y-Yamada/hougan',152,'2000-01-18',4307,'���ȥ쥹��á��ޥޤ�ˤ���ꤲ���ѥѤ��ꤲ���Ф�����㤦��');
INSERT INTO src_master VALUES ('�����������','http://member.nifty.ne.jp/Y-Yamada/ice',155,'2000-09-07',1108,'������󥰤Υ롼���������Ѹ콸������Ҳ�');
INSERT INTO src_master VALUES ('͢�����ʤΥ��åȡ��ǥ��å�','http://member.nifty.ne.jp/Y-Yamada/import',212,'1999-01-19',3298,'͢�����ʤ򿩤٤ޤ������ճ����Τ�ʤ��ȶ��͢�����ʡ�');
INSERT INTO src_master VALUES ('���äƤ���κ����','http://member.nifty.ne.jp/Y-Yamada/insect_stamp',112,'2000-04-02',12386,'���ޤ��ޤʺ����ڼ��Ҳ�');
INSERT INTO src_master VALUES ('���ܤγڴ�����γڴ�','http://member.nifty.ne.jp/Y-Yamada/instrument',120,'2000-05-11',4879,'���ܸ���γڴ狼�������ƹ��̱²���ڳڴ�ޤǲ��⡣');
INSERT INTO src_master VALUES ('�����ˤ��','http://member.nifty.ne.jp/Y-Yamada/invite',114,'2000-11-13',6849,'����ǭ�Υ��쥯�����Ҳ𡣤��������꾷��ǭ�̿��Ĥ���');
INSERT INTO src_master VALUES ('���㥺���ùֺ�','http://member.nifty.ne.jp/Y-Yamada/jazz_kiso',125,'2000-06-18',8367,'���㥺����ˡ����㥺��İ������');
INSERT INTO src_master VALUES ('���㥺���������ȥ�','http://member.nifty.ne.jp/Y-Yamada/jazz_orchestra',125,'1999-11-17',10123,'���ޥ��奢�ӥå��Х�ɡ����С��Ҳ𡣥饤�ֳ�ư�������塼�롣');
INSERT INTO src_master VALUES ('���㥺����Poo','http://member.nifty.ne.jp/Y-Yamada/jazz_tea',125,'2000-09-11',12169,'���㥺�������դ򤿤Τ��ߤʤ��顢��ä���ƥ����������');
INSERT INTO src_master VALUES ('���ܤ��ڼ�','http://member.nifty.ne.jp/Y-Yamada/jp_stamp',112,'2000-01-30',9832,'���ܤ��ڼꥫ�������ǿ���ǰ�ڼꡣ');
INSERT INTO src_master VALUES ('��󥭥�J-POP','http://member.nifty.ne.jp/Y-Yamada/j-pop',121,'2000-02-14',21879,'J-POP�����󥰥롢����Хཱུ������󥭥󥰡�');
INSERT INTO src_master VALUES ('���塼���Ȥ��ä���','http://member.nifty.ne.jp/Y-Yamada/juice',113,'2000-04-19',13786,'���襤���ܥȥ륭��åס�1���ܤ�1�ܤγ�Ψ�ǥ�����ɥ���åס�');
INSERT INTO src_master VALUES ('�ɾ��̴Ǹ�','http://member.nifty.ne.jp/Y-Yamada/kango01',230,'2000-07-17',9782,'�ɾ��̤δǸ�λ����ˤĤ��ơ�����ǤǤ�����޽��֤ʤɡ�');
INSERT INTO src_master VALUES ('�ʡ����ΤҤߤ�','http://member.nifty.ne.jp/Y-Yamada/kango02',230,'2000-02-02',9535,'�ʡ����������ΤäƤ����±�����Ԥ���̩���ʡ���ã���ܲ���');
INSERT INTO src_master VALUES ('���ԤΤ����','http://member.nifty.ne.jp/Y-Yamada/kango03',230,'1999-02-10',4322,'�Ǹ��ؤλ䤬���ԤȤʤäƤϤ�����Τä������Ԥε�������');
INSERT INTO src_master VALUES ('���饪��','http://member.nifty.ne.jp/Y-Yamada/karaoke',121,'2000-12-21',28312,'�ǿ��ҥåȥ��饪�������˲Τ�����ݥ���ȹֺ¡�');
INSERT INTO src_master VALUES ('�������륿','http://member.nifty.ne.jp/Y-Yamada/karuta',111,'2001-03-17',8948,'���륿���������륿����ˤˤĤ��ơ����ܤǹԤ��붥�����륿���');
INSERT INTO src_master VALUES ('����������ȥ��','http://member.nifty.ne.jp/Y-Yamada/keep',214,'2000-11-18',3427,'����ʤˤ����ȥ�ȿ��ࡣ��¸���֤�Ĺ����������');
INSERT INTO src_master VALUES ('���ܷ�ˡ�Τ��٤�','http://member.nifty.ne.jp/Y-Yamada/kenpou',154,'2000-06-05',1296,'���ܷ�ˡ�����������Ѥ������ʤɲ��⡣');
INSERT INTO src_master VALUES ('���å��ܥ����󥰤����','http://member.nifty.ne.jp/Y-Yamada/kick',154,'2001-08-10',3112,'���å��ܥ����󥰤���ˤˤĤ��ơ��२�����ä��ΤäƤ롩');
INSERT INTO src_master VALUES ('���Ƥμ��Ԥ�','http://member.nifty.ne.jp/Y-Yamada/knit',131,'2001-08-11',2879,'�ˤ���ĤΤ���ơ�Ķ�鿴�ԤǤ⤫�ʤ餺�������ԤߤΥ���������');
INSERT INTO src_master VALUES ('�Ȥ߹�碌���ץ�','http://member.nifty.ne.jp/Y-Yamada/kumiawase',215,'2000-11-18',3894,'���ٹ�碌������褦�˥��ץ�ˤ��Ȥ߹�碌�������Ǥ���');
INSERT INTO src_master VALUES ('�����ʥӤǥ�åĥ���','http://member.nifty.ne.jp/Y-Yamada/life01',100,'2000-04-29',948,'�����ʥӤ����ʰ���ȥ��ե����ݾڡ��⤦�»Ҥˤʤ�ʤ�������Ǳ�Ф�¿��Ǥ���');
INSERT INTO src_master VALUES ('�Ǥ�������󥵥���','http://member.nifty.ne.jp/Y-Yamada/life01',600,'2000-11-11',21348,'�Ȼ���Ż������ⲿ�Ǥ⤳�ʤ�������󡣤�����ʬ�λ��֤��äƺ�ä��㤤�ޤ���');
INSERT INTO src_master VALUES ('���󤸤礦��','http://member.nifty.ne.jp/Y-Yamada/life02',600,'2000-04-23',24902,'�ۤ�ξ��������Ϥ��ηäǤ���ʤ������ꡣ�����ʥ����ǥ����������ޤ���');
INSERT INTO src_master VALUES ('�ݽ���΢��','http://member.nifty.ne.jp/Y-Yamada/life03',600,'2000-04-10',5092,'��ʹ����륬�饹�ݽ��ʤɤʤɡ��ճ��ʤ�ΤǤ��줤�˻ž夲��΢���ý���');
INSERT INTO src_master VALUES ('�ɥ饤�֤Τ����BGM','http://member.nifty.ne.jp/Y-Yamada/life04',100,'2001-04-08',945,'���ƤΥǡ��Ȥǥɥ饤�֡��������餳����ä���ϡ������ǥ�����Ĵ�������̤����Ʒ�̤ϡ�');
INSERT INTO src_master VALUES ('��ͤ����դ�','http://member.nifty.ne.jp/Y-Yamada/life21',100,'1905-06-22',3065,'���Ʊ��عԤ��ʤ��Ƥ⡢��ͤ�����롣��ʪ�����դ��򡢴�ñ�����������ͧ�ͤη뺧���ˤ⡢��ʪ�ǽ��ʡ�');
INSERT INTO src_master VALUES ('���ͥǥ����ʡ�','http://member.nifty.ne.jp/Y-Yamada/life25',100,'2001-03-01',6003,'���줫������Ǥ��������ͥǥ����ʡ��ξ��ʾҲ�ï�����᤯�����֥��ɤ�Get���褦��');
INSERT INTO src_master VALUES ('�饤�������쥯�����','http://member.nifty.ne.jp/Y-Yamada/lighter',110,'1999-08-02',20188,'̵������ä��饤��������������˭�١���Ǽ���˺��äƤޤ���');
INSERT INTO src_master VALUES ('��������饤�־���','http://member.nifty.ne.jp/Y-Yamada/live',125,'2000-07-06',4730,'���㥺���󥵡��ȳ��ť������塼�롣�����å����䡣');
INSERT INTO src_master VALUES ('�ե��å���󻨻參�󥫥�','http://member.nifty.ne.jp/Y-Yamada/magazine01',710,'1999-05-02',4315,'ή������ե��å���󻨻�����ѡ���ǥ�Ⱖ�Ѳ����ʡ�');
INSERT INTO src_master VALUES ('����4����','http://member.nifty.ne.jp/Y-Yamada/magazine02',710,'2001-04-02',4532,'�ɼ���Ʒ��ޥ󥬻������4���ޡ�');
INSERT INTO src_master VALUES ('�����BOOK','http://member.nifty.ne.jp/Y-Yamada/magazine03',710,'2001-08-04',6233,'�ڥåȼ������������Τ���Τ����������������꡼���ȤäƤ������⥳������');
INSERT INTO src_master VALUES ('���ޥ������褦','http://member.nifty.ne.jp/Y-Yamada/mail_magazine',211,'2000-05-03',4739,'���ܻΤαɻҤ���ˤ��ȤäƤ⤿��ˤʤ�᡼��ޥ�����');
INSERT INTO src_master VALUES ('��ǥ����Τ�����','http://member.nifty.ne.jp/Y-Yamada/media01',700,'2001-02-04',3421,'�ɤ��ޤǤ��������Τ�����ǥ����Τ��꤫���ˤĤ��Ƶ�����');
INSERT INTO src_master VALUES ('���󥿡��ͥåȥ˥塼��','http://member.nifty.ne.jp/Y-Yamada/media02',700,'2001-04-12',5789,'�����Υ˥塼�������᤯����å����ꥢ�륿����˥塼����');
INSERT INTO src_master VALUES ('�ޥ����߶ȳ�','http://member.nifty.ne.jp/Y-Yamada/media03',700,'2000-05-03',3241,'�ޥ����߶ȳ��ν�����ˡ�ʤɤˤĤ��ơ�����ã�����������Ͽ��');
INSERT INTO src_master VALUES ('�ߵ޵�̿�ΤλŻ�','http://member.nifty.ne.jp/Y-Yamada/medical01',240,'2000-03-02',9873,'�ߵ޵�̿�ΤλŻ��ˤĤ��ơ������λŻ������ס�');
INSERT INTO src_master VALUES ('���Ż�̳','http://member.nifty.ne.jp/Y-Yamada/medical02',240,'1999-01-03',6432,'�ݸ������̳��ǽ�����ˤĤ��ơ���ϰϡ�������ꡣ');
INSERT INTO src_master VALUES ('���������ˤĤ���','http://member.nifty.ne.jp/Y-Yamada/medical03',240,'2001-09-21',5287,'�쥻�ץȳ�������²�ؤΥ���Ƴ�����������ˤĤ��Ƥ��ä��礤�Υڡ���');
INSERT INTO src_master VALUES ('̲��ʤ�����','http://member.nifty.ne.jp/Y-Yamada/medical07',200,'2001-03-13',5054,'�ʹ֤��Τϰճ��ȥǥꥱ���ȡ�����äȤ���������������̲�ɤˡ���̲�Υᥫ�˥�����Τäƺ��������̲');
INSERT INTO src_master VALUES ('�ԡ������˥Х��Х�','http://member.nifty.ne.jp/Y-Yamada/medical09',200,'2001-07-08',5604,'������ʢ�ˡ������ƥԡ������Τ��Фޤ��������Ǥϡ��������ݤ��������ǡ������ǤΡ�ͽ��ˡ�����޽��֤ˤĤ��Ʋ��⡣');
INSERT INTO src_master VALUES ('��ĥ��������','http://member.nifty.ne.jp/Y-Yamada/medical10',200,'2001-02-24',5689,'�����ݤ�Ƥ��ޤä��ͤ�������¨���������۵޼�ѡ��ͤ�������ώ���������Ϥ᤿��');
INSERT INTO src_master VALUES ('�͵�����','http://member.nifty.ne.jp/Y-Yamada/melo',120,'2000-05-03',30298,'�͵���J-POP������������ɡ��ꥯ�����ȥ����ʡ���');
INSERT INTO src_master VALUES ('��ĥ���԰¤Τ�����','http://member.nifty.ne.jp/Y-Yamada/mental01',220,'2000-07-24',4318,'��ĥ���԰¤ϤɤΤ褦���Τ˺��Ѥ��Ƥ����Τ����ޤ�Ȥä�������');
INSERT INTO src_master VALUES ('������ȥ���ɥ�����','http://member.nifty.ne.jp/Y-Yamada/mental02',220,'2000-05-09',5318,'������ȥ���ɥ��ȸ������դ��ΤäƤ��ޤ�����');
INSERT INTO src_master VALUES ('���������','http://member.nifty.ne.jp/Y-Yamada/mental03',220,'2000-06-18',9872,'������ϡ����Ĥ�����ȯ���Ƥ��ޤ�����ʬ�Ǥⵤ�Ť��ʤ���ʬ�ο�������ʹ���Ƥߤޤ��礦��');
INSERT INTO src_master VALUES ('����󥸥㥺','http://member.nifty.ne.jp/Y-Yamada/modern',120,'2000-04-03',7298,'����̾�׾Ҳ�50ǯ��κ��ʡ���̾������');
INSERT INTO src_master VALUES ('���르����ζ���','http://member.nifty.ne.jp/Y-Yamada/music_box',122,'2000-12-21',4798,'���饷�å����ڤ��濴�����֥��르����ζ�̾�Ҳ�');
INSERT INTO src_master VALUES ('�����ߥ塼���å�','http://member.nifty.ne.jp/Y-Yamada/music_yurayura',120,'2000-08-01',2349,'��Τ����餮���⸶�Τ������ʤɡ���饯���������ߥ塼���å���');
INSERT INTO src_master VALUES ('ɽ��','http://member.nifty.ne.jp/Y-Yamada/nameplate',110,'2001-04-21',13786,'�����ʡ��Ƥ�ɽ����');
INSERT INTO src_master VALUES ('�ʤߤΤ�����','http://member.nifty.ne.jp/Y-Yamada/namihome',131,'2000-07-14',5329,'�Ȥ���μ��꾮ʪ��̿��ǾҲ�');
INSERT INTO src_master VALUES ('���ͥ륮����','http://member.nifty.ne.jp/Y-Yamada/natural01',800,'2000-06-01',9872,'�ϵ��ο���ʥ��ͥ륮���������ޡ���ã�ˤǤ��뤳�Ȥϡ�');
INSERT INTO src_master VALUES ('ȯ�Ž�μ���','http://member.nifty.ne.jp/Y-Yamada/natural02',800,'2000-04-08',21359,'���ϡ����ϡ������ϡ����줾��ˤĤ��Ƥξܤ���������');
INSERT INTO src_master VALUES ('���ۥ��ͥ륮��','http://member.nifty.ne.jp/Y-Yamada/natural03',800,'2000-08-14',25319,'���۸������Ѥ��ƥ��ͥ륮�����Ѥ������ۥ��ͥ륮�����������Ϥϰ���Ǥ���');
INSERT INTO src_master VALUES ('����','http://member.nifty.ne.jp/Y-Yamada/new_score',120,'2000-08-07',9074,'����ȯ��ο������');
INSERT INTO src_master VALUES ('CD�������','http://member.nifty.ne.jp/Y-Yamada/newCD',121,'2000-04-17',24897,'����ο�����󡣰���񡢥���������');
INSERT INTO src_master VALUES ('ī���ֿ�ʹ','http://member.nifty.ne.jp/Y-Yamada/newspaper01',730,'2001-04-20',6243,'�ɤ������᤯���ɤ����⿷���ʾ���򤴲���˱��Ӥޤ���');
INSERT INTO src_master VALUES ('�ϰ迷ʹ��������','http://member.nifty.ne.jp/Y-Yamada/newspaper02',730,'2001-04-02',3467,'�ϰ�̩�巿��ʹ�����������Τꤿ�����������狼�롣');
INSERT INTO src_master VALUES ('�ɺ������ݡ���','http://member.nifty.ne.jp/Y-Yamada/newspaper03',730,'2001-05-02',4367,'���ݡ��ľ������ܤΤɺ������ݡ��Ŀ�ʹ��');
INSERT INTO src_master VALUES ('�ȡ���ڥ����','http://member.nifty.ne.jp/Y-Yamada/paint',132,'2000-08-10',6298,'�ȡ���ڥ���Ȥδ����μ����Ȥ��դ��ޤ����Ǻ��Ǻܡ�');
INSERT INTO src_master VALUES ('�ѥ��Ѥ��Ѥ����ȥ쥹','http://member.nifty.ne.jp/Y-Yamada/paku',216,'1999-07-16',7985,'���ȥ쥹�򿩤٤�ѥ������ˤ��ޤ��������Ǥ�񤤤ơ��������٤��㤦�衣');
INSERT INTO src_master VALUES ('PC���ȥ쥹','http://member.nifty.ne.jp/Y-Yamada/pc_stress',216,'2000-01-16',9421,'������PC�˸����äƤ����ί�ޤ�ޤ���Υ��ȥ쥹��');
INSERT INTO src_master VALUES ('���ղ�','http://member.nifty.ne.jp/Y-Yamada/player',120,'2000-01-24',10021,'���⳰��ͭ̾���ղȤθ�����󡣥ץ쥼��ȴ��⤢��ޤ���');
INSERT INTO src_master VALUES ('�ߤ�ʤǥȥ���','http://member.nifty.ne.jp/Y-Yamada/playingcard',320,'2000-08-03',10285,'������ͷ�٤�ȥ��ץ������Ҳ�');
INSERT INTO src_master VALUES ('�פ餹����դ�����','http://member.nifty.ne.jp/Y-Yamada/plus',211,'2001-04-02',12369,'���Ĥ�������˥ץ饹��������ǡ�����ʤ˱��ܲ�����ޤ�ޤ���');
INSERT INTO src_master VALUES ('�⤦����','http://member.nifty.ne.jp/Y-Yamada/plus_one',213,'2000-08-05',7893,'����ʪ­��ʤ��Ȥ��ˤ⤦���ʡ����ޤ��ΤǺ��ޤ���');
INSERT INTO src_master VALUES ('�ޥ��ݥ��ȥ�����','http://member.nifty.ne.jp/Y-Yamada/postcard',111,'2001-03-05',8427,'�䤬ι���������ƹ�γ��ս�ι�襨�ԥ����ɤȶ��˷Ǻܡ�');
INSERT INTO src_master VALUES ('���⤷��ð�','http://member.nifty.ne.jp/Y-Yamada/postmark',112,'2000-11-27',17298,'�ð��θ����������Ĥ��äƲ��⡣�����˭�١�');
INSERT INTO src_master VALUES ('�ݡ����Τ��ޤ�','http://member.nifty.ne.jp/Y-Yamada/pouch',110,'2001-06-09',7219,'�ճ���1�����ȥ��1�ġ����ꥸ�ʥ�ݡ������Ĥ��Ƥ��롣���ָ��ꡣ');
INSERT INTO src_master VALUES ('�ץ�쥹����','http://member.nifty.ne.jp/Y-Yamada/prowres',154,'2000-05-03',2179,'����Υץ�쥹�顼�λ������ݡ��ȡ��������������á�');
INSERT INTO src_master VALUES ('����������','http://member.nifty.ne.jp/Y-Yamada/psychology01',221,'2001-06-22',1235,'�����ؤν���ν��⤫�顣�����ؼԡ����ܴ����μ���');
INSERT INTO src_master VALUES ('�������Ѹ�ꥹ��','http://member.nifty.ne.jp/Y-Yamada/psychology02',221,'2001-07-20',6234,'�������Ѹ�Υꥹ�ȡ��ܤ�������ȥ���ץ뿴���ƥ����դ���');
INSERT INTO src_master VALUES ('�����¸��η��','http://member.nifty.ne.jp/Y-Yamada/psychology03',221,'2001-04-21',1264,'��������ˡ�μ��ࡣ�����ƥ��Ȥη���̾ɾ��ꥹ�ȡ�');
INSERT INTO src_master VALUES ('�Ȥ���쥷��','http://member.nifty.ne.jp/Y-Yamada/recipe',213,'2000-07-06',20187,'������ޡ�����ˤĤ��Ƥ��Ȥ���쥷�Ԥ򶵤����㤤�ޤ���');
INSERT INTO src_master VALUES ('�����������󥵡���','http://member.nifty.ne.jp/Y-Yamada/recom',122,'1999-09-21',11238,'�������ᥳ�󥵡��Ⱦ������ܡ������å�ͽ���Ǥ��ޤ���');
INSERT INTO src_master VALUES ('�����ѥ','http://member.nifty.ne.jp/Y-Yamada/rinrin',114,'2000-07-18',21097,'��ơ�����Ҷ�������Ƥ�������������Ի׵Ĥʥѥ�ˤĤ��ơ�');
INSERT INTO src_master VALUES ('�ʳؼԤ��ܻؤ�','http://member.nifty.ne.jp/Y-Yamada/science01',810,'2001-03-09',5213,'�֤ʤ����ɤ����ơ��פ����ڤˤ��褦��������Ĥ��Ȥ���ʳؤϻϤޤ�ޤ���');
INSERT INTO src_master VALUES ('�ʳؤ����','http://member.nifty.ne.jp/Y-Yamada/science02',810,'2001-08-03',6423,'�����ޤ�ȯã���Ƥ����ʳء�������ˤ�ܤ���������');
INSERT INTO src_master VALUES ('�Ҥɤ�βʳ�','http://member.nifty.ne.jp/Y-Yamada/science03',810,'1999-09-11',6493,'�Ҥɤ�Ǥ�¿����ƹԤ���ʳؼ¸���¿���Ǻܡ���ͳ����ˤɤ�����');
INSERT INTO src_master VALUES ('����','http://member.nifty.ne.jp/Y-Yamada/score',121,'2000-04-12',12876,'�ԥ��Ρ����������Х�ɥ�������');
INSERT INTO src_master VALUES ('������ǥݥ�','http://member.nifty.ne.jp/Y-Yamada/seal',110,'1999-03-27',26432,'���ä���ޤ󥷡���ʤɡ��ȥ졼�ɤ��äƤޤ���');
INSERT INTO src_master VALUES ('���ۤ��ν���','http://member.nifty.ne.jp/Y-Yamada/seikatu01',630,'2000-06-18',9785,'���褫����Ĥ����餤���Τ�ʬ����ʤ����ۤ��ν�������Ψ�褤���ۤ��ν�����ˡ����⡣');
INSERT INTO src_master VALUES ('���λȤ���','http://member.nifty.ne.jp/Y-Yamada/seikatu02',630,'2001-04-02',8947,'�Ƽ����μ�����ʤɤ���⡣�����θ��ܤ⤢�ꡣ');
INSERT INTO src_master VALUES ('ʬ�̤��ߤνФ���','http://member.nifty.ne.jp/Y-Yamada/seikatu03',630,'2000-08-07',6423,'�ɤ�ɤ��ʬ������Ƥ���ʬ�̤��ߡ�ʬ���̤ˤ��ߤ���⡣');
INSERT INTO src_master VALUES ('���ݡ��Ĥǥ������ץ��å�','http://member.nifty.ne.jp/Y-Yamada/shape',150,'1999-07-10',4223,'�ߤ�ʤǤ襤�襤���ݡ��Ĥ�ڤ��ߤʤ��顢�������ץ��åפ⤷���㤤�ޤ��礦��');
INSERT INTO src_master VALUES ('������������','http://member.nifty.ne.jp/Y-Yamada/ski',155,'2000-08-09',4239,'�������繥�����󥹥ȥ饯���������ˤ�����ʥ��祦�������졣');
INSERT INTO src_master VALUES ('�����Ǥβ�','http://member.nifty.ne.jp/Y-Yamada/slope',155,'2001-11-19',4129,'���ϤΥ�������Ǹ��Ĥ�������������');
INSERT INTO src_master VALUES ('�����饹�Υ�','http://member.nifty.ne.jp/Y-Yamada/snow',155,'1999-08-10',5234,'���Ρ��ܡ��ɽ鿴�Ԥ⥳��ǰ¿���������ˡ��');
INSERT INTO src_master VALUES ('�⤷�⤷������','http://member.nifty.ne.jp/Y-Yamada/soudan01',242,'2000-03-01',1353,'���äˤ��24���ַ����̡����ä��Ȥ��ˤϤ��������뤷�ơ�');
INSERT INTO src_master VALUES ('���ǥ��󥿡��Ф�','http://member.nifty.ne.jp/Y-Yamada/soudan02',242,'2000-05-12',6432,'̵�������̤�»ܡ��򹯿��ǥ��󥿡��Ф顣');
INSERT INTO src_master VALUES ('�᡼��ǰ¿�','http://member.nifty.ne.jp/Y-Yamada/soudan03',242,'2000-05-10',2135,'�±��˹Ԥ��ΤϤ���äȡĤȸ��������᡼������̤��ƤߤƤϡ�');
INSERT INTO src_master VALUES ('�������ԻΤˤʤꤿ��','http://member.nifty.ne.jp/Y-Yamada/space01',820,'2000-08-01',5312,'�������ԻΤˤʤ�ˤϤɤ������餤���Τ�������');
INSERT INTO src_master VALUES ('�������˾�ä�','http://member.nifty.ne.jp/Y-Yamada/space02',820,'2001-04-12',1983,'���ݥ�˾�äƺƤӱ��������Ω�ġ����λ���ϡ�');
INSERT INTO src_master VALUES ('���襹�ơ������','http://member.nifty.ne.jp/Y-Yamada/space03',820,'2001-04-19',5132,'��ݱ��襹�ơ������ˤĤ��ơ�̵����Ĵ����');
INSERT INTO src_master VALUES ('�Ȥ�����쥷��','http://member.nifty.ne.jp/Y-Yamada/special',213,'2000-06-05',4397,'�����ü����ü�ޤǻȤ��ڤ���ΤǤ���쥷�Խ���');
INSERT INTO src_master VALUES ('���ݡ��ĥ����ɰ���','http://member.nifty.ne.jp/Y-Yamada/sportcard',111,'2001-02-15',4783,'�ץ���塢���å����Υȥ졼�ǥ��󥰥����ɡ�');
INSERT INTO src_master VALUES ('���ƥ�ɥ��饹������','http://member.nifty.ne.jp/Y-Yamada/stained_grass',133,'2000-07-21',7397,'���ƥ�ɥ��饹�κ��������⡣���ʾҲ�');
INSERT INTO src_master VALUES ('���Ĥ����ä�','http://member.nifty.ne.jp/Y-Yamada/stamp_come',215,'2000-03-11',13787,'�Τʤ�����ڼ����ˡ�ξҲ𡣤��줫��Ϥ�����ˡ�');
INSERT INTO src_master VALUES ('�ڼ�ߥ塼������','http://member.nifty.ne.jp/Y-Yamada/stamp_museum',112,'2000-09-28',16238,'�椬�Ȥΰ켼�ϡ��ڼ�ߥ塼�����ࡣ���٤������졪');
INSERT INTO src_master VALUES ('�ڼ�ι��','http://member.nifty.ne.jp/Y-Yamada/stamp_trip',112,'1999-12-29',18324,'�����ƹ���ڼ����������̤˰�������');
INSERT INTO src_master VALUES ('�ڤΥ������','http://member.nifty.ne.jp/Y-Yamada/stand',132,'2001-08-10',4628,'�ڤ�Ȥä��ŵ�������ɤ�������̤����Τ���������򤴲���ˡ�');
INSERT INTO src_master VALUES ('���¤�õ����','http://member.nifty.ne.jp/Y-Yamada/star01',832,'2000-02-01',1352,'���Ū���Ĥ��䤹�����¤򥤥饹�ȤǾҲ������ḫɽ��');
INSERT INTO src_master VALUES ('���Ƥ�����','http://member.nifty.ne.jp/Y-Yamada/star02',832,'2000-04-14',3463,'���Ƥ����¤θ��Ĥ�������ͼ����ʤɡ�');
INSERT INTO src_master VALUES ('���ꥷ����ä�����','http://member.nifty.ne.jp/Y-Yamada/star03',832,'2000-08-01',3214,'���ꥷ����äξҲ������Ǻ�ˤ���������');
INSERT INTO src_master VALUES ('���ȥå׿�����','http://member.nifty.ne.jp/Y-Yamada/stop',212,'2000-06-02',5933,'�����Ǥ�ͽ��ˡ����⡣�����ݤθ��档');
INSERT INTO src_master VALUES ('������ή�������','http://member.nifty.ne.jp/Y-Yamada/suisei01',831,'2000-04-01',5232,'������ή���˴ؤ��븦�档�ǿ��˥塼����Ǻܡ����䥳���ʡ��⡣');
INSERT INTO src_master VALUES ('������ή�����򸫤���','http://member.nifty.ne.jp/Y-Yamada/suisei02',831,'2001-04-08',2341,'��ǯ�νи����򤺤Ф�ͽ�ۡ����������������ݾ���');
INSERT INTO src_master VALUES ('�ء���ܥå�����','http://member.nifty.ne.jp/Y-Yamada/suisei03',831,'1999-05-21',10351,'�ء���ܥå������μ̿������Ǻܡ�����¾��������������ܡ�');
INSERT INTO src_master VALUES ('�������ʥ�','http://member.nifty.ne.jp/Y-Yamada/sumai01',610,'2001-09-12',5234,'���ʤ�����˾�ˤ������Ǥ��뤪���������äȸ��Ĥ���ޤ���');
INSERT INTO src_master VALUES ('1����餷�γڤ�����','http://member.nifty.ne.jp/Y-Yamada/sumai02',610,'2000-05-03',2098,'1�ͤ����餳�����ڤ�����餽���������·�������������Ǽˡ��');
INSERT INTO src_master VALUES ('��ؤΤ������','http://member.nifty.ne.jp/Y-Yamada/sumai03',610,'2001-08-12',5293,'�Ȥˤ������뤤�������ˤ����������Ű��Ū�ˤ������ޤ�����');
INSERT INTO src_master VALUES ('����������','http://member.nifty.ne.jp/Y-Yamada/supple',215,'2001-05-02',7893,'���ץ���Ȥξ�������������⡣����­��ʤ�������ɬ�ס�');
INSERT INTO src_master VALUES ('����ꥫ���ץ���Ȼ���','http://member.nifty.ne.jp/Y-Yamada/supplement',77,'2001-08-13',3289,'���ץ���ʹ񥢥�ꥫ������ꥫ�Υ��ץ�����Ҳ�');
INSERT INTO src_master VALUES ('50�Ф���Υ��󥯥�','http://member.nifty.ne.jp/Y-Yamada/synchro',153,'2000-07-26',4111,'���ǯ�Τ���Υ��󥯥�ʥ����ɥ����ߥ󥰡�');
INSERT INTO src_master VALUES ('�鿴�ԤΥƥ���ɡ�','http://member.nifty.ne.jp/Y-Yamada/tekondo',154,'2001-09-02',1213,'�ƥ���ɡ��Υ롼��������ƻ�������');
INSERT INTO src_master VALUES ('�����Υƥ�ۥ󥫡���','http://member.nifty.ne.jp/Y-Yamada/telcard',111,'2001-01-27',3972,'Ķ�쥢��Υƥ�ۥ󥫡��ɡ��������Τ��Υ����ɥ�⡣');
INSERT INTO src_master VALUES ('�����������פ���','http://member.nifty.ne.jp/Y-Yamada/tokei',115,'1999-04-11',12198,'�䤬���᤿�󣳣����Ĥλ��ס�');
INSERT INTO src_master VALUES ('�ȥ쥫�ǥȥ졼��','http://member.nifty.ne.jp/Y-Yamada/trade',111,'2001-02-24',6732,'���˥ᡦ������ϤΥ����ƥब˭�١��ȥ졼�ɷǼ��ġ�');
INSERT INTO src_master VALUES ('���Ĥޤ���ʪ','http://member.nifty.ne.jp/Y-Yamada/tukemono',214,'2001-09-13',4987,'�������󡢥�����������Ҥʤɤʤɡ���������ʪ�罸�硣');
INSERT INTO src_master VALUES ('���ޡ������κ����','http://member.nifty.ne.jp/Y-Yamada/tv01',720,'2000-08-12',4132,'�ƥ�ӥ��ޡ������κ����������᡼���󥰥ӥǥ���');
INSERT INTO src_master VALUES ('���ʥ��󥵡�������','http://member.nifty.ne.jp/Y-Yamada/tv02',720,'2001-04-12',5322,'�ƥ�ӡ��饸�����������Υ��ʥ��󥵡�������򥦥��å���');
INSERT INTO src_master VALUES ('�ƥ������ɽ','http://member.nifty.ne.jp/Y-Yamada/tv03',720,'2001-05-24',3245,'��ƥ������ɽ�����ä�������å����Ƥ���ƨ���ʤ���');
INSERT INTO src_master VALUES ('��äѤ��ߴ�','http://member.nifty.ne.jp/Y-Yamada/ume',214,'2001-09-10',4327,'�ߴ��������Ϥ���ƤǤ�ɬ��������');
INSERT INTO src_master VALUES ('��ä��껶��','http://member.nifty.ne.jp/Y-Yamada/walking',200,'2001-10-19',3428,'�򹯤ΰ٤�ä����⤤�Ƥߤޤ��󤫡�ƻü�˺餯�������֤��ܤ�����褦��');
INSERT INTO src_master VALUES ('�����','http://member.nifty.ne.jp/Y-Yamada/wall_clock',115,'2000-04-10',5982,'�Ť�����ס�����ư���Ƥޤ���');
INSERT INTO src_master VALUES ('�����ӻ���','http://member.nifty.ne.jp/Y-Yamada/watch',130,'1999-12-28',21868,'�ϥ�ɥᥤ�ɤΤ����������ӻ��ס������ˤ��ä���ġ�');
INSERT INTO src_master VALUES ('��ͷ�Ӥ�������','http://member.nifty.ne.jp/Y-Yamada/water',153,'2001-07-19',4027,'��ˤ��ã������ˤϤޤ���򹥤��ˤʤ���');
INSERT INTO src_master VALUES ('��ͤȤ��ä���','http://member.nifty.ne.jp/Y-Yamada/weaning',210,'1999-06-12',12397,'��ͤΥ�˥塼�˰칩�פǡ�Υ�����ν���夬�ꡣ');
INSERT INTO src_master VALUES ('��ê���','http://member.nifty.ne.jp/Y-Yamada/wood01',132,'2000-06-19',2343,'�����������Ȱ�����ê���ä����ͤ��繥���ʾݤγ���Ħ�äƤ��ä���');
INSERT INTO src_master VALUES ('�ޥޤμ��ꤪ����','http://member.nifty.ne.jp/Y-Yamada/youfuku',131,'2001-08-12',4298,'�Ҷ������Ϥ��٤Ƽ��ꡣ��ᥤ��ˡ��Ǻܡ�');
INSERT INTO src_master VALUES ('ͭ������','http://member.nifty.ne.jp/Y-Yamada/yusen',53,'2000-04-13',12879,'ͭ���ҥåȲ��ضʡ�����ͭ����ް�����');
INSERT INTO src_master VALUES ('�¿����ι','http;//member.nifty.ne.jp/Y-Yamada/alone',143,'2000-04-24',12708,'������ͤǤ�¿�������ޤ��ɡ���������������ܡ�');
INSERT INTO src_master VALUES ('�������ɿ�²��','http;//member.nifty.ne.jp/Y-Yamada/aquarism',144,'2000-09-12',29368,'���襤����å����зޤ��ޤ����֤����⤿������');
INSERT INTO src_master VALUES ('�ݡ��ȥܡ���','http;//member.nifty.ne.jp/Y-Yamada/ball',152,'2000-05-11',12379,'�ݡ��ȥܡ���ä��ΤäƤ롩�롼���ܤ������⡣');
INSERT INTO src_master VALUES ('����巳��','http;//member.nifty.ne.jp/Y-Yamada/baseball',151,'2001-06-14',10473,'���Τ������󤿤������ޤäƺ�ä����������ࡣ�Ϥä�����äƼ夤�Ǥ���');
INSERT INTO src_master VALUES ('�����ɥ֥å�','http;//member.nifty.ne.jp/Y-Yamada/book',140,'2001-01-14',12789,'�ϰ��̥����ɥ֥å������Ϥ����������Ͽ��');
INSERT INTO src_master VALUES ('�����פ��褦','http;//member.nifty.ne.jp/Y-Yamada/camp',141,'2001-05-12',10230,'����ʤ��Ƥ�����ס����ޤ����ߤ�ʤǥ����פ��褦��');
INSERT INTO src_master VALUES ('�����С�ƫ�ݶ���','http;//member.nifty.ne.jp/Y-Yamada/ceramic',134,'1999-07-04',8396,'����Ū���μ��䵻ˡ��ؤӡ��ºݤ˺��ʤ�������Ƥ��������ޤ���');
INSERT INTO src_master VALUES ('��٥륢�å�����','http;//member.nifty.ne.jp/Y-Yamada/cook',134,'2001-08-14',3987,'�����ϴ����ס����ꥸ�ʥ륬�饹��ǥ�٥륢�åס�');
INSERT INTO src_master VALUES ('�����ʥ����ݥ�','http;//member.nifty.ne.jp/Y-Yamada/coupon',145,'2001-06-02',18496,'����󥻥�ɤʤɤ������������ץ��Ȥ��ƻ��äƤ��������䤢�ꡣ');
INSERT INTO src_master VALUES ('�Żҹ���','http;//member.nifty.ne.jp/Y-Yamada/denshi',135,'2000-05-01',2789,'�Żҹ����ɬ�פʤ�Ρ������μ�����⡣');
INSERT INTO src_master VALUES ('��ǰ���������','http;//member.nifty.ne.jp/Y-Yamada/discount',143,'2000-01-19',12796,'����󥻥�ɤʤɤ������������ץ��Ȥ��ƻ��äƤ��������䤢�ꡣ');
INSERT INTO src_master VALUES ('���Ӥȥѡ���','http;//member.nifty.ne.jp/Y-Yamada/dwarf',145,'2000-04-03',12698,'���åץ롢��²�ǹԤ��Ф�������������åȡ�2�ͤ�2�����3�ͤ�3�����');
INSERT INTO src_master VALUES ('�Ҥɤ����ͤ�','http;//member.nifty.ne.jp/Y-Yamada/family',141,'2000-08-11',9179,'�Ҷ�����ͤ�ߤ�ʤ��ڤ����ι�ԥץ����Ω������');
INSERT INTO src_master VALUES ('�ִ�Ȳ�','http;//member.nifty.ne.jp/Y-Yamada/flower',135,'2000-07-19',4987,'�����֤Ϥ����󡢲ִ����ꤷ�Ƥޤ���');
INSERT INTO src_master VALUES ('���饹������','http;//member.nifty.ne.jp/Y-Yamada/grass_shop',133,'2000-07-27',3987,'���饹�ˤĤ��ƺ٤������档Q&A�Ǽ��ġ�');
INSERT INTO src_master VALUES ('���˹Ԥ���','http;//member.nifty.ne.jp/Y-Yamada/hill',140,'2000-05-19',13682,'�������ỳ�٥��ȣ���');
INSERT INTO src_master VALUES ('�ϥͥࡼ��','http;//member.nifty.ne.jp/Y-Yamada/honeymoon',142,'2000-11-13',11236,'�����˰��٤����ڤ�ι�ԡ����ä���ײ衣�͵��ι�');
INSERT INTO src_master VALUES ('�����������ν�','http;//member.nifty.ne.jp/Y-Yamada/jiman',143,'1999-02-21',31228,'�����������դμ�����������ǽ�Ǥ���ۥƥ롣');
INSERT INTO src_master VALUES ('ͥ��������','http;//member.nifty.ne.jp/Y-Yamada/journey',140,'2001-09-10',12879,'��ǯ����㳲�Ԥⵤ�ڤ�ι�Ԥ�ڤ��⤦��');
INSERT INTO src_master VALUES ('�Һ��','http;//member.nifty.ne.jp/Y-Yamada/kama',130,'1999-03-25',4269,'�����ν鿴�Ԥλ䤬��ƫ���Ҥ���ޤǤβ�����̿��Ĥ��ǡ�');
INSERT INTO src_master VALUES ('�������ץ�����','http;//member.nifty.ne.jp/Y-Yamada/koganei',145,'2001-09-18',7269,'�������ץ��������������㤨�У���������');
INSERT INTO src_master VALUES ('�ޤ�Ȥ��ۥƥ����','http;//member.nifty.ne.jp/Y-Yamada/marutoku',143,'1999-11-11',21478,'��ǰ������Τ���ۥƥ�ʤɡ������ʥۥƥ�������ܡ�');
INSERT INTO src_master VALUES ('�ͤ��ߤ�����Ű�칶άˡ','http;//member.nifty.ne.jp/Y-Yamada/nezumi',144,'2000-05-14',42981,'�ͤ��ߤ����ɤǻפ��ä���ͷ�Ӥޤ��礦���ɤ�����ޤ��и�Ψ���ɤ���');
INSERT INTO src_master VALUES ('��ޤ��Ѹ�����','http;//member.nifty.ne.jp/Y-Yamada/nouen',141,'2001-03-14',21498,'��󤴼�ꡣ�ߤ����ꡣ�ʤɵ���ˤ��碌�Ƥ����ʲ�ʪ���Ȥ�ޤ���');
INSERT INTO src_master VALUES ('���OK���δ��޽�','http;//member.nifty.ne.jp/Y-Yamada/ok',143,'1999-12-14',21987,'���Τ����紿�ޤνɡ���ɤ˺�Ŭ�Ǥ���');
INSERT INTO src_master VALUES ('�͵��Τ��ߤ䤲','http;//member.nifty.ne.jp/Y-Yamada/omiyage',142,'2000-07-21',19267,'���̿͵����ߤ䤲��󥭥󥰡�');
INSERT INTO src_master VALUES ('ư���ޤ��','http;//member.nifty.ne.jp/Y-Yamada/origami',135,'2001-07-12',4187,'�������ޤ�����äƤϤ����ޤ��󡣼�ͳ���ߤ�ư�����꤬�ߤ�����');
INSERT INTO src_master VALUES ('�ѥѤ������繩','http;//member.nifty.ne.jp/Y-Yamada/papa',135,'2001-09-08',3127,'�ѥѤ�����åԡ�(��)�Τ���������ޤ�����1���ܤϱ�ϳ�ꡩ');
INSERT INTO src_master VALUES ('�ڡ��ѡ�����ե�','http;//member.nifty.ne.jp/Y-Yamada/paper',130,'2000-07-14',5983,'����˹�ä��ڡ��ѡ�����եȤ�Ҳ�ï�Ǥ��ñ�˺��ޤ���');
INSERT INTO src_master VALUES ('�ѥ��ݡ��Ȥμ����','http;//member.nifty.ne.jp/Y-Yamada/pass',142,'2001-01-12',23986,'�Ϥ���Ƥγ���ι�ԡ��ޤ��ϥѥ��ݡ��Ȥ򥲥åȡ�');
INSERT INTO src_master VALUES ('�ڥ󥷥�󤤤���','http;//member.nifty.ne.jp/Y-Yamada/pensyon',143,'1999-01-12',12378,'������Τ��襤�������������䥢�ҥ�⤪���ͤΤ��ۤ����Ԥ����Ƥ���ޤ���');
INSERT INTO src_master VALUES ('��带���','http;//member.nifty.ne.jp/Y-Yamada/pinpon',151,'2000-05-19',5296,'�ԥ�ݥ󤫡��ʤ�Ƹ���ʤ��ǡ��ܵ��Ǹ��椷�Ƥ��ޤ���');
INSERT INTO src_master VALUES ('��ƻƻ��','http;//member.nifty.ne.jp/Y-Yamada/sadou',134,'1999-12-18',6295,'ͭ̾ƫ�ݲȤˤ����ƻƻ���Ҳ�');
INSERT INTO src_master VALUES ('���˹Ԥ���','http;//member.nifty.ne.jp/Y-Yamada/sea',140,'2000-09-08',12789,'�������᳤�٥��ȣ���');
INSERT INTO src_master VALUES ('�����и�','http;//member.nifty.ne.jp/Y-Yamada/soap',135,'2000-09-10',12262,'��ʬ��ȩ�˥ԥå����ä��и�����ꤷ�ޤ��礦���ϡ����и��ʤɡ�');
INSERT INTO src_master VALUES ('���Ӥä����å��������','http;//member.nifty.ne.jp/Y-Yamada/soccer',151,'2000-06-14',12369,'4�Ф���10�ФޤǤΤ��Ӥä��������å�������֡��ߤ�����ɤ��Ǥ���');
INSERT INTO src_master VALUES ('��ǽ�̲����ꥹ��','http;//member.nifty.ne.jp/Y-Yamada/spring',140,'2000-07-18',34789,'����β���ι�ۡ���ǽ�̥ꥹ�ȡ�');
INSERT INTO src_master VALUES ('�ߥ˥ߥ��Ҿ�','http;//member.nifty.ne.jp/Y-Yamada/stockfarm',141,'2001-01-12',12398,'������θ�����ꤿ�ƥߥ륯�ǥ��եȥ��꡼��Ϥ�������');
INSERT INTO src_master VALUES ('�ƥ˥����������','http;//member.nifty.ne.jp/Y-Yamada/tennis',151,'2001-07-14',3247,'5�Ĥ���ؤ��齸�ޤä����С��ǹ������줿�ƥ˥��������롣');
INSERT INTO src_master VALUES ('�ۥƥ�ǻȤ�������å�','http;//member.nifty.ne.jp/Y-Yamada/ticket',145,'2000-05-13',10298,'����ͽ���50��OFF���ۥƥ�ǻȤ���ʰ¥����åȡ�');
INSERT INTO src_master VALUES ('�Ѹ���ƫ��','http;//member.nifty.ne.jp/Y-Yamada/tougei',134,'2000-11-17',3269,'�����ǰ����θ�ƫ�ݤ�ڤ��ߤޤ������ճ��ȴ�ñ�����򤤤Ǥ���');
INSERT INTO src_master VALUES ('��������ĥ�������','http;//member.nifty.ne.jp/Y-Yamada/tour',142,'2001-03-12',22179,'�ʰ¤�������ĥ����򤴾Ҳ�');
INSERT INTO src_master VALUES ('Ǵ�ڤǤ������','http;//member.nifty.ne.jp/Y-Yamada/toy',130,'2000-05-04',19398,'Ǵ�ڤ�ȤäƤ����䤭���ʤɤ�ưʪ���äƤ��ޤ���');
INSERT INTO src_master VALUES ('�ۥ磻�ȥ磻�ʥ꡼','http;//member.nifty.ne.jp/Y-Yamada/wine',144,'2000-06-19',5239,'�磻���¤�������줫��狼�롣�������äƤޤ���');
INSERT INTO src_master VALUES ('���ڲ�����','http;//member.nifty.ne.jp/Y-Yamada/yado',141,'2000-09-13',21489,'��²�����åץ����͵������ڲ����ɡ�');
INSERT INTO src_master VALUES ('�Ƥ�ʪ��󥯽�','http;//member.nifty.ne.jp/Y-Yamada/yakimono',130,'2000-04-03',4697,'������ϤξƤ�ʪ�˴ؤ����󥯽��Ǥ���');

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


INSERT INTO struts_address VALUES (1,'�ĸ��¹�','��','1955-12-17 00:00:00','���ո�XXXX��XXXXX','0XX-XXX-9999','shinohara@XXXX.XX.XX');
INSERT INTO struts_address VALUES (2,'��������','��','1962-02-02 00:00:00','��̸�������XX-X-XX','0XX-X9X-7777','suzuks@XXXX.XX.XX');
INSERT INTO struts_address VALUES (3,'��������','��','1964-03-30 00:00:00','�����������XXX','0X9-98X-1111','tanaka@XXXX.XX.XX');
INSERT INTO struts_address VALUES (4,'���忿��','��','1977-10-19 00:00:00','����Ԣ�����XXX-XXX','X78-78X-6661','shimizu@XXXX.XX.XX');
INSERT INTO struts_address VALUES (5,'�����','��','1970-05-28 00:00:00','�������ߡ�ĮX-X-XXX','0X9-X11-2222','nakano@XXXX.XX.XX');
INSERT INTO struts_address VALUES (6,'���ľʹ�','��','2002-12-04 00:00:00','�Ų���XXXXX��','042-111-1111','CQW15204@nifty.com');
INSERT INTO struts_address VALUES (7,'��������','��','1975-01-01 00:00:00','�ܺ긩XXX��1-12-111','02x-654x-324x','nabenabe@yama.ne.zz');
INSERT INTO struts_address VALUES (8,'��ë����','��','2002-08-05 00:00:00','���縩ʡ���Ԣ�����9-9-99','03-111-1xx1','namidon@mbh.nifty.com');

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


INSERT INTO upload_master VALUES ('00002','��������Ĥ�����XML����ץ뽸',2900);
INSERT INTO upload_master VALUES ('00003','��������Ĥ�����PHP5����ץ뽸',2800);
INSERT INTO upload_master VALUES ('00004','��������Ĥ�����JSP/�����֥�åȥ���ץ뽸',2800);
INSERT INTO upload_master VALUES ('00005','�ץ���ե����ASP',1500);
INSERT INTO upload_master VALUES ('00006','�ץ���ե����PHP',1800);
INSERT INTO upload_master VALUES ('00007','Web���ץꥱ��������۵�ˡ',3000);
