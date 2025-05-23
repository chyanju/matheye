import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅₂₂ (h₁ : ∀ n ≥ 1, 6 ^ n % 10 = 6) (h₂ : 2 ^ 4 % 10 = 6) (h₄ : 2 ^ 2010 = (2 ^ 4) ^ 502 * 2 ^ 2) (h₅₁ : (2 ^ 4) ^ 502 * 2 ^ 2 % 10 = (2 ^ 4) ^ 502 % 10 * (2 ^ 2 % 10) % 10) (h₅₂₁ : 2 ^ 4 % 10 = 6) : (2 ^ 4) ^ 502 % 10 = 6 :=
  by
  --  rw [← Nat.mod_add_div ((2 ^ 4 : ℕ) ^ 502) 10]
  --  simp [h₁, Nat.pow_mod, Nat.mul_mod, Nat.add_mod, h₅₂₁] <;> norm_num <;> omega
  hole