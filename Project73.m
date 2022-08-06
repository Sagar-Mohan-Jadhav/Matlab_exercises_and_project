%{
Take input of marks of 5 students in 5 different subjects and take average
of each student in 5 subjects and also average of all students in all
subjects.
%}

disp('Enter the marks of 5 students in their 5 subjects');
student_marks = [];
for i = 1:5
    fprintf('Enter the 5 subjects marks of the %dth student\n',i);
    marks = [];
    for j = 1:5
        fprintf('Enter the marks of subject %d\n',j);
        subject_marks = input('');
        marks = [marks subject_marks];
    end
    student_marks = [student_marks; marks];
end

fprintf('The average marks of each student in all subjects in order are\n');
disp(mean(student_marks'));
fprintf('The average marks of all students in all subjects combines are\n');
disp(mean(mean(student_marks)));