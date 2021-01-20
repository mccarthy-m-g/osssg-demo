# create function to print t-test in APA format
print_t.test <- function(x) {
  # get test values
  t  <- sprintf("%.2f", x$statistic)
  df <- sprintf("%.2f", x$parameter)
  p  <- ifelse(x$p.value < 0.001,
               "< .001",
               paste0("= ", gsub("^(-?)0\\.","\\.", sprintf("%.3f", x$p.value)))
               )

  # turn values into APA string
  paste0("$t(", df, ") = ", t, "$, $p ", p, "$")
}
