DELIMITER //

CREATE FUNCTION FULLNAME(firstname VARCHAR(250), lastname VARCHAR(250))
  RETURNS VARCHAR(250)
  BEGIN
    DECLARE message VARCHAR(250);
    SET message = "Hola";
    RETURN CONCAT(message, " ", firstname, " ", lastname);
  END; //

SELECT FULLNAME("LUIS", "ISLAS")//

DROP FUNCTION FULLNAME//