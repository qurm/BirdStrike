.start_SS_01
.start_SS_01 =  &1200 
     1200   54 68 61 ...
.game_over
.gov
     1226   68         PLA
     1227   68         PLA
     1228   A0 FF      LDY #&FF
.gov1
     122A   C8         INY
     122B   A9 0A      LDA #&0A
     122D   20 5C 19   JSR &195C
     1230   B9 42 12   LDA &1242,Y
     1233   20 EE FF   JSR &FFEE
     1236   C9 52      CMP #&52
     1238   D0 F0      BNE &122A
     123A   A9 96      LDA #&96
     123C   20 5C 19   JSR &195C
     123F   4C 2D 16   JMP &162D
.gov2
     1242   1F
     1243   05
     1244   0F
     1245   11
     1246   01
     1247   47 41 4D ...
.bon
     1250   AD 5C 26   LDA &265C
     1253   29 03      AND #&03
     1255   D0 0B      BNE &1262
     1257   A9 0F      LDA #&0F
     1259   20 5C 19   JSR &195C
     125C   20 7F 14   JSR &147F
     125F   4C 68 12   JMP &1268
.play_short
     1262   20 7B 19   JSR &197B
     1265   20 62 1A   JSR &1A62
.play_full
     1268   20 B0 12   JSR &12B0
     126B   A0 4B      LDY #&4B
.bonus_loop
     126D   F8         SED
     126E   18         CLC
     126F   AD 6C 2D   LDA &2D6C
     1272   69 02      ADC #&02
     1274   8D 6C 2D   STA &2D6C
     1277   AD 6D 2D   LDA &2D6D
     127A   69 00      ADC #&00
     127C   8D 6D 2D   STA &2D6D
     127F   D8         CLD
     1280   A9 02      LDA #&02
     1282   20 5C 19   JSR &195C
     1285   98         TYA
     1286   48         PHA
     1287   A2 E8      LDX #&E8
     1289   A0 2D      LDY #&2D
     128B   A9 07      LDA #&07
     128D   20 F1 FF   JSR &FFF1
     1290   20 D0 18   JSR &18D0
     1293   68         PLA
     1294   A8         TAY
     1295   88         DEY
     1296   D0 D5      BNE &126D
     1298   EE C8 2D   INC &2DC8
     129B   A2 C8      LDX #&C8
     129D   A0 2D      LDY #&2D
     129F   A9 07      LDA #&07
     12A1   20 F1 FF   JSR &FFF1
     12A4   CE C8 2D   DEC &2DC8
     12A7   A9 80      LDA #&80
     12A9   0D 6B 2D   ORA &2D6B
     12AC   8D 6B 2D   STA &2D6B
     12AF   60         RTS
.wbmsg
     12B0   A0 00      LDY #&00
.wb1
     12B2   B9 BE 12   LDA &12BE,Y
     12B5   20 EE FF   JSR &FFEE
     12B8   C8         INY
     12B9   C0 0B      CPY #&0B
     12BB   D0 F5      BNE &12B2
     12BD   60         RTS
.bmsg
     12BE   11 06 1F 07
     12C2   0F
     12C3   42 4F 4E ...
.nbk
     12C9   B4
     12CA   16
     12CB   08
     12CC   20
     12CD   7F
.hs
     12CE   00
     12CF   01
     12D0   00
.m7
     12D1   16
     12D2   07
     12D3   17
     12D4   00
     12D5   0A
     12D6   20
     12D7   00
     12D8   00
     12D9   00
     12DA   00
     12DB   00
     12DC   00
.bsk
     12DD   9A
     12DE   94
     12DF   68
     12E0   3F
     12E1   6F
     12E2   34
     12E3   20
     12E4   20
     12E5   20
     12E6   20
     12E7   20
     12E8   20
     12E9   20
     12EA   20
     12EB   FF
     12EC   20
     12ED   20
     12EE   5F
     12EF   7E
     12F0   2F
     12F1   6D
     12F2   20
     12F3   78
     12F4   20
     12F5   20
     12F6   20
     12F7   20
     12F8   20
     12F9   20
     12FA   20
     12FB   7E
     12FC   0D
     12FD   9A
     12FE   96
     12FF   6A
     1300   7D
     1301   7E
     1302   25
     1303   20
     1304   2F
     1305   20
     1306   30
     1307   20
     1308   20
     1309   20
     130A   20
     130B   FF
     130C   20
     130D   20
     130E   6A
     130F   7D
     1310   70
     1311   30
     1312   20
     1313   FF
     1314   2C
     1315   20
     1316   30
     1317   20
     1318   20
     1319   2F
     131A   20
     131B   FF
     131C   5F
     131D   3E
     131E   0D
     131F   9A
     1320   94
     1321   6A
     1322   3F
     1323   60
     1324   6F
     1325   34
     1326   FF
     1327   20
     1328   FF
     1329   2F
     132A   21
     132B   78
     132C   2F
     132D   FF
     132E   20
     132F   20
     1330   20
     1331   60
     1332   60
     1333   FF
     1334   20
     1335   FF
     1336   20
     1337   20
     1338   FF
     1339   2F
     133A   21
     133B   FF
     133C   20
     133D   FF
     133E   6F
     133F   30
     1340   20
     1341   7E
     1342   7B
     1343   34
     1344   0D
     1345   9A
     1346   96
     1347   2A
     1348   7D
     1349   70
     134A   7E
     134B   25
     134C   6F
     134D   30
     134E   FF
     134F   20
     1350   20
     1351   6F
     1352   7C
     1353   3F
     1354   20
     1355   20
     1356   2A
     1357   7C
     1358   7E
     1359   27
     135A   20
     135B   6F
     135C   74
     135D   30
     135E   FF
     135F   20
     1360   20
     1361   6F
     1362   30
     1363   FF
     1364   20
     1365   2B
     1366   34
     1367   6D
     1368   78
     1369   24
     136A   1F
     136B   05
     136C   05
     136D   82
     136E   46
     136F   49
     1370   52
     1371   45
     1372   46
     1373   4C
     1374   59
     1375   20
     1376   28
     1377   63
     1378   29
     1379   20
     137A   41
     137B   6E
     137C   64
     137D   72
     137E   65
     137F   77
     1380   20
     1381   46
     1382   72
     1383   69
     1384   67
     1385   61
     1386   61
     1387   72
     1388   64
     1389   0D
     138A   1F
     138B   0B
     138C   08
     138D   8D
     138E   83
     138F   48
     1390   69
     1391   67
     1392   68
     1393   20
     1394   53
     1395   63
     1396   6F
     1397   72
     1398   65
     1399   1F
     139A   0B
     139B   09
     139C   8D
     139D   83
     139E   48
     139F   69
     13A0   67
     13A1   68
     13A2   20
     13A3   53
     13A4   63
     13A5   6F
     13A6   72
     13A7   65
     13A8   00
.dts
.dots_str
     13A9   1F
     13AA   0B
     13AB   0B
     13AC   2E
     13AD   2E
     13AE   2E
     13AF   2E
     13B0   2E
     13B1   2E
     13B2   2E
     13B3   2E
     13B4   2E
     13B5   2E
     13B6   2E
     13B7   2E
     13B8   2E
     13B9   00
     13BA   1F
     13BB   19
     13BC   0B
.nam
     13BD   61
     13BE   6E
     13BF   64
     13C0   72
     13C1   65
     13C2   77
     13C3   20
     13C4   20
     13C5   00
.ints
.instructions_str
     13C6   1F
     13C7   0E
     13C8   0E
     13C9   8D
     13CA   83
     13CB   4B
     13CC   65
     13CD   79
     13CE   73
     13CF   1F
     13D0   0E
     13D1   0F
     13D2   8D
     13D3   83
     13D4   4B
     13D5   65
     13D6   79
     13D7   73
     13D8   1F
     13D9   06
     13DA   11
     13DB   86
     13DC   5A
     13DD   20
     13DE   2E
     13DF   2E
     13E0   2E
     13E1   2E
     13E2   2E
     13E3   2E
     13E4   2E
     13E5   2E
     13E6   2E
     13E7   2E
     13E8   2E
     13E9   2E
     13EA   20
     13EB   6D
     13EC   6F
     13ED   76
     13EE   65
     13EF   20
     13F0   6C
     13F1   65
     13F2   66
     13F3   74
     13F4   1F
     13F5   06
     13F6   12
     13F7   86
     13F8   58
     13F9   20
     13FA   2E
     13FB   2E
     13FC   2E
     13FD   2E
     13FE   2E
     13FF   2E
     1400   2E
     1401   2E
     1402   2E
     1403   2E
     1404   2E
     1405   20
     1406   6D
     1407   6F
     1408   76
     1409   65
     140A   20
     140B   72
     140C   69
     140D   67
     140E   68
     140F   74
     1410   1F
     1411   06
     1412   13
     1413   86
     1414   52
     1415   45
     1416   54
     1417   55
     1418   52
     1419   4E
     141A   20
     141B   2E
     141C   2E
     141D   2E
     141E   2E
     141F   2E
     1420   2E
     1421   2E
     1422   2E
     1423   2E
     1424   2E
     1425   2E
     1426   20
     1427   73
     1428   68
     1429   6F
     142A   6F
     142B   74
     142C   1F
     142D   06
     142E   14
     142F   86
     1430   53
     1431   2F
     1432   51
     1433   20
     1434   2E
     1435   2E
     1436   2E
     1437   2E
     1438   2E
     1439   2E
     143A   2E
     143B   20
     143C   73
     143D   6F
     143E   75
     143F   6E
     1440   64
     1441   20
     1442   6F
     1443   6E
     1444   2F
     1445   6F
     1446   66
     1447   66
     1448   1F
     1449   06
     144A   15
     144B   86
     144C   52
     144D   20
     144E   2E
     144F   2E
     1450   2E
     1451   2E
     1452   2E
     1453   2E
     1454   2E
     1455   2E
     1456   2E
     1457   2E
     1458   2E
     1459   2E
     145A   2E
     145B   2E
     145C   2E
     145D   2E
     145E   2E
     145F   20
     1460   72
     1461   65
     1462   73
     1463   74
     1464   00
.sps
     1465   1F
     1466   07
     1467   18
     1468   81
     1469   88
     146A   50
     146B   72
     146C   65
     146D   73
     146E   73
     146F   20
     1470   73
     1471   70
     1472   61
     1473   63
     1474   65
     1475   20
     1476   74
     1477   6F
     1478   20
     1479   70
     147A   6C
     147B   61
     147C   79
     147D   2E
     147E   00
.stmv
     147F   A0 0A      LDY #&0A
.stm4
     1481   B9 15 15   LDA &1515,Y
     1484   20 EE FF   JSR &FFEE
     1487   88         DEY
     1488   10 F7      BPL &1481
     148A   A9 80      LDA #&80
     148C   8D A7 14   STA &14A7
     148F   A9 00      LDA #&00
     1491   8D B3 14   STA &14B3
     1494   A9 04      LDA #&04
     1496   85 70      STA &70
.stm1
     1498   A9 1D      LDA #&1D
     149A   20 EE FF   JSR &FFEE
     149D   A9 00      LDA #&00
     149F   20 EE FF   JSR &FFEE
     14A2   20 EE FF   JSR &FFEE
     14A5   38         SEC
.stm2
     14A6   A9 00      LDA #&00
     14A8   E9 80      SBC #&80
     14AA   8D A7 14   STA &14A7
     14AD   08         PHP
     14AE   20 EE FF   JSR &FFEE
     14B1   28         PLP
.stm3
     14B2   A9 00      LDA #&00
     14B4   E9 00      SBC #&00
     14B6   8D B3 14   STA &14B3
     14B9   20 EE FF   JSR &FFEE
     14BC   20 53 20   JSR &2053
     14BF   C6 70      DEC &70
     14C1   D0 D5      BNE &1498
.stm5
     14C3   AD 5C 26   LDA &265C
     14C6   8D 08 23   STA &2308
     14C9   A9 00      LDA #&00
     14CB   8D 5C 26   STA &265C
     14CE   A9 88      LDA #&88
     14D0   8D 0B 23   STA &230B
     14D3   A9 26      LDA #&26
     14D5   8D 0C 23   STA &230C
.stm6
     14D8   18         CLC
     14D9   AD 0B 23   LDA &230B
     14DC   8D 59 26   STA &2659
     14DF   AD 0C 23   LDA &230C
     14E2   69 0A      ADC #&0A
     14E4   8D 0C 23   STA &230C
     14E7   8D 5A 26   STA &265A
     14EA   20 7B 19   JSR &197B
     14ED   8E B8 1B   STX &1BB8
     14F0   EE 5C 26   INC &265C
.stm8
     14F3   20 9A 19   JSR &199A
     14F6   D0 FB      BNE &14F3
     14F8   20 7B 19   JSR &197B
     14FB   20 62 1A   JSR &1A62
     14FE   A9 3C      LDA #&3C
     1500   20 5C 19   JSR &195C
     1503   AD 5C 26   LDA &265C
     1506   C9 04      CMP #&04
     1508   D0 CE      BNE &14D8
     150A   AD 08 23   LDA &2308
     150D   8D 5C 26   STA &265C
     1510   A9 1A      LDA #&1A
     1512   4C EE FF   JMP &FFEE
.stm10
     1515   10 03 FF 04
     1519   0F 02 0F 00
     151D   F0 18
     151F   1A
