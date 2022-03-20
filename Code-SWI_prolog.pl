move(Tabung1, Tabung2, Hasil1, Hasil2) :-
    Tabung1 = [Head1 | Hasil1],
    Hasil2 = [Head1 | Tabung2].

solve(I1, I2, I3, I4, I5, I6, I1, I2, I3, I4, I5, I6, _).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I1 -> I2
  Step > 0,
  length(I2, 0),
  move(I1, I2, N1, N2),
  Nstep is Step - 1,
  solve(N1, N2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I1 -> I3
  Step > 0,
  length(I3, 0),
  move(I1, I3, N1, N3),
  Nstep is Step - 1,
  solve(N1, I2, N3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I1 -> I4
  Step > 0,
  length(I4, 0),
  move(I1, I4, N1, N4),
  Nstep is Step - 1,
  solve(N1, I2, I3, N4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I1 -> I5
  Step > 0,
  length(I5, 0),
  move(I1, I5, N1, N5),
  Nstep is Step - 1,
  solve(N1, I2, I3, I4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I1 -> I6
  Step > 0,
  length(I6, 0),
  move(I1, I6, N1, N6),
  Nstep is Step - 1,
  solve(N1, I2, I3, I4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I2 -> I1
  Step > 0,
  length(I1, 0),
  move(I2, I1, N2, N1),
  Nstep is Step - 1,
  solve(N1, N2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I2 -> I3
  Step > 0,
  length(I3, 0),
  move(I2, I3, N2, N3),
  Nstep is Step - 1,
  solve(I1, N2, N3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I2 -> I4
  Step > 0,
  length(I4, 0),
  move(I2, I4, N2, N4),
  Nstep is Step - 1,
  solve(I1, N2, I3, N4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I2 -> I5
  Step > 0,
  length(I5, 0),
  move(I2, I5, N2, N5),
  Nstep is Step - 1,
  solve(I1, N2, I3, I4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I2 -> I6
  Step > 0,
  length(I6, 0),
  move(I2, I6, N2, N6),
  Nstep is Step - 1,
  solve(I1, N2, I3, I4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I3 -> I1
  Step > 0,
  length(I1, 0),
  move(I3, I1, N3, N1),
  Nstep is Step - 1,
  solve(N1, I2, N3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I3 -> I2
  Step > 0,
  length(I2, 0),
  move(I3, I2, N3, N2),
  Nstep is Step - 1,
  solve(I1, N2, N3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I3 -> I4
  Step > 0,
  length(I4, 0),
  move(I3, I4, N3, N4),
  Nstep is Step - 1,
  solve(I1, I2, N3, N4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I3 -> I5
  Step > 0,
  length(I5, 0),
  move(I3, I5, N3, N5),
  Nstep is Step - 1,
  solve(I1, I2, N3, I4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I3 -> I6
  Step > 0,
  length(I6, 0),
  move(I3, I6, N3, N6),
  Nstep is Step - 1,
  solve(I1, I2, N3, I4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I4 -> I1
  Step > 0,
  length(I1, 0),
  move(I4, I1, N4, N1),
  Nstep is Step - 1,
  solve(N1, I2, I3, N4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I4 -> I2
  Step > 0,
  length(I2, 0),
  move(I4, I2, N4, N2),
  Nstep is Step - 1,
  solve(I1, N2, I3, N4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I4 -> I3
  Step > 0,
  length(I3, 0),
  move(I4, I3, N4, N3),
  Nstep is Step - 1,
  solve(I1, I2, N3, N4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I4 -> I5
  Step > 0,
  length(I5, 0),
  move(I4, I5, N4, N5),
  Nstep is Step - 1,
  solve(I1, I2, I3, N4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I4 -> I6
  Step > 0,
  length(I6, 0),
  move(I4, I6, N4, N6),
  Nstep is Step - 1,
  solve(I1, I2, I3, N4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I5 -> I1
  Step > 0,
  length(I1, 0),
  move(I5, I1, N5, N1),
  Nstep is Step - 1,
  solve(N1, I2, I3, I4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I5 -> I2
  Step > 0,
  length(I2, 0),
  move(I5, I2, N5, N2),
  Nstep is Step - 1,
  solve(I1, N2, I3, I4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I5 -> I3
  Step > 0,
  length(I3, 0),
  move(I5, I3, N5, N3),
  Nstep is Step - 1,
  solve(I1, I2, N3, I4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I5 -> I4
  Step > 0,
  length(I4, 0),
  move(I5, I4, N5, N4),
  Nstep is Step - 1,
  solve(I1, I2, I3, N4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I5 -> I6
  Step > 0,
  length(I6, 0),
  move(I5, I6, N5, N6),
  Nstep is Step - 1,
  solve(I1, I2, I3, I4, N5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I6 -> I1
  Step > 0,
  length(I1, 0),
  move(I6, I1, N6, N1),
  Nstep is Step - 1,
  solve(N1, I2, I3, I4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I6 -> I2
  Step > 0,
  length(I2, 0),
  move(I6, I2, N6, N2),
  Nstep is Step - 1,
  solve(I1, N2, I3, I4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I6 -> I3
  Step > 0,
  length(I3, 0),
  move(I6, I3, N6, N3),
  Nstep is Step - 1,
  solve(I1, I2, N3, I4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I6 -> I4
  Step > 0,
  length(I4, 0),
  move(I6, I4, N6, N4),
  Nstep is Step - 1,
  solve(I1, I2, I3, N4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I6 -> I5
  Step > 0,
  length(I5, 0),
  move(I6, I5, N6, N5),
  Nstep is Step - 1,
  solve(I1, I2, I3, I4, N5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I1 -> I2
  Step > 0,
  length(I2, L),
  L < 4,
  I1 = [H1|_],
  I2 = [H2|_],
  H1 = H2,
  move(I1, I2, N1, N2),
  Nstep is Step - 1,
  solve(N1, N2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I1 -> I3
  Step > 0,
  length(I3, L),
  L < 4,
  I1 = [H1|_],
  I3 = [H3|_],
  H1 = H3,
  move(I1, I3, N1, N3),
  Nstep is Step - 1,
  solve(N1, I2, N3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I1 -> I4
  Step > 0,
  length(I4, L),
  L < 4,
  I1 = [H1|_],
  I4 = [H4|_],
  H1 = H4,
  move(I1, I4, N1, N4),
  Nstep is Step - 1,
  solve(N1, I2, I3, N4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I1 -> I5
  Step > 0,
  length(I5, L),
  L < 4,
  I1 = [H1|_],
  I5 = [H5|_],
  H1 = H5,
  move(I1, I5, N1, N5),
  Nstep is Step - 1,
  solve(N1, I2, I3, I4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I1 -> I6
  Step > 0,
  length(I6, L),
  L < 4,
  I1 = [H1|_],
  I6 = [H6|_],
  H1 = H6,
  move(I1, I6, N1, N6),
  Nstep is Step - 1,
  solve(N1, I2, I3, I4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I2 -> I1
  Step > 0,
  length(I1, L),
  L < 4,
  I2 = [H2|_],
  I1 = [H1|_],
  H2 = H1,
  move(I2, I1, N2, N1),
  Nstep is Step - 1,
  solve(N1, N2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I2 -> I3
  Step > 0,
  length(I3, L),
  L < 4,
  I2 = [H2|_],
  I3 = [H3|_],
  H2 = H3,
  move(I2, I3, N2, N3),
  Nstep is Step - 1,
  solve(I1, N2, N3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I2 -> I4
  Step > 0,
  length(I4, L),
  L < 4,
  I2 = [H2|_],
  I4 = [H4|_],
  H2 = H4,
  move(I2, I4, N2, N4),
  Nstep is Step - 1,
  solve(I1, N2, I3, N4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I2 -> I5
  Step > 0,
  length(I5, L),
  L < 4,
  I2 = [H2|_],
  I5 = [H5|_],
  H2 = H5,
  move(I2, I5, N2, N5),
  Nstep is Step - 1,
  solve(I1, N2, I3, I4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I2 -> I6
  Step > 0,
  length(I6, L),
  L < 4,
  I2 = [H2|_],
  I6 = [H6|_],
  H2 = H6,
  move(I2, I6, N2, N6),
  Nstep is Step - 1,
  solve(I1, N2, I3, I4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I3 -> I1
  Step > 0,
  length(I1, L),
  L < 4,
  I3 = [H3|_],
  I1 = [H1|_],
  H3 = H1,
  move(I3, I1, N3, N1),
  Nstep is Step - 1,
  solve(N1, I2, N3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I3 -> I2
  Step > 0,
  length(I2, L),
  L < 4,
  I3 = [H3|_],
  I2 = [H2|_],
  H3 = H2,
  move(I3, I2, N3, N2),
  Nstep is Step - 1,
  solve(I1, N2, N3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I3 -> I4
  Step > 0,
  length(I4, L),
  L < 4,
  I3 = [H3|_],
  I4 = [H4|_],
  H3 = H4,
  move(I3, I4, N3, N4),
  Nstep is Step - 1,
  solve(I1, I2, N3, N4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I3 -> I5
  Step > 0,
  length(I5, L),
  L < 4,
  I3 = [H3|_],
  I5 = [H5|_],
  H3 = H5,
  move(I3, I5, N3, N5),
  Nstep is Step - 1,
  solve(I1, I2, N3, I4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I3 -> I6
  Step > 0,
  length(I6, L),
  L < 4,
  I3 = [H3|_],
  I6 = [H6|_],
  H3 = H6,
  move(I3, I6, N3, N6),
  Nstep is Step - 1,
  solve(I1, I2, N3, I4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I4 -> I1
  Step > 0,
  length(I1, L),
  L < 4,
  I4 = [H4|_],
  I1 = [H1|_],
  H4 = H1,
  move(I4, I1, N4, N1),
  Nstep is Step - 1,
  solve(N1, I2, I3, N4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I4 -> I2
  Step > 0,
  length(I2, L),
  L < 4,
  I4 = [H4|_],
  I2 = [H2|_],
  H4 = H2,
  move(I4, I2, N4, N2),
  Nstep is Step - 1,
  solve(I1, N2, I3, N4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I4 -> I3
  Step > 0,
  length(I3, L),
  L < 4,
  I4 = [H4|_],
  I3 = [H3|_],
  H4 = H3,
  move(I4, I3, N4, N3),
  Nstep is Step - 1,
  solve(I1, I2, N3, N4, I5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I4 -> I5
  Step > 0,
  length(I5, L),
  L < 4,
  I4 = [H4|_],
  I5 = [H5|_],
  H4 = H5,
  move(I4, I5, N4, N5),
  Nstep is Step - 1,
  solve(I1, I2, I3, N4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I4 -> I6
  Step > 0,
  length(I6, L),
  L < 4,
  I4 = [H4|_],
  I6 = [H6|_],
  H4 = H6,
  move(I4, I6, N4, N6),
  Nstep is Step - 1,
  solve(I1, I2, I3, N4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I5 -> I1
  Step > 0,
  length(I1, L),
  L < 4,
  I5 = [H5|_],
  I1 = [H1|_],
  H5 = H1,
  move(I5, I1, N5, N1),
  Nstep is Step - 1,
  solve(N1, I2, I3, I4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I5 -> I2
  Step > 0,
  length(I2, L),
  L < 4,
  I5 = [H5|_],
  I2 = [H2|_],
  H5 = H2,
  move(I5, I2, N5, N2),
  Nstep is Step - 1,
  solve(I1, N2, I3, I4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I5 -> I3
  Step > 0,
  length(I3, L),
  L < 4,
  I5 = [H5|_],
  I3 = [H3|_],
  H5 = H3,
  move(I5, I3, N5, N3),
  Nstep is Step - 1,
  solve(I1, I2, N3, I4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I5 -> I4
  Step > 0,
  length(I4, L),
  L < 4,
  I5 = [H5|_],
  I4 = [H4|_],
  H5 = H4,
  move(I5, I4, N5, N4),
  Nstep is Step - 1,
  solve(I1, I2, I3, N4, N5, I6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I5 -> I6
  Step > 0,
  length(I6, L),
  L < 4,
  I5 = [H5|_],
  I6 = [H6|_],
  H5 = H6,
  move(I5, I6, N5, N6),
  Nstep is Step - 1,
  solve(I1, I2, I3, I4, N5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I6 -> I1
  Step > 0,
  length(I1, L),
  L < 4,
  I6 = [H6|_],
  I1 = [H1|_],
  H6 = H1,
  move(I6, I1, N6, N1),
  Nstep is Step - 1,
  solve(N1, I2, I3, I4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I6 -> I2
  Step > 0,
  length(I2, L),
  L < 4,
  I6 = [H6|_],
  I2 = [H2|_],
  H6 = H2,
  move(I6, I2, N6, N2),
  Nstep is Step - 1,
  solve(I1, N2, I3, I4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I6 -> I3
  Step > 0,
  length(I3, L),
  L < 4,
  I6 = [H6|_],
  I3 = [H3|_],
  H6 = H3,
  move(I6, I3, N6, N3),
  Nstep is Step - 1,
  solve(I1, I2, N3, I4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I6 -> I4
  Step > 0,
  length(I4, L),
  L < 4,
  I6 = [H6|_],
  I4 = [H4|_],
  H6 = H4,
  move(I6, I4, N6, N4),
  Nstep is Step - 1,
  solve(I1, I2, I3, N4, I5, N6, O1, O2, O3, O4, O5, O6, Nstep).

solve(I1, I2, I3, I4, I5, I6, O1, O2, O3, O4, O5, O6, Step) :-
  % I6 -> I5
  Step > 0,
  length(I5, L),
  L < 4,
  I6 = [H6|_],
  I5 = [H5|_],
  H6 = H5,
  move(I6, I5, N6, N5),
  Nstep is Step - 1,
  solve(I1, I2, I3, I4, N5, N6, O1, O2, O3, O4, O5, O6, Nstep).