import { Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { PrismaClient } from '@prisma/client';
import { successCode } from 'src/configs/response';

@Injectable()
export class UsersService {
  constructor(private configService: ConfigService) {}
  prisma = new PrismaClient();
  async getData(res: Response, take: number, skip: number) {
    const data = await this.prisma.users.findMany({
      include: {
        estimatedConversion: {
          select: {
            low: true,
            medium: true,
            high: true,
          },
        },
      },
      take: take,
      skip: skip,
    });
    const total = await this.prisma.users.count();
    const list = { data: data, total };
    return successCode(res, list, 'get data success', 200);
  }

  async getDataByMore(
    res: Response,
    value: number,
    take: number,
    skip: number,
  ) {
    const data = await this.prisma.users.findMany({
      where: { spend: { gte: value } },
      include: {
        estimatedConversion: {
          select: {
            low: true,
            medium: true,
            high: true,
          },
        },
      },
      take: take,
      skip: skip,
    });
    const total = await this.prisma.users.count({
      where: { spend: { gte: value } },
    });
    const list = { data: data, total };
    return successCode(res, list, 'get data success', 200);
  }
  async getDataByLess(
    res: Response,
    value: number,
    take: number,
    skip: number,
  ) {
    const data = await this.prisma.users.findMany({
      where: { spend: { lte: value } },
      include: {
        estimatedConversion: {
          select: {
            low: true,
            medium: true,
            high: true,
          },
        },
      },
      take: take,
      skip: skip,
    });
    const total = await this.prisma.users.count({
      where: { spend: { lte: value } },
    });
    const list = { data: data, total };
    return successCode(res, list, 'get data success', 200);
  }
  async getDataByExactly(
    res: Response,
    value: number,
    take: number,
    skip: number,
  ) {
    const data = await this.prisma.users.findMany({
      where: { spend: value },
      include: {
        estimatedConversion: {
          select: {
            low: true,
            medium: true,
            high: true,
          },
        },
      },
      take: take,
      skip: skip,
    });
    const total = await this.prisma.users.count({
      where: { spend: value },
    });
    const list = { data: data, total };
    return successCode(res, list, 'get data success', 200);
  }
}