.gend
     1520   A9 00      LDA #&00
     1522   8D CE 12   STA &12CE
     1525   AD 6D 2D   LDA &2D6D
     1528   CD D0 12   CMP &12D0
     152B   90 19      BCC &1546
     152D   D0 08      BNE &1537
     152F   AD 6C 2D   LDA &2D6C
     1532   CD CF 12   CMP &12CF
     1535   90 0F      BCC &1546
.ge0
     1537   AD 6C 2D   LDA &2D6C
     153A   8D CF 12   STA &12CF
     153D   AD 6D 2D   LDA &2D6D
     1540   8D D0 12   STA &12D0
     1543   CE CE 12   DEC &12CE
.ge1
     1546   A9 16      LDA #&16
     1548   20 EE FF   JSR &FFEE
     154B   A9 07      LDA #&07
     154D   20 EE FF   JSR &FFEE
     1550   A2 DD      LDX #&DD
     1552   A0 12      LDY #&12
     1554   20 F2 15   JSR &15F2
     1557   A9 1F      LDA #&1F
     1559   20 EE FF   JSR &FFEE
     155C   A9 05      LDA #&05
     155E   20 EE FF   JSR &FFEE
     1561   A9 0B      LDA #&0B
     1563   20 EE FF   JSR &FFEE
     1566   AD D0 12   LDA &12D0
     1569   20 DE 15   JSR &15DE
     156C   AD CF 12   LDA &12CF
     156F   20 DE 15   JSR &15DE
     1572   A9 30      LDA #&30
     1574   20 EE FF   JSR &FFEE
     1577   A2 A9      LDX #&A9
     1579   A0 13      LDY #&13
     157B   20 F2 15   JSR &15F2
     157E   A2 C6      LDX #&C6
     1580   A0 13      LDY #&13
     1582   20 F2 15   JSR &15F2
     1585   A9 1F      LDA #&1F
     1587   20 EE FF   JSR &FFEE
     158A   A9 1A      LDA #&1A
     158C   20 EE FF   JSR &FFEE
     158F   A9 0B      LDA #&0B
     1591   20 EE FF   JSR &FFEE
     1594   AD CE 12   LDA &12CE
     1597   F0 12      BEQ &15AB
     1599   A9 15      LDA #&15
     159B   A2 00      LDX #&00
     159D   20 F4 FF   JSR &FFF4
     15A0   8A         TXA
     15A1   A2 C9      LDX #&C9
     15A3   A0 12      LDY #&12
     15A5   20 F1 FF   JSR &FFF1
     15A8   4C B8 15   JMP &15B8
.ge3
     15AB   A0 FF      LDY #&FF
.ge6
     15AD   C8         INY
     15AE   B9 BD 13   LDA &13BD,Y
     15B1   20 E3 FF   JSR &FFE3
     15B4   C9 20      CMP #&20
     15B6   10 F5      BPL &15AD
.ge7
     15B8   A0 02      LDY #&02
.ge5
     15BA   B9 D1 12   LDA &12D1,Y
     15BD   20 EE FF   JSR &FFEE
     15C0   C8         INY
     15C1   C0 0D      CPY #&0D
     15C3   D0 F5      BNE &15BA
     15C5   A9 64      LDA #&64
     15C7   20 5C 19   JSR &195C
.space
     15CA   A9 1A      LDA #&1A
     15CC   20 EE FF   JSR &FFEE
     15CF   A2 65      LDX #&65
     15D1   A0 14      LDY #&14
     15D3   20 F2 15   JSR &15F2
.ge4
     15D6   A2 9D      LDX #&9D
     15D8   20 91 1A   JSR &1A91
     15DB   D0 F9      BNE &15D6
     15DD   60         RTS
.whs
     15DE   48         PHA
     15DF   4A         LSR A
     15E0   4A         LSR A
     15E1   4A         LSR A
     15E2   4A         LSR A
     15E3   18         CLC
     15E4   69 30      ADC #&30
     15E6   20 E3 FF   JSR &FFE3
     15E9   68         PLA
     15EA   29 0F      AND #&0F
     15EC   18         CLC
     15ED   69 30      ADC #&30
     15EF   4C E3 FF   JMP &FFE3
.wrs
.write_string
     15F2   8E FC 15   STX &15FC
     15F5   8C FD 15   STY &15FD
     15F8   A0 FF      LDY #&FF
.wr1
     15FA   C8         INY
.modify_string_addr
     15FB   B9 A9 13   LDA &13A9,Y
     15FE   20 E3 FF   JSR &FFE3
     1601   C9 00      CMP #&00
     1603   D0 F5      BNE &15FA
     1605   60         RTS
.end_SS_01
.end_SS_01 =  &1606 
.start_SS_03
.start_SS_03 =  &1606 
.game
     1606   A9 00      LDA #&00
     1608   A8         TAY
     1609   20 CE FF   JSR &FFCE
     160C   A9 C8      LDA #&C8
     160E   A2 03      LDX #&03
     1610   A0 00      LDY #&00
     1612   20 F4 FF   JSR &FFF4
     1615   20 CA 15   JSR &15CA
     1618   A2 01      LDX #&01
     161A   A9 04      LDA #&04
     161C   A0 00      LDY #&00
     161E   20 F4 FF   JSR &FFF4
     1621   AD 0C 02   LDA &020C
     1624   8D DD 1A   STA &1ADD
     1627   AD 0D 02   LDA &020D
     162A   8D DE 1A   STA &1ADE
.newgame
     162D   20 20 15   JSR &1520
     1630   20 B2 16   JSR &16B2
.GO
     1633   20 EE 1D   JSR &1DEE
     1636   20 2D 27   JSR &272D
     1639   A9 06      LDA #&06
     163B   8D 21 FE   STA &FE21
     163E   20 E3 29   JSR &29E3
     1641   20 E7 28   JSR &28E7
     1644   20 51 27   JSR &2751
     1647   20 CA 27   JSR &27CA
     164A   20 4B 28   JSR &284B
     164D   20 00 2C   JSR &2C00
     1650   20 62 2B   JSR &2B62
     1653   A9 07      LDA #&07
     1655   8D 21 FE   STA &FE21
     1658   20 44 1C   JSR &1C44
     165B   20 F4 1A   JSR &1AF4
     165E   20 45 18   JSR &1845
     1661   20 9A 1A   JSR &1A9A
     1664   4C 33 16   JMP &1633
     1667   28 63 29 ...
.level_de
     1682   20
     1683   1E
     1684   1C
     1685   1A
     1686   18
     1687   16
     1688   14
     1689   12
.level_bullet_count
     168A   08
     168B   08
     168C   0A
     168D   0C
     168E   0E
     168F   10
     1690   10
     1691   10
.level_bullet_interval
     1692   0C
     1693   0A
     1694   08
     1695   08
     1696   08
     1697   08
     1698   08
     1699   08
.level_bomb_count
     169A   04
     169B   06
     169C   08
     169D   0A
     169E   0C
     169F   0C
     16A0   0C
     16A1   0C
.level_bomb_interval
     16A2   2F
     16A3   27
     16A4   1F
     16A5   17
     16A6   0F
     16A7   0F
     16A8   0F
     16A9   0F
.level_bomb_rate
     16AA   03
     16AB   03
     16AC   03
     16AD   03
     16AE   04
     16AF   04
     16B0   04
     16B1   04
.start_game
     16B2   A9 05      LDA #&05
     16B4   85 70      STA &70
     16B6   20 18 27   JSR &2718
     16B9   A9 49      LDA #&49
     16BB   20 62 1A   JSR &1A62
     16BE   A9 16      LDA #&16
     16C0   20 EE FF   JSR &FFEE
     16C3   A9 02      LDA #&02
     16C5   20 EE FF   JSR &FFEE
     16C8   A9 00      LDA #&00
     16CA   8D 38 19   STA &1938
     16CD   85 8E      STA &8E
     16CF   8D 5C 26   STA &265C
     16D2   8D 54 26   STA &2654
     16D5   8D 55 26   STA &2655
     16D8   8D 6C 2D   STA &2D6C
     16DB   8D 6D 2D   STA &2D6D
     16DE   85 88      STA &88
     16E0   85 52      STA &52
     16E2   85 53      STA &53
     16E4   85 54      STA &54
     16E6   85 55      STA &55
     16E8   85 56      STA &56
     16EA   85 57      STA &57
     16EC   18         CLC
     16ED   A9 03      LDA #&03
     16EF   8D 6F 2D   STA &2D6F
     16F2   A9 2A      LDA #&2A
     16F4   8D 70 2D   STA &2D70
     16F7   A9 02      LDA #&02
     16F9   85 71      STA &71
     16FB   A9 00      LDA #&00
     16FD   85 8A      STA &8A
     16FF   A9 24      LDA #&24
     1701   85 8B      STA &8B
     1703   A9 11      LDA #&11
     1705   85 75      STA &75
     1707   A9 24      LDA #&24
     1709   85 76      STA &76
     170B   A2 0F      LDX #&0F
     170D   A0 07      LDY #&07
.co1
.colour_loop
     170F   20 00 27   JSR &2700
     1712   CA         DEX
     1713   E0 07      CPX #&07
     1715   D0 F8      BNE &170F
     1717   86 7D      STX &7D
     1719   A9 01      LDA #&01
     171B   8D 99 27   STA &2799
     171E   A9 03      LDA #&03
     1720   8D 56 26   STA &2656
     1723   A9 2F      LDA #&2F
     1725   85 89      STA &89
.bf
.begin_level
     1727   20 7B 19   JSR &197B
     172A   8E B8 1B   STX &1BB8
     172D   EE 5C 26   INC &265C
     1730   A0 43      LDY #&43
     1732   A9 00      LDA #&00
.clear_bullet_list
     1734   99 00 24   STA &2400,Y
     1737   88         DEY
     1738   10 FA      BPL &1734
     173A   A0 1F      LDY #&1F
.clear_bomb_list
     173C   99 50 00   STA &0050,Y
     173F   88         DEY
     1740   10 FA      BPL &173C
.b0
     1742   A9 0C      LDA #&0C
     1744   20 EE FF   JSR &FFEE
     1747   A9 9A      LDA #&9A
     1749   A2 14      LDX #&14
     174B   20 F4 FF   JSR &FFF4
     174E   20 50 1E   JSR &1E50
     1751   20 FF 1D   JSR &1DFF
     1754   20 53 20   JSR &2053
     1757   20 D0 18   JSR &18D0
     175A   A9 00      LDA #&00
     175C   8D 5B 26   STA &265B
     175F   8D 6B 2D   STA &2D6B
     1762   8D 72 2D   STA &2D72
     1765   AC 5C 26   LDY &265C
     1768   88         DEY
     1769   B9 82 16   LDA &1682,Y
     176C   8D 6E 2D   STA &2D6E
     176F   B9 A2 16   LDA &16A2,Y
     1772   09 C0      ORA #&C0
     1774   8D A7 2D   STA &2DA7
     1777   85 73      STA &73
     1779   38         SEC
     177A   B9 9A 16   LDA &169A,Y
     177D   E9 02      SBC #&02
     177F   85 51      STA &51
     1781   B9 AA 16   LDA &16AA,Y
     1784   8D 56 2D   STA &2D56
     1787   18         CLC
     1788   69 78      ADC #&78
     178A   8D 58 2D   STA &2D58
     178D   49 07      EOR #&07
     178F   29 07      AND #&07
     1791   AA         TAX
     1792   E8         INX
     1793   8E 57 2D   STX &2D57
     1796   B9 8A 16   LDA &168A,Y
     1799   8D 00 24   STA &2400
     179C   B9 92 16   LDA &1692,Y
     179F   8D 69 28   STA &2869
     17A2   A9 1E      LDA #&1E
     17A4   8D 11 24   STA &2411
     17A7   A9 88      LDA #&88
     17A9   8D 59 26   STA &2659
     17AC   A9 30      LDA #&30
     17AE   8D 5A 26   STA &265A
     17B1   A9 80      LDA #&80
     17B3   8D 57 26   STA &2657
     17B6   A9 32      LDA #&32
     17B8   8D 58 26   STA &2658
     17BB   AE 56 26   LDX &2656
.pmi
     17BE   20 DF 1A   JSR &1ADF
     17C1   18         CLC
     17C2   AD 57 26   LDA &2657
     17C5   69 18      ADC #&18
     17C7   8D 57 26   STA &2657
     17CA   CA         DEX
     17CB   D0 F1      BNE &17BE
     17CD   A9 3A      LDA #&3A
     17CF   85 81      STA &81
     17D1   A9 81      LDA #&81
     17D3   85 82      STA &82
     17D5   A2 01      LDX #&01
     17D7   A0 08      LDY #&08
.pp1
     17D9   A9 81      LDA #&81
     17DB   9D 11 24   STA &2411,X
     17DE   E8         INX
     17DF   98         TYA
     17E0   18         CLC
     17E1   69 50      ADC #&50
     17E3   9D 11 24   STA &2411,X
     17E6   A8         TAY
     17E7   E8         INX
     17E8   A5 81      LDA &81
     17EA   69 00      ADC #&00
     17EC   9D 11 24   STA &2411,X
     17EF   85 81      STA &81
     17F1   18         CLC
     17F2   E8         INX
     17F3   A5 82      LDA &82
     17F5   69 0A      ADC #&0A
     17F7   85 82      STA &82
     17F9   9D 11 24   STA &2411,X
     17FC   E8         INX
     17FD   A9 D0      LDA #&D0
     17FF   9D 11 24   STA &2411,X
     1802   E8         INX
     1803   E0 1F      CPX #&1F
     1805   30 D2      BMI &17D9
     1807   A0 00      LDY #&00
     1809   B1 75      LDA (&75),Y
     180B   85 70      STA &70
