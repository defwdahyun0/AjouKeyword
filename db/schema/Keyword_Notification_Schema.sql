CREATE TABLE `users` (
	`u_id`	VARCHAR(50)	NOT NULL,
	`password`	VARCHAR(50)	NULL,
	`email`	VARCHAR(100)	NULL,
	`date`	TIMESTAMP	NULL,
	PRIMARY KEY(u_id)
);

CREATE TABLE `page` (
	`p_id`	INT(11) UNSIGNED	NOT NULL	AUTO_INCREMENT,
	`url`	VARCHAR(1000)	NULL,
	`p_name`	VARCHAR(100)	NULL,
	PRIMARY KEY(p_id)
);

CREATE TABLE `keyword` (
	`k_id`	INT(11) UNSIGNED	NOT NULL AUTO_INCREMENT,
	`keyword`	VARCHAR(100)	NULL,
	`u_id`	VARCHAR(50)	NOT NULL,
	PRIMARY KEY (k_id),
	FOREIGN KEY (u_id) REFERENCES users (u_id) ON DELETE CASCADE
);

CREATE TABLE `registration` (
	`up_id`	INT(11) UNSIGNED	NOT NULL AUTO_INCREMENT,
	`u_id`	VARCHAR(50)	NOT NULL,
	`p_id`	INT(11) UNSIGNED	NOT NULL,
	`k_id`	INT(11) UNSIGNED	NULL,
	PRIMARY KEY (up_id),
	FOREIGN KEY (u_id) REFERENCES users (u_id) ON DELETE CASCADE,
	FOREIGN KEY (p_id) REFERENCES page (p_id) ON DELETE CASCADE,
	FOREIGN KEY (k_id) REFERENCES keyword (k_id) ON DELETE CASCADE
);

CREATE TABLE `crawl_data` (
	`d_id`	INT(11) UNSIGNED	NOT NULL AUTO_INCREMENT,
	`title`	VARCHAR(100)	NULL,
	`content`	VARCHAR(500)	NULL,
	`link`	VARCHAR(200)	NULL,
	`p_id`	INT(11) UNSIGNED	NULL,
	`department`	VARCHAR(45)	NULL,
	`updateDate`	VARCHAR(45)	NULL,
	`idx`	INT(11) UNSIGNED	NULL,
	`category`	VARCHAR(45)	NULL,
	PRIMARY KEY (d_id),
	FOREIGN KEY (p_id) REFERENCES `page` (p_id) ON DELETE CASCADE
);

CREATE TABLE `trig` (
	`trig_id`	INT(11) UNSIGNED	NOT NULL AUTO_INCREMENT,
	`u_id`	VARCHAR(50)	NOT NULL,
	`title`	VARCHAR(100)	NULL,
	`content`	VARCHAR(500)	NULL,
	`link`	VARCHAR(200)	NULL,
	`keyword`	VARCHAR(100)	NULL,
	`p_id`	INT(11) UNSIGNED	NULL,
	`department`	VARCHAR(45)	NULL,
	`updateDate`	VARCHAR(45)	NULL,
	`idx`	VARCHAR(45)	NULL,
	`category`	VARCHAR(45)	NULL,
	PRIMARY KEY (trig_id),
	FOREIGN KEY (p_id) REFERENCES page (p_id) ON DELETE CASCADE,
	FOREIGN KEY (u_id) REFERENCES users (u_id) ON DELETE CASCADE
);

CREATE TABLE `sessions` (
	`session_id`	VARCHAR(128)	NOT NULL,
	`expires`	INT(11) UNSIGNED	NULL,
	`data`	MEDIUMTEXT	NULL,
	PRIMARY KEY (`session_id`)
);

