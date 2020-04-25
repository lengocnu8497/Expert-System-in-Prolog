% cs Courses Offered by Cal Poly Pomona for B.S Program

top_goal(X):-
	cscourse(X).
	
% Core cs Courses
cscourse(bio1110):-
	year(freshman).	 
	
	
cscourse(bio1110l):-
    year(freshman),
	coreq(bio1110).
	
cscourse(cs1300):-
    year(freshman),
	(
	 (prereq(mat1050),prereq(mat1060));
	 (prereq(mat1052),prereq(mat1060));
	  prereq(mat1140);
	  prereq(mat1150);
	  prereq(mat2140)
	).
	
cscourse(cs1400):-
    year(freshman),
	(
	 (prereq(mat1050),prereq(mat1060));    % needs prereq check
	 (prereq(mat1052),prereq(mat1060));    % needs prereq check
	  prereq(mat1140);
	  prereq(mat1150);
	  prereq(mat2140)                      % needs prereq check
	).
	
cscourse(mat1140):-
    year(freshman),
    (prereq(mat1050),prereq(mat1060)).
	
cscourse(mat1150):-
    year(freshman),
    prereq(mat1140).
	
cscourse(cs2400):-
    year(sophomore),
    (prereq(cs1400);prereq(cs1300)),
	(prereq(mat1140);prereq(mat1150);prereq(mat2140)).
	
cscourse(cs2640):-
    year(sophomore),
    prereq(cs2400).
	
cscourse(cs3110):-
    year(junior),
    prereq(cs2400).
	
cscourse(cs3110):-
    year(junior),
    prereq(cs2400),
	prereq(mat2250).
	
cscourse(cs3650):-
	year(junior),
	prereq(cs2640).
	
cscourse(cs3750):-
	year(junior);
	year(senior).
	
cscourse(cs4080):-
	year(junior);
	year(senior),
	prereq(cs2640),
	prereq(cs3110).
	
cscourse(cs4310):-
	year(junior);
	year(senior),
	prereq(cs2400),
	prereq(cs3650).
	
cscourse(cs4630):-
	year(senior).

cscourse(cs4800):-
	year(junior);
	year(senior),
	prereq(cs2400).

cscourse(mat2250):-
	year(sophomore);
	year(junior);
	year(senior),
	prereq(cs2640),
	prereq(cs3110).
	
cscourse(phy1510):-
	year(sophomore);
	year(junior);
	year(senior),
	prereq(mat1140);
	prereq(mat1150),
	coreq(phy1510L).
	
cscourse(phy1520):-
	year(sophomore);
	year(junior);
	year(senior),
	coreq(phy1520L).
	
cscourse(sta2260):-
	year(sophomore);
	year(junior);
	year(senior),
	prereq(mat1150);
	prereq(mat1310).
	
% prereq additional classes
cscourse(mat1050):-
	year(freshman);
	year(sophomore);
	year(junior),
	prereq(mat1050).
	
cscourse(mat1052):-
	year(freshman);
	year(sophomore);
	year(junior),
	prereq(mat1051).
	
cscourse(mat1060):-
	year(freshman);
	year(sophomore);
	year(junior),
	prereq(sta2100).
	
cscourse(mat1310):-
	year(sophomore);
	year(junior);
	year(senior),
	prereq(mat1150);
	prereq(mat1300).
	
cscourse(mat1300):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(mat1050),prereq(mat1060));
	(prereq(mat1052),prereq(mat1060)).

cscourse(cs1280):-
	year(freshman);
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(mat1050), prereq(mat1052));
	(prereq(mat1060));
	(prereq(mat1140));
	(prereq(mat1150));
	(prereq(mat2140)).


% elective cs courses
cselective(cs3520):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs2400)).

cselective(cs3700):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs3310)).

cselective(cs3800):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs2400);
	prereq(cs2640)).

cselective(cs4110):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs3110)).

cselective(cs4200):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs3310)).

cselective(cs4210):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs2410));
	(prereq(cs3010)).

cselective(cs4250):-
	year(sophomore);
	year(junior);
	year(senior).

cselective(cs4350):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs2400)).

cselective(cs4450):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs2400));
	(prereq(cs2560)).

cselective(cs4500):-
	year(sophomore);
	year(junior);
	year(senior).

cselective(cs4600):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs2400)).

cselective(cs4650):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs2400)).

cselective(cs4700):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs2400)).

cselective(cs4750):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs2400)).

cselective(cs4810):-
	year(sophomore);
	year(junior);
	year(senior).

cselective(cs4990):-
	year(senior).

cselective(cs2450):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs1400)).

cselective(cs2520):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs1400), prereq(cs1280)).

ceselective(cs2560):-
	year(sophomore);
	year(junior);
	year(senior),
	(prereq(cs1400), prereq(cs1280)).

cselective(cs2990):-
	year(sophomore);
	year(junior);
	year(senior).

cselective(cs2000):-
	year(sophomore);
	year(junior);
	year(senior).

cselective(cs4000):-
	year(junior);
	year(senior).

cselective(cs4410):-
	year(junior);
	year(senior).

cselective(cs4610):-
	year(junior);
	year(senior).

cselective(cs4620):-
	year(junior);
	year(senior),
	(prereq(cs4610)).
	
prereq(Course):-
    ask(prereq,Course).
	
coreq(Course):-
	ask(coreq,Course).
	
year(Standing):-
    menuask(year,Standing,[freshman,sophomore,junior,senior]).
	
	
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
	write('Expert System for CS Courses Recommendation at CPP.'), nl,
	write('Type "consult." to start consulting.'), nl,
	write('Type "question." to verify class eligibility.'), nl,
	write('Type "quit." to exit.'), nl,
	nl.
	
do(consult):-
	solve,
	!.
	
do(question):-
	resolve,
	!.
	
do(quit).

do(X):-
	write(X),
	write(' is not a command.'),
	nl,
	fail.     					% update KB with known clauses
	
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
	retractall(known(_,_,_)),
	top_goal(X),
	write('Your recommended course is '), write(X), nl.
solve :-
	write('No answer found.'), nl. 
	
resolve :-
	write('What class do you want to take (ex. cs3750)? '),nl,
	read(X),
	top_goal(X) -> (write('Eligible! '),nl);
	write('Not eligible. '),nl.
	
	




