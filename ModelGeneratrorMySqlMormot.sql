select t.table_name,concat('  published\r\n',
group_concat('    ',col order by ordinal_position separator ';\r\n'),';') table_create from (
select a.table_name,a.ordinal_position,concat('property ',a.column_name,': ',
if(a.data_type in ('varchar','enum','text','char','time','varbinary','tinytext','set','mediumtext'),
if(a.is_nullable='YES','TNullableUtf8Text','RawUtf8'),
if(a.data_type in ('int','tinyint','mediumint','smallint'),
if(a.is_nullable='YES','TNullableInteger','integer'),
if(a.data_type in ('decimal'),
if(a.is_nullable='YES','TNullableCurrency','currency'),
if(a.data_type in ('bigint'),
if(a.is_nullable='YES','TNullableInteger','int64'),
if(a.data_type in ('timestamp','date','datetime'),
if(a.is_nullable='YES','TNullableDateTime','TDateTime'),
if(a.data_type in ('longblob','blob','mediumblob'),
if(a.is_nullable='YES','TNullableUtf8Text','RawUtf8'),
if(a.data_type in ('double','float'),'Double','unDefined'))))))),
if(a.data_type in ('varchar'),concat(' index ',a.character_maximum_length),''),
' read F',a.column_name,' write ',
if(a.data_type='enum',concat('set',a.column_name),concat('F',a.column_name))
) col from information_schema.columns a
where table_schema='your_database_name') t
group by t.table_name
