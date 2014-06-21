url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fn="dataset.zip"
m=c("curl","wget","internal")
tryCatch({
		download.file(url,fn,method=m[1])
		print(sprintf("Downloaded file using %s method",m[1]))
	},error = function(e) {
		tryCatch({
				download.file(url,fn,method=m[2])
				print(sprintf("Downloaded file using %s method",m[2]))
			},error = function(e) {
				download.file(url,fn,method=m[3])
				print(sprintf("Downloaded file using %s method",m[3]))
			},error = function(e) {
				print("I give up. Please download the file from the following url")
				print(url)
				print(sprintf("Then please rename it %s ",fn))
	})})
