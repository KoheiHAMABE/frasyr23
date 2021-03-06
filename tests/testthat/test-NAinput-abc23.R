library(frasyr23)

context("type23 na input check")

test_that("type2 cpue na input check",{
  catch <- c(10,5,10,3,2,1,3)
  cpue <- c(11,10,NA,3,2,5,2)
  example_data <- data.frame(year=1:7,cpue=cpue,catch=catch)

  # 2系
  example_abc2 <- calc_abc2(example_data)
  #graph_abc2 <- plot_abc2(example_abc2)
  expect_equal(round(example_abc2$ABC,6), 1.678474)

})

test_that("type2 catch na input check",{
  catch <- c(10,5,NA,3,2,1,3)
  cpue <- c(11,10,2,3,2,5,2)
  example_data <- data.frame(year=1:7,cpue=cpue,catch=catch)

  # 2系
  example_abc2 <- calc_abc2(example_data)
  #graph_abc2 <- plot_abc2(example_abc2)
  expect_equal(round(example_abc2$ABC,6), 1.121560)

})

test_that("type2 cpue & catch na input check",{
  catch <- c(10,5,NA,3,2,1,3)
  cpue <- c(11,10,2,3,NA,5,2)
  example_data <- data.frame(year=1:7,cpue=cpue,catch=catch)

  # 2系
  example_abc2 <- calc_abc2(example_data)
  #graph_abc2 <- plot_abc2(example_abc2)
  expect_equal(round(example_abc2$ABC,6), 0.972005)

})


test_that("type3 catch na input check",{
  catch <- c(10,5,10,3,2,NA,3)
  example_data <- data.frame(year=1:7,catch=catch)

  # 3系
  example_abc3 <- calc_abc3(example_data)
  #graph_abc3 <- plot_abc2(example_abc3)
  expect_equal(round(example_abc3$ABC,6), 1.852046)

})
