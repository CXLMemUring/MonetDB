START TRANSACTION;
CREATE TABLE "sys"."t0" ("c0" INTERVAL MONTH NOT NULL);
COPY 3 RECORDS INTO "sys"."t0" FROM stdin USING DELIMITERS E'\t',E'\n','"';
150184010
332127116
2136089006

-- this query has to run twice to trigger the assertion error
SELECT SUM(ALL 0.12830007105673624234754015560611151158) FROM t0 WHERE ((sql_min(t0.c0, t0.c0))<>(COALESCE (t0.c0, sql_min(abs(t0.c0), nullif(t0.c0, t0.c0))))) GROUP BY 0.1 
HAVING MIN(ALL ((r'946496923')LIKE(CAST(nullif(0.5, 0.03) AS STRING(538))))) 
UNION ALL SELECT SUM(ALL 0.12830007105673624234754015560611151158) FROM t0 WHERE ((sql_min(t0.c0, t0.c0))<>(COALESCE (t0.c0, sql_min(abs(t0.c0), nullif(t0.c0, t0.c0))))) GROUP BY 0.1 
HAVING NOT (MIN(ALL ((r'946496923')LIKE(CAST(nullif(0.5, 0.03) AS STRING(538)))))) 
UNION ALL SELECT ALL SUM(ALL 0.12830007105673624234754015560611151158) FROM t0 WHERE ((sql_min(t0.c0, t0.c0))<>(COALESCE (t0.c0, sql_min(abs(t0.c0), nullif(t0.c0, t0.c0))))) GROUP BY 0.1 
HAVING (MIN(ALL ((r'946496923')LIKE(CAST(nullif(0.5, 0.03) AS STRING(538)))))) IS NULL;

SELECT SUM(ALL 0.12830007105673624234754015560611151158) FROM t0 WHERE ((sql_min(t0.c0, t0.c0))<>(COALESCE (t0.c0, sql_min(abs(t0.c0), nullif(t0.c0, t0.c0))))) GROUP BY 0.1 
HAVING MIN(ALL ((r'946496923')LIKE(CAST(nullif(0.5, 0.03) AS STRING(538))))) 
UNION ALL SELECT SUM(ALL 0.12830007105673624234754015560611151158) FROM t0 WHERE ((sql_min(t0.c0, t0.c0))<>(COALESCE (t0.c0, sql_min(abs(t0.c0), nullif(t0.c0, t0.c0))))) GROUP BY 0.1 
HAVING NOT (MIN(ALL ((r'946496923')LIKE(CAST(nullif(0.5, 0.03) AS STRING(538)))))) 
UNION ALL SELECT ALL SUM(ALL 0.12830007105673624234754015560611151158) FROM t0 WHERE ((sql_min(t0.c0, t0.c0))<>(COALESCE (t0.c0, sql_min(abs(t0.c0), nullif(t0.c0, t0.c0))))) GROUP BY 0.1 
HAVING (MIN(ALL ((r'946496923')LIKE(CAST(nullif(0.5, 0.03) AS STRING(538)))))) IS NULL;
ROLLBACK;

SELECT covar_samp(1, - (COALESCE(1, 2)||5)); --error on default, covar_samp between integer and string not possible

START TRANSACTION;
CREATE TABLE "sys"."t0"("c0" DATE, "c1" DATE, "c2" INTERVAL SECOND NOT NULL,"c3" TIME NOT NULL);

select case covar_samp(all - (coalesce (cast(-5 as int), coalesce (((cast(0.4 as int))-(coalesce (5, 5))), + 
(case -3 when 0.5 then 5 else 3 end)))), - (- (((coalesce (cast(0.2 as int), 
coalesce (5, 3, -747176383), ((6)%(3)), ((-2)<<(3))))||(-5))))) when case t0.c0 when 
case coalesce (coalesce (0.2, 0.3, 0.7), 0.5, 
cast(t0.c2 as decimal)) when cast(interval '-4' month as interval second) then cast(case 0.3 when t0.c1 then 0.6 
when interval '-3' month then 0.3 end as interval second) end then coalesce (abs(0.6), 
cast(lower(r'') as decimal), 0.4) end then abs(0.5) when abs(-1.4) 
then coalesce (sql_min(case t0.c0 when t0.c1 then 0.5 else 0.4 end, 
case 0.5 when t0.c2 then 0.6 when 0.5 then 0.2 else 0.7 end), abs(coalesce (0.3, 0.5, 0.3))) 
else coalesce (case coalesce (dayofmonth(timestamp '1970-01-15 10:08:18'), coalesce (-5, 3, 5)) when coalesce (cast(timestamp '1970-01-18 00:15:34' as double), 
cast(t0.c3 as double)) then case least(t0.c1, t0.c1) when case t0.c2 when interval '5' month then r'*pf6/+}öq壚,j2\302\205K]sNKk,_%Tu' when 1016331084 then r'0.4'
else r'*' end then 0.8 end when sql_min(t0.c3, t0.c3) then coalesce (cast(t0.c2 as decimal), "second"(t0.c3), cast(t0.c2 as decimal),
0.9) when coalesce (cast(t0.c1 as double), 0.2) then 0.0 else 0.0 end, 0.2) end from t0 where (interval '6' month)
is not null group by cast(dayofmonth(t0.c0) as string(679)), 0.2; --error, on Jun2020 t0.c0 is not aggregated, on default
ROLLBACK;

