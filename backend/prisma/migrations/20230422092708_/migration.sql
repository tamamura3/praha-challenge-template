-- CreateTable
CREATE TABLE "Member" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Member_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "accountStatusId" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AccountStatus" (
    "id" TEXT NOT NULL,
    "status" TEXT NOT NULL,

    CONSTRAINT "AccountStatus_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Task" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "instraction" TEXT NOT NULL,

    CONSTRAINT "Task_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TaskStatus" (
    "taskId" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "statusId" TEXT NOT NULL,

    CONSTRAINT "TaskStatus_pkey" PRIMARY KEY ("taskId","userId","statusId")
);

-- CreateTable
CREATE TABLE "Team" (
    "teamId" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Team_pkey" PRIMARY KEY ("teamId")
);

-- CreateTable
CREATE TABLE "UserTeamRelation" (
    "teamId" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "UserTeamRelation_pkey" PRIMARY KEY ("teamId","userId")
);

-- CreateTable
CREATE TABLE "Pair" (
    "pairId" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Pair_pkey" PRIMARY KEY ("pairId")
);

-- CreateTable
CREATE TABLE "UserPairRelation" (
    "pairId" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "UserPairRelation_pkey" PRIMARY KEY ("pairId","userId")
);
