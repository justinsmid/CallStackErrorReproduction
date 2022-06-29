import db from "db"
import { Prisma } from "@prisma/client"

export async function seedCompanyProducts() {
  for (let i = 0; i < 30; i++) {
    await db.companyProduct.create({
      data: generateCompanyProduct(),
    })
  }
}

function generateCompanyProduct(): Prisma.CompanyProductUncheckedCreateInput {
  return {}
}