START TRANSACTION;
CREATE TABLE "sys"."t0" ("c0" INTERVAL SECOND NOT NULL);
SELECT CASE '5'^3 WHEN COUNT(TRUE) THEN 1 END FROM t0 GROUP BY 2 IN ((CAST(INTERVAL '-2' SECOND AS INT))%2); --error on default: types sec_interval(13,0) and int(32,0) are not equal
ROLLBACK;

START TRANSACTION;
CREATE TABLE "sys"."t0" ("c0" CHARACTER LARGE OBJECT NOT NULL,"c1" BIGINT NOT NULL,CONSTRAINT "t0_c1_pkey" PRIMARY KEY ("c1"));
CREATE TABLE "sys"."t1" ("c0" CHARACTER LARGE OBJECT,"c1" BIGINT);
COPY 3 RECORDS INTO "sys"."t1" FROM stdin USING DELIMITERS E'\t',E'\n','"';
"-216073164"	NULL
"-2044926527"	NULL
NULL	1

SELECT 1 FROM t1 LEFT OUTER JOIN t0 ON TRUE 
LEFT OUTER JOIN (SELECT 1 FROM t0) AS sub0 ON TRUE 
WHERE (TIME '00:25:07') IN (TIME '07:29:34', CASE 2 WHEN 2 THEN TIME '17:23:46' ELSE TIME '05:14:30' END);
	-- empty

SELECT 1 FROM t1 LEFT OUTER JOIN t0 ON TRUE 
LEFT OUTER JOIN (SELECT 1 FROM t0) AS sub0 ON TRUE 
WHERE t0.c0 <= t0.c0 AND (TIME '00:25:07') IN (TIME '07:29:34', CASE 2 WHEN 2 THEN TIME '17:23:46' ELSE TIME '05:14:30' END);
	-- empty

SELECT ALL COUNT(TIME '06:32:50') FROM t1 LEFT OUTER JOIN t0 ON TRUE 
LEFT OUTER JOIN (SELECT t1.c1, t0.c1, 0.43 FROM t0, t1) AS sub0 ON TRUE 
WHERE ((NOT ((TIME '00:25:07') IN (TIME '07:29:34', TIME '05:21:58', CASE 0.54 WHEN 0.65 THEN TIME '17:23:46' ELSE TIME '05:14:30' END)))) 
GROUP BY TIMESTAMP '1969-12-08 01:47:58';
ROLLBACK;

CREATE TABLE t0(c0 TIME, UNIQUE(c0));
CREATE TABLE t1(c0 CHAR(222), FOREIGN KEY (c0) REFERENCES t0(c0) MATCH FULL, PRIMARY KEY(c0)); --error, foreign key from char to time not allowed
CREATE TABLE t1(c0 int, FOREIGN KEY (c0) REFERENCES t0(c0) MATCH FULL, PRIMARY KEY(c0)); --error, foreign key from int to time not allowed
DROP TABLE t0;

CREATE TABLE t0(c0 INTERVAL SECOND, UNIQUE(c0));
CREATE TABLE t1(c2 BLOB, FOREIGN KEY (c2) REFERENCES t0(c0) MATCH FULL, PRIMARY KEY(c2)); --error, foreign key from blob to interval second not allowed
CREATE TABLE t1(c2 TIME, FOREIGN KEY (c2) REFERENCES t0(c0) MATCH FULL, PRIMARY KEY(c2)); --error, foreign key from time to interval second not allowed
DROP TABLE t0;

