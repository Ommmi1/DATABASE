SELECT DISTINCT BNAME FROM BOATS;

SELECT COUNT(BID) FROM BOATS;

SELECT SNAME FROM SAILORS WHERE AGE < 20.0;

SELECT S.sname
FROM Sailors S, Reserves R, Boats B
WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'Blue';

SELECT sname FROM sailors
WHERE sid in(SELECT sid FROM RESERVES
WHERE bid in (SELECT bid FROM BOATS 
WHERE day BETWEEN TO_DATE('09/08/98', 'dd/mm/yy') AND TO_DATE('10/08/98', 'dd/mm/yy')));

select SNAME
from SAILORS LEFT JOIN RESERVES ON
SAILORS.SID=RESERVES.SID
WHERE RESERVES.SID IS NULL;





SELECT sname FROM SAILORS 
WHERE sid NOT IN (SELECT sid FROM RESERVES R, BOATS B WHERE r.bid=b.bid);


SELECT bname AS "Boat Name" FROM BOATS 
WHERE bid NOT IN (SELECT bid FROM RESERVES R, SAILORS S WHERE r.sid=s.sid);
 



