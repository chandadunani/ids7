SELECT * FROM ids7db.USArrests;

 SET sql_safe_updates=0;
UPDATE ids7db.USArrests
SET Assault = 166.5400
WHERE  state='georgia';
 SELECT MIN(Murder),MAX(Murder),AVG(Murder),VARIANCE(Murder),
  MIN(Assault),MAX(Assault),AVG(Assault),VARIANCE(Assault),
   MIN(Urbanpop),MAX(Urbanpop),AVG(Urbanpop),VARIANCE(Urbanpop) FROM ids7db.USArrests;





select MAX(Murder) from ids7db.USArrests;
select State from ids7db.USArrests where Murder = '17.4';
select State from ids7db.USArrests order by urbanpop;
select * from ids7db.USArrests where state='Arizona';
select count(state) from ids7db.USArrests where murder>8.1;
select state from ids7db.USArrests where murder>8.1;