# Session 05 build notes

Classroom source for the logistic hour. Not published. `slides/index.qmd` is unchanged.

## What rendered

Quarto 1.7.31, standalone, outside the student website project:

```bash
cd slides/session05-logistic-regression
quarto render session05-logistic-regression.qmd
```

That command, run from a copy that also has `../_theme/mlba-reveal.css` and the two logo PNGs, produced `session05-logistic-regression.html`: 35 reveal sections (title + 34 content slides), KaTeX inline math intact, title `Logistic regression` with no date.

`session05-logistic-regression.html` in this folder is that cloud render (embed-resources, about 6 MB). It is a review copy. It is not the post-class student file and it is not linked from the slides index.

## Do not render inside the website project

The repo root `_quarto.yml` is a website (`title-prefix`, `output-dir: _site`, `freeze: auto`). `quarto render` from `/` of this repo writes under `_site/`, prefixes the title, and can cache a freeze. Render the deck from its own folder, or from a copy that is not inside this website tree.

An early in-project render left a stale freeze under `_freeze/slides/`. That cache was deleted and is not part of this branch.

## Slide count

The attached outline locks **35 slides** (“Main hour: 35 slides”). A shorter “24 slides” line in the task summary is not the outline. This deck follows the numbered 35-slide outline.

## Section starts and the open

Slides 7, 14, 21, and 28 use `.section-start`: a weaver band, a red left border, and one setup sentence. They are not blank navy title slides.

Slides 1–6 have no `.fragment`. The Logistic row on the grid is static `class="here"`. The word “ROC” appears once, in the Thresholds tools cell copied from the Session 04 grid. That cell is not a ROC lesson.

## OJ and the locked numbers

`OJ.csv` was not in this student-site checkout. The file here is ISLR `OJ` (Rdatasets), row names dropped: 1,070 rows, Purchase / LoyalCH / PriceDiff present, no missing values. Setup `stopifnot` checks every locked rounded figure:

- n = 1070; CH 653 (0.61) / MM 417
- LoyalCH means 0.72 (CH) and 0.32 (MM)
- `lm(y ~ LoyalCH)` fitted range 0.036 to 1.051
- bin CH rates 0.12, 0.28, 0.53, 0.77, 0.96
- `glm(y ~ LoyalCH)`: −2.76, 6.09
- `glm(y ~ LoyalCH + PriceDiff)`: −3.25, 6.40, 2.86
- new rows: 0.63, 0.35, 0.92

PriceDiff means are not printed. The S-curve on the “stay between 0 and 1” slide is a teaching sketch (`plogis(-2.2 + 4.8 * x)`), captioned as not the fit on this file.

On the Mac, prefer `_project/data_pack/teaching/backups/OJ.csv` if it is the same ISLR file. The deck stops if a future export drifts off these rounded locks.

## Theme files in this checkout

`slides/_theme/mlba-reveal.css` and the two logo PNGs were extracted from the already published Session 04 HTML so this checkout could render. See `READY_FOR_ACADEMIC.md` before copying them onto the Academic tree.

## Dates left off the glass

Student titles have no dates. Speaker notes on the last slide record the outline slot (Wed 30 Sep 2026 discussion, continuing the Monday pair) and the homework conflict: the outline locks Homework 2 at Sun 4 Oct, 11:59 pm; the public `schedule.qmd` lists Sun 28 Sep. The slide says to follow the schedule and does not stamp either date. `schedule.qmd` was not edited.
