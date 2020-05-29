# A Word Search using 8086 Microprocessor 
 - this project is an assembly code that runs on the Intel 8086 microprocessor chip to read a sentence from the user through keyboard input    and then reads a word and then prints out how many times the word was found in the sentence.
 - The keyboard is used to enter the sentence and the word. 
 - The display unit is used to indicate the state. 
## pseduecode:
1. When the program starts, the user should get instructions to enter the sentence. “Enter” terminates this task.
     - If no sentence entered, repeat this step and time out after 3 counts. 
2. Once the microprocessor receives the sentence, it should store all characters and recognize the spaces as separators. 
3. The user then gets instructions to enter the word. “Enter” terminates this task. If no sentence entered, repeat this step and time out      after 3 counts.
4. You may use any search algorithm to find the matching between the word and the previously saved words from the sentence. 
5. The program should display the state on the display unit. “A” means reading sentence, “B” means reading word, “C” means printing          results. 
6. If the sentence exceeds 30 characters or the word exceeds 10 characters, the program should error out and restart the step.
7. The program should count how many times the word was found and print the count value to the printer virtual device at port 130 as “Count value = X” every time the counter changes. Note that you should convert the count value to the equivalent ASCII code before printing it out. 
## code is implemetned and tested on emu8086 emulator software.
