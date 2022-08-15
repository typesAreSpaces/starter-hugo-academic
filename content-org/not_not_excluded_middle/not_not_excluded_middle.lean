theorem not_not_excludded_middle 
: ((p ∨ (p → false)) → false) → false 
:=
let subproof := 
fun hyp : (p ∨ (p → false)) → false =>
fun hp : p => 
hyp (Or.intro_left (p -> false) hp)
fun hyp : (p ∨ (p → false)) → false =>
hyp (Or.intro_right p (subproof hyp))

def composition (f : Y → Z) (g : X → Y) : X → Z :=
fun x : X => f (g x)

theorem not_not_modus_ponens 
(nnp : (p → false) → false) (nnimp : ((p → q) → false) → false) : (q → false) → false 
:=
let subproof (arg : q → false) (imp : p → q) : p → false :=
fun hp : p => arg (imp hp)
fun arg : q → false =>
nnimp (composition nnp (subproof arg))