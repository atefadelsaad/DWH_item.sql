CREATE OR ALTER PROCEDURE silver.clenup_sub_group
AS
BEGIN
  TRUNCATE TABLE silver.dim_item_sub_group
END