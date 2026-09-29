# Session 05 build notes

Classroom source for the logistic hour. Not published. `slides/index.qmd` is unchanged.

## Slide count

The locked outline is the **24-slide** synthesis (title + 23 content slides). The audit in `slides/session05-logistic-regression/_instructor/DECK_AUDIT_vs_S04.md` failed the earlier 35-slide draft. This file is the rewrite that audit asked for.

1. Title
2. Pair — Cas and Abdullah
3. Grid — Logistic marked, no click
4. Decision — 653 / 417
5. Codebook
6. What we will do
7. Brand choice is a probability {.section-start}
8. Example — means 0.72 vs 0.32
9. Fence — lm range 0.036 to 1.051
10. Bins — 0.12, 0.28, 0.53, 0.77, 0.96
11. The curve {.section-start} — logistic function, then the 0/1 overlay
12. Odds from the function
13. Odds ladder — 0.61 ↔ 1.56
14. A coefficient multiplies odds, not $p$
15. Checkpoint — two cards, two clicks
16. Maximum likelihood {.section-start}
17. Example — −2.76 / 6.09
18. Example — +0.1 loyalty, odds × 1.84; rise about 0.11 at LoyalCH 0.20 and about 0.05 at 0.80
19. Add PriceDiff {.section-start} — held fixed, not a confounding story
20. Example — +$0.10, odds × 1.33
21. Hand score {.section-start} — 0.522 → 0.63, then `predict`
22. Example — 0.63 vs 0.35, then the 0.92 row
23. What to remember — OJ numbers, then the opening question
24. Before next class — the cutoff deferral is in the notes only

Slides 1–6 have no fragments. The Logistic row is static `class="here"`. Section openers (7, 11, 16, 19, 21) use the weaver band on the heading and carry the act under it, not a blank navy slide and not a one-sentence divider. Plot slides state the claim, then reveal the figure. Plot swaps use `.r-stack`: the logistic function against the score, then the fitted OJ curve with purchases; the two loyalty steps; two bars, then three. The function curve is $p = e^{\eta}/(1+e^{\eta})$ against the score. It is not a fitted sketch.

There is no dos/don’ts block and no cutoff slide. The word “ROC” appears once, in the Thresholds tools cell of the course grid. That cell is not a lesson.

## What rendered

Quarto 1.7.31, standalone, outside the student website project:

```bash
cd slides/session05-logistic-regression
quarto render session05-logistic-regression.qmd
```

`session05-logistic-regression.html` in this folder is that render: 24 reveal sections, title `Logistic regression`, no date. It is a review copy. It is not linked from the slides index.

Do not render from the website root. `_quarto.yml` is a website (`title-prefix`, `output-dir: _site`, `freeze: auto`) and will rewrite the title and the output path.

## OJ and the locked numbers

`OJ.csv` was not in this student-site checkout. The file here is ISLR `OJ` (Rdatasets), row names dropped: 1,070 rows. Setup `stopifnot` checks:

- n = 1070; CH 653 (0.61) / MM 417; file odds 1.56
- LoyalCH means 0.72 (CH) and 0.32 (MM)
- `lm(y ~ LoyalCH)` fitted range 0.036 to 1.051
- bin CH rates 0.12, 0.28, 0.53, 0.77, 0.96
- `glm(y ~ LoyalCH)`: −2.76, 6.09
- `glm(y ~ LoyalCH + PriceDiff)`: −3.25, 6.40, 2.86
- new rows: 0.63, 0.35, 0.92
- +0.1 LoyalCH multiplies odds by 1.84 (`exp(0.1 * 6.09)` on the rounded slope)
- from those same rounded coefficients, LoyalCH 0.20 goes about 0.18 → 0.28 (rise about 0.11) and LoyalCH 0.80 goes about 0.89 → 0.94 (rise about 0.05)
- +$0.10 PriceDiff multiplies odds by 1.33 (`exp(0.10 * 2.86)`)
- at LoyalCH 0.5, that ten-cent step is about 0.49 → 0.56 (`predict` on fit2)
- hand score from the rounded two-predictor coefficients: $\hat\eta = 0.522$, $\hat p \approx 0.63$, and `predict` prints 0.63

The curve on slide 11 is the one-predictor fit. Coefficients are not printed until slide 17. PriceDiff means are not printed.

On the Mac, prefer `_project/data_pack/teaching/backups/OJ.csv` if it is the same ISLR file. The deck stops if a future export drifts off these rounded locks.

## Theme files in this checkout

`slides/_theme/mlba-reveal.css` and the two logo PNGs were extracted from the published Session 04 HTML so this checkout could render. See `READY_FOR_ACADEMIC.md` before copying them onto the Academic tree.

## Dates left off the glass

Student titles have no dates. Speaker notes on the last slide record the outline slot (Wed 30 Sep 2026 discussion, continuing the Monday pair) and the homework conflict: one outline lock is Homework 2 on Sun 4 Oct, 11:59 pm; the public `schedule.qmd` lists Sun 28 Sep. The slide says to follow the schedule and does not stamp either date. `schedule.qmd` was not edited.

The cutoff deferral (hits and misses return after fall break) is in those notes only.
