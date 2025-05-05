<div align="left">
  <h1>
    <img src="./resources/matheye.png" width=50>
  	matheye
  </h1>
</div>

Coming soon.

## Requirements

### Notes to avoid potential Lean versioning problems

First have the lean/lake environment ready, and then go to the `benchmarks/` folder, and run:

```bash
lake exe cache get
```

so that the `Mathlib` can be first of all cached. Make sure the toolchain `lean-toolchain` is:

```
leanprover/lean4:v4.19.0
```

which is what this project is primarily  based on. Other version is very unlikely working (at the time of testing). Also make sure that the following block:

```toml
[[require]]
name = "mathlib"
git = "https://github.com/leanprover-community/mathlib4"
rev = "v4.19.0"
```

is in the `lakefile.toml`; otherwise, there will be big trouble.