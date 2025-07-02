## Angelic Statement
```Lean
rw [h₁₀, hantisymm]
```
## Residual State
```Lean
2 goals

n : ℕ
hn : n > 1
won : Fin n → Fin n → Bool
hirrefl : ∀ (i : Fin n), won i i = false
hantisymm : ∀ (i j : Fin n), i ≠ j → (won i j = true) = ¬won j i = true
w l : Fin n → ℤ
hw : w = fun r => ∑ j, if won r j = true then 1 else 0
hl : l = fun r => ↑n - 1 - w r
h₁ : ∑ r, w r = ∑ r, ∑ j, if won r j = true then 1 else 0
h₂ h₃ h₄ : (∑ r, ∑ j, if won r j = true then 1 else 0) = ∑ r, ∑ j, if won r j = true then 1 else 0
h₅ : (∑ r, ∑ j, if won r j = true then 1 else 0) = ∑ x, if won x.1 x.2 = true then 1 else 0
h₆ : (∑ x, if won x.1 x.2 = true then 1 else 0) = ↑{x | won x.1 x.2 = true}.card
h₈ : {x | won x.1 x.2 = true}.card = {x | won x.1 x.2 = true}.card
i j : Fin n
h : i ≠ j
h₁₀ : (won i j = true) = ¬won j i = true
⊢ ¬¬won i j = true ∨ ¬won i j = true

case a
n : ℕ
hn : n > 1
won : Fin n → Fin n → Bool
hirrefl : ∀ (i : Fin n), won i i = false
hantisymm : ∀ (i j : Fin n), i ≠ j → (won i j = true) = ¬won j i = true
w l : Fin n → ℤ
hw : w = fun r => ∑ j, if won r j = true then 1 else 0
hl : l = fun r => ↑n - 1 - w r
h₁ : ∑ r, w r = ∑ r, ∑ j, if won r j = true then 1 else 0
h₂ h₃ h₄ : (∑ r, ∑ j, if won r j = true then 1 else 0) = ∑ r, ∑ j, if won r j = true then 1 else 0
h₅ : (∑ r, ∑ j, if won r j = true then 1 else 0) = ∑ x, if won x.1 x.2 = true then 1 else 0
h₆ : (∑ x, if won x.1 x.2 = true then 1 else 0) = ↑{x | won x.1 x.2 = true}.card
h₈ : {x | won x.1 x.2 = true}.card = {x | won x.1 x.2 = true}.card
i j : Fin n
h : i ≠ j
h₁₀ : (won i j = true) = ¬won j i = true
⊢ j ≠ i
```
## Question 1
<strong><u>Assumptions:</u></strong>
- $n$ is an integer with $n > 1$.
- $won(i, j)$ is a binary relation defined for $1 \leq i, j \leq n$, taking values "true" or "false", and satisfies:
  1. **Irreflexivity**: For all $i$, $won(i, i) = \mathrm{false}$.
  2. **Antisymmetry**: For all $i \ne j$,
     $$
     won(i, j) = \mathrm{true} \iff won(j, i) = \mathrm{false}
     $$
- Define
  - $w(r) = \displaystyle\sum_{j=1}^n [won(r, j) = \mathrm{true}]$, i.e., the number of individuals $r$ wins against.
  - $l(r) = n - 1 - w(r)$, i.e., the number of individuals $r$ loses to.
- Furthermore,
  - $\displaystyle\sum_{r=1}^n w(r) = \sum_{r=1}^n \sum_{j=1}^n [won(r, j) = \mathrm{true}]$
  - $\displaystyle\sum_{r=1}^n \sum_{j=1}^n [won(r, j) = \mathrm{true}] = \sum_{(x_1, x_2)} [won(x_1, x_2) = \mathrm{true}]$
  - $\sum_{(x_1, x_2)} [won(x_1, x_2) = \mathrm{true}] = \left| \{(x_1, x_2) \mid won(x_1, x_2) = \mathrm{true} \} \right|$
- For given $i, j$ with $i \ne j$, and
  $$
  won(i, j) = \mathrm{true} \iff won(j, i) = \mathrm{false}
  $$
<strong><u>Goal:</u></strong>
Prove: $j \ne i$.
## Question 1 (CN)
<strong><u>已知：</u></strong>
- $n$ 是一个大于 $1$ 的正整数。
- $won(i, j)$ 是定义在 $1 \leq i, j \leq n$ 上的二元关系，取值为真或假，满足：
  1. **非自反性**：对所有 $i$，$won(i, i) = \mathrm{假}$。
  2. **反对称性**：对任意 $i \ne j$，有
     $$
     won(i, j) = \mathrm{真} \iff won(j, i) = \mathrm{假}
     $$
- 定义
  - $w(r) = \displaystyle\sum_{j=1}^n [won(r, j) = \mathrm{真}]$，即 $r$ 赢了多少人。
  - $l(r) = n - 1 - w(r)$，即 $r$ 输了多少人。
- 满足
  - $\displaystyle\sum_{r=1}^n w(r) = \sum_{r=1}^n \sum_{j=1}^n [won(r, j) = \mathrm{真}]$
  - $\displaystyle\sum_{r=1}^n \sum_{j=1}^n [won(r, j) = \mathrm{真}] = \sum_{(x_1, x_2)} [won(x_1, x_2) = \mathrm{真}]$
  - $\sum_{(x_1, x_2)} [won(x_1, x_2) = \mathrm{真}] = \left| \{(x_1, x_2) \mid won(x_1, x_2) = \mathrm{真} \} \right|$
- 对于给定的 $i, j$ 满足 $i \ne j$，并且
  $$
  won(i, j) = \mathrm{真} \iff won(j, i) = \mathrm{假}
  $$
<strong><u>目标：</u></strong>
证明：$j \ne i$。