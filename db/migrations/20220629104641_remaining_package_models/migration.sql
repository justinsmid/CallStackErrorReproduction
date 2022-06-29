-- CreateTable
CREATE TABLE "PackageTranslation" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "locale" TEXT NOT NULL,
    "translatable_id" INTEGER NOT NULL,
    CONSTRAINT "PackageTranslation_translatable_id_fkey" FOREIGN KEY ("translatable_id") REFERENCES "Package" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "PackageStep" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "mrb_module_package_step_type_id" INTEGER NOT NULL,
    "mrb_sys_company_product_id" INTEGER NOT NULL,
    "created_by_id" INTEGER NOT NULL,
    "edited_by_id" INTEGER NOT NULL,
    "mrb_module_package_id" INTEGER NOT NULL,
    CONSTRAINT "PackageStep_created_by_id_fkey" FOREIGN KEY ("created_by_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "PackageStep_edited_by_id_fkey" FOREIGN KEY ("edited_by_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "PackageStep_mrb_sys_company_product_id_fkey" FOREIGN KEY ("mrb_sys_company_product_id") REFERENCES "CompanyProduct" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "PackageStep_mrb_module_package_id_fkey" FOREIGN KEY ("mrb_module_package_id") REFERENCES "Package" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "PackageStep_mrb_module_package_step_type_id_fkey" FOREIGN KEY ("mrb_module_package_step_type_id") REFERENCES "PackageStepType" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "PackageStepTranslation" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "locale" TEXT NOT NULL,
    "translatable_id" INTEGER NOT NULL,
    CONSTRAINT "PackageStepTranslation_translatable_id_fkey" FOREIGN KEY ("translatable_id") REFERENCES "PackageStep" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "PackageStepType" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "code" TEXT NOT NULL,
    "mrb_sys_company_product_id" INTEGER NOT NULL,
    "created_by_id" INTEGER NOT NULL,
    "edited_by_id" INTEGER NOT NULL,
    CONSTRAINT "PackageStepType_created_by_id_fkey" FOREIGN KEY ("created_by_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "PackageStepType_edited_by_id_fkey" FOREIGN KEY ("edited_by_id") REFERENCES "User" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "PackageStepType_mrb_sys_company_product_id_fkey" FOREIGN KEY ("mrb_sys_company_product_id") REFERENCES "CompanyProduct" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "PackageStepTypeTranslation" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "translatable_id" INTEGER NOT NULL,
    CONSTRAINT "PackageStepTypeTranslation_translatable_id_fkey" FOREIGN KEY ("translatable_id") REFERENCES "PackageStepType" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
