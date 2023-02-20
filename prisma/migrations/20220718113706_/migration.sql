/*
  Warnings:

  - You are about to drop the column `PartId` on the `evenements` table. All the data in the column will be lost.
  - Added the required column `EvenementID` to the `Participants` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `evenements` DROP FOREIGN KEY `Evenements_PartId_fkey`;

-- AlterTable
ALTER TABLE `evenements` DROP COLUMN `PartId`;

-- AlterTable
ALTER TABLE `participants` ADD COLUMN `EvenementID` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Participants` ADD CONSTRAINT `Participants_EvenementID_fkey` FOREIGN KEY (`EvenementID`) REFERENCES `Evenements`(`IdEv`) ON DELETE RESTRICT ON UPDATE CASCADE;
