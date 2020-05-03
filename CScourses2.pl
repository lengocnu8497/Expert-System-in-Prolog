% cs Courses Offered by Cal Poly Pomona for B.S Program

top_goal(X):-
	eligible(X).

% experiment
eligible(cs1300):-
	not(known(yes,cscourse,cs1300)),
	(known(yes,cscourse,mat1050),known(yes,cscourse,mat1060);
	known(yes,cscourse,mat1140);
	known(yes,cscourse,mat1150);
	known(yes,cscourse,mat2140)).
	
eligible(cs3520):-
	not(known(yes,cscourse,cs3520)),
	known(yes,cscourse,cs2400).
		
eligible(cs2400):-
	not(known(yes,cscourse,cs2400)),
	known(yes,cscourse,cs1400),
	known(yes,cscourse,cs1300),
	(known(yes,cscourse,mat1140);
	known(yes,cscourse,mat1150);
	known(yes,cscourse,mat2140)).
	
eligible(cs2640):-
	not(known(yes,cscourse,cs2640)),
	(known(yes,cscourse,cs1300),
	known(yes,cscourse,cs1400)).
	
eligible(cs3110):-
	not(known(yes,cscourse,cs3110)),
    known(yes,cscourse,cs2400).
	
eligible(cs3310):-
	not(known(yes,cscourse,cs3310)),
    known(yes,cscourse,cs2400),
	known(yes,cscourse,sta2260).
	
eligible(cs3650):-
	not(known(yes,cscourse,cs3650)),
	known(yes,cscourse,cs2640).
	
eligible(cs3750):-
	not(known(yes,cscourse,cs3750)),
	(known(yes,year,junior);
	known(yes,year,senior)).
	
eligible(cs4080):-
	not(known(yes,cscourse,cs4080)),
	((known(yes,year,junior);
	known(yes,year,senior)),
	known(yes,cscourse,cs2640),
	known(yes,cscourse,cs3110)).
	
eligible(cs4310):-
	not(known(yes,cscourse,cs4310)),
	((known(yes,year,junior);
	known(yes,year,senior)),
	known(yes,cscourse,cs2400),
	known(yes,cscourse,cs3650)).
	
eligible(cs4630):-
	not(known(yes,cscourse,cs4630)),
	known(yes,year,senior).
	
eligible(cs4800):-
	not(known(yes,cscourse,cs4800)),
	((known(yes,year,junior);
	known(yes,year,senior)),
	known(yes,cscourse,cs2400)).
	
eligible(mat2250):-
	not(known(yes,cscourse,mat2250)),
	known(yes,cscourse,mat1150).
	
eligible(phy1510):-
	not(known(yes,cscourse,phy1510)),
	(known(yes,cscourse,mat1140);
	known(yes,cscourse,mat1150)).
	
eligible(phy1520):-
	not(known(yes,cscourse,phy1520)),
	(known(yes,cscourse,phy1510)).
	
eligible(sta2260):-
	not(known(yes,cscourse,sta2260)),
	(known(yes,cscourse,mat1150);
	known(yes,cscourse,mat1310)).

eligible(bio1110):-
	not(known(yes,cscourse,bio1110)),
	(known(yes,year,freshman);
	known(yes,cscourse,bio1110l)).

eligible(bio1110l):-
	not(known(yes,cscourse,bio1110l)),
	(known(yes,year,freshman);
	known(yes,cscourse,bio1110)).

eligible(cs1260):-
	not(known(yes,cscourse,cs1260)),
	(known(yes,cscourse,mat1050), known(yes,cscourse,mat1060);
	known(yes,cscourse,mat1140);
	known(yes,cscourse,mat1150)).

eligible(cs1280):-
	not(known(yes,cscourse,cs1280)),
	(known(yes,cscourse,mat1050),known(yes,cscourse,mat1060);
	known(yes,cscourse,mat1140);
	known(yes,cscourse,mat1150);
	known(yes,cscourse,mat2140)).

eligible(cs1400):-
	not(known(yes,cscourse,cs1400)),
	(known(yes,cscourse,mat1050),known(yes,cscourse,mat1060);
	known(yes,cscourse,mat1140);
	known(yes,cscourse,mat1150);
	known(yes,cscourse,mat2140)).

eligible(cs2450):-
	not(known(yes,cscourse,cs2450)),
	known(yes,cscourse,cs1400).

eligible(cs2560):-
	not(known(yes,cscourse,cs2560)),
	(known(yes,cscourse,cs1280);
	known(yes,cscourse,cs1400)).

eligible(cs2600):-
	not(known(yes,cscourse,cs2600)),
	(known(yes,cscourse,cs1280);
	known(yes,cscourse,cs1400)).

eligible(cs3010):-
	not(known(yes,cscourse,cs3010)),
	(known(yes,cscourse,mat1150),
	known(yes,cscourse,cs2400)).

eligible(cs3520):-
	not(known(yes,cscourse,cs3520)),
	(known(yes,cscourse,cs2400)).

eligible(cs3560):-
	not(known(yes,cscourse,cs3560)),
	(known(yes,cscourse,cs2400)).

eligible(cs3700):-
	not(known(yes,cscourse,cs3700)),
	known(yes,cscourse,cs3310).

eligible(cs3800):-
	not(known(yes,cscourse,cs3800)),
	(known(yes,cscourse,cs2400),
	known(yes,cscourse,cs2640)).

