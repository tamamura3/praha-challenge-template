import { IUserQS } from "./query-service-interface/user-qs-dto"

export class GetUserUseCase {
  private readonly userQS: IUserQS
  public constructor(userQS: IUserQS) {
    this.userQS = userQS
  }
  public async do() {
    try {
      return await this.userQS.getAll()
    } catch (error) {
      // memo: エラー処理
      throw error
    }
  }
}
