---
title: 'Exploratory Data Analysis:  Credit Card Fraud'
author: "Peter Caya"
date: "January 25, 2017"
output: html_document
---



## Distribution of Data

<img src="Exploratory_Data_Analysis__Credit_Card_Fraud_files/figure-html/summary1-1.png" width="672" />



<img src="Exploratory_Data_Analysis__Credit_Card_Fraud_files/figure-html/timeplot-1.png" width="672" />



Plot three shows an appreciable difference in the spending habits displayed between fraudulent and nonfraudulent transactions.  The legitimate transactions display a wider range of values than the fraudulent transactions.  Some of this appears to be related to outliers however.  

<img src="Exploratory_Data_Analysis__Credit_Card_Fraud_files/figure-html/Amount Plot-1.png" width="672" />



To get a better idea where values depart between the fraudulent and non-fraudelent data, it would be helpful to determine where the factors depart the most:



Table: Summary Statistics for Difference Between Features for Legitimate and Fraudulent Transactions

            Min         1Q         2Q         Mean         3Q         Max    
-------  ---------  ----------  ---------  ----------  ----------  ----------
Time      -406.00    12990.00    9140.00    14090.00    10800.00    2500.00  
V1        -25.86       5.12       2.36        4.78        1.74        0.32   
V2        -64.32      -1.79       -2.65      -3.63       -4.17       -3.16   
V3        -17.23       7.76       5.26        7.05        3.30        7.13   
V4         -4.37      -3.22       -4.20      -4.55       -5.61        4.77   
V5        -91.59       4.10       1.47        3.16        0.40       23.70   
V6        -19.75       1.74       1.15        1.40        0.81       66.83   
V7         11.80       7.41       3.08        5.58        1.52       114.80  
V8        -32.18      -0.01       -0.60      -0.57       -1.44       -1.30   
V9         7.14        3.23       2.16        2.59        1.39       12.24   
V10        9.85        7.22       4.49        5.69        3.07       19.72   
V11        -3.09      -2.74       -3.62      -3.81       -4.57       -2.02   
V12        3.54        8.29       5.64        6.27        3.59        6.47   
V13        -2.66       0.33       0.05        0.11       -0.01        4.31   
V14        0.82        9.27       6.78        6.98        4.78        7.09   
V15        0.11        0.06       0.11        0.09        0.04        6.41   
V16        4.01        6.10       3.62        4.15        1.75       14.18   
V17        8.06       11.47       5.24        6.68        1.74        2.51   
V18        4.13        4.17       1.66        2.25        0.41        1.25   
V19        -3.53      -0.16       -0.64      -0.68       -1.19        0.36   
V20       -50.37      -0.04       -0.35      -0.37       -0.69       28.36   
V21       -12.03      -0.27       -0.62      -0.71       -1.06       -4.59   
V22        -2.04      -0.01       -0.04      -0.01       -0.09        2.14   
V23       -25.56       0.18       0.06        0.04       -0.16       17.06   
V24        -0.81       0.08       0.10        0.11        0.15        3.49   
V25        -5.52       0.00       -0.07      -0.04       -0.11        5.31   
V26        -1.45      -0.07       -0.06      -0.05       -0.16        0.77   
V27       -15.31      -0.05       -0.39      -0.17       -0.74       28.56   
V28       -13.56       0.06       -0.14      -0.08       -0.30       32.07   
Amount     0.00        4.65       12.75      -33.91      -28.85     23564.00 

We can see that the standard deviation is 


Table: Standard Deviations for Difference Between Features for Legitimate and Fraudulent Transactions

          Legitimate Transactions    Fraudulent Transactions    Standard Deviation Difference 
-------  -------------------------  -------------------------  -------------------------------
Time             47484.02                   47835.37                       -351.35            
V1                 1.93                       6.78                          -4.85             
V2                 1.64                       4.29                          -2.66             
V3                 1.46                       7.11                          -5.65             
V4                 1.40                       2.87                          -1.47             
V5                 1.36                       5.37                          -4.02             
V6                 1.33                       1.86                          -0.53             
V7                 1.18                       7.21                          -6.03             
V8                 1.16                       6.80                          -5.64             
V9                 1.09                       2.50                          -1.41             
V10                1.04                       4.90                          -3.85             
V11                1.00                       2.68                          -1.68             
V12                0.95                       4.65                          -3.71             
V13                1.00                       1.10                          -0.11             
V14                0.90                       4.28                          -3.38             
V15                0.92                       1.05                          -0.13             
V16                0.84                       3.87                          -3.02             
V17                0.75                       6.97                          -6.22             
V18                0.82                       2.90                          -2.07             
V19                0.81                       1.54                          -0.73             
V20                0.77                       1.35                          -0.58             
V21                0.72                       3.87                          -3.15             
V22                0.72                       1.49                          -0.77             
V23                0.62                       1.58                          -0.96             
V24                0.61                       0.52                          0.09              
V25                0.52                       0.80                          -0.28             
V26                0.48                       0.47                          0.01              
V27                0.40                       1.38                          -0.98             
V28                0.33                       0.55                          -0.22             
Amount            250.11                     256.68                         -6.58             








## Measuring Accuracy

One of the major issues with this dataset is that fraudulent transactions take up 0.17% of the data.  This level precludes the use of conventional classification accuracy.  A trivial model which automatically classifies a sample from our dataset as legitimate would have a very high accuracy while at the same time being completely useless for our purposes.

To measure the accuracy of proposed models I will employ the following measures of classification accuracy:

1. Kappa
2. Confusion matrices.
3. The area under the ROC curve.
4. The area under the precision recall curve.














