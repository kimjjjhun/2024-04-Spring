drop table tbl_board;
drop table tbl_reply;

create table tbl_board(
    bno number(10,0),
    title varchar2(200) not null,
    content varchar2(2000) not null,
    writer varchar2(50) not null,
    regdate date default sysdate,  -- 작성일
    updatedate date default sysdate -- 수정일    
);

alter table tbl_board add CONSTRAINT pk_board primary key(bno);

drop SEQUENCE seq_board;
create SEQUENCE seq_board;

insert into tbl_board(bno, title, content, writer)
values(seq_board.nextval, '테스트 제목', '테스트 내용', 'user00');

commit;
select * from TBL_BOARD;

select seq_board.currval from dual;  -- 시퀀스 조회



create table tbl_reply(
    rno number(10,0),            -- 기본키
    bno number(10,0) not null,   --외래키
    reply varchar2(1000) not null,
    replyer varchar2(50) not null,
    replyDate date default sysdate,
    updateDate date default sysdate
);

create SEQUENCE seq_reply;

alter table tbl_reply add CONSTRAINT pk_reply primary key(rno);

alter table tbl_reply add CONSTRAINT fk_reply_board 
FOREIGN key(bno) REFERENCES tbl_board(bno);