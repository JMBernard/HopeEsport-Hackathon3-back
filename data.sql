CREATE DATABASE HopeEsport;
USE HopeEsport;

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
    `id` INT NOT NULL AUTO_INCREMENT ,
    `name` varchar(64)  NOT NULL ,
    `password` varchar(64)  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
    `id` int AUTO_INCREMENT NOT NULL ,
    `pseudonym` varchar(64) NOT NULL,
    `firstname` varchar(64)  NOT NULL ,
    `lastname` varchar(64)  NULL ,
    `player_img` varchar(64)  NOT NULL ,
    `prizelist` varchar(64)  NULL ,
    `personnality` varchar(64) NULL ,
    `sentence` varchar(192)  NOT NULL ,
    `description` varchar(192)  NOT NULL ,
    `games` varchar(64) NULL ,
    `discord` varchar(64)  NULL ,
    `instagram` varchar(64)  NULL ,
    `twitter` varchar(64)  NULL ,
    `twitch` varchar(64)  NULL ,
    PRIMARY KEY (
        `id`
    )
);

DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
    `id` int NOT NULL AUTO_INCREMENT,
    `pseudonym` varchar(64)  NULL ,
    `firstname` varchar(64)  NOT NULL ,
    `logotype` varchar(64)  NOT NULL ,
    `age` int  NULL ,
    `position` varchar(64)  NULL ,
    `discord` varchar(64)  NULL ,
    `instagram` varchar(64)  NULL ,
    `twitter` varchar(64)  NULL ,
    `twitch` varchar(64)  NULL ,
    PRIMARY KEY (
        `id`
    )
);

{
    "name": "admin",
    "password": "admin123"
}

{
    "pseudonym": "Roulian",
    "firstname" : "Julien",
    "player_img" : "img.jpeg",
    "sentence" : "On apprend peu par la victoire, mais beaucoup par la défaite.",
    "description" : "22 ans, fan de sport, Tennis depuis 16 ans, sport études.Etudiant à l’université en anthropologie.Adepte des jeux tryhard. Depuis février 2021 désormais focus sur HS."
}

{
    "firstname" : "Antoine",
    "logotype" : "logoK.jpg",
    "age" : 25,
    "position" : "Trésorier"
}