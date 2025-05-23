import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₇ (x y n : ℕ+) (h₀ : (↑(↑x : ℕ) : ℝ) / 4 + (↑(↑y : ℕ) : ℝ) / 6 = ((↑(↑x : ℕ) : ℝ) + (↑(↑y : ℕ) : ℝ)) / (↑(↑n : ℕ) : ℝ)) (h₂ : (↑(↑n : ℕ) : ℝ) * (3 * (↑(↑x : ℕ) : ℝ) + 2 * (↑(↑y : ℕ) : ℝ)) = 12 * ((↑(↑x : ℕ) : ℝ) + (↑(↑y : ℕ) : ℝ))) (h₆ : (↑n : ℕ) * (3 * (↑x : ℕ) + 2 * (↑y : ℕ)) = 12 * ((↑x : ℕ) + (↑y : ℕ))) (h₈ : (↑n : ℕ) > 0) (h₉ : (↑x : ℕ) > 0) (h₁₀ : (↑y : ℕ) > 0) (h : ¬(↑n : ℕ) ≤ 6) (h₁₂ h₁₄ : (↑n : ℕ) ≥ 7) (h₁₅ : 3 * (↑x : ℕ) + 2 * (↑y : ℕ) > 0) (h₁₆ : (↑x : ℕ) + (↑y : ℕ) > 0) : (↑n : ℕ) * (3 * (↑x : ℕ) + 2 * (↑y : ℕ)) ≥ 7 * (3 * (↑x : ℕ) + 2 * (↑y : ℕ)) := by -- nlinarith
  hole