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
	`keyword`	VARCHAR(100)	NOT	NULL,
	PRIMARY KEY (k_id),
);

CREATE TABLE `connection` (
	`c_id` INT(11)	UNSIGNED	NOT NULL	AUTO_INCREMENT,
	`p_id`	INT(11) UNSIGNED	NOT NULL,
	`k_id`	INT(11) UNSIGNED	NOT NULL,
	PRIMARY KEY(c_id),
	FOREIGN KEY(p_id) REFERENCES page (p_id) ON DELETE CASCADE,
	FOREIGN KEY(k_id) REFERENCES keyword (k_id) ON DELETE CASCADE
);

CREATE TABLE `registration` (
	`r_id`	INT(11) UNSIGNED	NOT NULL AUTO_INCREMENT,
	`u_id`	VARCHAR(50)	NOT NULL,
	`c_id`	INT(11) UNSIGNED	NOT NULL,
	PRIMARY KEY (r_id),
	FOREIGN KEY (u_id) REFERENCES users (u_id) ON DELETE CASCADE,
	FOREIGN KEY (c_id) REFERENCES connection (c_id) ON DELETE CASCADE,
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

INSERT INTO `page`(`url`, `p_name`) VALUES('https://eng.ajou.ac.kr/eng/community/notice.jsp','????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://it.ajou.ac.kr/it/community/community01.jsp','??????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://ns.ajou.ac.kr/ns/board/board01.jsp','??????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://ns.ajou.ac.kr/ns/board/board01.jsp','??????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://it.ajou.ac.kr/it/community/community01.jsp','????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://human.ajou.ac.kr/human/commnuity/community07.jsp','????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://coss.ajou.ac.kr/coss/community/community01.jsp','??????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://ts.ajoumc.or.kr/Board/Retrieve.aspx?smpc=UH00100006&ssc=0010&ssgc=UH&mc=UH00100033','????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://isa.ajou.ac.kr/isa/community/community03.jsp','????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://cie.ajou.ac.kr/me/board/board01.jsp','???????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://eng.ajou.ac.kr/ie/board/board01.jsp','???????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://eng.ajou.ac.kr/chembio/board/board01.jsp','???????????????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://che.ajou.ac.kr/che/community/community03.jsp','???????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://eng.ajou.ac.kr/mse/board/board03.jsp','??????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://eng.ajou.ac.kr/env/board/board03.jsp','?????????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://eng.ajou.ac.kr/ce/board/board03.jsp','????????????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://tse.ajou.ac.kr/tse/board/board03.jsp','????????????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://arch.ajou.ac.kr/arch/board/board01.jsp','????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://ise.ajou.ac.kr/ise/board/notice.jsp','????????????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://mdc.ajou.ac.kr/mdc/index.jsp','????????????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://ece.ajou.ac.kr/ece/board/board01.jsp','???????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://math.ajou.ac.kr/math/board/board01.jsp','?????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://it.ajou.ac.kr/media/board/board01.jsp','???????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://security.ajou.ac.kr/security/board/board01.jsp','?????????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://software.ajou.ac.kr/bbs/board.php?tbl=notice','?????????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://ns.ajou.ac.kr/biolog/board/board01.jsp','???????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://physics.ajou.ac.kr/physics/board/board01.jsp','????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://ns.ajou.ac.kr/chem/community/community01.jsp','?????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://biz.ajou.ac.kr/gb/info/08.jsp','?????????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://fe.ajou.ac.kr/fe/board/research01.jsp','???????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://biz.ajou.ac.kr/ebiz/board/board01.jsp','e??????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('https://biz.ajou.ac.kr/biz/community/community01.jsp','????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://human.ajou.ac.kr/culture/board/board01.jsp','?????????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://human.ajou.ac.kr/history/board/board01.jsp','?????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://human.ajou.ac.kr/france/community/community04.jsp','??????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://human.ajou.ac.kr/human/commnuity/community07.jsp','??????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://human.ajou.ac.kr/human/commnuity/community07.jsp','??????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://coss.ajou.ac.kr/slez/community/community03.jsp','?????????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://coss.ajou.ac.kr/pol/community/community04.jsp','??????????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://coss.ajou.ac.kr/soci/community/community03.jsp','????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://apsy.ajou.ac.kr/apsy/community/community04.jsp','????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://coss.ajou.ac.kr/pba/community/community03.jsp','????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://econ.ajou.ac.kr/econ/community/community03.jsp','????????????');
INSERT INTO `page`(`url`, `p_name`) VALUES('http://medicine.ajou.ac.kr/fr_community/sub_06_01','?????????');
