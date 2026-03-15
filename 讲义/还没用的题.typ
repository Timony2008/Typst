#import "@preview/dvdtyp:1.0.1": *
#import "@preview/gentle-clues:1.3.0":*


#show: dvdtyp.with(
  title: "第一份题目",
  subtitle: v(0.5cm),
  author: "Timony",

)

#set text(
  font: "LXGW WenKai",
  size: 12pt,

)



#problem()[
  f,g是两个整系数非零多项式满足 $deg f > deg g$。若存在无穷多个素数p使得多项式$p f + g$有有理根，求证: $f$ 有有理根。
] //4.5star

#problem()[
  假设 $f: RR -> RR^2$是连续映射，满足任何x有 $f(x) = f(x+1)$。证明:对 $forall t in [0,1/4]$，存在实数 $x$ 使得从 $f(x-t)$ 到 $f(x+t)$ 的向量追至于从 $f(x)$ 到 $f(x+1/2)$ 的向量。
] //3.5star



#problem()[
  设 $a > -2$，对于一个自然数 $n$，设实数 $y_1, dots, y_n$ 是以下方程组的解：
$ sum_{j=1}^n y_j / (j + k + a) = 1 / (n + 1 + k + a), quad k = 1, dots, n. $
] //5star



= 数论

#problem()[
  给定n个两两不同的正整数 $a_1,a_2,...,a_n$。证明：存在整数 $x$ 不同于 $a_1,a_2,...,a_n$ ,使得 $v_2(x-a_1),v_2(x-a_2),...,v_2(x-a_n)$ 中至少有 $n/4$ 项实际数，也至少有 $n/4$ 项是偶数。
] //4star


= 组合


#problem()[
  给定简单图 $G$ 满足任意 $n$ 阶的树 $T$ ， $G$ 都有一个同构于 $T$ 的子图。 \
  证明：$G$ 至少有 $(ln n-2) dot n$ 条边
] //4star

#problem()[
  给定正整数 $n$。设 $A_1, dots, A_m$ 是 $\{1, 2, dots, 2n\}$ 的子集，满足对任何 $1 <= i < j <= m$ 都有
   $ A_i cancel(subset.eq) A_j, quad A_j cancel(subset.eq) A_i, quad A_i union A_j != \{1, 2, dots, 2n\}. $
   求 $m$ 的最大可能值。
] //4.5star


#problem[
  假设 $A_1,dots ,A_t$ 是集合 ${1,2,dots, n}$ 的不同的子集，满足任何的 $1 <= i < j < k <= t$ 都有 
  $
    A_i inter A_k subset.eq A_j 
  $
  求 $t$ 的最大值。
]//3.5star

#problem[
  假设 $P_1,dots,P_n$ 是平面上 $n$ 个不同的点。证明：这 $n$ 个点至多形成 $n^2 sqrt(n)$ 个直角三角形。
] //4.0star
//相关问题：2020IMO Day 3

#problem[
设 $X$ 是有限集合，$n$ 是不超过 $|X|$ 的正整数。记 $X$ 的所有 $n$ 元子集构成的集合为 $S$。假设存在映射 $f: S -> X$ 满足如下两个条件：

(1) 对任何 $A in S$ 有 $f(A) in A$；

(2) 对 $A_1, A_2 in S$，若 $|A_1 ∩ A_2| = n - 1$，则 $f(A_1) != f(A_2)$。

证明：若 $p$ 是 $n$ 的最小素因子，则有 $|X| < n + p$。
]//4star
//诈骗题，小可爱

#problem[
设 $G=(V,E)$ 是 $n$ 阶完全图，$E$ 是其边集，$Phi: E -> RR^2$ 是从 $G$ 的边集 $E$ 到欧氏平面的映射，满足：

(1) 对 $Phi$ 的任何像点 $x$，若令 $E_x = { e in E | Phi(e)=x }$，则简单图 $(V, E_x)$ 是连通图；

(2) 对 $G$ 的任何 $K_3$ 子图，若记其三边为 $e,f,g$，则 $Phi(e), Phi(f), Phi(g)$ 位于 $RR^2$ 的同一直线上。

证明：$Phi$ 的所有像点共线，即 ${ Phi(e) | e in E }$ 包含在 $RR^2$ 的某条直线中。
]//难题5star

#problem[
$G$ 是一个有 $2025$ 个顶点的图，且没有 $K_4$ 子图。求 $G$ 中三角形个数的最大值。
]//3.5star套路题

#problem[
证明：任意简单图 $G=(V,E)$ 的顶点集 $V$ 可以被划分为两部分（允许为空），使得每部分诱导的子图中所有顶点的度数均为偶数。

注：$G'=(V',E')$，$V'$ 被包含于 $V$，$E'={(u,v) | u,v in V', (u,v) in E}$，则称 $G'$ 为 $G$ 的诱导子图。
]//4satr 归纳好题

#problem[
求证：对充分大的正整数 $n$，存在 $a_1,a_2,dots,a_n$ 满足：

(1) $a_i in {-1, 0, 1}$（$i=1,2,dots,n$）；

(2) $a_1,a_2,dots,a_n$ 中非零项至少有两个；

(3) $a_1 + a_2/2 + dots + a_n/n = 0$。
] //难题5star

#problem[
求证：对任意正整数 $m$，存在正整数 $n$，使得平面上任意 $n$ 个不同的点可以被分成 $m$ 个非空的点集，满足它们的凸包有一个公共点。
]//好题，4star，组合几何背景

#problem[
给定正整数 $n$，平面上的 $n$ 条不同直线构成集合 $S$。令
$T = { {l_1,l_2,l_3} subset.eq S : l_1,l_2,l_3$ 围成一个锐角三角形 $}$，
求 $|T|$ 的最大值。
]//算两次   4star

#problem[
设 $k$ 是正整数。甲乙两人玩一个游戏：乙先在黑板上写一个正整数，随后每轮里甲选一个整数 $x$，乙将黑板上的数 $a$ 擦掉，并写上 $a+x$ 或 $a-x$。如果黑板上出现了某个 $k$ 的非负整数次幂，则甲获胜。求所有 $k$，使得甲有必胜策略。
]//3.3star

#problem[
给定正整数 $n >= 2$。对 $n$ 个集合 $A_i$（$i=1,2,dots,n$）定义如下操作：开始时每个 $A_i = {i}$。每次操作可以选择 $1 <= i < j <= n$，把 $A_i, A_j$ 均换成 $A_i ∪ A_j$。求最小的正整数 $k$，使得在任何 $n - 1$ 次操作后，一定存在 $i in {1,2,dots,n}$，满足至多存在 $k$ 个 $j in {1,2,dots,n}$ 使 $i in A_j$。
]//归纳，不太难3.5star