CREATE OR REPLACE package body hr.swe_datatools
as
  FUNCTION generate_series (nr_of_rows IN PLS_INTEGER) RETURN sys.ODCINUMBERLIST PIPELINED IS
  BEGIN
       FOR i IN 1 .. nr_of_rows LOOP
          PIPE ROW (i);
       END LOOP;
       RETURN;
  END generate_series;

  FUNCTION generate_series (nr_from IN PLS_INTEGER, nr_to IN PLS_INTEGER) RETURN sys.ODCINUMBERLIST PIPELINED is
  BEGIN
       FOR i IN nr_from .. nr_to LOOP
          PIPE ROW (i);
       END LOOP;
       RETURN;
  END generate_series;
  FUNCTION generate_series (letter_from IN varchar2, letter_to IN varchar2) RETURN sys.ODCIVARCHAR2LIST PIPELINED is
    letter varchar(1);
  BEGIN
    if letter_from <= letter_to then
       FOR i IN ascii(letter_from) .. ascii(letter_to) LOOP
          PIPE ROW (chr(i));
       END LOOP;
    end if;   
    RETURN;
  END generate_series;
end swe_datatools;
/