# Write your MySQL query statement below

select a.name, coalesce(sum(b.distance),0) as travelled_distance
from users a left join rides b 
on a.id = b.user_id group by a.id, a.name order by travelled_distance desc, a.name asc;
