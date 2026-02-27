#import "@preview/theorion:0.4.1": *
#import cosmos.fancy: *
#show: show-theorion

#set text(
  font: "STsong",
  weight: 400,
  size: 12pt,
)


#set text(
  font: "SimSun",
  lang: "zh",
  region: "cn"
)

// 关键设置：当检测到加粗请求时，手动增加描边厚度
#show  strong: set text(stroke: 0.0285em)
#set par(leading: 1.2em)


#set page(
  margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm), // 顶部边距设为0，方便图片贴边
)

#set enum(numbering: "(1)")
#show heading.where(level:1): it => [#align(center)[#it]]



#let score(n) = block(width: 100%, above: 1.5em, below: 1.2em)[
  #grid(
    columns: (1fr, auto),
    gutter: 0.5em, // 控制虚线和文字之间的间距
    align: (bottom, bottom),
    repeat[.],
    [(#n 分)]
  )
]





= 一.题目详情
#strong()[建议位置:] \
这是一道偏难的CMO3，适合作为压轴。 \
\
#strong()[题目详情：] \
给定正整数的子集 $D = {d_1,d_2,dots ,d_n}$ 满足 $gcd(d_1, dots ,d_n) = 1$ 则
1. 是否一定存在 $ZZ -> ZZ$ 的双射 $f$ 满足对 $forall a in ZZ, |f(a)-f(a+1)| in D$ ？
2. 是否一定存在 $NN -> NN$ 的双射 $f$ 满足对 $forall a in NN, |f(a)-f(a+1)| in D$ ？ 

\

= 二.解答
#strong()[题答：] \

两个问题的答案都是可以。 \
(1).对于第一个问题，我们对n归纳来证明问题，当 $n = 1$ 时是显然的，假若对 $n-1$ 的结论是成立的，我们来考虑 $n$ 的情形。\
  假设 $gcd(d_1,d_2,dots,d_n-1) = g$，设 $d_i ' = d_i / g (i = 1,2,dots,n-1)$，则 $gcd(d_1 ',dots,d_(n-1) ') = 1$。
  那么由归纳假设，存在 $f': ZZ -> ZZ$ 满足对 $forall a in ZZ, |f'(a)-f'(a+1)| in D'$，其中 $D' = {d_1 ',dots,d_(n-1) '}$,
  现在我们来构造 $f$。\
  首先，考虑 $f_1: ZZ -> g ZZ， f_1(x) = g f'(x)$ 满足任意 $x in g ZZ$，$|f_1(x)-f_1(x+1)| in D$。\ 
  也就是说我们可以把 $g ZZ$ 当中的数排成一条直线，使得在这条线上的相邻两个数的差是 $D$ 当中的元素。考虑到 $gcd(g,d_n) = 1$ 那么 $g ZZ union (g ZZ + d_n) union dots union (g ZZ + (g-1)d_n) = ZZ$，那么，我们考虑将所有数排成以下形式的表格，我
  们可以发现在这个表格当中相邻的数的差都是 $D$ 当中的元素。\
  #align(center)[#image("图片/微信图片_20260226161008_21_30.jpg",width:110%)]
  所以按照表格中所标出的的红线走，就可以把 $ZZ$ 中元素排成一条直线，满足相邻两个数的差是 $D$ 当中的元素。这样子就完成了归纳过渡。 #h(1fr)#strong()[第一问证毕]
  #score(6)








(2). 对于第二个问题，我们首先描述以下定义：记 $G_N^D$ 表示顶点集为 $V = {0,1, dots ,N-1}$ ，边集为 $E = {(x,y) | x,y in V, |x-y| in D}$ 的图。接下来我们首先证明关于 $n = 2$ 的以下引理。

#strong()[引理1：]
对于 $D= {d_1, d_2}$ 满足 $d_1, d_2$互素，那么: \
#h(3em)1. $G_(d_1+d_2)^D$ 是一个圈 \
#h(3em)2. $G_(d_1+d_2+1)^D$ 有两条哈密顿路 $P_d_1$ 和 $P_d_2$ ，满足起点是 $0$ 终点是 $d_1 + d_2+1$。 \
\
#strong()[proof of lemma1:]
#set enum(numbering: "1.")
1. 由于其中的每一个点的度都是2，所以结论成立。
2. $d_1+d_2$ 这个点和点 $d_1$ 和 $d_2$ 相连，同时 $d_1$ 和 $d_2$ 在圈 $G_(d_1+d_2)^D$ 中有一个公共邻点 $0$ , 所以图 $G_(d_1+d_2+1)^D$ 如下图所示，有两个从 $0$ 到 $d_1+d_2$ 的Hamilton 路，引理得证。
#align(center)[#image("图片/9176b2978de39be7a50bbca1413aeeac.jpg",width:40%)]
#h(-1cm)
#score(9)