eligible(cs4110):-
	not(known(yes,cscourse,cs4110)),
	known(yes,cscourse,cs3110).

eligible(cs4200):-
	not(known(yes,cscourse,cs4200)),
	known(yes,cscourse,cs3310).

eligible(cs4210):-
	not(known(yes,cscourse,cs4210)),
	(known(yes,cscourse,cs3010)).

eligible(cs4250):-
	not(known(yes,cscourse,cs4250)),
	(known(yes,cscourse,cs2400)).

eligible(cs4350):-
	not(known(yes,cscourse,cs4350)),
	known(yes,cscourse,cs2400).

eligible(cs4450):-
	not(known(yes,cscourse,cs4450)),
	(known(yes,cscourse,cs2400),
	known(yes,cscourse,cs2560)).

eligible(cs4500):-
	not(known(yes,cscourse,cs4500)),
	known(yes,cscourse,cs3110).

eligible(cs4600):-
	not(known(yes,cscourse,cs4600)),
	known(yes,cscourse,cs2400).

eligible(cs4650):-
	not(known(yes,cscourse,cs4650)),
	known(yes,cscourse,cs2400).

eligible(cs4700):-
	not(known(yes,cscourse,cs4700)),
	known(yes,cscourse,cs2400).

eligible(cs4750):-
	not(known(yes,cscourse,cs4750)),
	known(yes,cscourse,cs2400).

eligible(cs4810):-
	not(known(yes,cscourse,cs4810)),
	(known(yes,cscourse,cs4350),
	known(yes,cscourse,cs4800)).

%Assert Knowns
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
	sta2260,
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
	cs2400,
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
	mat1150,
	asserta(known(yes,cscourse,sta2260)).

mat1150:-
	mat1140,
	asserta(known(yes,cscourse,mat1150)).
	
mat1140:-
	asserta(known(yes,cscourse,mat1140)).
	
mat1310:-
	mat1150,
	asserta(known(yes,cscourse,mat1310)).

mat1050:-
	asserta(known(yes,cscourse,mat1050)).

mat1060:-
	mat1050,
	asserta(known(yes,cscourse,mat1060)).

bio1110:-
	bio1110l,
	asserta(known(yes,cscourse,bio1110)).

bio1110l:-
	asserta(known(yes,cscourse,bio1110l)).

cs1260:-
	mat1150,
	asserta(known(yes,cscourse,cs1260)).

cs1280:-
	mat1150,
	asserta(known(yes,cscourse,cs1280)).

cs2450:-
	cs1400,
	asserta(known(yes,cscourse,cs2450)).

cs2560:-
	cs1280,
	cs1400,
	asserta(known(yes,cscourse,cs2560)).

cs2600:-
	cs1280,
	cs1400,
	asserta(known(yes,cscourse,cs2600)).

cs3010:-
	mat1150,
	cs2400,
	asserta(known(yes,cscourse,cs3010)).

cs3520:-
	cs2400,
	asserta(known(yes,cscourse,cs3520)).

cs3560:-
	cs2400,
	asserta(known(yes,cscourse,cs3560)).

cs3700:-
	cs3310,
	asserta(known(yes,cscourse,cs3700)).

cs3800:-
	cs2640,
	asserta(known(yes,cscourse,cs3800)).

cs4110:-
	cs3110,
	asserta(known(yes,cscourse,cs4110)).
	
cs4200:-
	cs3310,
	asserta(known(yes,cscourse,cs4200)).

cs4210:-
	cs3010,
	asserta(known(yes,cscourse,cs3010)).
	
cs4250:-
	cs2400,
	asserta(known(yes,cscourse,cs4250)).

cs4350:-
	cs2400,
	asserta(known(yes,cscourse,cs4350)).

cs4450:-
	cs2560,
	cs2400,
	asserta(known(yes,cscourse,cs4450)).

cs4500:-
	cs3110,
	asserta(known(yes,cscourse,cs4500)).

cs4600:-
	cs2400,
	asserta(known(yes,cscourse,cs4600)).

cs4650:-
	cs2400,
	asserta(known(yes,cscourse,cs4650)).

cs4700:-
	cs2400,
	asserta(known(yes,cscourse,cs4700)).

cs4750:-
	cs2400,
	asserta(known(yes,cscourse,cs4750)).

cs4810:-
	cs4350,
	cs4800,
	asserta(known(yes,cscourse,cs4810)).
	
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
	greeting,
	class_standing,
	recommendation,	
	do(quit).
	
recommendation:-
	loop,
	repeat,
		top_goal(X),
		not_yet_recommended(X),
		write('Your recommended class is '), write(X),nl,nl,
		asserta(known(yes,recommended,X)),
		write('Do you want to continue? (yes/no) '), read(Y), nl,
	Y == no.
	
not_yet_recommended(X):-
		not(known(yes,recommended,X)).
	
loop:-
	write('Type "quit." to arrive at recommendation.'), nl,
	repeat,	
	write('What classes have you taken last semester? '),
	read(X),
	do(X),
	X == quit.
	
greeting:-
	write('Expert System for CS Courses Recommendation at CPP v.2.0.'), nl,
	write('Type "question." to verify class eligibility.'), nl,
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
	(eligible(X) -> write('Eligible! '),nl,nl;
	write('Not eligible. '),nl,nl).
	
	




