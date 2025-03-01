CREATE TABLE playoffround (
    
    id int (16) NOT NULL,
    team1Id int (13) NOT NULL,
    team2Id int (16) NOT NULL,
    startTime date NOT NULL,
    endTime date NOT NULL,
    roundNum int (16) NOT NULL,
    PRIMARY KEY (id, startTime)
);

CREATE TABLE hockeygame (
    id int (16) NOT NULL,
    roundld int (16) NOT NULL,
    startTime date NOT NULL,
    description text,
    team1Id int (16) NOT NULL,
    team2Id int (16) NOT NULL,
    PRIMARY KEY (id, startTime)
);

CREATE TABLE gamescores (
    id int (16) NOT NULL,
    team1Id int (16) NOT NULL,
    team2Id int (16) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE hockeyteam (
    id int (16) NOT NULL,
    name varchar (27) NOT NULL,
    logo varchar (40) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE hockeyteamplayer (
    id int (16) NOT NULL,
    hockeyTeamId int (10) NOT NULL,
    firstName varchar (20) NOT NULL,
    lastName varchar (25) NOT NULL,
    jerseyNum int (3) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE user (
    id int (16) NOT NULL,
    username varchar (40) NOT NULL,
    password varchar (35) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE userinfo (
    id int (16) NOT NULL,
    firstName varchar (20) NOT NULL,
    lastName varchar (25) NOT NULL,
    email varchar (45) NOT NULL,
    round1Points int (2) NOT NULL,
    round2Points int (2) NOT NULL,
    round3Points int (2) NOT NULL,
    round4Points int (2) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE userscorepicks (
    id int (16) NOT NULL,
    hockeyGameId int (16) NOT NULL,
    team1IdScore int (2) NOT NULL,
    team2IdScore int (2) NOT NULL,
    userId int (16) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE userstatspicks (
    id int (16) NOT NULL,
    round1 int (16) NOT NULL,
    goalLeaderId varchar (16) NOT NULL,
    assistLeaderId varchar (16) NOT NULL,
    penaltyLeaderId varchar (16) NOT NULL,
    plusMinusId int (16) NOT NULL,
    faceOffsWonLeaderId int (2) NOT NULL,
    sogLeaderId int (2) NOT NULL,
    numShutouts int (2) NOT NULL,
    userId int (16) NOT NULL
);

CREATE TABLE roundstats (
    id int (16) NOT NULL,
    numShutouts int (2) NOT NULL,
    goalLeaderId varchar (16) NOT NULL,
    assistLeaderId varchar (16) NOT NULL,
    penaltyLeaderId varchar(16) NOT NULL,
    plusMinusId int (16) NOT NULL,
    faceOffsWonLeaderId int (2) NOT NULL,
    sogLeaderId int (2) NOT NULL,
    PRIMARY KEY (id)
);


INSERT into playoffround (id,team1Id,team2Id,startTime, endTime, roundNum)
values (1,1,2,'2025-02-25 19:36','2025-02-25 20:21',3);

INSERT into hockeygame (id, roundld, startTime, description, team1Id, team2Id)
values (1, 1, '2025-02-27 20:35', 'Quarterfinals', 1, 2);

INSERT into gamescores (id, team1Id, team2Id)
values (1, 2, 2);

INSERT into roundstats (id, numShutouts, goalLeaderId, assistLeaderId , penaltyLeaderId, plusMinusId, faceoffsWonLeaderId,  sogLeaderId)
values (1, 3, 4, 4, 8, 3, 14, 20);

INSERT into userstatspicks (id, round1, goalLeaderId, assistLeaderId, penaltyLeaderId, plusMinusId, faceoffsWonLeaderId, sogLeaderId, numShutouts, userId)
values (1, 1, 10, 15, 12, 8, 14, 20, 2, 2);

INSERT into user (id, username, password)
values (3, 'CANDYX', 'MessiT');

INSERT INTO userscorepicks (id, hockeyGameId, team1IdScore, team2IdScore, userId)
values (1, 1, 2, 2, 1);

INSERT into hockeyteam (id, name, logo)
values(1, 'Team A', 'oxa');

INSERT into hockeyteamplayer (id, hockeyTeamId, firstName, lastName, jerseyNum)
values (1, 1, 'Aseret', 'Camila', 8);

INSERT into  userinfo (id, firstName, lastName, email, round1Points, round2Points, round3Points, round4Points)
values (1, 'Aseret', 'Camila', 'camila.xin611@gmail.com', 0, 1, 1, 2);
