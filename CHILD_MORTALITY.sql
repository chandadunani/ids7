SELECT * FROM ids7db.child_mortality;
select * from ids7db.child_mortality;




select avg(under_five_mortality_rate),avg(infant_mortality_rate),avg(neonatal_mortality_rate) from ids7db.child_mortality;	
set sql_safe_updates=0;


update ids7db.child_mortality set under_five_mortality_rate=61.04 where under_five_mortality_rate=0;
update ids7db.child_mortality set infant_mortality_rate=43.65 where infant_mortality_rate=0;
update ids7db.child_mortality set neonatal_mortality_rate=25.59 where neonatal_mortality_rate=0;
select * from ids7db.child_mortality;
select max(infant_mortality_rate),min(infant_mortality_rate) from ids7db.child_mortality;
select year  from ids7db.child_mortality where infant_mortality_rate=64.8;	-- max
select Year  from ids7db.child_mortality where infant_mortality_rate=30.5;	-- min
select avg(under_five_mortality_rate),avg(infant_mortality_rate),avg(neonatal_mortality_rate) from ids7db.child_mortality;	
select Year  from ids7db.child_mortality where neonatal_mortality_rate>=27.49;	-- avg(neonatal_mortality_rate)
-- Display the sorted infant mortality rates in descending order.
select infant_mortality_rate from ids7db.child_mortality order by infant_mortality_rate desc;
select min(under_five_mortality_rate) as u_min,max(under_five_mortality_rate) as u_max,avg(under_five_mortality_rate) as u_avg,variance(under_five_mortality_rate) as u_var,
min(infant_mortality_rate) as i_min,max(infant_mortality_rate) as i_max,avg(infant_mortality_rate) as i_avg ,variance(infant_mortality_rate) as i_var,
min(neonatal_mortality_rate) as n_min,max(neonatal_mortality_rate) as n_max,avg(neonatal_mortality_rate) as n_avg,variance(neonatal_mortality_rate) as n_var from ids7db.child_mortality;
alter table ids7db.child_mortality add column Above_Five_Mortality_Rate double;
desc ids7db.child_mortality;
update ids7db.child_mortality set Above_Five_Mortality_Rate=under_five_mortality_rate+5;
select * from ids7db.child_mortality;