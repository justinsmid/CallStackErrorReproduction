import db from "db"
import { Prisma } from "@prisma/client"
import { faker } from "@faker-js/faker"

export async function seedUsers() {
  for (let i = 0; i < 30; i++) {
    await db.user.create({
      data: generateUser(),
    })
  }
}

function generateUser(): Prisma.UserUncheckedCreateInput {
  return {
    name: faker.name.findName(),
    email: faker.internet.email(),
    hashedPassword: faker.internet.password(),
    role: "USER",
    companyProductId: faker.datatype.number({
      min: 1,
      max: 30,
    }),
  }
}
