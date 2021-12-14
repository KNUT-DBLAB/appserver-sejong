

--차량 정보 입력
create table carinfo(
  `carid` INT NOT NULL AUTO_INCREMENT,
  `carnumber` varchar(9) NOT NULL,
  `phonenumber` INT NOT NULL,
  `ip` varchar(20),
  `port` int,
primary key(carid)
);

ALTER TABLE carinfo convert to charset utf8

carinfo
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

--주차장
--parkingslot
--slotstatus  자리있음 0 빈자리 1
create table parkingslot(
slotid int not null,
carid int,
slotstatus int not null,
linkid int not null,
  `parkingzone1` int not null,
  `parkingzone2` int not null,
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

--parkingslot
status 0= 자리있음 1= 빈자리
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, parkingzone1, parkingzone2, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(1, 99, 0, 1, 10, 8, 36.49801, 127.282085, 36.498039, 127.282049, 36.498023, 127.282029, 36.497994, 127.282065);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, parkingzone1, parkingzone2, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(2, 99, 0, 2, 8, 9, 36.498099, 127.282295, 36.498071, 127.28233, 36.498087, 127.28235,36.498115, 127.282315);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, parkingzone1, parkingzone2, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(3, 99, 0, 3, 7, 10, 36.498233, 127.282362, 36.498262, 127.282326, 36.498246, 127.282306, 36.498217, 127.282342);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, parkingzone1, parkingzone2, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(4, 99, 0, 4, 4, 4, 36.498389, 127.282725, 36.498418, 127.28269, 36.498433, 127.282709, 36.498405, 127.282745);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, parkingzone1, parkingzone2, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(5, 99, 0, 5, 1, 2, 36.498582, 127.282722, 36.498553, 127.282759, 36.498537, 127.282739, 36.498566, 127.282703);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, parkingzone1, parkingzone2, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(6, 99, 0, 6, 2, 3, 36.498866, 127.283073, 36.498837, 127.28311, 36.49882, 127.28309, 36.49885, 127.283053);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, parkingzone1, parkingzone2, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(7, 99, 0, 7, 3, 5, 36.498817, 127.283254, 36.498801, 127.283234, 36.498829, 127.283199, 36.498845, 127.283219);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, parkingzone1, parkingzone2, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(8, 99, 0, 8, 6, 6, 36.498819, 127.283357, 36.498791, 127.283392, 36.498777, 127.283374, 36.498804, 127.283339);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, parkingzone1, parkingzone2, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(9, 99, 0, 9, 5, 1, 36.498446, 127.282893, 36.498418, 127.282928, 36.498402, 127.282908, 36.498429, 127.282873);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, parkingzone1, parkingzone2, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(10, 99, 0, 10, 9, 7, 36.4982, 127.28259, 36.498173, 127.282625, 36.498157, 127.282606, 36.498185, 127.282571);
INSERT INTO parkingslot(slotid, carid, slotstatus, linkid, parkingzone1, parkingzone2, x1, y1, x2, y2, x3, y3, x4, y4) 
VALUES(11, 99, 1, 11, 11, 11, 36.4982, 127.28259, 36.498173, 127.282625, 36.498157, 127.282606, 36.498185, 127.282571);

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


create table testlocinfo(
  `carid` INT NOT NULL default '0',
  `time` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
  `movex` DECIMAL(13,10) NOT NULL,
  `movey` DECIMAL(13,10) NOT NULL,
  `carstatus` INT default '1' NOT NULL,
PRIMARY KEY (carid, time)
);

--locinfo
-- 1완료 0 이동중 2 실패
-- 2완료 1 이동중 0 실패
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

INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
VALUESvalues (0, 2021122300002, 36.498300, 127.28220, 2);

INSERT INTO locinfo(movex, movey, ) 
VALUES(, 36.498300, );

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

 --픽업 이동 테스트 데이터
 --carstatus 주차실패 0 주차완료 1 주차중 2
 create table pickuping(
   `x1` DECIMAL(13,10) NOT NULL,
   `y1` DECIMAL(13,10) NOT NULL,
   `status` int not null
 );

 insert into pickuping(x1, y1, status) values(36.4982, 127.28259, 2);
 insert into pickuping(x1, y1, status) values(36.49856, 127.2830, 2);
 insert into pickuping(x1, y1, status) values(36.4979, 127.2838, 2);
 insert into pickuping(x1, y1, status) values(36.4979, 127.284, 1);


alter table locinfo column time default current_timestamp;
alter table session column parking_start_time default current_timestamp;

--DB 데이터 랜덤하게 가져오기
select cid from restaurant order by rand() limit 10
 update parkingslot set slotstatus=1 where slotid=5;

INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
VALUES (0, 20211223000002, 36.498300, 127.28220, 2);

INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
VALUES(15, 20211220000000, 36.498300, 127.28200, 0);


INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142712 , 36.4978107770 , 127.2833816850 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142714 , 36.4978100391 , 127.2833794358 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142716 , 36.4978016073 , 127.2833568580 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142718 , 36.4977871526 , 127.2833235577 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142720 , 36.4977667450 , 127.2832976752 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142722 , 36.4977395837 , 127.2832827666 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142724 , 36.4977108860 , 127.2832834145 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142726 , 36.4976857523 , 127.2833011149 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142728 , 36.4976685045 , 127.2833313612 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142730 , 36.4976604652 , 127.2833690456 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142732 , 36.4976592795 , 127.2834080026 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142734 , 36.4976637929 , 127.2834504260 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142736 , 36.4976747852 , 127.2834963155 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142738 , 36.4976905421 , 127.2835406453 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142740 , 36.4977093376 , 127.2835834470 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142742 , 36.4977297767 , 127.2836261568 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142744 , 36.4977521301 , 127.2836701050 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142746 , 36.4977755705 , 127.2837135197 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142748 , 36.4978007192 , 127.2837558265 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142750 , 36.4978276097 , 127.2837897710 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142752 , 36.4978541447 , 127.2838111679 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142754 , 36.4978768584 , 127.2838226565 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142756 , 36.4979105485 , 127.2838267557 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142758 , 36.4979499731 , 127.2838197778 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142800 , 36.4979857258 , 127.2838003829 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142802 , 36.4980018931 , 127.2837885436 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142804 , 36.4980176905 , 127.2837718696 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142806 , 36.4980426709 , 127.2837397042 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142808 , 36.4980693648 , 127.2837085115 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142810 , 36.4980969115 , 127.2836751278 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142812 , 36.4981260798 , 127.2836397990 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142814 , 36.4981552934 , 127.2836043000 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142816 , 36.4981853085 , 127.2835673014 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142818 , 36.4982172920 , 127.2835280736 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142820 , 36.4982477684 , 127.2834905060 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142822 , 36.4982785058 , 127.2834528761 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142824 , 36.4983068829 , 127.2834182492 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142826 , 36.4983371474 , 127.2833815458 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142828 , 36.4983653996 , 127.2833472387 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142830 , 36.4983945990 , 127.2833117074 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142832 , 36.4984241204 , 127.2832753356 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142834 , 36.4984528107 , 127.2832395368 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142836 , 36.4984811277 , 127.2832038782 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142838 , 36.4985092110 , 127.2831686452 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142840 , 36.4985388768 , 127.2831315638 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142842 , 36.4985668036 , 127.2830967569 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142844 , 36.4985965604 , 127.2830602762 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142846 , 36.4986233421 , 127.2830256253 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142848 , 36.4986414056 , 127.2829866281 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142850 , 36.4986448509 , 127.2829478879 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142852 , 36.4986346735 , 127.2829120405 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142854 , 36.4986091200 , 127.2828694911 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142856 , 36.4985752384 , 127.2828195208 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142858 , 36.4985430687 , 127.2827759314 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142900 , 36.4985056912 , 127.2827615850 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142902 , 36.4984824835 , 127.2827821398 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142904 , 36.4984825417 , 127.2827819107 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142906 , 36.4984825854 , 127.2827820239 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142908 , 36.4984825066 , 127.2827819847 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142910 , 36.4984828337 , 127.2827814801 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142912 , 36.4984864045 , 127.2827769072 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142914 , 36.4984949146 , 127.2827662647 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142916 , 36.4985059557 , 127.2827533476 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142918 , 36.4985139313 , 127.2827445626 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142920 , 36.4985215171 , 127.2827367551 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142922 , 36.4985309459 , 127.2827257837 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142924 , 36.4985391335 , 127.2827155263 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142926 , 36.4985401963 , 127.2827134066 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142928 , 36.4985391164 , 127.2827143260 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142930 , 36.4985412947 , 127.2827122472 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207142932 , 36.4985414691 , 127.2827120999 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143004 , 36.4985390554 , 127.2827171400 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143006 , 36.4985279300 , 127.2827512792 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143008 , 36.4985359523 , 127.2827877470 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143010 , 36.4985559713 , 127.2828202836 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143012 , 36.4985823773 , 127.2828544827 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143014 , 36.4986113293 , 127.2828899403 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143016 , 36.4986301375 , 127.2829340313 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143018 , 36.4986148530 , 127.2829846122 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143020 , 36.4985849174 , 127.2830273543 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143022 , 36.4985544714 , 127.2830666010 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143024 , 36.4985253469 , 127.2831031246 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143026 , 36.4984955298 , 127.2831400160 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143028 , 36.4984661400 , 127.2831763179 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143030 , 36.4984380988 , 127.2832110251 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143032 , 36.4984094817 , 127.2832468118 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143034 , 36.4983798366 , 127.2832835790 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143036 , 36.4983513936 , 127.2833184650 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143038 , 36.4983221282 , 127.2833543223 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143040 , 36.4982936109 , 127.2833888563 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143042 , 36.4982638079 , 127.2834248383 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143044 , 36.4982349881 , 127.2834597225 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143046 , 36.4982050295 , 127.2834959464 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143048 , 36.4981772136 , 127.2835303012 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143050 , 36.4981478216 , 127.2835668424 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143052 , 36.4981194523 , 127.2836020193 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143054 , 36.4980900630 , 127.2836380998 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143056 , 36.4980612145 , 127.2836730158 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143058 , 36.4980309488 , 127.2837074845 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143100 , 36.4979972187 , 127.2837308356 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143102 , 36.4979565618 , 127.2837362212 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143104 , 36.4979197735 , 127.2837176121 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143106 , 36.4978963706 , 127.2836777576 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143108 , 36.4978876908 , 127.2836285141 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143110 , 36.4978796546 , 127.2835765579 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143112 , 36.4978666487 , 127.2835300910 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143114 , 36.4978533134 , 127.2834945477 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143116 , 36.4978533200 , 127.2834947349 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143118 , 36.4978533470 , 127.2834947296 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143120 , 36.4978533996 , 127.2834947497 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143122 , 36.4978533781 , 127.2834947455 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143124 , 36.4978533774 , 127.2834947903 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143126 , 36.4978533632 , 127.2834947947 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143128 , 36.4978533653 , 127.2834947104 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143130 , 36.4978533650 , 127.2834946914 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143132 , 36.4978533850 , 127.2834947206 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143134 , 36.4978533831 , 127.2834947590 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143136 , 36.4978533900 , 127.2834947436 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143138 , 36.4978533776 , 127.2834946872 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143140 , 36.4978533983 , 127.2834947223 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143142 , 36.4978533822 , 127.2834948089 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143144 , 36.4978533624 , 127.2834947580 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143146 , 36.4978533511 , 127.2834947313 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143148 , 36.4978533524 , 127.2834947142 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143436 , 36.4978044695 , 127.2833609620 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143505 , 36.4978044344 , 127.2833609907 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143507 , 36.4978038158 , 127.2833591229 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143509 , 36.4977970786 , 127.2833418066 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143511 , 36.4977812246 , 127.2833138384 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143513 , 36.4977595012 , 127.2832921169 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143515 , 36.4977325767 , 127.2832814936 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143517 , 36.4977036500 , 127.2832867292 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143519 , 36.4976797495 , 127.2833091155 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143521 , 36.4976656747 , 127.2833407789 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143523 , 36.4976597644 , 127.2833769096 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143525 , 36.4976596101 , 127.2834153501 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143527 , 36.4976657455 , 127.2834607681 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143529 , 36.4976779047 , 127.2835063520 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143531 , 36.4976948529 , 127.2835508466 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143533 , 36.4977137345 , 127.2835931309 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143535 , 36.4977337214 , 127.2836341008 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143537 , 36.4977546865 , 127.2836749502 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143539 , 36.4977778694 , 127.2837174710 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143541 , 36.4978042866 , 127.2837610930 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143543 , 36.4978307831 , 127.2837928942 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143545 , 36.4978595085 , 127.2838133699 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143547 , 36.4978983256 , 127.2838256533 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143549 , 36.4979397582 , 127.2838231462 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143551 , 36.4979797675 , 127.2838042559 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143553 , 36.4980116565 , 127.2837759162 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143555 , 36.4980446300 , 127.2837379809 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143557 , 36.4980782141 , 127.2836980210 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143559 , 36.4981092394 , 127.2836603555 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143601 , 36.4981395749 , 127.2836235274 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143603 , 36.4981691203 , 127.2835873676 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143605 , 36.4981989467 , 127.2835507668 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143607 , 36.4982269080 , 127.2835164257 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143609 , 36.4982550568 , 127.2834816177 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143611 , 36.4982834325 , 127.2834469809 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143613 , 36.4983126259 , 127.2834114341 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143615 , 36.4983428612 , 127.2833748066 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143617 , 36.4983726152 , 127.2833386237 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143619 , 36.4984003007 , 127.2833048479 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143621 , 36.4984288355 , 127.2832696762 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143623 , 36.4984577966 , 127.2832333736 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143625 , 36.4984874827 , 127.2831960135 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143627 , 36.4985165169 , 127.2831596587 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143629 , 36.4985443201 , 127.2831248515 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143631 , 36.4985732362 , 127.2830891196 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143633 , 36.4985980549 , 127.2830585970 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143635 , 36.4986051830 , 127.2830497819 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143637 , 36.4986236852 , 127.2830250363 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143639 , 36.4986421470 , 127.2829841614 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143641 , 36.4986446912 , 127.2829443582 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143643 , 36.4986310357 , 127.2829049123 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143645 , 36.4986014745 , 127.2828579070 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143647 , 36.4985676816 , 127.2828086904 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143649 , 36.4985355018 , 127.2827687731 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143651 , 36.4984976519 , 127.2827653645 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143653 , 36.4984806450 , 127.2827862182 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143655 , 36.4984805877 , 127.2827863315 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143657 , 36.4984806173 , 127.2827863657 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143659 , 36.4984806914 , 127.2827863135 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143701 , 36.4984810711 , 127.2827855502 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143703 , 36.4984825456 , 127.2827831498 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143705 , 36.4984883335 , 127.2827737112 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143707 , 36.4984989217 , 127.2827600195 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143709 , 36.4985092791 , 127.2827483612 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143711 , 36.4985186768 , 127.2827391367 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143713 , 36.4985274044 , 127.2827300540 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143715 , 36.4985359567 , 127.2827201738 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143717 , 36.4985419411 , 127.2827121748 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143719 , 36.4985459400 , 127.2827065439 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143721 , 36.4985464435 , 127.2827077114 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143723 , 36.4985459108 , 127.2827075593 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143725 , 36.4985457875 , 127.2827077091 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143727 , 36.4985458248 , 127.2827075815 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143729 , 36.4985459051 , 127.2827076135 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143731 , 36.4985458521 , 127.2827075112 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143733 , 36.4985462116 , 127.2827071123 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143735 , 36.4985467735 , 127.2827067116 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143737 , 36.4985468272 , 127.2827065699 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143739 , 36.4985466923 , 127.2827063291 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143741 , 36.4985466683 , 127.2827062768 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143743 , 36.4985466246 , 127.2827062895 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143745 , 36.4985465316 , 127.2827061765 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143747 , 36.4985463307 , 127.2827061705 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143749 , 36.4985407246 , 127.2827124895 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143751 , 36.4985412435 , 127.2827125473 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143753 , 36.4985416876 , 127.2827130234 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143755 , 36.4985414932 , 127.2827131140 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207143757 , 36.4985415110 , 127.2827133079 , 2);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144401 , 36.4978063798 , 127.2833671394 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144403 , 36.4978057881 , 127.2833654127 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144405 , 36.4977989478 , 127.2833477754 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144407 , 36.4977842827 , 127.2833183927 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144409 , 36.4977640235 , 127.2832953391 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144411 , 36.4977377921 , 127.2832822219 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144413 , 36.4977089198 , 127.2832842517 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144415 , 36.4976836276 , 127.2833036853 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144417 , 36.4976677536 , 127.2833337214 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144419 , 36.4976604984 , 127.2833688096 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144421 , 36.4976593011 , 127.2834085123 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144423 , 36.4976649039 , 127.2834566275 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144425 , 36.4976784061 , 127.2835077919 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144427 , 36.4976970598 , 127.2835561158 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144429 , 36.4977176071 , 127.2836009967 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144431 , 36.4977392520 , 127.2836452145 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144433 , 36.4977626011 , 127.2836898920 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144435 , 36.4977861139 , 127.2837320234 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144437 , 36.4978105517 , 127.2837698953 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144439 , 36.4978350581 , 127.2837967270 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144441 , 36.4978600538 , 127.2838136797 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144443 , 36.4978927927 , 127.2838247786 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144445 , 36.4979331730 , 127.2838246020 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144447 , 36.4979733686 , 127.2838085397 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144449 , 36.4980059175 , 127.2837817390 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144451 , 36.4980387499 , 127.2837448295 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144453 , 36.4980725104 , 127.2837047382 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144455 , 36.4981039165 , 127.2836666675 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144457 , 36.4981347889 , 127.2836293519 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144459 , 36.4981648732 , 127.2835926155 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144501 , 36.4981932802 , 127.2835576640 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144503 , 36.4982231153 , 127.2835210937 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144505 , 36.4982517408 , 127.2834857370 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144507 , 36.4982813584 , 127.2834493611 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144509 , 36.4983100710 , 127.2834144833 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144511 , 36.4983397674 , 127.2833783734 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144513 , 36.4983683229 , 127.2833437758 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144515 , 36.4983972857 , 127.2833085664 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144517 , 36.4984268415 , 127.2832720712 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144519 , 36.4984552334 , 127.2832365030 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144521 , 36.4984838893 , 127.2832006520 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144523 , 36.4985126528 , 127.2831644852 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144525 , 36.4985419697 , 127.2831278003 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144527 , 36.4985700265 , 127.2830930075 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144529 , 36.4985990294 , 127.2830574346 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144531 , 36.4986266675 , 127.2830207470 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144533 , 36.4986432070 , 127.2829796623 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144535 , 36.4986440792 , 127.2829410386 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144537 , 36.4986325495 , 127.2829073579 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144539 , 36.4986072693 , 127.2828666938 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144541 , 36.4985745891 , 127.2828184666 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144543 , 36.4985434007 , 127.2827761042 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144545 , 36.4985067273 , 127.2827624587 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144547 , 36.4984840108 , 127.2827822088 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144549 , 36.4984840559 , 127.2827820208 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144551 , 36.4984840171 , 127.2827820729 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144553 , 36.4984840507 , 127.2827820379 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144555 , 36.4984842697 , 127.2827817107 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144557 , 36.4984842938 , 127.2827816731 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144559 , 36.4984843164 , 127.2827816477 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144601 , 36.4984843140 , 127.2827816511 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144603 , 36.4984843338 , 127.2827815780 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211207144605 , 36.4984843286 , 127.2827815619 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211208000000 , 36.4983000000 , 127.2820000000 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191739 , 37.3845453767 , 126.7045246149 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191828 , 37.3845446794 , 126.7045244039 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191830 , 37.3845420911 , 126.7045235235 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191832 , 37.3845420222 , 126.7045235137 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191834 , 37.3845419925 , 126.7045234749 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191836 , 37.3845420145 , 126.7045234678 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191838 , 37.3845442199 , 126.7045242914 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191840 , 37.3845452486 , 126.7045246617 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191842 , 37.3845452536 , 126.7045246024 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191844 , 37.3845452684 , 126.7045246409 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191846 , 37.3845452374 , 126.7045246057 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191848 , 37.3845452242 , 126.7045246074 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191850 , 37.3845451164 , 126.7045245560 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191851 , 37.3845451321 , 126.7045245596 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191854 , 37.3845451014 , 126.7045245508 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191856 , 37.3845450680 , 126.7045245581 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191857 , 37.3845451566 , 126.7045245500 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191900 , 37.3845451397 , 126.7045245479 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209191902 , 37.3845451479 , 126.7045245457 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192155 , 37.3845419192 , 126.7045211859 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192156 , 37.3845419482 , 126.7045211848 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192159 , 37.3845419028 , 126.7045211567 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192200 , 37.3845419082 , 126.7045211829 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192203 , 37.3845419441 , 126.7045211580 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192205 , 37.3845419658 , 126.7045212012 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192206 , 37.3845419475 , 126.7045212088 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192209 , 37.3845419466 , 126.7045212036 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192211 , 37.3845419306 , 126.7045212297 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192213 , 37.3845419103 , 126.7045211395 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192215 , 37.3845419241 , 126.7045211603 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192216 , 37.3845419173 , 126.7045212443 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192218 , 37.3845419123 , 126.7045212384 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192221 , 37.3845419021 , 126.7045211775 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192222 , 37.3845419152 , 126.7045211806 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192224 , 37.3845418928 , 126.7045211940 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192227 , 37.3845418734 , 126.7045211791 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192228 , 37.3845419158 , 126.7045212126 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192231 , 37.3845419396 , 126.7045212380 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192232 , 37.3845419751 , 126.7045212275 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192234 , 37.3845419313 , 126.7045211863 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192236 , 37.3845419242 , 126.7045212004 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192239 , 37.3845419491 , 126.7045212194 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192241 , 37.3845419193 , 126.7045212229 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192242 , 37.3845419373 , 126.7045212120 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192245 , 37.3845419409 , 126.7045211744 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192246 , 37.3845419352 , 126.7045211592 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192249 , 37.3845419345 , 126.7045211889 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192251 , 37.3845419332 , 126.7045212444 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192252 , 37.3845419709 , 126.7045212662 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192254 , 37.3845419439 , 126.7045212027 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192256 , 37.3845419581 , 126.7045212275 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192259 , 37.3845419627 , 126.7045212215 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192316 , 37.3845418169 , 126.7045211345 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192318 , 37.3845360037 , 126.7045192097 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192320 , 37.3845224022 , 126.7045147190 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192322 , 37.3845225344 , 126.7045147686 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192324 , 37.3845243295 , 126.7045153614 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192326 , 37.3845334913 , 126.7045184161 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192328 , 37.3845356582 , 126.7045191637 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192330 , 37.3845356727 , 126.7045191347 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192332 , 37.3845357036 , 126.7045191337 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192334 , 37.3845356862 , 126.7045191226 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192336 , 37.3845357158 , 126.7045191105 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192338 , 37.3845356688 , 126.7045191349 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192340 , 37.3845357243 , 126.7045191257 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192342 , 37.3845357347 , 126.7045191078 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192344 , 37.3845357444 , 126.7045191105 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192346 , 37.3845357133 , 126.7045191602 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192348 , 37.3845356636 , 126.7045191652 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192350 , 37.3845356844 , 126.7045191427 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192352 , 37.3845357398 , 126.7045191320 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192411 , 37.3845355463 , 126.7045190969 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192413 , 37.3845166525 , 126.7044965954 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192415 , 37.3845155463 , 126.7044939745 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192417 , 37.3845119018 , 126.7044778945 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192419 , 37.3845198348 , 126.7044442872 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192421 , 37.3845416132 , 126.7044225067 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192423 , 37.3845544903 , 126.7044106847 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192425 , 37.3845545454 , 126.7044106927 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192427 , 37.3845546074 , 126.7044106706 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192429 , 37.3845546089 , 126.7044107053 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192431 , 37.3845545277 , 126.7044107326 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192504 , 37.3845176763 , 126.7044690186 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192506 , 37.3845286163 , 126.7044454550 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192508 , 37.3845435359 , 126.7044119300 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192510 , 37.3845542141 , 126.7043791647 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192512 , 37.3845624905 , 126.7043455845 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192514 , 37.3845699772 , 126.7043094952 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192516 , 37.3845771662 , 126.7042736994 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192518 , 37.3845844250 , 126.7042384413 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192520 , 37.3845898337 , 126.7042018161 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192522 , 37.3845880008 , 126.7041659581 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192524 , 37.3845748231 , 126.7041329598 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192526 , 37.3845451923 , 126.7041134561 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192528 , 37.3845386934 , 126.7041133435 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192530 , 37.3845385875 , 126.7041132497 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192532 , 37.3845385929 , 126.7041132200 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192534 , 37.3845386200 , 126.7041132757 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209192536 , 37.3845386165 , 126.7041132663 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193134 , 37.3845575079 , 126.7041163570 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193136 , 37.3845575240 , 126.7041163637 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193650 , 37.3845575621 , 126.7041163807 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193652 , 37.3845575298 , 126.7041163844 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193654 , 37.3845575304 , 126.7041164073 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193656 , 37.3845575580 , 126.7041164198 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193658 , 37.3845575716 , 126.7041164067 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193700 , 37.3845575241 , 126.7041163825 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193702 , 37.3845575701 , 126.7041163841 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193704 , 37.3845575691 , 126.7041164140 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193706 , 37.3845575429 , 126.7041164130 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193708 , 37.3845575525 , 126.7041163990 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193710 , 37.3845575446 , 126.7041164109 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193712 , 37.3845575589 , 126.7041163994 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193714 , 37.3845575723 , 126.7041163830 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193716 , 37.3845575599 , 126.7041164052 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193718 , 37.3845575312 , 126.7041164027 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193720 , 37.3845575329 , 126.7041163903 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193722 , 37.3845575411 , 126.7041164267 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193724 , 37.3845575352 , 126.7041163828 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193726 , 37.3845575696 , 126.7041163991 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193728 , 37.3845575461 , 126.7041163929 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193730 , 37.3845575696 , 126.7041163708 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193732 , 37.3845575295 , 126.7041164047 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193748 , 37.3845575766 , 126.7041164429 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193750 , 37.3845575450 , 126.7041164563 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193752 , 37.3845575498 , 126.7041164463 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193754 , 37.3845576023 , 126.7041163928 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193756 , 37.3845575570 , 126.7041163593 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193758 , 37.3845574888 , 126.7041163932 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193800 , 37.3845574731 , 126.7041164311 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193802 , 37.3845574947 , 126.7041163338 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193804 , 37.3845575644 , 126.7041163436 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193806 , 37.3845575372 , 126.7041163592 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193808 , 37.3845576037 , 126.7041164014 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193810 , 37.3845575820 , 126.7041164235 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193812 , 37.3845575592 , 126.7041163979 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193814 , 37.3845575743 , 126.7041163826 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193851 , 37.3845575663 , 126.7041163943 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209193853 , 37.3845575261 , 126.7041163823 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194011 , 37.3845783324 , 126.7042960658 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194013 , 37.3845786753 , 126.7042938573 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194015 , 37.3845805404 , 126.7042829560 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194017 , 37.3845838390 , 126.7042633929 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194019 , 37.3845885428 , 126.7042355572 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194021 , 37.3845945868 , 126.7041996713 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194023 , 37.3846019197 , 126.7041568038 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194025 , 37.3846078600 , 126.7041226248 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194027 , 37.3846080739 , 126.7041210284 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194029 , 37.3846087415 , 126.7041166337 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194057 , 37.3845631871 , 126.7043832683 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194059 , 37.3845612644 , 126.7043937277 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194101 , 37.3845601892 , 126.7043995133 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194103 , 37.3845619047 , 126.7043901055 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194105 , 37.3845654793 , 126.7043716645 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194107 , 37.3845693932 , 126.7043481784 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194109 , 37.3845684843 , 126.7043245159 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194111 , 37.3845686148 , 126.7043040310 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194113 , 37.3845718069 , 126.7042839300 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194115 , 37.3845775554 , 126.7042638562 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194117 , 37.3845827699 , 126.7042471045 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194119 , 37.3845878948 , 126.7042281351 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194121 , 37.3845914970 , 126.7042097376 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194123 , 37.3845933226 , 126.7041919738 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194125 , 37.3845932261 , 126.7041736362 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194127 , 37.3845906221 , 126.7041556732 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194129 , 37.3845847713 , 126.7041378606 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194131 , 37.3845757725 , 126.7041226501 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194133 , 37.3845651594 , 126.7041117803 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194135 , 37.3845615047 , 126.7041093938 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194137 , 37.3845614649 , 126.7041094486 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194139 , 37.3845614847 , 126.7041094660 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194141 , 37.3845615206 , 126.7041094332 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194143 , 37.3845614995 , 126.7041094204 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194145 , 37.3845615020 , 126.7041094103 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194147 , 37.3845615024 , 126.7041094294 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194149 , 37.3845615132 , 126.7041094466 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209194151 , 37.3845614834 , 126.7041094535 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195045 , 37.3845872468 , 126.7042180945 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195047 , 37.3845870654 , 126.7042207500 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195049 , 37.3845870586 , 126.7042209085 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195051 , 37.3845876612 , 126.7042122102 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195053 , 37.3845899641 , 126.7041976795 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195055 , 37.3845958453 , 126.7041772274 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195057 , 37.3846036116 , 126.7041504494 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195059 , 37.3846081549 , 126.7041263796 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195101 , 37.3846111660 , 126.7041031837 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195103 , 37.3846139022 , 126.7040829251 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195105 , 37.3846169341 , 126.7040635149 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195107 , 37.3846204668 , 126.7040438233 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195109 , 37.3846238229 , 126.7040261248 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195111 , 37.3846274501 , 126.7040072787 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195113 , 37.3846297682 , 126.7039893067 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195115 , 37.3846298467 , 126.7039711457 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195117 , 37.3846268252 , 126.7039519352 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195119 , 37.3846214949 , 126.7039359085 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195121 , 37.3846128761 , 126.7039198593 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195123 , 37.3846015790 , 126.7039060120 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195125 , 37.3845884773 , 126.7038945729 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195127 , 37.3845760521 , 126.7038860992 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195129 , 37.3845635451 , 126.7038771469 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195131 , 37.3845630159 , 126.7038765709 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195133 , 37.3845630870 , 126.7038764716 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195135 , 37.3845629868 , 126.7038764445 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195137 , 37.3845629267 , 126.7038764609 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195139 , 37.3845629796 , 126.7038764662 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195141 , 37.3845630166 , 126.7038764983 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195143 , 37.3845629708 , 126.7038765472 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195145 , 37.3845629558 , 126.7038765370 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195147 , 37.3845629409 , 126.7038764844 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195149 , 37.3845629253 , 126.7038765413 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195306 , 37.3845921920 , 126.7042091813 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195308 , 37.3845922943 , 126.7042084530 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195310 , 37.3845933946 , 126.7042008472 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195312 , 37.3845958397 , 126.7041862040 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195314 , 37.3845998273 , 126.7041644355 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195316 , 37.3846046694 , 126.7041376613 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195318 , 37.3846086722 , 126.7041148681 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195320 , 37.3846123690 , 126.7040940156 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195322 , 37.3846160361 , 126.7040728900 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195324 , 37.3846191519 , 126.7040547254 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195326 , 37.3846224594 , 126.7040350235 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195328 , 37.3846257706 , 126.7040159061 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195330 , 37.3846284489 , 126.7039988125 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195332 , 37.3846295130 , 126.7039802765 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195334 , 37.3846278765 , 126.7039613938 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195336 , 37.3846238372 , 126.7039445391 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195338 , 37.3846164918 , 126.7039275977 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195340 , 37.3846074835 , 126.7039139959 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195342 , 37.3845946287 , 126.7039006637 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195344 , 37.3845820747 , 126.7038908051 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195346 , 37.3845693864 , 126.7038820739 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195348 , 37.3845628734 , 126.7038762994 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195350 , 37.3845628252 , 126.7038762756 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195352 , 37.3845628270 , 126.7038762305 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195354 , 37.3845627983 , 126.7038762023 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195356 , 37.3845627712 , 126.7038762371 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195925 , 37.3844573489 , 126.7045452255 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195927 , 37.3844582529 , 126.7045451844 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195929 , 37.3844604483 , 126.7045452202 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195931 , 37.3844638192 , 126.7045458321 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195933 , 37.3844717990 , 126.7045491223 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195935 , 37.3844842356 , 126.7045564393 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195937 , 37.3844980552 , 126.7045599009 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195939 , 37.3845117850 , 126.7045572199 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195941 , 37.3845238039 , 126.7045491789 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195943 , 37.3845325943 , 126.7045373510 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195945 , 37.3845379328 , 126.7045231071 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195947 , 37.3845393607 , 126.7045079893 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195949 , 37.3845358018 , 126.7044901863 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195951 , 37.3845313763 , 126.7044710331 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195953 , 37.3845319570 , 126.7044545023 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195955 , 37.3845361139 , 126.7044410407 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195957 , 37.3845465861 , 126.7044256669 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209195959 , 37.3845607882 , 126.7044052936 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200001 , 37.3845692158 , 126.7043763314 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200003 , 37.3845709072 , 126.7043393191 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200005 , 37.3845772303 , 126.7042994973 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200007 , 37.3845792829 , 126.7042908660 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200009 , 37.3845793757 , 126.7042909725 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200011 , 37.3845793662 , 126.7042909978 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200013 , 37.3845792930 , 126.7042909570 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200015 , 37.3845792883 , 126.7042909337 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200017 , 37.3845793574 , 126.7042909226 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200019 , 37.3845793136 , 126.7042909510 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200021 , 37.3845793084 , 126.7042909734 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200023 , 37.3845793624 , 126.7042910251 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200025 , 37.3845793517 , 126.7042910311 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200027 , 37.3845793126 , 126.7042909695 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200029 , 37.3845793491 , 126.7042909238 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200031 , 37.3845793360 , 126.7042909436 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200106 , 37.3844552124 , 126.7045544885 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200108 , 37.3844560691 , 126.7045546602 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200110 , 37.3844627643 , 126.7045560119 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200112 , 37.3844770513 , 126.7045591562 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200114 , 37.3844963798 , 126.7045590522 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200116 , 37.3845203268 , 126.7045506984 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200118 , 37.3845403741 , 126.7045344474 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200120 , 37.3845405909 , 126.7045342372 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200122 , 37.3845405089 , 126.7045342848 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200124 , 37.3845353785 , 126.7045384239 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200126 , 37.3845117153 , 126.7045479478 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200128 , 37.3844886422 , 126.7045515129 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200130 , 37.3844701830 , 126.7045490357 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200132 , 37.3844593867 , 126.7045458971 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200134 , 37.3844578715 , 126.7045454485 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200136 , 37.3844541790 , 126.7045441295 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200138 , 37.3844541742 , 126.7045441462 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200140 , 37.3844541696 , 126.7045441455 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200142 , 37.3844541906 , 126.7045441663 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200144 , 37.3844541570 , 126.7045441812 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200146 , 37.3844541679 , 126.7045441728 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200148 , 37.3844541713 , 126.7045441465 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200150 , 37.3844542045 , 126.7045441308 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200152 , 37.3844541792 , 126.7045441218 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200154 , 37.3844541730 , 126.7045441271 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200156 , 37.3844541788 , 126.7045441815 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200158 , 37.3844541882 , 126.7045441836 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200200 , 37.3844541917 , 126.7045441900 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200202 , 37.3844541784 , 126.7045442198 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200204 , 37.3844542052 , 126.7045441769 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200206 , 37.3844542494 , 126.7045441121 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200208 , 37.3844542257 , 126.7045440846 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200210 , 37.3844541624 , 126.7045441082 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200212 , 37.3844541181 , 126.7045441204 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200214 , 37.3844541508 , 126.7045441471 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200216 , 37.3844542185 , 126.7045441732 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200218 , 37.3844542635 , 126.7045441637 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200220 , 37.3844542551 , 126.7045441636 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200222 , 37.3844542045 , 126.7045441088 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200253 , 37.3844541876 , 126.7045441706 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200255 , 37.3844542061 , 126.7045441421 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200257 , 37.3844548367 , 126.7045443289 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200259 , 37.3844586201 , 126.7045447374 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200301 , 37.3844636407 , 126.7045461440 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200303 , 37.3844735658 , 126.7045518418 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200305 , 37.3844860556 , 126.7045591173 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200307 , 37.3844941623 , 126.7045611198 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200309 , 37.3844940723 , 126.7045611597 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200311 , 37.3844937095 , 126.7045611703 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200313 , 37.3844807264 , 126.7045618278 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200315 , 37.3844759329 , 126.7045622365 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200317 , 37.3844766545 , 126.7045621137 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200319 , 37.3844833704 , 126.7045624643 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200321 , 37.3844918110 , 126.7045618093 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200323 , 37.3845000334 , 126.7045588615 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200325 , 37.3845075189 , 126.7045538873 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200327 , 37.3845135869 , 126.7045475569 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200329 , 37.3845191600 , 126.7045381004 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200331 , 37.3845244645 , 126.7045229570 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200333 , 37.3845296468 , 126.7045004851 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200335 , 37.3845366625 , 126.7044703326 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200337 , 37.3845471316 , 126.7044349944 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200339 , 37.3845572519 , 126.7044065639 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200341 , 37.3845645396 , 126.7043854979 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200343 , 37.3845692257 , 126.7043627717 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200345 , 37.3845717223 , 126.7043425506 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200347 , 37.3845741417 , 126.7043219771 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200349 , 37.3845756217 , 126.7043123076 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200351 , 37.3845756485 , 126.7043123352 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200353 , 37.3845756603 , 126.7043123142 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200355 , 37.3845756723 , 126.7043123342 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200357 , 37.3845756382 , 126.7043123286 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200359 , 37.3845756307 , 126.7043123279 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200401 , 37.3845756292 , 126.7043123667 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200403 , 37.3845755898 , 126.7043124314 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200405 , 37.3845755574 , 126.7043124104 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200407 , 37.3845755928 , 126.7043124188 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209200409 , 37.3845756383 , 126.7043124242 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201016 , 37.3844556519 , 126.7045565677 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201018 , 37.3844560240 , 126.7045563801 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201020 , 37.3844593619 , 126.7045543541 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201022 , 37.3844637815 , 126.7045521607 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201024 , 37.3844695154 , 126.7045504824 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201026 , 37.3844796645 , 126.7045506501 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201028 , 37.3844953373 , 126.7045537126 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201030 , 37.3845109711 , 126.7045516828 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201032 , 37.3845241917 , 126.7045431830 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201034 , 37.3845337069 , 126.7045302570 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201036 , 37.3845392034 , 126.7045137002 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201038 , 37.3845394394 , 126.7044958499 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201040 , 37.3845348437 , 126.7044739764 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201042 , 37.3845327796 , 126.7044533823 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201044 , 37.3845368088 , 126.7044355865 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201046 , 37.3845473817 , 126.7044194964 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201048 , 37.3845643399 , 126.7044013902 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201050 , 37.3845744800 , 126.7043774203 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201052 , 37.3845742191 , 126.7043563006 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201054 , 37.3845739200 , 126.7043544017 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201056 , 37.3845718593 , 126.7043473411 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201058 , 37.3845701488 , 126.7043404929 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201100 , 37.3845693863 , 126.7043354641 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201102 , 37.3845691033 , 126.7043315151 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201104 , 37.3845691454 , 126.7043271860 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201106 , 37.3845698044 , 126.7043209892 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201108 , 37.3845721943 , 126.7043099274 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201110 , 37.3845771062 , 126.7042949756 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201112 , 37.3845777619 , 126.7042937304 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201114 , 37.3845776988 , 126.7042937576 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201116 , 37.3845776588 , 126.7042936989 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201118 , 37.3845776474 , 126.7042937000 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201120 , 37.3845768468 , 126.7042960635 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201229 , 37.3844691337 , 126.7045328661 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201231 , 37.3844696428 , 126.7045331352 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201233 , 37.3844756012 , 126.7045344115 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201235 , 37.3844841901 , 126.7045359491 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201237 , 37.3844950076 , 126.7045428945 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201239 , 37.3845078624 , 126.7045534177 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201241 , 37.3845078009 , 126.7045533763 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201243 , 37.3845077685 , 126.7045533966 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201245 , 37.3845071538 , 126.7045530518 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201247 , 37.3845024723 , 126.7045509459 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201249 , 37.3844851140 , 126.7045491540 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201251 , 37.3844743428 , 126.7045504469 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201253 , 37.3844621742 , 126.7045477706 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201255 , 37.3844566908 , 126.7045455090 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201316 , 37.3844581821 , 126.7045460547 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201318 , 37.3844581391 , 126.7045460768 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201320 , 37.3844581689 , 126.7045460791 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201322 , 37.3844581871 , 126.7045460474 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201324 , 37.3844582054 , 126.7045460403 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201326 , 37.3844581541 , 126.7045460536 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201328 , 37.3844581990 , 126.7045460595 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201330 , 37.3844581758 , 126.7045460225 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201332 , 37.3844581671 , 126.7045460586 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201334 , 37.3844581729 , 126.7045460482 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201336 , 37.3844581630 , 126.7045459989 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201338 , 37.3844581428 , 126.7045459736 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201340 , 37.3844581392 , 126.7045460055 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201342 , 37.3844581350 , 126.7045460837 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201344 , 37.3844581265 , 126.7045460251 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201346 , 37.3844581394 , 126.7045460066 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201348 , 37.3844581122 , 126.7045459729 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201350 , 37.3844581639 , 126.7045460219 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201352 , 37.3844581667 , 126.7045459946 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201354 , 37.3844598440 , 126.7045468977 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201356 , 37.3844667896 , 126.7045496058 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201358 , 37.3844797187 , 126.7045506552 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201400 , 37.3844816133 , 126.7045503294 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201402 , 37.3844757930 , 126.7045533053 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201404 , 37.3844621853 , 126.7045583510 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201406 , 37.3844538308 , 126.7045578650 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201408 , 37.3844491525 , 126.7045564688 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201410 , 37.3844492893 , 126.7045565347 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201412 , 37.3844562255 , 126.7045574359 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201414 , 37.3844719939 , 126.7045579207 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201416 , 37.3844775191 , 126.7045585857 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201418 , 37.3844763342 , 126.7045581163 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201420 , 37.3844689140 , 126.7045555495 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201422 , 37.3844666579 , 126.7045548271 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201424 , 37.3844618808 , 126.7045533102 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201426 , 37.3844525234 , 126.7045508054 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201428 , 37.3844517194 , 126.7045506684 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201441 , 37.3844516234 , 126.7045505362 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201443 , 37.3844516014 , 126.7045505607 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201445 , 37.3844515836 , 126.7045506028 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201447 , 37.3844546551 , 126.7045512099 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201449 , 37.3844637832 , 126.7045537433 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201451 , 37.3844771883 , 126.7045593932 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201453 , 37.3844916868 , 126.7045610440 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201455 , 37.3845052256 , 126.7045566554 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201457 , 37.3845166537 , 126.7045471746 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201459 , 37.3845245987 , 126.7045341106 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201501 , 37.3845285004 , 126.7045173138 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201503 , 37.3845298552 , 126.7044936705 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201505 , 37.3845362966 , 126.7044665206 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201507 , 37.3845478931 , 126.7044366929 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201509 , 37.3845551995 , 126.7044146131 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201511 , 37.3845624407 , 126.7043917592 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201513 , 37.3845670153 , 126.7043733971 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201515 , 37.3845700930 , 126.7043518665 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201517 , 37.3845722267 , 126.7043339924 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201519 , 37.3845754244 , 126.7043134368 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201521 , 37.3845756838 , 126.7043119804 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201523 , 37.3845756763 , 126.7043119961 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201525 , 37.3845756286 , 126.7043120363 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201527 , 37.3845756303 , 126.7043120457 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201529 , 37.3845756464 , 126.7043120309 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201531 , 37.3845756817 , 126.7043119973 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201533 , 37.3845756686 , 126.7043120067 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201535 , 37.3845756381 , 126.7043120340 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201537 , 37.3845751588 , 126.7043145242 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201539 , 37.3845721719 , 126.7043308066 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201541 , 37.3845665838 , 126.7043653276 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201543 , 37.3845601589 , 126.7044030455 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201545 , 37.3845534813 , 126.7044371205 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201547 , 37.3845452332 , 126.7044710072 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201549 , 37.3845328036 , 126.7045024705 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201551 , 37.3845148069 , 126.7045258597 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201553 , 37.3844924570 , 126.7045376939 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201555 , 37.3844741533 , 126.7045396407 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209201557 , 37.3844686261 , 126.7045400213 , 1);












INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202929 , 37.3844688118 , 126.7045400626 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202931 , 37.3844692082 , 126.7045399660 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202933 , 37.3844731230 , 126.7045388852 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202935 , 37.3844779692 , 126.7045380175 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202937 , 37.3844834149 , 126.7045379606 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202939 , 37.3844929268 , 126.7045410977 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202941 , 37.3845070851 , 126.7045478279 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202943 , 37.3845224961 , 126.7045492812 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202945 , 37.3845331412 , 126.7045459638 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202947 , 37.3845331466 , 126.7045458880 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202949 , 37.3845331335 , 126.7045458708 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202951 , 37.3845331292 , 126.7045458831 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202953 , 37.3845331014 , 126.7045459709 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202955 , 37.3845315732 , 126.7045467378 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202957 , 37.3845224970 , 126.7045502517 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209202959 , 37.3845045914 , 126.7045555822 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203001 , 37.3844844053 , 126.7045585522 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203003 , 37.3844721718 , 126.7045585399 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203005 , 37.3844631484 , 126.7045562448 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203007 , 37.3844587721 , 126.7045549367 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203009 , 37.3844538729 , 126.7045533725 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203011 , 37.3844536773 , 126.7045533880 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203025 , 37.3844536590 , 126.7045533777 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203027 , 37.3844536884 , 126.7045534019 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203029 , 37.3844543054 , 126.7045535740 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203031 , 37.3844608323 , 126.7045553420 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203033 , 37.3844731018 , 126.7045593267 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203035 , 37.3844864846 , 126.7045609767 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203037 , 37.3844994127 , 126.7045570441 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203039 , 37.3845105046 , 126.7045486105 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203041 , 37.3845185136 , 126.7045363025 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203043 , 37.3845248524 , 126.7045167584 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203045 , 37.3845312764 , 126.7044910933 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203047 , 37.3845365872 , 126.7044715247 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203049 , 37.3845426134 , 126.7044506579 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203051 , 37.3845479946 , 126.7044331189 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203053 , 37.3845541852 , 126.7044151224 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203055 , 37.3845606192 , 126.7043974197 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203057 , 37.3845651208 , 126.7043824678 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203059 , 37.3845685190 , 126.7043644140 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203101 , 37.3845708650 , 126.7043460549 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203103 , 37.3845728671 , 126.7043290509 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203105 , 37.3845756847 , 126.7043116792 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203107 , 37.3845756507 , 126.7043118103 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203109 , 37.3845756894 , 126.7043117885 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203111 , 37.3845757208 , 126.7043117336 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203828 , 37.3844606472 , 126.7045496787 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203830 , 37.3844606592 , 126.7045496846 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203832 , 37.3844607527 , 126.7045496919 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203834 , 37.3844634812 , 126.7045495169 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203836 , 37.3844708916 , 126.7045507409 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203838 , 37.3844826998 , 126.7045552213 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203840 , 37.3844876982 , 126.7045571226 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203842 , 37.3844888643 , 126.7045574481 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203844 , 37.3844888705 , 126.7045574503 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203922 , 37.3844549268 , 126.7045484344 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203924 , 37.3844556069 , 126.7045486165 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203926 , 37.3844607330 , 126.7045491585 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203928 , 37.3844699045 , 126.7045524715 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203930 , 37.3844831569 , 126.7045589544 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203932 , 37.3844967754 , 126.7045606016 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203934 , 37.3845061085 , 126.7045583522 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203936 , 37.3845153692 , 126.7045533404 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203938 , 37.3845233230 , 126.7045456672 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203940 , 37.3845279423 , 126.7045386607 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203942 , 37.3845314093 , 126.7045314563 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203944 , 37.3845340941 , 126.7045227938 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203946 , 37.3845352196 , 126.7045123863 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203948 , 37.3845338419 , 126.7044971453 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203950 , 37.3845323042 , 126.7044865337 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203952 , 37.3845321875 , 126.7044787865 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203954 , 37.3845336893 , 126.7044682272 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203956 , 37.3845385294 , 126.7044531902 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209203958 , 37.3845472441 , 126.7044345569 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204000 , 37.3845534879 , 126.7044204497 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204002 , 37.3845594787 , 126.7044041571 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204004 , 37.3845632841 , 126.7043911004 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204006 , 37.3845668675 , 126.7043735022 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204008 , 37.3845691286 , 126.7043568733 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204010 , 37.3845712961 , 126.7043389712 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204012 , 37.3845738831 , 126.7043215724 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204014 , 37.3845755414 , 126.7043128096 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204016 , 37.3845755060 , 126.7043128743 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204018 , 37.3845754858 , 126.7043129518 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204020 , 37.3845754767 , 126.7043129359 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204022 , 37.3845754942 , 126.7043128648 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204024 , 37.3845755138 , 126.7043128886 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204026 , 37.3845754983 , 126.7043129100 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204028 , 37.3845754861 , 126.7043128691 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204030 , 37.3845754915 , 126.7043128568 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204032 , 37.3845754774 , 126.7043128697 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204034 , 37.3845754690 , 126.7043128605 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204036 , 37.3845755040 , 126.7043129119 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204038 , 37.3845755086 , 126.7043129828 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204040 , 37.3845755129 , 126.7043129406 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204042 , 37.3845754902 , 126.7043129006 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204044 , 37.3845754990 , 126.7043128840 , 1);
INSERT INTO locinfo(carid, time, movex, movey, carstatus) 
values (0 , 20211209204046 , 37.3845755141 , 126.7043128237 , 1);
