'''
[프로그래머스 SQL 고득점 KIT / JOIN]
주문량이 많은 아이스크림들 조회하기

-> SUBQUERY + UNION 문제
: UNION : 쿼리 결과의 중복값을 제거해서 결합
  UNION ALL : 쿼리 결과의 중복값을 제거 X 결합
'''

SELECT A.FLAVOR
FROM(
    SELECT * FROM FIRST_HALF 
    UNION ALL
    SELECT * FROM JULY
    ) AS A
GROUP BY A.FLAVOR
ORDER BY SUM(TOTAL_ORDER) DESC
LIMIT 3

SELECT B.FLAVOR
FROM(
    SELECT A.FLAVOR, SUM(TOTAL_ORDER) AS TOTAL_ORDER
    FROM(
        SELECT * FROM FIRST_HALF 
        UNION ALL
        SELECT * FROM JULY
        ) AS A
    GROUP BY A.FLAVOR
    ) AS B
ORDER BY TOTAL_ORDER DESC
LIMIT 3