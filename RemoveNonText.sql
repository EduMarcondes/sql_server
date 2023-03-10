//comando para remover numeros de uma string

create FUNCTION dbo.RemoveNonText (@field_value VARCHAR(100))
RETURNS VARCHAR(100)
AS
BEGIN
  DECLARE @result VARCHAR(100) = @field_value;

  WHILE PATINDEX('%[^A-Z,^a-z]%', @result) > 0
  BEGIN
    SET @result = STUFF(@result, PATINDEX('%[^A-Z,^a-z]%', @result), 1, '');
  END;

  RETURN @result;
END;
