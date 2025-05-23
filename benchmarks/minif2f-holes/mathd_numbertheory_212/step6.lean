import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h5 (h1 : 16 ^ 17 % 10 = 6) (h2 : 17 ^ 18 % 10 = 9) (h3 : 18 ^ 19 % 10 = 2) : 16 ^ 17 * 17 ^ 18 * 18 ^ 19 % 10 = 16 ^ 17 % 10 * (17 ^ 18 % 10) * (18 ^ 19 % 10) % 10 := by
  --  norm_num [Nat.mul_mod, Nat.pow_mod, Nat.mod_mod] <;> ring_nf <;> norm_num [Nat.mul_mod, Nat.pow_mod, Nat.mod_mod] <;>
    rfl
  hole