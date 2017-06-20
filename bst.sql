select N, case
when P is NULL then 'Root'

when P is not NULL then 
 if ((SELECT COUNT(*) FROM BST WHERE P=B.N)>0,'Inner','Leaf')
 
 end
 from BST B order by N;