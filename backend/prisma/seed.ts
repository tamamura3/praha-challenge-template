import 'ts-node/register';
import { PrismaClient } from '@prisma/client'

// npx ts-node seed.ts で実行する
// node seed.ts だとimportで失敗する SyntaxError: Cannot use import statement outside a module
// tsco

const prisma = new PrismaClient()

async function main() {

  try {

    await prisma.user.deleteMany();

    await prisma.user.createMany({
      data: [
        {id: '1', name: '田中 太郎', mail: 'taro@example.com', accountStatusId: 'test' },
        {id: '2', name: '鈴木 花子', mail: 'hanahana@example.com', accountStatusId: 'test' },
      ],
    });
    console.log('Initial data seeded successfully!');
  } catch (error) {
    console.error('Error seeding initial data:', error);
  } finally {
    await prisma.$disconnect();
  }

}

main();