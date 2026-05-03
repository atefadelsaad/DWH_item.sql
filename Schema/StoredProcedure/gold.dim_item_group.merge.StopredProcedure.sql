CREATE OR ALTER PROCEDURE gold.load_item_group
AS
 BEGIN
        MERGE gold.dim_item_group AS target
		USING silver.dim_item_group AS source
		      ON target.itemgroup = source.itemgroup
        WHEN MATCHED AND(
		         target.section <> source.section
              OR target.arabic_name <> source.arabic_name
			  OR target.latin_name <> source.latin_name	
		)
		THEN UPDATE SET 
		   		 target.section = source.section,
                 target.arabic_name = source.arabic_name,
			     target.latin_name = source.latin_name,
				 target.last_update = GETDATE()
        WHEN NOT MATCHED BY target
		THEN 
		     INSERT(itemgroup,section,arabic_name,latin_name,last_update)
			 VALUES(source.itemgroup,source.section,source.arabic_name,source.latin_name,GETDATE());
END