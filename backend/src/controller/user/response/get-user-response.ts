import { ApiProperty } from '@nestjs/swagger'
import { UserDTO } from 'src/app/user/query-service-interface/user-qs-dto'

export class getAllUserResponse{
  @ApiProperty({ type: () => [User] })
  User: User[]

  public constructor(params: { usersDTO: UserDTO[] }) {
    const { usersDTO } = params
    this.User= usersDTO.map(({ id, name, email}) => {
      return new User({
        id,
        name,
        email,
      })
    })
  }
}

class User{
  @ApiProperty()
  id: string

  @ApiProperty()
  name: string

  @ApiProperty()
  email: string

  public constructor(params: {
    id: string
    name: string
    email: string
  }) {
    this.id = params.id
    this.name= params.name
    this.email = params.email
  }
}
