% cs Courses Offered by Cal Poly Pomona for B.S Program

top_goal(X):-
	eligible(X).

% experiment
eligible(cs1300):-
	not(known(yes,cscourse,cs1300)),
    known(yes,year,freshman),
	known(yes,cscourse,mat1150).
	
eligible(cs3520):-
	not(known(yes,cscourse,cs3520)), 
	(known(yes,year,junior);
	known(yes,cscourse,cs2400)).
		
eligible(cs2400):-
	not(known(yes,cscourse,cs2400)),
	known(yes,year,sophomore),
	known(yes,cscourse,cs1400).
	
eligible(cs2640):-
	not(known(yes,cscourse,cs2640)),
    known(yes,year,sophomore),
    known(yes,cscourse,cs2400).
	
eligible(cs3110):-
	not(known(yes,cscourse,cs3110)),
    known(yes,year,junior),
    known(yes,cscourse,cs2400).
	
eligible(cs3310):-
	not(known(yes,cscourse,cs3310)),
    known(yes,year,junior),
    known(yes,cscourse,cs2400),
	known(yes,cscourse,mat2250).
	
eligible(cs3650):-
	not(known(yes,cscourse,cs3650)),
	known(yes,year,junior),
	known(yes,cscourse,cs2640).
	
eligible(cs3750):-
	not(known(yes,cscourse,cs3750)),
	(known(yes,year,junior);
	known(yes,year,senior)).
	
eligible(cs4080):-
	not(known(yes,cscourse,cs4080)),
	(known(yes,year,junior);
	known(yes,year,senior),
	known(yes,cscourse,cs2640),
	known(yes,cscourse,cs3110)).
	
eligible(cs4310):-
	not(known(yes,cscourse,cs4310)),
	(known(yes,year,junior);
	known(yes,year,senior),
	known(yes,cscourse,cs2400),
	known(yes,cscourse,cs3650)).
	
eligible(cs4630):-
	not(known(yes,cscourse,cs4630)),
	known(yes,year,senior).
	
eligible(cs4800):-
	not(known(yes,cscourse,cs4800)),
	(known(yes,year,junior);
	known(yes,year,senior),
	known(yes,cscourse,cs2400)).
	
eligible(mat2250):-
	not(known(yes,cscourse,mat2250)),
	(known(yes,year,sophomore);
	known(yes,year,junior);
	known(yes,year,senior),
	known(yes,cscourse,mat1150)).
	
eligible(phy1510):-
	not(known(yes,cscourse,phy1510)),
	(known(yes,year,sophomore);
	known(yes,year,junior);
	known(yes,year,senior),
	known(yes,cscourse,mat1140);
	known(yes,cscourse,mat1150)).
	
eligible(phy1520):-
	not(known(yes,cscourse,phy1520)),
	(known(yes,year,sophomore);
	known(yes,year,junior);
	known(yes,year,senior),
	known(yes,cscourse,phy1510)).
	
eligible(sta2260):-
	not(known(yes,cscourse,sta2260)),
	(known(yes,year,sophomore);
	known(yes,year,junior);
	known(yes,year,senior),
	known(yes,cscourse,mat1150);
	known(yes,cscourse,mat1310)).

cs1300:-
	mat1150,
	asserta(known(yes,cscourse,cs1300)).
	
cs1400:-
    cs1300,
	asserta(known(yes,cscourse,cs1400)).
	
cs3520:-
	cs2400,
	asserta(known(yes,cscourse,cs3520)).
	
cs2400:-
	cs1400,
	asserta(known(yes,cscourse,cs2400)).
	
cs2640:-
	cs2400,
	asserta(known(yes,cscourse,cs2640)).
	
cs3110:-
	cs2400,
	asserta(known(yes,cscourse,cs3110)).
	
cs3310:-
	cs2400,
	mat2250,
	asserta(known(yes,cscourse,cs3310)).
	
cs3650:-
	cs2640,
	asserta(known(yes,cscourse,cs3650)).
	
cs3750:-
	asserta(known(yes,cscourse,cs3750)).
	
