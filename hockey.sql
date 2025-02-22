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
