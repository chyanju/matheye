import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Find the value of $a_2+a_4+a_6+a_8+\ldots+a_{98}$ if $a_1$, $a_2$, $a_3\ldots$ is an [[arithmetic progression]] with common difference 1, and $a_1+a_2+a_3+\ldots+a_{98}=137$. Show that it is 093.-/
theorem aime_1984_p1 (u : ℕ → ℚ) (h₀ : ∀ n, u (n + 1) = u n + 1)
    (h₁ : (∑ k in Finset.range 98, u k.succ) = 137) :
    (∑ k in Finset.range 49, u (2 * k.succ)) = 93 := by
  have h₂ : ∀ n : ℕ, u n = u 0 + n := by
    intro n
    induction n with
    | zero =>
      norm_num
    | succ n ih =>
      have h₃ := h₀ n
      have h₄ := h₀ (n + 1)
      simp [ih, Nat.cast_add, Nat.cast_one, Nat.cast_zero, add_assoc] at h₃ h₄ ⊢
      <;> linarith
  
  have h₃ : u 0 = (-2357 : ℚ) / 49 := by
    have h₄ : (∑ k in Finset.range 98, u k.succ) = 137 := h₁
    have h₅ : (∑ k in Finset.range 98, u k.succ) = ∑ k in Finset.range 98, (u 0 + (k + 1 : ℚ)) := by
      apply Finset.sum_congr rfl
      intro k _
      rw [h₂]
      <;> simp [Nat.cast_add, Nat.cast_one, Nat.cast_zero, add_assoc]
      <;> ring_nf
      <;> norm_num
      <;> field_simp
      <;> ring_nf
    rw [h₅] at h₄
    have h₆ : ∑ k in Finset.range 98, (u 0 + (k + 1 : ℚ)) = 98 * u 0 + ∑ k in Finset.range 98, (k + 1 : ℚ) := by
      calc
        _ = ∑ k in Finset.range 98, (u 0 + (k + 1 : ℚ)) := rfl
        _ = ∑ k in Finset.range 98, (u 0 + (k + 1 : ℚ)) := rfl
        _ = ∑ k in Finset.range 98, (u 0 + (k + 1 : ℚ)) := rfl
        _ = ∑ k in Finset.range 98, (u 0 + (k + 1 : ℚ)) := rfl
        _ = ∑ k in Finset.range 98, (u 0 + (k + 1 : ℚ)) := rfl
        _ = ∑ k in Finset.range 98, (u 0 : ℚ) + ∑ k in Finset.range 98, (k + 1 : ℚ) := by
          rw [Finset.sum_add_distrib]
        _ = 98 * u 0 + ∑ k in Finset.range 98, (k + 1 : ℚ) := by
          simp [Finset.sum_const, Finset.card_range]
          <;> ring
          <;> field_simp
          <;> ring
    rw [h₆] at h₄
    have h₇ : ∑ k in Finset.range 98, (k + 1 : ℚ) = (4851 : ℚ) := by
      norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ]
      <;> rfl
    rw [h₇] at h₄
    have h₈ : (98 : ℚ) * u 0 + 4851 = 137 := by
      linarith
    have h₉ : u 0 = (-2357 : ℚ) / 49 := by
      linarith
    exact h₉
  
  have h₄ : (∑ k in Finset.range 49, u (2 * k.succ)) = 93 := by
    have h₅ : (∑ k in Finset.range 49, u (2 * k.succ)) = ∑ k in Finset.range 49, (u 0 + (2 * (k + 1) : ℚ)) := by
      apply Finset.sum_congr rfl
      intro k _
      rw [h₂]
      <;> simp [Nat.cast_add, Nat.cast_one, Nat.cast_mul, Nat.cast_zero, Nat.cast_succ, add_assoc]
      <;> ring_nf
      <;> field_simp
      <;> ring_nf
      <;> norm_num
    rw [h₅]
    have h₆ : ∑ k in Finset.range 49, (u 0 + (2 * (k + 1 : ℚ)) : ℚ) = 49 * u 0 + ∑ k in Finset.range 49, (2 * (k + 1 : ℚ)) := by
      calc
        _ = ∑ k in Finset.range 49, (u 0 + (2 * (k + 1 : ℚ)) : ℚ) := rfl
        _ = ∑ k in Finset.range 49, (u 0 : ℚ) + ∑ k in Finset.range 49, (2 * (k + 1 : ℚ)) := by
          rw [Finset.sum_add_distrib]
        _ = 49 * u 0 + ∑ k in Finset.range 49, (2 * (k + 1 : ℚ)) := by
          simp [Finset.sum_const, Finset.card_range]
          <;> ring
    rw [h₆]
    have h₇ : ∑ k in Finset.range 49, (2 * (k + 1 : ℚ) : ℚ) = (2450 : ℚ) := by
      norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ]
      <;> rfl
    rw [h₇]
    have h₈ : (49 : ℚ) * u 0 + 2450 = 93 := by
      rw [h₃]
      norm_num
    linarith
  
  exact h₄
