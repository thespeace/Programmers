-- 코드를 입력하세요
SELECT AA.TITLE, AA.BOARD_ID, BB.REPLY_ID, BB.WRITER_ID, BB.CONTENTS, DATE_FORMAT(BB.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
  FROM USED_GOODS_BOARD AA
  JOIN USED_GOODS_REPLY BB
    ON AA.BOARD_ID = BB.BOARD_ID
 WHERE DATE_FORMAT(AA.CREATED_DATE, '%Y-%m') = '2022-10'
 ORDER BY BB.CREATED_DATE ASC, AA.TITLE ASC