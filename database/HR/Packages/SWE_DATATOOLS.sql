CREATE OR REPLACE package hr.swe_datatools
as
  -- create a list of integers starting with 1
  FUNCTION generate_series (nr_of_rows IN PLS_INTEGER) RETURN sys.ODCINUMBERLIST PIPELINED;
  -- create a list of integers in a specified range
  FUNCTION generate_series (nr_from IN PLS_INTEGER, nr_to IN PLS_INTEGER) RETURN sys.ODCINUMBERLIST PIPELINED;
  -- create a list of (ascii)characters in a specified range
  FUNCTION generate_series (letter_from IN varchar2, letter_to IN varchar2) RETURN sys.ODCIVARCHAR2LIST PIPELINED;
end swe_datatools;
/