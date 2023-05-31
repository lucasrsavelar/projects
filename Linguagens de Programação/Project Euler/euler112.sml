fun increasing 0 = true
  | increasing n = 
  let 
    val ultimoDigito = n mod 10
    val restoNumero = n div 10
    val penultimoDigito = restoNumero mod 10
  in
    if ((ultimoDigito < penultimoDigito) andalso (restoNumero <> 0)) then false else increasing(restoNumero)
  end;

fun decreasing 0 = true
  | decreasing n = 
  let 
    val ultimoDigito = n mod 10
    val restoNumero = n div 10
    val penultimoDigito = restoNumero mod 10
  in
    if ((ultimoDigito > penultimoDigito) andalso (restoNumero <> 0)) then false else decreasing(restoNumero)
  end;

fun ehBouncy n = not(increasing(n) orelse decreasing(n));

val totalBouncys = 525;
val totalNums = 999;
val atualNum = 1000;

fun calculaProp(atualNum, totalBouncys, totalNums) =  
let
  val proporcao = ((totalBouncys * 100) div totalNums)
in
  if (proporcao = 99) then (atualNum - 1) else 
  if (ehBouncy atualNum) then calculaProp(atualNum + 1, totalBouncys + 1, totalNums + 1) else 
  calculaProp(atualNum + 1, totalBouncys, totalNums + 1)
end;

val answer = calculaProp(atualNum, totalBouncys, totalNums);