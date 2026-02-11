# An Embedding Graph-based Model for Software Watermarking 
## Maria Chroni and Stavros D. Nikolopoulos
Department of Computer Science
University of Ioannina
Ioannina, Greece
{mchroni, stavros}@cs.uoi.gr
Abstract—In a software watermarking environment, several
graph theoretic watermark methods encode the watermark val-
ues as graph structures and embed them in application programs.
In this paper we first present an efficient codec system for
encoding a watermark numberwas a reducible permutation
graphF[π∗]through the use of the self-inverting permutationπ∗
which encodes the numberwand, then, we propose a method for
embedding the watermark graphF[π∗]into a programP. The
main idea behind the proposed embedding method is a systematic
use of appropriate calls of specific functions of the programP.
That is, our method embeds the graphF[π∗]intoPusing only
real functions and thus the size of the watermarked programP∗
remains very small. Moreover, the proposed codec system has
low time complexity, can be easily implemented, and incorporates
such properties which cause it resilient to attacks.
Index Terms—software watermarking, watermark numbers,
self-inverting permutations, reducible permutation graph, encod-
ing, decoding, graph embedding, call-graphs, algorithms.
### I. INTRODUCTION
In the last decade, several software watermarking algorithms
have been appeared in the literature that encode watermarks
as graph structures. In general, such encodings make use of
an encoding functionencodewhich converts a watermarking
numberwinto a graphG,encode(w)→ G, and also of
a decoding functiondecodethat converts the graphGinto
the numberw,decode(G)→w; we usually call the pair
(encode,decode)asgraph codec[7]. From a graph-theoretic
point of view, we are looking for a class of graphsGand a
corresponding codec(encode,decode)Gwith such properties
which cause them resilient to attacks.
A lot of research has been done on software watermark-
ing. The major software watermarking algorithms currently
available are based on several techniques, among which the
register allocation, spread-spectrum, opaque predicate, abstract
interpretation, dynamic path techniques (see, [1], [5], [10],
[11], [14], [15], [16]).
In 1996, Davidson and Myhrvold [12] proposed the first
static software watermarking algorithm which embeds the
watermark into an application program by reordering the basic
blocks of a control flow-graph. Based on this idea, Venkatesan,
Vazirani and Sinha [18] proposed the first graph-based soft-
ware watermarking algorithm which embeds the watermark by
extending a method’s control flow-graph through the insertion
of a directed subgraph; it is calledVVSorGTW.
In [18] the construction of a directed graphG(or, watermark
graphG) is not discussed. Collberg et al. [8] proposed an
implementation ofGTW, which they callGTWsm, and it is the
first publicly available implementation of the algorithmGTW.
InGTWsmthe watermark is encoded as a reducible permutation
graph (RPG) [7], which is a reducible control flow-graph with
maximum out-degree of two, mimicking real code. Note that,
for encoding integers theGTWsm method uses self-inverting
permutations.
Recently, Chroni and Nikolopoulos [3], [4] extended the
class of software watermarking algorithms and graph struc-
tures by proposing an efficient and easily implemented codec
system for encoding watermark numbers as reducible permuta-
tion flow-graphs. They presented an efficient algorithm which
encodes a watermark numberwas self-inverting permutation
π∗and, also, an algorithm which encodes the permutationπ∗
as a reducible permutation flow-graphF[π∗]by exploiting
domination relations on the elements of π∗ and using an
efficient DAG representation ofπ∗; in the same paper, the
authors also proposed efficient decoding algorithms.
In this paper, we first present efficient encoding and de-
coding algorithms that encode watermark values into re-
ducible permutation graphs through the use of self-inverting
permutations (or, for short, SiP) and extract them from the
graph structures. More precisely, we present an efficient codec
system for encoding a watermark numberwas a reducible
permutation graphF[π∗]through the use of the self-inverting
permutationπ∗which encodes the numberw[3]. Then, we
propose a method for embedding the watermark graphF[π∗]
into an application programP by using appropriate calls of
specific functions of the programP. The main feature of our
embedding method is its ability to embed the graphF[π∗]
intoP using only real functions and thus the size of the
watermarked programP∗remains very small. Moreover, the
proposed codec system has low time complexity, can be easily
implemented, and incorporates such properties which cause it
resilience to attacks.
### II. BACKGROUNDRESULTS
We consider finite graphs with no multiple edges. For a
graphG, we denote byV(G)andE(G)the vertex (or, node)
set and edge set ofG, respectively. Thedegreeof a vertexxin
## 2012 Eighth International Conference on Intelligent Information Hiding and Multimedia Signal Processing 978-0-7695-4712-1/12 $26.00 © 2012 IEEE DOI 10.1109/IIH-MSP.2012.
261
the graphG, denoteddeg(x), is the number of edges incident to nodex; for a nodexof a directed graphG, the number of head-endpoints of the directed edges adjacent toxis called the indegree of the nodex, denotedindeg(x), and the number of tail-endpoints is its outdegree, denotedoutdeg(x). A path in a graphG of length k is a sequence of vertices (v 0 ,v 1 ,...,vk)such that (vi− 1 ,vi) ∈ E(G)for i=1, 2 ,...,k. A path is calledsimpleif none of its vertices occurs more than once. A path (simple path)(v 0 ,v 1 ,...,vk) is acycle(simple cycle) of lengthk+1if(v 0 ,vk)∈E(G). A. Self-inverting Permutations – SiP Next, we introduce some definitions that are key-objects in our algorithms for encoding numbers as graphs. Letπbe a permutation over the setNn={ 1 , 2 ,...,n}. We think of permutationπas a sequence(π 1 ,π 2 ,...,πn), so, for example, the permutationπ=(1, 4 , 2 , 7 , 5 , 3 ,6)hasπ 1 =1,π 2 =4, ect. Notice thatπi−^1 is the position in the sequence of the numberi; in our example,π 4 −^1 =2,π− 71 =4,π− 31 =6, etc [13]. Definition 1.The inverse of a permutation(π 1 ,π 2 ,...,πn)is the permutation(q 1 ,q 2 ,...,qn)withqπi=πqi=i.Aself- inverting permutation(or, involution) is a permutation that is its own inverse:ππi=i. By definition, every permutation has a unique inverse, and the inverse of the inverse is the original permutation. Clearly, a permutation is a self-inverting permutation if and only if all its cycles are of length 1 or 2; hereafter, we shall denote a 2- cycle asc=(x, y)and an 1-cycle asc=(x), or, equivalently, c=(x, x). Definition 2.LetC 1 , 2 ={c 1 =(x 1 ,y 1 ),c 2 =(x 2 ,y 2 ),..., ck=(xk,yk)}be the set of all the cycles of a self-inverting permutationπsuch thatxi<yi(1≤i≤k), and let≺be a linear order onC 1 , 2 such thatci≺cjifxi<xj, 1 ≤ i, j≤k. A sequenceC=(c 1 ,c 2 ,...,ck)of all the cycles of a self-inverting permutationπis calledincreasing cycle representationofπifc 1 ≺c 2 ≺···≺ck. The cyclec 1 is the minimum element of the sequenceC. B. Reducible Permutation Graphs – RPG A flow-graph is a directed graphFwith an initial nodes from which all other nodes are reachable. A directed graph Gis strongly connected when there is a pathx→yfor all nodesx,yinV(G). A nodeuis anentryfor a subgraphH of the graphGwhen there is a pathp=(y 1 ,y 2 ,...,yk,x) such thatp∩H={x}. Definition 5.A flow-graph is reducible when it does not have a strongly connected subgraph with two (or more) entries. ### III. ENCODEWATERMARKNUMBERS ASRPGS For encoding integers some recently proposed watermarking methods use only those permutations that are self-inverting. ## π∗=(4, 7 , 6 , 1 , 5 , 3 ,2) (^7654321) t F[π∗] s SiP.to.RPG RPG.to.SiP ## The watermark numberw=
W.to.SiP SiP.to.W
Fig. 1. The main data components used by the algorithms of the
codec system(encode,decode)F[π∗].
Collberg et al. [7] based on the fact that there is a one-to-
one correspondence between self-inverting permutations and
isomorphism classes of RPGs proposed a polynomial algo-
rithm for encoding any integerwas the RPG, corresponding
to thewth self-inverting permutationπin this correspondence.
This encoding exploits only the fact that a self-inverting
permutation is its own inverse.
In [4] Chroni and Nikolopoulos proposed an efficient algo-
rithm which encodes an integerwas self-inverting permutation
π∗ through the use of bitonic permutations; recall that a
permutationπ=(π 1 ,π 2 ,...,πn)over the setNnis called
bitonic if either monotonically increases and then monoton-
ically decreases, or else monotonically decreases and then
monotonically increases. In this encoding the self-inverting
permutation incorporates important structural properties which
cause it resilient to attacks.
We next describe the main properties of our codec system
(encode,decode)F[π∗]; we mainly focus on the properties of
the reducible permutation graphF[π∗]with respect to graph-
based software watermarking attacks.
1) Components of the graphF[π∗]:The reducible permu-
tation graphF[π∗]consists of the following three components:
theheader node(it is a root node with outdegree one from
which every other node in the graphF[π∗]is reachable; in
the graphF[π∗]the header node is denoted bys); thefooter
node(it is a node with outdegree zero that is reachable from
every other node of the graph; in the graphF[π∗]the footer
node is denoted byt); and thebody(it consists ofnnodes
u 1 ,u 2 ,...,uneach with outdegree two. In particular, each
nodeui(1≤i≤n)has exactly two outpointers: one points
to nodeui− 1 and the other points to nodeum, wherem>i).
262
2) Structural Properties: The proposed reducible per- mutation graphF[π∗] and a corresponding codec system (encode,decode)F[π∗]have the following properties: - Appropriate graph types: The graphF[π∗]is directed onn+2nodes with outdegree exactly two; that is, it has low max-outdegree, and, thus, it matches real program graphs; - High resiliency: Since each node in the graphF[π∗] has exactly two outpointers, any single edge modifica- tion, i.e., edge-flip, edge-addition, or edge-deletion, will violate the outpointer condition of some nodes, and thus the modified edge can be easily identified and corrected; - Small size: The size |P∗|−|P| of the embedded watermark is small; - Efficient codecs: The codec(encode,decode)F[π∗]has low time and space complexity [3]. It is worth noting that our encoding and decoding algorithms use basic data structures and basic operations, and, thus, they can be easily implemented. 3) Unique Hamiltonian Path: We next show that the re- ducible permutation graphF[π∗]has always a unique Hamil- tonian path, denoted by HP(F[π∗]), and this Hamiltonian path can be found inO(n)time, wherenis the number of nodes of F[π∗]. The following algorithm, which we callUniqueHP, takes as input a graphF[π∗]onnnodes and produces its unique Hamiltonian path HP(F[π∗]). AlgorithmUniqueHP 1. Find the nodeu 0 of the reducible permutation graph F[π∗]with outdegree one; 2. Perform DFS-search on graphF[π∗]starting at nodeu 0 and compute the DFS discovery timed[u]of each node uofF[π∗]; 3. Order the nodesu 0 ,u 1 ,...,un+1of the graphF[π∗] by their DFS discovery timed[]and let HP(F[π∗]) = (u′ 0 ,u′ 1 ,...,u′n+1)be the resulting order of the nodes, whered[u′i]<d[u′j]fori<j, 0 ≤i, j≤n+1; 4. Return HP(F[π∗]); Since the graphF[π∗]containsnnodes andm = O(n) edges, both finding the node ofF[π∗]with outdegree one and performing DFS-search onF[π∗]takeO(n)time and require O(n)space. ### IV. EMBEDDING ARPGINTO ACODE Having encoded a watermark number w as Reducible Permutation GraphF[π∗], let us now propose a method which embeds the watermark graphF[π∗]into an application program. The main idea behind the proposed method is a systematic use of appropriate calls of specific functions of the program. More specifically we present a method for encoding our RPG in the call graph of a program.
A call graph of a program represents calling relations
between procedures in a program. It has a distinguished
root node, corresponding to the highest-level procedure and
representing an abstraction of the whole system [17]. These
graphs are used in interprocedural program optimization and
for reverse engineering of software systems [2], [9].
The nodes of a call graph represent the procedures being
either callees or callers; their edges represent the calling re-
lations between the procedures. Since call graphs are directed
graphs, every edge has an explicit source and target node,
representing the calling and called procedure, respectively;
note that, cycles in a call graph represent recursion.
A. Embedding Model
We next present the method for embedding the graphF[π∗]
into an application programP(see, Figure 1); the proposed
embedding method consists of the following steps:
Embedding MethodRPG.to.CODE
1. Take as input the source code of the programP and the watermark RPGF[π∗]and letf 0 ,f 1 ,...,fkbe the functions ofPands=u 0 ,u 1 ,...,un,un+1=tbe the nodes ofF[π∗],k≥n+2; 2. Selectn+2functions ofP, say,f 0 ∗,f 1 ∗,...,fn∗+1, and assign the nodeuiof the graphF[π∗]to functionfi∗, 0 ≤i≤n+1; 3. Construct the call-graph (CG) of the input programP by finding the real-calls of each function ofP; 4. Construct the control-flow graph (CFG) of each function f 0 ∗,f 1 ∗,...,fn∗+1of the programPand locate two “call- points” in the control-flow graph of each functionfi∗, 0 ≤i≤n+1; 5. Add the statement call(fj∗) in a call-point of the functionfi∗if the corresponding nodesuiandujform a directed edge(ui,uj)in the graphF[π∗], 0 ≤i, j≤ n+1, and mark this call as water-call; 6. Return the source code of the programP∗;
B. Extracting the Watermark RPG from the Code
In this section, we present an algorithm for extracting the
graphF[π∗]from programP∗watermarked by the embedding
methodRPG.to.CODE; the proposed extracting method is the
following:
Extracting MethodRPG.from.CODE
1. Take as input the source code of the watermarked programP∗; 2. Construct the call-graph CG[P∗] of the input program P∗by finding the real-calls and the water-calls of each function ofP∗; 3. Delete all the edges from the graph CG[P∗] which corresponds to real-calls and, then, delete all its isolated nodes; let CG[P′] be the resulting graph;
263
Fig. 2. (a) The call-graph CG[P] of the input application program P. (b) The reducible permutation graphF[π∗]. (c) The call-graph CG[P∗] of the watermarked programP∗. 4. Construct a graphF[P∗]isomorphic to CG[P′] and let s=u 0 ,u 1 ,...,un,un+1=tbe its nodes; 5. Compute the unique Hamiltonian path of the graph F[P∗]and, then, construct the flow-graphF[π∗]; 6. Return the graphF[π∗]; In order to ensure that the water-calls do not affect the execution of the program, we propose a method which alter the source code by inserting control flow statements, say, anif-else-statement, and an extra parameter, say,w,in each functionf∗. During the execution of the programP∗, if a functionf water-calls the function f∗ then we pass by reference an appropriate value as an argument intof∗ through the parameterw; the type of the parameter may be either boolean, number, or a string. Once the condition of the if-else-statementis satisfied, an appropriate statement is executed (for example,w=−w) and the functionf∗returns; otherwise, the functionf∗is normally executed. Note that, argument’s value does not affect program’s functionality. In addition, we may perform an obfuscating technique in P∗in order to prevent reverse engineering. Roughly speaking, the goal of obfuscation is to hide the secrets inside a program while preserving its functionality. ### V. CONCLUDINGREMARKS In this paper we first presented a codec system which en- codes a watermark numberwas reducible permutation graph F[π∗]and, then, we proposed a model for embedding the
graphF[π∗]into an application programPusing appropriate
calls of specific functions ofP. The main feature of our
embedding model is its ability to embed the graphF[π∗]
intoP using only real functions and thus the size of the
watermarked programP∗remains very small. Moreover, the
proposed codec system has low time complexity, can be easily
implemented, and incorporates such properties which cause it
resilient to attacks.
In light of our embedding method it would be very interest-
ing to implement the method in order to obtain a clear view
of its practical behaviour; we leave it as a problem for future
investigation.
### REFERENCES
[1] G. Arboit, “A method for watermarking Java programs via opaque pred-
icates,” 5th International Conference on Electronic Commerce Research
(ICECR-5), 2002.
[2] E. J. Chikofsky, and J. H. Cross II, “Reverse engineering and design
recovery: A taxonomy,” IEEE Software, pp. 1317, 1990.
[3] M. Chroni and S.D. Nikolopoulos, “Efficient Encoding of Watermark
Numbers as Reducible Permutation Graphs,” CoRR abs/1110.1194, Oct.
2011.
[4] M. Chroni and S.D. Nikolopoulos, “Encoding watermark integers as self-
inverting permutations,” Proc. 11th Int’l Conf. on Computer Systems and
Technologies (CompSysTech’10), ACM ICPS 471, pp. 125–130, 2010.
[5] C. Collberg, E. Carter, S. Debray, A. Huntwork, J. Kececioglu, C. Linn,
and M. Stepp, “Dynamic path-based software watermarking.” Proc.
ACM SIGPLAN Conference on Programming Language Design and
Implementation, ACM SIGPLAN 39, pp. 107–118, 2004.
[6] C. Collberg and J. Nagra, “Surreptitious Software,” Addison-Wesley,
2010.
[7] C. Collberg, S. Kobourov, E. Carter, and C. Thomborson, “Error-
correcting graphs for software watermarking,” Proc. 29th Workshop on
Graph-Theoretic Concepts in Computer Science (WG’03), LNCS 2880,
pp. 156–167, 2003.
[8] C. Collberg, A. Huntwork, E. Carter, G. Townsend, and M. Stepp, “More
on graph theoretic software watermarks: Implementation, analysis, and
attacks,” Information and Software Technology 51, pp. 56–67, 2009.
[9] K. D. Cooper and K. Kennedy, “Efficient computation of flow insen-
sitive interprocedural summary information,” Proc. ACM SIGPLAN
Symposium on Compiler Construction, pp. 247258, 1984.
[10] P. Cousot and R. Cousot, “An abstract interpretation-based framework
for software watermarking,” Proc. 31st ACM SIGPLAN-SIGACT Sym-
posium on Principles of Programming Languages (POPL’04), pp. 173–
185, 2004.
[11] D. Curran, N. Hurley, and M. Cinneide, “Securing Java through software
satermarking, Proc,” Proc. Int’l Conference on Principles and Practice
of Programming in Java (PPPJ’03), pp. 145–148, 2003.
[12] R. L. Davidson and N. Myhrvold, “Method and system for generating
and auditing a signature for a computer program” US Patent 5.559.884,
Microsoft Corporation, 1996.
[13] M. C. Golumbic, “Algorithmic Graph Theory and Perfect Graphs,”
Academic Press, New York (1980). Second edition, Annals of Discrete
Math. 57, Elsevier, 2004.
[14] A. Monden, H. Iida, K. Matsumoto, K. Inoue, and K. Torii, “A practical
method for watermarking Java programs,” Proc. 24th Computer Software
and Applications Conference (COMPSAC’00), pp. 191–197, 2000.
[15] J. Nagra and C. Thomborson, “Threading software watermarks,” Proc.
6th Int’l Workshop on Information Hiding (IH’04), LNCS 3200, pp.
208-223, 2004.
[16] G. Qu and M. Potkonjak, “Analysis of watermarking techniques
for graph coloring problem,” Proc. IEEE/ACM Int’l Conference on
Computer-aided Design (ICCAD’98), ACM Press, pp. 190–193, 1998.
[17] B. Ryder, “Constructing the call graph of a program ,” IEEE Transactions
on Software Engineering SE-5(3), pp. 216–225, 1979.
[18] R. Venkatesan, V. Vazirani, and S. Sinha, “A graph theoretic approach
to software watermarking,” Proc. 4th Int’l Workshop on Information
Hiding (IH’01), LNCS 2137, pp. 157–168, 2001.
