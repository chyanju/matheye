theorem h_main (n : ℕ) : ∀ (n : ℕ), ∑ k ∈ Finset.range n, k ^ 3 = (∑ k ∈ Finset.range n, k) ^ 2 :=
  by
  intro n
  have h₁ : (∑ k in Finset.range n, k ^ 3) = (∑ k in Finset.range n, k) ^ 2 := by sorry
  exact h₁