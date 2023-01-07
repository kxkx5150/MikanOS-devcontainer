TARGET = kernel.elf
OBJS = main.o

CXXFLAGS += -fshort-wchar -O2 --target=x86_64-elf -fno-exceptions -ffreestanding 
LDFLAGS += -z separate-code --entry KernelMain -z norelro --image-base 0x100000 --static


.PHONY: all
all: $(TARGET)

.PHONY: clean
clean:
	rm -rf *.o

kernel.elf: $(OBJS) Makefile
	ld.lld $(LDFLAGS) -o kernel.elf $(OBJS)

%.o: %.cpp Makefile
	clang++ $(CPPFLAGS) $(CXXFLAGS) -c $<




