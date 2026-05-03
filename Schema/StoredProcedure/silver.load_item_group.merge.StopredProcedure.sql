CREATE OR ALTER PROCEDURE silver.load_item_group
AS
 BEGIN
	INSERT INTO silver.dim_item_group(itemgroup,section,arabic_name,latin_name)
	SELECT 
		itemgroup,
		section,
		ISNULL(a_name,'N/A') AS arabic_name,
		ISNULL(l_name,'N/A') AS latin_name
	FROM [bronze].[erp_item_group] ORDER BY itemgroup ASC
END