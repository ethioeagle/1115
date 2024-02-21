--select * from [dbo].[Co2]


--create view vw_countries
--as
--select distinct country from [dbo].[Co2]
--where country in
--	(select distinct country from [dbo].[MaizeYield]
--		where country in
--			(select distinct country from [dbo].[MaizProduction]
--				where country in 
--					(select distinct country from [dbo].[RiceProduction]
--						where country in 
--(select distinct country from [dbo].[RiceYield]
--	where country in 
--		(select distinct country from [dbo].[WheatProduction]
--			where country in 
--				(select distinct country from [dbo].[WheatYield]
--					where country in 
--					(select distinct country from [dbo].[SurfaceTempratureAnomaly])))))))

--select * from vw_countries
--select * from vw_year

--create view vw_year
--as
--select distinct year from [dbo].[Co2]
--where year in
--	(select distinct year from [dbo].[MaizeYield]
--		where year in
--			(select distinct year from [dbo].[MaizProduction]
--				where year in 
--					(select distinct year from [dbo].[RiceProduction]
--						where year in 
--(select distinct year from [dbo].[RiceYield]
--	where year in 
--		(select distinct year from [dbo].[WheatProduction]
--			where year in 
--				(select distinct year from [dbo].[WheatYield]
--					where year in 
--					(select distinct year from [dbo].[SurfaceTempratureAnomaly])))))))

----select * from vw_countries
----select * from vw_year 

--select * from [dbo].[Co2]

--begin tran
--delete from [dbo].[Co2]
--where country not in (select * from vw_countries)
--commit

--begin tran
--delete from [dbo].[MaizeYield]
--where country not in (select * from vw_countries)
--commit

--begin tran
--delete from [dbo].[MaizProduction]
--where country not in (select * from vw_countries)
--commit

--begin tran
--delete from [dbo].[RiceProduction]
--where country not in (select * from vw_countries)
--commit

--begin tran
--delete from [dbo].[RiceYield]
--where country not in (select * from vw_countries)
--commit

--begin tran
--delete from [dbo].[surfacetempratureAnomaly]
--where country not in (select * from vw_countries)
--commit

--begin tran
--delete from [dbo].[WheatProduction]
--where country not in (select * from vw_countries)
--commit

--begin tran
--delete from [dbo].[WheatYield]
--where country not in (select * from vw_countries)
--commit

--select distinct country from [dbo].[Co2]--113
--select distinct country from [dbo].[MaizeYield]--113
--select distinct country from [dbo].[MaizProduction]--113
--select distinct country from [dbo].[RiceProduction]--113
--select distinct country from [dbo].[RiceYield]--113
--select distinct country from [dbo].[surfacetempratureAnomaly]--113
--select distinct country from [dbo].[WheatProduction]--113
--select distinct country from [dbo].[WheatYield]--113

--set Transaction isolation level read uncommitted

create view vwcountrygroup
as
select country from [dbo].[MaizeYield]
where year between 2000 and 2018
Group by country
Having count(year)<18
union
select country from [dbo].[MaizProduction]
where year between 2000 and 2018
Group by country
Having count(year)<18
union
select country from [dbo].[RiceProduction]
where year between 2000 and 2018
Group by country
Having count(year)<18
union
select country from [dbo].[RiceYield]
where year between 2000 and 2018
Group by country
Having count(year)<18
union
select country from [dbo].[WheatProduction]
where year between 2000 and 2018
Group by country
Having count(year)<18
union
select country from [dbo].[WheatYield]
where year between 2000 and 2018
Group by country
Having count(year)<18
======================================================================
select * from vwcountrygroup
select * from [dbo].[Co2]
select * from [dbo].[MaizeYield]

begin tran
delete from [dbo].[Co2]
where country in (select * from vwcountrygroup)
rollback
commit

begin tran
delete from [dbo].[MaizeYield]
where country in (select * from vwcountrygroup)
rollback
commit

begin tran
delete from [dbo].[MaizProduction]
where country in (select * from vwcountrygroup)
rollback
commit

begin tran
delete from [dbo].[RiceProduction]
where country in (select * from vwcountrygroup)
rollback
commit

begin tran
delete from [dbo].[RiceYield]
where country in (select * from vwcountrygroup)
rollback
commit

begin tran
delete from [dbo].[surfacetempratureAnomaly]
where country in (select * from vwcountrygroup)
rollback
commit

begin tran
delete from [dbo].[WheatProduction]
where country in (select * from vwcountrygroup)
rollback
commit

begin tran
delete from [dbo].[WheatYield]
where country in (select * from vwcountrygroup)
rollback
commit
select *into co2move from vwco2move 
create view vwco2move
as
select [iso_code],[country],[year],[co2],[population] from [dbo].[Co2]

--select * from [dbo].[co2move]
--select * from [dbo].[MaizeYield]
--select * from [dbo].[MaizProduction]
--select * from [dbo].[RiceProduction]
--select * from [dbo].[RiceYield]
--select * from [dbo].[surfacetempratureAnomaly]
--select * from [dbo].[WheatProduction]
--select * from [dbo].[WheatYield]



--set Transaction isolation level read uncommitted


