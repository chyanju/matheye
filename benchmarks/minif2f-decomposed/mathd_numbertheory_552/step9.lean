theorem h₁₁_in_range (f g h : ℕ+ → ℕ) (h₀ : ∀ (x : ℕ+), f x = 12 * (↑x : ℕ) + 7) (h₁ : ∀ (x : ℕ+), g x = 5 * (↑x : ℕ) + 2) (h₂ : ∀ (x : ℕ+), h x = (f x).gcd (g x)) (h₃ : Fintype (↑(Set.range h) : Type)) (h_main : ∀ (x : ℕ+), h x = 1 ∨ h x = 11) (h₁_in_range : 1 ∈ Set.range h) : 11 ∈ Set.range h :=
  by
  have h₁₁_in : h ⟨4, by norm_num⟩ = 11 := by sorry
  exact ⟨⟨4, by norm_num⟩, h₁₁_in⟩