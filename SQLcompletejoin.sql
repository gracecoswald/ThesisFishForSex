create or replace table temp.ANC_12weeks as(
SELECT
a.*,
b.string_field_1 AS facname,
b.Distance,
b.string_field_4 as district,
b.string_field_7 as region,
FROM
  `twittergeolocation-299516.temp.ANC_12weeks` a LEFT JOIN `temp.finfac` b
ON (a.UID=b.string_field_0));


##replace songwe with mbeya, remove dodoma, change character in dar es salaam

create or replace table temp.ANC_12weekspanellong as(
SELECT UID, facname, Distance, district, region, month, count_
FROM ((
  SELECT UID, facname, Distance, district, region, '_201601' as month,  _201601 as count_ FROM `temp.ANC_12weeks`
) UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201602' as month,  _201602 as count_  FROM `temp.ANC_12weeks`
) UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201603' as month,  _201603 as count_  FROM `temp.ANC_12weeks`
) UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201604' as month,  _201604 as count_  FROM `temp.ANC_12weeks`
) UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201605' as month,  _201605 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201606' as month,  _201606 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201607' as month,  _201607 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201608' as month,  _201608 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201609' as month,  _201609 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201610' as month,  _201610 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201611' as month,  _201611 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201612' as month,  _201612 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201701' as month,  _201701 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201702' as month,  _201702 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201703' as month,  _201703 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201704' as month,  _201704 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201705' as month,  _201705 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201706' as month,  _201706 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201707' as month,  _201707 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201708' as month,  _201708 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201709' as month,  _201709 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201710' as month,  _201710 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201711' as month,  _201711 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201712' as month,  _201712 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201801' as month,  _201801 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201802' as month,  _201802 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201803' as month,  _201803 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201804' as month,  _201804 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201805' as month,  _201805 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201806' as month,  _201806 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201807' as month,  _201807 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201808' as month,  _201808 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201809' as month,  _201809 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201810' as month,  _201810 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201811' as month,  _201811 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201812' as month,  _201812 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201901' as month,  _201901 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201902' as month,  _201902 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201903' as month,  _201903 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201904' as month,  _201904 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201905' as month,  _201905 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201906' as month,  _201906 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201907' as month,  _201907 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201908' as month,  _201908 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201909' as month,  _201909 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201910' as month,  _201910 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201911' as month,  _201911 as count_  FROM `temp.ANC_12weeks`
)UNION ALL (
  SELECT UID, facname, Distance, district, region, '_201912' as month,  _201912 as count_  FROM `temp.ANC_12weeks`
)))
;

## Songwe Region was created on 29 January 2016 from the western half of Mbeya Region. No price data exists for Dodoma



UPDATE `temp.ANC_12weekspanellong` SET region="Mbeya Region" WHERE region= "Songwe Region";
UPDATE `temp.ANC_12weekspanellong` SET region="Dar es Salaam Region" WHERE region= "Dar Es Salaam Region";
DELETE FROM `temp.ANC_12weekspanellong` WHERE region= "Dodoma Region";
DELETE FROM `temp.ANC_12weekspanellong`WHERE Distance IS NULL;

ALTER TABLE temp.ANC_12weekspanellong ADD COLUMN Monthinyear integer;
ALTER TABLE temp.ANC_12weekspanellong ADD COLUMN year integer;

## year and month
UPDATE `temp.ANC_12weekspanellong` SET Monthinyear=1 WHERE month LIKE "_201%01";
UPDATE `temp.ANC_12weekspanellong` SET Monthinyear=2 WHERE month LIKE "_201%02";
UPDATE `temp.ANC_12weekspanellong` SET Monthinyear=3 WHERE month LIKE "_201%03";
UPDATE `temp.ANC_12weekspanellong` SET Monthinyear=4 WHERE month LIKE "_201%04";
UPDATE `temp.ANC_12weekspanellong` SET Monthinyear=5 WHERE month LIKE "_201%05";
UPDATE `temp.ANC_12weekspanellong` SET Monthinyear=6 WHERE month LIKE "_201%06";
UPDATE `temp.ANC_12weekspanellong` SET Monthinyear=7 WHERE month LIKE "_201%07";
UPDATE `temp.ANC_12weekspanellong` SET Monthinyear=8 WHERE month LIKE "_201%08";
UPDATE `temp.ANC_12weekspanellong` SET Monthinyear=9 WHERE month LIKE "_201%09";
UPDATE `temp.ANC_12weekspanellong` SET Monthinyear=10 WHERE month LIKE "_201%10";
UPDATE `temp.ANC_12weekspanellong` SET Monthinyear=11 WHERE month LIKE "_201%11";
UPDATE `temp.ANC_12weekspanellong` SET Monthinyear=12 WHERE month LIKE "_201%12";


