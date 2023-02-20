/*
  Warnings:

  - A unique constraint covering the columns `[email]` on the table `Participants` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `Participants_email_key` ON `Participants`(`email`);
