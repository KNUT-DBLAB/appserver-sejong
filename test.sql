

--차량 정보 입력
create table carinfo(
  `carid` INT NOT NULL AUTO_INCREMENT,
  `carnumber` varchar(9) NOT NULL,
  `phonenumber` INT NOT NULL,
primary key(carid)
);

--주차장
create table parkingslot(
slotid int not null,
carid INT NOT NULL,
slotstatus int not null,
linkid int not null,
  `x1` DECIMAL(13,10) NOT NULL,
  `y1` DECIMAL(13,10) NOT NULL,
  `x2` DECIMAL(13,10) NOT NULL,
  `y2` DECIMAL(13,10) NOT NULL,
  `x3` DECIMAL(13,10) NOT NULL,
  `y3` DECIMAL(13,10) NOT NULL,
  `x4` DECIMAL(13,10) NOT NULL,
  `y4` DECIMAL(13,10) NOT NULL,
primary key (slotid),
foreign key (carid)
 references carinfo(carid)
);

--위치정보저장
create table locinfo(
  `carid` INT NOT NULL,
  `time` DATETIME NOT NULL,
  `movex` DECIMAL(13,10) NOT NULL,
  `movey` DECIMAL(13,10) NOT NULL,
  `carstatus` INT NOT NULL,
PRIMARY KEY (carid, time)
);

--세션
-- 주자중 0 주차완료 1
create table session(
`carid` int not null,
`parking_start_time` DATETIME,
`pickup_start_time` DATETIME,
`parking_carstatus` int not null,
`pickup_carstatus` int not null,
primary key (carid, parking_start_time),
foreign key (carid)
 references carinfo(carid)
);

--alter table locinfo column time default current_timestamp;
--alter table session column parking_start_time default current_timestamp;

ALTER TABLE carinfo convert to charset utf8

--carinfo
INSERT INTO carinfo(carid, carnumber, phonenumber) VALUES(1, "11하1111", 01011111111);
INSERT INTO carinfo(carid, carnumber, phonenumber) VALUES(2, "22하1111", 01022222222);
INSERT INTO carinfo(carid, carnumber, phonenumber) VALUES(3, "33하1111", 01033333333);
INSERT INTO carinfo(carid, carnumber, phonenumber) VALUES(4, "44하1111", 01044444444);
INSERT INTO carinfo(carid, carnumber, phonenumber) VALUES(5, "55하1111", 01055555555);
INSERT INTO carinfo(carid, carnumber, phonenumber) VALUES(6, "66하1111", 01066666666);
INSERT INTO carinfo(carid, carnumber, phonenumber) VALUES(7, "77하1111", 01077777777);

--parkingslot
--status 0= 자리있음 1= 빈자리

INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(1, 1, 1, 1, 36.49909, 127.28329, 36.49909, 127.28328, 36.49908, 127.28329, 36.49908, 127.28328);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(2, 2, 1, 1, 36.49907, 127.28329, 36.49907, 127.28328, 36.49906, 127.28329, 36.49906, 127.28328);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(3, 3, 1, 1, 36.49905, 127.28329, 36.49905, 127.28328, 36.49904, 127.28329, 36.49904, 127.28328);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(4, 4, 0, 1, 36.49902, 127.28329, 36.49902, 127.28328, 36.49901, 127.28329, 36.49901, 127.28328);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(5, 5, 0, 1, 36.49898, 127.28329, 36.49898, 127.28328, 36.49897, 127.28329, 36.49897, 127.28328);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(6, 6, 0, 1, 36.49895, 127.28329, 36.49895, 127.28328, 36.49894, 127.28329, 36.49894, 127.28328);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(7, 7, 0, 1, 36.49891, 127.28329, 36.49891, 127.28328, 36.49890, 127.28329, 36.49890, 127.28328);


--locinfo
-- 1완료 0 이동중 2실패
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
VALUES(15, 20211220000000, 36.498300, 127.28200, 0);

INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
VALUES(18, 20211220000000, 36.498600, 127.28200, 0);


INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
VALUES(16, 20211220000000, 36.498400, 127.28200, 0);

INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
VALUES(17, 20211220000000, 36.498500, 127.28200, 0);

INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
VALUES(15, 20211220000000, 36.498300, 127.28200, 0);








--DB 데이터 랜덤하게 가져오기
--select cid from restaurant order by rand() limit 10
