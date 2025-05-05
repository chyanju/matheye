import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Given $m\geq 2$, denote by $b^{-1}$ the inverse of $b\pmod{m}$. That is, $b^{-1}$ is the residue for which $bb^{-1}\equiv 1\pmod{m}$. Sadie wonders if $(a+b)^{-1}$ is always congruent to $a^{-1}+b^{-1}$ (modulo $m$). She tries the example $a=2$, $b=3$, and $m=7$. Let $L$ be the residue of $(2+3)^{-1}\pmod{7}$, and let $R$ be the residue of $2^{-1}+3^{-1}\pmod{7}$, where $L$ and $R$ are integers from $0$ to $6$ (inclusive). Find $L-R$. Show that it is 1.-/
theorem mathd_numbertheory_668 (l r : ZMod 7) (h₀ : l = (2 + 3)⁻¹) (h₁ : r = 2⁻¹ + 3⁻¹) :
  l - r = 1 := by
  have h₂ : (2 + 3 : ℤ) = 5 := by
    -- Simplify the given hypotheses and the goal.
    simp_all
    -- Normalize the numbers and use the properties of ZMod 7 to verify the result.
    <;> norm_num
    <;> rfl
    <;> simp_all [ZMod.nat_cast_self]
    <;> norm_num
    <;> rfl
  
  have h₃ : (5 : ZMod 7)⁻¹ = 3 := by
    norm_num [ZMod.nat_cast_self] at h₀ h₁ h₂ ⊢
    <;> simp_all [ZMod.nat_cast_self]
    <;> rfl
  
  have h₄ : (2 : ZMod 7)⁻¹ = 4 := by
    -- Simplify the expressions using the given hypotheses and properties of modular arithmetic.
    simp_all [ZMod.nat_cast_self]
    <;> norm_num
    <;> rfl
    <;> rfl
    <;> rfl
  
  have h₅ : (3 : ZMod 7)⁻¹ = 5 := by
    -- Normalize the numbers and use the given equalities to simplify the expressions.
    norm_num [h₀, h₁, h₂, h₃, h₄, ZMod.nat_cast_self]
    <;> rfl
    <;> rfl
    <;> rfl
  
  have h₆ : (2⁻¹ + 3⁻¹ : ZMod 7) = 2 := by
    simp_all [ZMod.nat_cast_self]
    <;> norm_num
    <;> rfl
    <;> simp_all [ZMod.nat_cast_self]
    <;> norm_num
    <;> rfl
  
  have h₇ : l - r = 1 := by
    simp_all [ZMod.nat_cast_self]
    <;> norm_num
    <;> rfl
    <;> aesop
  
  simp_all [ZMod.int_cast_eq_int_cast_iff]
  <;> norm_num
  <;> rfl

