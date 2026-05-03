DROP TABLE IF EXISTS gold.dim_item_section
CREATE TABLE gold.dim_item_section(
section INT PRIMARY KEY NOT NULL,
itemclass INT  NOT NULL,
a_name NVARCHAR(50) NOT NULL,
l_name NVARCHAR(50) NOT NULL,
last_update DATETIME NOT NULL
)