接下来我们考虑对于一般的 $n$，假设 $D = {d_1,d_2,dots,d_n}$ 首先我们定义 $C(x,y)$ 为顶点为 $V(x,y) =(d_1+d_2)x+y+gcd(d_1,d_2) dot {0,1,2, dots (d_1+d_2)/gcd(d_1,d_2) -1}$ 边集为 $E(x,y) = {(u,v) | u,v in V(x,y), |u-v| in D}$ 的图。并且假设 $P(x,y) = (d_1+d_2)x+y + d_2 - gcd(d_1,d_2)$ 为圈 $C(x,y)$ 上的一个点，注意到这个点的邻点是 $P(x,y)-d_1$ 和 $P(x,y)+d_1$ 所以我们可以注意到以下事实：
$P(x,y)$ 和 $P(x+1,y) - d_1$ 之间连边，$P(x,y)+d_1$ 和 $P(x+1,y)$ 之间连边。 \

那么如果我们把 $C(x,y),C(x+1,y),C(x+2,y) dots dots$ 放到一起，他们就会形成下图的样子：
#align(center)[#image("图片/389839a5730b7051b629084cd0d4c6c3.jpg",width:110%)]

这意味着 $C(x,y) union C(x+1,y) union C(x+2,y)  union  dots  union C(x+n,y)$ 当中存在一个哈密顿圈。接下来我们取一个足够大的 $l$，记 $N = (d_1+d_2)l$，那么 ${0,1,2,....,N-1}$ 可以分成 $V(i,j) quad \(0 <= i <= l-1, j = 0,1,2,...,gcd(d_1,d_2)-1 \)$ \于是根据我们的前面所说的内容，我们可以把 $G_N^D$ 的顶点分成 $gcd(d_1,d_2)$ 个圈。 \
#score(12)






接下来我们来通过以下的办法把圈连起来，证明当 $l$ 足够大时，$G_N^D$ 是有Hamilton圈的。\


#strong()[引理2：] 假设 $d_1,d_2, d in D$ 使得 $d_2 >= d_1 >= 3g thin$ 其中 $gcd(d_1,d_2) = g$，并且我们有 $x_1,x_2,y_1,y_2$ 满足以下条件: \
1. $y_2 equiv y_1 + d thin (mod thick g)$ \
2. $V(x_1,y_1) + d subset V(x_2,y_2) union V(x_2+1,y_2)$ 这里 $V(x_1,y_1) + d$ 表示将 $V(x_1,y_1)$ 中的每个元素都加上 $d$ 所得的集合。\
那么我们有：存在 $C(x_1,y_1)$ 的一条边 $e$ 满足 $f = e + d$ 是 $C(x_2,y_2)$ 的一条边或者 $C(x_2+1,y_2)$ 的一条边。\



#strong()[Remark:] 
引理二的证明涉及较为复杂的细节讨论，不作为强制要求的得分点，如果使用引理二，或类似的结论证明可以得到图 $G_N^D$ 有Hamilton圈，但出现了细节错误，不扣分。 在此，为了证明的连续性我们把引理二的证明放在证明的最末尾。

#align(center)[#image("图片/c0f857d2e3558ee3d754b8cb69500c39.jpg")]
利用引理2，我们可以把 $G_N^D$ 中的 $gcd(d_1,d_2)$ 个圈连起来，得到 $G_N^D$ 中存在一个哈密顿圈。首先我们不妨假设 $d_1 > d_2 > 3 gcd(d_1,d_2) $ ，这是因为，$gcd(g,d_3,d_4,...,d_n) = 1$ 所以 $G_N^D$ 中的 $gcd(d_1,d_2)$ 个连通分支之间是连通的，并且，对于两个圈之间存在一条差为 $d in D$ 的边，我们利用引理2 就可以把这两个圈连起来。这样子我们就证明了 $G_N^D$ 中存在一个哈密顿圈。
#score(18)

\
接下来我们来证明 $G_(N+1)^D$ 中存在一个哈密顿路。
为此，我们来考察 $G_N^D$ 中的一个圈 $C(0,0) union C(1,0) union dots dots union C(l-1,0)$，注意到利用引理1，我们可以找到一条由 $0$ 到 $N$ 的哈密顿路 $P$，并且由于链接 $0$ 和 $d_1+d_2$ 的道路有两条，那么我们可以通过选择来保证所选出的 Hamilton路经过每一次"粘贴"所用的边，如下图所示。

#image("图片/dbcb76c92b2db1580b425c95f4aad192.jpg")

