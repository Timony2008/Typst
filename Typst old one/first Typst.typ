#import "@preview/zebraw:0.3.0": *
#show: zebraw
#zebraw(
  highlight-lines: (
    (3, [to avoid negative numbers]),
    (6, [0 is not a right argument to fibonacci_reccursive()!]),
  ),
  header: "fibonacci_reccursive()",
  ```rust
  pub fn fibonacci_reccursive(n: i32) -> u64 {
      if n < 0 {
          panic!("{} is negative!", n);
      }
      match n {
          0 => panic!("zero is not a right argument to fibonacci_reccursive()!"),
          1 | 2 => 1,
          3 => 2,
          /*
          50    => 12586269025,
          */
          _ => fibonacci_reccursive(n - 1) + fibonacci_reccursive(n - 2),
      }
  }
  ```,
)



#let amazed(term) = box[✨ #term ✨]
#title[
  First Typst typing   
  timony
]

= title <一个神秘的标题>
文字像是这个样子
1. sad
2.sad
3. ewae
   - sda
   - dasd
   - dasdsa

现在可以输入文字了

== dasdas

#amazed[人们都是人]
````latex
\begin{equation}
$\int_{1}{\infty} x dx$
\end{equation}
````

*strong* \
_strong_ \
`print(1)`\
<intro> \
typst.app \
https://www.zhihu.com/search?type=content&q=typst \
$sum_(i=1)^10 x_i$ \
#rect(
  width: 3cm,
  height: 1cm,
  stroke: blue,
  fill: aqua,
)
$
r in R <= >= -->
$
#rect(
  width:3cm,
  stroke:blue,
  fill:red.lighten(80%),
  [文字这样子输入]
)

#rect(
  height: 1cm
)[文字在这里]


正常正文...

$sum_(i=1)^(n) k=(k(k+1))/2$ \
$alpha quad beta med delta$ \
$
f(x,y) := cases(
  1 "if" (x dot y)/2  <=0,
  2 "if" x "is even",
  3 "if" x "is odd",
  4 "else"
)
$

$
sum_(=10)^(1) #rect(width: 4mm,height:2mm)/2 = maltese
$
$ mat(
  1 ,2,...,10;
  2,2,...,10;
  dots.v,dots.v,dots.down,dots.v;
  10,10,dots,10
)
$

$ 
  x &= 1  && ("since" x > 0) \
  y &= 2 && ("condition b")
$

//注释啥的不会显示
\u{1f600}

#align(center)[#text(size:20pt,red)[#highlight(fill:blue.lighten(10%))[hight]居中的一行字]]

#table(
  columns: 3,
  table.header([*熟啊东*],[2],[3]),
  [1],[2],[3],
  [p],[1],[r],
)



````c
#include<bits/stdc++.h>
using namespace std;
int main{
  int a,b;
  cin>>a>>b;
  cout<<a+b;
}
````

+ 文字
+ 表达
+ 语法
+ 单词
  - 无标题列表
  - 有标题列表
+ 这就很好！


1. 1
+ 2
+ 3

wenziidiai
3. 3
+ 4

sadsadsda
6. dasad
+ dasdas

\@das \
3+4 \ 
A~B
A-B ... \
\* \` \
\`\`\` \ 
```typc plugin("typst.wasm")```

#strong[
  从前有座山 \
  山里有座庙 \
  庙里有个小和尚 \
]

一种#text(blue)[蓝色]的文字 \
#(1+1+1) \
#strong()[#(3+1)1+1] \

#([== 一段文字] + [另一段文字]) \
$sum_x$
$
sum_x
$
#emph[
  你可以写斜体，的同时*加粗*
]

#underline[asdfghjkl] \
#overline[asdfghjkl] \
#strike[asdfghjkl] \

#underline[Language] \
#underline(offset: 1cm,evade: false)[Language] \
Language

#text(fill:red)[```typ #strong[文字]``` \ #strong[文字]] \
#underline(evade: false)[#text(size:12pt)[一斤压力]#text(size:24pt)[两斤鸭梨]]


#link("https://zh.wikipedia.org")[#text(fill:blue)[#underline[这样子的标题好看一点,点一下会跳到维基百科]]] \
#link(<一个神秘的标题>)[#text(blue)[点这个试一下www]] \

#table(
  columns: 2,
  align: center,
  [1],[2],
  [11223],[1223],
  [#strike[1233]],[#highlight[*1233*]]
)

#underline(offset: -0.4em,evade: false)[12文字#text(size:24pt)[文字]]

#text(fill: white)[你看不见]

$sum_(i=1)^(100) i = 5050$文字什么的都不是很好
$
  sum_(i=1)^(100) i = 5050
$

#repr([ 一段文本 ， ]) \
#repr(1+2+4) \
#repr([sum_i^3]) \
#(str == str) \
#type([abs] == str) \
#(bool == str) \
#type(1) \

#type(if false {[1]} else {["no"]}) \
#(-0b1011)
#type((2.0*10)) \
#eval("1+1") \
#type(eval("1+1")) 
#calc.round(calc.pi,digits: 10)
#calc.sqrt(2) \
#("Hello,"+" \"World\"!") \
#type(int("123")+123) \
)

#calc.pow(2,32) \

#let fib(n) = {
  let (a,b) = (0,1)
  for i in range(n){
    (a,b) = (b,a+b)
  }
  a
}
#fib(10) \
//#let a = "阿巴阿巴" 
//#a#a#a \
/* 
#let f(x,y) = [#(x)#(y)作为今天的习题]
#f(114,5)

#f(123,"大萨达")
*/
#show heading: it => text(fill:blue,underline(it))

= 标题
=== biaoti
#underline(offset: -3pt,evade: false)[文字] \

#(abc: "def") \
#let cat = (cat1: [kawaii\~])
#cat \
#cat.cat1 \
//#let a = 1
//#(a = 2)
//#a
#let a = (1,2,3,4) 
#a.at(0) \
#([人们] in (1,2,3,[人们])) \
#type([人们] in (1,2,3,[人们])) \

#let gdassasda(..args) = {
  [一些奇怪的东西混了进来：#args.pos().join(underline(text(fill:blue)[哈哈哈]))]
}

#gdassasda([1],[2],"sdada",) \
#let sum(..args, init: 0) = init + args.pos().sum()
#let args = arguments(1, 2)
#sum(..args, init: 10) \
#sum(1,2,3,4,5)


#let g(name:"Timony") = {
  [are you #name ?]
}

#g() #g(name:"Alice") \



