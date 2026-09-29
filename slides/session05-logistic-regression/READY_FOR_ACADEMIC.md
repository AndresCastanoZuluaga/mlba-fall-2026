# Ready to copy onto the Academic folder

The Mac worker was offline. This branch is the cloud build of the **24-slide** lock (not the retired 35-slide draft). When the Academic tree is available, copy the classroom source beside Session 04. Do not publish into the student site.

## Copy these files

From this repo:

`slides/session05-logistic-regression/`

onto the Academic tree, next to Session 04:

`slides/session05-logistic-regression/`

beside `slides/session04-selection-regularization/`.

Take:

- `session05-logistic-regression.qmd`
- `session05.css`
- `title-slide.html`
- `OJ.csv` (local fallback only)

Leave `BUILD_NOTES.md` and this file in the cloud PR. They do not need to live in the Academic slides folder after the copy.

The review HTML in this folder is optional. Re-render on the Mac after the copy; do not drop that HTML into `site/slides/` and do not edit `slides/index.qmd`.

## OJ.csv on the data pack

Also place the file at:

`_project/data_pack/teaching/w05_slides/OJ.csv`

If `_project/data_pack/teaching/backups/OJ.csv` is already the ISLR OJ file, use that canonical copy for both the deck folder and `w05_slides/`. Setup looks for, in order:

1. `OJ.csv` next to the `.qmd`
2. `../../_project/data_pack/teaching/w05_slides/OJ.csv`
3. `../../../_project/data_pack/teaching/w05_slides/OJ.csv`
4. `../../_project/data_pack/teaching/backups/OJ.csv`
5. `../../../_project/data_pack/teaching/backups/OJ.csv`

`stopifnot` in the setup chunk must still pass (n = 1070, CH = 653, and the rounded fits listed in `BUILD_NOTES.md`).

## Theme and title slide

Do not overwrite the Mac’s `slides/_theme/mlba-reveal.css` if Session 04 already renders with it.

`slides/_theme/` in this student-site checkout (CSS plus `logo-uni.png` and `logo-tepper.png`) exists so the cloud VM could render. The logos were pulled from the published Session 04 HTML.

On the Mac, if Session 04’s `title-slide.html` uses different logo paths, reuse that partial. Drop a date line if that partial prints one. This deck’s partial hard-codes the course name, the topic as the subtitle, and “Professor: Andrés Castaño Zuluaga”, and it does not print a date.

## Render on the Mac

From the Academic session folder, not from inside the student website:

```bash
cd slides/session05-logistic-regression
quarto render session05-logistic-regression.qmd
```

Needs R with ggplot2. The deck uses `read.csv` (not readr) and `glm(..., family = binomial)`.

Rendering inside the student website applies that project’s `title-prefix` and writes to `_site/`. That is the wrong output for the classroom file.

## After class only

Publish by the usual path in `site/slides/README.md`: dated HTML and PDF names, then `slides/index.qmd`. Not before class. No Canvas from this branch.
