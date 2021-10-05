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
    `player_logotype` varchar(64) NULL,
    `prizelist` varchar(64)  NULL ,
    `personnality` varchar(64) NULL ,
    `sentence` varchar(192)  NOT NULL ,
    `age` int NULL,
    `description` varchar(500)  NOT NULL ,
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


///////////////////////////////////////////////////////////


Dans la table admin:

{
    "name": "admin",
    "password": "admin123"
}

Dans Players :

{
    "pseudonym": "Logoss",
    "firstname" : "Hugo",
    "player_img" : "/assets/LogossProfil1.png",
    "player_logotype": "/assets/LogossLogo.png",
    "sentence" : "Le destin n’est jamais tout tracé, c’est à toi d’écrire ton histoire.",
    "age": 20,
    "description" : "Ecole de Commerce à Nice.Je suis motivé à devenir toujours meilleur en compétition, mais je n’oublie pas mes études ! Objectif à court et moyen terme : faire une grosse performance respectable en Master Tour, et finir mes études sans contretemps.",
    "games": "Rocket League",
    "discord": "[Hope] Logoss#8803"
}

{
    "pseudonym": "Roulian",
    "firstname" : "Julien",
    "player_img" : "/assets/RoulianProfil1.png",
    "player_logotype": "/assets/RoulianLogo.png",
    "sentence" : "On apprend peu par la victoire, mais beaucoup par la défaite.",
    "age": 22,
    "description" : "Fan de sport, Tennis depuis 16 ans, sport études.Etudiant à l’université en anthropologie.Adepte des jeux tryhard. Depuis février 2021 désormais focus sur HS.",
    "games": "Fifa, Call Of Duty",
    "discord": "[Hope] Roulian#9446"
}

{
    "pseudonym": "Bongo",
    "firstname" : "Thomas",
    "player_img" : "/assets/BongoProfil1.png",
    "player_logotype": "/assets/BongoLogo.png",
    "sentence" : "On peut perdre en prenant des risques mais on ne gagne jamais sans en prendre.",
    "age": 24,
    "description" : "Tennis depuis 15 ans, grand fan de sport, d’animés, mangas.",
    "games": "Call Of Duty, Overwatch, Diablo",
    "discord": "[Hope] Bongo#7298"
}


Dans members :

{
    "firstname" : "Antoine",
    "logotype" : "logoS.jpg",
    "age" : 25,
    "position" : "Gérant",
    "discord" : "[Hope] SKZ#0233",
    "twitter" : "https://twitter.com/SKZ_HS"
}

{
    "firstname" : "Jules",
    "logotype" : "logoZ.jpg",
    "age" : 20,
    "position" : "Co-Gérant",
    "discord" : "[Hope] ZaryHs#6387",
    "twitter" : "https://twitter.com/zaryhs"
}

{
    "firstname" : "Antoine",
    "logotype" : "logoO.jpg",
    "age" : 23,
    "position" : "Trésorier",
    "discord" : "[Hope] ophtalmo#3863",
    "twitter" : "https://twitter.com/ophtalmohs"
}

{
    "firstname" : "Magi",
    "logotype" : "logoM.jpg",
    "position" : "Responsable Événementiel",
    "discord" : "Magi#9264",
    "twitter" : "https://twitter.com/Magikh42"
}

{
    "firstname" : "Martin",
    "age" : 30,
    "logotype" : "logoCK.jpg",
    "position" : "Responsable Graphiste",
    "discord" : "Coolkid#4154",
    "twitter" : "https://twitter.com/7coolkid7",
    "twitch" : "https://www.twitch.tv/7coolkid7"
}

{
    "firstname" : "Rémi",
    "age" : 31,
    "logotype" : "logoK.jpg",
    "position" : "Responsable Marketing",
    "discord" : "Koulouff#9420",
    "twitter" : "https://twitter.com/Hkoulouff",
    "twitch" : "https://www.twitch.tv/koulouff"
}