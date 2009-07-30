
structure Pair:> PAIR =
struct 

datatype ('a, 'b) product = & of 'a * 'b

fun pair x y = (x,y)
fun pair1 x = (x,x)
fun swap (x,y) = (y,x)

fun papp f (x,y) = (f x,f y)
fun pappp f g (x,y) = (f x,g y)
fun papp1 f (x,y) = (f x,y)
fun papp2 f (x,y) = (x,f y)

fun fst (x,_) = x
fun snd (_,y) = y

fun toString p q (x,y) = String.concat["(",p x,",",q y,")"]

end
