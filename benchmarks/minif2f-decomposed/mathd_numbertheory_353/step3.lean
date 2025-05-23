theorem h₂ (s : ℕ) (h₀ : s = ∑ k ∈ Finset.Icc 2010 4018, k) : ∑ k ∈ Finset.Icc 2010 4018, k = ∑ t ∈ Finset.range 2009, (t + 2010) :=
  by
  have h₃ : Finset.Icc 2010 4018 = (Finset.range 2009).image (fun t => t + 2010) := by sorry
  rw [h₃]
  rw [Finset.sum_image] <;> simp_all [Function.Injective] <;> omega