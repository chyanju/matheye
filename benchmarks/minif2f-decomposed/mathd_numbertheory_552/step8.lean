theorem h₁_in (f g h : ℕ+ → ℕ) (h₀ : ∀ (x : ℕ+), f x = 12 * (↑x : ℕ) + 7) (h₁ : ∀ (x : ℕ+), g x = 5 * (↑x : ℕ) + 2) (h₂ : ∀ (x : ℕ+), h x = (f x).gcd (g x)) (h₃ : Fintype (↑(Set.range h) : Type)) (h_main : ∀ (x : ℕ+), h x = 1 ∨ h x = 11) : 0 < 1 :=
  by
  have h₁₁ : h ⟨1, by norm_num⟩ = Nat.gcd (f ⟨1, by norm_num⟩) (g ⟨1, by norm_num⟩) := h₂ _
  rw [h₁₁]
  have h₁₂ : f ⟨1, by norm_num⟩ = 12 * (⟨1, by norm_num⟩ : ℕ+) + 7 := h₀ ⟨1, by norm_num⟩
  have h₁₃ : g ⟨1, by norm_num⟩ = 5 * (⟨1, by norm_num⟩ : ℕ+) + 2 := h₁ ⟨1, by norm_num⟩
  rw [h₁₂, h₁₃]
  norm_num [Nat.gcd_eq_right] <;> rfl