'''
[프로그래머스 SQL 고득점 KIT / SELECT]
재구매가 일어난 상품과 회원 리스트 구하기
'''

-- GRUOP BY에 대한 개념, 문제 유형 숙지 필요

SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE 
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(SALES_AMOUNT) >=2 -- count 절에는 어떠한 컬럼이 와도 좋다. *을 써주어도 됨
ORDER BY USER_ID ASC, PRODUCT_ID DESC

