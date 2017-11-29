-- Create table
CREATE TABLE IF NOT EXISTS `sample`.`app` (
  `id` varchar(64) NOT NULL COMMENT 'App ID',
  `name` varchar(32) NOT NULL COMMENT 'App Name',
  `version` varchar(32) NOT NULL COMMENT 'App Version',
  `domain` varchar(32) NOT NULL COMMENT 'App Domain'
);

-- Load data
LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/mock.csv' INTO TABLE `sample`.`app` FIELDS TERMINATED BY ',';
