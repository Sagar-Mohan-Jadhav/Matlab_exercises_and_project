%a professor took exam of 10 students and now he wants to give them a grade
%according to the their performance, he will give input of the marks and
%the grade will be automatically calculated. but there were some students
%who were abscent in the exam and are going to retake the exam so the
%professor wants to skip those students and does not want to give them a
%zero in exam.
all_grades = [];
for i = 1:10
    fprintf('was the student no. %d present? yes or no:\n', i);
    present = input('','s');
    if present == string('no')
        grade = "Not present";
        all_grades = [all_grades; grade];
        continue
    elseif present == string('yes')
        fprintf('Enter the marks of the student no. %d: \n', i);
        marks = input('');
        if marks >= 90
            grade = 'A';
        elseif marks >= 80
            grade = 'B';
        elseif marks >= 70
            grade = 'C';
        elseif marks >= 60
            grade = 'D';
        elseif marks >= 50
            grade = 'E';
        else
            grade = 'F';
        end
    end
    all_grades = [all_grades; grade];
end
disp('All student grades in sequencial input are as follows:');
disp(all_grades);