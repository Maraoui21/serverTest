-- CreateTable
CREATE TABLE `users` (
    `IdUser` INTEGER NOT NULL AUTO_INCREMENT,
    `Nom` VARCHAR(191) NOT NULL,
    `Prenom` VARCHAR(191) NOT NULL,
    `Password` VARCHAR(191) NOT NULL,
    `UserRole` ENUM('admin', 'Author') NOT NULL DEFAULT 'Author',

    PRIMARY KEY (`IdUser`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
