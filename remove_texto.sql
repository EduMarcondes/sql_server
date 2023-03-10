//comando para retonar apeans os numeros de uma string 

CREATE FUNCTION dbo.RemoveNonNumeric (@field_value VARCHAR(50))
RETURNS VARCHAR(50)
AS
BEGIN
  DECLARE @result VARCHAR(50) = @field_value;

  WHILE PATINDEX('%[^0-9]%', @result) > 0
  BEGIN
    SET @result = STUFF(@result, PATINDEX('%[^0-9]%', @result), 1, '');
  END;

  RETURN @result;
END;
