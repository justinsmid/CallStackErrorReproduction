import db from "db"
import { Prisma } from "@prisma/client"
import { faker } from "@faker-js/faker"

export async function seedPackages() {
  for (let i = 0; i < 30; i++) {
    await db.package.create({
      data: generatePackage(),
    })
  }
}

function generatePackage(): Prisma.PackageUncheckedCreateInput {
  return {
    code: faker.random.alphaNumeric(10),
    companyProductId: faker.datatype.number({
      min: 1,
      max: 30,
    }),
    createdById: faker.datatype.number({
      min: 1,
      max: 30,
    }),
    editedById: faker.datatype.number({
      min: 1,
      max: 30,
    }),
  }
}