.slop
     180D   C8         INY
     180E   C8         INY
     180F   B1 75      LDA (&75),Y
     1811   85 78      STA &78
     1813   C8         INY
     1814   B1 75      LDA (&75),Y
     1816   85 79      STA &79
     1818   20 21 2B   JSR &2B21
     181B   C8         INY
     181C   C8         INY
     181D   C4 70      CPY &70
     181F   30 EC      BMI &180D
     1821   20 9E 1B   JSR &1B9E
.sgun
.player_gun_initialise
     1824   A9 20      LDA #&20
     1826   8D A6 2D   STA &2DA6
     1829   A9 7E      LDA #&7E
     182B   85 87      STA &87
     182D   A9 90      LDA #&90
     182F   85 86      STA &86
     1831   A9 21      LDA #&21
     1833   8D BF 27   STA &27BF
     1836   A9 58      LDA #&58
     1838   8D BE 27   STA &27BE
     183B   20 BB 27   JSR &27BB
     183E   A9 40      LDA #&40
     1840   4C 62 1A   JMP &1A62
.end_frame
     1843   00
.score_exit
     1844   60         RTS
.sor
     1845   AD 6B 2D   LDA &2D6B
     1848   F0 FA      BEQ &1844
     184A   F8         SED
     184B   29 02      AND #&02
     184D   F0 14      BEQ &1863
     184F   18         CLC
     1850   A9 15      LDA #&15
     1852   6D 6C 2D   ADC &2D6C
     1855   8D 6C 2D   STA &2D6C
     1858   AD 6D 2D   LDA &2D6D
     185B   69 00      ADC #&00
     185D   8D 6D 2D   STA &2D6D
     1860   20 C3 1D   JSR &1DC3
.s1
     1863   A9 40      LDA #&40
     1865   2C 6B 2D   BIT &2D6B
     1868   F0 1C      BEQ &1886
     186A   18         CLC
     186B   A9 01      LDA #&01
.wng
     186D   6D 6C 2D   ADC &2D6C
     1870   8D 6C 2D   STA &2D6C
     1873   AD 6D 2D   LDA &2D6D
     1876   69 00      ADC #&00
     1878   8D 6D 2D   STA &2D6D
     187B   D8         CLD
     187C   A2 C8      LDX #&C8
     187E   A0 2D      LDY #&2D
     1880   A9 07      LDA #&07
     1882   20 F1 FF   JSR &FFF1
     1885   F8         SED
.s4
     1886   A9 10      LDA #&10
     1888   2C 6B 2D   BIT &2D6B
     188B   F0 1A      BEQ &18A7
     188D   18         CLC
     188E   A9 0A      LDA #&0A
.pig
     1890   6D 6C 2D   ADC &2D6C
     1893   8D 6C 2D   STA &2D6C
     1896   AD 6D 2D   LDA &2D6D
     1899   69 00      ADC #&00
     189B   8D 6D 2D   STA &2D6D
     189E   D8         CLD
     189F   20 9A 19   JSR &199A
     18A2   D0 03      BNE &18A7
     18A4   20 50 12   JSR &1250
.s2
     18A7   D8         CLD
     18A8   20 09 19   JSR &1909
     18AB   AD 6B 2D   LDA &2D6B
     18AE   10 1B      BPL &18CB
     18B0   AD 43 18   LDA &1843
     18B3   D0 0B      BNE &18C0
     18B5   A9 80      LDA #&80
     18B7   8D 43 18   STA &1843
     18BA   8D 6B 2D   STA &2D6B
     18BD   4C CB 18   JMP &18CB
.end_level
     18C0   A9 00      LDA #&00
     18C2   8D 6B 2D   STA &2D6B
     18C5   8D 43 18   STA &1843
     18C8   4C 6C 19   JMP &196C
.s3
     18CB   A9 00      LDA #&00
     18CD   8D 6B 2D   STA &2D6B
.s7
.score_update_screen
     18D0   A9 34      LDA #&34
     18D2   85 81      STA &81
     18D4   A9 B0      LDA #&B0
     18D6   85 80      STA &80
     18D8   A9 25      LDA #&25
     18DA   85 83      STA &83
     18DC   A9 F0      LDA #&F0
     18DE   2D 6D 2D   AND &2D6D
     18E1   20 3D 27   JSR &273D
     18E4   A9 0F      LDA #&0F
     18E6   2D 6D 2D   AND &2D6D
     18E9   0A         ASL A
     18EA   0A         ASL A
     18EB   0A         ASL A
     18EC   0A         ASL A
     18ED   20 3D 27   JSR &273D
     18F0   A9 F0      LDA #&F0
     18F2   2D 6C 2D   AND &2D6C
     18F5   20 3D 27   JSR &273D
     18F8   A9 0F      LDA #&0F
     18FA   2D 6C 2D   AND &2D6C
     18FD   0A         ASL A
     18FE   0A         ASL A
     18FF   0A         ASL A
     1900   0A         ASL A
     1901   20 3D 27   JSR &273D
     1904   A9 00      LDA #&00
     1906   4C 3D 27   JMP &273D
.extra_player_check
.exg
     1909   A9 01      LDA #&01
     190B   2C 38 19   BIT &1938
     190E   D0 10      BNE &1920
     1910   AC 6D 2D   LDY &2D6D
     1913   C0 05      CPY #&05
     1915   30 20      BMI &1937
     1917   0D 38 19   ORA &1938
     191A   8D 38 19   STA &1938
     191D   20 39 19   JSR &1939
.exg1
     1920   A9 02      LDA #&02
     1922   2C 38 19   BIT &1938
     1925   D0 10      BNE &1937
     1927   AC 6D 2D   LDY &2D6D
     192A   C0 10      CPY #&10
     192C   30 09      BMI &1937
     192E   0D 38 19   ORA &1938
     1931   8D 38 19   STA &1938
     1934   4C 39 19   JMP &1939
.exg2
     1937   60         RTS
.exg3
     1938   00
.exg4
     1939   20 DF 1A   JSR &1ADF
     193C   A9 DC      LDA #&DC
     193E   8D FC 2D   STA &2DFC
     1941   A2 F8      LDX #&F8
     1943   A0 2D      LDY #&2D
     1945   A9 07      LDA #&07
     1947   20 F1 FF   JSR &FFF1
     194A   EE 56 26   INC &2656
     194D   18         CLC
     194E   AD 57 26   LDA &2657
     1951   69 18      ADC #&18
     1953   8D 57 26   STA &2657
     1956   90 03      BCC &195B
     1958   EE 58 26   INC &2658
.exg5
     195B   60         RTS
.delay
     195C   8D 0A 23   STA &230A
     195F   98         TYA
     1960   48         PHA
.del1
     1961   20 2D 27   JSR &272D
     1964   CE 0A 23   DEC &230A
     1967   D0 F8      BNE &1961
     1969   68         PLA
     196A   A8         TAY
     196B   60         RTS
.next_level
.ef
     196C   18         CLC
     196D   A5 88      LDA &88
     196F   69 40      ADC #&40
     1971   85 88      STA &88
     1973   A9 64      LDA #&64
     1975   20 5C 19   JSR &195C
     1978   4C 27 17   JMP &1727
.cht
     197B   A9 03      LDA #&03
     197D   2D 5C 26   AND &265C
     1980   AA         TAX
     1981   D0 03      BNE &1986
     1983   A9 33      LDA #&33
     1985   60         RTS
.ct1
     1986   CA         DEX
     1987   D0 04      BNE &198D
     1989   8A         TXA
     198A   A2 0D      LDX #&0D
     198C   60         RTS
.ct2
     198D   CA         DEX
     198E   D0 05      BNE &1995
     1990   A9 11      LDA #&11
     1992   A2 1A      LDX #&1A
     1994   60         RTS
.ct3
     1995   A9 22      LDA #&22
     1997   A2 26      LDX #&26
     1999   60         RTS
.nxno
     199A   EE B8 1B   INC &1BB8
     199D   AC B8 1B   LDY &1BB8
     19A0   B9 B8 1B   LDA &1BB8,Y
     19A3   85 70      STA &70
     19A5   29 0E      AND #&0E
     19A7   C9 08      CMP #&08
     19A9   10 0A      BPL &19B5
     19AB   18         CLC
     19AC   6D 59 26   ADC &2659
     19AF   85 80      STA &80
     19B1   A9 00      LDA #&00
     19B3   F0 0A      BEQ &19BF
.n1
     19B5   18         CLC
     19B6   6D 59 26   ADC &2659
     19B9   69 78      ADC #&78
     19BB   85 80      STA &80
     19BD   A9 02      LDA #&02
.n2
     19BF   6D 5A 26   ADC &265A
     19C2   85 81      STA &81
     19C4   A9 21      LDA #&21
     19C6   85 83      STA &83
     19C8   20 FA 19   JSR &19FA
     19CB   18         CLC
     19CC   AD 59 26   LDA &2659
     19CF   69 20      ADC #&20
     19D1   8D 59 26   STA &2659
     19D4   90 03      BCC &19D9
     19D6   EE 5A 26   INC &265A
.n3
     19D9   20 2E 1A   JSR &1A2E
     19DC   18         CLC
     19DD   A5 80      LDA &80
     19DF   69 08      ADC #&08
     19E1   85 80      STA &80
     19E3   90 02      BCC &19E7
     19E5   E6 81      INC &81
.n4
     19E7   18         CLC
     19E8   A5 82      LDA &82
     19EA   69 08      ADC #&08
     19EC   85 82      STA &82
     19EE   90 02      BCC &19F2
     19F0   E6 83      INC &83
.n5
     19F2   20 2E 1A   JSR &1A2E
     19F5   C8         INY
     19F6   B9 B8 1B   LDA &1BB8,Y
     19F9   60         RTS
.chnot
     19FA   A9 80      LDA #&80
     19FC   24 70      BIT &70
     19FE   F0 05      BEQ &1A05
     1A00   A9 00      LDA #&00
     1A02   85 82      STA &82
     1A04   60         RTS
.c1
     1A05   4A         LSR A
     1A06   24 70      BIT &70
     1A08   F0 05      BEQ &1A0F
     1A0A   A9 10      LDA #&10
     1A0C   85 82      STA &82
     1A0E   60         RTS
.c2
     1A0F   4A         LSR A
     1A10   24 70      BIT &70
     1A12   F0 05      BEQ &1A19
     1A14   A9 20      LDA #&20
     1A16   85 82      STA &82
     1A18   60         RTS
.c3
     1A19   4A         LSR A
     1A1A   24 70      BIT &70
     1A1C   F0 05      BEQ &1A23
     1A1E   A9 30      LDA #&30
     1A20   85 82      STA &82
     1A22   60         RTS
.c4
     1A23   A9 01      LDA #&01
     1A25   24 70      BIT &70
     1A27   F0 04      BEQ &1A2D
     1A29   A9 40      LDA #&40
     1A2B   85 82      STA &82
.c5
     1A2D   60         RTS
.pno
     1A2E   98         TYA
     1A2F   48         PHA
     1A30   A0 07      LDY #&07
     1A32   18         CLC
     1A33   A5 80      LDA &80
     1A35   69 78      ADC #&78
     1A37   85 84      STA &84
     1A39   A5 81      LDA &81
     1A3B   69 02      ADC #&02
     1A3D   85 85      STA &85
     1A3F   A5 80      LDA &80
     1A41   29 07      AND #&07
     1A43   49 07      EOR #&07
     1A45   85 74      STA &74
     1A47   C9 07      CMP #&07
     1A49   10 0B      BPL &1A56
.pnbot
     1A4B   B1 82      LDA (&82),Y
     1A4D   11 84      ORA (&84),Y
     1A4F   91 84      STA (&84),Y
     1A51   88         DEY
     1A52   C4 74      CPY &74
     1A54   D0 F5      BNE &1A4B
.pntop
     1A56   B1 82      LDA (&82),Y
     1A58   11 80      ORA (&80),Y
     1A5A   91 80      STA (&80),Y
     1A5C   88         DEY
     1A5D   10 F7      BPL &1A56
     1A5F   68         PLA
     1A60   A8         TAY
     1A61   60         RTS
.playTune
.tune
     1A62   85 70      STA &70
.t1
     1A64   A4 70      LDY &70
     1A66   B9 E8 1B   LDA &1BE8,Y
     1A69   F0 1A      BEQ &1A85
     1A6B   8D FC 2D   STA &2DFC
     1A6E   C8         INY
     1A6F   B9 E8 1B   LDA &1BE8,Y
     1A72   8D FE 2D   STA &2DFE
     1A75   A2 F8      LDX #&F8
     1A77   A0 2D      LDY #&2D
     1A79   A9 07      LDA #&07
     1A7B   20 F1 FF   JSR &FFF1
     1A7E   E6 70      INC &70
     1A80   E6 70      INC &70
     1A82   4C 64 1A   JMP &1A64
.t3
     1A85   A9 80      LDA #&80
     1A87   A2 FA      LDX #&FA
     1A89   20 F4 FF   JSR &FFF4
     1A8C   E0 0F      CPX #&0F
     1A8E   30 F5      BMI &1A85
     1A90   60         RTS
.keyboardScan
.key
     1A91   A9 81      LDA #&81
     1A93   A0 FF      LDY #&FF
     1A95   20 F4 FF   JSR &FFF4
     1A98   E8         INX
     1A99   60         RTS
