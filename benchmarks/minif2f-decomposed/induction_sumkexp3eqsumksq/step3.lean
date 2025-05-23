theorem h₁ (n✝ n : ℕ) : ∑ k ∈ Finset.range n, k ^ 3 = (∑ k ∈ Finset.range n, k) ^ 2 :=
  by
  have h₂ : ∀ n : ℕ, (∑ k in Finset.range n, k ^ 3) = (∑ k in Finset.range n, k) ^ 2 := by sorry
  exact h₂ n