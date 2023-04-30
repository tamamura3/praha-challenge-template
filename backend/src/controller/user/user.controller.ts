import { Controller, Get, Logger } from "@nestjs/common"
import { getAllUserResponse } from "./response/get-user-response"
import { PrismaClient } from "@prisma/client"
import { UserQS } from "src/infra/db/query-service/user/user-qs"
import { GetUserUseCase } from "src/app/user/get-all-user-usecase"
import { ApiResponse } from "@nestjs/swagger"

@Controller({
  path: '/user',
})
export class UserController {
  // memo: @ApiResponseを定義しておかないとSwaggerに出力されない
  @Get()
  @ApiResponse({ status: 200, type: getAllUserResponse})
  async getSomeData(): Promise< getAllUserResponse> {
    Logger.debug("controller");
    const prisma = new PrismaClient()
    const qs = new UserQS(prisma)
    const usecase = new GetUserUseCase(qs)
    const result = await usecase.do()
    const response = new getAllUserResponse({ usersDTO: result })
    return response
  }
}
