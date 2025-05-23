theorem h₁_in_range (f g h : ℕ+ → ℕ) (h₀ : ∀ (x : ℕ+), f x = 12 * (↑x : ℕ) + 7) (h₁ : ∀ (x : ℕ+), g x = 5 * (↑x : ℕ) + 2) (h₂ : ∀ (x : ℕ+), h x = (f x).gcd (g x)) (h₃ : Fintype (↑(Set.range h) : Type)) (h_main : ∀ (x : ℕ+), h x = 1 ∨ h x = 11) : 1 ∈ Set.range h :=
  by
  have h₁_in : h ⟨1, by norm_num⟩ = 1 := by sorry
  exact ⟨⟨1, by norm_num⟩, h₁_in⟩