.check_key_press
.checkQkey
     1A9A   A2 EF      LDX #&EF
     1A9C   20 91 1A   JSR &1A91
     1A9F   D0 0A      BNE &1AAB
     1AA1   A9 D6      LDA #&D6
     1AA3   8D 0C 02   STA &020C
     1AA6   A9 1A      LDA #&1A
     1AA8   8D 0D 02   STA &020D
.checkSkey
     1AAB   A2 AE      LDX #&AE
     1AAD   20 91 1A   JSR &1A91
     1AB0   D0 0C      BNE &1ABE
     1AB2   AD DD 1A   LDA &1ADD
     1AB5   8D 0C 02   STA &020C
     1AB8   AD DE 1A   LDA &1ADE
     1ABB   8D 0D 02   STA &020D
.checkRkey
     1ABE   A2 CC      LDX #&CC
     1AC0   20 91 1A   JSR &1A91
     1AC3   D0 0F      BNE &1AD4
.op3
     1AC5   A9 81      LDA #&81
     1AC7   A0 01      LDY #&01
     1AC9   A2 FF      LDX #&FF
     1ACB   20 F4 FF   JSR &FFF4
     1ACE   B0 F5      BCS &1AC5
     1AD0   E0 52      CPX #&52
     1AD2   F0 F1      BEQ &1AC5
.op5
.checkKeyComplete
     1AD4   60         RTS
.keycounter
     1AD5   01
.mute
     1AD6   C9 07      CMP #&07
     1AD8   F0 FA      BEQ &1AD4
.mu1
     1ADA   6C DD 1A   JMP (&1ADD)
.soun
     1ADD   EB E7
.end_SS_03
.end_SS_03 =  &1ADF 
.mini
.plot_gun_life_indicator
     1ADF   A9 10      LDA #&10
     1AE1   85 82      STA &82
     1AE3   A9 22      LDA #&22
     1AE5   85 83      STA &83
     1AE7   AD 57 26   LDA &2657
     1AEA   85 80      STA &80
     1AEC   AD 58 26   LDA &2658
     1AEF   85 81      STA &81
     1AF1   4C B7 1D   JMP &1DB7
.gun_hit_display
.h0
     1AF4   A9 20      LDA #&20
     1AF6   2C 6B 2D   BIT &2D6B
     1AF9   D0 06      BNE &1B01
     1AFB   AD 55 26   LDA &2655
     1AFE   D0 34      BNE &1B34
.hreturn
     1B00   60         RTS
.h1
     1B01   A2 00      LDX #&00
     1B03   A0 07      LDY #&07
     1B05   20 00 27   JSR &2700
     1B08   A9 07      LDA #&07
     1B0A   A0 2D      LDY #&2D
     1B0C   A2 E0      LDX #&E0
     1B0E   20 F1 FF   JSR &FFF1
     1B11   A9 FF      LDA #&FF
     1B13   8D 55 26   STA &2655
     1B16   A9 60      LDA #&60
     1B18   8D E7 28   STA &28E7
     1B1B   8D 51 27   STA &2751
     1B1E   8D 4B 28   STA &284B
     1B21   8D 62 2B   STA &2B62
     1B24   20 BB 27   JSR &27BB
     1B27   A9 23      LDA #&23
     1B29   8D BF 27   STA &27BF
     1B2C   A9 10      LDA #&10
     1B2E   8D BE 27   STA &27BE
     1B31   4C BB 27   JMP &27BB
.h12
     1B34   CE 55 26   DEC &2655
     1B37   AD 55 26   LDA &2655
     1B3A   C9 FE      CMP #&FE
     1B3C   D0 07      BNE &1B45
     1B3E   A2 00      LDX #&00
     1B40   A0 00      LDY #&00
     1B42   4C 00 27   JMP &2700
.h3
     1B45   C9 DC      CMP #&DC
     1B47   D0 0B      BNE &1B54
     1B49   20 BB 27   JSR &27BB
     1B4C   A9 38      LDA #&38
     1B4E   8D BE 27   STA &27BE
     1B51   4C BB 27   JMP &27BB
.h4
     1B54   C9 8C      CMP #&8C
     1B56   D0 0B      BNE &1B63
     1B58   20 BB 27   JSR &27BB
     1B5B   A9 60      LDA #&60
     1B5D   8D BE 27   STA &27BE
     1B60   4C BB 27   JMP &27BB
.h5
     1B63   C9 01      CMP #&01
     1B65   D0 99      BNE &1B00
     1B67   CE 56 26   DEC &2656
     1B6A   D0 03      BNE &1B6F
     1B6C   4C 26 12   JMP &1226
.h5a
     1B6F   20 BB 27   JSR &27BB
     1B72   20 24 18   JSR &1824
     1B75   AC 11 24   LDY &2411
.h6
     1B78   B1 75      LDA (&75),Y
     1B7A   C9 C0      CMP #&C0
     1B7C   D0 19      BNE &1B97
     1B7E   88         DEY
     1B7F   B1 75      LDA (&75),Y
     1B81   10 15      BPL &1B98
     1B83   49 80      EOR #&80
     1B85   91 75      STA (&75),Y
     1B87   88         DEY
     1B88   B1 75      LDA (&75),Y
     1B8A   85 79      STA &79
     1B8C   88         DEY
     1B8D   B1 75      LDA (&75),Y
     1B8F   85 78      STA &78
     1B91   20 21 2B   JSR &2B21
     1B94   4C 9A 1B   JMP &1B9A
.h8
     1B97   88         DEY
.h9
     1B98   88         DEY
     1B99   88         DEY
.h10
     1B9A   88         DEY
     1B9B   88         DEY
     1B9C   D0 DA      BNE &1B78
.h7
     1B9E   A9 EA      LDA #&EA
     1BA0   8D 4B 28   STA &284B
     1BA3   8D E7 28   STA &28E7
     1BA6   8D 51 27   STA &2751
     1BA9   8D 62 2B   STA &2B62
     1BAC   38         SEC
     1BAD   AD 57 26   LDA &2657
     1BB0   E9 18      SBC #&18
     1BB2   8D 57 26   STA &2657
     1BB5   4C DF 1A   JMP &1ADF
.end_PIG_01
.end_PIG-01 =  &1BB8 
.start_PIG_02
.start_PIG_02 =  &1BB8 
.nl
     1BB8   0D
     1BB9   4A
     1BBA   18
     1BBB   8C
     1BBC   8E
     1BBD   1C
     1BBE   8A
     1BBF   84
     1BC0   14
     1BC1   82
     1BC2   20
     1BC3   44
     1BC4   05
     1BC5   00
     1BC6   48
     1BC7   18
     1BC8   86
     1BC9   84
     1BCA   14
     1BCB   86
     1BCC   84
     1BCD   14
     1BCE   88
     1BCF   2A
     1BD0   4E
     1BD1   05
     1BD2   00
     1BD3   4A
     1BD4   18
     1BD5   8C
     1BD6   8E
     1BD7   1C
     1BD8   8A
     1BD9   84
     1BDA   14
     1BDB   82
     1BDC   20
     1BDD   44
     1BDE   00
     1BDF   44
     1BE0   42
     1BE1   42
     1BE2   44
     1BE3   46
     1BE4   24
     1BE5   14
     1BE6   05
     1BE7   00
.tl
     1BE8   65
     1BE9   17
     1BEA   5D
     1BEB   05
     1BEC   59
     1BED   0A
     1BEE   65
     1BEF   05
     1BF0   79
     1BF1   0A
     1BF2   81
     1BF3   05
     1BF4   89
     1BF5   1E
     1BF6   79
     1BF7   1E
     1BF8   00
     1BF9   6D
     1BFA   17
     1BFB   75
     1BFC   05
     1BFD   79
     1BFE   0A
     1BFF   75
     1C00   05
     1C01   79
     1C02   0A
     1C03   6D
     1C04   05
     1C05   65
     1C06   1E
     1C07   59
     1C08   1E
     1C09   00
     1C0A   65
     1C0B   17
     1C0C   5D
     1C0D   05
     1C0E   59
     1C0F   0A
     1C10   65
     1C11   05
     1C12   79
     1C13   0A
     1C14   81
     1C15   05
     1C16   89
     1C17   1E
     1C18   79
     1C19   0F
     1C1A   00
     1C1B   79
     1C1C   0F
     1C1D   81
     1C1E   0F
     1C1F   81
     1C20   0F
     1C21   79
     1C22   0F
     1C23   75
     1C24   0F
     1C25   79
     1C26   1E
     1C27   00
     1C28   59
     1C29   05
     1C2A   59
     1C2B   05
     1C2C   59
     1C2D   05
     1C2E   49
     1C2F   0F
     1C30   00
     1C31   41
     1C32   05
     1C33   35
     1C34   0A
     1C35   39
     1C36   05
     1C37   3D
     1C38   05
     1C39   41
     1C3A   05
     1C3B   65
     1C3C   0A
     1C3D   65
     1C3E   0A
     1C3F   55
     1C40   14
     1C41   00
     1C42   14
     1C43   00
.pg
     1C44   A9 24      LDA #&24
     1C46   85 83      STA &83
     1C48   AD 72 2D   LDA &2D72
     1C4B   D0 77      BNE &1CC4
     1C4D   A9 42      LDA #&42
     1C4F   2C 6B 2D   BIT &2D6B
     1C52   F0 6F      BEQ &1CC3
     1C54   A9 02      LDA #&02
     1C56   2C 54 26   BIT &2654
     1C59   F0 1F      BEQ &1C7A
.pig_init_right
     1C5B   A9 24      LDA #&24
     1C5D   85 83      STA &83
     1C5F   8D 45 1C   STA &1C45
     1C62   A9 68      LDA #&68
     1C64   8D 71 2D   STA &2D71
     1C67   85 80      STA &80
     1C69   A9 00      LDA #&00
     1C6B   8D 65 1D   STA &1D65
     1C6E   A9 4C      LDA #&4C
     1C70   8D 74 2D   STA &2D74
     1C73   A9 4B      LDA #&4B
     1C75   8D A2 1C   STA &1CA2
     1C78   D0 1B      BNE &1C95
.pgl
.pig_init_left
     1C7A   A9 23      LDA #&23
     1C7C   85 83      STA &83
     1C7E   8D 45 1C   STA &1C45
     1C81   A9 00      LDA #&00
     1C83   8D 71 2D   STA &2D71
     1C86   85 80      STA &80
     1C88   8D 74 2D   STA &2D74
     1C8B   A9 4C      LDA #&4C
     1C8D   8D 65 1D   STA &1D65
     1C90   A9 49      LDA #&49
     1C92   8D A2 1C   STA &1CA2
.b3
     1C95   A9 00      LDA #&00
     1C97   85 7C      STA &7C
     1C99   EE 54 26   INC &2654
     1C9C   A9 07      LDA #&07
     1C9E   25 7D      AND &7D
     1CA0   AA         TAX
     1CA1   A9 4B      LDA #&4B
     1CA3   18         CLC
.b5
     1CA4   69 05      ADC #&05
     1CA6   A8         TAY
     1CA7   A5 7C      LDA &7C
     1CA9   69 10      ADC #&10
     1CAB   85 7C      STA &7C
     1CAD   98         TYA
     1CAE   CA         DEX
     1CAF   10 F3      BPL &1CA4
     1CB1   8D 72 2D   STA &2D72
     1CB4   85 81      STA &81
     1CB6   A2 02      LDX #&02
     1CB8   8E 73 2D   STX &2D73
     1CBB   BD 63 2D   LDA &2D63,X
     1CBE   85 82      STA &82
     1CC0   4C B7 1D   JMP &1DB7
.ep
     1CC3   60         RTS
.pgb0
     1CC4   AD 71 2D   LDA &2D71
     1CC7   85 80      STA &80
     1CC9   AD 72 2D   LDA &2D72
     1CCC   85 81      STA &81
     1CCE   10 18      BPL &1CE8
     1CD0   CE 73 2D   DEC &2D73
     1CD3   D0 EE      BNE &1CC3
     1CD5   49 80      EOR #&80
     1CD7   85 81      STA &81
     1CD9   A9 10      LDA #&10
     1CDB   0D 6B 2D   ORA &2D6B
     1CDE   8D 6B 2D   STA &2D6B
     1CE1   A9 00      LDA #&00
     1CE3   8D 72 2D   STA &2D72
     1CE6   F0 4C      BEQ &1D34
.pgb1
     1CE8   AD 73 2D   LDA &2D73
     1CEB   29 7F      AND #&7F
     1CED   AA         TAX
     1CEE   BD 63 2D   LDA &2D63,X
     1CF1   85 82      STA &82
     1CF3   A0 00      LDY #&00
     1CF5   B1 8A      LDA (&8A),Y
     1CF7   85 70      STA &70
.pgh
     1CF9   C8         INY
     1CFA   B1 8A      LDA (&8A),Y
     1CFC   38         SEC
     1CFD   E5 7C      SBC &7C
     1CFF   30 4C      BMI &1D4D
     1D01   C9 07      CMP #&07
     1D03   10 48      BPL &1D4D
     1D05   C8         INY
     1D06   C8         INY
     1D07   B1 8A      LDA (&8A),Y
     1D09   F0 44      BEQ &1D4F
     1D0B   C8         INY
     1D0C   B1 8A      LDA (&8A),Y
     1D0E   38         SEC
     1D0F   ED 74 2D   SBC &2D74
     1D12   30 3C      BMI &1D50
     1D14   C9 03      CMP #&03
     1D16   10 38      BPL &1D50
     1D18   A9 E8      LDA #&E8
     1D1A   91 8A      STA (&8A),Y
     1D1C   AA         TAX
     1D1D   A9 07      LDA #&07
     1D1F   A0 2D      LDY #&2D
     1D21   20 F1 FF   JSR &FFF1
     1D24   A9 10      LDA #&10
     1D26   8D 73 2D   STA &2D73
     1D29   A9 80      LDA #&80
     1D2B   0D 72 2D   ORA &2D72
     1D2E   8D 72 2D   STA &2D72
     1D31   20 B7 1D   JSR &1DB7
