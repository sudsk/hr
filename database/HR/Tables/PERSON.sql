CREATE TABLE hr.person (
  "ID" NUMBER(*,0),
  orgid NUMBER(*,0),
  first_name VARCHAR2(50 BYTE),
  last_name VARCHAR2(50 BYTE),
  salary NUMBER(8,2),
  "RESUME" VARCHAR2(1000 BYTE),
  test_col1 NUMBER,
  test_col2 NUMBER
);