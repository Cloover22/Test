'''
[프로그래머스 SQL 고득점 KIT / JOIN]
상품 별 오프라인 매출 구하기

-> JOIN + GROUP BY 문제
: GROUP BY는 일반적으로 집계함수와 같이 쓰인다.
'''

SELECT A.PRODUCT_CODE AS PRODUCT_CODE, SUM(B.SALES_AMOUNT * A.PRICE) AS SALES
FROM PRODUCT AS A
JOIN OFFLINE_SALE AS B
ON A.PRODUCT_ID = B.PRODUCT_ID
GROUP BY A.PRODUCT_ID
ORDER BY SALES DESC, PRODUCT_CODE ASC