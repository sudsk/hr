CREATE OR REPLACE FORCE VIEW hr.vw_regions (region_id,region_name) AS
select "REGION_ID","REGION_NAME" from regions
union all
select "REGION_ID","REGION_NAME" from regions2;