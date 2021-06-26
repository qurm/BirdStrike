X_base_addr =  &2100 
.picn =  &2554 
.start_SS_01
     1100   54 68 61 ...
.check_key_press
.opt
.checkQkey
     1126   A2 EF      LDX #&EF
     1128   20 D2 19   JSR &19D2
     112B   D0 0A      BNE &1137
     112D   A9 61      LDA #&61
     112F   8D 0C 02   STA &020C
     1132   A9 11      LDA #&11
     1134   8D 0D 02   STA &020D
.op1
.checkSkey
     1137   A2 AE      LDX #&AE
     1139   20 D2 19   JSR &19D2
     113C   D0 0C      BNE &114A
     113E   AD 68 11   LDA &1168
     1141   8D 0C 02   STA &020C
     1144   AD 69 11   LDA &1169
     1147   8D 0D 02   STA &020D
.op2
.checkRkey
     114A   A2 CC      LDX #&CC
     114C   20 D2 19   JSR &19D2
     114F   D0 0F      BNE &1160
.op3
     1151   A9 81      LDA #&81
     1153   A0 01      LDY #&01
     1155   A2 00      LDX #&00
     1157   20 F4 FF   JSR &FFF4
     115A   B0 F5      BCS &1151
     115C   E0 52      CPX #&52
     115E   F0 F1      BEQ &1151
.op5
.checkKeyComplete
     1160   60         RTS
.mute
     1161   C9 07      CMP #&07
     1163   F0 FB      BEQ &1160
.mu1
     1165   6C 68 11   JMP (&1168)
.soun
     1168   EB E7
.nlr
     116A   AD 9B 11   LDA &119B
     116D   F0 21      BEQ &1190
     116F   A5 77      LDA &77
     1171   10 10      BPL &1183
     1173   C6 7A      DEC &7A
     1175   38         SEC
     1176   A5 78      LDA &78
     1178   E9 08      SBC #&08
     117A   85 78      STA &78
     117C   B0 12      BCS &1190
     117E   C6 79      DEC &79
     1180   4C 90 11   JMP &1190
.rt
     1183   E6 7A      INC &7A
     1185   18         CLC
     1186   A5 78      LDA &78
     1188   69 08      ADC #&08
     118A   85 78      STA &78
     118C   90 02      BCC &1190
     118E   E6 79      INC &79
.enlr
     1190   A9 01      LDA #&01
     1192   4D 9B 11   EOR &119B
     1195   8D 9B 11   STA &119B
     1198   4C E1 2B   JMP &2BE1
.tog
     119B   00
.fpat
     119C   AD AD 11   LDA &11AD
     119F   F0 04      BEQ &11A5
     11A1   CE AD 11   DEC &11AD
     11A4   60         RTS
.fp1
     11A5   A9 12      LDA #&12
     11A7   8D AD 11   STA &11AD
     11AA   4C 7D 29   JMP &297D
.fp0
     11AD   00
.game_over
.gov
     11AE   68         PLA
     11AF   68         PLA
     11B0   A0 FF      LDY #&FF
.gov1
     11B2   C8         INY
     11B3   A9 0A      LDA #&0A
     11B5   20 8A 18   JSR &188A
     11B8   B9 CA 11   LDA &11CA,Y
     11BB   20 EE FF   JSR &FFEE
     11BE   C9 52      CMP #&52
     11C0   D0 F0      BNE &11B2
     11C2   A9 96      LDA #&96
     11C4   20 8A 18   JSR &188A
     11C7   4C 1E 16   JMP &161E
.gov2
     11CA   1F
     11CB   05
     11CC   0F
     11CD   11
     11CE   01
     11CF   47 41 4D ...
.stp4
     11D8   60         RTS
.stp6
     11D9   AD 55 25   LDA &2555
     11DC   F0 FA      BEQ &11D8
     11DE   A5 7A      LDA &7A
     11E0   49 80      EOR #&80
     11E2   85 7A      STA &7A
     11E4   E6 77      INC &77
     11E6   68         PLA
     11E7   68         PLA
     11E8   4C E4 2B   JMP &2BE4
.extra_player_check
.exg
     11EB   A9 01      LDA #&01
     11ED   2C 1A 12   BIT &121A
     11F0   D0 10      BNE &1202
     11F2   AC 78 2D   LDY &2D78
     11F5   C0 05      CPY #&05
     11F7   30 20      BMI &1219
     11F9   0D 1A 12   ORA &121A
     11FC   8D 1A 12   STA &121A
     11FF   20 1B 12   JSR &121B
.exg1
     1202   A9 02      LDA #&02
     1204   2C 1A 12   BIT &121A
     1207   D0 10      BNE &1219
     1209   AC 78 2D   LDY &2D78
     120C   C0 10      CPY #&10
     120E   30 09      BMI &1219
     1210   0D 1A 12   ORA &121A
     1213   8D 1A 12   STA &121A
     1216   4C 1B 12   JMP &121B
.exg2
     1219   60         RTS
.exg3
     121A   00
.exg4
     121B   20 DD 19   JSR &19DD
     121E   A9 DC      LDA #&DC
     1220   8D FC 2D   STA &2DFC
     1223   A2 F8      LDX #&F8
     1225   A0 2D      LDY #&2D
     1227   A9 07      LDA #&07
     1229   20 F1 FF   JSR &FFF1
     122C   EE 56 25   INC &2556
     122F   18         CLC
     1230   AD 57 25   LDA &2557
     1233   69 18      ADC #&18
     1235   8D 57 25   STA &2557
     1238   90 03      BCC &123D
     123A   EE 58 25   INC &2558
.exg5
     123D   60         RTS
.bon
     123E   AD 5C 25   LDA &255C
     1241   29 03      AND #&03
     1243   D0 0B      BNE &1250
     1245   A9 0F      LDA #&0F
     1247   20 8A 18   JSR &188A
     124A   20 76 14   JSR &1476
     124D   4C 56 12   JMP &1256
.bon0
     1250   20 AE 18   JSR &18AE
     1253   20 A3 19   JSR &19A3
.bon11
     1256   20 9E 12   JSR &129E
     1259   A0 4B      LDY #&4B
.bon1
     125B   F8         SED
     125C   18         CLC
     125D   AD 77 2D   LDA &2D77
     1260   69 02      ADC #&02
     1262   8D 77 2D   STA &2D77
     1265   AD 78 2D   LDA &2D78
     1268   69 00      ADC #&00
     126A   8D 78 2D   STA &2D78
     126D   D8         CLD
     126E   A9 02      LDA #&02
     1270   20 8A 18   JSR &188A
     1273   98         TYA
     1274   48         PHA
     1275   A2 E8      LDX #&E8
     1277   A0 2D      LDY #&2D
     1279   A9 07      LDA #&07
     127B   20 F1 FF   JSR &FFF1
     127E   20 51 18   JSR &1851
     1281   68         PLA
     1282   A8         TAY
     1283   88         DEY
     1284   D0 D5      BNE &125B
     1286   EE B7 12   INC &12B7
     1289   A2 B7      LDX #&B7
     128B   A0 12      LDY #&12
     128D   A9 07      LDA #&07
     128F   20 F1 FF   JSR &FFF1
     1292   CE B7 12   DEC &12B7
     1295   A9 80      LDA #&80
     1297   0D 76 2D   ORA &2D76
     129A   8D 76 2D   STA &2D76
     129D   60         RTS
.wbmsg
     129E   A0 00      LDY #&00
.wb1
     12A0   B9 AC 12   LDA &12AC,Y
     12A3   20 EE FF   JSR &FFEE
     12A6   C8         INY
     12A7   C0 0B      CPY #&0B
     12A9   D0 F5      BNE &12A0
     12AB   60         RTS
.bmsg
     12AC   11 06 1F 07
     12B0   0F
     12B1   42 4F 4E ...
.bsou
     12B7   12 00 FF FF
     12BB   00 00 00 00
     12BF   FF
.nbk
     12C0   B4
     12C1   16
     12C2   08
     12C3   20
     12C4   7F
.hs
     12C5   00
     12C6   00
     12C7   02
.m7
     12C8   16
     12C9   07
     12CA   17
     12CB   00
     12CC   0A
     12CD   20
     12CE   00
     12CF   00
     12D0   00
     12D1   00
     12D2   00
     12D3   00
.bsk
     12D4   9A
     12D5   94
     12D6   68
     12D7   3F
     12D8   6F
     12D9   34
     12DA   20
     12DB   20
     12DC   20
     12DD   20
     12DE   20
     12DF   20
     12E0   20
     12E1   20
     12E2   FF
     12E3   20
     12E4   20
     12E5   5F
     12E6   7E
     12E7   2F
     12E8   6D
     12E9   20
     12EA   78
     12EB   20
     12EC   20
     12ED   20
     12EE   20
     12EF   20
     12F0   20
     12F1   20
     12F2   7E
     12F3   0D
     12F4   9A
     12F5   96
     12F6   6A
     12F7   7D
     12F8   7E
     12F9   25
     12FA   20
     12FB   2F
     12FC   20
     12FD   30
     12FE   20
     12FF   20
     1300   20
     1301   20
     1302   FF
     1303   20
     1304   20
     1305   6A
     1306   7D
     1307   70
     1308   30
     1309   20
     130A   FF
     130B   2C
     130C   20
     130D   30
     130E   20
     130F   20
     1310   2F
     1311   20
     1312   FF
     1313   5F
     1314   3E
     1315   0D
     1316   9A
     1317   94
     1318   6A
     1319   3F
     131A   60
     131B   6F
     131C   34
     131D   FF
     131E   20
     131F   FF
     1320   2F
     1321   21
     1322   78
     1323   2F
     1324   FF
     1325   20
     1326   20
     1327   20
     1328   60
     1329   60
     132A   FF
     132B   20
     132C   FF
     132D   20
     132E   20
     132F   FF
     1330   2F
     1331   21
     1332   FF
     1333   20
     1334   FF
     1335   6F
     1336   30
     1337   20
     1338   7E
     1339   7B
     133A   34
     133B   0D
     133C   9A
     133D   96
     133E   2A
     133F   7D
     1340   70
     1341   7E
     1342   25
     1343   6F
     1344   30
     1345   FF
     1346   20
     1347   20
     1348   6F
     1349   7C
     134A   3F
     134B   20
     134C   20
     134D   2A
     134E   7C
     134F   7E
     1350   27
     1351   20
     1352   6F
     1353   74
     1354   30
     1355   FF
     1356   20
     1357   20
     1358   6F
     1359   30
     135A   FF
     135B   20
     135C   2B
     135D   34
     135E   6D
     135F   78
     1360   24
     1361   1F
     1362   05
     1363   05
     1364   82
     1365   46
     1366   49
     1367   52
     1368   45
     1369   46
     136A   4C
     136B   59
     136C   20
     136D   28
     136E   63
     136F   29
     1370   20
     1371   41
     1372   6E
     1373   64
     1374   72
     1375   65
     1376   77
     1377   20
     1378   46
     1379   72
     137A   69
     137B   67
     137C   61
     137D   61
     137E   72
     137F   64
     1380   0D
     1381   1F
     1382   0B
     1383   08
     1384   8D
     1385   83
     1386   48
     1387   69
     1388   67
     1389   68
     138A   20
     138B   53
     138C   63
     138D   6F
     138E   72
     138F   65
     1390   1F
     1391   0B
     1392   09
     1393   8D
     1394   83
     1395   48
     1396   69
     1397   67
     1398   68
     1399   20
     139A   53
     139B   63
     139C   6F
     139D   72
     139E   65
     139F   00
.dts
.dots_str
     13A0   1F
     13A1   0B
     13A2   0B
     13A3   2E
     13A4   2E
     13A5   2E
     13A6   2E
     13A7   2E
     13A8   2E
     13A9   2E
     13AA   2E
     13AB   2E
     13AC   2E
     13AD   2E
     13AE   2E
     13AF   2E
     13B0   00
     13B1   1F
     13B2   19
     13B3   0B
.nam
     13B4   61
     13B5   6E
     13B6   64
     13B7   72
     13B8   65
     13B9   77
     13BA   20
     13BB   20
     13BC   00
