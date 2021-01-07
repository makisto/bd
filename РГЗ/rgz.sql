DROP TABLE SUBD;

CREATE TABLE SUBD (
    n INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    type VARCHAR(50) NOT NULL,
    firm VARCHAR(50) NOT NULL,
    PRIMARY KEY(n)
);

DROP SEQUENCE numbers;
CREATE SEQUENCE numbers start with 1 increment by 1;

INSERT INTO SUBD (n, name, type, firm) VALUES (numbers.nextval, 'Access', '�����', 'Microsoft');
INSERT INTO SUBD (n, name, type, firm) VALUES (numbers.nextval, 'FoxPro', '�����', 'Microsoft');
INSERT INTO SUBD (n, name, type, firm) VALUES (numbers.nextval, 'Oracle7', '�����', 'Oracle');
INSERT INTO SUBD (n, name, type, firm) VALUES (numbers.nextval, 'Orion3', '��', 'Orion');
INSERT INTO SUBD (n, name, type, firm) VALUES (numbers.nextval, 'Orion4', '��', 'Orion');
INSERT INTO SUBD (n, name, type, firm) VALUES (numbers.nextval, 'Delphi', '��', 'Microsoft');
INSERT INTO SUBD (n, name, type, firm) VALUES (numbers.nextval, 'Essbase1', '������', 'Arbor');
INSERT INTO SUBD (n, name, type, firm) VALUES (numbers.nextval, 'Essbase2', '������', 'Arbor');
INSERT INTO SUBD (n, name, type, firm) VALUES (numbers.nextval, 'Orion5', '������', 'Orion');
INSERT INTO SUBD (n, name, type, firm) VALUES (numbers.nextval, 'Oracle8', '������', 'Oracle');

SELECT * FROM SUBD;

SELECT * FROM SUBD where name='&name_in';
SELECT * FROM SUBD where type='&type_in' ORDER BY &value;
SELECT * FROM SUBD where firm='&firm_in' and type='&type_in' ORDER BY &value;