cs4080:-
	cs2640,
	cs3110,
	asserta(known(yes,cscourse,cs4080)).
	
cs4310:-
	cs3650,
	asserta(known(yes,cscourse,cs4310)).
	
cs4630:-
	asserta(known(yes,cscourse,cs4630)).
	
cs4800:-
	asserta(known(yes,cscourse,cs4800)).
	
mat2250:-
	mat1150,
	asserta(known(yes,cscourse,mat2250)).
	
phy1510:-
	mat1150,
	asserta(known(yes,cscourse,phy1510)),
	asserta(known(yes,cscourse,phy1510l)).
	
phy1520:-
	phy1510,
	asserta(known(yes,cscourse,phy1520)),
	asserta(known(yes,cscourse,phy1520l)).
	
sta2260:-
	mat1310,
	asserta(known(yes,cscourse,sta2260)).

mat1150:-
	mat1140,
	asserta(known(yes,cscourse,mat1150)).
	
mat1140:-
	asserta(known(yes,cscourse,mat1140)).
	
mat1310:-
	mat1150,
	asserta(known(yes,cscourse,mat1310)).

% class standing inference	

senior:-
	asserta(known(yes,year,senior)).
	
junior:-
	asserta(known(yes,year,junior)).
	
sophomore:-
	asserta(known(yes,year,sophomore)).
	
freshman:-
	asserta(known(yes,year,freshman)).
	
	
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
	
go:-
	retractall(known(yes,_,_)),
	retractall(alrd_recommended(_)),
	greeting,
	class_standing,
	recommendation,	
	do(quit).
	
recommendation:-
	repeat,
		loop,
		top_goal(X),
		not_yet_recommended(X),
		write('Your recommended class is '), write(X),nl,nl,
		asserta(known(yes,recommended,X)),
		write('Do you want to continue? (yes/no) '), read(Y), nl,
	Y == no.
	
not_yet_recommended(X):-
		not(known(yes,recommended,X)).
		
not_yet_recommended(X):-
		write('There is no more class to recommend.'),
		do(quit).
	
loop:-
	write('Type "quit." to arrive at recommendation.'), nl,
	repeat,	
	write('What classes have you taken last semester? '),
	read(X),
	do(X),
	X == quit.
	
greeting:-
	write('Expert System for CS Courses Recommendation at CPP v.2.0.'), nl,
	write('Provide answer(s) to question(s) for database assertaion.'), nl,
	write('Type "quit." to exit.'), nl,
	nl.
	
class_standing:-
	write('What is your class standing? '), nl,
	read(Answer),
	check_year(Answer,[freshman,sophomore,junior,senior]),
	do(Answer),
	!.
	
check_year(X,MenuList):-
    member(X,MenuList),
	!.
	
check_year(X,MenuList):-
    write(X), write(' is not a legal value, try again.'), nl,nl,
	class_standing. 
	
	
do(consult):-
	solve,
	nl,
	!.
	
do(question):-
	resolve,
	nl,
	!.
	
do(X):-
	X,
	nl,
	!.

do(X):-
	write(X),
	write(' is not a command.'),
	nl,nl,
	fail.     					% update KB with known clauses
	
quit.
	
	
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
	read(Y), nl,           					% get the answer
	assertaa(known(Y, Attribute, Value)), 	% remember it
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
	read(X),nl,
	check_val(X,Attribute,Value,MenuList),
	assertaa(known(yes,Attribute,X)),
	X==Value.
	
check_val(X,Attribute,Value,MenuList):-
	member(X,MenuList),
	!.
	
check_val(X,Attribute,Value,MenuList):-
	write(X), write(' is not a legal value, try again.'), nl,nl,
	menuask(Attribute, Value, MenuList). 
	
	
solve :-
	retractall(known(_,_,_)),
	top_goal(X),
	nl, write('Your recommended course is '), write(X), nl, nl.
solve :-
	write('No answer found.'), nl,nl. 
	
resolve :-
	write('What class do you want to take (ex. cs3750)? '),nl,nl,
	read(X),
	eligible(X) -> (write('Eligible! '),nl,nl);
	write('Not eligible. '),nl,nl.
	
	