.bx
     1D34   A9 24      LDA #&24
     1D36   85 83      STA &83
     1D38   A9 70      LDA #&70
     1D3A   85 82      STA &82
     1D3C   4C B7 1D   JMP &1DB7
.b9
     1D3F   A9 04      LDA #&04
     1D41   0D 6B 2D   ORA &2D6B
     1D44   8D 6B 2D   STA &2D6B
     1D47   A9 00      LDA #&00
     1D49   8D 72 2D   STA &2D72
.x
     1D4C   60         RTS
.pgnh
     1D4D   C8         INY
     1D4E   C8         INY
     1D4F   C8         INY
     1D50   C4 70      CPY &70
     1D52   30 A5      BMI &1CF9
     1D54   A9 80      LDA #&80
     1D56   4D 73 2D   EOR &2D73
     1D59   8D 73 2D   STA &2D73
     1D5C   30 EE      BMI &1D4C
     1D5E   20 B7 1D   JSR &1DB7
     1D61   AD 74 2D   LDA &2D74
.xps
     1D64   C9 00      CMP #&00
     1D66   F0 D7      BEQ &1D3F
     1D68   29 1F      AND #&1F
     1D6A   D0 09      BNE &1D75
     1D6C   A9 07      LDA #&07
     1D6E   A0 2D      LDY #&2D
     1D70   A2 F0      LDX #&F0
     1D72   20 F1 FF   JSR &FFF1
.b6
     1D75   AE 73 2D   LDX &2D73
     1D78   CA         DEX
     1D79   10 02      BPL &1D7D
     1D7B   A2 07      LDX #&07
.b7
     1D7D   8E 73 2D   STX &2D73
     1D80   BD 63 2D   LDA &2D63,X
     1D83   85 82      STA &82
     1D85   AD 65 1D   LDA &1D65
     1D88   F0 18      BEQ &1DA2
     1D8A   EE 74 2D   INC &2D74
     1D8D   18         CLC
     1D8E   AD 71 2D   LDA &2D71
     1D91   69 08      ADC #&08
     1D93   8D 71 2D   STA &2D71
     1D96   85 80      STA &80
     1D98   90 1D      BCC &1DB7
     1D9A   EE 72 2D   INC &2D72
     1D9D   E6 81      INC &81
     1D9F   4C B7 1D   JMP &1DB7
.b10
     1DA2   CE 74 2D   DEC &2D74
     1DA5   38         SEC
     1DA6   AD 71 2D   LDA &2D71
     1DA9   E9 08      SBC #&08
     1DAB   8D 71 2D   STA &2D71
     1DAE   85 80      STA &80
     1DB0   B0 05      BCS &1DB7
     1DB2   CE 72 2D   DEC &2D72
     1DB5   C6 81      DEC &81
.plot_pigeon_sprite
.pb
     1DB7   A0 17      LDY #&17
.b8
     1DB9   B1 82      LDA (&82),Y
     1DBB   51 80      EOR (&80),Y
     1DBD   91 80      STA (&80),Y
     1DBF   88         DEY
     1DC0   10 F7      BPL &1DB9
     1DC2   60         RTS
.ddu1
.plane_hit
     1DC3   AC 5B 26   LDY &265B
     1DC6   C0 09      CPY #&09
     1DC8   10 23      BPL &1DED
     1DCA   B9 40 26   LDA &2640,Y
     1DCD   85 80      STA &80
     1DCF   C8         INY
     1DD0   B9 40 26   LDA &2640,Y
     1DD3   85 81      STA &81
     1DD5   C8         INY
     1DD6   8C 5B 26   STY &265B
     1DD9   A0 04      LDY #&04
     1DDB   A9 55      LDA #&55
.ddu2
     1DDD   91 80      STA (&80),Y
     1DDF   88         DEY
     1DE0   10 FB      BPL &1DDD
     1DE2   A0 09      LDY #&09
     1DE4   0A         ASL A
     1DE5   91 80      STA (&80),Y
     1DE7   A0 01      LDY #&01
     1DE9   A9 FF      LDA #&FF
     1DEB   91 80      STA (&80),Y
.ddu3
     1DED   60         RTS
.random1
     1DEE   A5 7D      LDA &7D
     1DF0   29 48      AND #&48
     1DF2   69 38      ADC #&38
     1DF4   0A         ASL A
     1DF5   0A         ASL A
     1DF6   26 7F      ROL &7F
     1DF8   26 7E      ROL &7E
     1DFA   26 7D      ROL &7D
     1DFC   A5 7D      LDA &7D
     1DFE   60         RTS
.draw_backgnd_art
     1DFF   A0 00      LDY #&00
.draw_line_art_loop
     1E01   B9 E6 1E   LDA &1EE6,Y
     1E04   20 EE FF   JSR &FFEE
     1E07   C8         INY
     1E08   D0 F7      BNE &1E01
     1E0A   A5 88      LDA &88
     1E0C   85 82      STA &82
     1E0E   A5 89      LDA &89
     1E10   85 83      STA &83
     1E12   A9 1F      LDA #&1F
     1E14   8D 3B 2B   STA &2B3B
     1E17   A9 C0      LDA #&C0
     1E19   85 70      STA &70
     1E1B   A0 00      LDY #&00
.draw_backgnd_sprite_loop
     1E1D   C8         INY
     1E1E   BE F9 1F   LDX &1FF9,Y
     1E21   C8         INY
     1E22   B9 F9 1F   LDA &1FF9,Y
     1E25   24 70      BIT &70
     1E27   D0 0C      BNE &1E35
     1E29   85 89      STA &89
     1E2B   86 88      STX &88
     1E2D   C8         INY
     1E2E   BE F9 1F   LDX &1FF9,Y
     1E31   C8         INY
     1E32   B9 F9 1F   LDA &1FF9,Y
.skip1
     1E35   86 78      STX &78
     1E37   85 79      STA &79
     1E39   20 21 2B   JSR &2B21
     1E3C   CC F9 1F   CPY &1FF9
     1E3F   30 DC      BMI &1E1D
     1E41   A9 3F      LDA #&3F
     1E43   8D 3B 2B   STA &2B3B
     1E46   A5 82      LDA &82
     1E48   85 88      STA &88
     1E4A   A5 83      LDA &83
     1E4C   85 89      STA &89
     1E4E   60         RTS
     1E4F   00         BRK
.plot_clouds
     1E50   A9 44      LDA #&44
     1E52   85 79      STA &79
     1E54   A9 FF      LDA #&FF
     1E56   A2 05      LDX #&05
.mid_outer_loop
     1E58   A0 00      LDY #&00
     1E5A   84 78      STY &78
.mid_inner_loop
     1E5C   91 78      STA (&78),Y
     1E5E   C8         INY
     1E5F   D0 FB      BNE &1E5C
     1E61   E6 79      INC &79
     1E63   CA         DEX
     1E64   D0 F2      BNE &1E58
     1E66   A0 1F      LDY #&1F
.cloud_loop2
     1E68   B9 E0 2E   LDA &2EE0,Y
     1E6B   91 78      STA (&78),Y
     1E6D   88         DEY
     1E6E   10 F8      BPL &1E68
     1E70   A9 2E      LDA #&2E
     1E72   85 7B      STA &7B
     1E74   A9 20      LDA #&20
     1E76   85 78      STA &78
     1E78   A2 08      LDX #&08
.next_cloud_sprite
     1E7A   BD 5A 2D   LDA &2D5A,X
     1E7D   85 7A      STA &7A
     1E7F   A0 3F      LDY #&3F
.next_cloud_byte
     1E81   B1 7A      LDA (&7A),Y
     1E83   91 78      STA (&78),Y
     1E85   88         DEY
     1E86   10 F9      BPL &1E81
     1E88   18         CLC
     1E89   A5 78      LDA &78
     1E8B   69 40      ADC #&40
     1E8D   85 78      STA &78
     1E8F   90 02      BCC &1E93
     1E91   E6 79      INC &79
.skip1
     1E93   CA         DEX
     1E94   10 E4      BPL &1E7A
     1E96   A0 1F      LDY #&1F
.loop32
     1E98   B9 C0 2E   LDA &2EC0,Y
     1E9B   91 78      STA (&78),Y
     1E9D   88         DEY
     1E9E   10 F8      BPL &1E98
.mirror_loop_1
     1EA0   A0 00      LDY #&00
.mirror_loop_2
     1EA2   A2 07      LDX #&07
.mirror_loop_3
.modify_lower_dest_addr
     1EA4   B9 00 49   LDA &4900,Y
.modify_upper_dest_addr
     1EA7   9D 80 41   STA &4180,X
     1EAA   C8         INY
     1EAB   CA         DEX
     1EAC   10 F6      BPL &1EA4
     1EAE   18         CLC
     1EAF   AD A8 1E   LDA &1EA8
     1EB2   69 08      ADC #&08
     1EB4   8D A8 1E   STA &1EA8
     1EB7   90 03      BCC &1EBC
     1EB9   EE A9 1E   INC &1EA9
.skip2
     1EBC   C0 80      CPY #&80
     1EBE   D0 E2      BNE &1EA2
     1EC0   AD A5 1E   LDA &1EA5
     1EC3   49 80      EOR #&80
     1EC5   8D A5 1E   STA &1EA5
     1EC8   30 03      BMI &1ECD
     1ECA   EE A6 1E   INC &1EA6
.skip3
     1ECD   A9 44      LDA #&44
     1ECF   CD A9 1E   CMP &1EA9
     1ED2   D0 CC      BNE &1EA0
     1ED4   8C A8 1E   STY &1EA8
     1ED7   E8         INX
     1ED8   8E A5 1E   STX &1EA5
     1EDB   A9 49      LDA #&49
     1EDD   8D A6 1E   STA &1EA6
     1EE0   A9 41      LDA #&41
     1EE2   8D A9 1E   STA &1EA9
     1EE5   60         RTS
.scenery_line_art
     1EE6   12
     1EE7   00
     1EE8   06
     1EE9   19
     1EEA   04
     1EEB   00
     1EEC   00
     1EED   13
     1EEE   00
     1EEF   19
     1EF0   05
     1EF1   04
     1EF2   01
     1EF3   17
     1EF4   00
     1EF5   19
     1EF6   05
     1EF7   2C
     1EF8   01
     1EF9   3C
     1EFA   00
     1EFB   19
     1EFC   04
     1EFD   7E
     1EFE   04
     1EFF   3E
     1F00   00
     1F01   19
     1F02   05
     1F03   1A
     1F04   04
     1F05   20
     1F06   00
     1F07   19
     1F08   05
     1F09   84
     1F0A   03
     1F0B   20
     1F0C   00
     1F0D   19
     1F0E   05
     1F0F   52
     1F10   03
     1F11   28
     1F12   00
     1F13   19
     1F14   05
     1F15   20
     1F16   03
     1F17   38
     1F18   00
     1F19   19
     1F1A   05
     1F1B   16
     1F1C   03
     1F1D   46
     1F1E   00
     1F1F   19
     1F20   05
     1F21   16
     1F22   03
     1F23   52
     1F24   00
     1F25   19
     1F26   05
     1F27   20
     1F28   03
     1F29   60
     1F2A   00
     1F2B   19
     1F2C   05
     1F2D   52
     1F2E   03
     1F2F   74
     1F30   00
     1F31   19
     1F32   05
     1F33   BB
     1F34   03
     1F35   7C
     1F36   00
     1F37   19
     1F38   04
     1F39   7E
     1F3A   04
     1F3B   42
     1F3C   00
     1F3D   19
     1F3E   15
     1F3F   1A
     1F40   04
     1F41   24
     1F42   00
     1F43   19
     1F44   15
     1F45   84
     1F46   03
     1F47   24
     1F48   00
     1F49   19
     1F4A   15
     1F4B   52
     1F4C   03
     1F4D   2C
     1F4E   00
     1F4F   19
     1F50   15
     1F51   20
     1F52   03
     1F53   3C
     1F54   00
     1F55   19
     1F56   04
     1F57   20
     1F58   03
     1F59   64
     1F5A   00
     1F5B   19
     1F5C   15
     1F5D   52
     1F5E   03
     1F5F   78
     1F60   00
     1F61   19
     1F62   15
     1F63   BB
     1F64   03
     1F65   80
     1F66   00
     1F67   12
     1F68   00
     1F69   02
     1F6A   19
     1F6B   04
     1F6C   00
     1F6D   05
     1F6E   17
     1F6F   00
     1F70   19
     1F71   05
     1F72   C4
     1F73   04
     1F74   28
     1F75   00
     1F76   19
     1F77   04
     1F78   E2
     1F79   04
     1F7A   1C
     1F7B   00
     1F7C   19
     1F7D   05
     1F7E   DE
     1F7F   03
     1F80   38
     1F81   00
     1F82   19
     1F83   04
     1F84   80
     1F85   02
     1F86   82
     1F87   00
     1F88   19
     1F89   05
     1F8A   48
     1F8B   03
     1F8C   0E
     1F8D   01
     1F8E   19
     1F8F   05
     1F90   AC
     1F91   03
     1F92   45
     1F93   01
     1F94   19
     1F95   05
     1F96   1A
     1F97   04
     1F98   4A
     1F99   01
     1F9A   19
     1F9B   05
     1F9C   00
     1F9D   05
     1F9E   AE
     1F9F   01
     1FA0   19
     1FA1   04
     1FA2   2C
     1FA3   01
     1FA4   C8
     1FA5   00
     1FA6   19
     1FA7   05
     1FA8   8A
     1FA9   02
     1FAA   40
     1FAB   01
     1FAC   19
     1FAD   05
     1FAE   3E
     1FAF   03
     1FB0   04
     1FB1   01
     1FB2   19
     1FB3   04
     1FB4   F4
     1FB5   01
     1FB6   64
     1FB7   00
     1FB8   19
     1FB9   05
     1FBA   FA
     1FBB   00
     1FBC   DC
     1FBD   00
     1FBE   19
     1FBF   05
     1FC0   8C
     1FC1   00
     1FC2   54
     1FC3   01
     1FC4   19
     1FC5   05
     1FC6   00
     1FC7   00
     1FC8   68
     1FC9   01
     1FCA   12
     1FCB   00
     1FCC   04
     1FCD   19
     1FCE   04
     1FCF   9E
     1FD0   02
     1FD1   96
     1FD2   00
     1FD3   19
     1FD4   15
     1FD5   F4
     1FD6   01
     1FD7   78
     1FD8   00
     1FD9   19
     1FDA   05
     1FDB   58
     1FDC   02
     1FDD   64
     1FDE   00
     1FDF   19
     1FE0   05
     1FE1   90
     1FE2   01
     1FE3   5A
     1FE4   00
     1FE5   00
     1FE6   7D
     1FE7   2D
     1FE8   20
     1FE9   13
     1FEA   28
     1FEB   A9
     1FEC   09
     1FED   85
     1FEE   83
     1FEF   A9
     1FF0   F0
     1FF1   85
     1FF2   82
     1FF3   4C
     1FF4   13
     1FF5   28
     1FF6   A9
     1FF7   00
     1FF8   8D
