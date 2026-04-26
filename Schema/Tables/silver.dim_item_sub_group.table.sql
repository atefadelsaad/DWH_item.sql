DROP TABLE IF EXISTS silver.dim_item_sub_group
CREATE TABLE silver.dim_item_sub_group(
  Department SMALLINT PRIMARY KEY NOT NULL,
  Itemgroup SMALLINT NOT NULL,
  A_name NVARCHAR(50) NOT NULL,
  L_name NVARCHAR(50) NOT NULL
) 
