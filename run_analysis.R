library(sqldf)
grep="grep -E 'mean()|std()'"
features=read.csv.sql("UCI HAR Dataset/features.txt",sep=" ",header=FALSE,filter=grep)

#Make the labels verbose and data.frame friendly
#I feel there must be a better way...
verbose=array(c("^t","time","^f","freq","Acc","Acceleration","Mag","Magnitude",
"([XYZ])","\\1Axis","mean","Mean","std","STD"),c(2,7))

for(i in 1:dim(verbose)[2]) {
#	print(sprintf("s/%s/%s/",verbose[1,i],verbose[2,i]))
	features[,2]=sub(verbose[1,i],verbose[2,i],features[,2],perl=TRUE)
}
features[,2]=gsub("[^A-Za-z]","",features[,2],perl=TRUE)

#http://stackoverflow.com/questions/2193742/ways-to-read-only-select-columns-from-a-file-into-r-a-happy-medium-between-re
#Found this thread on stackoverflow, which caused me to read ?read.table's section on
#the colClasses argument.  more or less, "NULL" is skipped, NA is taken as is
#Since we just have the features we want, we can then do this
wantedFeatures=rep("NULL",561)
wantedFeatures[features[,1]]=NA

wantedFeatureNames=rep(NA,561)
wantedFeatureNames[features[,1]]=features[,2]

testdata=read.table("UCI HAR Dataset/test/X_test.txt",colClasses=wantedFeatures,col.names=wantedFeatureNames)
testdata["subject"]=read.table("UCI HAR Dataset/test/subject_test.txt",header=FALSE)
testdata["activity"]=read.table("UCI HAR Dataset/test/y_test.txt")

traindata=read.table("UCI HAR Dataset/train/X_train.txt",colClasses=wantedFeatures,col.names=wantedFeatureNames)
traindata["subject"]=read.table("UCI HAR Dataset/train/subject_train.txt",header=FALSE)
traindata["activity"]=read.table("UCI HAR Dataset/train/y_train.txt")

wholedata=rbind(testdata,traindata)

activity=read.table("UCI HAR Dataset/activity_labels.txt",colClasses=c(NA,"character"))

for(i in 1:dim(activity)[1]) {
	wholedata["activity"][wholedata["activity"]==activity[i,1]]=activity[i,2]
}

tdrows=c()
for(i in 1:dim(activity)[1]) {
	tdrows=c(tdrows,paste(activity[i,2],"_",features[,2],sep=""))
}

tidydata=data.frame(row.names=tdrows)
subjects=as.character(unique(wholedata[["subject"]]))
featureaverage=paste(sprintf("AVG(%s)",features[,2]),collapse=",")
tidydata[subjects]=0
#Inefficient loops? Lets have a loop party.
for(a in activity[,2]) {
	for(s in subjects) {
		query=sprintf("select %s from wholedata where activity='%s' and subject='%s'",featureaverage,a,s)
		row=paste(a,s,sep="")
		print(query)
		#Hu... ok.  Maybe that's not the row.  Maybe I'm too tired
		#print=sqldf(query)
	}
}
