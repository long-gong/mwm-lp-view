/* MWBM, Maximum Weighted Bipartite Matching Problem */

/* Written in GNU MathProg by Long Gong <long.github@gmail.com> */

/* The Maximum Weighted Bipartite Matching in a bipartite Graph G = (U, V, E), 
   where U and V are the two disjointed sets of nodes, E within U x V is a set of edges, 
   is to maximize the weight of the matching for the bipartite graph. */

param m, integer, >= 1;
/* number of nodes in U */

set U, default {1..m};
/* node set U */

param n, integer, >= 1;
/* number of nodes in V */

set V, default {1..n};
/* node set V */

set E, within U cross V;
/* set of edges */

param w{(u, v) in E}, > 0;
/* w[u,v] is the weight of edge (u,v) */


var x{(u, v) in E}, >= 0, <= 1;
/* decision variables */

var weight, >= 0;

s.t. left{u in U}:

    sum{(u, v) in E} x[u, v] <= 1;

s.t. right{v in V}:

    sum{(u, v) in E} x[u, v] <= 1;

s.t. total_weight:
    weight = sum{(u, v) in E} w[u, v] * x[u, v];

maximize obj: weight;

solve;

printf "\n";
printf{1..64} "="; printf "\n";
printf "Maximum weighted bipartite matching has a weight of %g\n\n", weight;
printf "Starting node   Ending node   Edge weight    Edge in matching\n";
printf "-------------   -----------   ------------   -----------\n";
printf{(u,v) in E: x[u, v] != 0}: "%13s   %11s   %12g   %11g\n", u, v,
   w[u,v], x[u,v];
printf{1..64} "="; printf "\n";
printf "\n";


end;
