  100 HIMEM=&27D0:PROCI
  120 FORZ=0TO2STEP2:P%=&27F5
  140   [OPTZ
  150   JSRsetup
  160   .GO JSRscr
  170   JSRmp:JSRnp
  180   JSRmg
  190   JSRmb:JSRnb
  200   JSRmbo:JSRnbo:JSRra0
  210   LDA#&81:LDY#&FF:LDX#&8F:JSR&FFF4:INX:BNEGO:RTS
  215   .h9 RTS
  220   .scr LDA#19:JMP&FFF4
  230   .ra0 LDAra1:AND#&48:ADC#&38:ASLA:ASLA:ROLra1+2:ROLra1+1:ROLra1:LDAra1:RTS
  242   .setup LDY#0:LDA(pls),Y:STAno
  243   .slop INY:INY:LDA(pls),Y:STApos:INY:LDA(pls),Y:STApos+1
  244   JSRpp:INY:INY:CPYno:BMIslop:JSRgun:CLC:LDA#3:STAexp
  245   .env LDAexp:ASLA:ASLA:ASLA:ASLA:ADC#&80:TAX:LDA#8:LDY#&2D:JSR&FFF1:DECexp:BPLenv:RTS
  246   
  260   .mg JSRgun:LDA#&81:LDY#&FF:LDX#&BD:JSR&FFF4
  270   INX:BEQr
  280   DEY:LDX#&9E:JSR&FFF4
  290   INX:BNEgd
  300   .l LDXXg:CPX#1:BEQgd:DEX:STXXg:SEC:LDAgunp:SBC#8:STAgunp:BCSgd:DECgunp+1:BCCgd\always
  320   .r LDXXg:CPX#71:BEQgd:INX:STXXg:CLC:LDAgunp:ADC#8:STAgunp:BCCgd:INCgunp+1
  340   .gd SEC:LDA#0:STApos:LDY#&24:.ch LDA(gunp),Y:BEQcop:STApos:.cop TYA:SBC#8:TAY:BPLch:LDApos:BEQgun:LDAsc:ORA#&20:STAsc
  350   .gun LDY#&27:.gop LDAgunf,Y:BEQgz:EOR(gunp),Y:STA(gunp),Y:.gz DEY:BPLgop:RTS
  370   .mb LDY#0:LDA(bulst),Y:STAno:LDAbuf:STAsf:LDAbuf+1:STAsf+1
  380   .ntbu INY:LDA(bulst),Y:STAexp:INY:LDA(bulst),Y:STAsd:INY:LDA(bulst),Y:STAsd+1:BNEbu1
  390   INY:LDA#&FE:ANDbfg:STAbfg:JMPnxbu
  400   .bu1 INY:JSRs5:LDA(bulst),Y:BPLbu2
  420   .bu7 LDA#0:STAsd+1:BEQnxbu\alws
  430   .bu2 SEC:LDA#7:ANDsd:CMP#5:BMIbu3:LDAsd:SBC#5:STAsd:JMPbu4
  440   .bu3 LDAsd:SBC#&7D:STAsd:LDAsd+1:SBC#2:STAsd+1
  450   .bu4 SEC:LDAexp:SBC#5:STAexp:CMP#2:BEQbu7:JSRs5
  490   .nxbu DEY:DEY:DEY:LDAexp:STA(bulst),Y:INY:LDAsd:STA(bulst),Y:INY:LDAsd+1:STA(bulst),Y:INY
  500   CPYno:BMIntbu:RTS
  510   
  520   .nb LDA#1:BITbfg:BNEnwb0:LDA#&81:LDY#&FF:LDX#&A6:JSR&FFF4:INX:BEQnwb1
  540   LDA#&FD:ANDbfg:STAbfg:.nwb0 RTS
  550   .nwb1 LDA#2:BITbfg:BNEnwb0:LDY#255
  570   .nwb2 INY:INY:INY:INY:LDA(bulst),Y:BNEnwb2:DEY:DEY:LDA#&9D:STA(bulst),Y:INY:SEC:LDAgunp:SBC#&6E:STA(bulst),Y:STAsd
  580   INY:LDAgunp+1:SBC#2:STA(bulst),Y:STAsd+1:INY:LDAXg:CLC:ADC#3:STA(bulst),Y:JSRs5:LDA#3:ORAbfg:STAbfg:LDA#1:ORAsc:STAsc
  585   LDA#7:LDY#&2D:LDX#&D0:JMP&FFF1
  590   
  600   .s5 TYA:PHA:LDY#5
  605   CLC:LDAsd:ADC#&78:STAst:LDAsd+1:ADC#2:STAst+1
  610   LDAsd:AND#7:EOR#7:STAmod:CMP#5:BPLtop
  630   .bot LDA(sf),Y:EOR(st),Y:STA(st),Y:DEY:CPYmod:BNEbot
  640   .top LDA(sf),Y:EOR(sd),Y:STA(sd),Y:DEY:BPLtop
  650   PLA:TAY:RTS
  660   .np LDApflg:CMP#1:BPLnw:DECti:BNEnw:LDAti+1:STAti:LDAno:JSRra2:TAY:SEC:.n2 SBC#5:BPLn2:TAX
  662   .n3 INY:INX:BNEn3:DEY:LDA(pls),Y:BMIfy:LDYno
  665   .se DEY:LDA(pls),Y:BMIfy:DEY:DEY:DEY:DEY:BNEse:LDA#&80:ORAsc:STAsc:RTS:.fy EOR#&80:STA(pls),Y
  669   .nw RTS
  680   .pxp LDAexp:BEQnx:LDX#&9:STXplf+1:LDAplf:PHA:LDAexp:CMP#21:BNEpx1:LDA#0:STAplf:JSRpp:JMPpx4
  682   .px1 CMP#12:BNEpx2:LDA#0:STAplf:JSRpp:LDA#&40:STAplf:JSRpp:JMPpx4
  684   .px2 CMP#6:BNEpx3:LDA#&40:STAplf:JSRpp:LDA#&80:STAplf:JSRpp:JMPpx4
  686   .px3 CMP#1:BNEpx4:LDA#&80:STAplf:JSRpp
  688   .px4 LDA#&2F:STAplf+1:PLA:STAplf:DECexp:.nx JMPfo+3
  720   .mp LDY#0:LDA(pls),Y:STAno:STYpflg
  730   .nxpl INY:LDA(pls),Y:STAexp:INY:LDA(pls),Y:STApos:INY:LDA(pls),Y:STApos+1:INY:LDA(pls),Y:STApsta:INY:LDA(pls),Y:STAyo
  740   LDAexp:AND#&C0:BNEp0:JMPpxp:.p0 LDApsta:BPLp1:JMPpl1:.p1 DECexp
  760   TYA:PHA:LDY#0:LDA(bulst),Y:STAsd:.h INY:LDA(bulst),Y:SEC:SBCyo:BMInh:CMP#8:BPLnh:INY:INY:LDA(bulst),Y:BEQnh+2:INY:LDA(bulst),Y:SEC:SBCpsta:BMInh+3:CMP#7:BPLnh+3
  765   CMP#3:BEQo:LDA#&40:ORAsc:STAsc:ASLA:STA(bulst),Y:BNEnh+3\always
  768   .o LDA#25:STAexp:LDA#&D8:STA(bulst),Y:TAX:LDA#7:LDY#&2D:JSR&FFF1:PLA:TAY:LDA#2:ORAsc:STAsc:JSRpp:JMPpxp
  770   .nh INY:INY:INY:CPYsd:BMIh:PLA:TAY
  790   LDAbofg:AND#&BF:STAbofg
  800   INCpflg:JSRpp:LDAyo:CMP#&AF:BNEhop5:SEC:LDApos:SBC#&87:STApos:LDApos+1:SBC#&48:STApos+1:LDA#&C0:STAyo:JSRh9
  810   .hop5 LDA#&3F:ANDexp:BNEmid
  840   SEC:LDApsta:SBCXg:STAexp:LDA#0:BCSpl3:SEC:RORA:.pl3 RORA:STAsd:LDAexp:BNEpl5:.pl20 JSR&FFFF:.pl5 BPLpl4:EOR#&FF:CLC:ADC#1
  845   .pl4 CMP#2:BMIpl6:STAra3+1:JSRra2+3:LSRra3+1:CLC:ADCra3+1:AND#&3F:.pl6 ORAsd:STAexp
  850   .mid LDAexp:LDXpsta:CPX#1:BPLnl:ORA#&40:AND#&7F:JMPdo:.nl CPX#72:BMIdo+2:ORA#&80:AND#&BF
  860   .do STAexp:INCyo:LDA#7:ANDpos:CMP#7:BEQpl2:INCpos:JMPlft:.pl2 CLC:LDApos:ADC#&79:STApos:LDApos+1:ADC#2:STApos+1
  870   .lft LDAexp:ROLA:BCCrgt:DECpsta:LDApos:SBC#8:STApos:BCSfo:DECpos+1:JMPfo
  880   .rgt INCpsta:ROLA:BCCfo:CLC:LDApos:ADC#8:STApos:BCCfo:INCpos+1
  890   .fo JSRpp:DEY:DEY:DEY:DEY:LDAexp:STA(pls),Y:INY:LDApos:STA(pls),Y:INY:LDApos+1:STA(pls),Y:INY:LDApsta:STA(pls),Y:INY:LDAyo:STA(pls),Y
  900   .pl1 CPYno:BEQhop7:JMPnxpl:.hop7 RTS
  920   .pp TYA:PHA:CLC:LDApos:ADC#&78:STAst:AND#7:EOR#7:STAmod
  930   LDApos+1:ADC#2:STAst+1:LDY#&3F
  940   .plo LDX#7:CPXmod:BEQtp
  950   .bt LDA(plf),Y:BEQbz:EOR(st),Y:STA(st),Y:.bz DEY:DEX:CPXmod:BNEbt
  960   .tp LDA(plf),Y:BEQtz:EOR(pos),Y:STA(pos),Y:.tz DEY:DEX:BPLtp:TYA:BPLplo
  970   PLA:TAY:RTS
  971   
  990   .nbo LDA#&C0:BITbofg:BNEnbo4:DECbofg:BNEnbo4:LDY#255
 1010   .nbo2 INY:INY:INY:INY:INY:LDA(pls),Y:BMInbo2
 1020   DEY:DEY:DEY:LDA(pls),Y:AND#&C0:BNEnbo5:INY:INY:INY:JMPnbo2
 1025   .nbo5 INY:CLC:LDA(pls),Y:ADC#&9D:STAsd:INY:LDA(pls),Y:ADC#2:STAsd+1:JSRs5:LDY#0
 1030   .nbo3 INY:INY:LDA(bost),Y:BNEnbo3
 1040   LDAsd+1:STA(bost),Y:DEY:LDAsd:STA(bost),Y:LDAinb:STAbofg
 1050   .nbo4 LDA#&C0:ORAbofg:STAbofg:RTS
 1060   
 1070   .mbo LDY#0:LDA(bost),Y:STAno:LDAbof:STAsf:LDAbof+1:STAsf+1
 1080   .ntbo INY:LDA(bost),Y:STAsd:INY:LDA(bost),Y:STAsd+1
 1090   BNEbo1:LDA#&7F:ANDbofg:STAbofg:JMPbo7
 1100   .bo1 JSRs5:LDAsd:AND#7:CMP#6:BPLbo2:INCsd:INCsd:LDAsd+1:JMPbo4
 1110   .bo2 CLC:LDAsd:ADC#&7A:STAsd:LDAsd+1:ADC#2:STAsd+1
 1130   .bo4 CMP#&80:BMIbo6:LDA#0:STA(bost),Y:BEQbo7\always
 1140   .bo6 JSRs5:DEY:LDAsd:STA(bost),Y:INY:LDAsd+1:STA(bost),Y
 1150   .bo7 CPYno:BMIntbo:RTS
 1160   .ra2 STAra3+1:SEC:LDAra1:AND#&7F:.ra3 SBC#0:BPLra3:ADCra3+1:RTS
 1240   ]:NEXT:VDU11:PRINT~P%:END
 1260 DEFPROCI
 1270 FORA%=&2D00TO&2D7F:?A%=0:NEXT
 1280 bfg=&71:pflg=&72:bofg=&73:mod=&74
 1300 sd=&80:sf=&82:st=&84
 1310 Xg=&2D70:gunp=&86:gunf=&2F00
 1320 bulst=&8A:buf=&2D72:no=&70
 1330 pls=&75:exp=&77:pos=&78:psta=&7A:yo=&7B:ra1=&7C:plf=&88
 1340 de=&2D79:ti=&2D7A:sc=&2D76:bof=&2D74:inb=&2D71:bost=&8C
 1350 !gunp=&7E90:!Xg=&2F30C720:!plf=&2F40:!bof=&2F38:!de=&400314
 1360 ?bfg=2:!bulst=&2D472D0A:?&2D0A=8:?&2D47=20
 1370 !pls=&2D13:?&2D13=25
 1380 FORA%=0TO30STEP5:A%?&2D14=&81:A%!&2D15=&3A58+16*A%
 1390   A%?&2D17=&80+11+2*A%:A%?&2D18=&D0:NEXT
 1410 ENDPROC
