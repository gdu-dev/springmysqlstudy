USE gdj61;

CREATE TABLE LOCATIONS
(
	LOCATION_ID INT(4) NOT NULL,
	STREET_ADDRESS VARCHAR(40),
	POSTAL_CODE VARCHAR(12),
	CITY VARCHAR(30) NOT NULL,
	STATE_PROVINCE VARCHAR(25),
	COUNTRY_ID CHAR(2),
    CONSTRAINT PK_LOC PRIMARY KEY(LOCATION_ID)
);

CREATE TABLE DEPARTMENTS
(
	DEPARTMENT_ID INT(4) NOT NULL,
	DEPARTMENT_NAME VARCHAR(30) NOT NULL,
	MANAGER_ID INT(6),
	LOCATION_ID INT(4),
    CONSTRAINT PK_DEPT PRIMARY KEY(DEPARTMENT_ID),
    CONSTRAINT FK_DEPT_LOC FOREIGN KEY(LOCATION_ID) REFERENCES LOCATIONS(LOCATION_ID)
);

CREATE TABLE EMPLOYEES
(
	EMPLOYEE_ID INT(6) NOT NULL,
    FIRST_NAME VARCHAR(20),
    LAST_NAME VARCHAR(25) NOT NULL,
    EMAIL VARCHAR(25) NOT NULL UNIQUE,
    PHONE_NUMBER VARCHAR(20),
    HIRE_DATE DATETIME NOT NULL,
    JOB_ID VARCHAR(10) NOT NULL,
    SALARY FLOAT(8,2) CHECK(SALARY > 0),
    COMMISSION_PCT FLOAT(2,2),
    MANAGER_ID INT(6),
    DEPARTMENT_ID INT(4),
    CONSTRAINT PK_EMP PRIMARY KEY(EMPLOYEE_ID),
    CONSTRAINT FK_EMP_DEPT FOREIGN KEY(DEPARTMENT_ID) REFERENCES DEPARTMENTS(DEPARTMENT_ID),
    CONSTRAINT FK_EMP_MANAGER FOREIGN KEY (MANAGER_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID)
);

ALTER TABLE DEPARTMENTS
ADD CONSTRAINT FK_DEPT_MGR FOREIGN KEY(MANAGER_ID) 
REFERENCES EMPLOYEES(EMPLOYEE_ID);

INSERT INTO LOCATIONS VALUES 
        ( 1000 
        , '1297 Via Cola di Rie'
        , '00989'
        , 'Roma'
        , NULL
        , 'IT'
        );

INSERT INTO LOCATIONS VALUES 
        ( 1100 
        , '93091 Calle della Testa'
        , '10934'
        , 'Venice'
        , NULL
        , 'IT'
        );

INSERT INTO LOCATIONS VALUES 
        ( 1200 
        , '2017 Shinjuku-ku'
        , '1689'
        , 'Tokyo'
        , 'Tokyo Prefecture'
        , 'JP'
        );

INSERT INTO LOCATIONS VALUES 
        ( 1300 
        , '9450 Kamiya-cho'
        , '6823'
        , 'Hiroshima'
        , NULL
        , 'JP'
        );

INSERT INTO LOCATIONS VALUES 
        ( 1400 
        , '2014 Jabberwocky Rd'
        , '26192'
        , 'Southlake'
        , 'Texas'
        , 'US'
        );

INSERT INTO LOCATIONS VALUES 
        ( 1500 
        , '2011 Interiors Blvd'
        , '99236'
        , 'South San Francisco'
        , 'California'
        , 'US'
        );

INSERT INTO LOCATIONS VALUES 
        ( 1600 
        , '2007 Zagora St'
        , '50090'
        , 'South Brunswick'
        , 'New Jersey'
        , 'US'
        );

INSERT INTO LOCATIONS VALUES 
        ( 1700 
        , '2004 Charade Rd'
        , '98199'
        , 'Seattle'
        , 'Washington'
        , 'US'
        );

INSERT INTO LOCATIONS VALUES 
        ( 1800 
        , '147 Spadina Ave'
        , 'M5V 2L7'
        , 'Toronto'
        , 'Ontario'
        , 'CA'
        );

INSERT INTO LOCATIONS VALUES 
        ( 1900 
        , '6092 Boxwood St'
        , 'YSW 9T2'
        , 'Whitehorse'
        , 'Yukon'
        , 'CA'
        );

INSERT INTO LOCATIONS VALUES 
        ( 2000 
        , '40-5-12 Laogianggen'
        , '190518'
        , 'Beijing'
        , NULL
        , 'CN'
        );

INSERT INTO LOCATIONS VALUES 
        ( 2100 
        , '1298 Vileparle (E)'
        , '490231'
        , 'Bombay'
        , 'Maharashtra'
        , 'IN'
        );

INSERT INTO LOCATIONS VALUES 
        ( 2200 
        , '12-98 Victoria Street'
        , '2901'
        , 'Sydney'
        , 'New South Wales'
        , 'AU'
        );

