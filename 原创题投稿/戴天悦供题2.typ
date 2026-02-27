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
这是一道偏难的联赛3也可以放到联赛4的位置。 \


\
#strong()[题目：]给定正整数k，我们考虑n维正整系数向量$arrow(a)$满足 $a$ 的各个分量的和为k的倍数。请证明：存在至多n个各个分量之和恰好等于k，满足可以用这些向量的自然数系数组合出 $arrow(a)$（也就是，存在n个向量 $arrow(v_1), arrow(v_2), dots v_n$和自然数$c_1, c_2, dots c_n$使得 $arrow(a) = sum_i c_i arrow(v_i)$）
\

= 二.解答
\
#strong()[解答(含思路版本):] \
我们假设 $arrow(a) = (a_1, a_2,dots ,a_n)$，记 $M = (sum a_i) / k$，假设向量 $arrow(x) = 1/M arrow(a)$。
那么 $arrow(x)$ 的各个分量之和等于 $k$ 。\
我们假设 $x$ 的前缀和等于 $s$ 也就是 $s_j = limits(sum)_(i=1)^j x_i ( 1<=j<=n)$，进一步假设 $s_0 =0$。接着我们假设 $p_j = floor(s_j)$，$y_j = {s_j}$。我们假设 $y_1,y_2,dots,y_n$从大到小依次排列为 $1 > y_(pi(1)) >= y_(pi(2)) >= dots >= y_(pi(n)) = 0$ 当出现 $y_i = y_j$ 的情况的时候，我们随便取一种排序方式,同时我们假设 $y_(pi(0)) = 1$

#rect(width: 17.1cm)[这里解释一下我们的思路，我们接下来要尝试做的事情是找到 $v_1, v_2 , dots v_n$满足 $arrow(a) = sum c_i v_i$，为了完成这个目标，我们应该把 $c_i$ 和 $v_i$ 绑在一起来看,然后我们把 $arrow(a)$ 下降到和 $v_i$ 同一个超平面里面，事情就变成了某种程度上的凸组合（系数为1的组合），这样子我们就可以考虑让每一个 $v_i$ 的第 $j$ 个分量都几乎和 $x$ 的第 $j$ 个分量接近，也就是取整和他相等，在通过让某一个多一点点来保证小数部分一致。同时我们通过求前缀和的操作可以方便的完成我们等于k的要求，也就是通过前缀和，把合为 $k$ 的几个数等效为长为 $k$ 的线段上的几个分点，现在我们继续证明。]
接下来构造向量 $v_1,v_2, dots ,v_n$，为此，我们来构造他们的前缀和记为 $z_1, z_2, dots ,z_n$满足 $z_i^((n)) = k$ 且 $sum c_i z_i^((j)) = s_j$。 \
#score(20)

为了完成这点，我们应该让每一个 $z_i^((j)) = p_j$ 或者 $p_j+1$ 然后的需求是让等于 $p_j+1$ 的哪些位置的数对应的 $c_i$ 和等于 $M times y_j$。所以我们的办法应该是这样的，首先令：

$ c_m = M (y_(pi(m-1)) - y_(pi(m))) quad (m = 1,2,dots , n) $
然后令：
$
  z_m^((j)) = cases(
    p_j+1 quad & "if" y_j "对应的下标" t < m ,
    p_j quad & "if" y_j "对应的下标" t >= m ,
  ) 
  quad quad \ "这里对应t下标指的是" y_j = y_(pi(t))
$

#score(40)
然后我们可以验证这的确满足条件 (这里的意思是满足 $z^((m))$ 他可以作为一个前缀和，也就是说分量是依次不减的)。接下来我们验证$sum c_i z_i^((j)) = s_j$ 为此只用看哪些 $z_m$ 的第 $j$ 个分量是 $p_j + 1$ 然后就会发现这些数就是 $t+1, t+2, dots , n$ 

所以啊这些数对应的 $c_m$ 的和等于 $limits(sum)_(i = t+1)^(n) c_i = M times y_(pi(t)) = M times y_j $，所以证完了。 #h(1fr) #strong[QED]
\
#score(50)

= 三.评分标准和附注

1. 给出通过前缀和转化构造的，给20分。
2. 给出进一步正确的构造方式的，再给20分。
3. 完整验证完成证明的，的剩下的10分。
4. 其他正确的办法也可以获得满分，本题有使用基础的线性代数的做法，但要求学生给出必要的证明(如锥引理)，若遗漏过多细节，酌情扣10到20分。
\
#strong()[附注：]本题和拓扑学中的单纯形分解有关，同时也有利用组合几何中凸分析的证明方法，主要工具是关于格的锥引理。
