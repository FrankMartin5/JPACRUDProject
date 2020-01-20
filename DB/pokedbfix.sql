-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pokedexdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pokedexdb` ;

-- -----------------------------------------------------
-- Schema pokedexdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pokedexdb` DEFAULT CHARACTER SET utf8 ;
USE `pokedexdb` ;

-- -----------------------------------------------------
-- Table `pokemon`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pokemon` ;

CREATE TABLE IF NOT EXISTS `pokemon` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(12) NULL DEFAULT NULL,
  `type1` VARCHAR(45) NOT NULL,
  `type2` VARCHAR(45) NULL,
  `height` DOUBLE NOT NULL,
  `weight` DOUBLE NOT NULL,
  `ability` VARCHAR(45) NULL,
  `pokedex_entry` VARCHAR(300) NULL,
  `pokemon_image_url` VARCHAR(2000) NULL,
  `last_update` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;

SET SQL_MODE = '';
DROP USER IF EXISTS pokemonuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'pokemonuser'@'localhost' IDENTIFIED BY 'pokemonuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'pokemonuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `pokemon`
-- -----------------------------------------------------
START TRANSACTION;
USE `pokedexdb`;
INSERT INTO `pokemon` (`id`, `name`, `type1`, `type2`, `height`, `weight`, `ability`, `pokedex_entry`, `pokemon_image_url`, `last_update`) VALUES (1, 'Treecko', 'Grass', NULL, 0.5, 5, 'Overgrow', 'The soles of its feet are covered by countless tiny spikes, enabling it to walk on walls and ceilings.', 'https://cdn.bulbagarden.net/upload/thumb/2/2c/252Treecko.png/240px-252Treecko.png', '2020-01-20');
INSERT INTO `pokemon` (`id`, `name`, `type1`, `type2`, `height`, `weight`, `ability`, `pokedex_entry`, `pokemon_image_url`, `last_update`) VALUES (2, 'Grovyle', 'Grass', NULL, 0.9, 21.9, 'Overgrow', 'It lives in dense jungles. While closing in on its prey, it leaps from branch to branch.', 'https://cdn.bulbagarden.net/upload/thumb/e/ea/253Grovyle.png/240px-253Grovyle.png', '2020-01-20');
INSERT INTO `pokemon` (`id`, `name`, `type1`, `type2`, `height`, `weight`, `ability`, `pokedex_entry`, `pokemon_image_url`, `last_update`) VALUES (3, 'Sceptile', 'Grass', NULL, 1.7, 52.2, 'Overgrow', 'The leaves that grow on its arms can slice down thick trees. It is without peer in jungle combat.', 'https://cdn.bulbagarden.net/upload/thumb/3/3e/254Sceptile.png/240px-254Sceptile.png', '2020-01-20');
INSERT INTO `pokemon` (`id`, `name`, `type1`, `type2`, `height`, `weight`, `ability`, `pokedex_entry`, `pokemon_image_url`, `last_update`) VALUES (4, 'Torchic', 'Fire', NULL, 0.4, 2.5, 'Blaze', 'A fire burns inside, so it feels very warm to hug. It launches fireballs of 1,800 degrees F.', 'https://cdn.bulbagarden.net/upload/thumb/9/91/255Torchic.png/240px-255Torchic.png', '2020-01-20');
INSERT INTO `pokemon` (`id`, `name`, `type1`, `type2`, `height`, `weight`, `ability`, `pokedex_entry`, `pokemon_image_url`, `last_update`) VALUES (5, 'Combusken', 'Fire', 'Fighting', 0.9, 19.5, 'Blaze', 'Its kicking mastery lets it loose 10 kicks per second. It emits sharp cries to intimidate foes.', 'https://cdn.bulbagarden.net/upload/2/29/256Combusken.png', '2020-01-20');
INSERT INTO `pokemon` (`id`, `name`, `type1`, `type2`, `height`, `weight`, `ability`, `pokedex_entry`, `pokemon_image_url`, `last_update`) VALUES (6, 'Blaziken', 'Fire', 'Fighting', 1.9, 52, 'Blaze', 'Flames spout from its wrists, enveloping its knuckles. Its punches scorch its foes.', 'https://cdn.bulbagarden.net/upload/9/90/257Blaziken.png', '2020-01-20');
INSERT INTO `pokemon` (`id`, `name`, `type1`, `type2`, `height`, `weight`, `ability`, `pokedex_entry`, `pokemon_image_url`, `last_update`) VALUES (7, 'Mudkip', 'Water', NULL, 0.4, 7.6, 'Torrent', 'To alert it, the fin on its head senses the flow of water. It has the strength to heft boulders.', 'https://cdn.bulbagarden.net/upload/thumb/6/60/258Mudkip.png/240px-258Mudkip.png', '2020-01-20');
INSERT INTO `pokemon` (`id`, `name`, `type1`, `type2`, `height`, `weight`, `ability`, `pokedex_entry`, `pokemon_image_url`, `last_update`) VALUES (8, 'Marshtomp', 'Water', 'Ground', 0.7, 28, 'Torrent', 'Its sturdy legs give it sure footing, even in mud. It burrows into dirt to sleep.', 'https://cdn.bulbagarden.net/upload/thumb/2/27/259Marshtomp.png/240px-259Marshtomp.png', '2020-01-20');
INSERT INTO `pokemon` (`id`, `name`, `type1`, `type2`, `height`, `weight`, `ability`, `pokedex_entry`, `pokemon_image_url`, `last_update`) VALUES (9, 'Swampert', 'Water', 'Ground', 1.5, 81.9, 'Torrent', 'It can swim while towing a large ship. It bashes down foes with a swing of its thick arms.', 'https://cdn.bulbagarden.net/upload/thumb/b/b6/260Swampert.png/240px-260Swampert.png', '2020-01-20');

COMMIT;
