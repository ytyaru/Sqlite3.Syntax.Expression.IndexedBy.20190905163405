begin;
create table T(A text);
create index T_A on T(A);
insert into T values('A');
end;

select * from T not indexed where A='A';
explain query plan select * from T not indexed where A='A';