.ints
.instructions_str
     13BD   1F
     13BE   0E
     13BF   0E
     13C0   8D
     13C1   83
     13C2   4B
     13C3   65
     13C4   79
     13C5   73
     13C6   1F
     13C7   0E
     13C8   0F
     13C9   8D
     13CA   83
     13CB   4B
     13CC   65
     13CD   79
     13CE   73
     13CF   1F
     13D0   06
     13D1   11
     13D2   86
     13D3   5A
     13D4   20
     13D5   2E
     13D6   2E
     13D7   2E
     13D8   2E
     13D9   2E
     13DA   2E
     13DB   2E
     13DC   2E
     13DD   2E
     13DE   2E
     13DF   2E
     13E0   2E
     13E1   20
     13E2   6D
     13E3   6F
     13E4   76
     13E5   65
     13E6   20
     13E7   6C
     13E8   65
     13E9   66
     13EA   74
     13EB   1F
     13EC   06
     13ED   12
     13EE   86
     13EF   58
     13F0   20
     13F1   2E
     13F2   2E
     13F3   2E
     13F4   2E
     13F5   2E
     13F6   2E
     13F7   2E
     13F8   2E
     13F9   2E
     13FA   2E
     13FB   2E
     13FC   20
     13FD   6D
     13FE   6F
     13FF   76
     1400   65
     1401   20
     1402   72
     1403   69
     1404   67
     1405   68
     1406   74
     1407   1F
     1408   06
     1409   13
     140A   86
     140B   52
     140C   45
     140D   54
     140E   55
     140F   52
     1410   4E
     1411   20
     1412   2E
     1413   2E
     1414   2E
     1415   2E
     1416   2E
     1417   2E
     1418   2E
     1419   2E
     141A   2E
     141B   2E
     141C   2E
     141D   20
     141E   73
     141F   68
     1420   6F
     1421   6F
     1422   74
     1423   1F
     1424   06
     1425   14
     1426   86
     1427   53
     1428   2F
     1429   51
     142A   20
     142B   2E
     142C   2E
     142D   2E
     142E   2E
     142F   2E
     1430   2E
     1431   2E
     1432   20
     1433   73
     1434   6F
     1435   75
     1436   6E
     1437   64
     1438   20
     1439   6F
     143A   6E
     143B   2F
     143C   6F
     143D   66
     143E   66
     143F   1F
     1440   06
     1441   15
     1442   86
     1443   52
     1444   20
     1445   2E
     1446   2E
     1447   2E
     1448   2E
     1449   2E
     144A   2E
     144B   2E
     144C   2E
     144D   2E
     144E   2E
     144F   2E
     1450   2E
     1451   2E
     1452   2E
     1453   2E
     1454   2E
     1455   2E
     1456   20
     1457   72
     1458   65
     1459   73
     145A   74
     145B   00
.sps
     145C   1F
     145D   07
     145E   18
     145F   81
     1460   88
     1461   50
     1462   72
     1463   65
     1464   73
     1465   73
     1466   20
     1467   73
     1468   70
     1469   61
     146A   63
     146B   65
     146C   20
     146D   74
     146E   6F
     146F   20
     1470   70
     1471   6C
     1472   61
     1473   79
     1474   2E
     1475   00
.stmv
     1476   A0 0A      LDY #&0A
.stm4
     1478   B9 0C 15   LDA &150C,Y
     147B   20 EE FF   JSR &FFEE
     147E   88         DEY
     147F   10 F7      BPL &1478
     1481   A9 80      LDA #&80
     1483   8D 9E 14   STA &149E
     1486   A9 00      LDA #&00
     1488   8D AA 14   STA &14AA
     148B   A9 04      LDA #&04
     148D   85 70      STA &70
.stm1
     148F   A9 1D      LDA #&1D
     1491   20 EE FF   JSR &FFEE
     1494   A9 00      LDA #&00
     1496   20 EE FF   JSR &FFEE
     1499   20 EE FF   JSR &FFEE
     149C   38         SEC
.stm2
     149D   A9 00      LDA #&00
     149F   E9 80      SBC #&80
     14A1   8D 9E 14   STA &149E
     14A4   08         PHP
     14A5   20 EE FF   JSR &FFEE
     14A8   28         PLP
.stm3
     14A9   A9 00      LDA #&00
     14AB   E9 00      SBC #&00
     14AD   8D AA 14   STA &14AA
     14B0   20 EE FF   JSR &FFEE
     14B3   20 55 1F   JSR &1F55
     14B6   C6 70      DEC &70
     14B8   D0 D5      BNE &148F
.stm5
     14BA   AD 5C 25   LDA &255C
     14BD   8D 08 22   STA &2208
     14C0   A9 00      LDA #&00
     14C2   8D 5C 25   STA &255C
     14C5   A9 26      LDA #&26
     14C7   8D 0C 22   STA &220C
     14CA   A9 88      LDA #&88
     14CC   8D 0B 22   STA &220B
.stm6
     14CF   18         CLC
     14D0   AD 0B 22   LDA &220B
     14D3   8D 59 25   STA &2559
     14D6   AD 0C 22   LDA &220C
     14D9   69 0A      ADC #&0A
     14DB   8D 0C 22   STA &220C
     14DE   8D 5A 25   STA &255A
     14E1   20 AE 18   JSR &18AE
     14E4   8E BA 1A   STX &1ABA
     14E7   EE 5C 25   INC &255C
.stm8
     14EA   20 DB 18   JSR &18DB
     14ED   D0 FB      BNE &14EA
     14EF   20 AE 18   JSR &18AE
     14F2   20 A3 19   JSR &19A3
     14F5   A9 3C      LDA #&3C
     14F7   20 8A 18   JSR &188A
     14FA   AD 5C 25   LDA &255C
     14FD   C9 04      CMP #&04
     14FF   D0 CE      BNE &14CF
     1501   AD 08 22   LDA &2208
     1504   8D 5C 25   STA &255C
     1507   A9 1A      LDA #&1A
     1509   4C EE FF   JMP &FFEE
.stm10
     150C   10 03 FF 04
     1510   0F 02 0F 00
     1514   F0 18
     1516   1A
.gend
     1517   A9 00      LDA #&00
     1519   8D C5 12   STA &12C5
     151C   AD 78 2D   LDA &2D78
     151F   CD C7 12   CMP &12C7
     1522   90 19      BCC &153D
     1524   D0 08      BNE &152E
     1526   AD 77 2D   LDA &2D77
     1529   CD C6 12   CMP &12C6
     152C   90 0F      BCC &153D
.ge0
     152E   AD 77 2D   LDA &2D77
     1531   8D C6 12   STA &12C6
     1534   AD 78 2D   LDA &2D78
     1537   8D C7 12   STA &12C7
     153A   CE C5 12   DEC &12C5
.ge1
     153D   A9 16      LDA #&16
     153F   20 EE FF   JSR &FFEE
     1542   A9 07      LDA #&07
     1544   20 EE FF   JSR &FFEE
     1547   A2 D4      LDX #&D4
     1549   A0 12      LDY #&12
     154B   20 E9 15   JSR &15E9
     154E   A9 1F      LDA #&1F
     1550   20 EE FF   JSR &FFEE
     1553   A9 05      LDA #&05
     1555   20 EE FF   JSR &FFEE
     1558   A9 0B      LDA #&0B
     155A   20 EE FF   JSR &FFEE
     155D   AD C7 12   LDA &12C7
     1560   20 D5 15   JSR &15D5
     1563   AD C6 12   LDA &12C6
     1566   20 D5 15   JSR &15D5
     1569   A9 30      LDA #&30
     156B   20 EE FF   JSR &FFEE
     156E   A2 A0      LDX #&A0
     1570   A0 13      LDY #&13
     1572   20 E9 15   JSR &15E9
     1575   A2 BD      LDX #&BD
     1577   A0 13      LDY #&13
     1579   20 E9 15   JSR &15E9
     157C   A9 1F      LDA #&1F
     157E   20 EE FF   JSR &FFEE
     1581   A9 1A      LDA #&1A
     1583   20 EE FF   JSR &FFEE
     1586   A9 0B      LDA #&0B
     1588   20 EE FF   JSR &FFEE
     158B   AD C5 12   LDA &12C5
     158E   F0 12      BEQ &15A2
     1590   A9 15      LDA #&15
     1592   A2 00      LDX #&00
     1594   20 F4 FF   JSR &FFF4
     1597   8A         TXA
     1598   A2 C0      LDX #&C0
     159A   A0 12      LDY #&12
     159C   20 F1 FF   JSR &FFF1
     159F   4C AF 15   JMP &15AF
.ge3
     15A2   A0 FF      LDY #&FF
.ge6
     15A4   C8         INY
     15A5   B9 B4 13   LDA &13B4,Y
     15A8   20 E3 FF   JSR &FFE3
     15AB   C9 20      CMP #&20
     15AD   10 F5      BPL &15A4
.ge7
     15AF   A0 02      LDY #&02
.ge5
     15B1   B9 C8 12   LDA &12C8,Y
     15B4   20 EE FF   JSR &FFEE
     15B7   C8         INY
     15B8   C0 0D      CPY #&0D
     15BA   D0 F5      BNE &15B1
     15BC   A9 64      LDA #&64
     15BE   20 8A 18   JSR &188A
.space
     15C1   A9 1A      LDA #&1A
     15C3   20 EE FF   JSR &FFEE
     15C6   A2 5C      LDX #&5C
     15C8   A0 14      LDY #&14
     15CA   20 E9 15   JSR &15E9
.ge4
     15CD   A2 9D      LDX #&9D
     15CF   20 D2 19   JSR &19D2
     15D2   D0 F9      BNE &15CD
     15D4   60         RTS
.whs
     15D5   48         PHA
     15D6   4A         LSR A
     15D7   4A         LSR A
     15D8   4A         LSR A
     15D9   4A         LSR A
     15DA   18         CLC
     15DB   69 30      ADC #&30
     15DD   20 E3 FF   JSR &FFE3
     15E0   68         PLA
     15E1   29 0F      AND #&0F
     15E3   18         CLC
     15E4   69 30      ADC #&30
     15E6   4C E3 FF   JMP &FFE3
.wrs
.write_string
     15E9   8E F3 15   STX &15F3
     15EC   8C F4 15   STY &15F4
     15EF   A0 FF      LDY #&FF
.wr1
     15F1   C8         INY
.modify_string_addr
     15F2   B9 A0 13   LDA &13A0,Y
     15F5   20 E3 FF   JSR &FFE3
     15F8   C9 00      CMP #&00
     15FA   D0 F5      BNE &15F1
     15FC   60         RTS
.end_SS_01
.end_SS_01 =  &15FD 
.game
     15FD   A9 C8      LDA #&C8
     15FF   A2 03      LDX #&03
     1601   A0 00      LDY #&00
     1603   20 F4 FF   JSR &FFF4
     1606   20 C1 15   JSR &15C1
     1609   A2 01      LDX #&01
     160B   A9 04      LDA #&04
     160D   A0 00      LDY #&00
     160F   20 F4 FF   JSR &FFF4
     1612   AD 0C 02   LDA &020C
     1615   8D 68 11   STA &1168
     1618   AD 0D 02   LDA &020D
     161B   8D 69 11   STA &1169
.newgame
     161E   20 17 15   JSR &1517
     1621   20 69 16   JSR &1669
.GO
     1624   20 F0 1C   JSR &1CF0
     1627   20 4A 28   JSR &284A
     162A   20 94 2A   JSR &2A94
     162D   20 F7 29   JSR &29F7
     1630   20 6E 28   JSR &286E
     1633   20 E2 28   JSR &28E2
     1636   20 5E 29   JSR &295E
     1639   20 98 2C   JSR &2C98
     163C   20 45 2C   JSR &2C45
     163F   20 46 1B   JSR &1B46
     1642   20 F2 19   JSR &19F2
     1645   20 DD 17   JSR &17DD
     1648   20 26 11   JSR &1126
     164B   4C 24 16   JMP &1624
     164E   28 63 29 ...
.start_game
     1669   A9 05      LDA #&05
     166B   85 70      STA &70
     166D   20 35 28   JSR &2835
     1670   A9 49      LDA #&49
     1672   20 A3 19   JSR &19A3
     1675   A9 16      LDA #&16
     1677   20 EE FF   JSR &FFEE
     167A   A9 02      LDA #&02
     167C   20 EE FF   JSR &FFEE
     167F   A9 00      LDA #&00
     1681   8D 1A 12   STA &121A
     1684   85 8E      STA &8E
     1686   8D 5C 25   STA &255C
     1689   8D 54 25   STA &2554
     168C   8D 55 25   STA &2555
     168F   8D 77 2D   STA &2D77
     1692   8D 78 2D   STA &2D78
     1695   85 88      STA &88
     1697   18         CLC
     1698   A9 20      LDA #&20
     169A   8D 79 2D   STA &2D79
     169D   A9 03      LDA #&03
     169F   8D 7A 2D   STA &2D7A
     16A2   A9 2A      LDA #&2A
     16A4   8D 7B 2D   STA &2D7B
     16A7   A9 02      LDA #&02
     16A9   85 71      STA &71
     16AB   A9 2D      LDA #&2D
     16AD   85 8B      STA &8B
     16AF   85 8D      STA &8D
     16B1   85 76      STA &76
     16B3   A9 47      LDA #&47
     16B5   85 8C      STA &8C
     16B7   A9 0A      LDA #&0A
     16B9   85 8A      STA &8A
     16BB   A9 13      LDA #&13
     16BD   85 75      STA &75
     16BF   A2 0F      LDX #&0F
     16C1   A0 07      LDY #&07
.co1
     16C3   20 1D 28   JSR &281D
     16C6   CA         DEX
     16C7   E0 07      CPX #&07
     16C9   D0 F8      BNE &16C3
     16CB   86 7D      STX &7D
     16CD   A9 03      LDA #&03
     16CF   8D 56 25   STA &2556
     16D2   A9 2F      LDA #&2F
     16D4   85 89      STA &89
     16D6   A9 F0      LDA #&F0
     16D8   8D 71 2D   STA &2D71
     16DB   A9 00      LDA #&00
     16DD   8D 09 22   STA &2209
