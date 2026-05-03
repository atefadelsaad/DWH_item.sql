
CREATE OR ALTER PROCEDURE silver.load_dim_item_sub_group
AS
BEGIN
INSERT INTO silver.dim_item_sub_group(
    Department,
	Itemgroup,
	A_name,
	L_name
)
SELECT 
	department,
	itemgroup,
	a_name,
	isnull(l_name,'N/A') as l_name
FROM [bronze].[erp_item_sub_group]
END