--------------------- insert renters ---------------------
-- RENTER_ID, SURNAME, NAME, PATRONYMIC, ADRESS, PASSPORT_ID, DRIVERS_LICENSE
INSERT INTO renters VALUES (1, 'Иванов', 'Иван', 'Иванович', 'Ивановская ул. 1-1, г. Минск', '7637905A001PB1', '000001');
INSERT INTO renters VALUES (2, 'Петров', 'Пётр', 'Петрович', 'Петровская ул. 1-2, г. Минск', '7637905A002PB1', '000002');
INSERT INTO renters VALUES (3, 'Александров', 'Александр', 'Александрович', 'Александровская ул. 1-3, г. Минск', '7637905A003PB1', '000003');
INSERT INTO renters VALUES (4, 'Васильев', 'Василий', 'Васильевич', 'Васильевская ул. 1-4, г. Минск', '7637905A004PB1', '000004');
INSERT INTO renters VALUES (5, 'Кузьмин', 'Кузьма', 'Кузьмич', 'Кузьминовская ул. 1-5, г. Минск', '7637905A005PB1', '000005');
INSERT INTO renters VALUES (6, 'Матвеев', 'Матвей', 'Матвеевич', 'Матвеевская ул. 1-6, г. Минск', '7637905A006PB1', '000006');
INSERT INTO renters VALUES (7, 'Максимов', 'Максим', 'Максимович', 'Максимовская ул. 1-7, г. Минск', '7637905A007PB1', '000007');
INSERT INTO renters VALUES (8, 'Сергеев', 'Сергей', 'Сергеевич', 'Сергеевская ул. 1-8, г. Минск', '7637905A008PB1', '000008');
INSERT INTO renters VALUES (9, 'Константинов', 'Константин', 'Константинович', 'Константиновская ул. 1-10, г. Минск', '7637905A010PB1', '000010');
INSERT INTO renters VALUES (10, 'Ильин', 'Илья', 'Ильич', 'Ильичевская ул. 1-11, г. Минск', '7637905A011PB1', '000011');
COMMIT;

--------------------- insert cars ---------------------
-- CAR_ID, MODEL, ENGINE_VOLUME, TYPE_OF_FUEL, LICENSE_PLATE, VEHICLE_NUMBER
INSERT INTO cars VALUES (1, 'fiesta', 1.6, 'benzine', '0001AB-7', 'WF05XXGBB51B40001');
INSERT INTO cars VALUES (2, 'focus', 1.8, 'diesel', '0002AB-7', 'WF05XXGBB51B40002');
INSERT INTO cars VALUES (3, 'mondeo', 2.0, 'benzine', '0003AB-7', 'WF05XXGBB51B40003');
INSERT INTO cars VALUES (4, 'transit', 2.5, 'diesel', '0004AB-7', 'WF05XXGBB51B40004');
INSERT INTO cars VALUES (5, 'mondeo', 2.0, 'benzine', '0005AB-7', 'WF05XXGBB51B40005');
INSERT INTO cars VALUES (6, 'focus', 1.8, 'diesel', '0006AB-7', 'WF05XXGBB51B40006');
INSERT INTO cars VALUES (7, 'fiesta', 1.6, 'benzine', '0007AB-7', 'WF05XXGBB51B40007');
INSERT INTO cars VALUES (8, 'focus', 1.8, 'diesel', '0008AB-7', 'WF05XXGBB51B40008');
INSERT INTO cars VALUES (9, 'mondeo', 2.0, 'benzine', '0009AB-7', 'WF05XXGBB51B40009');
INSERT INTO cars VALUES (10, 'transit', 2.5, 'diesel', '0010AB-7', 'WF05XXGBB51B40010');
INSERT INTO cars VALUES (11, 'mondeo', 2.0, 'benzine', '0011AB-7', 'WF05XXGBB51B40011');
INSERT INTO cars VALUES (12, 'focus', 1.8, 'diesel', '0012AB-7', 'WF05XXGBB51B40012');
INSERT INTO cars VALUES (13, 'fiesta', 1.6, 'benzine', '0013AB-7', 'WF05XXGBB51B40013');
COMMIT;

