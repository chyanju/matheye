import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (n : ℝ) (h₀ : n = 1 / 3) (h₁ : ⌊10 * n⌋ = 3) (h₂ : ⌊100 * n⌋ = 33) (h₃ : ⌊1000 * n⌋ = 333) : ⌊10000 * n⌋ = 3333 := by
  --  rw [h₀]
  --  norm_num [Int.floor_eq_iff, Int.cast_ofNat] <;> norm_num <;> (try constructor <;> norm_num) <;> (try linarith) <;>
      (try ring_nf at * <;> norm_num) <;>
    (try linarith)
  hole