DROP TABLE IF EXISTS silver.dim_item_class
CREATE TABLE silver.dim_item_class(
class INT PRIMARY KEY NOT NULL,
arabic_name NVARCHAR(50) NOT NULL,
latin_name NVARCHAR(50) NOT NULL
)