--------------------- insert rent contracts ---------------------
-- CONTRACT_ID, RENTER_ID NUMBER, CAR_ID, RENT_STARTING_DATE, ENT_ENDING_DATE, 
-- SURNAME_OF_SECOND_DRIVER, NAME_OF_SECOND_DRIVER, PATRONYMIC_OF_SECOND_DRIVER, RENT_COST, DISCOUNT, FINAL_COST
INSERT INTO rent_contracts VALUES (1, 1, 1, to_date('2021-10-01', 'yyyy-mm-dd'), to_date('2021-10-10', 'yyyy-mm-dd'), 'Петров', 'Пётр', 'Петрович', 90, NULL, 94.5);
INSERT INTO rent_contracts VALUES (2, 2, 2, to_date('2021-10-02', 'yyyy-mm-dd'), to_date('2021-10-09', 'yyyy-mm-dd'), NULL, NULL, NULL, 70, NULL, 70);
INSERT INTO rent_contracts VALUES (3, 3, 3, to_date('2021-10-03', 'yyyy-mm-dd'), to_date('2021-10-08', 'yyyy-mm-dd'), 'Васильев', 'Василий', 'Васильевич', 50, NULL, 52.5);
INSERT INTO rent_contracts VALUES (4, 4, 4, to_date('2021-10-04', 'yyyy-mm-dd'), to_date('2021-10-07', 'yyyy-mm-dd'), NULL, NULL, NULL, 30, NULL, 30);
INSERT INTO rent_contracts VALUES (5, 5, 5, to_date('2021-10-05', 'yyyy-mm-dd'), to_date('2021-10-06', 'yyyy-mm-dd'), NULL, NULL, NULL, 10, NULL, 10);
INSERT INTO rent_contracts VALUES (6, 6, 6, to_date('2021-10-06', 'yyyy-mm-dd'), to_date('2021-10-10', 'yyyy-mm-dd'), NULL, NULL, NULL, 40, NULL, 40);
INSERT INTO rent_contracts VALUES (7, 7, 7, to_date('2021-10-07', 'yyyy-mm-dd'), to_date('2021-10-13', 'yyyy-mm-dd'), 'Максимов', 'Максим', 'Максимович', 60, NULL, 63);
INSERT INTO rent_contracts VALUES (8, 8, 8, to_date('2021-10-08', 'yyyy-mm-dd'), to_date('2021-10-16', 'yyyy-mm-dd'), 'Константинов', 'Константин', 'Константинович', 80, NULL, 84);
INSERT INTO rent_contracts VALUES (9, 9, 9, to_date('2021-10-09', 'yyyy-mm-dd'), to_date('2021-10-22', 'yyyy-mm-dd'), NULL, NULL, NULL, 130, NULL, 130);
INSERT INTO rent_contracts VALUES (10, 10, 10, to_date('2021-10-10', 'yyyy-mm-dd'), to_date('2021-10-28', 'yyyy-mm-dd'), NULL, NULL, NULL, 180, NULL, 180);
COMMIT;

--------------------- insert permanent renters discounts ---------------------
-- RENTER_ID, DISCOUNT_ASSIGN_DATE
INSERT INTO permanent_renters_discounts VALUES (1, to_date('2021-10-01', 'yyyy-mm-dd'));
INSERT INTO permanent_renters_discounts VALUES (2, to_date('2021-10-02', 'yyyy-mm-dd'));
INSERT INTO permanent_renters_discounts VALUES (3, to_date('2021-10-03', 'yyyy-mm-dd'));
INSERT INTO permanent_renters_discounts VALUES (4, to_date('2021-10-04', 'yyyy-mm-dd'));
INSERT INTO permanent_renters_discounts VALUES (5, to_date('2021-10-05', 'yyyy-mm-dd'));
INSERT INTO permanent_renters_discounts VALUES (6, to_date('2021-10-06', 'yyyy-mm-dd'));
INSERT INTO permanent_renters_discounts VALUES (7, to_date('2021-10-07', 'yyyy-mm-dd'));
INSERT INTO permanent_renters_discounts VALUES (8, to_date('2021-10-08', 'yyyy-mm-dd'));
INSERT INTO permanent_renters_discounts VALUES (9, to_date('2021-10-09', 'yyyy-mm-dd'));
INSERT INTO permanent_renters_discounts VALUES (10, to_date('2021-10-10', 'yyyy-mm-dd'));
COMMIT;

--------------------- insert rent contracts ---------------------
INSERT INTO rent_contracts VALUES (11, 1, 6, to_date('2021-10-13', 'yyyy-mm-dd'), to_date('2021-10-20', 'yyyy-mm-dd'), NULL, NULL, NULL, 70, 3, 67.9);
INSERT INTO rent_contracts VALUES (12, 8, 2, to_date('2021-10-20', 'yyyy-mm-dd'), to_date('2021-10-30', 'yyyy-mm-dd'), 'Петров', 'Пётр', 'Петрович', 100, 3, 101.85);
INSERT INTO rent_contracts VALUES (13, 10, 4, to_date('2021-10-18', 'yyyy-mm-dd'), to_date('2021-10-28', 'yyyy-mm-dd'), 'Александров', 'Александр', 'Александрович', 100, 3, 101.85);
COMMIT;

--------------------- insert payments ---------------------
-- PAYMENT_ID, RENTER_ID, CONTRACT_ID, DATE_OF_PAYMENT
INSERT INTO payments VALUES (1, 1, 1, to_date('2021-10-01', 'yyyy-mm-dd'));
INSERT INTO payments VALUES (2, 2, 2, to_date('2021-10-02', 'yyyy-mm-dd'));
INSERT INTO payments VALUES (3, 3, 3, to_date('2021-10-03', 'yyyy-mm-dd'));
INSERT INTO payments VALUES (4, 4, 4, to_date('2021-10-04', 'yyyy-mm-dd'));
INSERT INTO payments VALUES (5, 5, 5, to_date('2021-10-05', 'yyyy-mm-dd'));
INSERT INTO payments VALUES (6, 6, 6, to_date('2021-10-06', 'yyyy-mm-dd'));
INSERT INTO payments VALUES (7, 7, 7, to_date('2021-10-07', 'yyyy-mm-dd'));
INSERT INTO payments VALUES (8, 8, 8, to_date('2021-10-08', 'yyyy-mm-dd'));
INSERT INTO payments VALUES (9, 9, 9, to_date('2021-10-09', 'yyyy-mm-dd'));
INSERT INTO payments VALUES (10, 10, 10, to_date('2021-10-10', 'yyyy-mm-dd'));
INSERT INTO payments VALUES (11, 1, 11, to_date('2021-10-13', 'yyyy-mm-dd'));
INSERT INTO payments VALUES (12, 8, 12, to_date('2021-10-20', 'yyyy-mm-dd'));
INSERT INTO payments VALUES (13, 10, 13, to_date('2021-10-18', 'yyyy-mm-dd'));
COMMIT;