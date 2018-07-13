# Signals in Bash

Introduction to Linux systems and catching them in Bash.

## Signals

Signals can signify errors, external events, and explicit requests.

*SIGKILL* and *SIGSTOP* always kill or stop a process.
Applications can choose to handle or ignore all other signals.

TODO synchronous vs asynchronous

## Default Bash signals

Bash will catch *SIGINT*.
Bash wil ignore *SIGTERM* and *SIGQUIT*.
Bash will exit a shell with *SIGHUP*.


## List of signals

| Signal        | Value | Key       | Name              | Description   |
|---------------|:-----:|:---------:|:-----------------:|:-------------:|
| SIGHUP        | 1     |           | Hangup            | Terminate - terminal was disconnected |
| SIGINT        | 2     | Ctrl+C    | Interrupt         | Terminate the program gracefully. |
| SIGQUIT       | 3     | Ctrl+\    | Quit              | Terminate the program gracefully, with core dump. Used for debugging. |
| SIGABRT       | 6     |           | Abort             | Program detected an error and aborted itself. |
| SIGBUS        | 7     |           | Bus error         | Dereference invalid pointer. Attempt to access invalid address. |
| SIGKILL       | 9     |           | Kill              | Immediately terminate the program. Can not be handled, ignored or blocked; always fatal. |
| SIGUSR1       | 10    |           | User-defined 1    | |
| SIGSEGV       | 11    |           | Segfault          | Segmentation violation. Invalid access to valid memory. |
| SIGUSR2       | 12    |           | User-defined 2    | |
| SIGPIPE       | 13    |           | Broken pipe       | |
| SIGTERM       | 15    |           | Terminate         | Terminate, gracefully or not. Chance for cleanup. |
| SIGCHLD       | 17    |           | Child             | Child process terminated. Sent to parent process. |
| SIGCONT       | 18    |           | Continue          | Resume program that was paused with SIGSTOP. |
| SIGSTOP       | 19    |           | Stop              | Stop (pause) the program. Resume with SIGCONT? Can not be handled or ignored. |
| SIGTSTP       | 20    | Ctrl+Z    | Suspend           | Interactive stop. Can be handled or ignored, unlike SIGSTOP. |
|               | 20    | Ctrl+Y    | Delayed suspend   | |
| SIGIO         | 29    |           | IO                | File descriptor is ready for IO. Typically terminals and sockets only, but can be set with fcntl. |
| SIGSYS        | 31    |           | Bad system call   | |
| SIGRTMIN      | 34    |           |                   | |
| SIGRTMAX      | 64    |           |                   | |

## Links

  * Linux docs: `man 7 signal`
  * List of signals: `kill -l`
  * [GNU.org](https://www.gnu.org/software/libc/manual/html_node/Standard-Signals.html#Standard-Signals)
  * [Bash signal traps](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_12_02.html)
