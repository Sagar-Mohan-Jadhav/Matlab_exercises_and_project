% student grades are to be noted, all students may have different number of
% subjects so write a matlab loop which will take in the grades of diffrent
% students and give the option to user to stop entering when he wishes.

fprintf('Enter the number of students: \n')
student = input('');
subject_count = 1;
student_marks = [];
all_student_marks = [];

for i = 1:student
    fprintf('Enter the subject wise marks of %dth student\n',i);
    loop_on = logical(1);
    while loop_on == logical(1)
        fprintf('Enter the marks of subject %d\n', subject_count);
        subject = input('');
        student_marks = [student_marks subject];
        proceed = input('Do you wish to continue: yes or no: ', 's');
        if proceed == string('no')
            loop_on = logical(0);
        else
            loop_on = logical(1);
        end
        subject_count = subject_count + 1;
    end
    subject_count = 1;
    all_student_marks = [all_student_marks; student_marks];
    student_marks = [];
end

disp(all_student_marks);