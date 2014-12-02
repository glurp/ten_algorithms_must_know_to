Project
=======
give ruby material corresponding to responses to next Quora question.
I enlarge a little for respond to the question :
   In a long programming career, what are algorithms which you 
   programs the most frequently ?

Code can be materials for ruby learner, and
more experimented rubysh should enjoy read theme also :)

CORA QUESTION:
=============
What are the 10 algorithms one must know in order to solve most algorithm
challenges/puzzles?


 
RESPONSE 1 :
============
Brian Bi:
* Sieve of Eratosthenes, or another prime number sieve
* Depth-first search
* Breadth-first search
* Dijkstra's algorithm :  shortest paths in graphs with all edge weights are non-negative
* Floyd--Warshall algorithm : shortest paths in graph with positive or negative edge weights 
* Kruskal's : a minimum spanning tree for a connected weighted graph
* Some implementation of topological sorting, such as by using DFS
* Convex hull : problems such as building a minimal fence to enclose animals.
* Coordinate compression
* Edmonds--Karp, or another implementation of the Ford--Fulkerson method; 
or a preflow-push algorithm; or, if you are preparing an ACM codebook, Dinic's algorithm. (Note: Max flow is not allowed to appear on the IOI, but may nevertheless appear on national team-selection contests)

RESPONSE 2 :
============
Daniel Lubarov append :
* sweep line
* finding strongly connected components, such as Tarjan's...
* algorithm for string searching : Knuth-Morris-Pratt...

My responses
===========
 
* grammar analyse with pure code (without  parser helper)
* solve a combinatory probleme with generate/test/backtrack : sudoku
* plot timed curve


Project
=======
Solve each 16 algorithmes in beautifule ruby code.

For each probleme:
 * simples.rb : give solutions in pure, non-concurrent readable solution(s) from naive to optimized
 * concurrent.rb : give a solution which use cpu cores (suppose do be effective with jruby/rubinius interp)
 * test.rb : test and memory/time comparaison of each solution
 * eventually a README.md  for give some theoric explanations, link...
 
How to contibute ?
==================
All content must be original public domain (please do not copy Resetta code site...)
you can put copyright.
Feel free to contibute by posting submissions bye ???

Kepp Objectives in mind :
* Material for ruby learner
* Use ruby ressources : fonctional, meta-programming, threading , co-routine (future...)
* Easy to read 
* Not definitive solution : solutions are starting point to programmer reflexion, 
* time/memory perfomances are last-preocupations : they must not truble beautiful code.

