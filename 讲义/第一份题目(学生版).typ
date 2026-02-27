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
    ]
  }
}


#text(size:30pt)[Problem Sheet 0]

= 代数
#problem()[
 是否可以将 $QQ$ 分成三个非空子集的不交并 $A,B,C$ 使得 $A+B,B+C,C+A$ 也是不交的？
]  //3.5star

#problem()[
  f,g是两个整系数非零多项式满足 $deg f > deg g$。若存在无穷多个素数p使得多项式$p f + g$有有理根，求证: $f$ 有有理根。
] //4.5star

#problem()[
  假设 $f: RR -> RR^2$是连续映射，满足任何x有 $f(x) = f(x+1)$。证明:对 $forall t in [0,1/4]$，存在实数 $x$ 使得从 $f(x-t)$ 到 $f(x+t)$ 的向量追至于从 $f(x)$ 到 $f(x+1/2)$ 的向量。
] //3.5star

#problem()[
  $f(x)$ 是有理系数多项式，且不是常值多项式。是否一定存在一个有理数系数多项式 $g(x)$ 使得 $f(g(x))$ 有平方因子？
] //3star

#problem()[
  假设实系数多项式 $P(x)$和 $Q(x)$ 互素，且都不是常多项式，求证至多存在三个 $lambda$使得 $P(x) + lambda Q(x)$ 是多项式的平方。
] //4.0 star

#problem()[
  设 $n$ 个正实数 $a_1, a_2, dots, a_n$ 的调和平均、几何平均、算术平均、平方平均分别是 $H, G, A, Q$，证明：
$ (Q H) / (A G) <= ( (n-1)^( (3n-4) / (2n) ) ) / (sqrt(n^2 - 3n + 3)) $
] //4.2star

#problem()[
  证明：对任何实数 $delta in (0, 2 pi)$，都存在大于 1 的整数 $m$ 使得如下命题成立：对任何正整数 $n$ 与任何 $n$ 个模长为 1 的复数 $z_1, dots, z_n$，若有
$ z_1^k + dots + z_n^k = 0, quad k = 1, dots, m, $
则单位圆周上任何长度为 $delta$ 的圆弧都含有 $z_1, dots, z_n$ 中至少一点。
] //4.5star

#problem()[
  设 $a > -2$，对于一个自然数 $n$，设实数 $y_1, dots, y_n$ 是以下方程组的解：
$ sum_{j=1}^n y_j / (j + k + a) = 1 / (n + 1 + k + a), quad k = 1, dots, n. $
] //5star


#problem()[
  设函数 $f: RR_+ arrow RR$ 满足
$ f((x + y) / 2) + f((2 x y) / (x + y)) = f(x) + f(y), quad forall x, y > 0. $
证明：对任何正数 $x, y$ 有 $2 f(sqrt(x y)) = f(x) + f(y)$。
]



//--------------------------------------------------------------------------

//--------------------------------------------------------------------------


= 数论

#problem()[
  证明：存在无穷多m,n满足 $1 <m < n$，且如下四个最大公约数
  $
    gcd(m,n),gcd(m+1,n),gcd(m,n+1),gcd(m+1,n+1)
  $
  都大于 $sqrt(n)/999$
] //3star

#problem()[
  给定n个两两不同的正整数 $a_1,a_2,...,a_n$。证明：存在整数 $x$ 不同于 $a_1,a_2,...,a_n$ ,使得 $v_2(x-a_1),v_2(x-a_2),...,v_2(x-a_n)$ 中至少有 $n/4$ 项实际数，也至少有 $n/4$ 项是偶数。
] //4star

#problem()[
  假设 $P(x)$ 是整系值多项式。称正整数 $n$ 是坏数，如果不存在非负整数 $k,m$ 使得 $n = P(k) - 2^m$ \
  试确定所有的整值多项式 $P(x)$ 使得坏数的集合是有限的。
] //4.5star

#problem()[
  $P(x)$ 是整系数二次多项式。已知人们可以选出 $d_1,d_2,d_3 dots $满足 $d_n | P(n)$ 并且数列 $d_1,d_2,d_3,...$ 是递增的。\ 
  证明：或者 $P(x)$ 可以分解，或者 $gcd{P(n):n in ZZ_+} > 1$
] //5star

#problem()[
  求所有正整数 $k$，使得存在一个多项式 $P(x)$，满足对任何正整数 $n$ 都有
   $ P(n) = op("lcm")(n+1, n+2, dots, n+k), $
   其中 $op("lcm")(n+1, n+2, dots, n+k)$ 表示 $n+1, n+2, dots, n+k$ 的最小公倍数。
] //3.5star



//--------------------------------------------------------------------------

//--------------------------------------------------------------------------

= 组合
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
  给定正整数 $k > 2$。我们有一个图 $G$，$G$中每个点的度数至少是 $k$。证明：这个图中存在一个圈 $C$ 满足这些人当中至少有 $k^2/10 + |C|$ 对朋友关系。
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



//--------------------------------------------------------------------------

//--------------------------------------------------------------------------