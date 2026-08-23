# 70-467 MLBA Fall 2026 — install course packages
# Works on Windows, macOS, and Linux.
#
# In RStudio: open this file → click Source
# Or: source("path/to/install-packages.R", echo = TRUE)
# Windows path example:
#   source("C:/Users/YourName/Downloads/install-packages.R")

message("OS: ", R.version$os, " | R: ", R.version.string)

# Prefer binaries on Windows when available
if (.Platform$OS.type == "windows") {
  options(pkgType = "binary")
  options(install.packages.check.source = "no")
  message("Windows detected: preferring binary packages.")
  message("If compilation fails later, install Rtools from:")
  message("  https://cran.r-project.org/bin/windows/Rtools/")
}

core <- c(
  "tidyverse",
  "scales",
  "tidymodels",
  "glmnet",
  "rpart",
  "rpart.plot",
  "ranger",
  "vip",
  "cluster",
  "factoextra",
  "ggfortify",
  "pROC",
  "nnet",
  "rmarkdown",
  "knitr",
  "gt",
  "broom",
  "here"
)

recommended <- c("xgboost")

install_set <- function(pkgs, label = "packages") {
  missing <- pkgs[!pkgs %in% rownames(installed.packages())]
  if (!length(missing)) {
    message("Already installed (", label, ").")
    return(invisible(TRUE))
  }
  message("Installing ", label, ": ", paste(missing, collapse = ", "))
  for (p in missing) {
    message("--> ", p)
    tryCatch(
      install.packages(p, dependencies = TRUE),
      error = function(e) {
        message("FAILED: ", p, " — ", conditionMessage(e))
      }
    )
  }
}

install_set(core, "core")
install_set(recommended, "recommended")

all_pkgs <- c(core, recommended)
ok <- vapply(all_pkgs, requireNamespace, quietly = TRUE, FUN.VALUE = logical(1))
print(ok)

core_ok <- all(ok[core])
if (!core_ok) {
  stop(
    "Core packages still missing: ",
    paste(names(ok[core])[!ok[core]], collapse = ", "),
    "\nFix errors above (Windows users: install Rtools), then re-run this script."
  )
}

if (isFALSE(ok["xgboost"])) {
  message("NOTE: xgboost not installed. You can start the course without it.")
  message("Before boosting week: install Rtools (Windows) then install.packages('xgboost').")
}

message("OK — core MLBA package set is ready.")
