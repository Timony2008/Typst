//#set text(20pt)
//#set page(paper:"a3",margin: (left: 1.5cm, y: 1.5cm),)
//#show: columns.with(2)
#set page(
  paper: "us-letter",
  header: align(right+horizon)[
    这是一个试图加上眉页编号的人打出来的字
  ],
  numbering: "a.1",
)
#set par(justify: true)
#set text(
  size: 11pt,
)

#align(center, text(30pt)[
  *A fluid dynamic model
  for glacier flow*
])
#grid(
    columns: (2fr,1fr),
    align(center)[
        #strong[Timony] \
        603243\@qq.com \
    ],
    align(center)[
        and his cat \
        十分的靠左
    ]

)
#pagebreak()

*strong* \
_emph_ \
`print(113)` \
http://typst.app/ \
<intro>
= heading
- item
+ item
/ definition: descrption
$x^2 = x dot x$ \
'single' or "double" \
------------------
#rect(stroke:yellow,fill:blue)[122233341224]

$
  1/5+2+3 &= 1/5+5 \
          &= 26/5 &&= 1+21/5 \
          & &&= 2+11/5
$

#let x = 10

$#x+1=#(x+1)$
$arrow.r.long$
$x y$
$!= >= infinity$
$a "is a string"$
$x^2$ \
#{
    let x= 1
    [hello#(x+1) \ ]
    ["hello"]
}
#{
    let x = (1,23,434)
    x.at(2)
}
#let function121 = (x,y) => x+y

#function121(1,2)

多行注释：用\/\* 和 \*\/包裹
#set heading(numbering: "1.a")
== asdsa
== ssd
this list is marked with -
#[
    #set list(marker:[-])
    - Dash 
]

this is dot
- Dash
#{
    set text(12pt)
    figure(
        image("assets/QQ截图20240522172240.png",width: 70%),
        caption: underline()[这是几何画板里面搞出来的一个小玩意]
    )
}

#figure(
        image("assets/QQ截图20240522172240.png",width: 70%),
        caption: underline()[这是几何画板里面搞出来的一个小玩意]
)<一张图片>

注意到我的确成功的没有搞得标号混乱www\
因为@一张图片 的确显示的是标号2

$
  nabla x^2 = (2x,0,0) 
$
$
  v := vec(x_1,x_2,x_3)
$

$
  a arrow.r.long.squiggly b
$

#par(
    justify: false,
)[
    #set text(120pt)
    sssdds\ sadda
    sdddda\
    aaaa\ aas
]
#pagebreak()

#lorem(10)

//制作模板

#let amazed(term, color: blue) = {
  text(color, box[✨ #term ✨])
}

You are #amazed[beautiful]!
I am #amazed(color: purple)[amazed]!
#amazed(color:red)[term]

/*
#show: amazed(color: green)[
    这样子就可以打出一大串东西啦\~
] //这之后的东西都不会显示
*/
+ #lorem(10) \
  #rect(fill: luma(240), stroke: (left: 0.25em))[
    *Solution:* #lorem(10)

    $ a_(n+1)x^n = 2... $
  ]
#{
  let a = [from ]
  let b = [*world*]
  [hello ]+ a + [the ]+ b
}

#let name = [Typst]
This is #name \


//下面是一些神秘的写法

#let books = (
  Shakespeare: "Hamlet",
  Homer: "The Odyssey",
  Austen: "Persuasion",
)

#let (Austen,) = books
Austen wrote #Austen.

#let (Homer: h) = books
Homer wrote #h.

#let (Homer, ..other) = books
#for (author, title) in other [
  #author wrote #title. \
] 

//这太神奇了！！！！
#{
  if 1 < 2 [很对呀]
  else [wht？]
}


#{
  for i in "CCF" [
    #i is a letter \
  ]
}

\
\
= *方法*
两种等价的写法`#"Hello".len()` $<==>$ `#str.len("Hello")`
\
人类都会同意第一种更像人类写的东西

#let arrow = (1,2,3,4)
#arrow.remove(0)
//当我们不想返回的时候应该写 #let _= arrow.remove(0)
#arrow

= 一些东西的核心用法
== arguments
#let format(title, ..authors) = {
  let by = authors
    .pos()
    .join(", ", last: " and ")

  [*#title* \ _Written by #by;_]
}

#format("ArtosFlow", "Jane", "Joe","assda","Tom","王一楠")

#text(size:12pt)[Spreading]
#let array = (2, 3, 5)
#calc.min(..array)
#let dict = (fill: blue)
#text(..dict)[Hello]

#let args = arguments(stroke: red, inset: 1em, [Body])
#let a = args.pos()
#let b = args.named()
#a #b \
#box(stroke:red,inset:12pt,[body])

== array
#let a = (1,2,3,4,5)
#a.at(0)

