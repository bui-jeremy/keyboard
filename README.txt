CS 552 - Keyboard Interrupt README - Jeremy Bui

File Contents: 
The keyboard module comes with 3 files: Makefile, interrupt_module.c, and interrupt_test.c. 

Functions of Keyboard module: 
The user is provided the function to interact with the implemented interrupt driver to display typed keys. The deletion (backspace) and capitalizaation (shift) methods of keys are also supported. As of now, the keys displayed are not just from our interrupt request, but also from the native keyboard driver. Therefore, to differentiate this the interrupt-generated keys are changed to green. 

How to Run: 
1. Place all three files in the desired directory.
2. "make build_module" to compile the interrupt_module.c and generate a interrupt_module.ko.
3. "make load" to insmod the interrupt_module.ko into the kernel.
4. "gcc -o test interrupt_test.c" to create an executable named "test."
5. "./test" to start the capturing of the interrupts and accessing the additional features implemented. 
	- "key" to display key
	- "shift key" to display capitalized key
	- "backspace" to delete previously entered key
6. "Ctrl + C" to terminate the test executable.
7. "make unload" to rmmode the keyboard interrupt module that was created. 

Sources Used:
https://tldp.org/LDP/lkmpg/2.6/html/index.html
https://tldp.org/LDP/lkmpg/2.6/html/x1256.html
https://cs-people.bu.edu/njavro/classes/CS552/Labs/Lab2/sol/
https://elixir.bootlin.com/linux/latest/source
https://docs.kernel.org/driver-api/ioctl.html
https://www.win.tue.nl/~aeb/linux/kbd/scancodes-10.html#scancodesets