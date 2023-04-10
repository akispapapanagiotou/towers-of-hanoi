% This specifies that I can modify the 'on' predicate using assert/retract statements
:- dynamic on/2.

% Define the pegs.
peg(a).
peg(b).
peg(c).

% Define the disks according to their size.
disk(1). % smallest
disk(2).
disk(3).
disk(4).
disk(5). % largest

% Define the initial state of the problem.
% All 5 disks are on peg a.
on(1, a).
on(2, a).
on(3, a).
on(4, a).
on(5, a).

% Moves the top disk from StartPeg to EndPeg, if only it is allowed.
move(StartPeg, EndPeg) :-
	peg(StartPeg),
  	peg(EndPeg),
	on(TopDisk, StartPeg),
  	(
	(on(ToTopDisk, EndPeg), ToTopDisk < TopDisk) ->  
	fail ;
    	true
  	),
  	retract(on(TopDisk, StartPeg)),
  	asserta(on(TopDisk, EndPeg)).
move(_, _) :-
	write('Invalid move').

% Displays the current state of the problem.
display_state :-
  	write('Current state: '), nl,
  	peg(X),
  	write('Peg '), write(X), write(': '),
  	findall(D, on(D, X), Disks),
  	write(Disks), nl,
  	fail.
display_state.
