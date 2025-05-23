theorem h₈ (x y : ℤ) (h₁ : (4 * x ^ 3 - 7 * y ^ 3) % 7 = 4 * x ^ 3 % 7) (h₃ h₅ h₇ : x % 7 = x % 7) : x ^ 3 % 7 = (x % 7) ^ 3 % 7 := by
  norm_num [pow_three, Int.mul_emod, Int.add_emod, Int.emod_emod] <;> (try omega) <;> (try ring_nf) <;> (try omega) <;>
      (try norm_num) <;>
    (try omega)