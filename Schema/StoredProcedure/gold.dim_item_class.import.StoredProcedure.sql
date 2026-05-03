CREATE OR ALTER PROCEDURE silver.load_item_class
AS
BEGIN
    INSERT INTO silver.dim_item_class(class,arabic_name,latin_name)
	SELECT
		itemclass,
		TRIM(a_name) AS arabic_name,
		ISNULL(l_name,'N/A') AS latin_name
	FROM [bronze].[erp_sys_itemclass]
END