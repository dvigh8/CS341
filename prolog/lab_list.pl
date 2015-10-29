% my_list(+Item)
% Decides if Item is a list.
%
my_list([_|_]).
my_list([]).
% my_member(+Item,+List)
% Decides if Item is a member of List.
%
my_member(X,[X|_]).
my_member(X,[_|Ys]):-my_member(X,Ys).
% my_length(+As,-N)
% Returns the length of list As in the variable N.

my_length([],0).
my_length([_|As],N):- my_length(As,N+1).
% my_append(+As,+Bs,-Cs)
% Returns the append of two lists As and Bs in the list Cs.
%
my_append([],Y,Y).
my_append([X|Xs],Y,[X|Z]):-my_append(Xs,Y,Z).
% my_reverse(+As,-Bs)
% Returns the reverse of list As in the list Bs.
%
my_reverse([],[]).
my_reverse([A|As],Bs):- my_reverse(As, RAs), my_append(RAs, [A], Bs).

% my_prefix(+Pattern,+List)
% Decides if Pattern is a prefix of List.
%
my_prefix([],_).
my_prefix([X|Xs],[X|Ys]):-my_prefix(Xs,Ys).
% my_subsequence(+Pattern,+List)
% Decides if Pattern is a subsequence (consecutive) of List.
%
my_subsequence([],_).
my_subsequence([X|Xs],[X|Ys]):- my_prefix(Xs,Ys).
my_subsequence([X|Xs],[_|Ys]):- my_subsequence([X|Xs],Ys).
% my_delete(+Item,+List,-Answer)
% Deletes all occurrences of Item from List and returns the result in Answer.
%
my_delete(_,[],[]).
my_delete(X,[X|Xs],Ys):-my_delete(X,Xs,Ys).
my_delete(X,[Y|Xs],[Y|Ys]):-


