# Common LLDB error messages 🚨

### 1. Error: No such file or directory 🗂️

**Description**:

Occurs when LLDB cannot find the executable you are trying to debug.

**Example**:
```sh
error: 'program' doesn't exist in the current directory
```

**Cause**:
- The file does not exist in the current directory, or you specified the wrong path.

**Fix**:
- Verify the file path and compile the program before debugging:
```sh
gcc -g -o program program.c
lldb ./program
```

### 2. Error: Breakpoint ID <id> not found ❌

**Description**:
- Happens when you try to delete, enable, or disable a nonexistent breakpoint.

**Example**:
```sh
error: Breakpoint ID 2 not found
```

**Cause**:
- The specified breakpoint ID does not exist or has been deleted.
**Fix**:
- Check the list of active breakpoints:
```sh
breakpoint list
```
Then manage the correct breakpoint ID.

### 3. Error: Invalid memory access (segmentation fault) 💥

**Description**:
- Indicates a segmentation fault (SIGSEGV) due to invalid memory access.

**Example**:
```sh
Process 12345 stopped with invalid memory access at address 0x00000000.
```
**Cause**:
- Dereferencing a NULL pointer.
- Accessing memory that hasn’t been allocated.
- Array index out of bounds.

**Fix**:
- Use backtrace to locate where the crash occurred:
```sh
backtrace
```

- Inspect variables at the point of failure:
```sh
frame variable
```

Fix the code to ensure proper memory management.

### 4. Error: Use of undeclared identifier 🔍

**Description**:
Compilation error indicating a variable, function, or constant is used without being declared.

**Example**:
```sh
error: use of undeclared identifier 'my_variable'
```

**Cause**:
- A typo in the variable or function name.
- Missing #include for required headers.

**Fix**:
- Verify the identifier is spelled correctly.
- Ensure all necessary headers are included.

### 5. Error: Symbol not found 🔗

**Description**:
- LLDB cannot find symbols (debug information) in the binary.

**Example**:
```sh
error: symbol 'main' not found
```

**Cause**:
- The program was compiled without debug symbols (-g flag).
- Using a stripped binary.

**Fix**:
Recompile the program with debug symbols:
```sh
gcc -g -o program program.c
```

### 6. Error: Invalid expression 🚫

**Description**:
- Happens when you try to evaluate an invalid expression.

**Example**:
```sh
error: invalid expression
```

**Cause**:
- Syntax error in the expression.
- Variable not in scope or incorrectly referenced.

**Fix**:
- Verify the expression’s syntax.
- Ensure the variable or function is accessible in the current frame.

### 7. Error: Unable to resolve file path 🗺️

**Description**:
- LLDB cannot find the source file for the specified breakpoint.

**Example**:
```sh
error: unable to resolve file path for 'program.c'
```

**Cause**:
- The file is not part of the debug symbols.
- The source file is missing or in a different directory.

**Fix**:
- Recompile the program with debug symbols:
```sh
gcc -g -o program program.c
```

- Ensure the source file exists in the expected path.

### 8. Error: Execution was interrupted ⏸️

**Description**:
- Happens when the debugger stops execution due to a breakpoint, signal, or error.

**Example**:
```sh
Process 12345 stopped
reason = breakpoint 1.1
```

**Cause**:
- A breakpoint was hit.
- A runtime error occurred (e.g., segmentation fault).

**Fix**:
- Use backtrace to identify the call stack:
```sh
backtrace
```

- Inspect the code at the stopping point:
```sh
list
```

### 9. Error: Watchpoint creation failed 👁️

**Description**:
- LLDB failed to set a watchpoint on a variable.

**Example**:
```sh
error: watchpoint creation failed
```

**Cause**:
- The variable’s memory is not addressable.
- Watchpoints are limited by hardware or debugger constraints.

**Fix**:
- Ensure the variable is in scope.
- Try an alternative approach (e.g., breakpoints and manual inspection).

### 10. Error: No threads found 🧵

**Description**:
- LLDB cannot find any running threads to debug.

**Example**:
```sh
error: no threads found
```

**Cause**:
- The program has terminated.
- The debugger is attached to the wrong process.

**Fix**:
- Ensure the program is running before attaching:
```sh
run
```

- Reattach to the correct process if needed:

```sh
attach <process_id>
```

### 11. Error: Unexpected signal received 🚨

**Description**:
- A signal (e.g., SIGSEGV, SIGABRT) interrupted program execution.

**Example**:
```sh
Process 12345 stopped
signal = SIGSEGV
```

**Cause**:
- Runtime error such as segmentation fault or illegal instruction.

**Fix**:
- Use backtrace to locate the source of the error:

```sh
backtrace
```
- Inspect variables and memory access.

### 12. Error: Invalid command ❓

**Description**:
- LLDB did not recognize the command you entered.

**Example**:
```sh
error: invalid command 'brakpoint set'
```

**Cause**:
- Typo in the command (e.g., brakpoint instead of breakpoint).
- Missing required parameters.

**Fix**:
- Check the correct syntax for the command:

```sh
help breakpoint

```
### 13. Error: Process exited with code <code> 🔚

**Description**:
The program finished execution with a specific exit code.

**Example**:
```sh
Process 12345 exited with code 1
```

**Cause**:
- Exit code 1 typically indicates an error in the program.
- Exit code 0 means successful termination.

**Fix**:
- Analyze the program’s logic for why it exited with the given code.
- Set breakpoints to debug the issue.


## Pro Tips - Tools to Analyze Error 🌟

**1. Use backtrace (or bt)**:
- Identify the call stack leading to the error.
```sh
backtrace
```

**2. Inspect Variables**:
- Use frame variable or print to examine variable values:

```sh
frame variable
print variable_name
```

**3. Step Through Code**:

- Use step or next to locate the exact line causing the issue:

```sh
step
```


---
