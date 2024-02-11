let double x = 2 * x;;

let square x = x * x;;

let quad' x = x |> double |> double;;

let fourth x = x |> square |> square;;

let twice func x = func (func x);;

let quad'' x = twice double x;;

let fourth' x = twice square x;;

let quad''' = twice double;;
