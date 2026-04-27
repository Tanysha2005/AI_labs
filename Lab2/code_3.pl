% ИНДИВИДУАЛЬНОЕ ЗАДАНИЕ 1 (в списке №8)
% Определить последний элемент списка.

my_last([X], X).
my_last([_ | T], X) :- 
    my_last(T, X).


% ИНДИВИДУАЛЬНОЕ ЗАДАНИЕ 2 (в списке №3)
% Удалить все вхождения заданного элемента из списка.

remove_all(_, [], []).

remove_all(X, [X | T], Result) :-
    remove_all(X, T, Result).

remove_all(X, [H | T], [H | Result]) :-
    X \= H,
    remove_all(X, T, Result).
