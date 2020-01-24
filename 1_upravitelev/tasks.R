source('http://tiny.cc/l0q4iz')


# задание
library(data.table)
library(dplyr)
library(microbenchmark)

N <- 1e5
set.seed(1234)
my_frame <- data.frame(
  v1 = sample(sample(letters, 3), N, replace = TRUE),
  v2 = rnorm(N)
)

my_frame_dt <- as.data.table(my_frame)
my_frame_tb <- as_tibble(my_frame)

# задание
f1 <- function(){
  my_frame_tb %>%
    group_by(v1) %>%
    summarise(sum(v2))
}

f2 <- function(){
  my_frame_dt
}

michrobenchmark(f1(), f2(), times = 100)


N <- 1e4
set.seed(12345)

uids <- paste0('uid_', sample(N), sample(letters, N, TRUE))
uids[1:3]

uids_splitted <- strsplit(uids, '_')
uids_splitted[[1]][2]

uids_second <- c()
for (i in seq_len(N))
  uids_second <- c(uids_second, uids_splitted[[i]][2])
uids_second[1:3]
