


constants	:= modify

SOURCES		:=  src
BUILD		:= build

PREFIX		:=	arm-none-eabi-
CC	:=	$(PREFIX)gcc
OBJCOPY := arm-none-eabi-objcopy



ARCH	:=	-mthumb -mthumb-interwork

CFLAGS	:=	-O3\
		-mcpu=arm7tdmi -mtune=arm7tdmi\
 		-fomit-frame-pointer\
		-ffast-math \
		$(ARCH)





SFILES		:=$(foreach dir,$(SOURCES),$(wildcard $(dir)/*.s)) 
CFILES :=$(foreach dir,$(SOURCES),$(wildcard $(dir)/*.c))

export OFILES_CSOURCES := $(CFILES:.c=.o)

export OFILES_SOURCES := $(SFILES:.s=.o) 

export OFILES := $(OFILES_SOURCES)



DEPSDIR	:=	$(CURDIR)/$(BUILD)




# Rule to link the object files into an executable


#---------------------------------------------------------------------------------
$(BUILD):
	@[ -d $@ ] || mkdir -p $@ output
	
#---------------------------------------------------------------------------------
gregrom: $(BUILD) rom
	
	$(OBJCOPY) -O binary -S output/a.elf ../output/bn6.gba --set-section-flags .hookToRandomize=alloc

falzrom:$(BUILD) linkerf
	$(OBJCOPY) -O binary -S output/a.elf ../output/bn6.gba --set-section-flags .hookToRandomize=alloc	

rom:Linker
	$(CC) -nostdlib build/rom.o build/randomwrapper.o build/random.o -T linker.txt -o output/a.elf
linkerf: Linker
	$(CC) -nostdlib build/rom.o build/randomwrapper.o build/random.o -T linkerf.txt -o output/a.elf

Linker:$(OFILES) $(OFILES_CSOURCES)
	
	$(CC) $(CFLAGS) -c rom/rom.s -nostdlib -o build/rom.o
	   	
$(OFILES):%.o: %.s
	$(CC) $< $(CFLAGS) -nostdlib -c  -o $(DEPSDIR)/$(notdir $@)
	

$(OFILES_CSOURCES):%.o: %.c
	$(CC) -I'./include/' $< $(CFLAGS) -nostdlib -c  -o $(DEPSDIR)/$(notdir $@)
	


clean:
	@echo clean ...
	@rm -fr $(BUILD)
	@rm -fr output



	


