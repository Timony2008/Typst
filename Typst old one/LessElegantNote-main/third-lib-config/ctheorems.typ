// 第三方包 定理
#import "@preview/ctheorems:1.1.3": *

#let bodyfmt = (body) => [
  #body

  // 务必不要删除上面的空行！
]

#let noindent = context {
    let indent = par.first-line-indent
    let amount = if type(indent) == dictionary {
      indent.at("amount", default: 0pt)
    } else {
      indent
    }
    if amount != none and amount != 0pt {
      h(-amount)
    }
  }

#let boxtitlefmt = (title) => [

  *#title*
]

#let plaintitlefmt = (title) => [
  #emph(title)
]

// 定义定理环境
#let theorem = thmbox("theorem", "定理", fill: rgb("#e8e8f8"), titlefmt: boxtitlefmt, bodyfmt: bodyfmt,)
#let lemma = thmbox("theorem", "引理", fill: rgb("#efe6ff"), titlefmt: boxtitlefmt, bodyfmt: bodyfmt,) // 与Theorems共同计数
#let corollary = thmbox("corollary", "推论", base: "theorem", fill: rgb("#f8e8e8"), titlefmt: boxtitlefmt, bodyfmt: bodyfmt,)// 'Attached' to Theorems

#let definition = thmbox("definition", "定义", fill: rgb("#e8f8e8"), titlefmt: boxtitlefmt, bodyfmt: bodyfmt,)// 单独计数

#let exercise = thmbox("exercise", "习题", stroke: rgb("#ffaaaa") + 1pt, base: none, titlefmt: boxtitlefmt, bodyfmt: bodyfmt,).with(numbering: "I",) // 单独计数

// Examples and remarks are not numbered
#let example = thmplain("example", "例", titlefmt: plaintitlefmt, bodyfmt: bodyfmt,).with(numbering: none,)
#let remark = thmplain("remark", "注", inset: 0em, titlefmt: plaintitlefmt, bodyfmt: bodyfmt,).with(numbering: none)

#let proof = thmproof("proof", "证明", base: "theorem", titlefmt: plaintitlefmt, bodyfmt: bodyfmt,)

#let solution = thmplain("solution","答", base: "exercise", inset: 0em, titlefmt: plaintitlefmt, bodyfmt: bodyfmt,).with(numbering: none)


//自己加的proposition
#let proposition = thmbox("proposition", "命题", fill: rgb("#e8f8e8"), titlefmt: boxtitlefmt, bodyfmt: bodyfmt,)
//神秘的单独标号


// 定义一个新的“问题”环境
#let redbox(title) = thmbox(
  "redbox",                     // 标识符
  [#title #v(-10pt)],                         // 标题头
  stroke: rgb("#ffaaaa") + 1pt,   // 红色边框
  
  // 1. 控制“不贴着框”：加大 x 轴的内边距 (推荐 1.5em 到 2em)
  inset: (x: 0em, y: 1em),      
  
  // 2. 控制“左对齐”：在 bodyfmt 里强制 set align(left)
  bodyfmt: (body) => {
    set align(left) 
    body
  },
  
  // 3. 控制“换一行”：标题后强制换行
  separator: [\ ]                 
  
).with(numbering: none)           // 无编号