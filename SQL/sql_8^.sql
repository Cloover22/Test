'''
[프로그래머스 SQL 고득점 KIT / SELECT]
대장균들의 자식의 수 구하기 -> LV3 

**
주어진 테이블은 하나 였지만,
GROUP BY를 활용하여 얻은 결과를 두번째 테이블로 생각하여
새로 생성된 테이블과 LEFT JOIN을 시킨 후,
COALESCR 함수를 사용하여 NULL 값을 0으로 처리하는 문제

'''

SELECT A.ID, COALESCE(B.COUNT, 0) AS CHILD_COUNT
FROM ECOLI_DATA AS A
LEFT JOIN(
    SELECT PARENT_ID, COUNT(*) AS COUNT
    FROM ECOLI_DATA AS A
    GROUP BY PARENT_ID
    HAVING PARENT_ID is not null
    ) AS B
ON A.ID = B.PARENT_ID