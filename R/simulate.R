# create function to simulate data with different parameters
simulate_data <- function(n, mean_1 = 100, mean_2 = 150, sd_1 = 20, sd_2 = 20) {
  # create dataset
  df_ind_t.test <- tibble::tibble(ID = 1:n,
                                  IV = c(rep("A", n/2),
                                         rep("B", n/2)
                                  ),
                                  DV = c(rnorm(n = n/2, mean = mean_1, sd = sd_1), # A
                                         rnorm(n = n/2, mean = mean_2, sd = sd_2)  # B
                                  )
                   )
  # encode IV as a factor
  df_ind_t.test$IV <- factor(df_ind_t.test$IV, levels = c("A", "B"))
  # return df
  df_ind_t.test
}
