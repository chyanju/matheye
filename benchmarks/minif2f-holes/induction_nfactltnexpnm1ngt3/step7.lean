import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅ (n : ℕ) (h₀ : 3 ≤ n) (h_base : 3! < 3 ^ (3 - 1)) (k : ℕ) (hk : 3 ≤ k) (hk_rec : k ! < k ^ (k - 1)) (h₁ : (k + 1)! = (k + 1) * k !) (h₃ : 0 < k + 1) (h₄ : k ! < k ^ (k - 1)) : (k + 1) * k ! < (k + 1) * k ^ (k - 1) := by -- nlinarith
  hole