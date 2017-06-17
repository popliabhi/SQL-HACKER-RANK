/*
Enter your query here.
*/
/*select * from TRIANGLES;*/

SELECT  
CASE WHEN A+B>C AND B+C>A AND A+C>B THEN 
CASE
            WHEN A=B AND B=C THEN 'Equilateral'
            WHEN A=B or A=C OR B=C THEN 'Isosceles'
            WHEN A<>B AND B<>C THEN 'Scalene'
        END
        ELSE
        'Not A Triangle'
         END
    

FROM TRIANGLES