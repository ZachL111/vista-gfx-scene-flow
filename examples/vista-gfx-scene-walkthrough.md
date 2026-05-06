# Vista Gfx Scene Flow Walkthrough

I use this file as a small checklist before changing the Dart implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | geometry span | 197 | ship |
| stress | atlas pressure | 167 | ship |
| edge | shader drift | 163 | ship |
| recovery | render budget | 255 | ship |
| stale | geometry span | 191 | ship |

Start with `recovery` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `edge` becomes less cautious without a clear reason, I would inspect the drag input first.
