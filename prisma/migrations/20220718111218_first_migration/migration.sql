-- CreateTable
CREATE TABLE `evenement` (
    `Id` INTEGER NOT NULL AUTO_INCREMENT,
    `Titre` VARCHAR(191) NOT NULL,
    `ImgPath` VARCHAR(191) NOT NULL,
    `Date` DATETIME(3) NOT NULL,
    `Contenu` TEXT NOT NULL,

    PRIMARY KEY (`Id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
