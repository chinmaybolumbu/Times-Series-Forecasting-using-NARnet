# Times-Series-Forecasting-using-NARnet
Artificial Neural Computation (EEE 511) - Machine Learning
Project - 2         TIME SERIES FORECASTING
==============================================
Team - 6
Chandini Radhakrishnan    1213321783
Chinmay Bolumbu           1213329869
Vignesh Namasivayam       1213341361
==============================================
Steps:
I. To Compare Predicted Values with Test Data:
    1. Open 'Project2_Team6.m' Matlab file.
    2. In the Command Window type: load('Proj2_Team6_Predicted.mat') and hit Enter.
       This step loads our final predicted values to the workspace with the name as 'predictdata'. 
    3. Now load your test data into the workspace by typing in Command Window:     testdata = xlsread('filename.xlsx').
    4. You can compare and evaluate between the loaded Test data (testdata) and our Predicted Values (predictdata) available in the workspace.


----------------------------------------------------------------------------------------------------------------------------------------

II. To Train the Model (275 Data points):
    1. Open 'Project2_Team6.m' Matlab file.
    2. Uncomment 'For Model Training' Part of the Code.
    3. Comment the entire 'For Prediction' Part of the Code.
    4. Place the Training Data (.xlsx file) in the same folder as that of the 'Project2_Team6.m' Matlab file.
    5. Run the Code.
    6. Variable 'RMSE' gives the value of RMS Error between Predicted Values and Training Data values.
       'y_predict' variable contains the values predicted by the model based on 245 data points of the total 275 values.


  
III.To Predict values using the Testing Data (275 Data points):
    1. Open 'Project2_Team6.m' Matlab file.
    2. Place the Test Data (.xlsx file) in the same folder as that of the 'Project2_Team6.m' Matlab file.
    3. Run the Code.
    4. 'predictdata' will contain the new predicted values for the given set of Data Values.


   

 
