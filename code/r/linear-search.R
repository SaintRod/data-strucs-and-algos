#' Linear search algorithm
#'
#' @description
#' Returns the index position of the target value from the given list
#'
#' @details
#' In R, we can leverage vectorization vs using a loop
#' This is similar to how numpy works in Python
#' @export
linear_search <- function(list, target) {
  out <- which(list == target)
  if (length(out) == 0) NULL else out
}

input <- seq_len(100)
result <- linear_search(input, 20)
stopifnot(result == 20)

input <- seq_len(500)
result <- linear_search(input, 501)
stopifnot(is.null(result))
