theorem h₅ (u : ℕ → ℚ) (h₀ : ∀ (n : ℕ), u (n + 1) = u n + 1) (h₁ : ∑ k ∈ Finset.range 98, u k.succ = 137) (h₂ : ∀ (n : ℕ), u n = u 0 + (↑n : ℚ)) (h₃ : u 0 = -2357 / 49) : ∑ k ∈ Finset.range 49, u (2 * k.succ) = ∑ k ∈ Finset.range 49, (u 0 + 2 * ((↑k : ℚ) + 1)) :=
  by
  apply Finset.sum_congr rfl
  intro k _
  rw [h₂] <;> simp [Nat.cast_add, Nat.cast_one, Nat.cast_mul, Nat.cast_zero, Nat.cast_succ, add_assoc] <;> ring_nf <;>
        field_simp <;>
      ring_nf <;>
    norm_num