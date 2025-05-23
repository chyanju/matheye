theorem h₇₁ (a : ℝ) (h₀ : a ≠ 0) (h₁ : 8⁻¹ / 4⁻¹ - a⁻¹ = 1) (h₂ : 8⁻¹ / 4⁻¹ = 1 / 2) (h₃ : 1 / 2 - a⁻¹ = 1) (h₄ : -a⁻¹ = 1 / 2) (h₅ h₆₁ : a⁻¹ = -(1 / 2)) (h₆₃ : a ≠ 0) (h₆₄ h₆₆ : a⁻¹ = -(1 / 2)) (h₆₈ : a ≠ 0) (h₆₉ h₇₀ : a * -(1 / 2) = 1) : a = -2 := by
  apply_fun (fun x => x * (-2)) at h₇₀
  ring_nf at h₇₀ ⊢
  nlinarith