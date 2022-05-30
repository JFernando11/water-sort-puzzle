move(Tabung1, Tabung2, Hasil1, Hasil2) :-
  Tabung1 = [Head1 | Hasil1],
  Hasil2 = [Head1 | Tabung2].

checker([]).

checker([A, A, A, A]).

checker(I1, I2, I3, I4, I5) :-
  checker(I1),
  checker(I2),
  checker(I3),
  checker(I4),
  checker(I5).

solve(I1, I2, I3, I4, I5, _, []) :- checker(I1, I2, I3, I4, I5).

solve(I1, I2, I3, I4, I5, Step, [i1toi2 | Rest]) :-
  % I1 -> I2
  Step > 0,
  length(I2, 0),
  move(I1, I2, N1, N2),
  Nstep is Step - 1,
  solve(N1, N2, I3, I4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i1toi3 | Rest]) :-
  % I1 -> I3
  Step > 0,
  length(I3, 0),
  move(I1, I3, N1, N3),
  Nstep is Step - 1,
  solve(N1, I2, N3, I4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i1toi4 | Rest]) :-
  % I1 -> I4
  Step > 0,
  length(I4, 0),
  move(I1, I4, N1, N4),
  Nstep is Step - 1,
  solve(N1, I2, I3, N4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i1toi5 | Rest]) :-
  % I1 -> I5
  Step > 0,
  length(I5, 0),
  move(I1, I5, N1, N5),
  Nstep is Step - 1,
  solve(N1, I2, I3, I4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i2toi1 | Rest]) :-
  % I2 -> I1
  Step > 0,
  length(I1, 0),
  move(I2, I1, N2, N1),
  Nstep is Step - 1,
  solve(N1, N2, I3, I4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i2toi3 | Rest]) :-
  % I2 -> I3
  Step > 0,
  length(I3, 0),
  move(I2, I3, N2, N3),
  Nstep is Step - 1,
  solve(I1, N2, N3, I4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i2toi4 | Rest]) :-
  % I2 -> I4
  Step > 0,
  length(I4, 0),
  move(I2, I4, N2, N4),
  Nstep is Step - 1,
  solve(I1, N2, I3, N4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i2toi5 | Rest]) :-
  % I2 -> I5
  Step > 0,
  length(I5, 0),
  move(I2, I5, N2, N5),
  Nstep is Step - 1,
  solve(I1, N2, I3, I4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i3toi1 | Rest]) :-
  % I3 -> I1
  Step > 0,
  length(I1, 0),
  move(I3, I1, N3, N1),
  Nstep is Step - 1,
  solve(N1, I2, N3, I4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i3toi2 | Rest]) :-
  % I3 -> I2
  Step > 0,
  length(I2, 0),
  move(I3, I2, N3, N2),
  Nstep is Step - 1,
  solve(I1, N2, N3, I4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i3toi4 | Rest]) :-
  % I3 -> I4
  Step > 0,
  length(I4, 0),
  move(I3, I4, N3, N4),
  Nstep is Step - 1,
  solve(I1, I2, N3, N4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i3toi5 | Rest]) :-
  % I3 -> I5
  Step > 0,
  length(I5, 0),
  move(I3, I5, N3, N5),
  Nstep is Step - 1,
  solve(I1, I2, N3, I4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i4toi1 | Rest]) :-
  % I4 -> I1
  Step > 0,
  length(I1, 0),
  move(I4, I1, N4, N1),
  Nstep is Step - 1,
  solve(N1, I2, I3, N4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i4toi2 | Rest]) :-
  % I4 -> I2
  Step > 0,
  length(I2, 0),
  move(I4, I2, N4, N2),
  Nstep is Step - 1,
  solve(I1, N2, I3, N4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i4toi3 | Rest]) :-
  % I4 -> I3
  Step > 0,
  length(I3, 0),
  move(I4, I3, N4, N3),
  Nstep is Step - 1,
  solve(I1, I2, N3, N4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i4toi5 | Rest]) :-
  % I4 -> I5
  Step > 0,
  length(I5, 0),
  move(I4, I5, N4, N5),
  Nstep is Step - 1,
  solve(I1, I2, I3, N4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i5toi1 | Rest]) :-
  % I5 -> I1
  Step > 0,
  length(I1, 0),
  move(I5, I1, N5, N1),
  Nstep is Step - 1,
  solve(N1, I2, I3, I4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i5toi2 | Rest]) :-
  % I5 -> I2
  Step > 0,
  length(I2, 0),
  move(I5, I2, N5, N2),
  Nstep is Step - 1,
  solve(I1, N2, I3, I4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i5toi3 | Rest]) :-
  % I5 -> I3
  Step > 0,
  length(I3, 0),
  move(I5, I3, N5, N3),
  Nstep is Step - 1,
  solve(I1, I2, N3, I4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i5toi4 | Rest]) :-
  % I5 -> I4
  Step > 0,
  length(I4, 0),
  move(I5, I4, N5, N4),
  Nstep is Step - 1,
  solve(I1, I2, I3, N4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i1toi2 | Rest]) :-
  % I1 -> I2
  Step > 0,
  length(I2, L),
  L < 4,
  I1 = [Head|_],
  I2 = [Head|_],
  move(I1, I2, N1, N2),
  Nstep is Step - 1,
  solve(N1, N2, I3, I4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i1toi3 | Rest]) :-
  % I1 -> I3
  Step > 0,
  length(I3, L),
  L < 4,
  I1 = [Head|_],
  I3 = [Head|_],
  move(I1, I3, N1, N3),
  Nstep is Step - 1,
  solve(N1, I2, N3, I4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i1toi4 | Rest]) :-
  % I1 -> I4
  Step > 0,
  length(I4, L),
  L < 4,
  I1 = [Head|_],
  I4 = [Head|_],
  move(I1, I4, N1, N4),
  Nstep is Step - 1,
  solve(N1, I2, I3, N4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i1toi5 | Rest]) :-
  % I1 -> I5
  Step > 0,
  length(I5, L),
  L < 4,
  I1 = [Head|_],
  I5 = [Head|_],
  move(I1, I5, N1, N5),
  Nstep is Step - 1,
  solve(N1, I2, I3, I4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i2toi1 | Rest]) :-
  % I2 -> I1
  Step > 0,
  length(I1, L),
  L < 4,
  I2 = [Head|_],
  I1 = [Head|_],
  move(I2, I1, N2, N1),
  Nstep is Step - 1,
  solve(N1, N2, I3, I4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i2toi3 | Rest]) :-
  % I2 -> I3
  Step > 0,
  length(I3, L),
  L < 4,
  I2 = [Head|_],
  I3 = [Head|_],
  move(I2, I3, N2, N3),
  Nstep is Step - 1,
  solve(I1, N2, N3, I4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i2toi4 | Rest]) :-
  % I2 -> I4
  Step > 0,
  length(I4, L),
  L < 4,
  I2 = [Head|_],
  I4 = [Head|_],
  move(I2, I4, N2, N4),
  Nstep is Step - 1,
  solve(I1, N2, I3, N4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i2toi5 | Rest]) :-
  % I2 -> I5
  Step > 0,
  length(I5, L),
  L < 4,
  I2 = [Head|_],
  I5 = [Head|_],
  move(I2, I5, N2, N5),
  Nstep is Step - 1,
  solve(I1, N2, I3, I4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i3toi1 | Rest]) :-
  % I3 -> I1
  Step > 0,
  length(I1, L),
  L < 4,
  I3 = [Head|_],
  I1 = [Head|_],
  move(I3, I1, N3, N1),
  Nstep is Step - 1,
  solve(N1, I2, N3, I4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i3toi2 | Rest]) :-
  % I3 -> I2
  Step > 0,
  length(I2, L),
  L < 4,
  I3 = [Head|_],
  I2 = [Head|_],
  move(I3, I2, N3, N2),
  Nstep is Step - 1,
  solve(I1, N2, N3, I4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i3toi4 | Rest]) :-
  % I3 -> I4
  Step > 0,
  length(I4, L),
  L < 4,
  I3 = [Head|_],
  I4 = [Head|_],
  move(I3, I4, N3, N4),
  Nstep is Step - 1,
  solve(I1, I2, N3, N4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i3toi5 | Rest]) :-
  % I3 -> I5
  Step > 0,
  length(I5, L),
  L < 4,
  I3 = [Head|_],
  I5 = [Head|_],
  move(I3, I5, N3, N5),
  Nstep is Step - 1,
  solve(I1, I2, N3, I4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i4toi1 | Rest]) :-
  % I4 -> I1
  Step > 0,
  length(I1, L),
  L < 4,
  I4 = [Head|_],
  I1 = [Head|_],
  move(I4, I1, N4, N1),
  Nstep is Step - 1,
  solve(N1, I2, I3, N4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i4toi2 | Rest]) :-
  % I4 -> I2
  Step > 0,
  length(I2, L),
  L < 4,
  I4 = [Head|_],
  I2 = [Head|_],
  move(I4, I2, N4, N2),
  Nstep is Step - 1,
  solve(I1, N2, I3, N4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i4toi3 | Rest]) :-
  % I4 -> I3
  Step > 0,
  length(I3, L),
  L < 4,
  I4 = [Head|_],
  I3 = [Head|_],
  move(I4, I3, N4, N3),
  Nstep is Step - 1,
  solve(I1, I2, N3, N4, I5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i4toi5 | Rest]) :-
  % I4 -> I5
  Step > 0,
  length(I5, L),
  L < 4,
  I4 = [Head|_],
  I5 = [Head|_],
  move(I4, I5, N4, N5),
  Nstep is Step - 1,
  solve(I1, I2, I3, N4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i5toi1 | Rest]) :-
  % I5 -> I1
  Step > 0,
  length(I1, L),
  L < 4,
  I5 = [Head|_],
  I1 = [Head|_],
  move(I5, I1, N5, N1),
  Nstep is Step - 1,
  solve(N1, I2, I3, I4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i5toi2 | Rest]) :-
  % I5 -> I2
  Step > 0,
  length(I2, L),
  L < 4,
  I5 = [Head|_],
  I2 = [Head|_],
  move(I5, I2, N5, N2),
  Nstep is Step - 1,
  solve(I1, N2, I3, I4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i5toi3 | Rest]) :-
  % I5 -> I3
  Step > 0,
  length(I3, L),
  L < 4,
  I5 = [Head|_],
  I3 = [Head|_],
  move(I5, I3, N5, N3),
  Nstep is Step - 1,
  solve(I1, I2, N3, I4, N5, Nstep, Rest), !.

solve(I1, I2, I3, I4, I5, Step, [i5toi4 | Rest]) :-
  % I5 -> I4
  Step > 0,
  length(I4, L),
  L < 4,
  I5 = [Head|_],
  I4 = [Head|_],
  move(I5, I4, N5, N4),
  Nstep is Step - 1,
  solve(I1, I2, I3, N4, N5, Nstep, Rest).
