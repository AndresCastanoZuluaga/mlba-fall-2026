# Session 05 — ready for Wednesday morning

Independent polish pass against Session 04 (`slides/70-467_MLBA_2026-09-16_ModelSelectionAndRegularization.html` in this repo). **Do not reopen the 24-slide spine.** Teach this file.

| | |
|---|---|
| Open this HTML | `slides/session05-logistic-regression/session05-logistic-regression.html` |
| Source | `session05-logistic-regression.qmd` in the same folder |
| PR | https://github.com/AndresCastanoZuluaga/mlba-fall-2026/pull/3 |
| Render | 24 reveal sections. Title + 23 content slides. No date on the title. |

Open the HTML from that folder (double-click, or `open session05-logistic-regression.html` on the Mac). It is a standalone review copy (`embed-resources: true`). It is **not** linked from `slides/index.qmd`. Do not publish into `site/slides/` before class.

## Academic Mac sync

This branch is the cloud copy. **The Academic Mac may still need a sync** before you teach from that machine: copy the session folder beside Session 04 and re-render there if the Mac’s theme partial or `OJ.csv` path differs. See `READY_FOR_ACADEMIC.md`. Do not overwrite the Mac’s `slides/_theme/mlba-reveal.css` if Session 04 already renders with it.

Homework 2: the notes record a conflict (outline lock Sun 4 Oct vs `schedule.qmd` Sun 28 Sep). Check Canvas before you say a due date. Neither date is on the glass.

## What to click through (10 minutes)

Slides 1–6 have **no clicks**. The Logistic row is already marked. Then:

| Slide | Title | Clicks |
|---|---|---|
| 7 | Brand choice is a probability, not a line | 2 — line is the wrong tool, then the next three pictures |
| 8 | Example on OJ — loyal shoppers and CH | 2 — boxplots (0.72 vs 0.32), then the bet prompt |
| 9 | Example on OJ — a fitted “chance” of 1.05 | 2 — fence picture (0.036 to 1.051), then “would you report 1.051?” |
| 10 | Example on OJ — CH share by loyalty bin | 2 — bars (0.12 / 0.28 / 0.53 / 0.77 / 0.96), then “equal steps?” |
| 11 | The curve stays between 0 and 1 | **r-stack** — logistic function vs the score, then the fitted OJ overlay |
| 12 | Odds come out of that function | 2 — “if η rises by log 2?”, then “they double” |
| 13 | This file’s share, on the odds ladder | 1 — which row is this file? (0.61 ↔ 1.56) |
| 14 | A coefficient multiplies the odds, not p | none — rule only; no estimated multiplier yet |
| 15 | What to remember — and what we do next | 2 — Remember card, then Next card |
| 16 | R picks the coefficients that fit these purchases | 2 — `glm` does the search, then “do not turn 6.09 into a Δp yet” |
| 17 | Example on OJ — loyalty alone | 2 — curve, then “is 6.09 a probability?” |
| 18 | Example on OJ — same +0.1, two changes in p | **r-stack** — +0.1 at 0.20 (rise ~0.11, odds ×1.84), then the same step at 0.80 (rise ~0.05) |
| 19 | Add the price gap, loyalty held fixed | none — held fixed, then −3.25 / 6.40 / 2.86 |
| 20 | Example on OJ — ten cents on the price gap | 2 — curve at LoyalCH 0.5 (odds ×1.33), then up or down? |
| 21 | Score one visit by hand | 2 — η = 0.522 on arrival; then p ≈ 0.63; then `predict` prints 0.63 |
| 22 | Example on OJ — same loyalty, opposite price | **r-stack** — 0.63 vs 0.35, then add 0.92 |
| 23 | What to remember | 2 — return “can we predict which brand?”, then the one-sentence answer |
| 24 | Before next class | none — cutoff / hits / misses stay in **your notes only** |

Confirm on the walk: function (11) before odds (12–13); MLE (16) before −2.76 / 6.09 (17); η = 0.522 before `predict`; no ×602 / ×17.5 on the glass; the Thresholds cell still says “ROC, cutoff” (same as Monday’s grid — not a lesson).

## Polish verdict

Session 04 compatible. Three `r-stack` swaps, claim-then-figure on the plot slides, weaver band on the five act openers, `theme_mlba` ink. Click density is lower than Session 04 because the 24-slide lock is one idea per slide, not because a reveal is missing. No qmd patch on this pass.
