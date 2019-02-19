#' Trade data
#'
#' Class reproduce the Consumer class from QuantEcon lecture
#'
#' @param firstDate first trade date as character
#' @param lastDate last trade date as character
#'
#' @import R6
#' @import ggplot
#' @import tidyr
#' @import assertive
#'

# A CONSUMER CLASS
Consumer <- R6Class(
  classname = "Consumer",

  public = list(

    wealth = NULL,
    initialize = function(wealth) {
      self$wealth <- wealth
    },
    earn = function(y) {
      self$wealth = self$wealth + y
      invisible(self)
    },
    spend = function(x) {
      new_wealth = self$wealth - x
      if (new_wealth < 0) {
        message("Insufficent funds")
      }else{
        self$wealth = self$wealth - x
        invisible(self)
      }
    }
  )
)
