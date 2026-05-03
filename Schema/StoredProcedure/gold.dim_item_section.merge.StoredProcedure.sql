CREATE OR ALTER PROCEDURE gold.load_dim_item_section
AS
BEGIN
      MERGE [gold].[dim_item_section] AS target
	  USING [silver].[dim_item_section] AS source
	      ON target.section = source.section
      WHEN MATCHED AND (
	         target.itemclass <> source.itemclass
          OR target.a_name <> source.a_name
		  OR target.l_name <> source.l_name
	  ) 
	 THEN UPDATE SET
	         target.itemclass = source.itemclass,
		     target.a_name = source.a_name,
		     target.l_name = source.l_name,
		     target.last_update = GETDATE()
     WHEN NOT MATCHED BY target
	 THEN   
	         INSERT(section,itemclass,a_name,l_name,last_update)
			 VALUES(source.section,source.itemclass,source.a_name,source.l_name,GETDATE());
END