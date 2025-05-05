import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the product of all positive odd integers less than $10000$?

$\text{(A)}\ \dfrac{10000!}{(5000!)^2}\qquad \text{(B)}\ \dfrac{10000!}{2^{5000}}\qquad
\text{(C)}\ \dfrac{9999!}{2^{5000}}\qquad \text{(D)}\ \dfrac{10000!}{2^{5000} \cdot 5000!}\qquad
\text{(E)}\ \dfrac{5000!}{2^{5000}}$ Show that it is \text{(D)} \dfrac{10000!}{2^{5000} \cdot 5000!}.-/
theorem amc12_2001_p5 :
    Finset.prod (Finset.filter (fun x => ¬Even x) (Finset.range 10000)) (id : ℕ → ℕ) =
      10000! / (2 ^ 5000 * 5000!) := by
  have h_main : 2 ^ 5000 * 5000! ∣ 10000! := by
    have h₁ : 2 ^ 5000 * 5000! ∣ 10000! := by
      -- Use the theorem `Nat.dvd_of_mod_eq_zero` to prove the divisibility by showing the remainder is zero.
      apply Nat.dvd_of_mod_eq_zero
      rfl
    exact h₁
  
  have h_prod : Finset.prod (Finset.filter (fun x => ¬Even x) (Finset.range 10000)) (id : ℕ → ℕ) = 10000! / (2 ^ 5000 * 5000!) := by
    have h₁ : Finset.prod (Finset.filter (fun x => ¬Even x) (Finset.range 10000)) (id : ℕ → ℕ) = 10000! / (2 ^ 5000 * 5000!) := by
      rw [show Finset.filter (fun x => ¬Even x) (Finset.range 10000) = Finset.filter (fun x => x % 2 = 1) (Finset.range 10000) by
        congr
        ext x
        simp [Nat.even_iff, Nat.mod_eq_zero_of_dvd]
        <;>
        (try omega) <;>
        (try
          {
            cases' mod_two_eq_zero_or_one x with h h <;> simp [h, Nat.even_iff, Nat.dvd_iff_mod_eq_zero]
            <;> omega
          }) <;>
        (try omega)
      ]
      -- We need to prove that the product of all odd numbers from 1 to 9999 is equal to 10000! / (2 ^ 5000 * 5000!)
      rfl
    exact h₁
  
  apply h_prod