这样我们就找到了一条 $G_(N+1)^D$ 的从 $0$ 到 $N$ 的Hamilton路径，由于 $0$ 和 $N$ 是顶点集当中的最大数和最小数，所以我们重复利用这条路径的模式，就可以把 $0,1,2,dots$ 排成一列，使得相邻的两个数的差在 $D$当中。综上所述，命题得证。 #h(1fr)QED

#score(21)

#strong()[proof of Lemma2:]\
#strong()[case1]:如果 $d_2 > 2d_1$ \
假设 $a = min V(x_1,y_1)$,那么由于 $d_2 >= 2d_1 +g >= d_1 +4g$ 故 $a + d_1 +g,a+d_2-g in V(x_1,y_1)$ 这意味着 $a+d_1+g+d in V(x_2,y_2) $ 或 $V(x_2+1,y_2)$ 。 \
如果$a+d_1+g+d in V(x_2,y_2)$：那么$\{\{a,a + d_(1)\},\{a + g,a + d_(1) + g\}\}$ 当中至少有一条边可以作为引理所述的 $e$ 。若否，则 $a+d_2-3g+d in V(x_2,y_2)$，此时我们可以证明存在$e in \{\{a + d_(2) - 3g, a + d_(1) + d_(2) - 3g\},\{a + d_(2) - 2g, a + d_(1) + d_(2) - 2g\}\}$ 满足条件。


#strong()[case2]:$d_(2) < 2d_(1)$我们将选择一条形式为 $e = \{x, x + d_(2)\}$ 的边，其中 $x$ 的选择将取决于 $C(x_1,y_1) + d$ 相对于 $C(x_2,y_2)$ 和 $C(x_2+1,y_2)$ 的位置，进行讨论即可，具体细节如下：


*case 2.1:* $a+d_2+d in C(x_2, y_2)$ 设 $x=a$。显然，$e = {a, a+d_2} subset.eq C(x_1, y_1)$ 且 $e+d = {a+d, a+d_2+d} subset.eq C(x_2, y_2)$。由于尊重单元格 $C$ 的图包含 $C$ 中满足 $|u - v| = d_2$ 的任何两个顶点 $u$ 和 $v$ 之间的边，这意味着 $e in E(H_1)$ 且 $e+d in E(H_2)$。

*case 2.2:* $a+d_1+d in C(x_2+1, y_2)$ 设 $x=a+d_1-g$。如上所述，$e = {a+d_1-g, a+d_1+d_2-g} subset.eq C(x_1, y_1)$，因此 $e in E(H_1)$。如果 $a+d_1+d-g in C(x_2+1, y_2)$，那么 $e+d subset.eq C(x_2+1, y_2)$，因此 $e+d in E(H_2)$。反之，如果 $a+d_1+d-g in.not C(x_2+1, y_2)$，那么 $a+d_1+d-g in C(x_2, y_2)$。由于 $a+d_1+d in C(x_2+1, y_2)$，我们得到 $x+d = a+d_1+d-g = max(C(x_2, y_2))$，并且边 $e+d$ 是 $H_2$ 中连接 $C(x_2, y_2)$ 和 $C(x_2+1, y_2)$ 的两条边之一。

*case 2.3:* $a+d_2+d in C(x_2+1, y_2)$ 且 $a+d_1+d in C(x_2, y_2)$ 设 $x = max(C(x_2, y_2)) - d_1 - d$。我们有 $e in E(H_1)$，因为
$ a+d_1+d in C(x_2, y_2) => a+d_1+d <= max(C(x_2, y_2)) <=> x >= a, $
以及
$ a+d_2+d in C(x_2+1, y_2) => a+d_2+d - g >= max(C(x_2, y_2)) <=> x <= a+d_2 - d_1 - g, $
这意味着
$ a <= x <= a+d_2 - d_1 - g < s(x_0, y_0) < x+d_2 <= a+2d_2 - d_1 - g < a+d_2+d_1 - g = max(C(x_1, y_1)). $
$x$ 的定义立即表明 $e+d$ 是 $H_2$ 中连接 $C(x_2, y_2)$ 和 $C(x_2+1, y_2)$ 的两条边之一。 #h(1fr) $square$

\
= 三.评分标准和附注
1. 完整完成第一问给6分，不设置中间得分点。
2. 证明 $n=2$ 的情况的问题的3分，如果只证明 Lemma1 的1但没有证明2也可以的到完成 $n = 2$的情况的三分
3. 证明可以将 $G_N^D$ 分成若干个Hamilton路的并集可以再得到3分，而证明 $G_N^D$ 有Hamilton回路可以再的6分。
4. 进一步完成证明得到完整的21分。
5. 任何其他的完整正确的方法都应该得分。小错误但不影响整体逻辑的，酌情扣3分或以上，引理2的证明不设为考察点，在证明引理二时出现细节错误，不扣分。

\
附注：为降低难度，可以删除第一问。