.backgnd_sprite_addr_table
     1FF9   58
     1FFA   A0 25
     1FFC   93 73
     1FFE   49 71
     2000   60 76
     2002   99 75
     2004   44 73
     2006   C9 78
     2008   B4 76
     200A   C0 25
     200C   13 76
     200E   93 78
     2010   C9 73
     2012   49 76
     2014   E0 78
     2016   44 78
     2018   C4 75
     201A   E0 25
     201C   13 7B
     201E   4A 7B
     2020   60 7B
     2022   C4 7A
     2024   00 26
     2026   B0 78
     2028   20 78
     202A   5C 78
     202C   20 26
     202E   00 78
     2030   88 76
     2032   60 26
     2034   60 70
     2036   80 26
     2038   E0 72
     203A   60 75
     203C   E0 77
     203E   80 7A
     2040   A0 7A
     2042   DC 7A
     2044   A0 26
     2046   60 7A
     2048   30 7B
     204A   C0 26
     204C   08 79
     204E   E0 26
     2050   28 79
     2052   00
.end_PIG_02
.end_PIG-02 =  &2053 
.start_GG_01
.start_GG_01 =  &2053 
.draw_stave
.stv
     2053   A0 00      LDY #&00
.stave_loop1
     2055   B9 73 20   LDA &2073,Y
     2058   20 EE FF   JSR &FFEE
     205B   C8         INY
     205C   C0 09      CPY #&09
     205E   D0 F5      BNE &2055
     2060   A2 05      LDX #&05
.stave_loop2
     2062   A0 09      LDY #&09
.stave_loop3
     2064   B9 73 20   LDA &2073,Y
     2067   20 EE FF   JSR &FFEE
     206A   C8         INY
     206B   C0 15      CPY #&15
     206D   D0 F5      BNE &2064
     206F   CA         DEX
     2070   D0 F0      BNE &2062
     2072   60         RTS
.stave_data
.sl
     2073   12
     2074   00
     2075   04
     2076   19
     2077   04
     2078   00
     2079   01
     207A   EC
     207B   03
     207C   19
     207D   01
     207E   00
     207F   03
     2080   00
     2081   00
     2082   19
     2083   00
     2084   00
     2085   FD
     2086   F0
     2087   FF
.note_sprite_addr
     2100   00
     2101   00
     2102   00
     2103   00
     2104   00
     2105   14
     2106   3C
     2107   3C
     2108   38
     2109   38
     210A   38
     210B   38
     210C   38
     210D   38
     210E   38
     210F   20
     2110   00
     2111   00
     2112   00
     2113   00
     2114   00
     2115   14
     2116   38
     2117   3C
     2118   38
     2119   38
     211A   38
     211B   38
     211C   38
     211D   38
     211E   38
     211F   00
     2120   00
     2121   00
     2122   00
     2123   00
     2124   00
     2125   14
     2126   38
     2127   3C
     2128   00
     2129   00
     212A   00
     212B   00
     212C   00
     212D   38
     212E   38
     212F   20
     2130   00
     2131   00
     2132   00
     2133   00
     2134   00
     2135   38
     2136   38
     2137   30
     2138   00
     2139   00
     213A   00
     213B   00
     213C   00
     213D   00
     213E   00
     213F   00
     2140   00
     2141   00
     2142   00
     2143   00
     2144   00
     2145   3C
     2146   3C
     2147   10
     2148   00
     2149   00
     214A   00
     214B   00
     214C   00
     214D   38
     214E   38
     214F   30
.bomb_sprite_addr
     2150   01
     2151   04
     2152   04
     2153   01
     2154   01
     2155   01
     2156   00
     2157   00
.gun_sprite_addr
     2158   00
     2159   04
     215A   04
     215B   04
     215C   2C
     215D   04
     215E   04
     215F   04
     2160   00
     2161   00
     2162   00
     2163   14
     2164   3C
     2165   14
     2166   14
     2167   00
     2168   28
     2169   28
     216A   28
     216B   3D
     216C   3E
     216D   3E
     216E   3C
     216F   28
     2170   00
     2171   04
     2172   04
     2173   04
     2174   2C
     2175   04
     2176   04
     2177   04
     2178   00
     2179   00
     217A   00
     217B   00
     217C   28
     217D   00
     217E   00
     217F   00
.end_GG_01
.end_GG-01 =  &2180 
X_base_addr =  &2200 
.start_X
.start_X =  &2200 
.end_X
.end_X =  &2700 
.start_GG_02
.start_GG_02 =  &2700 
.D%
.def_log_colour
     2700   A9 13      LDA #&13
     2702   20 EE FF   JSR &FFEE
     2705   8A         TXA
     2706   20 EE FF   JSR &FFEE
     2709   98         TYA
     270A   20 EE FF   JSR &FFEE
     270D   A9 00      LDA #&00
     270F   20 EE FF   JSR &FFEE
     2712   20 EE FF   JSR &FFEE
     2715   4C EE FF   JMP &FFEE
.E%
.def_envelopes
     2718   A5 70      LDA &70
     271A   0A         ASL A
     271B   0A         ASL A
     271C   0A         ASL A
     271D   0A         ASL A
     271E   69 68      ADC #&68
     2720   AA         TAX
     2721   A9 08      LDA #&08
     2723   A0 2D      LDY #&2D
     2725   20 F1 FF   JSR &FFF1
     2728   C6 70      DEC &70
     272A   D0 EC      BNE &2718
     272C   60         RTS
.scr
     272D   A9 02      LDA #&02
     272F   8D 4E FE   STA &FE4E
.scri
     2732   2C 4D FE   BIT &FE4D
     2735   F0 FB      BEQ &2732
     2737   A9 82      LDA #&82
     2739   8D 4E FE   STA &FE4E
     273C   60         RTS
.plot_score
     273D   85 82      STA &82
     273F   A0 0F      LDY #&0F
.loop
     2741   B1 82      LDA (&82),Y
     2743   91 80      STA (&80),Y
     2745   88         DEY
     2746   10 F9      BPL &2741
     2748   18         CLC
     2749   A5 80      LDA &80
     274B   69 10      ADC #&10
     274D   85 80      STA &80
     274F   60         RTS
     2750   00
.mg
.move_gun
     2751   EA         NOP
     2752   20 BB 27   JSR &27BB
     2755   A9 81      LDA #&81
     2757   A0 FF      LDY #&FF
     2759   A2 BD      LDX #&BD
     275B   20 F4 FF   JSR &FFF4
     275E   E8         INX
     275F   F0 21      BEQ &2782
     2761   88         DEY
     2762   A2 9E      LDX #&9E
     2764   20 F4 FF   JSR &FFF4
     2767   E8         INX
     2768   D0 2E      BNE &2798
.left
     276A   AE A6 2D   LDX &2DA6
     276D   E0 01      CPX #&01
     276F   F0 27      BEQ &2798
     2771   CA         DEX
     2772   8E A6 2D   STX &2DA6
     2775   38         SEC
     2776   A5 86      LDA &86
     2778   E9 08      SBC #&08
     277A   85 86      STA &86
     277C   B0 1A      BCS &2798
     277E   C6 87      DEC &87
     2780   90 16      BCC &2798
.right
     2782   AE A6 2D   LDX &2DA6
     2785   E0 47      CPX #&47
     2787   F0 0F      BEQ &2798
     2789   E8         INX
     278A   8E A6 2D   STX &2DA6
     278D   18         CLC
     278E   A5 86      LDA &86
     2790   69 08      ADC #&08
     2792   85 86      STA &86
     2794   90 02      BCC &2798
     2796   E6 87      INC &87
.gd
.player_dies
     2798   A9 01      LDA #&01
     279A   F0 1F      BEQ &27BB
     279C   38         SEC
     279D   A9 00      LDA #&00
     279F   85 78      STA &78
     27A1   A0 24      LDY #&24
.ch
     27A3   B1 86      LDA (&86),Y
     27A5   F0 02      BEQ &27A9
     27A7   85 78      STA &78
.cop
     27A9   98         TYA
     27AA   E9 08      SBC #&08
     27AC   A8         TAY
     27AD   10 F4      BPL &27A3
     27AF   A5 78      LDA &78
     27B1   F0 08      BEQ &27BB
     27B3   AD 6B 2D   LDA &2D6B
     27B6   09 20      ORA #&20
     27B8   8D 6B 2D   STA &2D6B
.gun
.plot_gun_sprite
.modify_gun_length
     27BB   A0 27      LDY #&27
.gop
     27BD   B9 60 23   LDA &2360,Y
     27C0   F0 04      BEQ &27C6
     27C2   51 86      EOR (&86),Y
     27C4   91 86      STA (&86),Y
.gz
     27C6   88         DEY
     27C7   10 F4      BPL &27BD
     27C9   60         RTS
.mb
.move_bullets
     27CA   A0 00      LDY #&00
     27CC   B1 8A      LDA (&8A),Y
     27CE   85 70      STA &70
     27D0   AD 86 2D   LDA &2D86
     27D3   85 82      STA &82
     27D5   AD 87 2D   LDA &2D87
     27D8   85 83      STA &83
.ntbu
     27DA   C8         INY
     27DB   B1 8A      LDA (&8A),Y
     27DD   85 77      STA &77
     27DF   C8         INY
     27E0   B1 8A      LDA (&8A),Y
     27E2   85 80      STA &80
     27E4   C8         INY
     27E5   B1 8A      LDA (&8A),Y
     27E7   85 81      STA &81
     27E9   D0 0A      BNE &27F5
     27EB   C8         INY
     27EC   A9 FE      LDA #&FE
     27EE   25 71      AND &71
     27F0   85 71      STA &71
     27F2   4C 34 28   JMP &2834
.bu1
     27F5   C8         INY
     27F6   20 B2 28   JSR &28B2
     27F9   B1 8A      LDA (&8A),Y
     27FB   10 06      BPL &2803
.bu7
     27FD   A9 00      LDA #&00
     27FF   85 81      STA &81
     2801   F0 31      BEQ &2834
.bu2
     2803   AD 6B 2D   LDA &2D6B
     2806   30 2C      BMI &2834
     2808   38         SEC
     2809   A9 07      LDA #&07
     280B   25 80      AND &80
     280D   C9 05      CMP #&05
     280F   30 09      BMI &281A
     2811   A5 80      LDA &80
     2813   E9 05      SBC #&05
     2815   85 80      STA &80
     2817   4C 26 28   JMP &2826
.bu3
     281A   A5 80      LDA &80
     281C   E9 7D      SBC #&7D
     281E   85 80      STA &80
     2820   A5 81      LDA &81
     2822   E9 02      SBC #&02
     2824   85 81      STA &81
.bu4
     2826   38         SEC
     2827   A5 77      LDA &77
     2829   E9 05      SBC #&05
     282B   85 77      STA &77
     282D   C9 02      CMP #&02
     282F   F0 CC      BEQ &27FD
.bu5
     2831   20 B2 28   JSR &28B2
.nxbu
     2834   88         DEY
     2835   88         DEY
     2836   88         DEY
     2837   A5 77      LDA &77
     2839   91 8A      STA (&8A),Y
     283B   C8         INY
     283C   A5 80      LDA &80
     283E   91 8A      STA (&8A),Y
     2840   C8         INY
     2841   A5 81      LDA &81
     2843   91 8A      STA (&8A),Y
     2845   C8         INY
     2846   C4 70      CPY &70
     2848   90 90      BCC &27DA
     284A   60         RTS
