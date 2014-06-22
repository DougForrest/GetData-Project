library('plyr')

## Read in the data from files

## Read in Training data
x_train = read.table("./train/X_train.txt")
y_train = read.table("./train/y_train.txt")
subject_train = read.table("./train/subject_train.txt")

## Read in test data
x_test = read.table("./test/X_test.txt")
y_test = read.table("./test/y_test.txt")
subject_test = read.table("./test/subject_test.txt")

## Read in Meta data
features = read.table("features.txt")
activity_labels = read.table("activity_labels.txt")


## Step 1: Combine Training and Test Data

x_data = rbind(x_train, x_test)
y_data = rbind(y_train, y_test)
subject_data = rbind(subject_train, subject_test)


## Step 2: Clean variable names and label columns

## set column names in features table to lowercase
features[,2] = tolower(features[,2])
## Clean up variable names
txt = c("\\(", "\\)", "-", ",", "acc", "gyro", "__" )
txt_replace = c("", "", "_", "_", "_accelerometer_","_gyroscope_", "_")
## Loop through features variable descriptions and substitute w/ desired
for (i in 1:length(txt)) {
	features[,2] = gsub(txt[i], txt_replace[i], features[,2])
}
## Set column variable names
names(x_data) = features[,2]
names(y_data) = "activity_name"
names(subject_data) = "subject_id"

## Step 3: Set activity labels to descriptive strings
## Set activity labels in y_data to strings based on labels in activity_lables.txt
for (i in 1:length(activity_labels[,1])) {
	y_data[,1] = gsub(activity_labels[i,1], activity_labels[i,2], y_data[,1])
}
## Make y_data a factor variable
y_data[,1] = factor(y_data[,1])


## Step 4: Extract the mean and standard deviation columns from x_data

## set variable with desired features to extract
desired = c("mean", "std")

## extract column numbers of desired columns from features table
## all column names matching the desired strings are extracted 
meancol = grep(desired[1], features[,2])
stdcol = grep(desired[2], features[,2])

## combine and sort the desired column numbers
desired_col = sort(c(meancol, stdcol))

## Extract desired columns from x_data table 
x_trimmed =cbind(x_data[c(desired_col)])


## Step 5: Combine data to single dataframe
all_data = cbind(subject_data, y_data, x_trimmed)

## Step 6: Summarize on subject and activity 
tidy_data =ddply(all_data, .(subject_id, activity_name), numcolwise(mean))

## Step 7: write the output file
write.table(tidy_data,"tidydata.txt",sep="\t", row.names=FALSE)

