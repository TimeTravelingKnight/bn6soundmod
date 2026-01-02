#pragma once
extern int (BNRNGFUNC)();

typedef char u8;
typedef  void* songpointer;
typedef  void* trackpointer;

extern songpointer spointer;
extern trackpointer tpointer;
extern volatile unsigned int randomseed;

//regular stage
const unsigned int song1=0x15;
const u8 BGM1[]={
	0x15,38,39,40,41,42,43,44,0x16,45,46,47,48,49,50,0x17,51,52,53,54,55,56,57,0x22
};
//byte shift by 3 and cmp 0x25 if 0x25 return 0x18
//otherwise go backup


//boss 
const u8 song2=0x16;


//byte shift by 5 and select from bgm1


//0x1E navicust
const unsigned int song3=0x1E;
const u8 BGM2[]= {
	0x2E, 0x3A, 0x4B, 0x55, 0x2E, 0x3A, 0x4B, 0x55
};


//0x24 mainhub
const unsigned int song4=0x24;
const u8 BGM3[]= {
	0x31, 0x32, 0x42, 0x4C, 0x56, 0x5C, 0x31, 0x31
};

//0x14 undernet themes
const unsigned int song5=0x14;
const u8 BGM4[]={

0x2A,0x35,0x45,0x4F,0x58,0x3F,0x40,0x2A	
	
};
//0x4 whatever this is
const unsigned int song6=0x4;
const u8 BGM5[]= {
0x26,0x33,0x43,0x5D,0x3B,0x5D,0x5D,0x5D
};

const unsigned int song7=0x13;
const u8 BGM6[]= {
0x29,0x34,0x44,0x4E,0x57,0x5F,0x3C,0x5E	
};




unsigned int RandomizeSong(unsigned int songindex);
unsigned int modolous(u8 rng,unsigned int modo);


