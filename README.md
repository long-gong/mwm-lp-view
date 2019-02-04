# Maximum Weighted Matching: Linear Program's View

Some examples for [Maximum Weighted Matching: from The Perspective of Linear Program](https://www.overleaf.com/read/hkdbjzxzxcpz).
All these examples are written by [Modeling Language GNU MathProg](http://gusek.sourceforge.net/gmpl.pdf).

## Usages

To "run" these examples, you need first to install [GLPK](https://www.gnu.org/software/glpk/). After you install GLPK, you can simply run these examples by following the instructions shown below.

```bash
# Clone this repo
git clone https://github.com/long-gong/mwm-lp-view
# cd to the root of this repo
cd mwm-lp-view
# run example 01 (others are similar)
glpsol -m bmwm.mod -d bmwm_example_01.dat
```

If everything goes right, you should expect to see the following output.

```bash
GLPSOL: GLPK LP/MIP Solver, v4.65
Parameter(s) specified in the command line:
 -m bmwm.mod -d bmwm.dat
Reading model section from bmwm.mod...
59 lines were read
Reading data section from bmwm.dat...
bmwm.dat:18: warning: final NL missing before end of file
18 lines were read
Generating left...
Generating right...
Generating total_weight...
Generating obj...
Model has been successfully generated
GLPK Simplex Optimizer, v4.65
8 rows, 10 columns, 29 non-zeros
Preprocessing...
6 rows, 9 columns, 18 non-zeros
Scaling...
 A: min|aij| =  1.000e+00  max|aij| =  1.000e+00  ratio =  1.000e+00
Problem data seem to be well scaled
Constructing initial basis...
Size of triangular part is 6
*     0: obj =  -0.000000000e+00 inf =   0.000e+00 (9)
*     7: obj =   1.300000000e+01 inf =   0.000e+00 (0)
OPTIMAL LP SOLUTION FOUND
Time used:   0.0 secs
Memory used: 0.1 Mb (127426 bytes)

================================================================
Maximum weighted bipartite matching has a weight of 13

Starting node   Ending node   Edge weight    Edge in matching
-------------   -----------   ------------   -----------
            1             2              6             1
            2             3              2             1
            3             1              5             1
================================================================

Model has been successfully processed
```
