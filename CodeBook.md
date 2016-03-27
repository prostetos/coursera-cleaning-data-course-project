---
title       : "Getting and Cleaning Data Course Project"
author      : Giannis S. Skoulikis 
date        : March 27, 2016

---

### Raw Data

The data for the project was obtained from the [**UC Irvine Machine Learning Repository**][1], where there is a full description abou the study. 

### Variables of the simulation


* **X_test**        : matrix name for_test.txt

* **subject_test**  : matrix name for subject_test.txt

* **y_test**        : matrix name for y_test.txt

* **X_train**       : matrix name for  X_train.txt

* **subject_train** : matrix name for subject_train.txt

* **y_train**       : matrix name for y_train.txt

* **activities**    : matrix name for activity_labels.txt

* **features**      : matrix name for features.txt

* **names_data**    : vector with the column names of the tidy data set tha is about to be constructed

* **final_data**    : complete tidy data set

* **used_data**     : tidy data set with only the measurements on the mean and standard deviation for each measurement

* **grouped_data**  : tidy data set with the average of each variable measured for each activity and subject


### Tidy Dataset 

activity and subject pairs: 180  
Variables: 68  


It is important to mention that in the final tidy dataset we include only the mean and standard deviations variables, not including mean frequency variables (meanFreq), as it is a value of Weighted Average of the frequency components to obtain a mean frequency.

Furthermore, we renamed the original variable names with the following slight changes: 

* "^t" equals **"Time"**
* "^f" equals **"Frequency"**
* "Mag" equals **"Magnitude"**
* "std" equals **"standard_deviation"**
* "Gyro" equals **"Gyroscope"**
* "Acc" equals **"Accelerometer"**

#### Variables of tidy dataset

* **subject**       : Numbers from 1 to 30, for each of the 30 different volunteers  **(integer)**

* **activity**      : The 6 different activities permormed from each volunteer  **(string)**
    - LAYING
    - SITTING 
    - STANDING
    - WALKING 
    - WALKING_DOWNSTAIRS 
    - WALKING_UPSTAIRS


* **measurements** : Mean values for each variable by activity and subject  **(real)**
    1.  Time.Body.Accelerometer.-mean()-X
    2.  Time.Body.Accelerometer.-mean()-Y 
    3.  Time.Body.Accelerometer.-mean()-Z
    4.  Time.Body.Accelerometer..standard_deviation()-X 
    5.  Time.Body.Accelerometer..standard_deviation()-Y 
    6.  Time.Body.Accelerometer..standard_deviation()-Z
    7.  Time.Gravity.Accelerometer.-mean()-X
    8.  Time.Gravity.Accelerometer.-mean()-Y
    9.  Time.Gravity.Accelerometer.-mean()-Z
    10. Time.Gravity.Accelerometer..standard_deviation()-X
    11. Time.Gravity.Accelerometer..standard_deviation()-Y
    12. Time.Gravity.Accelerometer..standard_deviation()-Z
    13. Time.Body.Accelerometer.Jerk.-mean()-X
    14. Time.Body.Accelerometer.Jerk.-mean()-Y
    15. Time.Body.Accelerometer.Jerk.-mean()-Z
    16. Time.Body.Accelerometer.Jerk..standard_deviation()-X
    17. Time.Body.Accelerometer.Jerk..standard_deviation()-Y
    18. Time.Body.Accelerometer.Jerk..standard_deviation()-Z
    19. Time.Body.Gyroscope.-mean()-X
    20. Time.Body.Gyroscope.-mean()-Y
    21. Time.Body.Gyroscope.-mean()-Z
    22. Time.Body.Gyroscope..standard_deviation()-X
    23. Time.Body.Gyroscope..standard_deviation()-Y
    24. Time.Body.Gyroscope..standard_deviation()-Z
    25. Time.Body.Gyroscope.Jerk.-mean()-X
    26. Time.Body.Gyroscope.Jerk.-mean()-Y
    27. Time.Body.Gyroscope.Jerk.-mean()-Z
    28. Time.Body.Gyroscope.Jerk..standard_deviation()-X
    29. Time.Body.Gyroscope.Jerk..standard_deviation()-Y
    30. Time.Body.Gyroscope.Jerk..standard_deviation()-Z
    31. Time.Body.Accelerometer.Magnitude.-mean()
    32. Time.Body.Accelerometer.Magnitude..standard_deviation()
    33. Time.Gravity.Accelerometer.Magnitude.-mean()
    34. Time.Gravity.Accelerometer.Magnitude..standard_deviation()
    35. Time.Body.Accelerometer.Jerk.Magnitude.-mean()
    36. Time.Body.Accelerometer.Jerk.Magnitude..standard_deviation()
    37. Time.Body.Gyroscope.Magnitude.-mean()
    38. Time.Body.Gyroscope.Magnitude..standard_deviation()
    39. Time.Body.Gyroscope.Jerk.Magnitude.-mean()
    40. Time.Body.Gyroscope.Jerk.Magnitude..standard_deviation()
    41. Frequency.Body.Accelerometer.-mean()-X
    42. Frequency.Body.Accelerometer.-mean()-Y
    43. Frequency.Body.Accelerometer.-mean()-Z
    44. Frequency.Body.Accelerometer..standard_deviation()-X
    45. Frequency.Body.Accelerometer..standard_deviation()-Y
    46. Frequency.Body.Accelerometer..standard_deviation()-Z
    47. Frequency.Body.Accelerometer.Jerk.-mean()-X
    48. Frequency.Body.Accelerometer.Jerk.-mean()-Y
    49. Frequency.Body.Accelerometer.Jerk.-mean()-Z
    50. Frequency.Body.Accelerometer.Jerk..standard_deviation()-X
    51. Frequency.Body.Accelerometer.Jerk..standard_deviation()-Y
    52. Frequency.Body.Accelerometer.Jerk..standard_deviation()-Z
    53. Frequency.Body.Gyroscope.-mean()-X
    54. Frequency.Body.Gyroscope.-mean()-Y
    55. Frequency.Body.Gyroscope.-mean()-Z
    56. Frequency.Body.Gyroscope..standard_deviation()-X
    57. Frequency.Body.Gyroscope..standard_deviation()-Y
    58. Frequency.Body.Gyroscope..standard_deviation()-Z
    59. Frequency.Body.Accelerometer.Magnitude.-mean()
    60. Frequency.Body.Accelerometer.Magnitude..standard_deviation()
    61. Frequency.Body.Accelerometer.Jerk.Magnitude.-mean()
    62. Frequency.Body.Accelerometer.Jerk.Magnitude..standard_deviation()
    63. Frequency.Body.Gyroscope.Magnitude.-mean()
    64. Frequency.Body.Gyroscope.Magnitude..standard_deviation()
    65. Frequency.Body.Gyroscope.Jerk.Magnitude.-mean()
    66. Frequency.Body.Gyroscope.Jerk.Magnitude..standard_deviation()


[1]: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones "**UC Irvine Machine Learning Repository**"