INSERT INTO LOCATIONS VALUES 
        ( 2300 
        , '198 Clementi North'
        , '540198'
        , 'Singapore'
        , NULL
        , 'SG'
        );

INSERT INTO LOCATIONS VALUES 
        ( 2400 
        , '8204 Arthur St'
        , NULL
        , 'London'
        , NULL
        , 'UK'
        );

INSERT INTO LOCATIONS VALUES 
        ( 2500 
        , 'Magdalen Centre, The Oxford Science Park'
        , 'OX9 9ZB'
        , 'Oxford'
        , 'Oxford'
        , 'UK'
        );

INSERT INTO LOCATIONS VALUES 
        ( 2600 
        , '9702 Chester Road'
        , '09629850293'
        , 'Stretford'
        , 'Manchester'
        , 'UK'
        );

INSERT INTO LOCATIONS VALUES 
        ( 2700 
        , 'Schwanthalerstr. 7031'
        , '80925'
        , 'Munich'
        , 'Bavaria'
        , 'DE'
        );

INSERT INTO LOCATIONS VALUES 
        ( 2800 
        , 'Rua Frei Caneca 1360 '
        , '01307-002'
        , 'Sao Paulo'
        , 'Sao Paulo'
        , 'BR'
        );

INSERT INTO LOCATIONS VALUES 
        ( 2900 
        , '20 Rue des Corps-Saints'
        , '1730'
        , 'Geneva'
        , 'Geneve'
        , 'CH'
        );

INSERT INTO LOCATIONS VALUES 
        ( 3000 
        , 'Murtenstrasse 921'
        , '3095'
        , 'Bern'
        , 'BE'
        , 'CH'
        );

INSERT INTO LOCATIONS VALUES 
        ( 3100 
        , 'Pieter Breughelstraat 837'
        , '3029SK'
        , 'Utrecht'
        , 'Utrecht'
        , 'NL'
        );

INSERT INTO LOCATIONS VALUES 
        ( 3200 
        , 'Mariano Escobedo 9991'
        , '11932'
        , 'Mexico City'
        , 'Distrito Federal,'
        , 'MX'
        );

SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO DEPARTMENTS VALUES 
        ( 10
        , 'Administration'
        , 200
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 20
        , 'Marketing'
        , 201
        , 1800
        );
                                
INSERT INTO DEPARTMENTS VALUES 
        ( 30
        , 'Purchasing'
        , 114
        , 1700
	);
                
INSERT INTO DEPARTMENTS VALUES 
        ( 40
        , 'Human Resources'
        , 203
        , 2400
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 50
        , 'Shipping'
        , 121
        , 1500
        );
                
INSERT INTO DEPARTMENTS VALUES 
        ( 60 
        , 'IT'
        , 103
        , 1400
        );
                
INSERT INTO DEPARTMENTS VALUES 
        ( 70 
        , 'Public Relations'
        , 204
        , 2700
        );
                
INSERT INTO DEPARTMENTS VALUES 
        ( 80 
        , 'Sales'
        , 145
        , 2500
        );
                
INSERT INTO DEPARTMENTS VALUES 
        ( 90 
        , 'Executive'
        , 100
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 100 
        , 'Finance'
        , 108
        , 1700
        );
                
INSERT INTO DEPARTMENTS VALUES 
        ( 110 
        , 'Accounting'
        , 205
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 120 
        , 'Treasury'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 130 
        , 'Corporate Tax'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 140 
        , 'Control And Credit'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 150 
        , 'Shareholder Services'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 160 
        , 'Benefits'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 170 
        , 'Manufacturing'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 180 
        , 'Construction'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 190 
        , 'Contracting'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 200 
        , 'Operations'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 210 
        , 'IT Support'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 220 
        , 'NOC'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 230 
        , 'IT Helpdesk'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 240 
        , 'Government Sales'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 250 
        , 'Retail Sales'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 260 
        , 'Recruiting'
        , NULL
        , 1700
        );

INSERT INTO DEPARTMENTS VALUES 
        ( 270 
        , 'Payroll'
        , NULL
        , 1700
        );

INSERT INTO EMPLOYEES VALUES 
        ( 100
        , 'Steven'
        , 'King'
        , 'SKING'
        , '515.123.4567'
        , STR_TO_DATE('17-06-2003', '%d-%m-%Y')
        , 'AD_PRES'
        , 24000
        , NULL
        , NULL
        , 90
        );

INSERT INTO EMPLOYEES VALUES 
        ( 101
        , 'Neena'
        , 'Kochhar'
        , 'NKOCHHAR'
        , '515.123.4568'
        , STR_TO_DATE('21-09-2005', '%d-%m-%Y')
        , 'AD_VP'
        , 17000
        , NULL
        , 100
        , 90
        );

