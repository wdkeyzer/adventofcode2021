Day 2 - Dive!
================

## Setup and load data

The first step is to load some libraries and get the data loaded into R.

``` r
library(tidyverse)
library(datapasta)
```

Start by selecting the data and using Ctrl-C to copy. I’ve only ever
used the dataframe function from this package so lets see if that works.
Put your cursor in a code chunk and type df_paste(). Run that line of
code and it will paste the data on your clipboard into the chunk. Add a
object name to assign the data to and run the chunk again.

``` r
df_paste()
```

<div class="hidecode">

</div>

``` r
raw <- data.frame(
  stringsAsFactors = FALSE,
            text = c("forward 4", "down 9","forward 6",
                          "down 5","up 2","forward 5","forward 7","up 5",
                          "down 9","up 6","down 6","down 1","down 1","up 2",
                          "down 3","up 3","forward 8","forward 7","down 6",
                          "down 7","forward 6","forward 9","forward 7","up 9",
                          "down 4","down 6","down 5","down 9","forward 8",
                          "down 9","forward 9","forward 4","forward 4",
                          "up 3","up 8","down 9","down 8","down 4","forward 5",
                          "forward 4","up 6","forward 6","up 3","up 8",
                          "up 3","up 4","down 3","down 5","down 5","up 1",
                          "forward 9","down 4","forward 6","down 6","up 2",
                          "up 9","forward 1","forward 2","forward 7","down 6",
                          "up 6","forward 1","forward 7","down 7","forward 9",
                          "forward 4","forward 6","down 5","up 9","down 1",
                          "up 5","up 5","up 9","down 5","forward 7",
                          "down 1","up 9","down 7","forward 2","down 4","down 4",
                          "forward 8","forward 8","down 6","down 3","up 7",
                          "down 3","forward 9","down 7","forward 2",
                          "down 1","forward 5","up 9","down 2","up 2","down 3",
                          "up 7","forward 9","forward 7","down 4","down 5",
                          "up 3","down 3","down 5","forward 9","down 3",
                          "forward 9","down 3","up 9","down 5","forward 4",
                          "down 4","up 8","forward 7","up 1","down 2",
                          "forward 4","down 7","down 9","down 4","down 4",
                          "forward 6","down 7","down 2","down 1","forward 1","down 2",
                          "forward 1","down 7","forward 5","up 3",
                          "forward 6","up 9","down 3","down 3","down 9","forward 4",
                          "down 4","forward 9","forward 6","down 7","up 9",
                          "up 6","forward 4","down 5","forward 2","down 7",
                          "down 7","forward 4","forward 5","down 8",
                          "down 5","up 4","forward 7","up 8","down 8","forward 4",
                          "forward 5","down 6","down 1","down 1","down 9",
                          "forward 4","up 1","down 8","up 7","down 1",
                          "up 2","forward 4","down 7","down 7","down 2",
                          "forward 7","down 2","up 1","up 4","down 6","forward 5",
                          "forward 2","up 1","forward 2","forward 9","up 9",
                          "up 7","forward 9","down 8","up 5","down 6",
                          "down 6","up 8","down 1","forward 6","down 5",
                          "forward 2","down 9","down 9","up 4","forward 4",
                          "forward 2","forward 7","forward 3","down 1","forward 8",
                          "up 9","down 7","forward 9","forward 1",
                          "forward 5","up 6","down 6","forward 6","up 3",
                          "forward 9","down 3","forward 2","down 7","down 3","up 9",
                          "down 2","down 3","forward 5","down 9","forward 8",
                          "down 2","forward 1","down 9","down 7",
                          "forward 2","forward 6","forward 4","forward 5","down 5",
                          "down 1","forward 5","up 4","down 4","up 8",
                          "down 4","up 4","down 1","down 2","down 9","down 2",
                          "up 4","down 1","forward 2","forward 1","forward 9",
                          "down 5","up 4","up 1","forward 8","forward 6",
                          "forward 9","up 9","forward 4","forward 4","down 1",
                          "forward 6","forward 7","forward 3","up 5",
                          "up 7","down 1","forward 4","down 3","down 5","up 7",
                          "down 4","up 9","down 3","down 5","forward 7",
                          "forward 8","up 5","up 1","forward 3","up 8",
                          "forward 3","down 2","forward 1","forward 9","forward 1",
                          "down 2","forward 7","down 5","forward 6",
                          "down 9","up 9","forward 5","forward 7","forward 6",
                          "down 2","up 2","forward 3","forward 4","forward 3",
                          "down 5","forward 1","forward 2","forward 6",
                          "down 4","forward 2","forward 6","up 8","forward 2",
                          "up 4","forward 7","down 2","forward 1","forward 7",
                          "down 6","forward 4","down 3","down 2","down 2",
                          "forward 4","down 8","forward 6","forward 6",
                          "down 2","up 3","up 1","forward 1","down 5","down 2",
                          "forward 4","forward 7","forward 3","down 3",
                          "forward 9","down 1","down 7","forward 6","forward 1",
                          "up 6","forward 7","forward 1","down 5","down 4",
                          "forward 6","up 1","down 1","up 9","down 2",
                          "down 2","forward 3","up 4","down 5","down 5","down 3",
                          "down 6","up 8","forward 2","forward 2","down 6",
                          "down 1","up 4","up 1","down 5","up 4","up 2",
                          "forward 4","forward 6","forward 3","down 7",
                          "forward 8","up 5","forward 5","down 1","forward 2",
                          "forward 6","down 8","up 6","down 1","down 7",
                          "forward 4","forward 2","up 1","down 6","forward 3",
                          "forward 1","forward 5","forward 9","forward 9",
                          "down 4","forward 2","down 1","forward 1","forward 7",
                          "forward 5","down 9","down 8","down 1","down 6",
                          "down 1","up 7","down 3","forward 3","up 6","up 4",
                          "down 7","down 7","forward 6","up 7","down 7",
                          "forward 9","down 9","down 3","forward 6",
                          "forward 9","forward 1","down 4","forward 5","down 4",
                          "down 2","down 3","up 3","forward 9","forward 7",
                          "forward 5","down 5","forward 7","up 4","down 1",
                          "forward 3","down 3","forward 4","down 9","forward 2",
                          "down 5","down 1","forward 8","down 3",
                          "forward 7","up 1","down 3","forward 2","up 8","down 2",
                          "forward 4","forward 4","forward 4","down 5","up 6",
                          "down 3","forward 5","down 4","up 5","forward 1",
                          "forward 6","up 1","down 3","forward 2",
                          "forward 9","down 7","down 4","forward 5","up 3","up 6",
                          "up 1","forward 4","forward 1","forward 1","down 7",
                          "up 4","down 3","down 8","down 3","forward 8",
                          "forward 3","down 6","down 9","forward 3",
                          "forward 9","forward 7","down 8","down 6","down 4",
                          "forward 2","up 4","forward 8","down 1","forward 9",
                          "forward 1","down 9","forward 2","down 7","down 2",
                          "up 7","down 1","up 8","forward 8","down 7",
                          "forward 1","down 1","forward 3","forward 1","up 2",
                          "down 7","down 5","forward 5","down 8","forward 4",
                          "down 1","up 2","up 8","down 8","down 1","down 5",
                          "up 3","forward 3","forward 5","down 2","up 4",
                          "down 2","forward 7","forward 9","up 9","up 7",
                          "forward 1","up 4","forward 3","up 5","forward 9",
                          "forward 9","forward 6","forward 2","down 7",
                          "forward 8","forward 4","forward 7","down 8","down 5",
                          "down 6","forward 6","down 4","down 1","down 9",
                          "down 1","forward 3","forward 5","down 6","down 7",
                          "down 9","down 8","down 4","up 5","forward 7",
                          "down 9","forward 6","down 7","forward 5","down 5",
                          "forward 1","down 5","down 3","up 9","up 3",
                          "forward 2","up 9","forward 6","down 1","down 5","down 9",
                          "down 4","up 6","forward 9","down 4","down 9",
                          "down 5","down 8","down 5","down 4","up 5",
                          "down 8","up 8","forward 5","down 9","forward 2","up 2",
                          "down 6","forward 2","forward 4","forward 6",
                          "down 6","down 1","forward 8","down 5","down 5",
                          "forward 2","down 7","down 5","down 6","down 9",
                          "forward 4","up 9","down 3","down 7","forward 3",
                          "down 5","up 1","forward 5","up 2","down 2","forward 2",
                          "up 3","up 6","forward 2","forward 7","down 8",
                          "forward 8","forward 7","forward 6","down 5",
                          "down 6","down 6","down 9","up 5","down 3","up 1",
                          "up 9","up 5","down 4","down 4","down 8","forward 8",
                          "up 5","down 9","forward 1","up 1","forward 2",
                          "down 9","forward 5","up 9","forward 7","down 7",
                          "down 5","up 1","up 2","down 8","down 7","up 4",
                          "forward 9","down 4","up 8","down 5","down 1",
                          "forward 9","down 6","up 8","down 6","forward 7",
                          "up 6","up 5","forward 2","up 7","forward 7",
                          "forward 5","down 1","forward 9","down 8","forward 9",
                          "down 3","down 3","forward 9","up 1","down 2",
                          "forward 9","down 7","forward 4","forward 3",
                          "forward 4","down 5","forward 9","forward 9","down 5",
                          "forward 4","down 5","down 2","down 6","forward 5",
                          "forward 8","forward 6","up 9","down 9","forward 7",
                          "down 6","down 7","down 4","forward 1","forward 3",
                          "forward 6","forward 4","forward 3","forward 4",
                          "down 1","forward 2","forward 3","forward 9",
                          "up 8","forward 6","down 1","up 5","down 1","down 4",
                          "down 7","down 5","down 9","down 2","down 9",
                          "forward 2","down 2","up 5","forward 2","forward 3",
                          "forward 5","up 8","up 1","down 9","forward 2",
                          "down 4","down 9","down 6","down 5","down 8",
                          "forward 3","forward 8","forward 7","up 3","up 5",
                          "down 9","down 5","up 6","forward 4","forward 4",
                          "forward 4","down 9","down 2","down 7","down 1",
                          "down 2","down 4","forward 7","down 9","forward 4",
                          "forward 5","up 5","forward 4","forward 9","forward 1",
                          "forward 5","down 3","forward 1","forward 5",
                          "up 9","down 7","forward 7","forward 6","down 2",
                          "down 3","forward 9","down 1","forward 4","forward 9",
                          "up 7","forward 7","down 5","forward 9",
                          "forward 2","up 3","down 3","down 7","down 5","up 7",
                          "up 9","up 7","forward 3","forward 3","forward 8",
                          "up 9","forward 8","forward 9","forward 4","down 2",
                          "forward 7","down 6","up 3","up 9","forward 8",
                          "forward 2","down 9","down 7","forward 1","up 4",
                          "up 7","forward 2","up 4","forward 4","up 1",
                          "forward 3","down 7","forward 5","down 4","forward 2",
                          "forward 7","up 4","down 1","down 6","forward 1",
                          "forward 9","up 6","forward 7","forward 7","down 8",
                          "forward 7","down 8","down 9","up 3","forward 3",
                          "forward 3","down 8","up 2","down 2","down 4",
                          "up 3","down 3","forward 7","down 4","up 8",
                          "down 9","down 9","up 7","down 1","forward 2","up 1",
                          "down 3","up 9","down 6","up 2","forward 6","up 8",
                          "up 1","down 6","down 1","up 6","up 4","up 2",
                          "forward 6","down 6","down 1","forward 7","up 9",
                          "up 1","forward 4","forward 5","up 6","forward 9",
                          "down 1","down 9","down 3","down 7","forward 7",
                          "down 1","down 4","forward 6","down 5","up 4",
                          "forward 9","up 5","down 1","down 2","down 2","up 4",
                          "forward 1","forward 3","down 7","forward 4",
                          "down 4","down 8","down 5","forward 3","up 4",
                          "forward 5","down 2","down 4","down 4","down 1",
                          "forward 2","forward 1","forward 8","forward 4","up 4",
                          "down 9","up 6","forward 9","up 5","down 5",
                          "forward 3","up 1","forward 7","down 4","forward 7",
                          "down 9","up 8","down 5","forward 1","down 5",
                          "down 8","forward 3","up 6","forward 3","up 7",
                          "forward 6","forward 9","up 1","down 3","down 9","up 4",
                          "up 6","forward 5","down 6","down 3","down 4",
                          "up 1","forward 5","down 5","down 2","forward 6",
                          "down 8","down 3","up 8","forward 5","forward 6",
                          "down 6","down 6","down 6","forward 7","up 4",
                          "forward 7","up 4","down 2","forward 4","forward 2",
                          "down 6","up 1","down 1","down 4","up 8","down 6",
                          "forward 3","forward 6","down 6","forward 5",
                          "down 4","up 2","up 3","down 3","up 1","forward 2",
                          "up 1","forward 4","up 5","up 2","down 7",
                          "forward 3","up 2","forward 5","down 1","down 3","down 2",
                          "forward 5","down 1","up 5","forward 4","down 7",
                          "up 8","up 3","down 7","down 7","forward 9",
                          "forward 1","up 6","down 4","down 7","forward 1",
                          "down 4","forward 9","up 1","forward 3","down 1",
                          "up 3","down 6","down 8","down 6","forward 6",
                          "forward 6","up 2","down 8","forward 5")
   )
```

