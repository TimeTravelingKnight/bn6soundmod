.thumb
.section .text
.global wrapper

wrapper:
	lsr r0,r0,#0x10
	bl RandomizeSong
        lsl r0,r0,#0x10
	ldr r2,=returnbacktom4a
	ldr r1,=spointer
	ldr r3,=tpointer
	lsr r0,r0,#0xD
	add r0,r0,r1
	bx r2
        
	.pool


.section .hookToRandomize

ldr r2,=wrapper+1
bx r2
.pool
	
.end
