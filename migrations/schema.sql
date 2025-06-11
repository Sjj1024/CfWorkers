-- CreateTable
CREATE TABLE "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "name" TEXT
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

DROP TABLE IF EXISTS Customers;

CREATE TABLE IF NOT EXISTS Customers (
    CustomerId INTEGER PRIMARY KEY,
    CompanyName TEXT,
    ContactName TEXT
);

INSERT INTO
    Customers (CustomerID, CompanyName, ContactName)
VALUES
    (1, 'Alfreds Futterkiste', 'Maria Anders'),
    (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo'),
    (4, 'Around the Horn', 'Thomas Hardy'),
    (11, 'Bs Beverages', 'Victoria Ashworth'),
    (13, 'Bs Beverages', 'Random Name');