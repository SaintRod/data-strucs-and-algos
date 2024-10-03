#' Binary search algorithm
#'
#' @description
#' Returns the index position of the target value from the given list
#' @export
binary_search <- function(list, target) {
  first <- 1
  last <- length(list)

  while (first <= last) {
    midpoint <- (first + last) %/% 2

    if (list[midpoint] == target) {
      return(midpoint)
    } else if (list[midpoint] < target) {
      first <- midpoint + 1
    } else {
      last <- midpoint - 1
    }
  }

  return(NULL)
}

input <- seq_len(100)
result <- binary_search(input, 20)
stopifnot(result == 20)

input <- seq_len(500)
result <- binary_search(input, 501)
stopifnot(is.null(result))
