DROP TABLE IF EXISTS silver.dim_item_group
CREATE TABLE silver.dim_item_group(
itemgroup INT PRIMARY KEY NOT NULL,
section INT NOT NULL,
arabic_name NVARCHAR(50) NOT NULL,
latin_name NVARCHAR(50) NOT NULL
)
