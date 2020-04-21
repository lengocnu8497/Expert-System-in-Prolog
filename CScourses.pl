% CS Courses Offered by Cal Poly Pomona for B.S Program

top_goal(X):-
	cscourse(X).
	
% Core CS Courses
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

	


freshman:-
	units(N).
	
sophomore:-
    units(N).
	
junior:-
    units(N).
	
senior:-
    units(N).
	
prereq(C):-
    known(Yes,C).
	
year(X):-
    ask(year,X).
	



