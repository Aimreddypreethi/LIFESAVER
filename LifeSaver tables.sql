create table hospitals(hid number,hname varchar2(20),haddr varchar2(20),hcity varchar2(20));

create table bsample(hid number,hname varchar2(20),bsample varchar2(20),units number,did number,dname varchar2(20));

create table customer(cname varchar2(20),password varchar2(20),gender varchar2(20),e_date date,purpose varchar2(20),address varchar2(20),city varchar2(20));

create table donors(did number,dname varchar2(20),bsample varchar2(20),daddr varchar2(20),ph_no number(12),city varchar2(20));
