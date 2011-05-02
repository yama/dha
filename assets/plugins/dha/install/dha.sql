CREATE TABLE `[+prefix+]history_of_site_content` (
  `id` int(10) NOT NULL auto_increment,
  `type` varchar(20) NOT NULL default 'document',
  `contentType` varchar(50) NOT NULL default 'text/html',
  `pagetitle` varchar(255) NOT NULL default '',
  `longtitle` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `alias` varchar(255) default '',
  `link_attributes` varchar(255) NOT NULL default '',
  `published` int(1) NOT NULL default '0',
  `pub_date` int(20) NOT NULL default '0',
  `unpub_date` int(20) NOT NULL default '0',
  `parent` int(10) NOT NULL default '0',
  `isfolder` int(1) NOT NULL default '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL default '1',
  `template` int(10) NOT NULL default '1',
  `menuindex` int(10) NOT NULL default '0',
  `searchable` int(1) NOT NULL default '1',
  `cacheable` int(1) NOT NULL default '1',
  `createdby` int(10) NOT NULL default '0',
  `createdon` int(20) NOT NULL default '0',
  `editedby` int(10) NOT NULL default '0',
  `editedon` int(20) NOT NULL default '0',
  `deleted` int(1) NOT NULL default '0',
  `deletedon` int(20) NOT NULL default '0',
  `deletedby` int(10) NOT NULL default '0',
  `publishedon` int(20) NOT NULL default '0',
  `publishedby` int(10) NOT NULL default '0',
  `menutitle` varchar(255) NOT NULL default '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL default '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL default '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL default '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL default '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL default '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL default '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL default '0' COMMENT 'Hide document from menu',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.' AUTO_INCREMENT=1 ;


CREATE TABLE `[+prefix+]history_of_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL default '0',
  `tmplvarid` int(10) NOT NULL default '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL default '0' COMMENT 'Site Content Id',
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table' AUTO_INCREMENT=1 ;


CREATE TABLE `[+prefix+]approvaled_site_content` (
  `id` int(10) NOT NULL auto_increment,
  `type` varchar(20) NOT NULL default 'document',
  `contentType` varchar(50) NOT NULL default 'text/html',
  `pagetitle` varchar(255) NOT NULL default '',
  `longtitle` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `alias` varchar(255) default '',
  `link_attributes` varchar(255) NOT NULL default '',
  `published` int(1) NOT NULL default '0',
  `pub_date` int(20) NOT NULL default '0',
  `unpub_date` int(20) NOT NULL default '0',
  `parent` int(10) NOT NULL default '0',
  `isfolder` int(1) NOT NULL default '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL default '1',
  `template` int(10) NOT NULL default '1',
  `menuindex` int(10) NOT NULL default '0',
  `searchable` int(1) NOT NULL default '1',
  `cacheable` int(1) NOT NULL default '1',
  `createdby` int(10) NOT NULL default '0',
  `createdon` int(20) NOT NULL default '0',
  `editedby` int(10) NOT NULL default '0',
  `editedon` int(20) NOT NULL default '0',
  `deleted` int(1) NOT NULL default '0',
  `deletedon` int(20) NOT NULL default '0',
  `deletedby` int(10) NOT NULL default '0',
  `publishedon` int(20) NOT NULL default '0',
  `publishedby` int(10) NOT NULL default '0',
  `menutitle` varchar(255) NOT NULL default '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL default '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL default '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL default '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL default '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL default '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL default '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL default '0' COMMENT 'Hide document from menu',
  PRIMARY KEY  (`id`),
  KEY `id` (`id`),
  KEY `parent` (`parent`),
  KEY `aliasidx` (`alias`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.' AUTO_INCREMENT=1 ;


CREATE TABLE `[+prefix+]approvaled_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL auto_increment,
  `tmplvarid` int(10) NOT NULL default '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL default '0' COMMENT 'Site Content Id',
  `value` text,
  PRIMARY KEY  (`id`),
  KEY `idx_tmplvarid` (`tmplvarid`),
  KEY `idx_id` (`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table' AUTO_INCREMENT=1 ;


CREATE TABLE `[+prefix+]approvals` (
  `id` int(10) NOT NULL default '0',
  `level` int(2) NOT NULL default '0',
  `approval` int(1) NOT NULL default '0',
  KEY `id` (`id`),
  KEY `level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE `[+prefix+]approval_logs` (
  `id` int(10) NOT NULL default '0',
  `level` int(2) NOT NULL default '0',
  `approval` int(1) NOT NULL default '0',
  `user_id` int(10) NOT NULL default '0',
  `role_id` int(10) NOT NULL default '0',
  `editedon` int(20) NOT NULL default '0',
  `comment` text NOT NULL,
  KEY `id` (`id`),
  KEY `level` (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO  `[+prefix+]history_of_site_content` 
SELECT * 
FROM  `[+prefix+]site_content` ;
ALTER TABLE  `[+prefix+]history_of_site_content` DROP PRIMARY KEY;
ALTER TABLE  `[+prefix+]history_of_site_content` CHANGE  `id`  `id` INT( 10 ) NOT NULL;
ALTER TABLE  `[+prefix+]history_of_site_content` ADD  `history_id` INT( 10 ) NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

INSERT INTO  `[+prefix+]approvaled_site_content` 
SELECT * 
FROM  `[+prefix+]site_content` ;

INSERT INTO  `[+prefix+]history_of_site_tmplvar_contentvalues` 
SELECT * 
FROM  `[+prefix+]site_tmplvar_contentvalues` ;
ALTER TABLE  `[+prefix+]history_of_site_tmplvar_contentvalues` ADD  `editedon` INT( 20 ) NOT NULL DEFAULT  '0';

INSERT INTO  `[+prefix+]approvaled_site_tmplvar_contentvalues` 
SELECT * 
FROM  `[+prefix+]site_tmplvar_contentvalues` ;


