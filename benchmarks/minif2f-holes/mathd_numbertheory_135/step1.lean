import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_135 (n A B C : ℕ) (h₀ : n = 3 ^ 17 + 3 ^ 10) (h₁ : 11 ∣ n + 1) (h₂ : List.Pairwise (fun x1 x2 => x1 ≠ x2) [A, B, C]) (h₃ : {A, B, C} ⊂ Finset.Icc 0 9) (h₄ : Odd A ∧ Odd C) (h₅ : ¬3 ∣ B) (h₆ : digits 10 n = [B, A, B, C, C, A, C, B, A]) : 100 * A + 10 * B + C = 129 :=
  by
  have h₇ : n = 129199212 := by sorry
  have h₈ : B = 2 := by sorry
  have h₉ : A = 1 := by sorry
  have h₁₀ : C = 9 := by sorry
  have h₁₁ : 100 * A + 10 * B + C = 129 := by sorry
  --  apply h₁₁
  hole