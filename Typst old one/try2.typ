#import "try.typ"
#import ("first Typst.typ") as first
#import "@preview/fletcher:0.5.7" as fletcher: node, edge
#include first 
// #show: set text(fill:red)
#try.add(3,4) \
#first.g(name:"timony") \

#align(center, fletcher.diagram(
  node((0, 0), $S_1$),
  node((1, 0), $S_2$),

  edge((1, 0), (0, 0), $g$, "..}>", bend: 25deg),
  edge((0, 0), (1, 0), $f$, "..}>", bend: 25deg),
)) \

#if 1 == 2 { [assad]} else {[asasda]}
#{
  if 1 < 2 {
    "确实"
  }
  else {
    "啊？"
  }
}
\
#let 查成分(成分数组) = {
  "是个"
  if "A" in 成分数组 or "C" in 成分数组 or "G" in 成分数组 { "萌萌" }
  if "T" in 成分数组 { "工具" }
  "人"
}

#查成分(()) \
#查成分(("A","T",))

#let i = 0
#while i < 100 {
  [#calc.pow(i+1,2) ];
  if calc.rem(i+1,5) == 0 {
    [\ ]
  }
  i+=1
}
#v(2cm)

#for i in range(10) [阿巴阿巴]
#let cat = (neko-mimi: 2, "utterance": "喵喵喵", attribute: [kawaii\~])
#for (特色, 这个) in cat [猫猫的 #特色 是 #这个\ ]

#for i in range(10) {
  [#i]
}

\
#let last-two(t) = {
  let a = t.pop()
  [#t.pop()]
  [#a]
}
#last-two((1, 2, 3, 4))
\ 

两只#{
  [小白兔]
  set text(rgb("#ffd1dc").darken(15%))
  { [小白兔白]; set text(orange); [又白] }
  [，真可爱]
} \

#let warning = strong(underline(""))

#strong(underline("asadsasd")) \



+ #lorem(10) \
  #rect(fill: luma(240), stroke: (left: 0.25em))[
    *Solution:* #lorem(10)

    $ a_(n+1)x^n = 2... $
  ]

  $"asss" \ "saa"$