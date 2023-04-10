# Towers of Hanoi
This code implements a solution to the Towers of Hanoi puzzle using Prolog. The Towers of Hanoi is a classic problem that involves moving a stack of disks of different sizes from one peg to another, following certain rules:

* Only one disk can be moved at a time.
* Each move consists of taking the upper disk from one of the pegs and placing it on top of another peg or on an empty peg.
* No disk may be placed on top of a smaller disk.

The code defines the initial state of the problem where all 5 disks are on peg a. It then defines the move predicate, which takes two arguments, StartPeg and EndPeg, representing the pegs to move the top disk from and to. The predicate first checks that the move is allowed by verifying that the top disk on StartPeg is smaller than the top disk on EndPeg (if there is one). If the move is allowed, the predicate removes the top disk from StartPeg using retract and adds it to EndPeg using asserta. If the move is not allowed, the predicate fails.

The code also defines the display_state predicate, which prints out the current state of the problem by iterating over each peg and printing the disks on it.

Overall, this code provides a simple implementation of the Towers of Hanoi problem in Prolog. However, it only allows moves to be made one at a time and does not provide a way to automate the solution.

## Built with:
* Prolog
* SWI-Prolog
