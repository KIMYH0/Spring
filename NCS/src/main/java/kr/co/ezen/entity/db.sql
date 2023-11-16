--ezenBoard--
CREATE TABLE Student (
    idx INT AUTO_INCREMENT PRIMARY KEY,
    membername VARCHAR(50) NOT NULL,
    memberaddr VARCHAR(50) NOT NULL,
    membermajor VARCHAR(50) NOT NULL,
    memberschool VARCHAR(50), -- 이 부분에 데이터 타입을 지정해야 합니다.
    latitude DECIMAL(15,10),
    longitude DECIMAL(15,10)
);

DROP TABLE IF EXISTS Student;

insert into Student(memberName, memberaddr, membermajor, memberschool)
values('김영한','주소1','전공1','학교1');

insert into Student(memberName, memberaddr, membermajor, memberschool)
values('김영호','주소2','전공2','학교1');

insert into Student(memberName, memberaddr, membermajor, memberschool)
values('김영훈','주소3','전공3','학교1');

insert into Student(memberName, memberaddr, membermajor, memberschool)
values('김영준','주소4','전공4','학교1');

insert into Student(memberName, memberaddr, membermajor, memberschool)
values('김영빈','주소5','전공5','학교1');


select *from Student;