.bf
     16E0   20 AE 18   JSR &18AE
     16E3   8E BA 1A   STX &1ABA
     16E6   EE 5C 25   INC &255C
     16E9   AD 79 2D   LDA &2D79
     16EC   C9 0F      CMP #&0F
     16EE   30 10      BMI &1700
     16F0   AD 5C 25   LDA &255C
     16F3   29 01      AND #&01
     16F5   F0 09      BEQ &1700
     16F7   CE 79 2D   DEC &2D79
     16FA   CE 79 2D   DEC &2D79
     16FD   CE 71 2D   DEC &2D71
.b0
     1700   EE 09 22   INC &2209
     1703   EE 09 22   INC &2209
     1706   A9 0C      LDA #&0C
     1708   20 EE FF   JSR &FFEE
     170B   A9 9A      LDA #&9A
     170D   A2 14      LDX #&14
     170F   20 F4 FF   JSR &FFF4
     1712   20 52 1D   JSR &1D52
     1715   20 01 1D   JSR &1D01
     1718   20 55 1F   JSR &1F55
     171B   20 51 18   JSR &1851
     171E   A9 00      LDA #&00
     1720   8D 5B 25   STA &255B
     1723   8D 76 2D   STA &2D76
     1726   8D 7D 2D   STA &2D7D
     1729   A0 54      LDY #&54
.b1
     172B   99 0A 2D   STA &2D0A,Y
     172E   88         DEY
     172F   D0 FA      BNE &172B
     1731   AD 09 22   LDA &2209
     1734   8D 47 2D   STA &2D47
     1737   A9 06      LDA #&06
     1739   8D 0A 2D   STA &2D0A
     173C   A9 1E      LDA #&1E
     173E   8D 13 2D   STA &2D13
     1741   A9 30      LDA #&30
     1743   8D 5A 25   STA &255A
     1746   A9 88      LDA #&88
     1748   8D 59 25   STA &2559
     174B   A9 80      LDA #&80
     174D   8D 57 25   STA &2557
     1750   A9 32      LDA #&32
     1752   8D 58 25   STA &2558
     1755   AE 56 25   LDX &2556
.pmi
     1758   20 DD 19   JSR &19DD
     175B   18         CLC
     175C   AD 57 25   LDA &2557
     175F   69 18      ADC #&18
     1761   8D 57 25   STA &2557
     1764   CA         DEX
     1765   D0 F1      BNE &1758
     1767   A9 3A      LDA #&3A
     1769   85 81      STA &81
     176B   A9 81      LDA #&81
     176D   85 82      STA &82
     176F   A2 01      LDX #&01
     1771   A0 08      LDY #&08
.pp1
     1773   A9 81      LDA #&81
     1775   9D 13 2D   STA &2D13,X
     1778   E8         INX
     1779   98         TYA
     177A   18         CLC
     177B   69 50      ADC #&50
     177D   9D 13 2D   STA &2D13,X
     1780   A8         TAY
     1781   E8         INX
     1782   A5 81      LDA &81
     1784   69 00      ADC #&00
     1786   9D 13 2D   STA &2D13,X
     1789   85 81      STA &81
     178B   18         CLC
     178C   E8         INX
     178D   A5 82      LDA &82
     178F   69 0A      ADC #&0A
     1791   85 82      STA &82
     1793   9D 13 2D   STA &2D13,X
     1796   E8         INX
     1797   A9 D0      LDA #&D0
     1799   9D 13 2D   STA &2D13,X
     179C   E8         INX
     179D   E0 1F      CPX #&1F
     179F   30 D2      BMI &1773
     17A1   A0 00      LDY #&00
     17A3   B1 75      LDA (&75),Y
     17A5   85 70      STA &70
.slop
     17A7   C8         INY
     17A8   C8         INY
     17A9   B1 75      LDA (&75),Y
     17AB   85 78      STA &78
     17AD   C8         INY
     17AE   B1 75      LDA (&75),Y
     17B0   85 79      STA &79
     17B2   20 08 2C   JSR &2C08
     17B5   C8         INY
     17B6   C8         INY
     17B7   C4 70      CPY &70
     17B9   30 EC      BMI &17A7
     17BB   20 9C 1A   JSR &1A9C
.sgun
.player_gun_initialise
     17BE   A9 20      LDA #&20
     17C0   8D 70 2D   STA &2D70
     17C3   A9 7E      LDA #&7E
     17C5   85 87      STA &87
     17C7   A9 90      LDA #&90
     17C9   85 86      STA &86
     17CB   A9 20      LDA #&20
     17CD   8D D7 28   STA &28D7
     17D0   A9 58      LDA #&58
     17D2   8D D6 28   STA &28D6
     17D5   20 D3 28   JSR &28D3
     17D8   A9 40      LDA #&40
     17DA   4C A3 19   JMP &19A3
.sor
     17DD   AD 76 2D   LDA &2D76
     17E0   F0 6F      BEQ &1851
     17E2   F8         SED
     17E3   29 02      AND #&02
     17E5   F0 14      BEQ &17FB
     17E7   18         CLC
     17E8   A9 15      LDA #&15
     17EA   6D 77 2D   ADC &2D77
     17ED   8D 77 2D   STA &2D77
     17F0   AD 78 2D   LDA &2D78
     17F3   69 00      ADC #&00
     17F5   8D 78 2D   STA &2D78
     17F8   20 C5 1C   JSR &1CC5
.s1
     17FB   A9 40      LDA #&40
     17FD   2C 76 2D   BIT &2D76
     1800   F0 1C      BEQ &181E
     1802   18         CLC
     1803   A9 01      LDA #&01
.wng
     1805   6D 77 2D   ADC &2D77
     1808   8D 77 2D   STA &2D77
     180B   AD 78 2D   LDA &2D78
     180E   69 00      ADC #&00
     1810   8D 78 2D   STA &2D78
     1813   D8         CLD
     1814   A2 B7      LDX #&B7
     1816   A0 12      LDY #&12
     1818   A9 07      LDA #&07
     181A   20 F1 FF   JSR &FFF1
     181D   F8         SED
.s4
     181E   A9 10      LDA #&10
     1820   2C 76 2D   BIT &2D76
     1823   F0 1A      BEQ &183F
     1825   18         CLC
     1826   A9 0A      LDA #&0A
.pig
     1828   6D 77 2D   ADC &2D77
     182B   8D 77 2D   STA &2D77
     182E   AD 78 2D   LDA &2D78
     1831   69 00      ADC #&00
     1833   8D 78 2D   STA &2D78
     1836   D8         CLD
     1837   20 DB 18   JSR &18DB
     183A   D0 03      BNE &183F
     183C   20 3E 12   JSR &123E
.s2
     183F   D8         CLD
     1840   20 EB 11   JSR &11EB
     1843   AD 76 2D   LDA &2D76
     1846   10 03      BPL &184B
     1848   4C 9A 18   JMP &189A
.s3
     184B   A9 00      LDA #&00
     184D   8D 76 2D   STA &2D76
     1850   60         RTS
.s7
.score_update_screen
     1851   A9 34      LDA #&34
     1853   85 81      STA &81
     1855   A9 B0      LDA #&B0
     1857   85 80      STA &80
     1859   A9 24      LDA #&24
     185B   85 83      STA &83
     185D   A9 F0      LDA #&F0
     185F   2D 78 2D   AND &2D78
     1862   20 5A 28   JSR &285A
     1865   A9 0F      LDA #&0F
     1867   2D 78 2D   AND &2D78
     186A   0A         ASL A
     186B   0A         ASL A
     186C   0A         ASL A
     186D   0A         ASL A
     186E   20 5A 28   JSR &285A
     1871   A9 F0      LDA #&F0
     1873   2D 77 2D   AND &2D77
     1876   20 5A 28   JSR &285A
     1879   A9 0F      LDA #&0F
     187B   2D 77 2D   AND &2D77
     187E   0A         ASL A
     187F   0A         ASL A
     1880   0A         ASL A
     1881   0A         ASL A
     1882   20 5A 28   JSR &285A
     1885   A9 00      LDA #&00
     1887   4C 5A 28   JMP &285A
.delay
     188A   8D 0A 22   STA &220A
     188D   98         TYA
     188E   48         PHA
.del1
     188F   20 4A 28   JSR &284A
     1892   CE 0A 22   DEC &220A
     1895   D0 F8      BNE &188F
     1897   68         PLA
     1898   A8         TAY
     1899   60         RTS
.next_level
.ef
     189A   A9 00      LDA #&00
     189C   8D 76 2D   STA &2D76
     189F   18         CLC
     18A0   A5 88      LDA &88
     18A2   69 40      ADC #&40
     18A4   85 88      STA &88
     18A6   A9 64      LDA #&64
     18A8   20 8A 18   JSR &188A
     18AB   4C E0 16   JMP &16E0
.cht
     18AE   A9 03      LDA #&03
     18B0   2D 5C 25   AND &255C
     18B3   AA         TAX
     18B4   D0 03      BNE &18B9
     18B6   A9 33      LDA #&33
     18B8   60         RTS
.ct1
     18B9   CA         DEX
     18BA   D0 04      BNE &18C0
     18BC   8A         TXA
     18BD   A2 0D      LDX #&0D
     18BF   60         RTS
.ct2
     18C0   CA         DEX
     18C1   D0 05      BNE &18C8
     18C3   A9 11      LDA #&11
     18C5   A2 1A      LDX #&1A
     18C7   60         RTS
.ct3
     18C8   A9 22      LDA #&22
     18CA   A2 26      LDX #&26
     18CC   60         RTS
.patch
     18CD   A5 7D      LDA &7D
     18CF   10 06      BPL &18D7
     18D1   A5 80      LDA &80
     18D3   49 C0      EOR #&C0
     18D5   85 80      STA &80
.patch2
     18D7   AD 79 2D   LDA &2D79
     18DA   60         RTS
.nxno
     18DB   EE BA 1A   INC &1ABA
     18DE   AC BA 1A   LDY &1ABA
     18E1   B9 BA 1A   LDA &1ABA,Y
     18E4   85 70      STA &70
     18E6   29 0E      AND #&0E
     18E8   C9 08      CMP #&08
     18EA   10 0A      BPL &18F6
     18EC   18         CLC
     18ED   6D 59 25   ADC &2559
     18F0   85 80      STA &80
     18F2   A9 00      LDA #&00
     18F4   F0 0A      BEQ &1900
.n1
     18F6   18         CLC
     18F7   6D 59 25   ADC &2559
     18FA   69 78      ADC #&78
     18FC   85 80      STA &80
     18FE   A9 02      LDA #&02
.n2
     1900   6D 5A 25   ADC &255A
     1903   85 81      STA &81
     1905   A9 20      LDA #&20
     1907   85 83      STA &83
     1909   20 3B 19   JSR &193B
     190C   18         CLC
     190D   AD 59 25   LDA &2559
     1910   69 20      ADC #&20
     1912   8D 59 25   STA &2559
     1915   90 03      BCC &191A
     1917   EE 5A 25   INC &255A
.n3
     191A   20 6F 19   JSR &196F
     191D   18         CLC
     191E   A5 80      LDA &80
     1920   69 08      ADC #&08
     1922   85 80      STA &80
     1924   90 02      BCC &1928
     1926   E6 81      INC &81
.n4
     1928   18         CLC
     1929   A5 82      LDA &82
     192B   69 08      ADC #&08
     192D   85 82      STA &82
     192F   90 02      BCC &1933
     1931   E6 83      INC &83
.n5
     1933   20 6F 19   JSR &196F
     1936   C8         INY
     1937   B9 BA 1A   LDA &1ABA,Y
     193A   60         RTS
.chnot
     193B   A9 80      LDA #&80
     193D   24 70      BIT &70
     193F   F0 05      BEQ &1946
     1941   A9 00      LDA #&00
     1943   85 82      STA &82
     1945   60         RTS
.c1
     1946   4A         LSR A
     1947   24 70      BIT &70
     1949   F0 05      BEQ &1950
     194B   A9 10      LDA #&10
     194D   85 82      STA &82
     194F   60         RTS
.c2
     1950   4A         LSR A
     1951   24 70      BIT &70
     1953   F0 05      BEQ &195A
     1955   A9 20      LDA #&20
     1957   85 82      STA &82
     1959   60         RTS
.c3
     195A   4A         LSR A
     195B   24 70      BIT &70
     195D   F0 05      BEQ &1964
     195F   A9 30      LDA #&30
     1961   85 82      STA &82
     1963   60         RTS
.c4
     1964   A9 01      LDA #&01
     1966   24 70      BIT &70
     1968   F0 04      BEQ &196E
     196A   A9 40      LDA #&40
     196C   85 82      STA &82
.c5
     196E   60         RTS
