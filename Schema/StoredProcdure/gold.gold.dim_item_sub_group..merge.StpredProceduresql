CREATE OR ALTER PROCEDURE gold.load_dim_item_sub_group
AS
BEGIN
      MERGE gold.dim_item_sub_group AS target
	  USING silver.dim_item_sub_group AS source
            ON target.Department = source.Department
      WHEN MATCHED AND(
	        target.Itemgroup <> source.Itemgroup
         OR target.A_name <> source.A_name
		 OR target.L_name <> source.L_name
	  )
	  THEN UPDATE SET
	     	target.Itemgroup = source.Itemgroup,
            target.A_name = source.A_name,
		    target.L_name = source.L_name,
			target.Last_update = GETDATE()
      WHEN NOT MATCHED BY target
	  THEN
	  INSERT(Department,Itemgroup,A_name,L_name,Last_update)
	  VALUES(source.Department,source.Itemgroup,source.A_name,source.L_name,GETDATE())
	  WHEN NOT MATCHED BY source
	  THEN DELETE;
END