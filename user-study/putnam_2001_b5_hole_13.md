## Angelic Statement
```Lean
apply ContinuousOn.sub gcont.continuousOn
```
## Residual State
```Lean
1 goal

a b : ℝ
g : ℝ → ℝ
abint : 0 < a ∧ a < 1 / 2 ∧ 0 < b ∧ b < 1 / 2
gcont : Continuous g
hg : ∀ (x : ℝ), g (g x) = a * g x + b * x
h₁ : 0 < a
h₂ : a < 1 / 2
h₃ : 0 < b
h₄ : b < 1 / 2
h₅ : 0 < a ^ 2 + 4 * b
h₆ : 0 < √(a ^ 2 + 4 * b)
h₇ : (a + √(a ^ 2 + 4 * b)) / 2 > 0
h₈ : (a - √(a ^ 2 + 4 * b)) / 2 < 0
h₉ : ((a + √(a ^ 2 + 4 * b)) / 2) ^ 2 - a * ((a + √(a ^ 2 + 4 * b)) / 2) - b = 0
h₁₀ : ((a - √(a ^ 2 + 4 * b)) / 2) ^ 2 - a * ((a - √(a ^ 2 + 4 * b)) / 2) - b = 0
h₁₁ : ∃ c > 0, c ^ 2 - a * c - b = 0
c : ℝ
hc₁ : c > 0
hc₂ : c ^ 2 - a * c - b = 0
hc₃ h₁₅ : ∀ (x : ℝ), g (g x) = a * g x + b * x
h₁₆ : c ^ 2 - a * c - b = 0
h₁₇ : c > 0
⊢ ContinuousOn (HMul.hMul c) univ
```
## Question 1
<strong><u>Assumptions:</u></strong>
- $a, b$ are real numbers with $0 < a < \dfrac{1}{2}$ and $0 < b < \dfrac{1}{2}$.
- $g : \mathbb{R} \to \mathbb{R}$ is a continuous function.
- For all $x \in \mathbb{R}$, $g(g(x)) = a\, g(x) + b\, x$.
- $a > 0$.
- $a < \dfrac{1}{2}$.
- $b > 0$.
- $b < \dfrac{1}{2}$.
- $a^2 + 4b > 0$.
- $\sqrt{a^2 + 4b} > 0$.
- $\dfrac{a + \sqrt{a^2 + 4b}}{2} > 0$.
- $\dfrac{a - \sqrt{a^2 + 4b}}{2} < 0$.
- $\left( \dfrac{a + \sqrt{a^2 + 4b}}{2} \right)^2 - a \left( \dfrac{a + \sqrt{a^2 + 4b}}{2} \right) - b = 0$.
- $\left( \dfrac{a - \sqrt{a^2 + 4b}}{2} \right)^2 - a \left( \dfrac{a - \sqrt{a^2 + 4b}}{2} \right) - b = 0$.
- There exists $c > 0$ such that $c^2 - a c - b = 0$.
- We are currently considering such a $c$ with $c > 0$ and $c^2 - a c - b = 0$.
<strong><u>Goal:</u></strong>
Prove: The function $x \mapsto c x$ is continuous on $\mathbb{R}$ (i.e., the linear function given by multiplication by $c$ is continuous everywhere).
## Question 1 (CN)
<strong><u>已知：</u></strong>
- $a, b$ 是实数，满足 $0 < a < \dfrac{1}{2}$ 且 $0 < b < \dfrac{1}{2}$。
- $g : \mathbb{R} \to \mathbb{R}$ 是一个连续函数。
- 对所有 $x \in \mathbb{R}$，都有 $g(g(x)) = a\, g(x) + b\, x$。
- $a > 0$。
- $a < \dfrac{1}{2}$。
- $b > 0$。
- $b < \dfrac{1}{2}$。
- $a^2 + 4b > 0$。
- $\sqrt{a^2 + 4b} > 0$。
- $\dfrac{a + \sqrt{a^2 + 4b}}{2} > 0$。
- $\dfrac{a - \sqrt{a^2 + 4b}}{2} < 0$。
- $\left( \dfrac{a + \sqrt{a^2 + 4b}}{2} \right)^2 - a \left( \dfrac{a + \sqrt{a^2 + 4b}}{2} \right) - b = 0$。
- $\left( \dfrac{a - \sqrt{a^2 + 4b}}{2} \right)^2 - a \left( \dfrac{a - \sqrt{a^2 + 4b}}{2} \right) - b = 0$。
- 存在 $c > 0$ 使得 $c^2 - a c - b = 0$。
- 并且当前考虑这个 $c$，有 $c > 0$ 且 $c^2 - a c - b = 0$。
<strong><u>目标：</u></strong>
证明：函数 $x \mapsto c x$ 在 $\mathbb{R}$ 上处处连续（即：乘以常数$c$的线性函数在实数域上是连续的）。