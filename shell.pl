% Shell for user in Prolog

main:-
	greeting,
	repeat,
	write('> '),
	read(X),
	do(X),
	X == quit.
	
greeting:-
	write('This is a Prolog shell.',
	nl.
	
do(load):-
    load_kb,
	!.
	
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
	reconsult(F).       		% update KB with known clauses
	
ask(A, V):-
	known(yes, A, V),   		% succeed if true
	!.                  		% stop looking
	
ask(A, V):-
	known(_, A, V),     		% fail if false
	!,
	fail.
	
ask(A, V):-
	write(A:V),         		% ask user
	write('? : '),
	read(Y),            		% get the answer
	asserta(known(Y, A, V)), 	% remember it
    Y == yes. 					% succeed or fail 
	
menuask(A,V,MenuList):-
	write('What is the value for '),write(A), write('?'), nl,
	write(MenuList),nl,
	read(X),
	check_val(X,A,V,MenuList),
	asserta(known(yes,A,X)),
	X==V.
	
check_val(X,A,V,MenuList):-
	member(X,MenuList),
	!.
	
check_val(X,A,V,MenuList):-
	write(X), write(' is not a legal value, try again.'), nl,
	menuask(A, V, MenuList). 
	
	
solve :-
	abolish(known, 3),
	define(known, 3),
	top_goal(X),
	write('The answer is '), write(X), nl.
solve :-
	write('No answer found.'), nl. 