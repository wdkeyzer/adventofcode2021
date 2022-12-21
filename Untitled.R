
advent_input <- function(day = lubridate::day(Sys.Date()),
                         year = 2021) {
  session <- Sys.getenv("ADVENT_SESSION")
  if (session == "") {
    stop("Must set ADVENT_SESSION in .Renviron")
  }
  
  url <- paste0("https://adventofcode.com/", year, "/day/", day, "/input")
  
  req <- httr::GET(url,
                   httr::set_cookies(session = session))
  httr::stop_for_status(req)
  
  txt <- httr::content(req)
  
  tibble::tibble(x = head(readr::parse_guess(stringr::str_split(txt, "\n")[[1]]), -1))
}

# get first puzzle of last year
d <- advent_input(1, 2020)


usethis::edit_r_environ()
