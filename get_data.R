url="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fn="dataset.zip"
m=c("curl","wget","internal")
tryCatch({
		download.file(url,fn,method=m[1])
		print(sprintf("Downloaded file using %s method",m[1]))
		unzip("dataset.zip")
		print("unzipped file")
	},error = function(e) {
		tryCatch({
				download.file(url,fn,method=m[2])
				print(sprintf("Downloaded file using %s method",m[2]))
				unzip("dataset.zip")
				print("unzipped file")
			},error = function(e) {
				download.file(url,fn,method=m[3])
				print(sprintf("Downloaded file using %s method",m[3]))
				unzip("dataset.zip")
				print("unzipped file")
			},error = function(e) {
				print("I give up. Please download the file from the following url")
				print(url)
				print("Then unzip it in the current directory")
				print("Please ensure the resulting dataset is in a directory named:")
				print("UCI HAR Dataset")
	})})
