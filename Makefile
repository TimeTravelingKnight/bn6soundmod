gregarrom:bn6.gba
	cp bn6.gba output/bn6.gba
	cd bn1battletheme && $(MAKE) bn1battle
	
	cd bn2battletheme && $(MAKE) bn2battle
	
	cd bn3battletheme && $(MAKE) bn3battle

	cd bn4battletheme && $(MAKE) bn4battle

	cd bn5battletheme && $(MAKE) bn5battle

	cd bn45battletheme && $(MAKE) bn45battle

	cd bcc2 && $(MAKE) bccsong

	cd bn1bosstheme && $(MAKE) bn1boss

	cd bn2bosstheme && $(MAKE) bn2boss
	
	cd bn3bosstheme && $(MAKE) bn3boss
	
	cd bn4bosstheme && $(MAKE) bn4boss

	cd bn5bosstheme && $(MAKE) bn5boss
	
	cd bn45bosstheme && $(MAKE) bn45boss
	
	cd bn1finalbosstheme && $(MAKE) bn1finalboss 
	
	cd bn2finalbosstheme && $(MAKE) bn2finalboss 
	
	cd bn3finalbosstheme && $(MAKE) bn3finalboss 

	cd bn4finalbosstheme && $(MAKE) bn4finalboss 
	
	cd bn5finalbosstheme && $(MAKE) bn5finalboss 
	
	cd bn45tourbosstheme && $(MAKE) bn45tourboss
	
	cd bn3tourbosstheme && $(MAKE) bn3tourboss
	
	cd bn4tourbosstheme && $(MAKE) bn4tourboss
	
	cd randomizer && $(MAKE) gregrom
	$(MAKE) clean

falzarrom:bn6.gba
	cp bn6f.gba output/bn6.gba
	cd bn1battletheme && $(MAKE) bn1battlef
	
	cd bn2battletheme && $(MAKE) bn2battlef
	
	cd bn3battletheme && $(MAKE) bn3battlef

	cd bn4battletheme && $(MAKE) bn4battlef

	cd bn5battletheme && $(MAKE) bn5battlef

	cd bn45battletheme && $(MAKE) bn45battlef

	cd bcc2 && $(MAKE) bccsongf

	cd bn1bosstheme && $(MAKE) bn1bossf

	cd bn2bosstheme && $(MAKE) bn2bossf
	
	cd bn3bosstheme && $(MAKE) bn3bossf
	
	cd bn4bosstheme && $(MAKE) bn4bossf

	cd bn5bosstheme && $(MAKE) bn5bossf
	
	cd bn45bosstheme && $(MAKE) bn45bossf
	
	cd bn1finalbosstheme && $(MAKE) bn1finalbossf 
	
	cd bn2finalbosstheme && $(MAKE) bn2finalbossf 
	
	cd bn3finalbosstheme && $(MAKE) bn3finalbossf 

	cd bn4finalbosstheme && $(MAKE) bn4finalbossf 
	
	cd bn5finalbosstheme && $(MAKE) bn5finalbossf 
	
	cd bn45tourbosstheme && $(MAKE) bn45tourbossf
	
	cd bn3tourbosstheme && $(MAKE) bn3tourbossf
	
	cd bn4tourbosstheme && $(MAKE) bn4tourbossf
	
	cd randomizer && $(MAKE) falzrom
	$(MAKE) clean

clean:
	cd bn1battletheme && $(MAKE) clean
	
	cd bn2battletheme && $(MAKE) clean
	
	cd bn3battletheme && $(MAKE) clean

	cd bn4battletheme && $(MAKE) clean

	cd bn5battletheme && $(MAKE) clean

	cd bn45battletheme && $(MAKE) clean

	cd bcc2 && $(MAKE) clean

	cd bn1bosstheme && $(MAKE) clean

	cd bn2bosstheme && $(MAKE) clean
	
	cd bn3bosstheme && $(MAKE) clean
	
	cd bn4bosstheme && $(MAKE) clean

	cd bn5bosstheme && $(MAKE) clean
	
	cd bn45bosstheme && $(MAKE) clean
	
	cd bn1finalbosstheme && $(MAKE) clean
	
	cd bn2finalbosstheme && $(MAKE) clean
	
	cd bn3finalbosstheme && $(MAKE) clean
	
	cd bn4finalbosstheme && $(MAKE) clean 
	
	cd bn5finalbosstheme && $(MAKE) clean
	
	cd bn45tourbosstheme && $(MAKE) clean
	
	cd bn3tourbosstheme && $(MAKE) clean
	
	cd bn4tourbosstheme && $(MAKE) clean
	
	cd randomizer && $(MAKE) clean

.PHONY: bn6.gba