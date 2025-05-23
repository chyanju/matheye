import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (S : Finset ℤ) (h₀ : ∀ (n : ℤ), n ∈ S ↔ |n - 2| ≤ 5 + 6 / 10) (n : ℤ) (h : |n - 2| ≤ 5 + 6 / 10) : |n - 2| ≤ 5 := by
  --  --  norm_num at h ⊢ <;> (try omega) <;>
      (try {cases' le_or_lt 0 (n - 2) with h₃ h₃ <;> simp_all [abs_of_nonneg, abs_of_neg, le_of_lt] <;> omega
        }) <;>
    omega
  hole