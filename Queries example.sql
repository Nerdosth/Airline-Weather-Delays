select 
s.state, 
avg(dd.weather_delay) as avg_delay, 
count(dd.id) as num_flight
from 
delay_data dd
join airport a on dd.airport_id = a.airport_id
join state s on s.state_id = a.state_id
group by 
s.state 
order by 
avg_delay desc;

select 
c.carrier_name, 
avg(dd.weather_delay) as avg_delay, 
count(dd.id) as num_flight
from 
delay_data dd
join carrier c on c.carrier_id = dd.carrier_id
group by 
c.carrier_name 
order by 
avg_delay desc