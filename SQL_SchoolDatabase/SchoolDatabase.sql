create database School;

create table AGENTS;

CREATE TABLE  AGENTS 
   (	
    AGENT_CODE VARCHAR(6) NOT NULL PRIMARY KEY, 
	AGENT_NAME VARCHAR(40), 
	WORKING_AREA VARCHAR(35), 
	COMMISSION FLOAT(10,2), 
	PHONE_NO VARCHAR(15), 
	COUNTRY VARCHAR(25) 
	 );

select * from AGENTS;

select AGENT_NAME 
from AGENTS
where WORKING_AREA = 'Bangalore' OR 'London';

select AGENT_NAME 
from AGENTS
where not WORKING_AREA = 'Bangalore';

INSERT INTO AGENTS VALUES ('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814763', '');
INSERT INTO AGENTS VALUES ('A003', 'Alex ', 'London', '0.13', '075-12458969', '');
INSERT INTO AGENTS VALUES ('A008', 'Alford', 'New York', '0.12', '044-25874365', '');
INSERT INTO AGENTS VALUES ('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874', '');
INSERT INTO AGENTS VALUES ('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644', '');
INSERT INTO AGENTS VALUES ('A012', 'Lucida', 'San Jose', '0.12', '044-52981425', '');
INSERT INTO AGENTS VALUES ('A005', 'Anderson', 'Brisban', '0.13', '045-21447739', '');
INSERT INTO AGENTS VALUES ('A001', 'Subbarao', 'Bangalore', '0.14', '077-12346674', '');
INSERT INTO AGENTS VALUES ('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964', '');
INSERT INTO AGENTS VALUES ('A006', 'McDen', 'London', '0.15', '078-22255588', '');
INSERT INTO AGENTS VALUES ('A004', 'Ivan', 'Torento', '0.15', '008-22544166', '');
INSERT INTO AGENTS VALUES ('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', '');

select count(AGENT_CODE) from AGENTS;

select avg(COMMISSION) from AGENTS;

select sum(COMMISSION) from AGENTS;

select AGENT_name, min(COMMISSION) from AGENTS;

select AGENT_NAME 
from AGENTS
Group by WORKING_AREA
having avg(COMMISSION)> 0.12;

select AGENT_NAME 
from AGENTS
Group by WORKING_AREA
order by WORKING_AREA desc;

select AGENT_NAME 
from AGENTS
where WORKING_AREA is not NULL;

update AGENTS
set AGENT_NAME = 'Amar', WORKING_AREA = 'Delhi'
where AGENT_CODE = 'A001';

delete from AGENTS
where AGENT_CODE = 'A002';

select AGENT_NAME 
from AGENTS
where WORKING_AREA in ('Delhi', 'Bangalore', 'Mumbai', 'Chennai');

select AGENT_CODE, AGENT_NAME 
from AGENTS
where COMMISSION between 0.12 and 0.14;

select AGENT_NAME as A_name
from AGENTS;