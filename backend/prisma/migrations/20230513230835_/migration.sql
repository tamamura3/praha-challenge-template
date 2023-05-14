/*
  Warnings:

  - You are about to drop the column `email` on the `User` table. All the data in the column will be lost.
  - You are about to drop the `AccountStatus` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Member` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Pair` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Task` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TaskStatus` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Team` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserPairRelation` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserTeamRelation` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `mail` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "User" DROP COLUMN "email",
ADD COLUMN     "mail" TEXT NOT NULL;

-- DropTable
DROP TABLE "AccountStatus";

-- DropTable
DROP TABLE "Member";

-- DropTable
DROP TABLE "Pair";

-- DropTable
DROP TABLE "Task";

-- DropTable
DROP TABLE "TaskStatus";

-- DropTable
DROP TABLE "Team";

-- DropTable
DROP TABLE "UserPairRelation";

-- DropTable
DROP TABLE "UserTeamRelation";
