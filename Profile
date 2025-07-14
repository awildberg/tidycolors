library("colorout")
#message("... colorout loaded!")

setOutputColors(
  normal = 76,
#  negnum = 178,
  zero = 226,
#  number = 221,
  date = 38,
#  string = 202,
#  const = 33,
#  warn = c(236, 179),
#  error = c(236, 198),
  zero.limit = 0.1,
  verbose = F
)

## drop_na
drop_na <- function(data, ..., method = "any") {
  stopifnot(method == "any" | method == "all")
  dots <- dplyr::enquos(...)

  if (rlang::is_empty(dots)) {
    # Use all columns if no `...` are supplied
    cols <- data
  } else {
    vars <- tidyselect::eval_select(expr(c(!!!dots)), data, allow_rename = FALSE)
    cols <- data[vars]
  }

  if (method == "any") {
    loc <- vctrs::vec_detect_complete(cols)
    out <- vctrs::vec_slice(data, loc)
  }
  if (method == "all") {
    loc <- !vctrs::vec_detect_missing(cols)
    out <- vctrs::vec_slice(data, loc)
  }
  out
}
message("drop_na(method='all') enabled")
