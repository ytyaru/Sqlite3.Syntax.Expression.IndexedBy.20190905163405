begin;
create table T(A text);
create index T_A on T(A);
insert into T values('A');
end;
select * from T indexed by T_A where A='A';
explain query plan select * from T indexed by T_A where A='A';


select * from T indexed by T_A;
explain query plan select * from T indexed by T_A;
explain query plan select * from T;

