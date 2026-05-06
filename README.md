# vista-gfx-scene-flow

`vista-gfx-scene-flow` keeps a focused Dart implementation around graphics. The project goal is to design a Dart verification harness for scene systems, covering simulation kernel, seeded input scenarios, and failure-oriented tests.

## Use Case

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Vista Gfx Scene Flow Review Notes

For a quick review, compare `render budget` with `shader drift` before reading the middle cases.

## Highlights

- `fixtures/domain_review.csv` adds cases for geometry span and atlas pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/vista-gfx-scene-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `render budget` and `shader drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The added Dart path is deliberately direct, with fixtures doing most of the explaining.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 255, which lands in `ship`. The most cautious case is `edge` at 163, which lands in `ship`.

## Future Work

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