.pno
     196F   98         TYA
     1970   48         PHA
     1971   A0 07      LDY #&07
     1973   18         CLC
     1974   A5 80      LDA &80
     1976   69 78      ADC #&78
     1978   85 84      STA &84
     197A   A5 81      LDA &81
     197C   69 02      ADC #&02
     197E   85 85      STA &85
     1980   A5 80      LDA &80
     1982   29 07      AND #&07
     1984   49 07      EOR #&07
     1986   85 74      STA &74
     1988   C9 07      CMP #&07
     198A   10 0B      BPL &1997
.pnbot
     198C   B1 82      LDA (&82),Y
     198E   11 84      ORA (&84),Y
     1990   91 84      STA (&84),Y
     1992   88         DEY
     1993   C4 74      CPY &74
     1995   D0 F5      BNE &198C
.pntop
     1997   B1 82      LDA (&82),Y
     1999   11 80      ORA (&80),Y
     199B   91 80      STA (&80),Y
     199D   88         DEY
     199E   10 F7      BPL &1997
     19A0   68         PLA
     19A1   A8         TAY
     19A2   60         RTS
.playTune
.tune
     19A3   85 70      STA &70
.t1
     19A5   A4 70      LDY &70
     19A7   B9 EA 1A   LDA &1AEA,Y
     19AA   F0 1A      BEQ &19C6
     19AC   8D FC 2D   STA &2DFC
     19AF   C8         INY
     19B0   B9 EA 1A   LDA &1AEA,Y
     19B3   8D FE 2D   STA &2DFE
     19B6   A2 F8      LDX #&F8
     19B8   A0 2D      LDY #&2D
     19BA   A9 07      LDA #&07
     19BC   20 F1 FF   JSR &FFF1
     19BF   E6 70      INC &70
     19C1   E6 70      INC &70
     19C3   4C A5 19   JMP &19A5
.t3
     19C6   A9 80      LDA #&80
     19C8   A2 FA      LDX #&FA
     19CA   20 F4 FF   JSR &FFF4
     19CD   E0 0F      CPX #&0F
     19CF   30 F5      BMI &19C6
     19D1   60         RTS
.keyboardScan
.key
     19D2   A9 81      LDA #&81
     19D4   A0 FF      LDY #&FF
     19D6   20 F4 FF   JSR &FFF4
     19D9   E8         INX
     19DA   60         RTS
     19DB   E8         INX
     19DC   60         RTS
.end_SS_03
.end_SS_03 =  &19DD 
.mini
.plot_gun_life_indicator
     19DD   A9 10      LDA #&10
     19DF   85 82      STA &82
     19E1   A9 21      LDA #&21
     19E3   85 83      STA &83
     19E5   AD 57 25   LDA &2557
     19E8   85 80      STA &80
     19EA   AD 58 25   LDA &2558
     19ED   85 81      STA &81
     19EF   4C B9 1C   JMP &1CB9
.gun_hit_display
.h0
     19F2   A9 20      LDA #&20
     19F4   2C 76 2D   BIT &2D76
     19F7   D0 06      BNE &19FF
     19F9   AD 55 25   LDA &2555
     19FC   D0 34      BNE &1A32
.hreturn
     19FE   60         RTS
.h1
     19FF   A2 00      LDX #&00
     1A01   A0 07      LDY #&07
     1A03   20 1D 28   JSR &281D
     1A06   A9 07      LDA #&07
     1A08   A0 2D      LDY #&2D
     1A0A   A2 E0      LDX #&E0
     1A0C   20 F1 FF   JSR &FFF1
     1A0F   A9 FF      LDA #&FF
     1A11   8D 55 25   STA &2555
     1A14   A9 60      LDA #&60
     1A16   8D 45 2C   STA &2C45
     1A19   8D F7 29   STA &29F7
     1A1C   8D 6E 28   STA &286E
     1A1F   8D 5E 29   STA &295E
     1A22   20 D3 28   JSR &28D3
     1A25   A9 22      LDA #&22
     1A27   8D D7 28   STA &28D7
     1A2A   A9 10      LDA #&10
     1A2C   8D D6 28   STA &28D6
     1A2F   4C D3 28   JMP &28D3
.h12
     1A32   CE 55 25   DEC &2555
     1A35   AD 55 25   LDA &2555
     1A38   C9 FE      CMP #&FE
     1A3A   D0 07      BNE &1A43
     1A3C   A2 00      LDX #&00
     1A3E   A0 00      LDY #&00
     1A40   4C 1D 28   JMP &281D
.h3
     1A43   C9 DC      CMP #&DC
     1A45   D0 0B      BNE &1A52
     1A47   20 D3 28   JSR &28D3
     1A4A   A9 38      LDA #&38
     1A4C   8D D6 28   STA &28D6
     1A4F   4C D3 28   JMP &28D3
.h4
     1A52   C9 8C      CMP #&8C
     1A54   D0 0B      BNE &1A61
     1A56   20 D3 28   JSR &28D3
     1A59   A9 60      LDA #&60
     1A5B   8D D6 28   STA &28D6
     1A5E   4C D3 28   JMP &28D3
.h5
     1A61   C9 01      CMP #&01
     1A63   D0 99      BNE &19FE
     1A65   CE 56 25   DEC &2556
     1A68   D0 03      BNE &1A6D
     1A6A   4C AE 11   JMP &11AE
.h5a
     1A6D   20 D3 28   JSR &28D3
     1A70   20 BE 17   JSR &17BE
     1A73   AC 13 2D   LDY &2D13
.h6
     1A76   B1 75      LDA (&75),Y
     1A78   C9 C0      CMP #&C0
     1A7A   D0 19      BNE &1A95
     1A7C   88         DEY
     1A7D   B1 75      LDA (&75),Y
     1A7F   10 15      BPL &1A96
     1A81   49 80      EOR #&80
     1A83   91 75      STA (&75),Y
     1A85   88         DEY
     1A86   B1 75      LDA (&75),Y
     1A88   85 79      STA &79
     1A8A   88         DEY
     1A8B   B1 75      LDA (&75),Y
     1A8D   85 78      STA &78
     1A8F   20 08 2C   JSR &2C08
     1A92   4C 98 1A   JMP &1A98
.h8
     1A95   88         DEY
.h9
     1A96   88         DEY
     1A97   88         DEY
.h10
     1A98   88         DEY
     1A99   88         DEY
     1A9A   D0 DA      BNE &1A76
.h7
     1A9C   A9 20      LDA #&20
     1A9E   8D 6E 28   STA &286E
     1AA1   A9 A5      LDA #&A5
     1AA3   8D F7 29   STA &29F7
     1AA6   A9 A9      LDA #&A9
     1AA8   8D 45 2C   STA &2C45
     1AAB   8D 5E 29   STA &295E
     1AAE   38         SEC
     1AAF   AD 57 25   LDA &2557
     1AB2   E9 18      SBC #&18
     1AB4   8D 57 25   STA &2557
     1AB7   4C DD 19   JMP &19DD
.end_PIG_01
.end_PIG-01 =  &1ABA 
.nl
     1ABA   0D
     1ABB   4A
     1ABC   18
     1ABD   8C
     1ABE   8E
     1ABF   1C
     1AC0   8A
     1AC1   84
     1AC2   14
     1AC3   82
     1AC4   20
     1AC5   44
     1AC6   05
     1AC7   00
     1AC8   48
     1AC9   18
     1ACA   86
     1ACB   84
     1ACC   14
     1ACD   86
     1ACE   84
     1ACF   14
     1AD0   88
     1AD1   2A
     1AD2   4E
     1AD3   05
     1AD4   00
     1AD5   4A
     1AD6   18
     1AD7   8C
     1AD8   8E
     1AD9   1C
     1ADA   8A
     1ADB   84
     1ADC   14
     1ADD   82
     1ADE   20
     1ADF   44
     1AE0   00
     1AE1   44
     1AE2   42
     1AE3   42
     1AE4   44
     1AE5   46
     1AE6   24
     1AE7   14
     1AE8   05
     1AE9   00
.tl
     1AEA   65
     1AEB   17
     1AEC   5D
     1AED   05
     1AEE   59
     1AEF   0A
     1AF0   65
     1AF1   05
     1AF2   79
     1AF3   0A
     1AF4   81
     1AF5   05
     1AF6   89
     1AF7   1E
     1AF8   79
     1AF9   1E
     1AFA   00
     1AFB   6D
     1AFC   17
     1AFD   75
     1AFE   05
     1AFF   79
     1B00   0A
     1B01   75
     1B02   05
     1B03   79
     1B04   0A
     1B05   6D
     1B06   05
     1B07   65
     1B08   1E
     1B09   59
     1B0A   1E
     1B0B   00
     1B0C   65
     1B0D   17
     1B0E   5D
     1B0F   05
     1B10   59
     1B11   0A
     1B12   65
     1B13   05
     1B14   79
     1B15   0A
     1B16   81
     1B17   05
     1B18   89
     1B19   1E
     1B1A   79
     1B1B   0F
     1B1C   00
     1B1D   79
     1B1E   0F
     1B1F   81
     1B20   0F
     1B21   81
     1B22   0F
     1B23   79
     1B24   0F
     1B25   75
     1B26   0F
     1B27   79
     1B28   1E
     1B29   00
     1B2A   59
     1B2B   05
     1B2C   59
     1B2D   05
     1B2E   59
     1B2F   05
     1B30   49
     1B31   0F
     1B32   00
     1B33   41
     1B34   05
     1B35   35
     1B36   0A
     1B37   39
     1B38   05
     1B39   3D
     1B3A   05
     1B3B   41
     1B3C   05
     1B3D   65
     1B3E   0A
     1B3F   65
     1B40   0A
     1B41   55
     1B42   14
     1B43   00
     1B44   14
     1B45   00
.pg
     1B46   A9 23      LDA #&23
     1B48   85 83      STA &83
     1B4A   AD 7D 2D   LDA &2D7D
     1B4D   D0 77      BNE &1BC6
     1B4F   A9 42      LDA #&42
     1B51   2C 76 2D   BIT &2D76
     1B54   F0 6F      BEQ &1BC5
     1B56   A9 02      LDA #&02
     1B58   2C 54 25   BIT &2554
     1B5B   F0 1F      BEQ &1B7C
.pig_init_right
     1B5D   A9 23      LDA #&23
     1B5F   85 83      STA &83
     1B61   8D 47 1B   STA &1B47
     1B64   A9 68      LDA #&68
     1B66   8D 7C 2D   STA &2D7C
     1B69   85 80      STA &80
     1B6B   A9 00      LDA #&00
     1B6D   8D 67 1C   STA &1C67
     1B70   A9 4C      LDA #&4C
     1B72   8D 7F 2D   STA &2D7F
     1B75   A9 4B      LDA #&4B
     1B77   8D A4 1B   STA &1BA4
     1B7A   D0 1B      BNE &1B97
.pgl
.pig_init_left
     1B7C   A9 22      LDA #&22
     1B7E   85 83      STA &83
     1B80   8D 47 1B   STA &1B47
     1B83   A9 00      LDA #&00
     1B85   8D 7C 2D   STA &2D7C
     1B88   85 80      STA &80
     1B8A   8D 7F 2D   STA &2D7F
     1B8D   A9 4C      LDA #&4C
     1B8F   8D 67 1C   STA &1C67
     1B92   A9 49      LDA #&49
     1B94   8D A4 1B   STA &1BA4
.b3
     1B97   A9 00      LDA #&00
     1B99   85 7C      STA &7C
     1B9B   EE 54 25   INC &2554
     1B9E   A9 07      LDA #&07
     1BA0   25 7D      AND &7D
     1BA2   AA         TAX
     1BA3   A9 4B      LDA #&4B
     1BA5   18         CLC
.b5
     1BA6   69 05      ADC #&05
     1BA8   A8         TAY
     1BA9   A5 7C      LDA &7C
     1BAB   69 10      ADC #&10
     1BAD   85 7C      STA &7C
     1BAF   98         TYA
     1BB0   CA         DEX
     1BB1   10 F3      BPL &1BA6
     1BB3   8D 7D 2D   STA &2D7D
     1BB6   85 81      STA &81
     1BB8   A2 02      LDX #&02
     1BBA   8E 7E 2D   STX &2D7E
     1BBD   BD 68 2D   LDA &2D68,X
     1BC0   85 82      STA &82
     1BC2   4C B9 1C   JMP &1CB9
.ep
     1BC5   60         RTS
.pgb0
     1BC6   AD 7C 2D   LDA &2D7C
     1BC9   85 80      STA &80
     1BCB   AD 7D 2D   LDA &2D7D
     1BCE   85 81      STA &81
     1BD0   10 18      BPL &1BEA
     1BD2   CE 7E 2D   DEC &2D7E
     1BD5   D0 EE      BNE &1BC5
     1BD7   49 80      EOR #&80
     1BD9   85 81      STA &81
     1BDB   A9 10      LDA #&10
     1BDD   0D 76 2D   ORA &2D76
     1BE0   8D 76 2D   STA &2D76
     1BE3   A9 00      LDA #&00
     1BE5   8D 7D 2D   STA &2D7D
     1BE8   F0 4C      BEQ &1C36
