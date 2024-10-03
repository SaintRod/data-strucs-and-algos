#' Recursive Binary search algorithm
#'
#' @description
#' Returns True if the target value is found in the given input, False otherwise
#' @export
recursive_binary_search <- function(input, target) {
  n <- length(input)
  mp <- n %/% 2

  if (n == 0) return(FALSE)
  if (all(n == 1, input[[1]] == target)) return(TRUE)
  if (all(n == 1, input[[1]] != target)) return(FALSE)

  if (isTRUE(input[mp] == target)) return(TRUE)
  if (isTRUE(target < input[mp])) return(recursive_binary_search(input[seq(1, mp-1, 1)], target))
  else return(recursive_binary_search(input[seq(mp+1, n, 1)], target))
}

input <- seq_len(100)
result <- recursive_binary_search(input, 100)
stopifnot(result)

input <- seq_len(10000)
result <- recursive_binary_search(input, 10)
stopifnot(result)

input <- seq_len(10000)
result <- recursive_binary_search(input, 1)
stopifnot(result)

input <- seq_len(10000)
result <- recursive_binary_search(input, 10001)
stopifnot(!result)

input <- seq_len(500)
result <- recursive_binary_search(input, 501)
stopifnot(!result)
