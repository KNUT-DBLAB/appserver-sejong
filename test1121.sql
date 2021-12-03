

--차량 정보 입력
create table carinfo(
  `carid` INT NOT NULL AUTO_INCREMENT,
  `carnumber` varchar(9) NOT NULL,
  `phonenumber` INT NOT NULL,
  `ip` varchar(20),
  `port` int,
primary key(carid)
);

--주차장
--parkingslot
--slotstatus  자리있음 0 빈자리 1
create table parkingslot(
slotid int not null,
carid int,
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
primary key (slotid)
);

--위치정보저장
--carstatus 주차중 0 주차완료 1 주차실패 2
--에서 밑에꺼로 변경
--carstatus 주차실패 0 주차완료 1 주차중 2
create table locinfo(
  `carid` INT NOT NULL,
  `time` DATETIME NOT NULL,
  `movex` DECIMAL(13,10) NOT NULL,
  `movey` DECIMAL(13,10) NOT NULL,
  `carstatus` INT NOT NULL,
PRIMARY KEY (carid, time)
);


--픽업 위치 테이블
create table pickuploc(
pid int not null,
  `PickupStatus` int Not NULL,
  `x1` DECIMAL(13,10) NOT NULL,
  `y1` DECIMAL(13,10) NOT NULL,
  `x2` DECIMAL(13,10) NOT NULL,
  `y2` DECIMAL(13,10) NOT NULL,
  `x3` DECIMAL(13,10) NOT NULL,
  `y3` DECIMAL(13,10) NOT NULL,
  `x4` DECIMAL(13,10) NOT NULL,
  `y4` DECIMAL(13,10) NOT NULL,
primary key (pid)
);


--pickuploc
INSERT INTO pickuplot(pid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(1, 36.498904, 127.281948, 36.498922, 127.281995, 36.498939, 127.281984, 36.498920, 127.281940);
INSERT INTO pickuplot(pid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(2, 36.497787, 127.283348, 36.497801, 127.283394, 36.497820, 127.283383, 36.497806, 127.283340);

-- --픽업 이동 테스트 데이터
-- --carstatus 주차실패 0 주차완료 1 주차중 2
-- create table pickuping(
--   `x1` DECIMAL(13,10) NOT NULL,
--   `y1` DECIMAL(13,10) NOT NULL,
--   `status` int not null
-- );

-- insert into pickuping(x1, y1, status) values(36.4982, 127.28259, 2);
-- insert into pickuping(x1, y1, status) values(36.49856, 127.2830, 2);
-- insert into pickuping(x1, y1, status) values(36.4979, 127.2838, 2);
-- insert into pickuping(x1, y1, status) values(36.4979, 127.284, 1);


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
INSERT INTO carinfo(carid, carnumber, phonenumber) VALUES(8, "77하1111", 01088888888);
INSERT INTO carinfo(carid, carnumber, phonenumber) VALUES(9, "77하1111", 01099999999);
INSERT INTO carinfo(carid, carnumber, phonenumber) VALUES(10, "77하1111", 01011111111);
INSERT INTO carinfo(carid, carnumber, phonenumber) VALUES(99, "99하9999", 01099999999);
--parkingslot
--status 0= 자리있음 1= 빈자리

INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(1, 99, 0, 1, 36.49801, 127.282085, 36.498039, 127.282049, 36.498023, 127.282029, 36.497994, 127.282065);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(2, 99, 0, 2, 36.498099, 127.282295, 36.498071, 127.28233, 36.498087, 127.28235,36.498115, 127.282315);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(3, 99, 0, 3, 36.498233, 127.282362, 36.498262, 127.282326, 36.498246, 127.282306, 36.498217, 127.282342);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(4, 99, 0, 4, 36.498389, 127.282725, 36.498418, 127.28269, 36.498433, 127.282709, 36.498405, 127.282745);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(5, 99, 0, 5, 36.498582, 127.282722, 36.498553, 127.282759, 36.498537, 127.282739, 36.498566, 127.282703);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(6, 99, 0, 6, 36.498866, 127.283073, 36.498837, 127.28311, 36.49882, 127.28309, 36.49885, 127.283053);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(7, 99, 0, 7, 36.498817, 127.283254, 36.498801, 127.283234, 36.498829, 127.283199, 36.498845, 127.283219);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(8, 99, 0, 8, 36.498819, 127.283357, 36.498791, 127.283392, 36.498777, 127.283374, 36.498804, 127.283339);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(9, 99, 0, 9, 36.498446, 127.282893, 36.498418, 127.282928, 36.498402, 127.282908, 36.498429, 127.282873);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(10, 99, 0, 10, 36.4982, 127.28259, 36.498173, 127.282625, 36.498157, 127.282606, 36.498185, 127.282571);

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
