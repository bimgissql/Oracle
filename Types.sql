-- Data types 

-- Integer
declare
  nr1 number(6);
  nr2 number(6) not null := 123;
  nr3 constant number(6) := 123;
  nr4 number default 123;
  nr5 points.nr%TYPE; -- type of nr column type of points table

begin
  nr1 := 123456;
  nr5 := 123456;
end;


-- Real number
declare
  x number(9,3);

begin
  x := 123456000.123;
end;


-- Fixed length text
declare
  text char(10);

begin
  text := 'Qwertyuio';
end;


-- Text up to 32768 characters
declare
  text varchar2(1000);

begin
  text := 'Qwertyuiopasdfghjklzxcvbnm';
end;


-- Text up to 2 GB of text
declare
  text long;

begin
  text := 'Qwertyuiopasdfghjklzxcvbnm';
end;


-- Fixed length binary data
declare
  image raw(1000);
  
begin
  null;
end;


-- Binary data up to 2 GB
declare
  image raw(1000);

begin
  null;
end;

  
-- Date
declare
  creationdate date;

begin
  null;
end;

   
-- Date with defined number of decimal numbers for seconds
declare
  creationdate timestamp(4);

begin
  null;
end;


-- Binary data
declare
  file1 blob;
  file2 clob;
  file3 bfile;

begin
  null;
end;


-- Boolean
declare
  ready boolean;

begin
  ready := true;
end;


-- custom record
declare 
  type point is record(
    nr
    code varchar2(30),
    x,
    y,
    z,
    m
  );

  vertex point;

begin

vertex.nr := 0;
vertex.x := 0.0;
vertex.y := 0.0;
vertex.z := 0.0;
vertex.m := null;

end;

 
-- rowtype
declare 
  vertex points%ROWTYPE;

begin

vertex.nr := 0;
vertex.x := 0.0;
vertex.y := 0.0;
vertex.z := 0.0;
vertex.m := null;

end;
