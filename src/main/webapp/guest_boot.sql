show tables;

CREATE TABLE test_guestbook1(
	id INT PRIMARY KEY auto_increment, -- 방명록 글 번호
	guestName VARCHAR(20) NOT NULL,    -- 방명록 작성자
	password VARCHAR(30) NOT NULL,     -- 방명록 비밀번호
	message TEXT			   -- 방명록 글	
);

DESC test_guestbook1;

SELECT * FROM test_guestbook1;

commit;

SELECT * FROM test_guestbook1 ORDER BY id DESC limit 0,10;

SELECT count(id) FROM test_guestbook1;

INSERT INTO test_guestbook1(guestName,password,message)
SELECT guestName,password,message FROM test_guestbook1;
