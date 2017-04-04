CREATE TABLE PInfo (
	id     VARCHAR(20) NOT NULL, -- 아이디
	passwd VARCHAR(20) NOT NULL, -- 비밀번호
	pname  VARCHAR(20) NOT NULL, -- 이름
	ptel   VARCHAR(13) NULL,     -- 연락처
	paddr  VARCHAR(50) NULL,     -- 주소
	email  VARCHAR(30) NULL      -- 이메일
);

CREATE TABLE Board1 (
	bno       INTEGER      NOT NULL, -- 게시글 번호
	bcontent  VARCHAR(500) NULL,     -- 내용
	subject   VARCHAR(50)  NOT NULL, -- 제목
	readcount INTEGER      NOT NULL, -- 조회수
	bname     VARCHAR(20)  NOT NULL, -- 작성자
	del       VARCHAR(2)   NOT NULL, -- 삭제여부
	reg_date  DATE         NOT NULL  -- 작성일
);

CREATE TABLE Restaurant (
	rname  VARCHAR(20)  NOT NULL, -- 식당 이름
	rtel   VARCHAR(20)  NOT NULL, -- 식당 연락처
	kind   VARCHAR(10)  NOT NULL, -- 음식 종류
	r_info VARCHAR(500) NULL,     -- 식당 소개
	floor  INTEGER      NOT NULL, -- 식당위치(층)
	loc    VARCHAR(20)  NOT NULL, -- 식당위치(호수)
	img    VARCHAR(200) NULL      -- 식당 이미지
);

CREATE TABLE Restaurant (
	rname  VARCHAR(20)  NOT NULL, -- 식당 이름
	rtel   VARCHAR(20)  NOT NULL, -- 식당 연락처
	kind   VARCHAR(10)  NOT NULL, -- 음식 종류
	r_info VARCHAR(500) NULL,     -- 식당 소개
	floor  Nu      NOT NULL, -- 식당위치(층)
	loc    VARCHAR(20)  NOT NULL, -- 식당위치(호수)
	img    VARCHAR(200) NULL      -- 식당 이미지
);

CREATE TABLE Menu (
	menu   VARCHAR(20)  NOT NULL, -- 메뉴
	rname  VARCHAR(20)  NOT NULL, -- 식당 이름
	price  INTEGER      NOT NULL, -- 가격
	m_info VARCHAR(200) NULL      -- 메뉴 소개
);

CREATE TABLE Admin (
	a_id     VARCHAR(20) NOT NULL, -- 관리자 아이디
	a_passwd VARCHAR(20) NOT NULL  -- 관리자 비밀번호
);