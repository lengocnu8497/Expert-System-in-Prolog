% CS Courses Offered by Cal Poly Pomona for B.S Program

top_goal(X):-
	cscourse(X).
	
% Core CS Courses
cscourse(BIO1110):-
	(year(freshman); year(sophomore); year(junior); year(senior)).	% require to be in a specific year based on units completed
	
	
cscourse(BIO110L):-
    (year(freshman); year(sophomore); year(junior); year(senior)),
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

	
prereq(C):-
    ask(prereq,C).
	
year(X):-
    menuask(year,X,[freshman,sophomore,junior,senior]).
	



