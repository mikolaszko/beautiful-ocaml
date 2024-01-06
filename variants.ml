type primary_color = Red | Green | Blue

let r = Red

type point = float * float

type shape = 
  | Circle of {center : point; radius : float}
  | Rectangle of {lower_left : point; upper_right : point}

let c1 = Circle {center = (0.,0.); radius = 1.}
let r1 = Rectangle {lower_left = (1.,5.5); upper_right = (-1., 5.)}


