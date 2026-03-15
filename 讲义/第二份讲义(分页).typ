// 1. 定义问题计数器
#let prob-counter = counter("problem")

// 2. 自动重置逻辑：在新章节 (level 1) 或新小节 (level 2) 处重置题号
#show heading.where(level: 1): it => { it; prob-counter.update(0) }
#show heading.where(level: 2): it => { it; prob-counter.update(0) }

// 3. 定义智能 problem 函数
#let problem(title: "Problem", body) = {
  prob-counter.step()
  
  context {
    let h-counter = counter(heading).get()
    let prob-num = prob-counter.get().at(0)
    
    // 动态构建题号描述字符串 
    let info = ""
    if h-counter.len() == 0 {
      info = [#prob-num]
    } else if h-counter.len() == 1 {
      // 只有章，没有节
      let chapter = h-counter.at(0)
      info = [#{chapter+1}.#prob-num ]
    } else {
      // 既有章，又有节
      let chapter = h-counter.at(0)
      let section = h-counter.at(1)
      info = [#{chapter+1} . #section #prob-num]
    }
    
    [
      #strong()[#title ] 
      #info

      #body
      #pagebreak()
    ]
  }
}


#set page(
  margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm), // 顶部边距设为0，方便图片贴边
)


#text(size:30pt)[Problem Sheet 1]
\
\

= Part 1 之前的问题

#problem()[
  证明：对任何实数 $delta in (0, 2 pi)$，都存在大于 1 的整数 $m$ 使得如下命题成立：对任何正整数 $n$ 与任何 $n$ 个模长为 1 的复数 $z_1, dots, z_n$，若有
$ z_1^k + dots + z_n^k = 0, quad k = 1, dots, m, $
则单位圆周上任何长度为 $delta$ 的圆弧都含有 $z_1, dots, z_n$ 中至少一点。
] //4.5star

#problem()[
  $P(x)$ 是整系数二次多项式。已知人们可以选出 $d_1,d_2,d_3 dots $满足 $d_n | P(n)$ 并且数列 $d_1,d_2,d_3,...$ 是递增的。\ 
  证明：或者 $P(x)$ 可以分解，或者 $gcd{P(n):n in ZZ_+} > 1$
] //5star

#problem(title:"(puzzle)")[
  平面上选定若干个单位圆。请问是否总能在平面上选择若干个点，使得在每个单位圆内部恰好有一个选定的点？\
  请尝试给出一个尽可能优美的解法qwq
] //3star

#problem()[
  在一个由 $10 times 10$ 的单位正方形构成的方格表中选中一些格子，每个被选中的格子当中画有一个有方向的对角线。已知任何两条对角线要么距离大于等于2，要么其中一个的起点是另一个的终点。求被选中的格子的个数的最大值。
]//2.5star

#problem()[
  $a != b$ 为非负整数，$S$ 为球面上 $a+b+3$ 个不同的点，任何四个不共面，求有多少个平面经过 $S$ 中的三个点，然后把剩下的点分成两部分，一部分 $a$ 个点，一部分 $b$ 个点？
] //4star

#problem()[
  给定正整数 $k > 2$。我们有一个图 $G$，$G$中每个点的度数至少是 $k$。证明：这个图中存在一个圈 $C$ 满足这些人当中至少有 $k^2/10 + |C|$ 对朋友关系
] //4star

#problem()[
  给定简单图 $G$ 满足任意 $n$ 阶的树 $T$ ， $G$ 都有一个同构于 $T$ 的子图。 \
  证明：$G$ 至少有 $(ln n-2) dot n$ 条边
] //4star

#problem()[
  给定正整数 $n$。设 $A_1, dots, A_m$ 是 $\{1, 2, dots, 2n\}$ 的子集，满足对任何 $1 <= i < j <= m$ 都有
   $ A_i cancel(subset.eq) A_j, quad A_j cancel(subset.eq) A_i, quad A_i union A_j != \{1, 2, dots, 2n\}. $
   求 $m$ 的最大可能值。
] //4.5star

#problem()[
  $cal("F")$ 是 $[n]$ (表示 ${1,2,dots n}$) 上的一个子集族,
  $
    cal("G") = {A\\ B: A、B in cal("F")}.
  $
  证明： $|cal(G)| > |cal(F)|$。
] //4star

#problem()[
  给定 $n$ 个整数（不必不同）及正整数 $p,q$，若这 n 个整数中有相同的数，取其中两个，一个加 $p$，一个减 $q$，证明：这样的操作一定只能进行有限次
]


= Part 2 新的问题

#problem()[
  给定简单图 $G$ 满足任意 $n$ 阶的树 $T$ ， $G$ 都有一个同构于 $T$ 的子图。 \
  证明：$G$ 至少有 $(ln n-2) dot n$ 条边
] //4star




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
证明：任意简单图 $G=(V,E)$ 的顶点集 $V$ 可以被划分为两部分（允许为空），使得每部分诱导的子图中所有顶点的度数均为偶数。

注：$G'=(V',E')$，$V'$ 被包含于 $V$，$E'={(u,v) | u,v in V', (u,v) in E}$，则称 $G'$ 为 $G$ 的诱导子图。
]//4satr 归纳好题

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


#problem()[
  给定正整数 $n$。设 $A_1, dots, A_m$ 是 $\{1, 2, dots, 2n\}$ 的子集，满足对任何 $1 <= i < j <= m$ 都有
   $ A_i cancel(subset.eq) A_j, quad A_j cancel(subset.eq) A_i, quad A_i union A_j != \{1, 2, dots, 2n\}. $
   求 $m$ 的最大可能值。
] //4.5star