construct_date = function(d, m, y) {
  return(as.Date(paste(d, m, y, sep = '-'), format = '%d-%m-%Y'))
}
