
CREATE OR ALTER PROCEDURE silver.cleanup_item_group
AS
BEGIN
       TRUNCATE TABLE silver.dim_item_group
END
