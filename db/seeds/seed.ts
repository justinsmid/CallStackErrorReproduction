import { seedPackages } from "db/seeds/packages"
import { seedUsers } from "db/seeds/users"
import { seedCompanyProducts } from "./companyProducts"

async function seedDatabase() {
  try {
    await seedCompanyProducts()
    await seedUsers()
    await seedPackages()
  } catch (e) {
    console.log("Error while seeding database...", e)
    process.exit(1)
  }
}

seedDatabase()
