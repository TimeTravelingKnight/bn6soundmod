#include "randomizer.h"

unsigned  int RandomizeSong(unsigned int songindex){
	unsigned int songToSelect;
	
	if ( songindex ==song1) {
	u8 rng=(randomseed&0xFF);
	unsigned int index =modolous(rng,sizeof(BGM1)); 
	songToSelect=(unsigned int) BGM1[index];
	}
	/*
	else if (songindex==song2) {
	u8 rng=(randomseed&0xFF)>>5;
	songToSelect=(unsigned int) BGM1[rng];
	}
	else if (songindex==song3) {
	u8 rng=(randomseed&0xFF)>>5;
	songToSelect=(unsigned int) BGM2[rng];	
	}
	else if (songindex==song4) {
	u8 rng=(randomseed&0xFF)>>5;
	songToSelect=(unsigned int) BGM3[rng];	
	}
	else if (songindex==song5) {
	u8 rng=(randomseed&0xFF)>>5;
	songToSelect=(unsigned int) BGM4[rng];	
	}
	else if (songindex==song6) {
	u8 rng=(randomseed&0xFF)>>5;
	songToSelect=(unsigned int) BGM5[rng];	
	}
	else if (songindex==song7) {
	u8 rng=(randomseed&0xFF)>>5;
	songToSelect=(unsigned int)BGM6[rng];	
	}
	*/
	else {
	songToSelect=songindex;
	}
	
	return songToSelect;
	
}
unsigned int modolous(u8 rng,unsigned int modo){
	unsigned int num=(unsigned int) rng;
	unsigned int currmod=0;
	unsigned modbitvalue=1;
	for (int i=0;i<8;i++){
	unsigned int currbit=num&1;
	if (i>0) {
	modbitvalue=modbitvalue*2;
    if (modbitvalue>modo) {
	modbitvalue=modbitvalue-modo;
	}
	}
	currbit*=modbitvalue;
	currmod+=currbit;
	if (currmod>modo){
	currmod-=modo;	
	}
	
	num>>=1;
		
	}
	
	return currmod;
}


