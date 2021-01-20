library(holepunch)
# write compendium description
write_compendium_description(
  package = "OSSSG Demonstration",
  description = "Short demo of reproducible science possibilites"
  )

# write dockerfile
write_dockerfile(maintainer = "Michael_McCarthy", r_date = "2019-02-29")
# To write a Dockerfile. It will automatically pick the date of the last
# modified file, match it to that version of R and add it here. You can
# override this by passing r_date to some arbitrary date
# (but one for which a R version exists).

# generates a badge for readme
generate_badge()

# ----------------------------------------------
# At this time push the code to GitHub
# ----------------------------------------------

# And click on the badge or use the function below to get the build
# ready ahead of time.
build_binder()
