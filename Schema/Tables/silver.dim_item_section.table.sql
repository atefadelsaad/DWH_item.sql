DROP TABLE IF EXISTS silver.dim_item_section
CREATE TABLE silver.dim_item_section(
section INT PRIMARY KEY NOT NULL,
itemclass INT  NOT NULL,
a_name NVARCHAR(50) NOT NULL,
l_name NVARCHAR(50) NOT NULL
)