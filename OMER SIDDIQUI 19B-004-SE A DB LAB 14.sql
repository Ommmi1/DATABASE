create table player04 (
player_id number(4) primary key,
player_name varchar2(15) not null,
expertise varchar2(20) not null,
captain number(4));

create table team04 (
team_id number(4) primary key,
captain_id number(4) not null,
city varchar2(15)not null,
coach varchar2(15)not null,
foreign key (captain_id) references player04(player_id));

create table game04(
game_id number(4) primary key,
game_number number(4) not null,
player_id number(4) not null,
team_id number(4) not null,
score number(4),
balls_played number(4),
wickets number(4),
score_conceded number(4),
foreign key (player_id) references player04(player_id),
foreign key (team_id) references team04(team_id));



create or replace procedure insert_player004(
p_player_id in player04.player_id%type,
p_player_name in player04.player_name%type,
p_expertise in player04.expertise%type,
p_captain in player04.captain%type
)
is 
begin
insert into player04 
values(p_player_id,p_player_name,p_expertise,p_captain);
commit;
end insert_player004;

execute insert_player004(2,'Adnan',' fast bowler',2);

select * from player04;

create or replace procedure insert_team04(
t_team_id in team04.team_id%type,
t_captain_id in team04.captain_id%type,
t_city in team04.city%type,
t_coach in team04.coach%type)
is 
begin
insert into team04 
values(t_team_id,t_captain_id,t_city,t_coach);
commit;
end insert_team04;

EXECUTE INSERT_TEAM04(1,1,'Karachi','Amir');
execute insert_team04(2,2,'Ismamabad','Shadab');
select * from team04;

create or replace procedure insert_game04(
g_game_id in game04.game_id%type,
g_game_number in game04.game_number%type,
g_player_id in game04.player_id%type,
g_team_id in game04.team_id%type,
g_score in game04.score%type,
g_balls_played in game04.balls_played%type,
g_wickets in game04.wickets%type,
g_score_conc in game04.score_conceded%type)
is 
begin
insert into game04
values(g_game_id,g_game_number,g_player_id,g_team_id,g_score,g_balls_played,g_wickets,g_score_conc);
commit;
end insert_game04;

execute insert_game04(1,1,1,1,50,50,null,null);
select * from game04;

--*/sequence*/

CREATE SEQUENCE id_seq
    INCREMENT BY 10
    START WITH 10
    MINVALUE 10
    MAXVALUE 100
    CYCLE
    CACHE 2;
    
select id_seq.currval
from dual;

UPDATE PLAYER04
   SET player_id = id_seq.nextval;


CREATE OR REPLACE TRIGGER AUDIT_omer
AFTER DELETE OR INSERT OR UPDATE ON player04
FOR EACH ROW
BEGIN
IF DELETING THEN

 UPDATE AUDIT_TABLE19b04 SET  del=del +1 
 WHERE user_name= USER AND table_name = 'player04'
 AND column_name IS NULL;
ELSIF INSERTING THEN
 UPDATE AUDIT_TABLE19b04 SET ins = ins+1
 WHERE user_name = USER AND table_name = 'player04'
 AND  column_name IS NULL;
ELSIF UPDATING ('expertise') THEN
 UPDATE AUDIT_TABLE19b04 SET upd=upd+1
 WHERE user_name = USER AND table_name = 'player04'
 AND column_name = 'expertise' ;
ELSE
 UPDATE AUDIT_TABLE19b04 SET upd = upd + 1
 WHERE user_name= USER AND table_name = 'player04'
 AND column_name IS NULL;
END IF;
END;

CREATE TABLE AUDIT_TABLE19b04(
USER_NAME VARCHAR2(20) NOT NULL,
TABLE_NAME VARCHAR2(20) NOT NULL,
COLUMN_NAME VARCHAR2(20),
INS NUMBER(2),
UPD NUMBER(2) NOT NULL,
DEL NUMBER(2),
MAX_INS NUMBER(2),
MAX_UPD NUMBER(2) NOT NULL,
MAX_DEL NUMBER(2)
);
INSERT INTO AUDIT_TABLE19b04(USER_NAME,TABLE_NAME,COLUMN_NAME,INS,UPD,DEL,MAX_INS,MAX_UPD,MAX_DEL)
VALUES ('scott','player04',NULL,1,1,1,5,5,5);
INSERT INTO AUDIT_TABLE19B04(USER_NAME,TABLE_NAME,COLUMN_NAME,INS,UPD,DEL,MAX_INS,MAX_UPD,MAX_DEL)
VALUES ('scott','player04','score',NULL,1,NULL,NULL,5,NULL);
INSERT INTO AUDIT_TABLE19b04(USER_NAME,TABLE_NAME,COLUMN_NAME,INS,UPD,DEL,MAX_INS,MAX_UPD,MAX_DEL)
VALUES ('scott','player04',NULL,0,0,0,5,0,0);