DELETE FROM `command` WHERE `name`='lookup phasegroup';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES 
('lookup phasegroup', 2010, 'Syntax: .lookup phasegroup id1, id2, id3...');