UPDATE `temp.ANC_12weekspanellong` SET year=2016 WHERE month LIKE "_2016%";
UPDATE `temp.ANC_12weekspanellong` SET year=2017 WHERE month LIKE "_2017%";
UPDATE `temp.ANC_12weekspanellong` SET year=2018 WHERE month LIKE "_2018%";
UPDATE `temp.ANC_12weekspanellong` SET year=2019 WHERE month LIKE "_2019%";

## REMOVING MISSING VALUES

create or replace table temp.ANC_12weekspanellongRM as(
SELECT
  COUNT(*)
FROM
  `temp.ANC_12weekspanellong` a
LEFT JOIN
  `temp.wuQpanellong`b
ON
  a.uid=b.uid
  AND a.monthinyear=b.monthinyear
  AND a.year=b.year
LEFT JOIN
  `temp.jT2panellong`c
ON
  a.uid=c.uid
  AND a.monthinyear=c.monthinyear
  AND a.year=c.year
LEFT JOIN
  `temp.syphtestpanellong`d
ON
  a.uid=d.uid
  AND a.monthinyear=d.monthinyear
  AND a.year=d.year
LEFT JOIN
  `temp.nYUpanellong`e
ON
  a.uid=e.uid
  AND a.monthinyear=e.monthinyear
  AND a.year=e.year
LEFT JOIN
  `temp.ANCFirstVisitpanellong`f
ON
  a.uid=f.uid
  AND a.monthinyear=f.monthinyear
  AND a.year=f.year
LEFT JOIN
  `temp.ANC_12weekspanellong`g
ON
  a.uid=g.uid
  AND a.monthinyear=g.monthinyear
  AND a.year=g.year
LEFT JOIN
  `temp.NewOPDpanellong`h
ON
  a.uid=h.uid
  AND a.monthinyear=h.monthinyear
  AND a.year=h.year
LEFT JOIN
  `temp.BirthsFacilitypanellong`i
ON
  a.uid=i.uid
  AND a.monthinyear=i.monthinyear
  AND a.year=i.year
WHERE
  (a.count_="NA"
    AND h.count IS NULL
    AND i.count IS NULL
    AND (b.wuQcount="NA"
      OR b.wuQcount IS NULL) AND(c.count_="NA"
      OR c.count_ IS NULL) AND (d.tests="NA" OR d.tests IS NULL)
      AND (e.nYUcount="NA" OR e.nYUcount IS NULL) AND
      (f._count="NA" OR f._count IS NULL) AND (g.count_="NA" OR g.count_ IS NULL)
       AND (g.count_ ="NA" OR g.count_ IS NULL)) 
  OR (a.year=2016 AND a.monthinyear<10));

##join with fish shocks 
create or replace table temp.ANC_12weekscomplete as(
SELECT 
a.*,
b.Month as month1,
b.Year as year1,
b.Market,
b.Commodity,
b.Currency,
b.Price,
b.Unit,
b._2sds AS pos2sds,
b._1_5sds AS pos1_5sds,
b._1sds AS pos1sds,
b._2sds_15 AS neg2sds,
b._1_5sds_16 AS neg1_5sds,
b._1sds_17 AS neg1sds,
b._diff1sd AS posdiff1sd,
b._diff1_5sd AS posdiff1_5sd,
b._diff2sd AS posdiff2sd,
b._diff1sd_21 AS negdiff1sd,
b._diff1_5sd_22 AS negdiff1_5sd,
b._diff2sd_23 AS negdiff2sd,


FROM `twittergeolocation-299516.temp.ANC_12weekspanellongRM` a
LEFT JOIN `twittergeolocation-299516.temp.shocks` b
ON (a.monthinyear = b.month AND a.year=b.Year AND a.region=b.Market));

##join with maize prices

create or replace table temp.ANC_12weekscomplete as(
select 
a.*,
b.Commodity AS com2,
b.unit as unit2,
b.price as maizeprice,
FROM 
`temp.ANC_12weekscomplete`a LEFT JOIN `temp.maizeprices`b
ON (a.Monthinyear=b.Month AND a.year=b.Year AND a.region=b.Market));

DELETE FROM temp.ANC_12weekscomplete where price IS NULL;
