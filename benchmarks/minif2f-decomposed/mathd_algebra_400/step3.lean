theorem h₂ (x : ℝ) (h₀ : 5 + 500 / 100 * 10 = 110 / 100 * x) : x = 50 := by
  apply_fun (fun x => x * 100) at h₀
  ring_nf at h₀ ⊢
  linarith