.pgb1
     1BEA   AD 7E 2D   LDA &2D7E
     1BED   29 7F      AND #&7F
     1BEF   AA         TAX
     1BF0   BD 68 2D   LDA &2D68,X
     1BF3   85 82      STA &82
     1BF5   A0 00      LDY #&00
     1BF7   B1 8A      LDA (&8A),Y
     1BF9   85 70      STA &70
.pgh
     1BFB   C8         INY
     1BFC   B1 8A      LDA (&8A),Y
     1BFE   38         SEC
     1BFF   E5 7C      SBC &7C
     1C01   30 4C      BMI &1C4F
     1C03   C9 07      CMP #&07
     1C05   10 48      BPL &1C4F
     1C07   C8         INY
     1C08   C8         INY
     1C09   B1 8A      LDA (&8A),Y
     1C0B   F0 44      BEQ &1C51
     1C0D   C8         INY
     1C0E   B1 8A      LDA (&8A),Y
     1C10   38         SEC
     1C11   ED 7F 2D   SBC &2D7F
     1C14   30 3C      BMI &1C52
     1C16   C9 03      CMP #&03
     1C18   10 38      BPL &1C52
     1C1A   A9 E8      LDA #&E8
     1C1C   91 8A      STA (&8A),Y
     1C1E   AA         TAX
     1C1F   A9 07      LDA #&07
     1C21   A0 2D      LDY #&2D
     1C23   20 F1 FF   JSR &FFF1
     1C26   A9 10      LDA #&10
     1C28   8D 7E 2D   STA &2D7E
     1C2B   A9 80      LDA #&80
     1C2D   0D 7D 2D   ORA &2D7D
     1C30   8D 7D 2D   STA &2D7D
     1C33   20 B9 1C   JSR &1CB9
.bx
     1C36   A9 23      LDA #&23
     1C38   85 83      STA &83
     1C3A   A9 70      LDA #&70
     1C3C   85 82      STA &82
     1C3E   4C B9 1C   JMP &1CB9
.b9
     1C41   A9 04      LDA #&04
     1C43   0D 76 2D   ORA &2D76
     1C46   8D 76 2D   STA &2D76
     1C49   A9 00      LDA #&00
     1C4B   8D 7D 2D   STA &2D7D
.x
     1C4E   60         RTS
.pgnh
     1C4F   C8         INY
     1C50   C8         INY
     1C51   C8         INY
     1C52   C4 70      CPY &70
     1C54   30 A5      BMI &1BFB
     1C56   A9 80      LDA #&80
     1C58   4D 7E 2D   EOR &2D7E
     1C5B   8D 7E 2D   STA &2D7E
     1C5E   30 EE      BMI &1C4E
     1C60   20 B9 1C   JSR &1CB9
     1C63   AD 7F 2D   LDA &2D7F
.xps
     1C66   C9 00      CMP #&00
     1C68   F0 D7      BEQ &1C41
     1C6A   29 1F      AND #&1F
     1C6C   D0 09      BNE &1C77
     1C6E   A9 07      LDA #&07
     1C70   A0 2D      LDY #&2D
     1C72   A2 F0      LDX #&F0
     1C74   20 F1 FF   JSR &FFF1
.b6
     1C77   AE 7E 2D   LDX &2D7E
     1C7A   CA         DEX
     1C7B   10 02      BPL &1C7F
     1C7D   A2 07      LDX #&07
.b7
     1C7F   8E 7E 2D   STX &2D7E
     1C82   BD 68 2D   LDA &2D68,X
     1C85   85 82      STA &82
     1C87   AD 67 1C   LDA &1C67
     1C8A   F0 18      BEQ &1CA4
     1C8C   EE 7F 2D   INC &2D7F
     1C8F   18         CLC
     1C90   AD 7C 2D   LDA &2D7C
     1C93   69 08      ADC #&08
     1C95   8D 7C 2D   STA &2D7C
     1C98   85 80      STA &80
     1C9A   90 1D      BCC &1CB9
     1C9C   EE 7D 2D   INC &2D7D
     1C9F   E6 81      INC &81
     1CA1   4C B9 1C   JMP &1CB9
.b10
     1CA4   CE 7F 2D   DEC &2D7F
     1CA7   38         SEC
     1CA8   AD 7C 2D   LDA &2D7C
     1CAB   E9 08      SBC #&08
     1CAD   8D 7C 2D   STA &2D7C
     1CB0   85 80      STA &80
     1CB2   B0 05      BCS &1CB9
     1CB4   CE 7D 2D   DEC &2D7D
     1CB7   C6 81      DEC &81
.plot_pigeon_sprite
.pb
     1CB9   A0 17      LDY #&17
.b8
     1CBB   B1 82      LDA (&82),Y
     1CBD   51 80      EOR (&80),Y
     1CBF   91 80      STA (&80),Y
     1CC1   88         DEY
     1CC2   10 F7      BPL &1CBB
     1CC4   60         RTS
.ddu1
.plane_hit
     1CC5   AC 5B 25   LDY &255B
     1CC8   C0 09      CPY #&09
     1CCA   10 23      BPL &1CEF
     1CCC   B9 40 25   LDA &2540,Y
     1CCF   85 80      STA &80
     1CD1   C8         INY
     1CD2   B9 40 25   LDA &2540,Y
     1CD5   85 81      STA &81
     1CD7   C8         INY
     1CD8   8C 5B 25   STY &255B
     1CDB   A0 04      LDY #&04
     1CDD   A9 55      LDA #&55
.ddu2
     1CDF   91 80      STA (&80),Y
     1CE1   88         DEY
     1CE2   10 FB      BPL &1CDF
     1CE4   A0 09      LDY #&09
     1CE6   0A         ASL A
     1CE7   91 80      STA (&80),Y
     1CE9   A0 01      LDY #&01
     1CEB   A9 FF      LDA #&FF
     1CED   91 80      STA (&80),Y
.ddu3
     1CEF   60         RTS
.random1
     1CF0   A5 7D      LDA &7D
     1CF2   29 48      AND #&48
     1CF4   69 38      ADC #&38
     1CF6   0A         ASL A
     1CF7   0A         ASL A
     1CF8   26 7F      ROL &7F
     1CFA   26 7E      ROL &7E
     1CFC   26 7D      ROL &7D
     1CFE   A5 7D      LDA &7D
     1D00   60         RTS
.draw_backgnd_art
     1D01   A0 00      LDY #&00
.draw_line_art_loop
     1D03   B9 E8 1D   LDA &1DE8,Y
     1D06   20 EE FF   JSR &FFEE
     1D09   C8         INY
     1D0A   D0 F7      BNE &1D03
     1D0C   A5 88      LDA &88
     1D0E   85 82      STA &82
     1D10   A5 89      LDA &89
     1D12   85 83      STA &83
     1D14   A9 1F      LDA #&1F
     1D16   8D 1E 2C   STA &2C1E
     1D19   A9 E0      LDA #&E0
     1D1B   85 70      STA &70
     1D1D   A0 00      LDY #&00
.draw_backgnd_sprite_loop
     1D1F   C8         INY
     1D20   BE FB 1E   LDX &1EFB,Y
     1D23   C8         INY
     1D24   B9 FB 1E   LDA &1EFB,Y
     1D27   24 70      BIT &70
     1D29   D0 0C      BNE &1D37
     1D2B   85 89      STA &89
     1D2D   86 88      STX &88
     1D2F   C8         INY
     1D30   BE FB 1E   LDX &1EFB,Y
     1D33   C8         INY
     1D34   B9 FB 1E   LDA &1EFB,Y
.skip1
     1D37   86 78      STX &78
     1D39   85 79      STA &79
     1D3B   20 08 2C   JSR &2C08
     1D3E   CC FB 1E   CPY &1EFB
     1D41   30 DC      BMI &1D1F
     1D43   A9 3F      LDA #&3F
     1D45   8D 1E 2C   STA &2C1E
     1D48   A5 82      LDA &82
     1D4A   85 88      STA &88
     1D4C   A5 83      LDA &83
     1D4E   85 89      STA &89
     1D50   60         RTS
     1D51   00         BRK
.plot_clouds
     1D52   A9 44      LDA #&44
     1D54   85 79      STA &79
     1D56   A9 FF      LDA #&FF
     1D58   A2 05      LDX #&05
.mid_outer_loop
     1D5A   A0 00      LDY #&00
     1D5C   84 78      STY &78
.mid_inner_loop
     1D5E   91 78      STA (&78),Y
     1D60   C8         INY
     1D61   D0 FB      BNE &1D5E
     1D63   E6 79      INC &79
     1D65   CA         DEX
     1D66   D0 F2      BNE &1D5A
     1D68   A0 1F      LDY #&1F
.cloud_loop2
     1D6A   B9 E0 2E   LDA &2EE0,Y
     1D6D   91 78      STA (&78),Y
     1D6F   88         DEY
     1D70   10 F8      BPL &1D6A
     1D72   A9 2E      LDA #&2E
     1D74   85 7B      STA &7B
     1D76   A9 20      LDA #&20
     1D78   85 78      STA &78
     1D7A   A2 08      LDX #&08
.next_cloud_sprite
     1D7C   BD 5F 2D   LDA &2D5F,X
     1D7F   85 7A      STA &7A
     1D81   A0 3F      LDY #&3F
.next_cloud_byte
     1D83   B1 7A      LDA (&7A),Y
     1D85   91 78      STA (&78),Y
     1D87   88         DEY
     1D88   10 F9      BPL &1D83
     1D8A   18         CLC
     1D8B   A5 78      LDA &78
     1D8D   69 40      ADC #&40
     1D8F   85 78      STA &78
     1D91   90 02      BCC &1D95
     1D93   E6 79      INC &79
.skip1
     1D95   CA         DEX
     1D96   10 E4      BPL &1D7C
     1D98   A0 1F      LDY #&1F
.loop32
     1D9A   B9 C0 2E   LDA &2EC0,Y
     1D9D   91 78      STA (&78),Y
     1D9F   88         DEY
     1DA0   10 F8      BPL &1D9A
.mirror_loop_1
     1DA2   A0 00      LDY #&00
.mirror_loop_2
     1DA4   A2 07      LDX #&07
.mirror_loop_3
.modify_lower_dest_addr
     1DA6   B9 00 49   LDA &4900,Y
.modify_upper_dest_addr
     1DA9   9D 80 41   STA &4180,X
     1DAC   C8         INY
     1DAD   CA         DEX
     1DAE   10 F6      BPL &1DA6
     1DB0   18         CLC
     1DB1   AD AA 1D   LDA &1DAA
     1DB4   69 08      ADC #&08
     1DB6   8D AA 1D   STA &1DAA
     1DB9   90 03      BCC &1DBE
     1DBB   EE AB 1D   INC &1DAB
.skip2
     1DBE   C0 80      CPY #&80
     1DC0   D0 E2      BNE &1DA4
     1DC2   AD A7 1D   LDA &1DA7
     1DC5   49 80      EOR #&80
     1DC7   8D A7 1D   STA &1DA7
     1DCA   30 03      BMI &1DCF
     1DCC   EE A8 1D   INC &1DA8
.skip3
     1DCF   A9 44      LDA #&44
     1DD1   CD AB 1D   CMP &1DAB
     1DD4   D0 CC      BNE &1DA2
     1DD6   8C AA 1D   STY &1DAA
     1DD9   E8         INX
     1DDA   8E A7 1D   STX &1DA7
     1DDD   A9 49      LDA #&49
     1DDF   8D A8 1D   STA &1DA8
     1DE2   A9 41      LDA #&41
     1DE4   8D AB 1D   STA &1DAB
     1DE7   60         RTS
