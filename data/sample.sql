use world;
select * from covid_19;
alter table covid_19 modify column ObservationDate date;
select * from covid_19;

select * from covid_19 where ObservationDate = "2020-3-22" order by Confirmed desc;

select * from covid_19 where Country = "Mainland China" and ObservationDate < "2020-2-6" and Province = "Hubei";
select * from covid_19 where Country = "Mainland China" and ObservationDate >="2020-2-6" and Province = "Hubei";

alter table covid_19 modify column ObservationDate datetime;

select Country, sum(Confirmed) from covid_19 where ObservationDate = "3/22/2020" and Country = "Mainland China";
select Country,sum(Confirmed),ObservationDate  from covid_19 group by ObservationDate;