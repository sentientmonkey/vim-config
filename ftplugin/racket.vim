set autoindent

" reasoned schemer stuff
set lispwords+=run*,run,fresh,conde,condi,conda,condu
syn keyword racketFunc nullo pairo cdro conso caro ==
syn keyword racketSyntax run run* fresh conde condi conda condu else all alli
syn keyword racketBoolean s# u#

" eopl
set lispwords+=define-datatype,define-syntax
syn keyword racketSyntax define-datatype define-syntax

" pie
set lispwords+=iter-Nat,claim,the,U
syn keyword racketFunc iter-Nat
syn keyword racketSyntax claim the U
