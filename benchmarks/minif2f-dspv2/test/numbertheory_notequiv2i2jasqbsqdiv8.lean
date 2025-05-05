import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Let $a$ and $b$ be two integer numbers. Show that the following statement is false: $a$ and $b$ are both even iff $8 \mid a^2 + b^2$.-/
theorem numbertheory_notequiv2i2jasqbsqdiv8 :
    ¬∀ a b : ℤ, (∃ i j, a = 2 * i ∧ b = 2 * j) ↔ ∃ k, a ^ 2 + b ^ 2 = 8 * k := by
  have h_main : (∀ a b : ℤ, (∃ i j, a = 2 * i ∧ b = 2 * j) ↔ ∃ k, a ^ 2 + b ^ 2 = 8 * k) → False := by
    intro h
    have h₁ : (∃ i j, (4 : ℤ) = 2 * i ∧ (2 : ℤ) = 2 * j) ↔ ∃ k, (4 : ℤ) ^ 2 + (2 : ℤ) ^ 2 = 8 * k := by
      apply h 4 2
    have h₂ : ∃ (i j : ℤ), (4 : ℤ) = 2 * i ∧ (2 : ℤ) = 2 * j := by
      refine' ⟨2, 1, _⟩
      constructor <;> norm_num
    have h₃ : ∃ (k : ℤ), (4 : ℤ) ^ 2 + (2 : ℤ) ^ 2 = 8 * k := by
      have h₄ : (∃ (k : ℤ), (4 : ℤ) ^ 2 + (2 : ℤ) ^ 2 = 8 * k) := by
        simpa [mul_assoc] using h₁.mp h₂
      exact h₄
    rcases h₃ with ⟨k, hk⟩
    have h₄ : (4 : ℤ) ^ 2 + (2 : ℤ) ^ 2 = 8 * k := by
      exact hk
    have h₅ : k = 5 / 2 := by
      ring_nf at h₄ ⊢
      <;> omega
    have h₆ : (k : ℤ) ≠ 5 / 2 := by
      norm_num at h₅ ⊢
      <;>
      (try omega) <;>
      (try
        {
          norm_cast at h₅ ⊢
          <;>
          omega
        })
    exact h₆ (by linarith)
  
  have h_final : ¬∀ a b : ℤ, (∃ i j, a = 2 * i ∧ b = 2 * j) ↔ ∃ k, a ^ 2 + b ^ 2 = 8 * k := by
    intro h
    have h₁ : False := h_main h
    exact h₁
  
  exact h_final
