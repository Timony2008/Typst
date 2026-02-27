//本typst用于制作一个标题


#let conf(title, doc) ={
    set page(
        header:align(right+horizon,highlight(title)),
        paper: "us-letter",
        numbering: "1."
    )


    align(center,text(17pt,strong(title)))
    grid(
        columns: (1fr, 1fr),
        align(center)[
            Timony \
            shenzhen middle school \
            603912340\@qq.com
        ],
        align(center)[
            my cat \
            meow school \
            none for something unfair
        ]
    )
    align(center)[
    set par(justify: false)
    *Abstract* \
    #lorem(80)
    ]

    //现在开始写正文

    show: rest =>columns(2,rest)
    show heading.where(level:1): it => [
        #set align(center)
        #set text(12pt,weight: "regular")
        #block(smallcaps(it))
    ]
    show heading.where(level:2): it => [
        #set text(
            12pt,
            weight: "regular",
            style: "italic",
            fill:blue,
        )
        #smallcaps(it.body)
    ]

    
    doc
}
#let title = [
    This is the title of this article 
]

#show: 接下来的内容 => conf(
    title,
    接下来的内容,
)
= Introduction
#lorem(100)

== subsection
我们可以直接接着打字，只要不加上block就不是生成单独的一段，所以接着打就没有问题，我知道我在水字数，但是这样子的效率实在不是很高，毕竟我们有神器：lorem
#lorem(100)