.new_bullet
.nb
     284B   EA         NOP
     284C   A9 81      LDA #&81
     284E   A0 FF      LDY #&FF
     2850   A2 B6      LDX #&B6
     2852   20 F4 FF   JSR &FFF4
     2855   E8         INX
     2856   F0 07      BEQ &285F
     2858   A9 00      LDA #&00
     285A   8D 5E 28   STA &285E
.nwb0
     285D   60         RTS
.fp0
     285E   00
.nwb1
     285F   AD 5E 28   LDA &285E
     2862   F0 04      BEQ &2868
     2864   CE 5E 28   DEC &285E
     2867   60         RTS
.fp1
.bullet_interval
     2868   A9 12      LDA #&12
     286A   8D 5E 28   STA &285E
     286D   A0 FF      LDY #&FF
.nwb2
     286F   C8         INY
     2870   C8         INY
     2871   C8         INY
     2872   C8         INY
     2873   CC 00 24   CPY &2400
     2876   B0 E5      BCS &285D
     2878   B1 8A      LDA (&8A),Y
     287A   D0 F3      BNE &286F
     287C   88         DEY
     287D   88         DEY
     287E   A9 9D      LDA #&9D
     2880   91 8A      STA (&8A),Y
     2882   C8         INY
     2883   38         SEC
     2884   A5 86      LDA &86
     2886   E9 6E      SBC #&6E
     2888   91 8A      STA (&8A),Y
     288A   85 80      STA &80
     288C   C8         INY
     288D   A5 87      LDA &87
     288F   E9 02      SBC #&02
     2891   91 8A      STA (&8A),Y
     2893   85 81      STA &81
     2895   C8         INY
     2896   AD A6 2D   LDA &2DA6
     2899   18         CLC
     289A   69 03      ADC #&03
     289C   91 8A      STA (&8A),Y
     289E   20 B2 28   JSR &28B2
     28A1   A9 01      LDA #&01
     28A3   0D 6B 2D   ORA &2D6B
     28A6   8D 6B 2D   STA &2D6B
     28A9   A2 D0      LDX #&D0
     28AB   A0 2D      LDY #&2D
     28AD   A9 07      LDA #&07
     28AF   4C F1 FF   JMP &FFF1
.plot_fast_bullet_sprite
     28B2   98         TYA
     28B3   48         PHA
     28B4   A0 05      LDY #&05
     28B6   18         CLC
     28B7   A5 80      LDA &80
     28B9   69 78      ADC #&78
     28BB   85 84      STA &84
     28BD   A5 81      LDA &81
     28BF   69 02      ADC #&02
     28C1   85 85      STA &85
     28C3   A5 80      LDA &80
     28C5   29 07      AND #&07
     28C7   49 07      EOR #&07
     28C9   8D D8 28   STA &28D8
     28CC   C9 05      CMP #&05
     28CE   10 0B      BPL &28DB
.bot
     28D0   B1 84      LDA (&84),Y
     28D2   49 2A      EOR #&2A
     28D4   91 84      STA (&84),Y
     28D6   88         DEY
.comp_mod
     28D7   C0 FF      CPY #&FF
     28D9   D0 F5      BNE &28D0
.top
     28DB   B1 80      LDA (&80),Y
     28DD   49 2A      EOR #&2A
     28DF   91 80      STA (&80),Y
     28E1   88         DEY
     28E2   10 F7      BPL &28DB
     28E4   68         PLA
     28E5   A8         TAY
     28E6   60         RTS
.np
.new_plane
     28E7   EA         NOP
     28E8   A5 72      LDA &72
     28EA   C9 01      CMP #&01
     28EC   10 3A      BPL &2928
     28EE   CE 6F 2D   DEC &2D6F
     28F1   D0 35      BNE &2928
     28F3   AD 70 2D   LDA &2D70
     28F6   8D 6F 2D   STA &2D6F
     28F9   A5 70      LDA &70
     28FB   20 7F 2C   JSR &2C7F
     28FE   A8         TAY
     28FF   38         SEC
.next_plane2
     2900   E9 05      SBC #&05
     2902   10 FC      BPL &2900
     2904   AA         TAX
.next_plane3
     2905   C8         INY
     2906   E8         INX
     2907   D0 FC      BNE &2905
     2909   88         DEY
     290A   B1 75      LDA (&75),Y
     290C   30 16      BMI &2924
     290E   A4 70      LDY &70
.se
     2910   88         DEY
     2911   B1 75      LDA (&75),Y
     2913   30 0F      BMI &2924
     2915   88         DEY
     2916   88         DEY
     2917   88         DEY
     2918   88         DEY
     2919   D0 F5      BNE &2910
     291B   A9 80      LDA #&80
     291D   0D 6B 2D   ORA &2D6B
     2920   8D 6B 2D   STA &2D6B
     2923   60         RTS
.fly
     2924   49 80      EOR #&80
     2926   91 75      STA (&75),Y
.no_plane
     2928   60         RTS
.pxp
     2929   A5 77      LDA &77
     292B   F0 55      BEQ &2982
     292D   A2 22      LDX #&22
     292F   86 89      STX &89
     2931   A5 88      LDA &88
     2933   48         PHA
     2934   A5 77      LDA &77
     2936   C9 15      CMP #&15
     2938   D0 0A      BNE &2944
     293A   A9 40      LDA #&40
     293C   85 88      STA &88
     293E   20 21 2B   JSR &2B21
     2941   4C 79 29   JMP &2979
.px1
     2944   C9 0C      CMP #&0C
     2946   D0 11      BNE &2959
     2948   A9 40      LDA #&40
     294A   85 88      STA &88
     294C   20 21 2B   JSR &2B21
     294F   A9 80      LDA #&80
     2951   85 88      STA &88
     2953   20 21 2B   JSR &2B21
     2956   4C 79 29   JMP &2979
.px2
     2959   C9 06      CMP #&06
     295B   D0 11      BNE &296E
     295D   A9 80      LDA #&80
     295F   85 88      STA &88
     2961   20 21 2B   JSR &2B21
     2964   A9 C0      LDA #&C0
     2966   85 88      STA &88
     2968   20 21 2B   JSR &2B21
     296B   4C 79 29   JMP &2979
.px3
     296E   C9 01      CMP #&01
     2970   D0 07      BNE &2979
     2972   A9 C0      LDA #&C0
     2974   85 88      STA &88
     2976   20 21 2B   JSR &2B21
.reset_sp_addr
     2979   A9 2F      LDA #&2F
     297B   85 89      STA &89
     297D   68         PLA
     297E   85 88      STA &88
     2980   C6 77      DEC &77
.nx
     2982   4C F4 2A   JMP &2AF4
.check_plane_collision
     2985   98         TYA
     2986   48         PHA
     2987   A0 00      LDY #&00
     2989   B1 8A      LDA (&8A),Y
     298B   85 80      STA &80
.h
.check_next_plane
     298D   C8         INY
     298E   B1 8A      LDA (&8A),Y
     2990   38         SEC
     2991   E5 7B      SBC &7B
     2993   30 43      BMI &29D8
     2995   C9 08      CMP #&08
     2997   10 3F      BPL &29D8
     2999   C8         INY
     299A   C8         INY
     299B   B1 8A      LDA (&8A),Y
     299D   F0 3B      BEQ &29DA
     299F   C8         INY
     29A0   B1 8A      LDA (&8A),Y
     29A2   38         SEC
     29A3   E5 7A      SBC &7A
     29A5   30 34      BMI &29DB
     29A7   C9 07      CMP #&07
     29A9   10 30      BPL &29DB
     29AB   C9 03      CMP #&03
     29AD   F0 0D      BEQ &29BC
     29AF   A9 40      LDA #&40
     29B1   0D 6B 2D   ORA &2D6B
     29B4   8D 6B 2D   STA &2D6B
     29B7   0A         ASL A
     29B8   91 8A      STA (&8A),Y
     29BA   D0 1F      BNE &29DB
.plane_hit
     29BC   A9 19      LDA #&19
     29BE   85 77      STA &77
     29C0   A9 D8      LDA #&D8
     29C2   91 8A      STA (&8A),Y
     29C4   AA         TAX
     29C5   A0 2D      LDY #&2D
     29C7   A9 07      LDA #&07
     29C9   20 F1 FF   JSR &FFF1
     29CC   A9 02      LDA #&02
     29CE   0D 6B 2D   ORA &2D6B
     29D1   8D 6B 2D   STA &2D6B
     29D4   68         PLA
     29D5   A8         TAY
     29D6   38         SEC
     29D7   60         RTS
.plane_not_hit
     29D8   C8         INY
     29D9   C8         INY
     29DA   C8         INY
     29DB   C4 80      CPY &80
     29DD   90 AE      BCC &298D
     29DF   68         PLA
     29E0   A8         TAY
     29E1   18         CLC
     29E2   60         RTS
.mp
.move_planes
     29E3   A0 00      LDY #&00
     29E5   B1 75      LDA (&75),Y
     29E7   85 70      STA &70
     29E9   84 72      STY &72
.nxpl
     29EB   C8         INY
     29EC   B1 75      LDA (&75),Y
     29EE   85 77      STA &77
     29F0   C8         INY
     29F1   B1 75      LDA (&75),Y
     29F3   85 78      STA &78
     29F5   C8         INY
     29F6   B1 75      LDA (&75),Y
     29F8   85 79      STA &79
     29FA   C8         INY
     29FB   B1 75      LDA (&75),Y
     29FD   85 7A      STA &7A
     29FF   C8         INY
     2A00   B1 75      LDA (&75),Y
     2A02   85 7B      STA &7B
     2A04   A5 77      LDA &77
     2A06   29 C0      AND #&C0
     2A08   D0 03      BNE &2A0D
     2A0A   4C 29 29   JMP &2929
.no_explosion
     2A0D   A5 7A      LDA &7A
     2A0F   10 03      BPL &2A14
     2A11   4C 10 2B   JMP &2B10
.plane_flying
     2A14   C6 77      DEC &77
     2A16   20 21 2B   JSR &2B21
     2A19   20 85 29   JSR &2985
     2A1C   90 03      BCC &2A21
     2A1E   4C 29 29   JMP &2929
.plane_not_hit
     2A21   A5 73      LDA &73
     2A23   29 BF      AND #&BF
     2A25   85 73      STA &73
     2A27   E6 72      INC &72
     2A29   A5 7B      LDA &7B
     2A2B   C9 AF      CMP #&AF
     2A2D   D0 21      BNE &2A50
     2A2F   38         SEC
     2A30   A5 78      LDA &78
     2A32   E9 87      SBC #&87
     2A34   85 78      STA &78
     2A36   A5 79      LDA &79
     2A38   E9 48      SBC #&48
     2A3A   85 79      STA &79
     2A3C   A9 C0      LDA #&C0
     2A3E   85 7B      STA &7B
     2A40   AD 55 26   LDA &2655
     2A43   F0 0B      BEQ &2A50
     2A45   A5 7A      LDA &7A
     2A47   49 80      EOR #&80
     2A49   85 7A      STA &7A
     2A4B   E6 77      INC &77
     2A4D   4C F4 2A   JMP &2AF4
.calc_move
     2A50   A9 3F      LDA #&3F
     2A52   25 77      AND &77
     2A54   D0 40      BNE &2A96
     2A56   38         SEC
     2A57   A5 7A      LDA &7A
     2A59   ED A6 2D   SBC &2DA6
     2A5C   85 77      STA &77
     2A5E   A9 00      LDA #&00
     2A60   B0 02      BCS &2A64
     2A62   38         SEC
     2A63   6A         ROR A
.pl3
     2A64   6A         ROR A
     2A65   85 80      STA &80
     2A67   A5 77      LDA &77
     2A69   D0 0D      BNE &2A78
.pl20
     2A6B   A5 7D      LDA &7D
     2A6D   10 06      BPL &2A75
     2A6F   A5 80      LDA &80
     2A71   49 C0      EOR #&C0
     2A73   85 80      STA &80
.pl21
     2A75   AD 6E 2D   LDA &2D6E
.pl5
     2A78   10 05      BPL &2A7F
     2A7A   49 FF      EOR #&FF
     2A7C   18         CLC
     2A7D   69 01      ADC #&01
.pl4
     2A7F   C9 02      CMP #&02
     2A81   30 0F      BMI &2A92
     2A83   8D 88 2C   STA &2C88
     2A86   20 82 2C   JSR &2C82
     2A89   4E 88 2C   LSR &2C88
     2A8C   18         CLC
     2A8D   6D 88 2C   ADC &2C88
     2A90   29 3F      AND #&3F
.pl6
     2A92   05 80      ORA &80
     2A94   85 77      STA &77
.mid
     2A96   A5 77      LDA &77
     2A98   A6 7A      LDX &7A
     2A9A   E0 01      CPX #&01
     2A9C   10 07      BPL &2AA5
     2A9E   09 40      ORA #&40
     2AA0   29 7F      AND #&7F
     2AA2   4C AD 2A   JMP &2AAD
.plnl
     2AA5   E0 48      CPX #&48
     2AA7   30 06      BMI &2AAF
     2AA9   09 80      ORA #&80
     2AAB   29 BF      AND #&BF
.down
     2AAD   85 77      STA &77
     2AAF   E6 7B      INC &7B
     2AB1   A9 07      LDA #&07
     2AB3   25 78      AND &78
     2AB5   C9 07      CMP #&07
     2AB7   F0 05      BEQ &2ABE
     2AB9   E6 78      INC &78
     2ABB   4C CB 2A   JMP &2ACB
.pl2
     2ABE   18         CLC
     2ABF   A5 78      LDA &78
     2AC1   69 79      ADC #&79
     2AC3   85 78      STA &78
     2AC5   A5 79      LDA &79
     2AC7   69 02      ADC #&02
     2AC9   85 79      STA &79
