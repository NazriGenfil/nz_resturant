INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_pedagang', 'Pedagang', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_pedagang', 'Pedagang', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_pedagang', 'Pedagang', 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('pedagang',0,'pelayan','Pelayan',20,'{}','{}'),
	('pedagang',1,'koki','Koki',40,'{}','{}'),
	('pedagang',2,'boss','CEO',80,'{}','{}')
;

INSERT INTO `jobs` (name, label) VALUES
	('pedagang','Pedagang')
;