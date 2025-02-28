**Olympic Database: ERD**

![image](https://github.com/user-attachments/assets/512c48a4-2232-44ed-9a41-f997199cd06e)

**It contains about 260,000 separate results for competitors at all events since 1896, including both summer and winter Olympics. It has all the results: not only the medals but those who competed and did not win a medal. All events for each sport are included.**

**Table Explanations**
**Sport**
This table contains a list of all sports in the Olympics: both summer sports and winter sports.

**Event**
The event table contains all of the different events for each sport. For example, if a sport is “Alpine Skiing”, then an event is “1KM Men’s Alpine Skiing”. There are multiple events per sport, and events are split into Men, Women, and Mixed.

**City**
This represents a list of many of the cities in the world.

**Games**
The games table lists all of the Olympic Games since 1896m, the year they were held, and whether they were Summer or Olympic games.

Looking at this data, I learned that the Summer and Winter Olympics used to be in the same year. I’ve only ever known them to be in alternating years.

**Games City**
This table shows all of the cities for each Olympic games. This is a joining table between games and city.

Why do we need a joining table? Aren’t the Olympics always in one city?

Well, as I was compiling this data, I got some duplicate rows in my results. I traced this back to a particular set of events for one Olympics. It turns out that in 1956, the Summer Olympics was in Melbourne for most of the events, but due to Australia’s strict horse quarantine rules, they couldn’t bring the horses for the equestrian events. So they performed all of the Equestrian events in Stockholm earlier in 1956.

So, the 1956 Olympics was in both Melbourne and Stockholm.

I didn’t realise this was the case until I looked at the data.

It’s a good lesson: we shouldn’t assume we know how data is structured until we look at the details.

**NOC Region**
This contains a list of NOC (National Olympic Committee) codes and their names. This translates roughly to a country that competes in the Olympics.

**Person**
This table lists all people that have competed in an Olympic games. It has their name, gender, height (in CM) and weight (in KG). The height and weight did not differ between Olympic games. If it did, it would have been stored in a different table.

**Person Region**
This is a joining table that lists all people and the NOC regions (countries) they competed for. This captures the fact that some people competed for more than one country, which is another scenario I didn’t realise until I looked at the data.

**Games Competitor**
This table is a joining table that relates a person to an Olympic games, which shows who competed what each Olympic games.

**Medal**
This small table lists the different medals available: Gold, Silver, Bronze, and N/A.

**Competitor Event**
This table lists the combination of competitors (the people and the games they competed in), the event they competed in, and the medal (if any) they received. This is the largest table.


**Sample Query**
With the sample data in the database, let’s take a look at a sample query. This query shows the people who have won the most medals of any type (Gold, Silver, Bronze) at the Olympic Games.

SELECT
p.id,
p.full_name,
COUNT(*)
FROM person p
INNER JOIN games_competitor gc ON p.id = gc.person_id
INNER JOIN competitor_event ce ON gc.id = ce.competitor_id
INNER JOIN medal m ON ce.medal_id = m.id
WHERE medal_name IN ('Gold', 'Silver', 'Bronze')
GROUP BY p.id, p.full_name
ORDER BY COUNT(*) DESC;

_Results (top 20):_

![image](https://github.com/user-attachments/assets/4669765e-1ea0-4423-be6f-f6889b61c38e)

**Errors**
#1153 - Got a packet bigger than 'max_allowed_packet' bytes
Procedure to resolve above error is to:
- Step-01: Go to Xampp control pannel and click on config button in MYSQL module.
- Step-02: Open my.ini file.
- Step-03: Find for 'max_allowed_packet'.
- Step-04: Set 'max_allowed_packet' is 50M.
- Step-05: Save it.
- Step-06: Now enter the below query to check the database size - 'show variables like 'max_allowed_packet'.
