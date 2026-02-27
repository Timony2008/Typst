#let conf(
    标题: none,
    作者: (),
    摘要: [],
    正文,
) = {
    set page(
        header:align(right+horizon,highlight(标题)),
        paper: "us-letter",
        numbering: "1."
    )
    set par(justify: true)
    set text(
        size: 11pt
    )
    set align(center)
    text(17pt, strong(标题))

    let count = 作者.len()
    grid(
        columns: (1fr, ) * count,
        ..作者.map(作者信息 =>[
            #作者信息.name \
            #作者信息.affiliation \
            #link("mailto:"+作者信息.email) \
        ]

        )
    )
    par(justify: false)[
        *Abstruct* \
        #摘要
    ]


    set align(left)
    show: rest => columns(2,rest)
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

    正文
}

#show: 剩下的正文 => conf(
  标题: [Towards Improved Modelling],
  作者: (
    (
      name: "Theresa Tungsten",
      affiliation: "Artos Institute",
      email: "tung@artos.edu",
    ),
    (
      name: "Eugene Deklan",
      affiliation: "Honduras State",
      email: "e.deklan@hstate.hn",
    ),
  ),
  摘要: lorem(80),
  剩下的正文,
)
= Introduction
#lorem(100) \
== subsection
#lorem(100)