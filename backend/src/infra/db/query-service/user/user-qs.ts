import { PrismaClient } from "@prisma/client"
import { IUserQS, UserDTO } from "src/app/user/query-service-interface/user-qs-dto"


export class UserQS implements IUserQS{
  private prismaClient: PrismaClient
  public constructor(prismaClient: PrismaClient) {
    this.prismaClient = prismaClient
  }

  public async getAll(): Promise<UserDTO[]> {
    const allUser = await this.prismaClient.user.findMany()
    return allUser.map(
      (userDM) =>
        new UserDTO({
          ...userDM,
        }),
    )
  }
}
