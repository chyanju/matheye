import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the units digit of $2^{2010}$? Show that it is 4.-/
theorem mathd_numbertheory_175 : 2 ^ 2010 % 10 = 4 := by
  have h₀ : (2 ^ 2010 : ℕ) % 10 = 4 := by
    have h₁ : ∀ n : ℕ, n ≥ 1 → 6 ^ n % 10 = 6 := by
      intro n hn
      induction' hn with n hn IH
      · norm_num
      · omega
    have h₂ : (2 ^ 4 : ℕ) % 10 = 6 := by norm_num
    have h₃ : (2 ^ 2010 : ℕ) % 10 = 4 := by
      have h₄ : (2 ^ 2010 : ℕ) = (2 ^ 4) ^ 502 * 2 ^ 2 := by
        norm_num [pow_add, pow_mul, pow_one, pow_two, pow_three, pow_succ]
        <;> ring_nf at *
        <;> norm_num at *
        <;> rfl
      rw [h₄]
      have h₅ : ((2 ^ 4 : ℕ) ^ 502 * 2 ^ 2 : ℕ) % 10 = 4 := by
        have h₅₁ : ((2 ^ 4 : ℕ) ^ 502 * 2 ^ 2 : ℕ) % 10 = ((2 ^ 4 : ℕ) ^ 502 % 10 * (2 ^ 2 % 10)) % 10 := by
          simp [Nat.mul_mod, Nat.pow_mod, Nat.mod_mod]
        rw [h₅₁]
        have h₅₂ : (2 ^ 4 : ℕ) ^ 502 % 10 = 6 := by
          have h₅₂₁ : (2 ^ 4 : ℕ) % 10 = 6 := by norm_num
          have h₅₂₂ : (2 ^ 4 : ℕ) ^ 502 % 10 = 6 := by
            rw [← Nat.mod_add_div ((2 ^ 4 : ℕ) ^ 502) 10]
            simp [h₁, Nat.pow_mod, Nat.mul_mod, Nat.add_mod, h₅₂₁]
            <;> norm_num
            <;> omega
          exact h₅₂₂
        have h₅₃ : (2 ^ 2 : ℕ) % 10 = 4 := by norm_num
        rw [h₅₂, h₅₃]
        <;> norm_num
        <;> omega
      exact h₅
    exact h₃
  exact h₀
