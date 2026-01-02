


constants	:= modify

SOURCES		:= bank seq wave modify
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



sectionshook := $(basename $(notdir $(wildcard $(constants)/*.s)))

SFILES		:=$(foreach dir,$(SOURCES),$(wildcard $(dir)/*.s)) 
SFILESONG := _songtable.s

SWAVS :=$(wildcard oldwavs/*.s)

OFILEWAV :=$(SWAVS:.s=.o)

wavBins := $(SWAVS:.s=.bin)
OFILES_SOURCES := $(SFILES:.s=.o) 


OFILES := $(OFILES_SOURCES)



DEPSDIR	:=	$(CURDIR)/$(BUILD)




# Rule to link the object files into an executable


#---------------------------------------------------------------------------------
$(BUILD):
	@[ -d $@ ] || mkdir -p $@ output songtable
	

#---------------------------------------------------------------------------------
bccsong:$(BUILD) rom
	$(OBJCOPY) -O binary -S output/a.elf ../output/bn6.gba --set-section-flags .songtable=alloc $(foreach section,$(sectionshook),  --set-section-flags .$(section)=alloc) 

bccsongf:$(BUILD) romf
	$(OBJCOPY) -O binary -S output/a.elf ../output/bn6.gba --set-section-flags .songtable=alloc $(foreach section,$(sectionshook),  --set-section-flags .$(section)=alloc) 
	
rom: Linker
	$(CC) -nostdlib  -o output/a.elf $(CFLAGS) build/rom.o build/pcminfo.o build/trackconstants.o Songtable/songtable.o soundinfo.a -T linker.txt

romf: Linker
	$(CC) -nostdlib  -o output/a.elf $(CFLAGS) build/rom.o build/pcminfo.o build/trackconstants.o Songtable/songtable.o soundinfo.a -T linkerf.txt

Linker:$(OFILES) 
	$(CC) $(CFLAGS) -c $(SFILESONG) -nostdlib  -o Songtable/songtable.o
	$(CC) $(CFLAGS) -c rom/rom.s -nostdlib -o build/rom.o
	   	
$(OFILES):%.o: %.s
	$(CC) $< $(CFLAGS) -nostdlib -c  -o $(DEPSDIR)/$(notdir $@)
	arm-none-eabi-ar rcs soundinfo.a -o $(DEPSDIR)/$(notdir $@)




GenerateWav: LinkWav $(wavBins)  
	
$(wavBins):%.bin: 
	$(OBJCOPY)  wavbuild/a.elf --dump-section .$(notdir $(basename $@))=output/$(notdir $@) 
           

LinkWav:$(OFILEWAV)
	$(CC)  -nostdlib  -o wavbuild/a.elf  $(foreach ofile,$(OFILEWAV) ,wavbuild/$(notdir $(ofile) ))
        


$(OFILEWAV) :%.o: %.s
	$(CC) $< $(CFLAGS) -nostdlib -c  -nostdlib  -o 	wavbuild/$(notdir $@)


clean:
	@echo clean ...
	@rm -fr $(BUILD)
	@rm -fr output
	@rm -fr songtable
	@rm -fr soundinfo.a

	


