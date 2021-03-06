# Getting and Cleaning Data Course Project Codebook
This is the code book that describes the course project's result data set "tidy_data.txt".

Tidy data file contains transformed data from "Human Activity Recognition Using Smartphones Data Set" experiment. The data is transformed as follows.
1. Data files are merged so there is only one data file.
2. Only mean and std variables are get.
3. Activity IDs are replaced with descriptive names.
4. Data is grouped by subject and activity with mean aggregation.

#### Data set columns
*Description for columns 3-81 can be found in original data set's features info file.*
1. subject - subject identificator
2. activity - activity while measurement: WALKING, WALKING_UPSTAIRS
, WALKING_DOWNSTAIRS
, SITTING, STANDING
 or LAYING

3. tBodyAccMeanX
4. tBodyAccMeanY
5. tBodyAccMeanZ
6. tBodyAccStdX                
7. tBodyAccStdY                 
8. tBodyAccStdZ                
9. tGravityAccMeanX             
10. tGravityAccMeanY            
11. tGravityAccMeanZ             
12. tGravityAccStdX             
13. tGravityAccStdY              
14. tGravityAccStdZ             
15. tBodyAccJerkMeanX            
16. tBodyAccJerkMeanY           
17. tBodyAccJerkMeanZ            
18. tBodyAccJerkStdX            
19. tBodyAccJerkStdY             
20. tBodyAccJerkStdZ            
21. tBodyGyroMeanX               
22. tBodyGyroMeanY              
23. tBodyGyroMeanZ               
24. tBodyGyroStdX               
25. tBodyGyroStdY                
26. tBodyGyroStdZ               
27. tBodyGyroJerkMeanX           
28. tBodyGyroJerkMeanY          
29. tBodyGyroJerkMeanZ           
30. tBodyGyroJerkStdX           
31. tBodyGyroJerkStdY            
32. tBodyGyroJerkStdZ           
33. tBodyAccMagMean              
34. tBodyAccMagStd              
35. tGravityAccMagMean           
36. tGravityAccMagStd           
37. tBodyAccJerkMagMean          
38. tBodyAccJerkMagStd          
39. tBodyGyroMagMean             
40. tBodyGyroMagStd             
41. tBodyGyroJerkMagMean         
42. tBodyGyroJerkMagStd         
43. fBodyAccMeanX                
44. fBodyAccMeanY               
45. fBodyAccMeanZ                
46. fBodyAccStdX                
47. fBodyAccStdY                 
48. fBodyAccStdZ                
49. fBodyAccMeanFreqX            
50. fBodyAccMeanFreqY           
51. fBodyAccMeanFreqZ            
52. fBodyAccJerkMeanX           
53. fBodyAccJerkMeanY            
54. fBodyAccJerkMeanZ           
55. fBodyAccJerkStdX             
56. fBodyAccJerkStdY            
57. fBodyAccJerkStdZ             
58. fBodyAccJerkMeanFreqX       
59. fBodyAccJerkMeanFreqY        
60. fBodyAccJerkMeanFreqZ       
61. fBodyGyroMeanX               
62. fBodyGyroMeanY              
63. fBodyGyroMeanZ               
64. fBodyGyroStdX               
65. fBodyGyroStdY                
66. fBodyGyroStdZ               
67. fBodyGyroMeanFreqX           
68. fBodyGyroMeanFreqY          
69. fBodyGyroMeanFreqZ           
70. fBodyAccMagMean             
71. fBodyAccMagStd               
72. fBodyAccMagMeanFreq         
73. fBodyBodyAccJerkMagMean      
74. fBodyBodyAccJerkMagStd      
75. fBodyBodyAccJerkMagMeanFreq  
76. fBodyBodyGyroMagMean        
77. fBodyBodyGyroMagStd          
78. fBodyBodyGyroMagMeanFreq    
79. fBodyBodyGyroJerkMagMean     
80. fBodyBodyGyroJerkMagStd     
81. fBodyBodyGyroJerkMagMeanFreq
