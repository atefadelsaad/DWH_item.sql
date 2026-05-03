DROP TABLE IF EXISTS gold.dim_item_class
CREATE TABLE gold.dim_item_class(
class INT PRIMARY KEY NOT NULL,
arabic_name NVARCHAR(50) NOT NULL,
latin_name NVARCHAR(50) NOT NULL,
last_update DATETIME DEFAULT GETDATE()
)
