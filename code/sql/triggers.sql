--CREATE LANGUAGE plpgsql;
/*
CREATE OR REPLACE FUNCTION insert_pilot() 
    RETURNS "trigger" AS 
    $BODY$
    DECLARE max_record integer;
    BEGIN
	IF NOT EXISTS(SELECT 0 FROM pg_class WHERE relname = '<pilot_sequence>')
	THEN 
        -- Find the max value ID in the current Pilot table
        SELECT MAX(P.id) into max_record FROM Pilot P;
        -- Create a sequence starting at this value
        EXECUTE 'CREATE SEQUENCE pilot_sequence START WITH' || max_record ||;
        NEW.id := nextval('pilot_sequence');
        return NEW;
    ELSE
        NEW.id := nextval('pilot_sequence');
        return NEW;
	END IF;
    END;
    $BODY$
    LANGUAGE plpgsql VOLATILE;

CREATE TRIGGER on_pilot_insert BEFORE INSERT
ON Pilot FOR EACH ROW
EXECUTE PROCEDURE insert_pilot()
*/

DROP TRIGGER IF EXISTS on_pilot_insert ON Pilot;
DROP FUNCTION IF EXISTS insert_pilot();
