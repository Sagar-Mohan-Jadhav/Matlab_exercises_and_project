disp('Enter the student marks in percentages ');
student_marks = [];
for i = 1:10
    fprintf('Enter the marks of %dth student\n',i);
    marks = input('');
    student_marks = [student_marks marks];
end
disp('The average marks of students are');
disp(mean(student_marks));