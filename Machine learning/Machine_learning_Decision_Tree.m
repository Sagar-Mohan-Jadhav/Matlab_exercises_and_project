%Desicion tree method
% firsty, importing the required data.
data = readtable('Social_Network_Ads.csv');

%converting the data values to more reasonable range
conv_age = (data.Age - mean(data.Age))/std(data.Age);
data.Age = conv_age;
conv_estimatedsalary = (data.EstimatedSalary - mean(data.EstimatedSalary))/std(data.EstimatedSalary);
data.EstimatedSalary = conv_estimatedsalary;

%classification of data
classified_data = fitctree(data, 'Purchased~Age+EstimatedSalary');
%now comes division of data into testing and training sets.
cv = cvpartition(classified_data.NumObservations, 'HoldOut', 0.2);
%crossval function shows which data points are being used for testing and
%which for training.
cross_data = crossval(classified_data, 'cvpartition', cv);
%to see the data being chose for testing and training
predict_data = predict(cross_data.Trained{1}, data(test(cv),1:end-1));
%to determine whether the predictions are correct or not
result_data = confusionmat(cross_data.Y(test(cv)), predict_data);

% plotting the data
% first taking different categories on which the classification is based on
categories = unique(data.Purchased);
%defining the range of the plot
range_age = min(data.Age(training(cv)))-1 : 0.01: max(data.Age(training(cv)))+1;
range_salary = min(data.EstimatedSalary(training(cv)))-1 : 0.01: max(data.EstimatedSalary(training(cv)))+1;
%converting the range data to x and y co-ordinates namely X, Y
[X, Y] = meshgrid(range_age, range_salary);
XYgrid = [X(:), Y(:)];
%applying the prediction on each grid point(X, Y point).
meshgrid_prediction = predict(cross_data.Trained{1}, XYgrid);
%plotting the prediction regions for both Purchased and NotPurchased cases
gscatter(X(:), Y(:), meshgrid_prediction, 'rgb');
hold on
%now plotting the points as well
training_data = data(training(cv), :);
Purchased_points = ismember(training_data.Purchased, categories{2});

scatter(training_data.Age(Purchased_points), training_data.EstimatedSalary(Purchased_points), 'o', 'MarkerEdgeColor','black', 'MarkerFaceColor','red')
scatter(training_data.Age(~Purchased_points), training_data.EstimatedSalary(~Purchased_points), '^', 'MarkerEdgeColor','black', 'MarkerFaceColor','green')
xlabel('Age')
ylabel('Estimated salary')
title('Decision Tree')
legend ('Not Purchase Prediction Region', 'Purchase Prediction Region', 'Purchased Points', 'Not Purchased Points', 'Location','northeast')
%to remove the white spaces near the axes
axis tight
