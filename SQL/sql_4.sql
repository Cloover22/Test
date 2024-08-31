'''
[프로그래머스 SQL 고득점 KIT / SELECT]
12세 이하인 여자 환자 목록 출력하기
'''

'''
특정 컬럼에서 null 값이 있을 때 다른 값을 출력하려고 할때 필요한 case 문 -> ifnull로 대체 가능
'''
SELECT PT_NAME, PT_NO, GEND_CD, AGE,
    CASE 
        WHEN TLNO is null THEN 'NONE'
        ELSE TLNO
    END AS TLNO
FROM PATIENT
WHERE GEND_CD = 'W' AND AGE <= 12
ORDER BY AGE DESC, PT_NAME ASC

-- 2번 풀이
    -- ifnull 함수를 써도 된다고함
SELECT PT_NAME, PT_NO, GEND_CD, AGE, ifnull(TLNO, 'NONE') AS TLNO
FROM PATIENT
WHERE GEND_CD = 'W' AND AGE <= 12
ORDER BY AGE DESC, PT_NAME ASC