import java.awt.Robot;
import java.awt.event.*;
robot = java.awt.Robot();

Loc_search = [192 18];
Screen_size = get(0, 'ScreenSize');
robot.mouseMove(1, 1);
robot.mouseMove(Loc_search(1), Screen_size(4)- Loc_search(2) + 1);
robot.mousePress(KeyEvent.BUTTON1_MASK);
robot.mouseRelease(KeyEvent.BUTTON1_MASK);
robot.delay(1000);
robot.keyPress(KeyEvent.VK_N);
robot.keyRelease(KeyEvent.VK_N);
robot.keyPress(KeyEvent.VK_O);
robot.keyRelease(KeyEvent.VK_O);
robot.keyPress(KeyEvent.VK_T);
robot.keyRelease(KeyEvent.VK_T);
robot.keyPress(KeyEvent.VK_E);
robot.keyRelease(KeyEvent.VK_E);
robot.keyPress(KeyEvent.VK_P);
robot.keyRelease(KeyEvent.VK_P);
robot.keyPress(KeyEvent.VK_A);
robot.keyRelease(KeyEvent.VK_A);
robot.keyPress(KeyEvent.VK_D);
robot.keyRelease(KeyEvent.VK_D);
robot.delay(1000);
robot.keyPress(KeyEvent.VK_ENTER);
robot.keyRelease(KeyEvent.VK_ENTER);
robot.delay(2000);

robot.keyPress(KeyEvent.VK_H);
robot.keyRelease(KeyEvent.VK_H);
robot.keyPress(KeyEvent.VK_E);
robot.keyRelease(KeyEvent.VK_E);
robot.keyPress(KeyEvent.VK_L);
robot.keyRelease(KeyEvent.VK_L);
robot.keyPress(KeyEvent.VK_L);
robot.keyRelease(KeyEvent.VK_L);
robot.keyPress(KeyEvent.VK_O);
robot.keyRelease(KeyEvent.VK_O);
robot.keyPress(KeyEvent.VK_SPACE);
robot.keyRelease(KeyEvent.VK_SPACE);
robot.keyPress(KeyEvent.VK_T);
robot.keyRelease(KeyEvent.VK_T);
robot.keyPress(KeyEvent.VK_H);
robot.keyRelease(KeyEvent.VK_H);
robot.keyPress(KeyEvent.VK_E);
robot.keyRelease(KeyEvent.VK_E);
robot.keyPress(KeyEvent.VK_R);
robot.keyRelease(KeyEvent.VK_R);
robot.keyPress(KeyEvent.VK_E);
robot.keyRelease(KeyEvent.VK_E);
robot.keyPress(KeyEvent.VK_SHIFT);
robot.keyPress(KeyEvent.VK_1);
robot.keyRelease(KeyEvent.VK_SHIFT);
robot.keyRelease(KeyEvent.VK_1);

robot.delay(2000);

robot.keyPress(KeyEvent.VK_ALT);
robot.keyPress(KeyEvent.VK_F4);
robot.keyRelease(KeyEvent.VK_ALT);
robot.keyRelease(KeyEvent.VK_F4);

robot.delay(1000);

robot.keyPress(KeyEvent.VK_RIGHT);
robot.keyRelease(KeyEvent.VK_RIGHT);
robot.delay(1000);
robot.keyPress(KeyEvent.VK_ENTER);
robot.keyRelease(KeyEvent.VK_ENTER);

