# Rent Agency Database
> I use ERwing and [StarUML](http://staruml.io/). Model saved in
> [`famcs_databases_lab_01.er1`](https://github.com/vetasavitskaya/famcs_databases_labs/blob/main/famcs_databases_lab_01/famcs_databases_lab_01.er1) - Physical schema and 
> [`famcs_databases_lab_01_er_diagram.mdj`](https://github.com/vetasavitskaya/famcs_databases_labs/blob/main/famcs_databases_lab_01/famcs_databases_lab_01_er_diagram.mdj) - Logical schema.
## tasks
- Для выполнения данной работы требуется спроектировать и создать базы данных, относящиеся к различным предметным областям.
- В процессе проектирования необходимо:
  - спроектировать схему баз данных на логическом уровне, используя для этого `CASE`-средства, обеспечить требования нормализации таблиц баз данных;
  - сформировать структуру таблиц баз данных на физическом уровне, подобрать подходящие имена таблицам и их полям.
  - студент должен представить проект базы данных, выполненный с использованием выбранного средства для проектирования.
  - 
#### Информация о турнире включает:
1. `название` турнира;
2. `участников` турнира;
3. размер `регистрационного взноса`;
4. `призовой фонд` за 1-е, 2-е и 3-е места;
5. `дату начала` и `окончания` турнира;

- `систему`, по которой играется турнир (однокруговая, двухкруговая, швейцарская
  и т.д.).

#### С ведения о сыгранных на турнире партиях включают:
1. `игроков` (следует разделять цвета фигур);
2. `дату партии`;
3. выбранный `дебют` (например, сицилианская защита);
4. `количество ходов`, которые сделали белые;
5. `результат партии`.

## selects
1. вывести список автомобилей арендованных конкретным клиентов (имя клиента – параметр запроса);
2. вывести список автомобилей свободных в настоящий момент;
3. вывести три договора имеющих самые длительные сроки аренды автомобиля;
   
### Lab 1: Rent Agency Use Case Diagram
![*Rent Agency Use Case Diagram*](https://github.com/vetasavitskaya/famcs_databases_labs/blob/main/famcs_databases_lab_01/Rent%20Agency%20Use%20Case%20Diagram.png)

### Lab 1: Rent Agency Database ER Diagram
![*Rent Agency Database ER Diagram*](https://github.com/vetasavitskaya/famcs_databases_labs/blob/main/famcs_databases_lab_01/Rent%20Agency%20Database%20ER%20Diagram.png)
