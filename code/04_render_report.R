here::i_am("code/04_render_report.R")

library(rmarkdown)
# rendering a report in production mode
report <- render("report.Rmd", output_dir = here::here())
