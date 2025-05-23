import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (S : Finset ℤ) (h₀ : ∀ (n : ℤ), n ∈ S ↔ |n - 2| ≤ 5 + 6 / 10) : S = Finset.Icc (-3) 7 := by
  --  apply Finset.ext
  --  intro n
  --  simp only [Finset.mem_Icc, h₀]
  --  constructor
  --  · intro h
    have h₂ : abs (n - 2) ≤ 5 := by sorry
    have h₃ : -3 ≤ n := by sorry
    have h₄ : n ≤ 7 := by sorry
  --    exact ⟨h₃, h₄⟩
  --  · intro h
    have h₂ : -3 ≤ n := h.1
    have h₃ : n ≤ 7 := h.2
    have h₄ : abs (n - 2) ≤ 5 := by sorry
  --  --    norm_num at h₄ ⊢ <;> (try omega) <;>
        (try {cases' le_or_lt 0 (n - 2) with h₅ h₅ <;> simp_all [abs_of_nonneg, abs_of_neg, le_of_lt] <;> omega
          }) <;>
      omega
  hole