INSERT INTO EMPLOYEES VALUES 
        ( 102
        , 'Lex'
        , 'De Haan'
        , 'LDEHAAN'
        , '515.123.4569'
        , STR_TO_DATE('13-01-2001', '%d-%m-%Y')
        , 'AD_VP'
        , 17000
        , NULL
        , 100
        , 90
        );

INSERT INTO EMPLOYEES VALUES 
        ( 103
        , 'Alexander'
        , 'Hunold'
        , 'AHUNOLD'
        , '590.423.4567'
        , STR_TO_DATE('03-01-2006', '%d-%m-%Y')
        , 'IT_PROG'
        , 9000
        , NULL
        , 102
        , 60
        );

INSERT INTO EMPLOYEES VALUES 
        ( 104
        , 'Bruce'
        , 'Ernst'
        , 'BERNST'
        , '590.423.4568'
        , STR_TO_DATE('21-05-2007', '%d-%m-%Y')
        , 'IT_PROG'
        , 6000
        , NULL
        , 103
        , 60
        );

INSERT INTO EMPLOYEES VALUES 
        ( 105
        , 'David'
        , 'Austin'
        , 'DAUSTIN'
        , '590.423.4569'
        , STR_TO_DATE('25-06-2005', '%d-%m-%Y')
        , 'IT_PROG'
        , 4800
        , NULL
        , 103
        , 60
        );

INSERT INTO EMPLOYEES VALUES 
        ( 106
        , 'Valli'
        , 'Pataballa'
        , 'VPATABAL'
        , '590.423.4560'
        , STR_TO_DATE('05-02-2006', '%d-%m-%Y')
        , 'IT_PROG'
        , 4800
        , NULL
        , 103
        , 60
        );

INSERT INTO EMPLOYEES VALUES 
        ( 107
        , 'Diana'
        , 'Lorentz'
        , 'DLORENTZ'
        , '590.423.5567'
        , STR_TO_DATE('07-02-2007', '%d-%m-%Y')
        , 'IT_PROG'
        , 4200
        , NULL
        , 103
        , 60
        );

INSERT INTO EMPLOYEES VALUES 
        ( 108
        , 'Nancy'
        , 'Greenberg'
        , 'NGREENBE'
        , '515.124.4569'
        , STR_TO_DATE('17-08-2002', '%d-%m-%Y')
        , 'FI_MGR'
        , 12008
        , NULL
        , 101
        , 100
        );

INSERT INTO EMPLOYEES VALUES 
        ( 109
        , 'Daniel'
        , 'Faviet'
        , 'DFAVIET'
        , '515.124.4169'
        , STR_TO_DATE('16-08-2002', '%d-%m-%Y')
        , 'FI_ACCOUNT'
        , 9000
        , NULL
        , 108
        , 100
        );

INSERT INTO EMPLOYEES VALUES 
        ( 110
        , 'John'
        , 'Chen'
        , 'JCHEN'
        , '515.124.4269'
        , STR_TO_DATE('28-09-2005', '%d-%m-%Y')
        , 'FI_ACCOUNT'
        , 8200
        , NULL
        , 108
        , 100
        );

INSERT INTO EMPLOYEES VALUES 
        ( 111
        , 'Ismael'
        , 'Sciarra'
        , 'ISCIARRA'
        , '515.124.4369'
        , STR_TO_DATE('30-09-2005', '%d-%m-%Y')
        , 'FI_ACCOUNT'
        , 7700
        , NULL
        , 108
        , 100
        );

INSERT INTO EMPLOYEES VALUES 
        ( 112
        , 'Jose Manuel'
        , 'Urman'
        , 'JMURMAN'
        , '515.124.4469'
        , STR_TO_DATE('07-03-2006', '%d-%m-%Y')
        , 'FI_ACCOUNT'
        , 7800
        , NULL
        , 108
        , 100
        );

INSERT INTO EMPLOYEES VALUES 
        ( 113
        , 'Luis'
        , 'Popp'
        , 'LPOPP'
        , '515.124.4567'
        , STR_TO_DATE('07-12-2007', '%d-%m-%Y')
        , 'FI_ACCOUNT'
        , 6900
        , NULL
        , 108
        , 100
        );

INSERT INTO EMPLOYEES VALUES 
        ( 114
        , 'Den'
        , 'Raphaely'
        , 'DRAPHEAL'
        , '515.127.4561'
        , STR_TO_DATE('07-12-2002', '%d-%m-%Y')
        , 'PU_MAN'
        , 11000
        , NULL
        , 100
        , 30
        );

INSERT INTO EMPLOYEES VALUES 
        ( 115
        , 'Alexander'
        , 'Khoo'
        , 'AKHOO'
        , '515.127.4562'
        , STR_TO_DATE('18-05-2003', '%d-%m-%Y')
        , 'PU_CLERK'
        , 3100
        , NULL
        , 114
        , 30
        );

