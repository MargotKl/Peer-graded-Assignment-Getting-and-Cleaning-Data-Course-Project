<b><h1>Code book</b></h1>

The code book describes the variables, the data, and any transformations or work that were performed to clean up the data.

<b>Data</b><BR>
The tidyDataAverage.txt data file is a text file, with space-separated values. The first row contains the names of the variables.


<b>Identifiers</b><BR>
subjectId: subject identifier, integer, ranges from 1 to 30 <BR>
activity: factor with 6 levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING<BR>

<b>Variables</b><BR>
 Each row contains, for a given subject and activity, 86 averaged signal measurements (mean or standard deviation). <BR>
<b>Structure of dataframe: tidyDataAverage </b><BR>
<font size="2">'data.frame':	180 obs. of  88 variables:<BR>
 $ subjectId                                      : int  1 1 1 1 1 1 2 2 2 2 ...<BR>
 $ activity                                       : Factor w/ 6 levels "LAYING","SITTING",..: 1 2 3 4 5 6 1 2 3 4 ...<BR>
 $ TimeBodyAccelerometerMeanX                     : num  0.222 0.261 0.279 0.277 0.289 ...<BR>
 $ TimeBodyAccelerometerMeanY                     : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...<BR>
 $ TimeBodyAccelerometerMeanZ                     : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...<BR>
 $ TimeBodyAccelerometerStdX                      : num  -0.928 -0.977 -0.996 -0.284 0.03 ...<BR>
 $ TimeBodyAccelerometerStdY                      : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...<BR>
 $ TimeBodyAccelerometerStdZ                      : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...<BR>
 $ TimeGravityAccelerometerMeanX                  : num  -0.249 0.832 0.943 0.935 0.932 ...<BR>
 $ TimeGravityAccelerometerMeanY                  : num  0.706 0.204 -0.273 -0.282 -0.267 ...<BR>
 $ TimeGravityAccelerometerMeanZ                  : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...<BR>
 $ TimeGravityAccelerometerStdX                   : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...<BR>
 $ TimeGravityAccelerometerStdY                   : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...<BR>
 $ TimeGravityAccelerometerStdZ                   : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...<BR>
 $ TimeBodyAccelerometerJerkMeanX                 : num  0.0811 0.0775 0.0754 0.074 0.0542 ...<BR>
 $ TimeBodyAccelerometerJerkMeanY                 : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...<BR>
 $ TimeBodyAccelerometerJerkMeanZ                 : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...<BR>
 $ TimeBodyAccelerometerJerkStdX                  : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...<BR>
 $ TimeBodyAccelerometerJerkStdY                  : num  -0.924 -0.981 -0.986 0.067 -0.102 ...<BR>
 $ TimeBodyAccelerometerJerkStdZ                  : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...<BR>
 $ TimeBodyGyroscopeMeanX                         : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...<BR>
 $ TimeBodyGyroscopeMeanY                         : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...<BR>
 $ TimeBodyGyroscopeMeanZ                         : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...<BR>
 $ TimeBodyGyroscopeStdX                          : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...<BR>
 $ TimeBodyGyroscopeStdY                          : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...<BR>
 $ TimeBodyGyroscopeStdZ                          : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...<BR>
 $ TimeBodyGyroscopeJerkMeanX                     : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...<BR>
 $ TimeBodyGyroscopeJerkMeanY                     : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...<BR>
 $ TimeBodyGyroscopeJerkMeanZ                     : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...<BR>
 $ TimeBodyGyroscopeJerkStdX                      : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...<BR>
 $ TimeBodyGyroscopeJerkStdY                      : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...<BR>
 $ TimeBodyGyroscopeJerkStdZ                      : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...<BR>
 $ TimeBodyAccelerometerMagnitudeMean             : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...<BR>
 $ TimeBodyAccelerometerMagnitudeStd              : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...<BR>
 $ TimeGravityAccelerometerMagnitudeMean          : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...<BR>
 $ TimeGravityAccelerometerMagnitudeStd           : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...<BR>
 $ TimeBodyAccelerometerJerkMagnitudeMean         : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...<BR>
 $ TimeBodyAccelerometerJerkMagnitudeStd          : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...<BR>
 $ TimeBodyGyroscopeMagnitudeMean                 : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...<BR>
 $ TimeBodyGyroscopeMagnitudeStd                  : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...<BR>
 $ TimeBodyGyroscopeJerkMagnitudeMean             : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...<BR>
 $ TimeBodyGyroscopeJerkMagnitudeStd              : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...<BR>
 $ FrequencyBodyAccelerometerMeanX                : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...<BR>
 $ FrequencyBodyAccelerometerMeanY                : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...<BR>
 $ FrequencyBodyAccelerometerMeanZ                : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...<BR>
 $ FrequencyBodyAccelerometerStdX                 : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...<BR>
 $ FrequencyBodyAccelerometerStdY                 : num  -0.834 -0.917 -0.972 0.056 -0.113 ...<BR>
 $ FrequencyBodyAccelerometerStdZ                 : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...<BR>
 $ FrequencyBodyAccelerometerMeanFreqX            : num  -0.1588 -0.0495 0.0865 -0.2075 -0.3074 ...<BR>
 $ FrequencyBodyAccelerometerMeanFreqY            : num  0.0975 0.0759 0.1175 0.1131 0.0632 ...<BR>
 $ FrequencyBodyAccelerometerMeanFreqZ            : num  0.0894 0.2388 0.2449 0.0497 0.2943 ...<BR>
 $ FrequencyBodyAccelerometerJerkMeanX            : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...<BR>
 $ FrequencyBodyAccelerometerJerkMeanY            : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...<BR>
 $ FrequencyBodyAccelerometerJerkMeanZ            : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...<BR>
 $ FrequencyBodyAccelerometerJerkStdX             : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...<BR>
 $ FrequencyBodyAccelerometerJerkStdY             : num  -0.932 -0.983 -0.987 0.107 -0.135 ...<BR>
 $ FrequencyBodyAccelerometerJerkStdZ             : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...<BR>
 $ FrequencyBodyAccelerometerJerkMeanFreqX        : num  0.132 0.257 0.314 -0.209 -0.253 ...<BR>
 $ FrequencyBodyAccelerometerJerkMeanFreqY        : num  0.0245 0.0475 0.0392 -0.3862 -0.3376 ...<BR>
 $ FrequencyBodyAccelerometerJerkMeanFreqZ        : num  0.02439 0.09239 0.13858 -0.18553 0.00937 ...<BR>
 $ FrequencyBodyGyroscopeMeanX                    : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...<BR>
 $ FrequencyBodyGyroscopeMeanY                    : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...<BR>
 $ FrequencyBodyGyroscopeMeanZ                    : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...<BR>
 $ FrequencyBodyGyroscopeStdX                     : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...<BR>
 $ FrequencyBodyGyroscopeStdY                     : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...<BR>
 $ FrequencyBodyGyroscopeStdZ                     : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...<BR>
 $ FrequencyBodyGyroscopeMeanFreqX                : num  -0.00355 0.18915 -0.12029 0.01478 -0.10045 ...<BR>
 $ FrequencyBodyGyroscopeMeanFreqY                : num  -0.0915 0.0631 -0.0447 -0.0658 0.0826 ...<BR>
 $ FrequencyBodyGyroscopeMeanFreqZ                : num  0.010458 -0.029784 0.100608 0.000773 -0.075676 ...<BR>
 $ FrequencyBodyAccelerometerMagnitudeMean        : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...<BR>
 $ FrequencyBodyAccelerometerMagnitudeStd         : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...<BR>
 $ FrequencyBodyAccelerometerMagnitudeMeanFreq    : num  0.0864 0.2367 0.2846 0.1906 0.1192 ...<BR>
 $ FrequencyBodyAccelerometerJerkMagnitudeMean    : num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...<BR>
 $ FrequencyBodyAccelerometerJerkMagnitudeStd     : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...<BR>
 $ FrequencyBodyAccelerometerJerkMagnitudeMeanFreq: num  0.2664 0.3519 0.4222 0.0938 0.0765 ...<BR>
 $ FrequencyBodyGyroscopeMagnitudeMean            : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...<BR>
 $ FrequencyBodyGyroscopeMagnitudeStd             : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...<BR>
 $ FrequencyBodyGyroscopeMagnitudeMeanFreq        : num  -0.139775 -0.000262 -0.028606 0.268844 0.349614 ...<BR>
 $ FrequencyBodyGyroscopeJerkMagnitudeMean        : num  -0.942 -0.99 -0.995 -0.319 -0.282 ...<BR>
 $ FrequencyBodyGyroscopeJerkMagnitudeStd         : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...<BR>
 $ FrequencyBodyGyroscopeJerkMagnitudeMeanFreq    : num  0.176 0.185 0.334 0.191 0.19 ...<BR>
 $ AngleTimeBodyAccelerometerMeangravity          : num  0.021366 0.027442 -0.000222 0.060454 -0.002695 ...<BR>
 $ AngleTimeBodyAccelerometerJerkMeangravityMean  : num  0.00306 0.02971 0.02196 -0.00793 0.08993 ...<BR>
 $ AngleTimeBodyGyroscopeMeangravityMean          : num  -0.00167 0.0677 -0.03379 0.01306 0.06334 ...<BR>
 $ AngleTimeBodyGyroscopeJerkMeangravityMean      : num  0.0844 -0.0649 -0.0279 -0.0187 -0.04 ...<BR>
 $ AngleXgravityMean                              : num  0.427 -0.591 -0.743 -0.729 -0.744 ...<BR>
 $ AngleYgravityMean                              : num  -0.5203 -0.0605 0.2702 0.277 0.2672 ...<BR>
 $ AngleZgravityMean                              : num  -0.3524 -0.218 0.0123 0.0689 0.065 ...<BR></font>
