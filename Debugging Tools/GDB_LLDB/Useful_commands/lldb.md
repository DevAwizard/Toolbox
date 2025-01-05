# LLDB Commands Cheat Sheet

### 1. Starting and Running the Debugger
- `lldb ./program`: Launch LLDB with the executable program.
- `target create ./program`: Specify the target program to debug.
- `run or r`: Run the program in the debugger.
- `process launch`: Start the program (alternative to run).
- `process kill`: Stop the running process in the debugger.
- `exit` or `quit`: Exit LLDB.

### 2. Breakpoints
- `breakpoint set --name main`: Set a breakpoint at the main function.
- `breakpoint set --file file.c --line 42`: Set a breakpoint in file.c at line 42.
- `breakpoint set --address 0x123456`: Set a breakpoint at a specific memory address.
- `breakpoint list`: List all breakpoints.
- `breakpoint delete`: Delete all breakpoints.
- `breakpoint delete <id>`: Delete a specific breakpoint by its ID.
- `breakpoint enable <id>`: Enable a specific breakpoint.
- `breakpoint disable <id>`: Disable a specific breakpoint.

### 3. Stepping Through Code
- `step` or `s`: Step into the current line (enter functions).
- `next` or `n`: Step over the current line (do not enter functions).
- `finish`: Run until the current function exits.
- `continue` or `c`: Continue running the program until the next breakpoint.

### 4. Inspecting Program State
- `frame variable` or `fr v`: Show all variables in the current stack frame.
- `print <variable>` or `p`: Print the value of a specific variable.
- `print *pointer`: Dereference and print the value of a pointer.
- `type lookup <type>`: Show details about a specific type (e.g., int, struct).
- `register read`: Show the current CPU register values.
- `memory read <address>`: Read memory at a specific address.
- `watchpoint set variable <v>`: Set a watchpoint to monitor changes to a variable.

### 5. Stack and Call Frames
- `backtrace or bt`: Show the call stack for the current thread.
- `thread backtrace`: Show the call stack for all threads.
- `frame select <id>`: Select a specific stack frame by its ID.
- `frame info`: Display information about the current frame.

### 6. Threads
- `thread list`: List all threads in the program.
- `thread select <id>`: Select a specific thread by its ID.
- `thread step-in`: Step into the next instruction in the current thread.
- `thread step-over`: Step over the current instruction in the current thread.
- `thread continue`: Continue the execution of the current thread.

### 7. Watching and Modifying Variables
- `expr <variable> = <value>`: Change the value of a variable at runtime.
- `watchpoint set variable <v>`: Set a watchpoint to monitor changes to a variable.
- `watchpoint delete <id>`: Delete a specific watchpoint by its ID.

### 8. Debugging Information
- `list`: Show the source code around the current execution point.
- `disassemble`: Show the disassembled machine code for the current frame.
- `info variables`: List all global and static variables.
- `image list`: List all loaded shared libraries and executable files.

### 9. Debugging Memory
- `memory read <address>`: Display the memory contents at a specific address.
- `memory write <address> <value>`: Write a value to a specific memory address.
- `memory find <start> <end>`: Search for a specific value in a memory range.

### 10. Help and Documentation
- `help`: Show general help information.
- `help <command>`: Show detailed help about a specific command.
- `apropos <keyword>`: Search for commands related to a specific keyword.

### LLDB GUI (Optional)

LLDB provides a text-based GUI for easier navigation and debugging:
- Start the GUI by running:

```sh
lldb -o gui ./program
```
- The GUI provides panels for breakpoints, stack traces, source code, and registers.




---
