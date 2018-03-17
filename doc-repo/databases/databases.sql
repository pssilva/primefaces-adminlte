CREATE TABLE `contatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(140) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` varchar(140) NOT NULL,
  `ramal` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gti_created_at` datetime NOT NULL,
  `gti_created_by` varchar(140) NOT NULL,
  `gti_modified_at` datetime NOT NULL,
  `gti_modified_by` varchar(140) NOT NULL,
  `gti_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_contatos_nome` (`nome`),
  KEY `IDX_contatos_ramal` (`ramal`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE `recados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idContato` int(11) NOT NULL,
  `horario` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quem` varchar(140) NOT NULL COMMENT 'Quem deixou o recado',
  `texto` varchar(255) NOT NULL,
  `indLido` tinyint(1) NOT NULL DEFAULT '0',
  `gti_created_at` datetime NOT NULL,
  `gti_created_by` varchar(140) NOT NULL,
  `gti_modified_at` datetime NOT NULL,
  `gti_modified_by` varchar(140) NOT NULL,
  `gti_version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_recados_horario` (`idContato`,`horario`),
  KEY `FK_recados_contatos` (`idContato`),
  CONSTRAINT `FK_recados_contatos` FOREIGN KEY (`idContato`) REFERENCES `contatos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin` char(3) NOT NULL,
  `first_name` varchar(185) NOT NULL,
  `last_name` varchar(185) NOT NULL,
  `password` varchar(185) NOT NULL,
  `username` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=`latin1`;

create table `roles`
(
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`role_name` varchar(25) not null,
    PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=`latin1`;

create table `user_roles`
(
	`id` bigint(20) NOT NULL AUTO_INCREMENT,
	`user_name` varchar(35) not null,
	`role_name` varchar(25) not null,
  primary key(`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=`latin1`;