START TRANSACTION;
CREATE TABLE "sys"."t0" ("c0" DOUBLE NOT NULL,CONSTRAINT "t0_c0_pkey" PRIMARY KEY ("c0"));
CREATE TABLE "sys"."t1" ("c0" DOUBLE);
create view v1(c0, c1) as (select distinct (((t0.c0)=(((1357695262)^(-922564194))))) = false, cast(coalesce(coalesce(0.3, 0.4), "second"(timestamp '1970-01-10 11:54:13')) as double) from t0);
create view v2(c0) as (select distinct coalesce(abs(interval '-1976292283' month), cast(greatest(r'Dnwxjm4btQ9cp&\c''a_', r'(y7,{q?][NHU,') as interval month)) from t1, t0 where ((upper(r''))not ilike(lower(r'''wAg_ z ''PPxXßgrd⍮G'))));
select all v2.c0 from v2 right outer join v1 on ((r'8*By1q)*Oc<n')like(substr(r'', 1151312829, 406714197))) 
where (case v1.c0 when v1.c0 then interval '104279220' second end) in (interval '2129103763' second) group by timestamp '1970-01-21 14:05:46';
ROLLBACK;

START TRANSACTION;
CREATE TABLE "sys"."t0" ("c0" DOUBLE NOT NULL DEFAULT 0.7383512, "c1" VARCHAR(277),CONSTRAINT "t0_c0_pkey" PRIMARY KEY ("c0"),CONSTRAINT "t0_c0_unique" UNIQUE ("c0"),CONSTRAINT "t0_c1_unique" UNIQUE ("c1"));
COPY 7 RECORDS INTO "sys"."t0" FROM stdin USING DELIMITERS E'\t',E'\n','"';
0.1982342084128137	""
0.0705861623402474	NULL
0.7383512	"0.7547346625402616"
0.1405589229429235	NULL
0.7259117208346431	NULL
0.9832712376311843	NULL
0.03311829699079161	"'X狆l[%Lt]ulp!9nR)"

CREATE TABLE "sys"."t1" ("c0" DOUBLE,"c1" VARCHAR(277));
COPY 11 RECORDS INTO "sys"."t1" FROM stdin USING DELIMITERS E'\t',E'\n','"';
1839750227	""
0.4660818799383487	"l*+>⡪kF*bRp薓ßtP| P!-?54JIT"
0.98293459381004	"X웨e_灰u8y"
NULL	"2B_"
NULL	"9"
NULL	""
NULL	""
0.18404121429597398	NULL
0.6820837154477003	"8C7_7\015\015(wntWql j\n9"
NULL	"]"
NULL	"0.48396026646393187"

SELECT CAST(SUM(ALL 0.14) AS DECIMAL(10,2)) FROM sys.t0 JOIN sys.t1 ON CAST(CASE t0.c1 WHEN t1.c1 THEN NOT (FALSE) WHEN t1.c1 THEN (t0.c0) NOT  BETWEEN ASYMMETRIC (t1.c0) AND (t0.c0) WHEN t0.c1 
THEN (0.2) IN (0.3) END AS BOOLEAN) GROUP BY NOT (FALSE), COALESCE(((COALESCE(2, 4, 1))<<(COALESCE(5, -6))), ((COALESCE('-8', -4, 6))|(COALESCE(-2, 3, 4, 5, -6))));
SELECT PROD(ALL 0.14) FROM t0 JOIN t1 ON CAST(CASE t0.c1 WHEN t1.c1 THEN NOT (FALSE) WHEN t1.c1 THEN (t0.c0) NOT  BETWEEN ASYMMETRIC (t1.c0) AND (t0.c0) WHEN t0.c1 
THEN (0.2) IN (0.3) END AS BOOLEAN) GROUP BY NOT (FALSE), COALESCE(((COALESCE(2, 4, 1))<<(COALESCE(5, -6))), ((COALESCE(r'-8', -4, 6))|(COALESCE(-2, 3, 4, 5, -6))));
ROLLBACK;

START TRANSACTION;
CREATE TABLE "sys"."t0" ("c0" DATE,"c1" DOUBLE NOT NULL,"c2" DATE NOT NULL);
select 1 from t0 natural join (select 4 from t0) as sub0; --error, no columns of tables 't0' and 'sub0' match
ROLLBACK;

START TRANSACTION;
CREATE TABLE t0(c0 DATE);
CREATE TABLE t1(c0 DATE NOT NULL);
select t1.c0 from t0 natural join t1; --t1.c0 must be found
ROLLBACK;

START TRANSACTION;
CREATE TABLE t0(c0 DOUBLE PRIMARY KEY NULL); 
CREATE TABLE "sys"."t1" ("c0" DOUBLE,CONSTRAINT "t1_c0_unique" UNIQUE ("c0"));
COPY 9 RECORDS INTO "sys"."t1" FROM stdin USING DELIMITERS E'\t',E'\n','"';
0.21248182395969406
0.6307796692265083
2059310235
-6.5457821e+08
0.743704157497456
0.4001718453135127
0.3935743494971655
0.5299192301063729
0.7609386265982908

SELECT CASE WHEN DATE '1970-01-04' IS NULL THEN CAST(CASE t1.c0 WHEN t1.c0 THEN TIME '11:33:56' END AS VARCHAR(524)) ELSE '0.6' END FROM t1;

SELECT ALL MAX(ALL CASE WHEN (DATE '1970-01-04') IS NULL THEN CAST(CASE t1.c0 WHEN t1.c0 THEN TIME '11:33:56' END AS VARCHAR(524)) ELSE sql_max(r'iDfwsFjp藖1J洅ៅR-?0OT^.', r'0.6') END) FROM t1 
JOIN (SELECT ALL t0.c0, greatest(CAST(INTERVAL '6' SECOND AS TIME), TIME '10:25:00') FROM t1, t0) AS sub0 ON (COALESCE(-3, -6, 3)) NOT IN (CASE WHEN TRUE THEN -3 END, ((-4)&(-5)), - (6))
WHERE ((r'%')ILIKE(r'6')) GROUP BY COALESCE(CAST(least(0.4, 0.7) AS VARCHAR(506)), CAST(nullif(TIME '14:14:35', TIME '02:49:23') AS VARCHAR(388))), abs(0.6);
ROLLBACK;
