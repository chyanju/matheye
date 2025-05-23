theorem h₁ (k : ℕ) (hk : k ∈ Finset.Icc 1 20) : 1 ≤ k := by
  simp [Finset.mem_Icc] at hk
  exact hk.1