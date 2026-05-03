CREATE OR ALTER PROCEDURE silver.load_item_section
AS
BEGIN
	INSERT INTO silver.dim_item_section(section,itemclass,a_name,l_name)
	SELECT 
		section,
		itemclass,
		a_name,
		isnull(l_name,'N/A') as l_name 
	FROM bronze.erp_item_section
END
EXEC silver.load_item_section
