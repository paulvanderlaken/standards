`%nin%` <- Negate(`%in%`)

not_null <- Negate(is.null)

not_na <- Negate(is.na)

"%|NA|%" <- function(x, y){
  if (is.na(x)) {
    y
  } else {
    x
  }
}
