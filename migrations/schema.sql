-- CreateTable
CREATE TABLE IF NOT EXISTS "User" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "email" TEXT NOT NULL,
    "name" TEXT
);

-- CreateIndex
CREATE UNIQUE INDEX IF NOT EXISTS "User_email_key" ON "User"("email");

-- CreateTable
DROP TABLE IF EXISTS Customers;

CREATE TABLE IF NOT EXISTS Customers (
    CustomerId INTEGER PRIMARY KEY,
    CompanyName TEXT,
    ContactName TEXT,
    Country TEXT DEFAULT 'China'
);
-- Insert some sample data
INSERT INTO
    Customers (CustomerID, CompanyName, ContactName)
VALUES
    (1, 'Alfreds Futterkiste', 'Maria Anders'),
    (2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo'),
    (4, 'Around the Horn', 'Thomas Hardy'),
    (11, 'Bs Beverages', 'Victoria Ashworth'),
    (13, 'Bs Beverages', 'Random Name');