CREATE TABLE `Inscription` (
	`id_membre` INT  UNSIGNED NOT NULL AUTO_INCREMENT,
	`nom` VARCHAR(255) ,
	`prenom` VARCHAR(255) ,
	`pseudo` VARCHAR(255) NOT NULL UNIQUE,
	`date_naissance` DATE ,
	`email` VARCHAR(255) NOT NULL UNIQUE,
	`telephone` VARCHAR(255),
	`mdp` VARCHAR(255),
	`date_inscription` DATETIME ,
	`avatar` VARCHAR(255),
	CONSTRAINT pk_inscription PRIMARY KEY(id_membre)
) ENGINE = InnoDB  CHARACTER SET utf8;

CREATE TABLE `post` (
	`id_post` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`id_membre` INT UNSIGNED NOT NULL,
	`type` VARCHAR(255) NOT NULL,
	`categorie` VARCHAR(255) NOT NULL,
	`titre` VARCHAR(255) NOT NULL,
	`description` VARCHAR(255) ,
	`date_post` DATETIME NOT NULL,
	`url` VARCHAR(255) NOT NULL,
	CONSTRAINT pk_post PRIMARY KEY(id_post)
) ENGINE = InnoDB  CHARACTER SET utf8;

CREATE TABLE `clik` (
	`id_clik` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`id_membre` INT UNSIGNED NOT NULL,
	`id_post` INT UNSIGNED NOT NULL,
	CONSTRAINT pk_clik PRIMARY KEY(id_clik)
) ENGINE = InnoDB  CHARACTER SET utf8;

ALTER TABLE `post` ADD CONSTRAINT `post_membre_fk` FOREIGN KEY (`id_membre`) REFERENCES `Inscription`(`id_membre`);

ALTER TABLE `clik` ADD CONSTRAINT `clik_membre_fk` FOREIGN KEY (`id_membre`) REFERENCES `Inscription`(`id_membre`);

ALTER TABLE `clik` ADD CONSTRAINT `clik_post_fk` FOREIGN KEY (`id_post`) REFERENCES `post`(`id_post`);

