
RegressionLinear <- function(dataset=NULL, options, perform="run", callback=function(...) 0, ...) {

	if (is.null(dataset))
	{
		if (perform == "run") {
			dataset <- read.dataset.to.end()
		} else {
			dataset <- read.dataset.header()
		}
	}

	results <- list()
	
	an0va <- list()
	
	an0va[["title"]] <- "Linear Regression w00t!"
	an0va[["cases"]] <- c("line1", "line2", "line3")
	
	fields <- list(
		list(id="col1", type="number", format="sf:4"),
		list(id="col2", type="number", format="sf:4"),
		list(id="col3", type="number", format="dp:4;p:.001"))
		
	schema <- list(fields=fields)
	
	an0va[["schema"]] <- schema
	
	results[["regression"]] <- list(an0va)

	results
}
