## Original Project Data
- [Project Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

- A [full description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) is available at the site where the data was obtained. 
 

### Variable Descriptions

Variable descriptions here are adapted from the features_info.txt of the original Project Data.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### Column Variable Names

1. subject_id
2. activity_name
3. tbody_accelerometer_mean_x
4. tbody_accelerometer_mean_y
5. tbody_accelerometer_mean_z
6. tbody_accelerometer_std_x
7. tbody_accelerometer_std_y
8. tbody_accelerometer_std_z
9. tgravity_accelerometer_mean_x
10. tgravity_accelerometer_mean_y
11. tgravity_accelerometer_mean_z
12. tgravity_accelerometer_std_x
13. tgravity_accelerometer_std_y
14. tgravity_accelerometer_std_z
15. tbody_accelerometer_jerk_mean_x
16. tbody_accelerometer_jerk_mean_y
17. tbody_accelerometer_jerk_mean_z
18. tbody_accelerometer_jerk_std_x
19. tbody_accelerometer_jerk_std_y
20. tbody_accelerometer_jerk_std_z
21. tbody_gyroscope_mean_x
22. tbody_gyroscope_mean_y
23. tbody_gyroscope_mean_z
24. tbody_gyroscope_std_x
25. tbody_gyroscope_std_y
26. tbody_gyroscope_std_z
27. tbody_gyroscope_jerk_mean_x
28. tbody_gyroscope_jerk_mean_y
29. tbody_gyroscope_jerk_mean_z
30. tbody_gyroscope_jerk_std_x
31. tbody_gyroscope_jerk_std_y
32. tbody_gyroscope_jerk_std_z
33. tbody_accelerometer_mag_mean
34. tbody_accelerometer_mag_std
35. tgravity_accelerometer_mag_mean
36. tgravity_accelerometer_mag_std
37. tbody_accelerometer_jerkmag_mean
38. tbody_accelerometer_jerkmag_std
39. tbody_gyroscope_mag_mean
40. tbody_gyroscope_mag_std
41. tbody_gyroscope_jerkmag_mean
42. tbody_gyroscope_jerkmag_std
43. fbody_accelerometer_mean_x
44. fbody_accelerometer_mean_y
45. fbody_accelerometer_mean_z
46. fbody_accelerometer_std_x
47. fbody_accelerometer_std_y
48. fbody_accelerometer_std_z
49. fbody_accelerometer_meanfreq_x
50. fbody_accelerometer_meanfreq_y
51. fbody_accelerometer_meanfreq_z
52. fbody_accelerometer_jerk_mean_x
53. fbody_accelerometer_jerk_mean_y
54. fbody_accelerometer_jerk_mean_z
55. fbody_accelerometer_jerk_std_x
56. fbody_accelerometer_jerk_std_y
57. fbody_accelerometer_jerk_std_z
58. fbody_accelerometer_jerk_meanfreq_x
59. fbody_accelerometer_jerk_meanfreq_y
60. fbody_accelerometer_jerk_meanfreq_z
61. fbody_gyroscope_mean_x
62. fbody_gyroscope_mean_y
63. fbody_gyroscope_mean_z
64. fbody_gyroscope_std_x
65. fbody_gyroscope_std_y
66. fbody_gyroscope_std_z
67. fbody_gyroscope_meanfreq_x
68. fbody_gyroscope_meanfreq_y
69. fbody_gyroscope_meanfreq_z
70. fbody_accelerometer_mag_mean
71. fbody_accelerometer_mag_std
72. fbody_accelerometer_mag_meanfreq
73. fbodybody_accelerometer_jerkmag_mean
74. fbodybody_accelerometer_jerkmag_std
75. fbodybody_accelerometer_jerkmag_meanfreq
76. fbodybody_gyroscope_mag_mean
77. fbodybody_gyroscope_mag_std
78. fbodybody_gyroscope_mag_meanfreq
79. fbodybody_gyroscope_jerkmag_mean
80. fbodybody_gyroscope_jerkmag_std
81. fbodybody_gyroscope_jerkmag_meanfreq
82. angletbody_accelerometer_mean_gravity
83. angletbody_accelerometer_jerkmean_gravitymean
84. angletbody_gyroscope_mean_gravitymean
85. angletbody_gyroscope_jerkmean_gravitymean
86. anglex_gravitymean
87. angley_gravitymean
88. anglez_gravitymean