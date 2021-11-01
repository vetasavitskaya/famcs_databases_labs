-- триггер должен отслеживать, чтобы временные интервалы сдачи автомобиля не пересекались;
CREATE OR REPLACE TRIGGER rent_contracts_rent_intervals_check
BEFORE INSERT OR UPDATE OR DELETE ON rent_contracts
FOR EACH ROW
DECLARE
    number_of_rents INTEGER;
BEGIN
    SELECT COUNT(*) into number_of_rents FROM rent_contracts
        WHERE car_id = :new.car_id AND ((:new.rent_starting_date BETWEEN rent_starting_date AND rent_ending_date)
            OR (:new.rent_ending_date BETWEEN rent_starting_date AND rent_ending_date)
            OR (rent_ending_date BETWEEN :new.rent_starting_date AND :new.rent_ending_date)
            OR (rent_ending_date BETWEEN :new.rent_starting_date AND :new.rent_ending_date)
            OR (rent_starting_date = :new.rent_starting_date)
            OR (rent_ending_date = :new.rent_ending_date));
    IF number_of_rents > 1
    THEN RAISE_APPLICATION_ERROR(-20001, 'Временные интервалы сдачи автомобиля не должны пересекаться !');
    END IF;
END;

-- триггер должен отслеживать, чтобы в аренде у одного клиента не находилось более 2-х автомобилей одновременно;
CREATE OR REPLACE TRIGGER rent_contracts_renters_cars_check
BEFORE INSERT OR UPDATE OR DELETE ON rent_contracts
FOR EACH ROW
DECLARE
    number_of_cars INTEGER;
BEGIN
    SELECT COUNT(*) into number_of_cars FROM rent_contracts
        WHERE renter_id = :new.renter_id AND ((:new.rent_starting_date BETWEEN rent_starting_date AND rent_ending_date)
            OR (:new.rent_ending_date BETWEEN rent_starting_date AND rent_ending_date)
            OR (rent_ending_date BETWEEN :new.rent_starting_date AND :new.rent_ending_date)
            OR (rent_ending_date BETWEEN :new.rent_starting_date AND :new.rent_ending_date)
            OR (rent_starting_date = :new.rent_starting_date)
            OR (rent_ending_date = :new.rent_ending_date));
    IF number_of_cars >= 2
    THEN RAISE_APPLICATION_ERROR(-20001, 'В аренде у одного клиента не может находиться более 2-х автомобилей одновременно !');
    END IF;
END;

-- триггер должен отслеживать, чтобы окончательная стоимость аренды была не менее 100 рублей;
CREATE OR REPLACE TRIGGER rent_contracts_final_cost_check
BEFORE INSERT OR UPDATE ON rent_contracts
FOR EACH ROW
BEGIN
  IF (:new.final_cost < 100)
  THEN RAISE_APPLICATION_ERROR(-20998, 'Окончательная стоимость аренды составляет менее 100 рублей !');
  END IF;
END;