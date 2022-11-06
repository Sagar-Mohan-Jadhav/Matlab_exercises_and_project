function obtain_results(search_words, combinations, max_index)
words =  search_words(combinations(max_index, :));
for index = 1: length(words)
    fprintf("%s ", words(index))
end
fprintf('\n')
pause(1)
import java.awt.Robot;
import java.awt.event.*;
robot = java.awt.Robot();
Screen_size = get(0, 'ScreenSize');
Loc_search = [357*(Screen_size(3)/1536) 87*(Screen_size(4)/864)];
robot.mouseMove(1, 1);
robot.mouseMove(Loc_search(1), Screen_size(4)- Loc_search(2) + 1);
robot.mousePress(KeyEvent.BUTTON1_MASK);
Loc_search = [900*(Screen_size(3)/1536) -110*(Screen_size(4)/864)];
robot.delay(5000)
robot.mouseMove(Loc_search(1), Screen_size(4)- Loc_search(2) + 1);
robot.mouseRelease(KeyEvent.BUTTON1_MASK);
robot.delay(2000)
robot.keyPress(KeyEvent.VK_CONTROL);
robot.keyPress(KeyEvent.VK_C);
robot.keyRelease(KeyEvent.VK_CONTROL);
robot.keyRelease(KeyEvent.VK_C);

Loc_search = [192*(Screen_size(3)/1536) 18*(Screen_size(4)/864)];
robot.mouseMove(1, 1);
robot.mouseMove(Loc_search(1), Screen_size(4)- Loc_search(2) + 1);
robot.mousePress(KeyEvent.BUTTON1_MASK);
robot.mouseRelease(KeyEvent.BUTTON1_MASK);
robot.delay(3000);
robot.keyPress(KeyEvent.VK_C);
robot.keyRelease(KeyEvent.VK_C);
robot.keyPress(KeyEvent.VK_H);
robot.keyRelease(KeyEvent.VK_H);
robot.keyPress(KeyEvent.VK_R);
robot.keyRelease(KeyEvent.VK_R);
robot.keyPress(KeyEvent.VK_O);
robot.keyRelease(KeyEvent.VK_O);
robot.keyPress(KeyEvent.VK_M);
robot.keyRelease(KeyEvent.VK_M);
robot.keyPress(KeyEvent.VK_E);
robot.keyRelease(KeyEvent.VK_E);
robot.delay(4000);
robot.keyPress(KeyEvent.VK_ENTER);
robot.keyRelease(KeyEvent.VK_ENTER);
robot.delay(4000);
robot.keyPress(KeyEvent.VK_CONTROL);
robot.keyPress(KeyEvent.VK_SHIFT);
robot.keyPress(KeyEvent.VK_N);
robot.keyRelease(KeyEvent.VK_CONTROL);
robot.keyRelease(KeyEvent.VK_SHIFT);
robot.keyRelease(KeyEvent.VK_N);
robot.delay(3000);
robot.keyPress(KeyEvent.VK_B);
robot.keyRelease(KeyEvent.VK_B);
robot.keyPress(KeyEvent.VK_R);
robot.keyRelease(KeyEvent.VK_R);
robot.keyPress(KeyEvent.VK_A);
robot.keyRelease(KeyEvent.VK_A);
robot.keyPress(KeyEvent.VK_V);
robot.keyRelease(KeyEvent.VK_V);
robot.keyPress(KeyEvent.VK_E);
robot.keyRelease(KeyEvent.VK_E);
robot.keyPress(KeyEvent.VK_SPACE);
robot.keyRelease(KeyEvent.VK_SPACE);
robot.keyPress(KeyEvent.VK_S);
robot.keyRelease(KeyEvent.VK_S);
robot.keyPress(KeyEvent.VK_E);
robot.keyRelease(KeyEvent.VK_E);
robot.keyPress(KeyEvent.VK_A);
robot.keyRelease(KeyEvent.VK_A);
robot.keyPress(KeyEvent.VK_R);
robot.keyRelease(KeyEvent.VK_R);
robot.keyPress(KeyEvent.VK_C);
robot.keyRelease(KeyEvent.VK_C);
robot.keyPress(KeyEvent.VK_H);
robot.keyRelease(KeyEvent.VK_H);
robot.keyPress(KeyEvent.VK_ENTER);
robot.keyRelease(KeyEvent.VK_ENTER);
robot.delay(2000);
robot.keyPress(KeyEvent.VK_TAB);
robot.keyRelease(KeyEvent.VK_TAB);
robot.delay(2000);
robot.keyPress(KeyEvent.VK_TAB);
robot.keyRelease(KeyEvent.VK_TAB);
robot.delay(1400);
robot.keyPress(KeyEvent.VK_TAB);
robot.keyRelease(KeyEvent.VK_TAB);
robot.delay(1400);
robot.keyPress(KeyEvent.VK_TAB);
robot.keyRelease(KeyEvent.VK_TAB);
robot.delay(1400);
robot.keyPress(KeyEvent.VK_TAB);
robot.keyRelease(KeyEvent.VK_TAB);
robot.delay(1400);
robot.keyPress(KeyEvent.VK_ENTER);
robot.keyRelease(KeyEvent.VK_ENTER);
robot.delay(1400);
for index = 1: 16
    robot.keyPress(KeyEvent.VK_TAB);
    robot.keyRelease(KeyEvent.VK_TAB);
end
robot.keyPress(KeyEvent.VK_ENTER);
robot.keyRelease(KeyEvent.VK_ENTER);
robot.delay(2000);
robot.keyPress(KeyEvent.VK_CONTROL);
robot.keyPress(KeyEvent.VK_V);
robot.keyRelease(KeyEvent.VK_CONTROL);
robot.keyRelease(KeyEvent.VK_V);
robot.delay(700);
robot.keyPress(KeyEvent.VK_ENTER);
robot.keyRelease(KeyEvent.VK_ENTER);
end