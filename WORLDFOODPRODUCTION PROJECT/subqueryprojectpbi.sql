
--select * from [dbo].[Co2]

--create view vw_country
--as
--select distinct country from [dbo].[Co2]
--where country in
--	(select distinct country from [dbo].[MaizProduction]
--		where country in 
--			(select distinct country from [dbo].[RiceProduction]
--		where country in 
--			(select distinct country from [dbo].[WheatProduction]
--		where country in 
--			(select distinct country from [dbo].[SurfaceTempratureAnomaly]))))

--select * from vw_country
--select * from vw_Year

--create view vw_Year
--as
--select distinct year from [dbo].[Co2]
--where year in
--	(select distinct year from [dbo].[MaizProduction]
--		where year in 
--			(select distinct year from [dbo].[RiceProduction]
--		where year in 
--			(select distinct year from [dbo].[WheatProduction]
--		where year in 
--			(select distinct year from [dbo].[SurfaceTempratureAnomaly]))))

--select * into Year2000 from vw_Year 
--select * into country2000 from vw_country

--select * from [dbo].[MaizProduction]

--select * from [dbo].[Co2]
--where year between 2000 and 2018

--begin tran
--delete from [dbo].[WheatProduction]
--where year between 2000 and 2018
--rollback

--begin tran
--delete from [dbo].[Co2]

--create view vwco2
--as
--(select [iso_code],[country],[year],[co2],[population] from [dbo].[Co2]) 

--select * into CO2_1 from vwco2

--rollback





--group by year
--having year between 2000 and 2018

--select * from [dbo].[country2000]

--select * from [dbo].[Co2] c
--where exists 
--	(select country from country2000 co
--	where c.country=co.country)

--	select * from country2000 co
--where not exists 
--	(select country from [dbo].[Co2] c
--	where c.country=co.country)

--	select * from [dbo].[Co2] c
--where not exists 
--	(select country from country2000 co
--	where c.country=co.country)

--	delete [dbo].[WheatYield]
--	where not in ('[dbo].[country2000]')

--	select count(*) from [dbo].[country2000]
--	where [dbo].[Co2]='country';

--	DELETE FROM org_unit o 
--WHERE o.id NOT IN 
--  (SELECT MIN(ID) AS id 
--   FROM  org_unit 
--   GROUP BY resh_id  
--   ORDER BY resh_id);
----------------------------------------------------------------------------
select * from [dbo].[Co2]
where year between 2000 and 2018





