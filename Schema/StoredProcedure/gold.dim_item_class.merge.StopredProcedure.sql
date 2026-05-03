CREATE OR ALTER PROCEDURE gold.load_item_class
AS
BEGIN 
       MERGE gold.dim_item_class AS target
	   USING silver.dim_item_class AS source
	       ON target.class = source.class
       WHEN MATCHED AND(
	          target.arabic_name <> source.arabic_name
           OR target.latin_name <> source.latin_name
	   )
	   THEN UPDATE SET
	          target.arabic_name = source.arabic_name,
              target.latin_name = source.latin_name,
			  target.last_update = GETDATE()
       WHEN NOT MATCHED BY target
	   THEN 
	          INSERT(class,arabic_name,latin_name,last_update)
			  VALUES(source.class,source.arabic_name,source.latin_name,GETDATE());
END