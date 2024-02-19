PROGRAM MergeSort(INPUT, OUTPUT);
VAR
  F2, F3: TEXT;
PROCEDURE Split(VAR F1, F2, F3: Text);
VAR 
  Ch, Switch: CHAR;
  PROCEDURE Copy(VAR F: TEXT);
  VAR
    Ch: CHAR;
  BEGIN {Copy}
    WHILE NOT EOLN(F)
    DO
      BEGIN
        READ(F, Ch);
        WRITE(OUTPUT, Ch)
      END;
    WRITELN(OUTPUT)  
  END; {Copy}
BEGIN {Split}
  RESET(F1);
  REWRITE(F2);
  REWRITE(F3);
  Switch := '2';
  WHILE NOT EOLN(F1)
  DO
    BEGIN
      READ(F1, Ch);
      IF Switch = '2'
      THEN
        BEGIN
          WRITE(F2, Ch);
          Switch := '3'
        END
      ELSE
        BEGIN
          WRITE(F3, Ch);
          Switch := '2'
        END  
    END;
  WRITELN(F2);
  WRITELN(F3);
  RESET(F2);
  RESET(F3);
  Copy(F2);
  Copy(F3)  
END; {Split}

BEGIN {MergeSort}
  Split(INPUT, F2, F3);
END. {MergeSort}  
      