.scenery_line_art
     1DE8   12
     1DE9   00
     1DEA   06
     1DEB   19
     1DEC   04
     1DED   00
     1DEE   00
     1DEF   13
     1DF0   00
     1DF1   19
     1DF2   05
     1DF3   04
     1DF4   01
     1DF5   17
     1DF6   00
     1DF7   19
     1DF8   05
     1DF9   2C
     1DFA   01
     1DFB   3C
     1DFC   00
     1DFD   19
     1DFE   04
     1DFF   7E
     1E00   04
     1E01   3E
     1E02   00
     1E03   19
     1E04   05
     1E05   1A
     1E06   04
     1E07   20
     1E08   00
     1E09   19
     1E0A   05
     1E0B   84
     1E0C   03
     1E0D   20
     1E0E   00
     1E0F   19
     1E10   05
     1E11   52
     1E12   03
     1E13   28
     1E14   00
     1E15   19
     1E16   05
     1E17   20
     1E18   03
     1E19   38
     1E1A   00
     1E1B   19
     1E1C   05
     1E1D   16
     1E1E   03
     1E1F   46
     1E20   00
     1E21   19
     1E22   05
     1E23   16
     1E24   03
     1E25   52
     1E26   00
     1E27   19
     1E28   05
     1E29   20
     1E2A   03
     1E2B   60
     1E2C   00
     1E2D   19
     1E2E   05
     1E2F   52
     1E30   03
     1E31   74
     1E32   00
     1E33   19
     1E34   05
     1E35   BB
     1E36   03
     1E37   7C
     1E38   00
     1E39   19
     1E3A   04
     1E3B   7E
     1E3C   04
     1E3D   42
     1E3E   00
     1E3F   19
     1E40   15
     1E41   1A
     1E42   04
     1E43   24
     1E44   00
     1E45   19
     1E46   15
     1E47   84
     1E48   03
     1E49   24
     1E4A   00
     1E4B   19
     1E4C   15
     1E4D   52
     1E4E   03
     1E4F   2C
     1E50   00
     1E51   19
     1E52   15
     1E53   20
     1E54   03
     1E55   3C
     1E56   00
     1E57   19
     1E58   04
     1E59   20
     1E5A   03
     1E5B   64
     1E5C   00
     1E5D   19
     1E5E   15
     1E5F   52
     1E60   03
     1E61   78
     1E62   00
     1E63   19
     1E64   15
     1E65   BB
     1E66   03
     1E67   80
     1E68   00
     1E69   12
     1E6A   00
     1E6B   02
     1E6C   19
     1E6D   04
     1E6E   00
     1E6F   05
     1E70   17
     1E71   00
     1E72   19
     1E73   05
     1E74   C4
     1E75   04
     1E76   28
     1E77   00
     1E78   19
     1E79   04
     1E7A   E2
     1E7B   04
     1E7C   1C
     1E7D   00
     1E7E   19
     1E7F   05
     1E80   DE
     1E81   03
     1E82   38
     1E83   00
     1E84   19
     1E85   04
     1E86   80
     1E87   02
     1E88   82
     1E89   00
     1E8A   19
     1E8B   05
     1E8C   48
     1E8D   03
     1E8E   0E
     1E8F   01
     1E90   19
     1E91   05
     1E92   AC
     1E93   03
     1E94   45
     1E95   01
     1E96   19
     1E97   05
     1E98   1A
     1E99   04
     1E9A   4A
     1E9B   01
     1E9C   19
     1E9D   05
     1E9E   00
     1E9F   05
     1EA0   AE
     1EA1   01
     1EA2   19
     1EA3   04
     1EA4   2C
     1EA5   01
     1EA6   C8
     1EA7   00
     1EA8   19
     1EA9   05
     1EAA   8A
     1EAB   02
     1EAC   40
     1EAD   01
     1EAE   19
     1EAF   05
     1EB0   3E
     1EB1   03
     1EB2   04
     1EB3   01
     1EB4   19
     1EB5   04
     1EB6   F4
     1EB7   01
     1EB8   64
     1EB9   00
     1EBA   19
     1EBB   05
     1EBC   FA
     1EBD   00
     1EBE   DC
     1EBF   00
     1EC0   19
     1EC1   05
     1EC2   8C
     1EC3   00
     1EC4   54
     1EC5   01
     1EC6   19
     1EC7   05
     1EC8   00
     1EC9   00
     1ECA   68
     1ECB   01
     1ECC   12
     1ECD   00
     1ECE   04
     1ECF   19
     1ED0   04
     1ED1   9E
     1ED2   02
     1ED3   96
     1ED4   00
     1ED5   19
     1ED6   15
     1ED7   F4
     1ED8   01
     1ED9   78
     1EDA   00
     1EDB   19
     1EDC   05
     1EDD   58
     1EDE   02
     1EDF   64
     1EE0   00
     1EE1   19
     1EE2   05
     1EE3   90
     1EE4   01
     1EE5   5A
     1EE6   00
     1EE7   00
     1EE8   7D
     1EE9   2D
     1EEA   20
     1EEB   13
     1EEC   28
     1EED   A9
     1EEE   09
     1EEF   85
     1EF0   83
     1EF1   A9
     1EF2   F0
     1EF3   85
     1EF4   82
     1EF5   4C
     1EF6   13
     1EF7   28
     1EF8   A9
     1EF9   00
     1EFA   8D
.backgnd_sprite_addr_table
     1EFB   58
     1EFC   A0 24
     1EFE   93 73
     1F00   49 71
     1F02   60 76
     1F04   99 75
     1F06   44 73
     1F08   C9 78
     1F0A   B4 76
     1F0C   C0 24
     1F0E   13 76
     1F10   93 78
     1F12   C9 73
     1F14   49 76
     1F16   E0 78
     1F18   44 78
     1F1A   C4 75
     1F1C   E0 24
     1F1E   13 7B
     1F20   4A 7B
     1F22   60 7B
     1F24   C4 7A
     1F26   00 25
     1F28   B0 78
     1F2A   20 78
     1F2C   5C 78
     1F2E   20 25
     1F30   00 78
     1F32   88 76
     1F34   60 25
     1F36   60 70
     1F38   80 25
     1F3A   E0 72
     1F3C   60 75
     1F3E   E0 77
     1F40   80 7A
     1F42   A0 7A
     1F44   DC 7A
     1F46   A0 25
     1F48   60 7A
     1F4A   30 7B
     1F4C   C0 25
     1F4E   08 79
     1F50   E0 25
     1F52   28 79
     1F54   00
.end_PIG_02
.end_PIG-02 =  &1F55 
.draw_stave
.stv
     1F55   A0 00      LDY #&00
.stave_loop1
     1F57   B9 75 1F   LDA &1F75,Y
     1F5A   20 EE FF   JSR &FFEE
     1F5D   C8         INY
     1F5E   C0 09      CPY #&09
     1F60   D0 F5      BNE &1F57
     1F62   A2 05      LDX #&05
.stave_loop2
     1F64   A0 09      LDY #&09
.stave_loop3
     1F66   B9 75 1F   LDA &1F75,Y
     1F69   20 EE FF   JSR &FFEE
     1F6C   C8         INY
     1F6D   C0 15      CPY #&15
     1F6F   D0 F5      BNE &1F66
     1F71   CA         DEX
     1F72   D0 F0      BNE &1F64
     1F74   60         RTS
.stave_data
.sl
     1F75   12
     1F76   00
     1F77   04
     1F78   19
     1F79   04
     1F7A   00
     1F7B   01
     1F7C   EC
     1F7D   03
     1F7E   19
     1F7F   01
     1F80   00
     1F81   03
     1F82   00
     1F83   00
     1F84   19
     1F85   00
     1F86   00
     1F87   FD
     1F88   F0
     1F89   FF
.end_GG_01
.end_GG-01 =  &1F8A 
.end_G_Note
.end_G_Note =  &2080 
.end_X
.end_X =  &2600 
.D%
.def_log_colour
     281D   A9 13      LDA #&13
     281F   20 EE FF   JSR &FFEE
     2822   8A         TXA
     2823   20 EE FF   JSR &FFEE
     2826   98         TYA
     2827   20 EE FF   JSR &FFEE
     282A   A9 00      LDA #&00
     282C   20 EE FF   JSR &FFEE
     282F   20 EE FF   JSR &FFEE
     2832   4C EE FF   JMP &FFEE
.E%
.def_envelopes
     2835   A5 70      LDA &70
     2837   0A         ASL A
     2838   0A         ASL A
     2839   0A         ASL A
     283A   0A         ASL A
     283B   69 70      ADC #&70
     283D   AA         TAX
     283E   A9 08      LDA #&08
     2840   A0 2D      LDY #&2D
     2842   20 F1 FF   JSR &FFF1
     2845   C6 70      DEC &70
     2847   D0 EC      BNE &2835
     2849   60         RTS
.scr
     284A   A9 02      LDA #&02
     284C   8D 4E FE   STA &FE4E
.scri
     284F   2C 4D FE   BIT &FE4D
     2852   F0 FB      BEQ &284F
     2854   A9 82      LDA #&82
     2856   8D 4E FE   STA &FE4E
     2859   60         RTS
.plot_score
     285A   85 82      STA &82
     285C   A0 0F      LDY #&0F
.loop
     285E   B1 82      LDA (&82),Y
     2860   91 80      STA (&80),Y
     2862   88         DEY
     2863   10 F9      BPL &285E
     2865   18         CLC
     2866   A5 80      LDA &80
     2868   69 10      ADC #&10
     286A   85 80      STA &80
     286C   60         RTS
     286D   00
.mg
.move_gun
     286E   20 D3 28   JSR &28D3
     2871   A9 81      LDA #&81
     2873   A0 FF      LDY #&FF
     2875   A2 BD      LDX #&BD
     2877   20 F4 FF   JSR &FFF4
     287A   E8         INX
     287B   F0 21      BEQ &289E
     287D   88         DEY
     287E   A2 9E      LDX #&9E
     2880   20 F4 FF   JSR &FFF4
     2883   E8         INX
     2884   D0 2E      BNE &28B4
.l
     2886   AE 70 2D   LDX &2D70
     2889   E0 01      CPX #&01
     288B   F0 27      BEQ &28B4
     288D   CA         DEX
     288E   8E 70 2D   STX &2D70
     2891   38         SEC
     2892   A5 86      LDA &86
     2894   E9 08      SBC #&08
     2896   85 86      STA &86
     2898   B0 1A      BCS &28B4
     289A   C6 87      DEC &87
     289C   90 16      BCC &28B4
.r
     289E   AE 70 2D   LDX &2D70
     28A1   E0 47      CPX #&47
     28A3   F0 0F      BEQ &28B4
     28A5   E8         INX
     28A6   8E 70 2D   STX &2D70
     28A9   18         CLC
     28AA   A5 86      LDA &86
     28AC   69 08      ADC #&08
     28AE   85 86      STA &86
     28B0   90 02      BCC &28B4
     28B2   E6 87      INC &87
.gd
     28B4   38         SEC
     28B5   A9 00      LDA #&00
     28B7   85 78      STA &78
     28B9   A0 24      LDY #&24
.ch
     28BB   B1 86      LDA (&86),Y
     28BD   F0 02      BEQ &28C1
     28BF   85 78      STA &78
.cop
     28C1   98         TYA
     28C2   E9 08      SBC #&08
     28C4   A8         TAY
     28C5   10 F4      BPL &28BB
     28C7   A5 78      LDA &78
     28C9   F0 08      BEQ &28D3
     28CB   AD 76 2D   LDA &2D76
     28CE   09 20      ORA #&20
     28D0   8D 76 2D   STA &2D76
.gun
.plot_gun_sprite
.modify_gun_length
     28D3   A0 27      LDY #&27
.gop
     28D5   B9 60 22   LDA &2260,Y
     28D8   F0 04      BEQ &28DE
     28DA   51 86      EOR (&86),Y
     28DC   91 86      STA (&86),Y
.gz
     28DE   88         DEY
     28DF   10 F4      BPL &28D5
     28E1   60         RTS
.mb
.move_bullets
     28E2   A0 00      LDY #&00
     28E4   B1 8A      LDA (&8A),Y
     28E6   85 70      STA &70
     28E8   AD 72 2D   LDA &2D72
     28EB   85 82      STA &82
     28ED   AD 73 2D   LDA &2D73
     28F0   85 83      STA &83
.ntbu
     28F2   C8         INY
     28F3   B1 8A      LDA (&8A),Y
     28F5   85 77      STA &77
     28F7   C8         INY
     28F8   B1 8A      LDA (&8A),Y
     28FA   85 80      STA &80
     28FC   C8         INY
     28FD   B1 8A      LDA (&8A),Y
     28FF   85 81      STA &81
     2901   D0 0A      BNE &290D
     2903   C8         INY
     2904   A9 FE      LDA #&FE
     2906   25 71      AND &71
     2908   85 71      STA &71
     290A   4C 47 29   JMP &2947
.bu1
     290D   C8         INY
     290E   20 C3 29   JSR &29C3
     2911   B1 8A      LDA (&8A),Y
     2913   10 06      BPL &291B
.bu7
     2915   A9 00      LDA #&00
     2917   85 81      STA &81
     2919   F0 2C      BEQ &2947
.bu2
     291B   38         SEC
     291C   A9 07      LDA #&07
     291E   25 80      AND &80
     2920   C9 05      CMP #&05
     2922   30 09      BMI &292D
     2924   A5 80      LDA &80
     2926   E9 05      SBC #&05
     2928   85 80      STA &80
     292A   4C 39 29   JMP &2939
.bu3
     292D   A5 80      LDA &80
     292F   E9 7D      SBC #&7D
     2931   85 80      STA &80
     2933   A5 81      LDA &81
     2935   E9 02      SBC #&02
     2937   85 81      STA &81
.bu4
     2939   38         SEC
     293A   A5 77      LDA &77
     293C   E9 05      SBC #&05
     293E   85 77      STA &77
     2940   C9 02      CMP #&02
     2942   F0 D1      BEQ &2915
     2944   20 C3 29   JSR &29C3
.nxbu
     2947   88         DEY
     2948   88         DEY
     2949   88         DEY
     294A   A5 77      LDA &77
     294C   91 8A      STA (&8A),Y
     294E   C8         INY
     294F   A5 80      LDA &80
     2951   91 8A      STA (&8A),Y
     2953   C8         INY
     2954   A5 81      LDA &81
     2956   91 8A      STA (&8A),Y
     2958   C8         INY
     2959   C4 70      CPY &70
     295B   30 95      BMI &28F2
     295D   60         RTS
