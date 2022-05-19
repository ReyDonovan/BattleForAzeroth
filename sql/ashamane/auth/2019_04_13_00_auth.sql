DELETE FROM `rbac_permissions` WHERE `id`=2011;
INSERT INTO `rbac_permissions` (`id`, `name`) VALUES
(2011, 'Command: database update');
INSERT INTO `rbac_linked_permissions` (`id`, `linkedId`) VALUES
(196, 2011);
