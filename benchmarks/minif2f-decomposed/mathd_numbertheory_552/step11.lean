theorem h_sum (f g h : ℕ+ → ℕ) (h₀ : ∀ (x : ℕ+), f x = 12 * (↑x : ℕ) + 7) (h₁ : ∀ (x : ℕ+), g x = 5 * (↑x : ℕ) + 2) (h₂ : ∀ (x : ℕ+), h x = (f x).gcd (g x)) (h₃ : Fintype (↑(Set.range h) : Type)) (h_main : ∀ (x : ℕ+), h x = 1 ∨ h x = 11) (h₁_in_range : 1 ∈ Set.range h) (h₁₁_in_range : 11 ∈ Set.range h) : ∑ k ∈ (Set.range h).toFinset, k = 12 :=
  by
  have h₄ : (Set.range h).toFinset = { 1, 11 } := by sorry
  rw [h₄]
  norm_num <;> aesop