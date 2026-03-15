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



= 组合


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
求证：对充分大的正整数 $n$，存在 $a_1,a_2,dots,a_n$ 满足：

(1) $a_i in {-1, 0, 1}$（$i=1,2,dots,n$）；

(2) $a_1,a_2,dots,a_n$ 中非零项至少有两个；

(3) $a_1 + a_2/2 + dots + a_n/n = 0$。
] //难题5star


#problem[
给定正整数 $n >= 2$。对 $n$ 个集合 $A_i$（$i=1,2,dots,n$）定义如下操作：开始时每个 $A_i = {i}$。每次操作可以选择 $1 <= i < j <= n$，把 $A_i, A_j$ 均换成 $A_i ∪ A_j$。求最小的正整数 $k$，使得在任何 $n - 1$ 次操作后，一定存在 $i in {1,2,dots,n}$，满足至多存在 $k$ 个 $j in {1,2,dots,n}$ 使 $i in A_j$。
]//归纳，不太难3.5star