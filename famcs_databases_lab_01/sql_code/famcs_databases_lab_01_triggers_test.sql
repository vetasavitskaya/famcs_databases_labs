-- создали орендатора для тестирования триггеров
-- INSERT INTO renters VALUES (14, 'Trigger Test', 'Trigger Test', 'Trigger Test', 'Trigger Test', '7637905A014PB1', '000014');

-- триггер должен отслеживать, чтобы временные интервалы сдачи автомобиля не пересекались;
--INSERT INTO rent_contracts VALUES (14, 4, 1, to_date('2021-10-28', 'yyyy-mm-dd'), to_date('2021-11-08', 'yyyy-mm-dd'), NULL, NULL, NULL, 100, NULL, 100);
--INSERT INTO rent_contracts VALUES (15, 8, 1, to_date('2021-10-22', 'yyyy-mm-dd'), to_date('2021-11-09', 'yyyy-mm-dd'), NULL, NULL, NULL, 100, NULL, 100);

-- триггер должен отслеживать, чтобы в аренде у одного клиента не находилось более 2-х автомобилей одновременно;
-- INSERT INTO rent_contracts VALUES (16, 14, 1, to_date('2021-10-28', 'yyyy-mm-dd'), to_date('2021-11-08', 'yyyy-mm-dd'), NULL, NULL, NULL, 100, NULL, 100);
-- INSERT INTO rent_contracts VALUES (17, 14, 3, to_date('2021-10-29', 'yyyy-mm-dd'), to_date('2021-11-07', 'yyyy-mm-dd'), NULL, NULL, NULL, 100, NULL, 100);
-- INSERT INTO rent_contracts VALUES (18, 14, 5, to_date('2021-10-28', 'yyyy-mm-dd'), to_date('2021-11-18', 'yyyy-mm-dd'), NULL, NULL, NULL, 100, NULL, 100);

-- триггер должен отслеживать, чтобы окончательная стоимость аренды была не менее 100 рублей;
-- INSERT INTO rent_contracts VALUES (19, 14, 11, to_date('2021-10-28', 'yyyy-mm-dd'), to_date('2021-10-29', 'yyyy-mm-dd'), NULL, NULL, NULL, 10, NULL, 10);