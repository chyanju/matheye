import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (n : ℕ) (h₁ : 10 ≡ -1 [ZMOD 11]) (h₂ : 10 ^ n ≡ (-1) ^ n [ZMOD 11]) : 11 ∣ 10 ^ n - (-1) ^ n :=
  by
  --  rw [Int.ModEq] at h₂
  --  simpa [Int.emod_eq_emod_iff_emod_sub_eq_zero] using h₂
  hole