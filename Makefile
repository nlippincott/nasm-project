AS:=nasm
ASFLAGS:=-g -felf64 -Fdwarf

CC:=gcc
CFLAGS:=-g

SRCS_ASM := $(wildcard *.asm)
SRCS_C := $(wildcard *.c)

INCS_ASM := $(wildcard *.inc)
INCS_C := $(wildcard *.h)

OBJS := $(patsubst %.c,%.c.o,$(SRCS_C)) $(patsubst %.asm,%.a.o,$(SRCS_ASM))

a.out: $(OBJS)
	$(CC) $(CFLAGS) -no-pie $^

%.a.o : %.asm $(INCS_ASM)
	$(AS) $(ASFLAGS) $< -o $@

%.c.o: %.c $(INCS_C)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf a.out *.o