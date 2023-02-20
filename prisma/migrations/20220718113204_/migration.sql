/*
  Warnings:

  - You are about to drop the `evenement` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `evenement`;

-- CreateTable
CREATE TABLE `Evenements` (
    `IdEv` INTEGER NOT NULL AUTO_INCREMENT,
    `Titre` VARCHAR(191) NOT NULL,
    `ImgPath` VARCHAR(191) NOT NULL,
    `Date` DATETIME(3) NOT NULL,
    `Contenu` TEXT NOT NULL,
    `PartId` INTEGER NOT NULL,

    PRIMARY KEY (`IdEv`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Participants` (
    `IdPart` INTEGER NOT NULL AUTO_INCREMENT,
    `Nom` VARCHAR(191) NOT NULL,
    `Prenom` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`IdPart`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Evenements` ADD CONSTRAINT `Evenements_PartId_fkey` FOREIGN KEY (`PartId`) REFERENCES `Participants`(`IdPart`) ON DELETE RESTRICT ON UPDATE CASCADE;
