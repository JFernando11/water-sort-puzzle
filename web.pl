:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_parameters)).
:- use_module(library(http/http_json)).
:- use_module(library(http/json_convert)).

:- include('Code-SWI_prolog.pl').
:- initialization(server(5151), program).

% Register handler for HTTP request
:- http_handler('/', index, []).
:- http_handler('/hint', get_hint, []).

% To define json object
:- json_object hint(hint:string).

% Run server
server(Port) :- 
	http_server(http_dispatch, [port(Port)]).

% Handle serve index page -> '/'
index(Request) :-
	http_reply_file('templates/index.html', [mime_type('text/html')], Request).

% Handle generate hint -> '/hint'
get_hint(Request) :-
  http_parameters(Request, [
    tube1(Tube1, [string, optional(true), default("")]), % e.g. tube1=g:r:g:g
    tube2(Tube2, [string, optional(true), default("")]), % e.g. tube2=b:r:g:b
    tube3(Tube3, [string, optional(true), default("")]), % e.g. tube3=r:b:r:b
    tube4(Tube4, [string, optional(true), default("")]), % e.g. tube4=
    tube5(Tube5, [string, optional(true), default("")]) % e.g. tube5=
  ]),
  convert_param(Tube1, I1),
  convert_param(Tube2, I2),
  convert_param(Tube3, I3),
  convert_param(Tube4, I4),
  convert_param(Tube5, I5),
  call_solve(I1, I2, I3, I4, I5, 13, Result), !,
  atomic_list_concat(Result, ',', AResult),
  atom_string(AResult, SResult),
  prolog_to_json(hint(SResult), JSON),
  reply_json(JSON).

get_hint(_) :-
  prolog_to_json(hint("Failed to generate hint!"), JSON),
  reply_json(JSON).

convert_to_atom([], []).

convert_to_atom([""], []) :- !.

convert_to_atom([HeadString | TailString], [HeadAtom | TailAtom]) :-
  atom_string(HeadString, HeadAtom),
  convert_to_atom(TailString, TailAtom).

convert_param(String, Formatted) :-
  split_string(String, ":", ",", List),
  convert_to_atom(List, Formatted).

call_solve(I1, I2, I3, I4, I5, Step, Result) :-
  solve(I1, I2, I3, I4, I5, Step, Result), !.

call_solve(I1, I2, I3, I4, I5, Step, Result) :-
  NStep is Step + 1,
  call_solve(I1, I2, I3, I4, I5, NStep, Result).
