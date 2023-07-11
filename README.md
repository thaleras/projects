# 1 - Business Problem

Gamers Club (aka GC) is a game platform that allow users to play games like online via freemium business model. Basically, the user can play for free, 
but to be elegile to gain badges,skills and benefits on the games they need to be subscribed. Thinking about the subscriptions as the main revenue stream of the company,
the CEO of GC asked me as a data analyst to give more visibility about the subscriptions in order to estabilish a base for future decisions to deal with the churn of customers.

Thinking about deliverying a quick result to the board, I selected data from sep/2021 to feb/2022 of Counter Striker's games as a test to prototype a first solution to be
scalable in a second moment. To address the analysis, there is data warehouse containing tables which compreend data about players id, lobby id, game stats that can be relevant
to understand the behavior of gamers that holds gc subscriptions.

The schema of tables and its relations goes as follows in the below image:

![image](https://github.com/thaleras/gc_project/assets/79552263/aa7fe90b-aa53-4d09-a31a-2b10b0c6546b)

tb_lobby_stats_player: carries data about the stats of each game such as the map where the match was played, number of deaths, number of rounds played, id of lobby, etc.
tb_players: carries data about about players such as date of registration, date of birth, country, id.
tb_players_medalha: carries data about medals earned in the game such as date of creation, date of expiration, id.
tb_medalha: carries data about each medal existent in the game such as description, type and id.

# 2 - Premises

The analysis considered data from sep/2021 to feb/2022.
The assumed business model is a free-to-play (F2P).
The game selected for this analysis is Counter Strike.
The solution is focused on create an Analytical Base Table with the necessary features to build insights about subscriptions behavior in Counter Strike users, as well as the ETL to automatize its functionality and make it scalable.
The table will register data of a 30 day window to give an idea of CS gamers subscriptions behavior in the last 30 days.

# 3 - Solution Strategy

Development of the ABT called tb_book_players contaning features like: player stats, lobby data, medal data.
Development of the ETL in python to feed the sql table using libs like sqlalchemy, tqdm and datetime.

# 4 - Final Product
A Table loaded in the dw which features that can be used for churn analysis and the ETL behind it.

# 5 - Conclusion
The goal of the project was met and the ABT was created with features that will give the compreenhension about CS gamers behavior.

# 6 - Next Steps

Next steps for the solutions include the development of ML solutions to predict future subscriptions and development of ABT and ML for other products of the company as well.

1 - Business Problem
Gamers Club (aka GC) is a game platform that allows users to play games online using a freemium business model. Users can play for free, but in order to gain badges, skills, and benefits in the games, they need to subscribe. The CEO of GC has asked me, as a data analyst, to provide more visibility into the subscriptions to establish a foundation for future decisions and address customer churn.

To deliver quick results to the board, I selected data from September 2021 to February 2022 for the game Counter Strike as a test to prototype an initial scalable solution. For the analysis, there is a data warehouse containing tables that include data about player IDs, lobby IDs, and game stats, which are relevant for understanding the behavior of gamers who hold GC subscriptions.

The schema of tables and their relations can be seen in the image below:

image

tb_lobby_stats_player: Contains data about game stats such as the map where the match was played, number of deaths, number of rounds played, and lobby ID.
tb_players: Contains data about players such as date of registration, date of birth, country, and player ID.
tb_players_medalha: Contains data about medals earned in the game such as date of creation, date of expiration, and medal ID.
tb_medalha: Contains data about each existing medal in the game, including description, type, and medal ID.

2 - Premises
The analysis considered data from September 2021 to February 2022.
The assumed business model is free-to-play (F2P).
The selected game for this analysis is Counter Strike.
The solution aims to create an Analytical Base Table (ABT) with the necessary features to gain insights into subscription behavior among Counter Strike users. Additionally, an ETL process will be developed to automate the functionality of the ABT and make it scalable. The table will record data from a 30-day window to provide an understanding of CS gamers' subscription behavior in the last 30 days.

3 Solution Strategy
The solution involves:

Developing the ABT named tb_book_players, which will contain features such as player stats, lobby data, and medal data.
Developing an ETL process in Python, utilizing libraries like SQLAlchemy, tqdm, and datetime, to populate the SQL table.
4 Final Product
The final product is a table loaded in the data warehouse, containing features that can be used for churn analysis, along with the ETL process behind it.

5 Conclusion
The project successfully achieved its goal, as the ABT was created with features that provide a comprehensive understanding of CS gamers' behavior.

6 Next Steps
The next steps for the solution include developing machine learning (ML) models to predict future subscriptions and expanding the ABT and ML solutions to other products offered by the company.






