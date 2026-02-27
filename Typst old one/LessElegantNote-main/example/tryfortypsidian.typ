#import "@preview/typsidian:0.0.2": *
#import "@preview/showybox:2.0.4": showybox

#show: typsidian.with(theme: "light", title: "My Document", course: "CS4999")



= Heading

#lorem(50)

#box(title: "Box", [
  #lorem(50)
])

#box(theme: "example", title: "Example", [
  #lorem(50)
])

#box(theme: "info",title: "chick",[
  #lorem(50)
])


#showybox(
  frame: (
    border-color: red.darken(50%),
    title-color: red.lighten(60%),
    body-color: red.lighten(80%)
  ),
  title-style: (
    color: black,
    weight: "regular",
    align: center
  ),
  shadow: (
    offset: 3pt,
  ),
  title: "Red-ish showybox with separated sections!",
  lorem(20),
  lorem(12)
)