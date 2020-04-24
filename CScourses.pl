% CS Courses Offered by Cal Poly Pomona for B.S Program

top_goal(X):-
	cscourse(X).
	
% Core CS Courses
cscourse(BIO1110):-
	year(freshman).	 
	
	
cscourse(BIO110L):-
    year(freshman),
	coreq(BIO1110).
	
cscourse(CS1300):-
    year(freshman),
	(
	 (prereq(MAT1050),prereq(MAT1060));
	 (prereq(MAT1052),prereq(MAT1060));
	  prereq(MAT1140);
	  prereq(MAT1150);
	  prereq(MAT2140)
	).
	
cscourse(CS1400):-
    year(freshman),
	(
	 (prereq(MAT1050),prereq(MAT1060));    % needs prereq check
	 (prereq(MAT1052),prereq(MAT1060));    % needs prereq check
	  prereq(MAT1140);
	  prereq(MAT1150);
	  prereq(MAT2140)                      % needs prereq check
	).
	
cscourse(MAT1140):-
    year(freshman),
    (prereq(MAT1050),prereq(MAT1060)).
	
cscourse(MAT1150):-
    year(freshman),
    prereq(MAT1140).
	
cscourse(CS2400):-
    year(sophomore),
    (prereq(CS1400);prereq(CS1300)),
	(prereq(MAT1140);prereq(MAT1150);prereq(MAT2140)).
	
cscourse(CS2640):-
    year(sophomore),
    prereq(CS2400).
	
cscourse(CS3110):-
    year(junior),
    prereq(CS2400).
	
cscourse(CS3110):-
    year(junior),
    prereq(CS2400),
	prereq(MAT2250).
	
cscourse(CS3650):-
	year(junior),
	prereq(CS2640).
	
cscourse(CS3750):-
	year(junior);
	year(senior).
	
cscourse(CS4080):-
	year(junior);
	year(senior),
	prereq(CS2640),
	prereq(CS3110).
	
cscourse(CS4310):-
	year(junior);
	year(senior),
	prereq(CS2400),
	prereq(CS3650).
	
cscourse(CS4630):-
	year(senior).

cscourse(CS4080):-
	year(junior);
	year(senior),
	prereq(CS2400).

cscourse(MAT2250):-
	year(sophomore);
	year(junior);
	year(senior),
	prereq(CS2640),
	prereq(CS3110).
	
cscourse(PHY1510):-
	year(sophomore);
	year(junior);
	year(senior),
	prereq(MAT1140);
	prereq(MAT1150),
	coreq(PHY1510L).
	
cscourse(PHY1520):-
	year(sophomore);
	year(junior);
	year(senior),
	coreq(PHY1520L).
	
cscourse(STA2260):-
	year(sophomore);
	year(junior);
	year(senior),
	prereq(MAT1150);
	prereq(MAT1310).
	
% prereq additional classes
cscourse(MAT1050):-
	year(freshman);
	year(sophomore);
	year(junior),
	prereq(MAT1050).
	
cscourse(MAT1052):-
	year(freshman);
	year(sophomore);
	year(junior),
	prereq(MAT1051).
	
cscourse(MAT1060):-
	year(freshman);
	year(sophomore);
	year(junior),
	prereq(STA2100).
	
cscourse(MAT1310):-
	year(sophomore);
	year(junior);
	year(senior),
	prereq(MAT1150);
	prereq(MAT1300).
	
cscourse(MAT1300):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(MAT1050),prereq(MAT1060));
	(prereq(MAT1052),prereq(MAT1060)).

cscourse(CS1280):-
	year(freshman);
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(MAT1050), prereq(MAT1052));
	(prereq(MAT1060));
	(prereq(MAT1140));
	(prereq(MAT1150));
	(prereq(MAT2140)).


% elective cs courses
cselective(CS3520):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS2400)).

cselective(CS3700):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS3310)).

cselective(CS3800):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS2400);
	prereq(CS2640)).

cselective(CS4110):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS3110)).

cselective(CS4200):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS3310)).

cselective(CS4210):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS2410));
	(prereq(CS3010)).

cselective(CS4250):-
	year(sophomore);
	year(junior);
	year(senior).

cselective(CS4350):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS2400)).

cselective(CS4450):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS2400));
	(prereq(CS2560)).

cselective(CS4500):-
	year(sophomore);
	year(junior);
	year(senior).

cselective(CS4600):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS2400)).

cselective(CS4650):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS2400)).

cselective(CS4700):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS2400)).

cselective(CS4750):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS2400)).

cselective(CS4810):-
	year(sophomore);
	year(junior);
	year(senior).

cselective(CS4990):-
	year(senior).

cselective(CS2450):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS1400)).

cselective(CS2520):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS1400), prereq(CS1280)).

ceselective(CS2560):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(CS1400), prereq(CS1280)).

cselective(CS2990):-
	year(sophomore);
	year(junior);
	year(senior).

cselective(CS2000):-
	year(sophomore);
	year(junior);
	year(senior).

cselective(CS4000):-
	year(junior);
	year(senior).

cselective(CS4410):-
	year(junior);
	year(senior).

cselective(CS4610):-
	year(junior);
	year(senior).

cselective(CS4620):-
	year(junior);
	year(senior),
	(prereq(CS4610)).
	
prereq(C):-
    ask(prereq,C).
	
coreq(C):-
	ask(coreq,C).
	
year(X):-
    menuask(year,X,[freshman,sophomore,junior,senior]).
	
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	
%%%%%%%%%%% Shell for user in Prolog %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

main:-
	greeting,
	repeat,
	write('> '),
	read(X),
	do(X),
	X == quit.
	
greeting:-
	write('Thsi si a Expert System for recommending CS courses at CPP.'),
	nl.
	
do(consult):-
	solve,
	!.
	
do(quit).

do(X):-
	write(X),
	write(' is not a command.'),
	nl,
	fail.
	
load_kb:-
	write('Enter file name: '),
	read(F),
	reconsult(F).       					% update KB with known clauses
	
ask(Attribute, Value):-
	known(yes, Attribute, Value),   		% succeed if true
	!.                  		% stop looking
	
ask(Attribute, Value):-
	known(_, Attribute, Value),     		% fail if false
	!,
	fail.
	
ask(Attribute, Value):-
	write(Attribute:Value),         		% ask user
	write('? : '),
	read(Y),            					% get the answer
	asserta(known(Y, Attribute, Value)), 	% remember it
    Y == yes. 								% succeed or fail 
	
menuask(Attribute,Value,_) :-
	known(yes,Attribute,Value), 			% succeed if we know
	!.
menuask(Attribute,_,_) :-
	known(yes,Attribute,_), 				% fail if its some other value
	!, fail.
	
menuask(Attribute,Value,MenuList):-
	write('What is the value for '),write(Attribute), write('?'), nl,
	write(MenuList),nl,
	read(X),
	check_val(X,Attribute,Value,MenuList),
	asserta(known(yes,Attribute,X)),
	X==Value.
	
check_val(X,Attribute,Value,MenuList):-
	member(X,MenuList),
	!.
	
check_val(X,Attribute,Value,MenuList):-
	write(X), write(' is not a legal value, try again.'), nl,
	menuask(Attribute, Value, MenuList). 
	
	
solve :-
	abolish(known, 3),
	top_goal(X),
	write('Your recommended course is '), write(X), nl.
solve :-
	write('No answer found.'), nl. 
	




