
-- ============================================
-- Step 1: Create Tables
-- ============================================
CREATE TABLE Regions (
    region_id INTEGER PRIMARY KEY,
    region_name TEXT NOT NULL
);

CREATE TABLE Stores (
    store_id INTEGER PRIMARY KEY,
    store_name TEXT NOT NULL,
    region_id INTEGER,
    FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);

CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    price REAL NOT NULL
);

CREATE TABLE Sales (
    sale_id INTEGER PRIMARY KEY,
    store_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    sale_date TEXT,
    FOREIGN KEY (store_id) REFERENCES Stores(store_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- ============================================
-- Step 2: Populate Tables with Sample Data (15+ records each)
-- ============================================
INSERT INTO Regions VALUES
(1, 'North'), (2, 'South'), (3, 'East'), (4, 'West');

INSERT INTO Stores VALUES
(101, 'Indore Central', 1),
(102, 'Bhopal MegaMart', 1),
(103, 'Mumbai Fashion', 4),
(104, 'Chennai ValueStore', 2),
(105, 'Kolkata Trendz', 3);

INSERT INTO Products VALUES
(201, 'Jeans', 'Apparel', 1200),
(202, 'T-Shirt', 'Apparel', 600),
(203, 'Smartphone', 'Electronics', 15000),
(204, 'Earphones', 'Electronics', 1500),
(205, 'Backpack', 'Accessories', 800),
(206, 'Sunglasses', 'Accessories', 1000),
(207, 'Shoes', 'Apparel', 2500),
(208, 'Laptop', 'Electronics', 55000),
(209, 'Watch', 'Accessories', 4000),
(210, 'Formal Shirt', 'Apparel', 900);

INSERT INTO Sales VALUES
(301, 101, 201, 2, '2024-01-15'),
(302, 101, 203, 1, '2024-01-20'),
(303, 102, 202, 3, '2024-01-25'),
(304, 103, 204, 2, '2024-02-01'),
(305, 104, 205, 5, '2024-02-10'),
(306, 104, 203, 2, '2024-02-18'),
(307, 105, 206, 3, '2024-03-01'),
(308, 105, 202, 1, '2024-03-05'),
(309, 103, 208, 1, '2024-03-10'),
(310, 102, 207, 1, '2024-03-15'),
(311, 101, 209, 1, '2024-03-18'),
(312, 104, 201, 2, '2024-03-20'),
(313, 105, 210, 3, '2024-03-22'),
(314, 101, 203, 1, '2024-03-25'),
(315, 102, 208, 1, '2024-03-28');