## Part I

The values need to be split in a direction and number of units. We can
use the function `separate()` to split on the white space between
direction and number of units.

``` r
data <- raw %>%
  separate(col = text, into = c("direction", "units"), sep = " ") %>%
  mutate(units = as.numeric(units))
```

First let’s check all possible directions.

``` r
data %>% 
  count(direction)
```

    ##   direction   n
    ## 1      down 406
    ## 2   forward 380
    ## 3        up 214

If we convert the units associated with ‘down’ to negative integers we
can check whether the submarine surfaces above zero during it’s route.

``` r
vertical <- data %>% 
  mutate(units =  case_when(
    direction == "down" ~ units * -1,
    TRUE ~ units)) %>% 
  filter(direction != "forward") %>% 
  mutate(cumsum = cumsum(units),
    seq = row_number()) 
```

Let’s plot the vertical movement:

``` r
vertical %>% 
  ggplot(aes(seq, cumsum)) +
  geom_line() +
  labs(x = "number of movements",
       y = "depth",
       title = "Sequence of vertical movements")
```

![](/Users/willemdekeyzer/Local%20folder%20R/AdventOfCode/markdown/md/day02-Dive_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->

OK, so the submarine never surfaces again.We can select it’s final depth
by extracting the last value using `tail()`.

``` r
vertical %>% 
  select(down = cumsum) %>% 
  tail(n = 1)
```

    ##     down
    ## 620 -907

Now we can calculate the sum of units in forward direction.

``` r
data %>% 
  filter(direction == "forward") %>% 
  summarize(forward = sum(units))
```

    ##   forward
    ## 1    1905

So the number of forward units sums at 1905.

We need to multiply the units forward times the units down.

``` r
1905*907
```

    ## [1] 1727835

That’s the right answer!

## Part II

“In addition to horizontal position and depth, you’ll also need to track
a third value, aim, which also starts at 0. The commands also mean
something entirely different than you first thought: - down X increases
your aim by X units. - up X decreases your aim by X units. - forward X
does two things: - It increases your horizontal position by X units. -
It increases your depth by your aim multiplied by X.”

Wow, that’s a more complicated task. We need to use the original data
again and make some new calculations.

First we must make sure that up and down result in the right aim. If the
direction is up we make the unit negative so when we use `cumsum()` we
get the right aim. After that we calculate the depth by multiplying the
units forward with depth.

``` r
output1 <- data %>% 
  mutate(t = case_when(
    direction == "up" ~ units * - 1,
    direction == "down" ~ units,
    TRUE ~ 0),
    aim = cumsum(t),
    depth = units * aim
    )

output1 %>% 
  head()
```

    ##   direction units  t aim depth
    ## 1   forward     4  0   0     0
    ## 2      down     9  9   9    81
    ## 3   forward     6  0   9    54
    ## 4      down     5  5  14    70
    ## 5        up     2 -2  12    24
    ## 6   forward     5  0  12    60

We can remove both the directions down and up since we don’t need this
anymore and the calculation op depth for these rows has no meaning.

``` r
output2 <- output1 %>% 
  filter(direction == "forward")
```

Now we take the last value of depth and multiply it with the sum of the
units forward.

``` r
output2 %>% 
  mutate(depth = cumsum(depth)) %>% 
  select(depth) %>% 
  tail(1)
```

    ##      depth
    ## 380 810499

``` r
output2 %>%
  summarize(forward = sum(units))
```

    ##   forward
    ## 1    1905

``` r
1905 * 810499
```

    ## [1] 1544000595

Alright, that’s it for today.