.left
     2ACB   AD 20 2B   LDA &2B20
     2ACE   F0 21      BEQ &2AF1
     2AD0   A5 77      LDA &77
     2AD2   10 10      BPL &2AE4
     2AD4   C6 7A      DEC &7A
     2AD6   38         SEC
     2AD7   A5 78      LDA &78
     2AD9   E9 08      SBC #&08
     2ADB   85 78      STA &78
     2ADD   B0 12      BCS &2AF1
     2ADF   C6 79      DEC &79
     2AE1   4C F1 2A   JMP &2AF1
.right
     2AE4   E6 7A      INC &7A
     2AE6   18         CLC
     2AE7   A5 78      LDA &78
     2AE9   69 08      ADC #&08
     2AEB   85 78      STA &78
     2AED   90 02      BCC &2AF1
     2AEF   E6 79      INC &79
.enlr
.fo
     2AF1   20 21 2B   JSR &2B21
.save_plane
     2AF4   88         DEY
     2AF5   88         DEY
     2AF6   88         DEY
     2AF7   88         DEY
     2AF8   A5 77      LDA &77
     2AFA   91 75      STA (&75),Y
     2AFC   C8         INY
     2AFD   A5 78      LDA &78
     2AFF   91 75      STA (&75),Y
     2B01   C8         INY
     2B02   A5 79      LDA &79
     2B04   91 75      STA (&75),Y
     2B06   C8         INY
     2B07   A5 7A      LDA &7A
     2B09   91 75      STA (&75),Y
     2B0B   C8         INY
     2B0C   A5 7B      LDA &7B
     2B0E   91 75      STA (&75),Y
.pl1
     2B10   C4 70      CPY &70
     2B12   F0 03      BEQ &2B17
     2B14   4C EB 29   JMP &29EB
.hop7
     2B17   A9 01      LDA #&01
     2B19   4D 20 2B   EOR &2B20
     2B1C   8D 20 2B   STA &2B20
     2B1F   60         RTS
.tog
     2B20   00
.pp
.plot_plane
     2B21   98         TYA
     2B22   48         PHA
     2B23   18         CLC
     2B24   A5 78      LDA &78
     2B26   69 78      ADC #&78
     2B28   85 84      STA &84
     2B2A   29 07      AND #&07
     2B2C   49 07      EOR #&07
     2B2E   8D 3F 2B   STA &2B3F
     2B31   8D 4D 2B   STA &2B4D
     2B34   A5 79      LDA &79
     2B36   69 02      ADC #&02
     2B38   85 85      STA &85
.modify_plane_sprite_length
     2B3A   A0 3F      LDY #&3F
.plot_loop
     2B3C   A2 07      LDX #&07
.plot_pl_mod1
     2B3E   E0 FF      CPX #&FF
     2B40   F0 0E      BEQ &2B50
.bottom
     2B42   B1 88      LDA (&88),Y
     2B44   F0 04      BEQ &2B4A
     2B46   51 84      EOR (&84),Y
     2B48   91 84      STA (&84),Y
.bz
     2B4A   88         DEY
     2B4B   CA         DEX
.plot_pl_mod2
     2B4C   E0 FF      CPX #&FF
     2B4E   D0 F2      BNE &2B42
.top
     2B50   B1 88      LDA (&88),Y
     2B52   F0 04      BEQ &2B58
     2B54   51 78      EOR (&78),Y
     2B56   91 78      STA (&78),Y
.tz
     2B58   88         DEY
     2B59   CA         DEX
     2B5A   10 F4      BPL &2B50
     2B5C   98         TYA
     2B5D   10 DD      BPL &2B3C
     2B5F   68         PLA
     2B60   A8         TAY
     2B61   60         RTS
.new_bomb
     2B62   EA         NOP
     2B63   A5 51      LDA &51
     2B65   C5 50      CMP &50
     2B67   90 6E      BCC &2BD7
     2B69   A9 C0      LDA #&C0
     2B6B   24 73      BIT &73
     2B6D   D0 68      BNE &2BD7
     2B6F   C6 73      DEC &73
     2B71   D0 64      BNE &2BD7
     2B73   A6 51      LDX &51
.find_slot_loop
     2B75   CA         DEX
     2B76   B5 52      LDA &52,X
     2B78   F0 05      BEQ &2B7F
     2B7A   CA         DEX
     2B7B   D0 F8      BNE &2B75
     2B7D   F0 58      BEQ &2BD7
.find_plane
     2B7F   CA         DEX
     2B80   A0 FF      LDY #&FF
.find_plane_loop
     2B82   C8         INY
     2B83   C8         INY
     2B84   C8         INY
     2B85   C8         INY
     2B86   C8         INY
     2B87   B1 75      LDA (&75),Y
     2B89   30 F7      BMI &2B82
     2B8B   88         DEY
     2B8C   88         DEY
     2B8D   88         DEY
     2B8E   B1 75      LDA (&75),Y
     2B90   29 C0      AND #&C0
     2B92   D0 06      BNE &2B9A
     2B94   C8         INY
     2B95   C8         INY
     2B96   C8         INY
     2B97   4C 82 2B   JMP &2B82
.found_plane
     2B9A   C8         INY
     2B9B   18         CLC
     2B9C   B1 75      LDA (&75),Y
     2B9E   69 9D      ADC #&9D
     2BA0   95 52      STA &52,X
     2BA2   C8         INY
     2BA3   B1 75      LDA (&75),Y
     2BA5   69 02      ADC #&02
     2BA7   95 53      STA &53,X
     2BA9   18         CLC
     2BAA   B5 52      LDA &52,X
     2BAC   69 78      ADC #&78
     2BAE   95 62      STA &62,X
     2BB0   B5 53      LDA &53,X
     2BB2   69 02      ADC #&02
     2BB4   95 63      STA &63,X
     2BB6   18         CLC
     2BB7   8A         TXA
     2BB8   69 52      ADC #&52
     2BBA   8D F7 2B   STA &2BF7
     2BBD   8D FB 2B   STA &2BFB
     2BC0   8A         TXA
     2BC1   69 62      ADC #&62
     2BC3   8D EC 2B   STA &2BEC
     2BC6   8D F0 2B   STA &2BF0
     2BC9   B5 52      LDA &52,X
     2BCB   20 DE 2B   JSR &2BDE
     2BCE   A0 00      LDY #&00
     2BD0   AD A7 2D   LDA &2DA7
     2BD3   85 73      STA &73
     2BD5   E6 50      INC &50
.no_bomb
     2BD7   A9 C0      LDA #&C0
     2BD9   05 73      ORA &73
     2BDB   85 73      STA &73
     2BDD   60         RTS
.plot_bomb
     2BDE   A0 05      LDY #&05
     2BE0   29 07      AND #&07
     2BE2   49 07      EOR #&07
     2BE4   8D F3 2B   STA &2BF3
     2BE7   C9 05      CMP #&05
     2BE9   10 0B      BPL &2BF6
.plot_bomb_lower1
     2BEB   B1 62      LDA (&62),Y
     2BED   49 01      EOR #&01
.plot_bomb_lower2
     2BEF   91 62      STA (&62),Y
     2BF1   88         DEY
.plot_bomb_mod
     2BF2   C0 FF      CPY #&FF
     2BF4   D0 F5      BNE &2BEB
.plot_bomb_upper1
     2BF6   B1 52      LDA (&52),Y
     2BF8   49 15      EOR #&15
.plot_bomb_upper2
     2BFA   91 52      STA (&52),Y
     2BFC   88         DEY
     2BFD   10 F7      BPL &2BF6
     2BFF   60         RTS
.move_bombs
     2C00   EA         NOP
     2C01   A2 00      LDX #&00
.next_bomb_loop
     2C03   18         CLC
     2C04   8A         TXA
     2C05   69 52      ADC #&52
     2C07   8D F7 2B   STA &2BF7
     2C0A   8D FB 2B   STA &2BFB
     2C0D   8A         TXA
     2C0E   69 62      ADC #&62
     2C10   8D EC 2B   STA &2BEC
     2C13   8D F0 2B   STA &2BF0
     2C16   B5 53      LDA &53,X
     2C18   D0 08      BNE &2C22
     2C1A   A9 7F      LDA #&7F
     2C1C   25 73      AND &73
     2C1E   85 73      STA &73
     2C20   D0 56      BNE &2C78
.unplot
     2C22   B5 52      LDA &52,X
     2C24   20 DE 2B   JSR &2BDE
     2C27   AD 6B 2D   LDA &2D6B
     2C2A   30 4C      BMI &2C78
.upper_addr
     2C2C   B5 52      LDA &52,X
     2C2E   29 07      AND #&07
     2C30   CD 57 2D   CMP &2D57
     2C33   10 13      BPL &2C48
     2C35   18         CLC
     2C36   B5 52      LDA &52,X
     2C38   6D 56 2D   ADC &2D56
     2C3B   95 52      STA &52,X
     2C3D   18         CLC
     2C3E   B5 62      LDA &62,X
     2C40   6D 56 2D   ADC &2D56
     2C43   95 62      STA &62,X
     2C45   4C 65 2C   JMP &2C65
.upper_next_line
     2C48   18         CLC
     2C49   B5 52      LDA &52,X
     2C4B   6D 58 2D   ADC &2D58
     2C4E   95 52      STA &52,X
     2C50   B5 53      LDA &53,X
     2C52   6D 59 2D   ADC &2D59
     2C55   95 53      STA &53,X
     2C57   B5 62      LDA &62,X
     2C59   6D 58 2D   ADC &2D58
     2C5C   95 62      STA &62,X
     2C5E   B5 63      LDA &63,X
     2C60   6D 59 2D   ADC &2D59
     2C63   95 63      STA &63,X
.check_bottom
     2C65   B5 53      LDA &53,X
     2C67   C9 80      CMP #&80
     2C69   90 08      BCC &2C73
     2C6B   C6 50      DEC &50
     2C6D   A9 00      LDA #&00
     2C6F   95 53      STA &53,X
     2C71   F0 05      BEQ &2C78
.bomb_redraw
     2C73   B5 52      LDA &52,X
     2C75   20 DE 2B   JSR &2BDE
.next_bomb
     2C78   E8         INX
     2C79   E8         INX
     2C7A   E4 51      CPX &51
     2C7C   90 85      BCC &2C03
     2C7E   60         RTS
.ra2
     2C7F   8D 88 2C   STA &2C88
     2C82   38         SEC
     2C83   A5 7C      LDA &7C
     2C85   29 7F      AND #&7F
.ra3
     2C87   E9 10      SBC #&10
     2C89   10 FC      BPL &2C87
     2C8B   6D 88 2C   ADC &2C88
     2C8E   60         RTS
.end_GG_02_code
.end_GG_02_code =  &2C8F 
.start_GG_02_data
.start_GG_02_data =  &2D56 
.bomb_vert_rate
     2D56   03
.bomb_vert_newline
     2D57   05
.bomb_vert_LO
     2D58   7B
.bomb_vert_HI
     2D59   02
.cloud_sprite_offset_list
     2D5A   80
     2D5B   40
     2D5C   40
     2D5D   00
     2D5E   80
     2D5F   00
     2D60   40
     2D61   80
     2D62   00
.bis
     2D63   88
     2D64   A0
     2D65   B8
     2D66   D0
     2D67   E8
     2D68   D0
     2D69   B8
     2D6A   88
.sc
     2D6B   00
     2D6C   00
     2D6D   00
.de
     2D6E   20
.ti
     2D6F   03
     2D70   42
.ba
     2D71   00
     2D72   00
     2D73   06
     2D74   00
.envelope_base_addr
     2D78   01
     2D79   81
     2D7A   FD
     2D7B   00
     2D7C   00
     2D7D   28
     2D7E   00
     2D7F   00
     2D80   3C
     2D81   06
     2D82   CE
     2D83   CE
     2D84   3B
     2D85   7E
.buf
     2D86   00
     2D87   23
     2D88   02
     2D89   83
     2D8A   00
     2D8B   00
     2D8C   00
     2D8D   00
     2D8E   00
     2D8F   00
     2D90   7F
     2D91   FF
     2D92   FE
     2D93   FF
     2D94   7E
     2D95   78
.bof
     2D96   50
     2D97   21
     2D98   03
     2D99   86
     2D9A   FF
     2D9B   00
     2D9C   01
     2D9D   02
     2D9E   01
     2D9F   01
     2DA0   7F
     2DA1   FF
     2DA2   FD
     2DA3   FD
     2DA4   7E
     2DA5   78
.Xg
     2DA6   20
.inb
     2DA7   DF
     2DA8   04
     2DA9   81
     2DAA   FB
     2DAB   E6
     2DAC   FE
     2DAD   10
     2DAE   01
     2DAF   5A
     2DB0   7F
     2DB1   FE
     2DB2   E2
     2DB3   9C
     2DB4   7E
     2DB5   00
     2DB6   00
     2DB7   00
     2DB8   05
     2DB9   0A
     2DBA   00
     2DBB   00
     2DBC   00
     2DBD   01
     2DBE   0C
     2DBF   00
     2DC0   7F
     2DC1   F5
     2DC2   00
     2DC3   E2
     2DC4   7E
     2DC5   00
     2DC6   00
     2DC7   00
.bsou
.sound_bsou
     2DC8   12
     2DC9   00
     2DCA   FF
     2DCB   FF
     2DCC   00
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
.end_GG_02
.end_GG-02 =  &2E00 
Saving file 'BIRDS'
