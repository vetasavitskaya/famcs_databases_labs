-- триггер должен отслеживать, чтобы временные интервалы сдачи автомобиля не пересекались;
INSERT INTO rent_contracts VALUES (14, 1, 1, to_date('2021-11-02', 'yyyy-mm-dd'), to_date('2021-11-08', 'yyyy-mm-dd'), NULL, NULL, NULL, 100, NULL, 100);
INSERT INTO rent_contracts VALUES (15, 2, 1, to_date('2021-11-04', 'yyyy-mm-dd'), to_date('2021-11-08', 'yyyy-mm-dd'), NULL, NULL, NULL, 100, NULL, 100);
INSERT INTO rent_contracts VALUES (16, 3, 1, to_date('2021-11-02', 'yyyy-mm-dd'), to_date('2021-11-04', 'yyyy-mm-dd'), NULL, NULL, NULL, 100, NULL, 100);

-- триггер должен отслеживать, чтобы в аренде у одного клиента не находилось более 2-х автомобилей одновременно;
INSERT INTO rent_contracts VALUES (17, 4, 1, to_date('2021-11-09', 'yyyy-mm-dd'), to_date('2021-11-18', 'yyyy-mm-dd'), NULL, NULL, NULL, 100, NULL, 100);
INSERT INTO rent_contracts VALUES (18, 4, 2, to_date('2021-11-12', 'yyyy-mm-dd'), to_date('2021-11-18', 'yyyy-mm-dd'), NULL, NULL, NULL, 100, NULL, 100);
INSERT INTO rent_contracts VALUES (19, 4, 3, to_date('2021-11-13', 'yyyy-mm-dd'), to_date('2021-11-17', 'yyyy-mm-dd'), NULL, NULL, NULL, 100, NULL, 100);

-- триггер должен отслеживать, чтобы окончательная стоимость аренды была не менее 100 рублей;
INSERT INTO rent_contracts VALUES (20, 6, 6, to_date('2021-11-04', 'yyyy-mm-dd'), to_date('2021-11-08', 'yyyy-mm-dd'), NULL, NULL, NULL, 80, NULL, 80);
INSERT INTO rent_contracts VALUES (21, 7, 7, to_date('2021-11-04', 'yyyy-mm-dd'), to_date('2021-11-08', 'yyyy-mm-dd'), NULL, NULL, NULL, 100, NULL, 100);
INSERT INTO rent_contracts VALUES (22, 8, 8, to_date('2021-11-04', 'yyyy-mm-dd'), to_date('2021-11-08', 'yyyy-mm-dd'), NULL, NULL, NULL, 120, NULL, 120);
