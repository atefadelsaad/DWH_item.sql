CREATE OR ALTER PROCEDURE gold.cleanup_item_class
AS
BEGIN
      TRUNCATE TABLE silver.dim_item_class
END