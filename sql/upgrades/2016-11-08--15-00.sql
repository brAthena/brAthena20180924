ALTER TABLE `login`
    ADD COLUMN `last_password_change` INT(11) UNSIGNED NOT NULL DEFAULT '0';

UPDATE `login` SET `last_password_change` = UNIX_TIMESTAMP();

DELIMITER ;;

DROP TRIGGER IF EXISTS `login_insert`;;
CREATE TRIGGER `login_insert` BEFORE INSERT ON `login`
FOR EACH ROW
BEGIN

  IF NEW.sex <> 'S' AND NEW.last_password_change = 0 THEN
    SET NEW.last_password_change = UNIX_TIMESTAMP();
  END IF;

END;;

DROP TRIGGER IF EXISTS `login_update`;;
CREATE TRIGGER `login_update` BEFORE UPDATE ON `login`
FOR EACH ROW
BEGIN

  IF OLD.sex <> 'S' AND MD5(OLD.user_pass) <> MD5(NEW.user_pass) THEN
    SET NEW.last_password_change = UNIX_TIMESTAMP();
  END IF;

END;;

DELIMITER ;
