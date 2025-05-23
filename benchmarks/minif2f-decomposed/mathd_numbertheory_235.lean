import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Find the units digit of $29 \cdot 79 + 31 \cdot 81$. Show that it is 2.-/
theorem mathd_numbertheory_235 : (29 * 79 + 31 * 81) % 10 = 2 := by
  have h1 : (29 * 79 + 31 * 81) % 10 = 2 := by
    norm_num [Nat.add_mod, Nat.mul_mod, Nat.mod_mod, Nat.mod_eq_of_lt,
      Nat.mod_eq_of_lt, Nat.mod_eq_of_lt, Nat.mod_eq_of_lt]
    <;>
    (try decide) <;>
    (try norm_num) <;>
    (try ring_nf) <;>
    (try omega) <;>
    (try norm_num) <;>
    (try decide)
    <;>
    (try ring_nf)
    <;>
    (try omega)
    <;>
    (try norm_num)
    <;>
    (try decide)
  
  exact h1