.new_bullet
.nb
     295E   A9 01      LDA #&01
     2960   24 71      BIT &71
     2962   D0 12      BNE &2976
     2964   A9 81      LDA #&81
     2966   A0 FF      LDY #&FF
     2968   A2 B6      LDX #&B6
     296A   20 F4 FF   JSR &FFF4
     296D   E8         INX
     296E   F0 07      BEQ &2977
     2970   A9 00      LDA #&00
     2972   8D AD 11   STA &11AD
     2975   60         RTS
.nwb0
     2976   60         RTS
.nwb1
     2977   4C 9C 11   JMP &119C
     297A   71
     297B   D0 F9      BNE &2976
.nwb_patch_return
     297D   A0 FF      LDY #&FF
.nwb2
     297F   C8         INY
     2980   C8         INY
     2981   C8         INY
     2982   C8         INY
     2983   B1 8A      LDA (&8A),Y
     2985   D0 F8      BNE &297F
     2987   88         DEY
     2988   88         DEY
     2989   A9 9D      LDA #&9D
     298B   91 8A      STA (&8A),Y
     298D   C8         INY
     298E   38         SEC
     298F   A5 86      LDA &86
     2991   E9 6E      SBC #&6E
     2993   91 8A      STA (&8A),Y
     2995   85 80      STA &80
     2997   C8         INY
     2998   A5 87      LDA &87
     299A   E9 02      SBC #&02
     299C   91 8A      STA (&8A),Y
     299E   85 81      STA &81
     29A0   C8         INY
     29A1   AD 70 2D   LDA &2D70
     29A4   18         CLC
     29A5   69 03      ADC #&03
     29A7   91 8A      STA (&8A),Y
     29A9   20 C3 29   JSR &29C3
     29AC   A9 03      LDA #&03
     29AE   05 71      ORA &71
     29B0   85 71      STA &71
     29B2   A9 01      LDA #&01
     29B4   0D 76 2D   ORA &2D76
     29B7   8D 76 2D   STA &2D76
     29BA   A9 07      LDA #&07
     29BC   A0 2D      LDY #&2D
     29BE   A2 D0      LDX #&D0
     29C0   4C F1 FF   JMP &FFF1
.s5
.plot_bullet_sprite
     29C3   98         TYA
     29C4   48         PHA
     29C5   A0 05      LDY #&05
     29C7   18         CLC
     29C8   A5 80      LDA &80
     29CA   69 78      ADC #&78
     29CC   85 84      STA &84
     29CE   A5 81      LDA &81
     29D0   69 02      ADC #&02
     29D2   85 85      STA &85
     29D4   A5 80      LDA &80
     29D6   29 07      AND #&07
     29D8   49 07      EOR #&07
     29DA   85 74      STA &74
     29DC   C9 05      CMP #&05
     29DE   10 0B      BPL &29EB
.bot
     29E0   B1 82      LDA (&82),Y
     29E2   51 84      EOR (&84),Y
     29E4   91 84      STA (&84),Y
     29E6   88         DEY
     29E7   C4 74      CPY &74
     29E9   D0 F5      BNE &29E0
.top
     29EB   B1 82      LDA (&82),Y
     29ED   51 80      EOR (&80),Y
     29EF   91 80      STA (&80),Y
     29F1   88         DEY
     29F2   10 F7      BPL &29EB
     29F4   68         PLA
     29F5   A8         TAY
     29F6   60         RTS
.np
     29F7   A5 72      LDA &72
     29F9   C9 01      CMP #&01
     29FB   10 3A      BPL &2A37
     29FD   CE 7A 2D   DEC &2D7A
     2A00   D0 35      BNE &2A37
     2A02   AD 7B 2D   LDA &2D7B
     2A05   8D 7A 2D   STA &2D7A
     2A08   A5 70      LDA &70
     2A0A   20 FA 2C   JSR &2CFA
     2A0D   A8         TAY
     2A0E   38         SEC
.np2
     2A0F   E9 05      SBC #&05
     2A11   10 FC      BPL &2A0F
     2A13   AA         TAX
.np3
     2A14   C8         INY
     2A15   E8         INX
     2A16   D0 FC      BNE &2A14
     2A18   88         DEY
     2A19   B1 75      LDA (&75),Y
     2A1B   30 16      BMI &2A33
     2A1D   A4 70      LDY &70
.se
     2A1F   88         DEY
     2A20   B1 75      LDA (&75),Y
     2A22   30 0F      BMI &2A33
     2A24   88         DEY
     2A25   88         DEY
     2A26   88         DEY
     2A27   88         DEY
     2A28   D0 F5      BNE &2A1F
     2A2A   A9 80      LDA #&80
     2A2C   0D 76 2D   ORA &2D76
     2A2F   8D 76 2D   STA &2D76
     2A32   60         RTS
.fy
     2A33   49 80      EOR #&80
     2A35   91 75      STA (&75),Y
.nw
     2A37   60         RTS
.pxp
     2A38   A5 77      LDA &77
     2A3A   F0 55      BEQ &2A91
     2A3C   A2 21      LDX #&21
     2A3E   86 89      STX &89
     2A40   A5 88      LDA &88
     2A42   48         PHA
     2A43   A5 77      LDA &77
     2A45   C9 15      CMP #&15
     2A47   D0 0A      BNE &2A53
     2A49   A9 40      LDA #&40
     2A4B   85 88      STA &88
     2A4D   20 08 2C   JSR &2C08
     2A50   4C 88 2A   JMP &2A88
.px1
     2A53   C9 0C      CMP #&0C
     2A55   D0 11      BNE &2A68
     2A57   A9 40      LDA #&40
     2A59   85 88      STA &88
     2A5B   20 08 2C   JSR &2C08
     2A5E   A9 80      LDA #&80
     2A60   85 88      STA &88
     2A62   20 08 2C   JSR &2C08
     2A65   4C 88 2A   JMP &2A88
.px2
     2A68   C9 06      CMP #&06
     2A6A   D0 11      BNE &2A7D
     2A6C   A9 80      LDA #&80
     2A6E   85 88      STA &88
     2A70   20 08 2C   JSR &2C08
     2A73   A9 C0      LDA #&C0
     2A75   85 88      STA &88
     2A77   20 08 2C   JSR &2C08
     2A7A   4C 88 2A   JMP &2A88
.px3
     2A7D   C9 01      CMP #&01
     2A7F   D0 07      BNE &2A88
     2A81   A9 C0      LDA #&C0
     2A83   85 88      STA &88
     2A85   20 08 2C   JSR &2C08
.px4
     2A88   A9 2F      LDA #&2F
     2A8A   85 89      STA &89
     2A8C   68         PLA
     2A8D   85 88      STA &88
     2A8F   C6 77      DEC &77
.nx
     2A91   4C E4 2B   JMP &2BE4
.mp
     2A94   A0 00      LDY #&00
     2A96   B1 75      LDA (&75),Y
     2A98   85 70      STA &70
     2A9A   84 72      STY &72
.nxpl
     2A9C   C8         INY
     2A9D   B1 75      LDA (&75),Y
     2A9F   85 77      STA &77
     2AA1   C8         INY
     2AA2   B1 75      LDA (&75),Y
     2AA4   85 78      STA &78
     2AA6   C8         INY
     2AA7   B1 75      LDA (&75),Y
     2AA9   85 79      STA &79
     2AAB   C8         INY
     2AAC   B1 75      LDA (&75),Y
     2AAE   85 7A      STA &7A
     2AB0   C8         INY
     2AB1   B1 75      LDA (&75),Y
     2AB3   85 7B      STA &7B
     2AB5   A5 77      LDA &77
     2AB7   29 C0      AND #&C0
     2AB9   D0 03      BNE &2ABE
     2ABB   4C 38 2A   JMP &2A38
.p0
     2ABE   A5 7A      LDA &7A
     2AC0   10 03      BPL &2AC5
     2AC2   4C 00 2C   JMP &2C00
.p1
     2AC5   C6 77      DEC &77
     2AC7   98         TYA
     2AC8   48         PHA
     2AC9   A0 00      LDY #&00
     2ACB   B1 8A      LDA (&8A),Y
     2ACD   85 80      STA &80
.h
     2ACF   C8         INY
     2AD0   B1 8A      LDA (&8A),Y
     2AD2   38         SEC
     2AD3   E5 7B      SBC &7B
     2AD5   30 47      BMI &2B1E
     2AD7   C9 08      CMP #&08
     2AD9   10 43      BPL &2B1E
     2ADB   C8         INY
     2ADC   C8         INY
     2ADD   B1 8A      LDA (&8A),Y
     2ADF   F0 3F      BEQ &2B20
     2AE1   C8         INY
     2AE2   B1 8A      LDA (&8A),Y
     2AE4   38         SEC
     2AE5   E5 7A      SBC &7A
     2AE7   30 38      BMI &2B21
     2AE9   C9 07      CMP #&07
     2AEB   10 34      BPL &2B21
     2AED   C9 03      CMP #&03
     2AEF   F0 0D      BEQ &2AFE
     2AF1   A9 40      LDA #&40
     2AF3   0D 76 2D   ORA &2D76
     2AF6   8D 76 2D   STA &2D76
     2AF9   0A         ASL A
     2AFA   91 8A      STA (&8A),Y
     2AFC   D0 23      BNE &2B21
.o
     2AFE   A9 19      LDA #&19
     2B00   85 77      STA &77
     2B02   A9 D8      LDA #&D8
     2B04   91 8A      STA (&8A),Y
     2B06   AA         TAX
     2B07   A9 07      LDA #&07
     2B09   A0 2D      LDY #&2D
     2B0B   20 F1 FF   JSR &FFF1
     2B0E   68         PLA
     2B0F   A8         TAY
     2B10   A9 02      LDA #&02
     2B12   0D 76 2D   ORA &2D76
     2B15   8D 76 2D   STA &2D76
     2B18   20 08 2C   JSR &2C08
     2B1B   4C 38 2A   JMP &2A38
.nh
     2B1E   C8         INY
     2B1F   C8         INY
     2B20   C8         INY
     2B21   C4 80      CPY &80
     2B23   30 AA      BMI &2ACF
     2B25   68         PLA
     2B26   A8         TAY
     2B27   A5 73      LDA &73
     2B29   29 BF      AND #&BF
     2B2B   85 73      STA &73
     2B2D   E6 72      INC &72
     2B2F   20 08 2C   JSR &2C08
     2B32   A5 7B      LDA &7B
     2B34   C9 AF      CMP #&AF
     2B36   D0 14      BNE &2B4C
     2B38   38         SEC
     2B39   A5 78      LDA &78
     2B3B   E9 87      SBC #&87
     2B3D   85 78      STA &78
     2B3F   A5 79      LDA &79
     2B41   E9 48      SBC #&48
     2B43   85 79      STA &79
     2B45   A9 C0      LDA #&C0
     2B47   85 7B      STA &7B
     2B49   20 D9 11   JSR &11D9
.hop5
     2B4C   A9 3F      LDA #&3F
     2B4E   25 77      AND &77
     2B50   D0 36      BNE &2B88
     2B52   38         SEC
     2B53   A5 7A      LDA &7A
     2B55   ED 70 2D   SBC &2D70
     2B58   85 77      STA &77
     2B5A   A9 00      LDA #&00
     2B5C   B0 02      BCS &2B60
     2B5E   38         SEC
     2B5F   6A         ROR A
.pl3
     2B60   6A         ROR A
     2B61   85 80      STA &80
     2B63   A5 77      LDA &77
     2B65   D0 03      BNE &2B6A
.pl20
     2B67   20 CD 18   JSR &18CD
.pl5
     2B6A   10 05      BPL &2B71
     2B6C   49 FF      EOR #&FF
     2B6E   18         CLC
     2B6F   69 01      ADC #&01
.pl4
     2B71   C9 02      CMP #&02
     2B73   30 0F      BMI &2B84
     2B75   8D 03 2D   STA &2D03
     2B78   20 FD 2C   JSR &2CFD
     2B7B   4E 03 2D   LSR &2D03
     2B7E   18         CLC
     2B7F   6D 03 2D   ADC &2D03
     2B82   29 3F      AND #&3F
.pl6
     2B84   05 80      ORA &80
     2B86   85 77      STA &77
.mid
     2B88   A5 77      LDA &77
     2B8A   A6 7A      LDX &7A
     2B8C   E0 01      CPX #&01
     2B8E   10 07      BPL &2B97
     2B90   09 40      ORA #&40
     2B92   29 7F      AND #&7F
     2B94   4C 9F 2B   JMP &2B9F
.plnl
     2B97   E0 48      CPX #&48
     2B99   30 06      BMI &2BA1
     2B9B   09 80      ORA #&80
     2B9D   29 BF      AND #&BF
.do
     2B9F   85 77      STA &77
     2BA1   E6 7B      INC &7B
     2BA3   A9 07      LDA #&07
     2BA5   25 78      AND &78
     2BA7   C9 07      CMP #&07
     2BA9   F0 05      BEQ &2BB0
     2BAB   E6 78      INC &78
     2BAD   4C BD 2B   JMP &2BBD
