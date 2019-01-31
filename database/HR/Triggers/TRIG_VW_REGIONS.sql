CREATE OR REPLACE trigger hr.trig_vw_regions
    instead of insert or update on hr.vw_regions
    for each row
    begin
      IF INSERTING 
      THEN 
         IF :new.region_id > 10 
         THEN
            INSERT INTO REGIONS2 VALUES (:new.region_id, :new.region_name);
         ELSE
            INSERT INTO REGIONS VALUES (:new.region_id, :new.region_name);
         END IF;
      END IF;
    end ;
/