INSERT INTO EMPLOYEES VALUES 
        ( 116
        , 'Shelli'
        , 'Baida'
        , 'SBAIDA'
        , '515.127.4563'
        , STR_TO_DATE('24-12-2005', '%d-%m-%Y')
        , 'PU_CLERK'
        , 2900
        , NULL
        , 114
        , 30
        );

INSERT INTO EMPLOYEES VALUES 
        ( 117
        , 'Sigal'
        , 'Tobias'
        , 'STOBIAS'
        , '515.127.4564'
        , STR_TO_DATE('24-07-2005', '%d-%m-%Y')
        , 'PU_CLERK'
        , 2800
        , NULL
        , 114
        , 30
        );

INSERT INTO EMPLOYEES VALUES 
        ( 118
        , 'Guy'
        , 'Himuro'
        , 'GHIMURO'
        , '515.127.4565'
        , STR_TO_DATE('15-11-2006', '%d-%m-%Y')
        , 'PU_CLERK'
        , 2600
        , NULL
        , 114
        , 30
        );

INSERT INTO EMPLOYEES VALUES 
        ( 119
        , 'Karen'
        , 'Colmenares'
        , 'KCOLMENA'
        , '515.127.4566'
        , STR_TO_DATE('10-08-2007', '%d-%m-%Y')
        , 'PU_CLERK'
        , 2500
        , NULL
        , 114
        , 30
        );

