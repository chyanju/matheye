theorem h₂ (k : ℕ) (hk : k ∈ Finset.Icc 1 20) (h₁ : 1 ≤ k) : k ≤ 20 := by
  simp [Finset.mem_Icc] at hk
  exact hk.2