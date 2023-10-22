import { Controller, Get, Query, Res } from '@nestjs/common';
import { UsersService } from './users.service';

@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}
  @Get('/get')
  getData(
    @Res() res: Response,
    @Query('take') take: string,
    @Query('skip') skip: string,
  ) {
    return this.usersService.getData(res, +take, +skip);
  }
  @Get('/more')
  getDataByMore(
    @Res() res: Response,
    @Query('value') value: string,
    @Query('take') take: string,
    @Query('skip') skip: string,
  ) {
    return this.usersService.getDataByMore(res, +value, +take, +skip);
  }
  @Get('/less')
  getDataByLess(
    @Res() res: Response,
    @Query('value') value: string,
    @Query('take') take: string,
    @Query('skip') skip: string,
  ) {
    return this.usersService.getDataByLess(res, +value, +take, +skip);
  }
  @Get('/exactly')
  getDataByExactly(
    @Res() res: Response,
    @Query('value') value: string,
    @Query('take') take: string,
    @Query('skip') skip: string,
  ) {
    return this.usersService.getDataByExactly(res, +value, +take, +skip);
  }
}