INSERT INTO EMPLOYEES VALUES 
        ( 120
        , 'Matthew'
        , 'Weiss'
        , 'MWEISS'
        , '650.123.1234'
        , STR_TO_DATE('18-07-2004', '%d-%m-%Y')
        , 'ST_MAN'
        , 8000
        , NULL
        , 100
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 121
        , 'Adam'
        , 'Fripp'
        , 'AFRIPP'
        , '650.123.2234'
        , STR_TO_DATE('10-04-2005', '%d-%m-%Y')
        , 'ST_MAN'
        , 8200
        , NULL
        , 100
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 122
        , 'Payam'
        , 'Kaufling'
        , 'PKAUFLIN'
        , '650.123.3234'
        , STR_TO_DATE('01-05-2003', '%d-%m-%Y')
        , 'ST_MAN'
        , 7900
        , NULL
        , 100
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 123
        , 'Shanta'
        , 'Vollman'
        , 'SVOLLMAN'
        , '650.123.4234'
        , STR_TO_DATE('10-10-2005', '%d-%m-%Y')
        , 'ST_MAN'
        , 6500
        , NULL
        , 100
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 124
        , 'Kevin'
        , 'Mourgos'
        , 'KMOURGOS'
        , '650.123.5234'
        , STR_TO_DATE('16-11-2007', '%d-%m-%Y')
        , 'ST_MAN'
        , 5800
        , NULL
        , 100
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 125
        , 'Julia'
        , 'Nayer'
        , 'JNAYER'
        , '650.124.1214'
        , STR_TO_DATE('16-07-2005', '%d-%m-%Y')
        , 'ST_CLERK'
        , 3200
        , NULL
        , 120
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 126
        , 'Irene'
        , 'Mikkilineni'
        , 'IMIKKILI'
        , '650.124.1224'
        , STR_TO_DATE('28-09-2006', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2700
        , NULL
        , 120
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 127
        , 'James'
        , 'Landry'
        , 'JLANDRY'
        , '650.124.1334'
        , STR_TO_DATE('14-01-2007', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2400
        , NULL
        , 120
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 128
        , 'Steven'
        , 'Markle'
        , 'SMARKLE'
        , '650.124.1434'
        , STR_TO_DATE('08-03-2008', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2200
        , NULL
        , 120
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 129
        , 'Laura'
        , 'Bissot'
        , 'LBISSOT'
        , '650.124.5234'
        , STR_TO_DATE('20-08-2005', '%d-%m-%Y')
        , 'ST_CLERK'
        , 3300
        , NULL
        , 121
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 130
        , 'Mozhe'
        , 'Atkinson'
        , 'MATKINSO'
        , '650.124.6234'
        , STR_TO_DATE('30-10-2005', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2800
        , NULL
        , 121
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 131
        , 'James'
        , 'Marlow'
        , 'JAMRLOW'
        , '650.124.7234'
        , STR_TO_DATE('16-02-2005', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2500
        , NULL
        , 121
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 132
        , 'TJ'
        , 'Olson'
        , 'TJOLSON'
        , '650.124.8234'
        , STR_TO_DATE('10-04-2007', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2100
        , NULL
        , 121
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 133
        , 'Jason'
        , 'Mallin'
        , 'JMALLIN'
        , '650.127.1934'
        , STR_TO_DATE('14-06-2004', '%d-%m-%Y')
        , 'ST_CLERK'
        , 3300
        , NULL
        , 122
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 134
        , 'Michael'
        , 'Rogers'
        , 'MROGERS'
        , '650.127.1834'
        , STR_TO_DATE('26-08-2006', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2900
        , NULL
        , 122
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 135
        , 'Ki'
        , 'Gee'
        , 'KGEE'
        , '650.127.1734'
        , STR_TO_DATE('12-12-2007', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2400
        , NULL
        , 122
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 136
        , 'Hazel'
        , 'Philtanker'
        , 'HPHILTAN'
        , '650.127.1634'
        , STR_TO_DATE('06-02-2008', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2200
        , NULL
        , 122
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 137
        , 'Renske'
        , 'Ladwig'
        , 'RLADWIG'
        , '650.121.1234'
        , STR_TO_DATE('14-07-2003', '%d-%m-%Y')
        , 'ST_CLERK'
        , 3600
        , NULL
        , 123
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 138
        , 'Stephen'
        , 'Stiles'
        , 'SSTILES'
        , '650.121.2034'
        , STR_TO_DATE('26-10-2005', '%d-%m-%Y')
        , 'ST_CLERK'
        , 3200
        , NULL
        , 123
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 139
        , 'John'
        , 'Seo'
        , 'JSEO'
        , '650.121.2019'
        , STR_TO_DATE('12-02-2006', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2700
        , NULL
        , 123
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 140
        , 'Joshua'
        , 'Patel'
        , 'JPATEL'
        , '650.121.1834'
        , STR_TO_DATE('06-04-2006', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2500
        , NULL
        , 123
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 141
        , 'Trenna'
        , 'Rajs'
        , 'TRAJS'
        , '650.121.8009'
        , STR_TO_DATE('17-10-2003', '%d-%m-%Y')
        , 'ST_CLERK'
        , 3500
        , NULL
        , 124
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 142
        , 'Curtis'
        , 'Davies'
        , 'CDAVIES'
        , '650.121.2994'
        , STR_TO_DATE('29-01-2005', '%d-%m-%Y')
        , 'ST_CLERK'
        , 3100
        , NULL
        , 124
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 143
        , 'Randall'
        , 'Matos'
        , 'RMATOS'
        , '650.121.2874'
        , STR_TO_DATE('15-03-2006', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2600
        , NULL
        , 124
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 144
        , 'Peter'
        , 'Vargas'
        , 'PVARGAS'
        , '650.121.2004'
        , STR_TO_DATE('09-07-2006', '%d-%m-%Y')
        , 'ST_CLERK'
        , 2500
        , NULL
        , 124
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 145
        , 'John'
        , 'Russell'
        , 'JRUSSEL'
        , '011.44.1344.429268'
        , STR_TO_DATE('01-10-2004', '%d-%m-%Y')
        , 'SA_MAN'
        , 14000
        , .4
        , 100
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 146
        , 'Karen'
        , 'Partners'
        , 'KPARTNER'
        , '011.44.1344.467268'
        , STR_TO_DATE('05-01-2005', '%d-%m-%Y')
        , 'SA_MAN'
        , 13500
        , .3
        , 100
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 147
        , 'Alberto'
        , 'Errazuriz'
        , 'AERRAZUR'
        , '011.44.1344.429278'
        , STR_TO_DATE('10-03-2005', '%d-%m-%Y')
        , 'SA_MAN'
        , 12000
        , .3
        , 100
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 148
        , 'Gerald'
        , 'Cambrault'
        , 'GCAMBRAU'
        , '011.44.1344.619268'
        , STR_TO_DATE('15-10-2007', '%d-%m-%Y')
        , 'SA_MAN'
        , 11000
        , .3
        , 100
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 149
        , 'Eleni'
        , 'Zlotkey'
        , 'EZLOTKEY'
        , '011.44.1344.429018'
        , STR_TO_DATE('29-01-2008', '%d-%m-%Y')
        , 'SA_MAN'
        , 10500
        , .2
        , 100
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 150
        , 'Peter'
        , 'Tucker'
        , 'PTUCKER'
        , '011.44.1344.129268'
        , STR_TO_DATE('30-01-2005', '%d-%m-%Y')
        , 'SA_REP'
        , 10000
        , .3
        , 145
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 151
        , 'David'
        , 'Bernstein'
        , 'DBERNSTE'
        , '011.44.1344.345268'
        , STR_TO_DATE('24-03-2005', '%d-%m-%Y')
        , 'SA_REP'
        , 9500
        , .25
        , 145
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 152
        , 'Peter'
        , 'Hall'
        , 'PHALL'
        , '011.44.1344.478968'
        , STR_TO_DATE('20-08-2005', '%d-%m-%Y')
        , 'SA_REP'
        , 9000
        , .25
        , 145
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 153
        , 'Christopher'
        , 'Olsen'
        , 'COLSEN'
        , '011.44.1344.498718'
        , STR_TO_DATE('30-03-2006', '%d-%m-%Y')
        , 'SA_REP'
        , 8000
        , .2
        , 145
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 154
        , 'Nanette'
        , 'Cambrault'
        , 'NCAMBRAU'
        , '011.44.1344.987668'
        , STR_TO_DATE('09-12-2006', '%d-%m-%Y')
        , 'SA_REP'
        , 7500
        , .2
        , 145
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 155
        , 'Oliver'
        , 'Tuvault'
        , 'OTUVAULT'
        , '011.44.1344.486508'
        , STR_TO_DATE('23-11-2007', '%d-%m-%Y')
        , 'SA_REP'
        , 7000
        , .15
        , 145
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 156
        , 'Janette'
        , 'King'
        , 'JKING'
        , '011.44.1345.429268'
        , STR_TO_DATE('30-01-2004', '%d-%m-%Y')
        , 'SA_REP'
        , 10000
        , .35
        , 146
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 157
        , 'Patrick'
        , 'Sully'
        , 'PSULLY'
        , '011.44.1345.929268'
        , STR_TO_DATE('04-03-2004', '%d-%m-%Y')
        , 'SA_REP'
        , 9500
        , .35
        , 146
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 158
        , 'Allan'
        , 'McEwen'
        , 'AMCEWEN'
        , '011.44.1345.829268'
        , STR_TO_DATE('01-08-2004', '%d-%m-%Y')
        , 'SA_REP'
        , 9000
        , .35
        , 146
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 159
        , 'Lindsey'
        , 'Smith'
        , 'LSMITH'
        , '011.44.1345.729268'
        , STR_TO_DATE('10-03-2005', '%d-%m-%Y')
        , 'SA_REP'
        , 8000
        , .3
        , 146
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 160
        , 'Louise'
        , 'Doran'
        , 'LDORAN'
        , '011.44.1345.629268'
        , STR_TO_DATE('15-12-2005', '%d-%m-%Y')
        , 'SA_REP'
        , 7500
        , .3
        , 146
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 161
        , 'Sarath'
        , 'Sewall'
        , 'SSEWALL'
        , '011.44.1345.529268'
        , STR_TO_DATE('03-11-2006', '%d-%m-%Y')
        , 'SA_REP'
        , 7000
        , .25
        , 146
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 162
        , 'Clara'
        , 'Vishney'
        , 'CVISHNEY'
        , '011.44.1346.129268'
        , STR_TO_DATE('11-11-2005', '%d-%m-%Y')
        , 'SA_REP'
        , 10500
        , .25
        , 147
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 163
        , 'Danielle'
        , 'Greene'
        , 'DGREENE'
        , '011.44.1346.229268'
        , STR_TO_DATE('19-03-2007', '%d-%m-%Y')
        , 'SA_REP'
        , 9500
        , .15
        , 147
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 164
        , 'Mattea'
        , 'Marvins'
        , 'MMARVINS'
        , '011.44.1346.329268'
        , STR_TO_DATE('24-01-2008', '%d-%m-%Y')
        , 'SA_REP'
        , 7200
        , .10
        , 147
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 165
        , 'David'
        , 'Lee'
        , 'DLEE'
        , '011.44.1346.529268'
        , STR_TO_DATE('23-02-2008', '%d-%m-%Y')
        , 'SA_REP'
        , 6800
        , .1
        , 147
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 166
        , 'Sundar'
        , 'Ande'
        , 'SANDE'
        , '011.44.1346.629268'
        , STR_TO_DATE('24-03-2008', '%d-%m-%Y')
        , 'SA_REP'
        , 6400
        , .10
        , 147
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 167
        , 'Amit'
        , 'Banda'
        , 'ABANDA'
        , '011.44.1346.729268'
        , STR_TO_DATE('21-04-2008', '%d-%m-%Y')
        , 'SA_REP'
        , 6200
        , .10
        , 147
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 168
        , 'Lisa'
        , 'Ozer'
        , 'LOZER'
        , '011.44.1343.929268'
        , STR_TO_DATE('11-03-2005', '%d-%m-%Y')
        , 'SA_REP'
        , 11500
        , .25
        , 148
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 169  
        , 'Harrison'
        , 'Bloom'
        , 'HBLOOM'
        , '011.44.1343.829268'
        , STR_TO_DATE('23-03-2006', '%d-%m-%Y')
        , 'SA_REP'
        , 10000
        , .20
        , 148
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 170
        , 'Tayler'
        , 'Fox'
        , 'TFOX'
        , '011.44.1343.729268'
        , STR_TO_DATE('24-01-2006', '%d-%m-%Y')
        , 'SA_REP'
        , 9600
        , .20
        , 148
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 171
        , 'William'
        , 'Smith'
        , 'WSMITH'
        , '011.44.1343.629268'
        , STR_TO_DATE('23-02-2007', '%d-%m-%Y')
        , 'SA_REP'
        , 7400
        , .15
        , 148
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 172
        , 'Elizabeth'
        , 'Bates'
        , 'EBATES'
        , '011.44.1343.529268'
        , STR_TO_DATE('24-03-2007', '%d-%m-%Y')
        , 'SA_REP'
        , 7300
        , .15
        , 148
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 173
        , 'Sundita'
        , 'Kumar'
        , 'SKUMAR'
        , '011.44.1343.329268'
        , STR_TO_DATE('21-04-2008', '%d-%m-%Y')
        , 'SA_REP'
        , 6100
        , .10
        , 148
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 174
        , 'Ellen'
        , 'Abel'
        , 'EABEL'
        , '011.44.1644.429267'
        , STR_TO_DATE('11-05-2004', '%d-%m-%Y')
        , 'SA_REP'
        , 11000
        , .30
        , 149
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 175
        , 'Alyssa'
        , 'Hutton'
        , 'AHUTTON'
        , '011.44.1644.429266'
        , STR_TO_DATE('19-03-2005', '%d-%m-%Y')
        , 'SA_REP'
        , 8800
        , .25
        , 149
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 176
        , 'Jonathon'
        , 'Taylor'
        , 'JTAYLOR'
        , '011.44.1644.429265'
        , STR_TO_DATE('24-03-2006', '%d-%m-%Y')
        , 'SA_REP'
        , 8600
        , .20
        , 149
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 177
        , 'Jack'
        , 'Livingston'
        , 'JLIVINGS'
        , '011.44.1644.429264'
        , STR_TO_DATE('23-04-2006', '%d-%m-%Y')
        , 'SA_REP'
        , 8400
        , .20
        , 149
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 178
        , 'Kimberely'
        , 'Grant'
        , 'KGRANT'
        , '011.44.1644.429263'
        , STR_TO_DATE('24-05-2007', '%d-%m-%Y')
        , 'SA_REP'
        , 7000
        , .15
        , 149
        , NULL
        );

INSERT INTO EMPLOYEES VALUES 
        ( 179
        , 'Charles'
        , 'Johnson'
        , 'CJOHNSON'
        , '011.44.1644.429262'
        , STR_TO_DATE('04-01-2008', '%d-%m-%Y')
        , 'SA_REP'
        , 6200
        , .10
        , 149
        , 80
        );

INSERT INTO EMPLOYEES VALUES 
        ( 180
        , 'Winston'
        , 'Taylor'
        , 'WTAYLOR'
        , '650.507.9876'
        , STR_TO_DATE('24-01-2006', '%d-%m-%Y')
        , 'SH_CLERK'
        , 3200
        , NULL
        , 120
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 181
        , 'Jean'
        , 'Fleaur'
        , 'JFLEAUR'
        , '650.507.9877'
        , STR_TO_DATE('23-02-2006', '%d-%m-%Y')
        , 'SH_CLERK'
        , 3100
        , NULL
        , 120
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 182
        , 'Martha'
        , 'Sullivan'
        , 'MSULLIVA'
        , '650.507.9878'
        , STR_TO_DATE('21-06-2007', '%d-%m-%Y')
        , 'SH_CLERK'
        , 2500
        , NULL
        , 120
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 183
        , 'Girard'
        , 'Geoni'
        , 'GGEONI'
        , '650.507.9879'
        , STR_TO_DATE('03-02-2008', '%d-%m-%Y')
        , 'SH_CLERK'
        , 2800
        , NULL
        , 120
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 184
        , 'Nandita'
        , 'Sarchand'
        , 'NSARCHAN'
        , '650.509.1876'
        , STR_TO_DATE('27-01-2004', '%d-%m-%Y')
        , 'SH_CLERK'
        , 4200
        , NULL
        , 121
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 185
        , 'Alexis'
        , 'Bull'
        , 'ABULL'
        , '650.509.2876'
        , STR_TO_DATE('20-02-2005', '%d-%m-%Y')
        , 'SH_CLERK'
        , 4100
        , NULL
        , 121
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 186
        , 'Julia'
        , 'Dellinger'
        , 'JDELLING'
        , '650.509.3876'
        , STR_TO_DATE('24-06-2006', '%d-%m-%Y')
        , 'SH_CLERK'
        , 3400
        , NULL
        , 121
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 187
        , 'Anthony'
        , 'Cabrio'
        , 'ACABRIO'
        , '650.509.4876'
        , STR_TO_DATE('07-02-2007', '%d-%m-%Y')
        , 'SH_CLERK'
        , 3000
        , NULL
        , 121
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 188
        , 'Kelly'
        , 'Chung'
        , 'KCHUNG'
        , '650.505.1876'
        , STR_TO_DATE('14-06-2005', '%d-%m-%Y')
        , 'SH_CLERK'
        , 3800
        , NULL
        , 122
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 189
        , 'Jennifer'
        , 'Dilly'
        , 'JDILLY'
        , '650.505.2876'
        , STR_TO_DATE('13-08-2005', '%d-%m-%Y')
        , 'SH_CLERK'
        , 3600
        , NULL
        , 122
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 190
        , 'Timothy'
        , 'Gates'
        , 'TGATES'
        , '650.505.3876'
        , STR_TO_DATE('11-07-2006', '%d-%m-%Y')
        , 'SH_CLERK'
        , 2900
        , NULL
        , 122
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 191
        , 'Randall'
        , 'Perkins'
        , 'RPERKINS'
        , '650.505.4876'
        , STR_TO_DATE('19-12-2007', '%d-%m-%Y')
        , 'SH_CLERK'
        , 2500
        , NULL
        , 122
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 192
        , 'Sarah'
        , 'Bell'
        , 'SBELL'
        , '650.501.1876'
        , STR_TO_DATE('04-02-2004', '%d-%m-%Y')
        , 'SH_CLERK'
        , 4000
        , NULL
        , 123
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 193
        , 'Britney'
        , 'Everett'
        , 'BEVERETT'
        , '650.501.2876'
        , STR_TO_DATE('03-03-2005', '%d-%m-%Y')
        , 'SH_CLERK'
        , 3900
        , NULL
        , 123
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 194
        , 'Samuel'
        , 'McCain'
        , 'SMCCAIN'
        , '650.501.3876'
        , STR_TO_DATE('01-07-2006', '%d-%m-%Y')
        , 'SH_CLERK'
        , 3200
        , NULL
        , 123
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 195
        , 'Vance'
        , 'Jones'
        , 'VJONES'
        , '650.501.4876'
        , STR_TO_DATE('17-03-2007', '%d-%m-%Y')
        , 'SH_CLERK'
        , 2800
        , NULL
        , 123
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 196
        , 'Alana'
        , 'Walsh'
        , 'AWALSH'
        , '650.507.9811'
        , STR_TO_DATE('24-04-2006', '%d-%m-%Y')
        , 'SH_CLERK'
        , 3100
        , NULL
        , 124
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 197
        , 'Kevin'
        , 'Feeney'
        , 'KFEENEY'
        , '650.507.9822'
        , STR_TO_DATE('23-05-2006', '%d-%m-%Y')
        , 'SH_CLERK'
        , 3000
        , NULL
        , 124
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 198
        , 'Donald'
        , 'OConnell'
        , 'DOCONNEL'
        , '650.507.9833'
        , STR_TO_DATE('21-06-2007', '%d-%m-%Y')
        , 'SH_CLERK'
        , 2600
        , NULL
        , 124
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 199
        , 'Douglas'
        , 'Grant'
        , 'DGRANT'
        , '650.507.9844'
        , STR_TO_DATE('13-01-2008', '%d-%m-%Y')
        , 'SH_CLERK'
        , 2600
        , NULL
        , 124
        , 50
        );

INSERT INTO EMPLOYEES VALUES 
        ( 200
        , 'Jennifer'
        , 'Whalen'
        , 'JWHALEN'
        , '515.123.4444'
        , STR_TO_DATE('17-09-2003', '%d-%m-%Y')
        , 'AD_ASST'
        , 4400
        , NULL
        , 101
        , 10
        );

INSERT INTO EMPLOYEES VALUES 
        ( 201
        , 'Michael'
        , 'Hartstein'
        , 'MHARTSTE'
        , '515.123.5555'
        , STR_TO_DATE('17-02-2004', '%d-%m-%Y')
        , 'MK_MAN'
        , 13000
        , NULL
        , 100
        , 20
        );

INSERT INTO EMPLOYEES VALUES 
        ( 202
        , 'Pat'
        , 'Fay'
        , 'PFAY'
        , '603.123.6666'
        , STR_TO_DATE('17-08-2005', '%d-%m-%Y')
        , 'MK_REP'
        , 6000
        , NULL
        , 201
        , 20
        );

INSERT INTO EMPLOYEES VALUES 
        ( 203
        , 'Susan'
        , 'Mavris'
        , 'SMAVRIS'
        , '515.123.7777'
        , STR_TO_DATE('07-06-2002', '%d-%m-%Y')
        , 'HR_REP'
        , 6500
        , NULL
        , 101
        , 40
        );

INSERT INTO EMPLOYEES VALUES 
        ( 204
        , 'Hermann'
        , 'Baer'
        , 'HBAER'
        , '515.123.8888'
        , STR_TO_DATE('07-06-2002', '%d-%m-%Y')
        , 'PR_REP'
        , 10000
        , NULL
        , 101
        , 70
        );

INSERT INTO EMPLOYEES VALUES 
        ( 205
        , 'Shelley'
        , 'Higgins'
        , 'SHIGGINS'
        , '515.123.8080'
        , STR_TO_DATE('07-06-2002', '%d-%m-%Y')
        , 'AC_MGR'
        , 12008
        , NULL
        , 101
        , 110
        );

INSERT INTO EMPLOYEES VALUES 
        ( 206
        , 'William'
        , 'Gietz'
        , 'WGIETZ'
        , '515.123.8181'
        , STR_TO_DATE('07-06-2002', '%d-%m-%Y')
        , 'AC_ACCOUNT'
        , 8300
        , NULL
        , 205
        , 110
        );

COMMIT;

SET FOREIGN_KEY_CHECKS = 1;