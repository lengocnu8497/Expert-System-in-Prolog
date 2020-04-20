% CS Courses Offered by Cal Poly Pomona for B.S Program

top_goal(X):-
	cscourse(X).
	
cscourse(BIO1110):-
	(year(freshman); year(sophomore); year(junior); year(senior)),	% require to be in a specific year based on units completed
	prereq(none).
	
cscourse(BIO110L):-
    (year(freshman); year(sophomore); year(junior); year(senior)),
	prereq(BIO1110).
	
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

freshman:-
	units(N).
	
sophomore:-
    units(N).
	
junior:-
    units(N).
	
senior:-
    units(N).
	
prereq(C):-
    cscourse(C).
	
year(X):-
    ask(year,X).
	
menuask(A,V,MenuList):-
    write('What is the value for '), write(A), write(' ?'), nl,
	write(MenuList), nl, 
	read(X), 
	check_val(X, A, V, MenuList),
    asserta( known(yes, A, X) ),
    X == V. 