.pl2
     2BB0   18         CLC
     2BB1   A5 78      LDA &78
     2BB3   69 79      ADC #&79
     2BB5   85 78      STA &78
     2BB7   A5 79      LDA &79
     2BB9   69 02      ADC #&02
     2BBB   85 79      STA &79
.lft
     2BBD   4C 6A 11   JMP &116A
     2BC0   90 0F      BCC &2BD1
     2BC2   C6 7A      DEC &7A
     2BC4   A5 78      LDA &78
     2BC6   E9 08      SBC #&08
     2BC8   85 78      STA &78
     2BCA   B0 15      BCS &2BE1
     2BCC   C6 79      DEC &79
     2BCE   4C E1 2B   JMP &2BE1
.rgt
     2BD1   E6 7A      INC &7A
     2BD3   2A         ROL A
     2BD4   90 0B      BCC &2BE1
     2BD6   18         CLC
     2BD7   A5 78      LDA &78
     2BD9   69 08      ADC #&08
     2BDB   85 78      STA &78
     2BDD   90 02      BCC &2BE1
     2BDF   E6 79      INC &79
.fo
     2BE1   20 08 2C   JSR &2C08
     2BE4   88         DEY
     2BE5   88         DEY
     2BE6   88         DEY
     2BE7   88         DEY
     2BE8   A5 77      LDA &77
     2BEA   91 75      STA (&75),Y
     2BEC   C8         INY
     2BED   A5 78      LDA &78
     2BEF   91 75      STA (&75),Y
     2BF1   C8         INY
     2BF2   A5 79      LDA &79
     2BF4   91 75      STA (&75),Y
     2BF6   C8         INY
     2BF7   A5 7A      LDA &7A
     2BF9   91 75      STA (&75),Y
     2BFB   C8         INY
     2BFC   A5 7B      LDA &7B
     2BFE   91 75      STA (&75),Y
.pl1
     2C00   C4 70      CPY &70
     2C02   F0 03      BEQ &2C07
     2C04   4C 9C 2A   JMP &2A9C
.hop7
     2C07   60         RTS
.pp
.plot_plane
     2C08   98         TYA
     2C09   48         PHA
     2C0A   18         CLC
     2C0B   A5 78      LDA &78
     2C0D   69 78      ADC #&78
     2C0F   85 84      STA &84
     2C11   29 07      AND #&07
     2C13   49 07      EOR #&07
     2C15   85 74      STA &74
     2C17   A5 79      LDA &79
     2C19   69 02      ADC #&02
     2C1B   85 85      STA &85
.modify_plane_sprite_length
     2C1D   A0 3F      LDY #&3F
.plo
     2C1F   A2 07      LDX #&07
     2C21   E4 74      CPX &74
     2C23   F0 0E      BEQ &2C33
.bt
     2C25   B1 88      LDA (&88),Y
     2C27   F0 04      BEQ &2C2D
     2C29   51 84      EOR (&84),Y
     2C2B   91 84      STA (&84),Y
.bz
     2C2D   88         DEY
     2C2E   CA         DEX
     2C2F   E4 74      CPX &74
     2C31   D0 F2      BNE &2C25
.tp
     2C33   B1 88      LDA (&88),Y
     2C35   F0 04      BEQ &2C3B
     2C37   51 78      EOR (&78),Y
     2C39   91 78      STA (&78),Y
.tz
     2C3B   88         DEY
     2C3C   CA         DEX
     2C3D   10 F4      BPL &2C33
     2C3F   98         TYA
     2C40   10 DD      BPL &2C1F
     2C42   68         PLA
     2C43   A8         TAY
     2C44   60         RTS
.nbo
     2C45   A9 C0      LDA #&C0
     2C47   24 73      BIT &73
     2C49   D0 46      BNE &2C91
     2C4B   C6 73      DEC &73
     2C4D   D0 42      BNE &2C91
     2C4F   A0 FF      LDY #&FF
.nbo2
     2C51   C8         INY
     2C52   C8         INY
     2C53   C8         INY
     2C54   C8         INY
     2C55   C8         INY
     2C56   B1 75      LDA (&75),Y
     2C58   30 F7      BMI &2C51
     2C5A   88         DEY
     2C5B   88         DEY
     2C5C   88         DEY
     2C5D   B1 75      LDA (&75),Y
     2C5F   29 C0      AND #&C0
     2C61   D0 06      BNE &2C69
     2C63   C8         INY
     2C64   C8         INY
     2C65   C8         INY
     2C66   4C 51 2C   JMP &2C51
.nbo5
     2C69   C8         INY
     2C6A   18         CLC
     2C6B   B1 75      LDA (&75),Y
     2C6D   69 9D      ADC #&9D
     2C6F   85 80      STA &80
     2C71   C8         INY
     2C72   B1 75      LDA (&75),Y
     2C74   69 02      ADC #&02
     2C76   85 81      STA &81
     2C78   20 C3 29   JSR &29C3
     2C7B   A0 00      LDY #&00
.nbo3
     2C7D   C8         INY
     2C7E   C8         INY
     2C7F   B1 8C      LDA (&8C),Y
     2C81   D0 FA      BNE &2C7D
     2C83   A5 81      LDA &81
     2C85   91 8C      STA (&8C),Y
     2C87   88         DEY
     2C88   A5 80      LDA &80
     2C8A   91 8C      STA (&8C),Y
     2C8C   AD 71 2D   LDA &2D71
     2C8F   85 73      STA &73
.nbo4
     2C91   A9 C0      LDA #&C0
     2C93   05 73      ORA &73
     2C95   85 73      STA &73
     2C97   60         RTS
.mbo
     2C98   A0 00      LDY #&00
     2C9A   B1 8C      LDA (&8C),Y
     2C9C   85 70      STA &70
     2C9E   AD 74 2D   LDA &2D74
     2CA1   85 82      STA &82
     2CA3   AD 75 2D   LDA &2D75
     2CA6   85 83      STA &83
.ntbo
     2CA8   C8         INY
     2CA9   B1 8C      LDA (&8C),Y
     2CAB   85 80      STA &80
     2CAD   C8         INY
     2CAE   B1 8C      LDA (&8C),Y
     2CB0   85 81      STA &81
     2CB2   D0 09      BNE &2CBD
     2CB4   A9 7F      LDA #&7F
     2CB6   25 73      AND &73
     2CB8   85 73      STA &73
     2CBA   4C F5 2C   JMP &2CF5
.bo1
     2CBD   20 C3 29   JSR &29C3
     2CC0   A5 80      LDA &80
     2CC2   29 07      AND #&07
     2CC4   C9 06      CMP #&06
     2CC6   10 09      BPL &2CD1
     2CC8   E6 80      INC &80
     2CCA   E6 80      INC &80
     2CCC   A5 81      LDA &81
     2CCE   4C DE 2C   JMP &2CDE
.bo2
     2CD1   18         CLC
     2CD2   A5 80      LDA &80
     2CD4   69 7A      ADC #&7A
     2CD6   85 80      STA &80
     2CD8   A5 81      LDA &81
     2CDA   69 02      ADC #&02
     2CDC   85 81      STA &81
.bo4
     2CDE   C9 80      CMP #&80
     2CE0   30 06      BMI &2CE8
     2CE2   A9 00      LDA #&00
     2CE4   91 8C      STA (&8C),Y
     2CE6   F0 0D      BEQ &2CF5
.bo6
     2CE8   20 C3 29   JSR &29C3
     2CEB   88         DEY
     2CEC   A5 80      LDA &80
     2CEE   91 8C      STA (&8C),Y
     2CF0   C8         INY
     2CF1   A5 81      LDA &81
     2CF3   91 8C      STA (&8C),Y
.bo7
     2CF5   C4 70      CPY &70
     2CF7   30 AF      BMI &2CA8
     2CF9   60         RTS
.ra2
     2CFA   8D 03 2D   STA &2D03
     2CFD   38         SEC
     2CFE   A5 7C      LDA &7C
     2D00   29 7F      AND #&7F
.ra3
     2D02   E9 10      SBC #&10
     2D04   10 FC      BPL &2D02
     2D06   6D 03 2D   ADC &2D03
     2D09   60         RTS
.bullet_list
     2D0A   08
     2D0B   00
     2D0C   00
     2D0D   00
     2D0E   00
     2D0F   00
     2D10   00
     2D11   00
     2D12   00
.plane_list
     2D13   1E
     2D14   00
     2D15   00
     2D16   00
     2D17   00
     2D18   00
     2D19   00
     2D1A   00
     2D1B   00
     2D1C   00
     2D1D   00
     2D1E   00
     2D1F   00
     2D20   00
     2D21   00
     2D22   00
     2D23   00
     2D24   00
     2D25   00
     2D26   00
     2D27   00
     2D28   00
     2D29   00
     2D2A   00
     2D2B   00
     2D2C   00
     2D2D   00
     2D2E   00
     2D2F   00
     2D30   00
     2D31   00
     2D32   00
     2D33   00
     2D34   00
     2D35   00
     2D36   00
     2D37   00
     2D38   00
     2D39   00
     2D3A   00
     2D3B   00
     2D3C   00
     2D3D   00
     2D3E   00
     2D3F   00
     2D40   00
     2D41   00
     2D42   00
     2D43   00
     2D44   00
     2D45   00
     2D46   00
.bomb_list
     2D47   02
     2D48   D6
     2D49   00
     2D4A   00
     2D4B   00
     2D4C   00
     2D4D   00
     2D4E   00
     2D4F   00
     2D50   00
     2D51   00
     2D52   00
     2D53   00
     2D54   00
     2D55   00
     2D56   00
     2D57   00
     2D58   00
     2D59   00
     2D5A   00
     2D5B   00
     2D5C   00
     2D5D   00
     2D5E   00
.cloud_sprite_offset_list
     2D5F   80
     2D60   40
     2D61   40
     2D62   00
     2D63   80
     2D64   00
     2D65   40
     2D66   80
     2D67   00
.bis
     2D68   88
     2D69   A0
     2D6A   B8
     2D6B   D0
     2D6C   E8
     2D6D   D0
     2D6E   B8
     2D6F   88
.Xg
     2D70   20
.inb
     2D71   D7
.buf
     2D72   00
     2D73   22
.bof
     2D74   50
     2D75   23
.sc
     2D76   00
     2D77   00
     2D78   00
.de
     2D79   20
.ti
     2D7A   03
     2D7B   42
.ba
     2D7C   00
     2D7D   00
     2D7E   06
     2D7F   00
.envelope_base_addr
     2D80   01
     2D81   81
     2D82   FD
     2D83   00
     2D84   00
     2D85   28
     2D86   00
     2D87   00
     2D88   3C
     2D89   06
     2D8A   CE
     2D8B   CE
     2D8C   3B
     2D8D   7E
     2D8E   00
     2D8F   00
     2D90   02
     2D91   83
     2D92   00
     2D93   00
     2D94   00
     2D95   00
     2D96   00
     2D97   00
     2D98   7F
     2D99   FF
     2D9A   FE
     2D9B   FF
     2D9C   7E
     2D9D   78
     2D9E   00
     2D9F   00
     2DA0   03
     2DA1   86
     2DA2   FF
     2DA3   00
     2DA4   01
     2DA5   02
     2DA6   01
     2DA7   01
     2DA8   7F
     2DA9   FF
     2DAA   FD
     2DAB   FD
     2DAC   7E
     2DAD   78
     2DAE   00
     2DAF   00
     2DB0   04
     2DB1   81
     2DB2   FB
     2DB3   E6
     2DB4   FE
     2DB5   10
     2DB6   01
     2DB7   5A
     2DB8   7F
     2DB9   FE
     2DBA   E2
     2DBB   9C
     2DBC   7E
     2DBD   00
     2DBE   00
     2DBF   00
     2DC0   05
     2DC1   0A
     2DC2   00
     2DC3   00
     2DC4   00
     2DC5   01
     2DC6   0C
     2DC7   00
     2DC8   7F
     2DC9   F5
     2DCA   00
     2DCB   E2
     2DCC   7E
     2DCD   00
     2DCE   00
     2DCF   00
.sound_bullet
     2DD0   12
     2DD1   00
     2DD2   04
     2DD3   00
     2DD4   50
     2DD5   00
     2DD6   14
     2DD7   00
.sound_plane_hit
     2DD8   10
     2DD9   00
     2DDA   02
     2DDB   00
     2DDC   06
     2DDD   00
     2DDE   A0
     2DDF   00
.sound_player_hit
     2DE0   10
     2DE1   00
     2DE2   03
     2DE3   00
     2DE4   07
     2DE5   00
     2DE6   C8
     2DE7   00
.sound_bonus
     2DE8   13
     2DE9   00
     2DEA   01
     2DEB   00
     2DEC   B4
     2DED   00
     2DEE   0A
     2DEF   00
.sound_pigeon
     2DF0   13
     2DF1   00
     2DF2   01
     2DF3   00
     2DF4   FA
     2DF5   00
     2DF6   0A
     2DF7   00
.sound_note
     2DF8   01
     2DF9   00
     2DFA   05
     2DFB   00
.sound_note_volume
     2DFC   49
     2DFD   00
.sound_note_pitch
     2DFE   0F
     2DFF   00
Saving file 'BIRDS'
