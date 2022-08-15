theorem neg_neg_excludded_middle : 
((p ∨ (p → false)) → false) → false 
:=
let subproof := 
fun hyp : (p ∨ (p → false)) → false =>
fun hp : p => 
hyp (Or.intro_left (p -> false) hp)
fun hyp : (p ∨ (p → false)) → false =>
hyp (Or.intro_right p (subproof hyp))
