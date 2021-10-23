-- вывести список автомобилей арендованных конкретным клиентов (имя клиента – параметр запроса);
SELECT * FROM cars
WHERE cars.car_id IN (SELECT car_id
    FROM rent_contracts
    WHERE rent_contracts.renter_id IN (SELECT renter_id
        FROM renters 
        WHERE renters.surname = 'Ильин' AND renters.name = 'Илья' AND renters.patronymic = 'Ильич'));
        
-- вывести список автомобилей свободных в настоящий момент;
SELECT * FROM cars
WHERE cars.car_id NOT IN (SELECT car_id
    FROM rent_contracts
    WHERE CURRENT_DATE BETWEEN rent_contracts.rent_starting_date AND rent_contracts.rent_ending_date);

-- вывести три договора имеющих самые длительные сроки аренды автомобиля.
SELECT * FROM rent_contracts ORDER BY ROUND(rent_contracts.rent_starting_date - rent_contracts.rent_ending_date) FETCH FIRST 3 ROWS ONLY;
