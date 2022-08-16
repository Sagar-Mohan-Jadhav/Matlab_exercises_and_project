% find a pythagrean triplet such that a + b + c = 1000 and a < b < c
py_found = false;
for c = 3: 997
    for b = 2: c - 1
        for a = 1: b - 1
            if a + b + c == 1000 && c == sqrt(a^2 + b^2)
                fprintf('The pythagorean triplets are %d, %d, %d.\n', a, b, c)
                return  %stops the execution of code
            end
        end
    end
end

