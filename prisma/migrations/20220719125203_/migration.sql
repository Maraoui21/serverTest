/*
  Warnings:

  - Added the required column `Tel` to the `Participants` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `participants` ADD COLUMN `Tel` VARCHAR(191) NOT NULL;
