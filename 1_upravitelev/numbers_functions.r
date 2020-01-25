numbers_1 <- function(x) {
  x <- as.character(x)
  x <- strsplit(x, "")
  x <- unlist(x)
  digit.vector <- factor(x, levels = 0:9)
  res <- table(digit.vector)
  as.numeric(res)
}

numbers_2 <- function(x) {
  x <- paste(x, collapse = "")
  z <- nchar(x)
  x <- as.double(x)
  y <- rep(0, 10)
  for (i in seq_len(z)) {
    k <- x %% 10
    y[k + 1] <- y[k + 1] + 1
    x <- x %/% 10
  }
  y
}