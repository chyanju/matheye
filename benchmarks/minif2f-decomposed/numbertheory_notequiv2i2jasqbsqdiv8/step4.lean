theorem h₂ (h : ∀ (a b : ℤ), (∃ i j, a = 2 * i ∧ b = 2 * j) ↔ ∃ k, a ^ 2 + b ^ 2 = 8 * k) (h₁ : (∃ i j, 4 = 2 * i ∧ 2 = 2 * j) ↔ ∃ k, 4 ^ 2 + 2 ^ 2 = 8 * k) : ∃ i j, 4 = 2 * i ∧ 2 = 2 * j :=
  by
  refine' ⟨2, 1, _⟩
  constructor <;> norm_num