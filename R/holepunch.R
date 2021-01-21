library(holepunch)
# write compendium description
write_compendium_description(
  package = "OSSSG Demonstration",
  description = "Short demo of reproducible science possibilites"
  )

# write dockerfile
write_dockerfile(maintainer = "Michael_McCarthy",
                 r_date = "2021-02-20", # date for R v4.0.3 (version this demo is using)
                 branch = "main")

# generates a badge for readme
generate_badge(branch = "main")

# ----------------------------------------------
# At this time push the code to GitHub
# ----------------------------------------------

# And click on the badge or use the function below to get the build
# ready ahead of time.
build_binder()
