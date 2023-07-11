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
The solution is focused on create an Analytical Base Table with the necessary features to build insights about subscriptions behavior in Counter Strike users, as well 
as the ETL to automatize its functionality and make it scalable.


# 3 Solution Strategy
- Main metrics in the ABT.

# 4 Insights (top 3)
Results

# 5 Final Product
A Table loaded in the dw which features that can be used for churn analysis and the ETL behind it.

# 6 Conclusion

# 7 Next Steps
