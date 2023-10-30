# NASM Assembly

A Codepsaces template for building, running, and debugging assembly programs
using the NASM assembler.

Intended for a course in *Computer Organization*, this template includes
tasks for building the assembly source file that is currently open in the editor.
Two build options are included: one for building a pure assembly program
requiring no external libraries (*nasm - Assemble/link/debug active file*),
and another for building an assembly program to be linked with the
C library (*nasmc - Assemble/link/debug active file w/ C library*).

Two sample programs are included:

- ***hello-world.asm*** - Writes "Hello World!" to the console using the
*syscall* instruction. This file may be built and run using only assembly
instructions - no linking with external libraries is necessary. The program
entry point is *_start*.
- ***hello-world-c.asm*** - Writes "Hello World!" to the console using the
*printf* function from the C library. This file must be linked with the
C library. The program entry point is *main*.