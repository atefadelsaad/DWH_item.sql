DROP TABLE IF EXISTS gold.dim_item_group
CREATE TABLE gold.dim_item_group(
itemgroup INT PRIMARY KEY NOT NULL,
section INT NOT NULL,
arabic_name NVARCHAR(50) NOT NULL,
latin_name NVARCHAR(50) NOT NULL,
last_update DATETIME DEFAULT GETDATE()
)