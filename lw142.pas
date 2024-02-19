PROGRAM Copy(INPUT, OUTPUT);
PROCEDURE RCopy(VAR InFile: TEXT);
VAR
  Ch: CHAR;
BEGIN {RCopy}
  IF NOT EOLN(InFile)
  THEN
    BEGIN
      READ(InFile, Ch);;
      WRITE(OUTPUT, Ch);
      RCopy(InFile)
    END;  
END; {RCopy}  

BEGIN {Copy}
  RCopy(INPUT);
  WRITELN(OUTPUT)
END. {Copy}
