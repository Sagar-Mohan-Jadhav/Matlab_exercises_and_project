% firsty, importing the required data.
data = readtable('Social_Network_Ads.csv');

%converting the data values to more reasonable range
conv_age = (data.Age - mean(data.Age))/std(data.Age);
data.Age = conv_age;
conv_estimatedsalary = (data.EstimatedSalary - mean(data.EstimatedSalary))/std(data.EstimatedSalary);
data.EstimatedSalary = conv_estimatedsalary;

%classification of data
classified_data = fitcknn(data, 'Purchased~Age+EstimatedSalary');
%now comes division of data into testing and training sets.
cv = cvpartition(classified_data.NumObservations, 'HoldOut', 0.2);
%crossval function shows which data points are being used for testing and
%which for training.
cross_data = crossval(classified_data, 'cvpartition', cv);
%to see the data being chose for testing and training
predict_data = predict(cross_data.Trained{1}, data(test(cv),1:end-1));
%to determine whether the predictions are correct or not
result_data = confusionmat(cross_data.Y(test(cv)), predict_data);


