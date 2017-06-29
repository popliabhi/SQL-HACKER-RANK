
SELECT h.hacker_id, h.name, sum(temp.scr) as total FROM Hackers h, 
    (
        SELECT s.hacker_id as id, 
        s.challenge_id as ch_id, 
        max(s.score) as scr
        FROM Submissions s
        GROUP BY s.hacker_id,s.challenge_id
        having scr > 0
    ) AS temp
WHERE h.hacker_id = temp.id
GROUP BY h.hacker_id,h.name
ORDER BY total DESC, h.hacker_id;