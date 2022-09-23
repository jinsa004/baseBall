# MyBatis DB연결 세팅

### 설정방법
- MyBatisConfig 파일 필요
- resources/mapper/*.xml 파일 필요
- stadiums, teams, players 엔티티 필요
- stadiumsDao, teamsDao, playersDao 인터페이스 생성 필요

### MariaDB 사용자 생성 및 권한 주기
```sql
CREATE USER 'green'@'%' IDENTIFIED BY 'green1234';
CREATE DATABASE greendb;
GRANT ALL PRIVILEGES ON greendb.* TO 'green'@'%';
```

### 테이블 생성
```sql
USE greendb;

create table stadiums(
    id int primary KEY auto_increment,
    stadiumsName varchar(50),
    createdAt TIMESTAMP
);

create table teams(
    id int primary KEY auto_increment,
    teamsName varchar(50),
	 stadiumsId INT,
    createdAt TIMESTAMP
);
              
create table players(
    id int primary KEY auto_increment,
    playersName varchar(50),
    teamsId INT,
    POSITION VARCHAR(30),
    createdAt TIMESTAMP
);

create table kickOut(
    id int primary KEY auto_increment,
    teamsId INT,
    playersId INT,
	 reason VARCHAR(50),
    createdAt TIMESTAMP
);


```

### 더미데이터 추가
```sql
INSERT into stadiums(stadiumsName, createdAt)
VALUES("잠실야구장", NOW());
INSERT into stadiums(stadiumsName, createdAt)
VALUES("사직야구장", NOW());
INSERT into stadiums(stadiumsName, createdAt)
VALUES("월명야구장", NOW());
INSERT into teams(teamsName, stadiumsId, createdAt)
VALUES("두산 베어스", 1, NOW());
INSERT into teams(teamsName, stadiumsId, createdAt)
VALUES("롯데 자이언츠", 2, NOW());
INSERT into teams(teamsName, stadiumsId, createdAt)
VALUES("기아 타이거즈", 3, NOW());
INSERT into players(playersName, teamsId, POSITION, createdAt)
VALUES("스탁", 1, "투수", NOW());
INSERT into players(playersName, teamsId, POSITION, createdAt)
VALUES("박세혁", 1, "포수", NOW());
INSERT into players(playersName, teamsId, POSITION, createdAt)
VALUES("페르난데스", 1, "내야수", NOW());
INSERT into players(playersName, teamsId, POSITION, createdAt)
VALUES("강윤구", 2, "투수", NOW());
INSERT into players(playersName, teamsId, POSITION, createdAt)
VALUES("이대호", 2, "타자", NOW());
INSERT into players(playersName, teamsId, POSITION, createdAt)
VALUES("강태율", 2, "포수", NOW());
INSERT into players(playersName, teamsId, POSITION, createdAt)
VALUES("고영창", 3, "투수", NOW());
INSERT into players(playersName, teamsId, POSITION, createdAt)
VALUES("고종욱", 3, "외야수", NOW());
INSERT into players(playersName, teamsId, POSITION, createdAt)
VALUES("김규성", 3, "내야수", NOW());
INSERT into kickout(teamsId, playersId, reason, createdAt)
VALUES(1, 1, "집안일", NOW());
INSERT into kickout(teamsId, playersId, reason, createdAt)
VALUES(2, 2, "전입", NOW());
INSERT into kickout(teamsId, playersId, reason, createdAt)
VALUES(3, 3, "개인부상", NOW());

COMMIT;
```