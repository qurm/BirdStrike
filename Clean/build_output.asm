X_base_addr =  &2100 
.picn =  &2554 
.start_SS_01
     1100   54 68 61 ...
.game_over
.gov
     1126   68         PLA
     1127   68         PLA
     1128   A0 FF      LDY #&FF
.gov1
     112A   C8         INY
     112B   A9 0A      LDA #&0A
     112D   20 02 18   JSR &1802
     1130   B9 42 11   LDA &1142,Y
     1133   20 EE FF   JSR &FFEE
     1136   C9 52      CMP #&52
     1138   D0 F0      BNE &112A
     113A   A9 96      LDA #&96
     113C   20 02 18   JSR &1802
     113F   4C 27 15   JMP &1527
.gov2
     1142   1F
     1143   05
     1144   0F
     1145   11
     1146   01
     1147   47 41 4D ...
.bon
     1150   AD 5C 25   LDA &255C
     1153   29 03      AND #&03
     1155   D0 0B      BNE &1162
     1157   A9 0F      LDA #&0F
     1159   20 02 18   JSR &1802
     115C   20 7F 13   JSR &137F
     115F   4C 68 11   JMP &1168
.bon0
     1162   20 26 18   JSR &1826
     1165   20 0D 19   JSR &190D
.bon11
     1168   20 B0 11   JSR &11B0
     116B   A0 4B      LDY #&4B
.bon1
     116D   F8         SED
     116E   18         CLC
     116F   AD 5F 2D   LDA &2D5F
     1172   69 02      ADC #&02
     1174   8D 5F 2D   STA &2D5F
     1177   AD 60 2D   LDA &2D60
     117A   69 00      ADC #&00
     117C   8D 60 2D   STA &2D60
     117F   D8         CLD
     1180   A9 02      LDA #&02
     1182   20 02 18   JSR &1802
     1185   98         TYA
     1186   48         PHA
     1187   A2 E8      LDX #&E8
     1189   A0 2D      LDY #&2D
     118B   A9 07      LDA #&07
     118D   20 F1 FF   JSR &FFF1
     1190   20 76 17   JSR &1776
     1193   68         PLA
     1194   A8         TAY
     1195   88         DEY
     1196   D0 D5      BNE &116D
     1198   EE C8 2D   INC &2DC8
     119B   A2 C8      LDX #&C8
     119D   A0 2D      LDY #&2D
     119F   A9 07      LDA #&07
     11A1   20 F1 FF   JSR &FFF1
     11A4   CE C8 2D   DEC &2DC8
     11A7   A9 80      LDA #&80
     11A9   0D 5E 2D   ORA &2D5E
     11AC   8D 5E 2D   STA &2D5E
     11AF   60         RTS
.wbmsg
     11B0   A0 00      LDY #&00
.wb1
     11B2   B9 BE 11   LDA &11BE,Y
     11B5   20 EE FF   JSR &FFEE
     11B8   C8         INY
     11B9   C0 0B      CPY #&0B
     11BB   D0 F5      BNE &11B2
     11BD   60         RTS
.bmsg
     11BE   11 06 1F 07
     11C2   0F
     11C3   42 4F 4E ...
.nbk
     11C9   B4
     11CA   16
     11CB   08
     11CC   20
     11CD   7F
.hs
     11CE   00
     11CF   00
     11D0   02
.m7
     11D1   16
     11D2   07
     11D3   17
     11D4   00
     11D5   0A
     11D6   20
     11D7   00
     11D8   00
     11D9   00
     11DA   00
     11DB   00
     11DC   00
.bsk
     11DD   9A
     11DE   94
     11DF   68
     11E0   3F
     11E1   6F
     11E2   34
     11E3   20
     11E4   20
     11E5   20
     11E6   20
     11E7   20
     11E8   20
     11E9   20
     11EA   20
     11EB   FF
     11EC   20
     11ED   20
     11EE   5F
     11EF   7E
     11F0   2F
     11F1   6D
     11F2   20
     11F3   78
     11F4   20
     11F5   20
     11F6   20
     11F7   20
     11F8   20
     11F9   20
     11FA   20
     11FB   7E
     11FC   0D
     11FD   9A
     11FE   96
     11FF   6A
     1200   7D
     1201   7E
     1202   25
     1203   20
     1204   2F
     1205   20
     1206   30
     1207   20
     1208   20
     1209   20
     120A   20
     120B   FF
     120C   20
     120D   20
     120E   6A
     120F   7D
     1210   70
     1211   30
     1212   20
     1213   FF
     1214   2C
     1215   20
     1216   30
     1217   20
     1218   20
     1219   2F
     121A   20
     121B   FF
     121C   5F
     121D   3E
     121E   0D
     121F   9A
     1220   94
     1221   6A
     1222   3F
     1223   60
     1224   6F
     1225   34
     1226   FF
     1227   20
     1228   FF
     1229   2F
     122A   21
     122B   78
     122C   2F
     122D   FF
     122E   20
     122F   20
     1230   20
     1231   60
     1232   60
     1233   FF
     1234   20
     1235   FF
     1236   20
     1237   20
     1238   FF
     1239   2F
     123A   21
     123B   FF
     123C   20
     123D   FF
     123E   6F
     123F   30
     1240   20
     1241   7E
     1242   7B
     1243   34
     1244   0D
     1245   9A
     1246   96
     1247   2A
     1248   7D
     1249   70
     124A   7E
     124B   25
     124C   6F
     124D   30
     124E   FF
     124F   20
     1250   20
     1251   6F
     1252   7C
     1253   3F
     1254   20
     1255   20
     1256   2A
     1257   7C
     1258   7E
     1259   27
     125A   20
     125B   6F
     125C   74
     125D   30
     125E   FF
     125F   20
     1260   20
     1261   6F
     1262   30
     1263   FF
     1264   20
     1265   2B
     1266   34
     1267   6D
     1268   78
     1269   24
     126A   1F
     126B   05
     126C   05
     126D   82
     126E   46
     126F   49
     1270   52
     1271   45
     1272   46
     1273   4C
     1274   59
     1275   20
     1276   28
     1277   63
     1278   29
     1279   20
     127A   41
     127B   6E
     127C   64
     127D   72
     127E   65
     127F   77
     1280   20
     1281   46
     1282   72
     1283   69
     1284   67
     1285   61
     1286   61
     1287   72
     1288   64
     1289   0D
     128A   1F
     128B   0B
     128C   08
     128D   8D
     128E   83
     128F   48
     1290   69
     1291   67
     1292   68
     1293   20
     1294   53
     1295   63
     1296   6F
     1297   72
     1298   65
     1299   1F
     129A   0B
     129B   09
     129C   8D
     129D   83
     129E   48
     129F   69
     12A0   67
     12A1   68
     12A2   20
     12A3   53
     12A4   63
     12A5   6F
     12A6   72
     12A7   65
     12A8   00
.dts
.dots_str
     12A9   1F
     12AA   0B
     12AB   0B
     12AC   2E
     12AD   2E
     12AE   2E
     12AF   2E
     12B0   2E
     12B1   2E
     12B2   2E
     12B3   2E
     12B4   2E
     12B5   2E
     12B6   2E
     12B7   2E
     12B8   2E
     12B9   00
     12BA   1F
     12BB   19
     12BC   0B
.nam
     12BD   61
     12BE   6E
     12BF   64
     12C0   72
     12C1   65
     12C2   77
     12C3   20
     12C4   20
     12C5   00
.ints
.instructions_str
     12C6   1F
     12C7   0E
     12C8   0E
     12C9   8D
     12CA   83
     12CB   4B
     12CC   65
     12CD   79
     12CE   73
     12CF   1F
     12D0   0E
     12D1   0F
     12D2   8D
     12D3   83
     12D4   4B
     12D5   65
     12D6   79
     12D7   73
     12D8   1F
     12D9   06
     12DA   11
     12DB   86
     12DC   5A
     12DD   20
     12DE   2E
     12DF   2E
     12E0   2E
     12E1   2E
     12E2   2E
     12E3   2E
     12E4   2E
     12E5   2E
     12E6   2E
     12E7   2E
     12E8   2E
     12E9   2E
     12EA   20
     12EB   6D
     12EC   6F
     12ED   76
     12EE   65
     12EF   20
     12F0   6C
     12F1   65
     12F2   66
     12F3   74
     12F4   1F
     12F5   06
     12F6   12
     12F7   86
     12F8   58
     12F9   20
     12FA   2E
     12FB   2E
     12FC   2E
     12FD   2E
     12FE   2E
     12FF   2E
     1300   2E
     1301   2E
     1302   2E
     1303   2E
     1304   2E
     1305   20
     1306   6D
     1307   6F
     1308   76
     1309   65
     130A   20
     130B   72
     130C   69
     130D   67
     130E   68
     130F   74
     1310   1F
     1311   06
     1312   13
     1313   86
     1314   52
     1315   45
     1316   54
     1317   55
     1318   52
     1319   4E
     131A   20
     131B   2E
     131C   2E
     131D   2E
     131E   2E
     131F   2E
     1320   2E
     1321   2E
     1322   2E
     1323   2E
     1324   2E
     1325   2E
     1326   20
     1327   73
     1328   68
     1329   6F
     132A   6F
     132B   74
     132C   1F
     132D   06
     132E   14
     132F   86
     1330   53
     1331   2F
     1332   51
     1333   20
     1334   2E
     1335   2E
     1336   2E
     1337   2E
     1338   2E
     1339   2E
     133A   2E
     133B   20
     133C   73
     133D   6F
     133E   75
     133F   6E
     1340   64
     1341   20
     1342   6F
     1343   6E
     1344   2F
     1345   6F
     1346   66
     1347   66
     1348   1F
     1349   06
     134A   15
     134B   86
     134C   52
     134D   20
     134E   2E
     134F   2E
     1350   2E
     1351   2E
     1352   2E
     1353   2E
     1354   2E
     1355   2E
     1356   2E
     1357   2E
     1358   2E
     1359   2E
     135A   2E
     135B   2E
     135C   2E
     135D   2E
     135E   2E
     135F   20
     1360   72
     1361   65
     1362   73
     1363   74
     1364   00
.sps
     1365   1F
     1366   07
     1367   18
     1368   81
     1369   88
     136A   50
     136B   72
     136C   65
     136D   73
     136E   73
     136F   20
     1370   73
     1371   70
     1372   61
     1373   63
     1374   65
     1375   20
     1376   74
     1377   6F
     1378   20
     1379   70
     137A   6C
     137B   61
     137C   79
     137D   2E
     137E   00
.stmv
     137F   A0 0A      LDY #&0A
.stm4
     1381   B9 15 14   LDA &1415,Y
     1384   20 EE FF   JSR &FFEE
     1387   88         DEY
     1388   10 F7      BPL &1381
     138A   A9 80      LDA #&80
     138C   8D A7 13   STA &13A7
     138F   A9 00      LDA #&00
     1391   8D B3 13   STA &13B3
     1394   A9 04      LDA #&04
     1396   85 70      STA &70
.stm1
     1398   A9 1D      LDA #&1D
     139A   20 EE FF   JSR &FFEE
     139D   A9 00      LDA #&00
     139F   20 EE FF   JSR &FFEE
     13A2   20 EE FF   JSR &FFEE
     13A5   38         SEC
.stm2
     13A6   A9 00      LDA #&00
     13A8   E9 80      SBC #&80
     13AA   8D A7 13   STA &13A7
     13AD   08         PHP
     13AE   20 EE FF   JSR &FFEE
     13B1   28         PLP
.stm3
     13B2   A9 00      LDA #&00
     13B4   E9 00      SBC #&00
     13B6   8D B3 13   STA &13B3
     13B9   20 EE FF   JSR &FFEE
     13BC   20 03 1F   JSR &1F03
     13BF   C6 70      DEC &70
     13C1   D0 D5      BNE &1398
.stm5
     13C3   AD 5C 25   LDA &255C
     13C6   8D 08 22   STA &2208
     13C9   A9 00      LDA #&00
     13CB   8D 5C 25   STA &255C
     13CE   A9 88      LDA #&88
     13D0   8D 0B 22   STA &220B
     13D3   A9 26      LDA #&26
     13D5   8D 0C 22   STA &220C
.stm6
     13D8   18         CLC
     13D9   AD 0B 22   LDA &220B
     13DC   8D 59 25   STA &2559
     13DF   AD 0C 22   LDA &220C
     13E2   69 0A      ADC #&0A
     13E4   8D 0C 22   STA &220C
     13E7   8D 5A 25   STA &255A
     13EA   20 26 18   JSR &1826
     13ED   8E 68 1A   STX &1A68
     13F0   EE 5C 25   INC &255C
.stm8
     13F3   20 45 18   JSR &1845
     13F6   D0 FB      BNE &13F3
     13F8   20 26 18   JSR &1826
     13FB   20 0D 19   JSR &190D
     13FE   A9 3C      LDA #&3C
     1400   20 02 18   JSR &1802
     1403   AD 5C 25   LDA &255C
     1406   C9 04      CMP #&04
     1408   D0 CE      BNE &13D8
     140A   AD 08 22   LDA &2208
     140D   8D 5C 25   STA &255C
     1410   A9 1A      LDA #&1A
     1412   4C EE FF   JMP &FFEE
.stm10
     1415   10 03 FF 04
     1419   0F 02 0F 00
     141D   F0 18
     141F   1A
.gend
     1420   A9 00      LDA #&00
     1422   8D CE 11   STA &11CE
     1425   AD 60 2D   LDA &2D60
     1428   CD D0 11   CMP &11D0
     142B   90 19      BCC &1446
     142D   D0 08      BNE &1437
     142F   AD 5F 2D   LDA &2D5F
     1432   CD CF 11   CMP &11CF
     1435   90 0F      BCC &1446
.ge0
     1437   AD 5F 2D   LDA &2D5F
     143A   8D CF 11   STA &11CF
     143D   AD 60 2D   LDA &2D60
     1440   8D D0 11   STA &11D0
     1443   CE CE 11   DEC &11CE
.ge1
     1446   A9 16      LDA #&16
     1448   20 EE FF   JSR &FFEE
     144B   A9 07      LDA #&07
     144D   20 EE FF   JSR &FFEE
     1450   A2 DD      LDX #&DD
     1452   A0 11      LDY #&11
     1454   20 F2 14   JSR &14F2
     1457   A9 1F      LDA #&1F
     1459   20 EE FF   JSR &FFEE
     145C   A9 05      LDA #&05
     145E   20 EE FF   JSR &FFEE
     1461   A9 0B      LDA #&0B
     1463   20 EE FF   JSR &FFEE
     1466   AD D0 11   LDA &11D0
     1469   20 DE 14   JSR &14DE
     146C   AD CF 11   LDA &11CF
     146F   20 DE 14   JSR &14DE
     1472   A9 30      LDA #&30
     1474   20 EE FF   JSR &FFEE
     1477   A2 A9      LDX #&A9
     1479   A0 12      LDY #&12
     147B   20 F2 14   JSR &14F2
     147E   A2 C6      LDX #&C6
     1480   A0 12      LDY #&12
     1482   20 F2 14   JSR &14F2
     1485   A9 1F      LDA #&1F
     1487   20 EE FF   JSR &FFEE
     148A   A9 1A      LDA #&1A
     148C   20 EE FF   JSR &FFEE
     148F   A9 0B      LDA #&0B
     1491   20 EE FF   JSR &FFEE
     1494   AD CE 11   LDA &11CE
     1497   F0 12      BEQ &14AB
     1499   A9 15      LDA #&15
     149B   A2 00      LDX #&00
     149D   20 F4 FF   JSR &FFF4
     14A0   8A         TXA
     14A1   A2 C9      LDX #&C9
     14A3   A0 11      LDY #&11
     14A5   20 F1 FF   JSR &FFF1
     14A8   4C B8 14   JMP &14B8
.ge3
     14AB   A0 FF      LDY #&FF
.ge6
     14AD   C8         INY
     14AE   B9 BD 12   LDA &12BD,Y
     14B1   20 E3 FF   JSR &FFE3
     14B4   C9 20      CMP #&20
     14B6   10 F5      BPL &14AD
.ge7
     14B8   A0 02      LDY #&02
.ge5
     14BA   B9 D1 11   LDA &11D1,Y
     14BD   20 EE FF   JSR &FFEE
     14C0   C8         INY
     14C1   C0 0D      CPY #&0D
     14C3   D0 F5      BNE &14BA
     14C5   A9 64      LDA #&64
     14C7   20 02 18   JSR &1802
.space
     14CA   A9 1A      LDA #&1A
     14CC   20 EE FF   JSR &FFEE
     14CF   A2 65      LDX #&65
     14D1   A0 13      LDY #&13
     14D3   20 F2 14   JSR &14F2
.ge4
     14D6   A2 9D      LDX #&9D
     14D8   20 3C 19   JSR &193C
     14DB   D0 F9      BNE &14D6
     14DD   60         RTS
.whs
     14DE   48         PHA
     14DF   4A         LSR A
     14E0   4A         LSR A
     14E1   4A         LSR A
     14E2   4A         LSR A
     14E3   18         CLC
     14E4   69 30      ADC #&30
     14E6   20 E3 FF   JSR &FFE3
     14E9   68         PLA
     14EA   29 0F      AND #&0F
     14EC   18         CLC
     14ED   69 30      ADC #&30
     14EF   4C E3 FF   JMP &FFE3
.wrs
.write_string
     14F2   8E FC 14   STX &14FC
     14F5   8C FD 14   STY &14FD
     14F8   A0 FF      LDY #&FF
.wr1
     14FA   C8         INY
.modify_string_addr
     14FB   B9 A9 12   LDA &12A9,Y
     14FE   20 E3 FF   JSR &FFE3
     1501   C9 00      CMP #&00
     1503   D0 F5      BNE &14FA
     1505   60         RTS
.end_SS_01
.end_SS_01 =  &1506 
.game
     1506   A9 C8      LDA #&C8
     1508   A2 03      LDX #&03
     150A   A0 00      LDY #&00
     150C   20 F4 FF   JSR &FFF4
     150F   20 CA 14   JSR &14CA
     1512   A2 01      LDX #&01
     1514   A9 04      LDA #&04
     1516   A0 00      LDY #&00
     1518   20 F4 FF   JSR &FFF4
     151B   AD 0C 02   LDA &020C
     151E   8D 87 19   STA &1987
     1521   AD 0D 02   LDA &020D
     1524   8D 88 19   STA &1988
.newgame
     1527   20 20 14   JSR &1420
     152A   20 9A 15   JSR &159A
.GO
     152D   20 9E 1C   JSR &1C9E
     1530   20 2D 26   JSR &262D
     1533   20 BC 28   JSR &28BC
     1536   20 1E 28   JSR &281E
     1539   20 51 26   JSR &2651
     153C   20 C6 26   JSR &26C6
     153F   20 42 27   JSR &2742
     1542   20 83 2B   JSR &2B83
     1545   20 E6 2A   JSR &2AE6
     1548   20 F4 1A   JSR &1AF4
     154B   20 9E 19   JSR &199E
     154E   20 03 17   JSR &1703
     1551   20 45 19   JSR &1945
     1554   4C 2D 15   JMP &152D
     1557   28 63 29 ...
.level_de
     1572   1E
     1573   1E
     1574   1C
     1575   1C
     1576   1A
     1577   1A
     1578   18
     1579   18
.level_bullet_count
     157A   08
     157B   08
     157C   0C
     157D   10
     157E   10
     157F   10
     1580   10
     1581   10
.level_bullet_interval
     1582   06
     1583   08
     1584   0C
     1585   0C
     1586   0C
     1587   0C
     1588   0C
     1589   0C
.level_bomb_count
     158A   04
     158B   08
     158C   10
     158D   04
     158E   04
     158F   04
     1590   04
     1591   04
.level_inb
.level_bomb_interval
     1592   EC
     1593   E9
     1594   EA
     1595   E9
     1596   ED
     1597   ED
     1598   EC
     1599   EC
.start_game
     159A   A9 05      LDA #&05
     159C   85 70      STA &70
     159E   20 18 26   JSR &2618
     15A1   A9 49      LDA #&49
     15A3   20 0D 19   JSR &190D
     15A6   A9 16      LDA #&16
     15A8   20 EE FF   JSR &FFEE
     15AB   A9 02      LDA #&02
     15AD   20 EE FF   JSR &FFEE
     15B0   A9 00      LDA #&00
     15B2   8D DE 17   STA &17DE
     15B5   85 8E      STA &8E
     15B7   8D 5C 25   STA &255C
     15BA   8D 54 25   STA &2554
     15BD   8D 55 25   STA &2555
     15C0   8D 5F 2D   STA &2D5F
     15C3   8D 60 2D   STA &2D60
     15C6   85 88      STA &88
     15C8   85 53      STA &53
     15CA   85 54      STA &54
     15CC   85 55      STA &55
     15CE   85 56      STA &56
     15D0   18         CLC
     15D1   A9 03      LDA #&03
     15D3   8D 62 2D   STA &2D62
     15D6   A9 2A      LDA #&2A
     15D8   8D 63 2D   STA &2D63
     15DB   A9 02      LDA #&02
     15DD   85 71      STA &71
     15DF   A9 F0      LDA #&F0
     15E1   85 8A      STA &8A
     15E3   A9 2C      LDA #&2C
     15E5   85 8B      STA &8B
     15E7   A9 51      LDA #&51
     15E9   85 8C      STA &8C
     15EB   A9 00      LDA #&00
     15ED   85 8D      STA &8D
     15EF   A9 01      LDA #&01
     15F1   85 75      STA &75
     15F3   A9 2D      LDA #&2D
     15F5   85 76      STA &76
     15F7   A2 0F      LDX #&0F
     15F9   A0 07      LDY #&07
.co1
     15FB   20 00 26   JSR &2600
     15FE   CA         DEX
     15FF   E0 07      CPX #&07
     1601   D0 F8      BNE &15FB
     1603   86 7D      STX &7D
     1605   A9 03      LDA #&03
     1607   8D 56 25   STA &2556
     160A   A9 2F      LDA #&2F
     160C   85 89      STA &89
.bf
     160E   20 26 18   JSR &1826
     1611   8E 68 1A   STX &1A68
     1614   EE 5C 25   INC &255C
     1617   A0 5C      LDY #&5C
.b1
     1619   99 F0 2C   STA &2CF0,Y
     161C   88         DEY
     161D   D0 FA      BNE &1619
.b0
     161F   A9 0C      LDA #&0C
     1621   20 EE FF   JSR &FFEE
     1624   A9 9A      LDA #&9A
     1626   A2 14      LDX #&14
     1628   20 F4 FF   JSR &FFF4
     162B   20 00 1D   JSR &1D00
     162E   20 AF 1C   JSR &1CAF
     1631   20 03 1F   JSR &1F03
     1634   20 76 17   JSR &1776
     1637   A9 00      LDA #&00
     1639   8D 5B 25   STA &255B
     163C   8D 5E 2D   STA &2D5E
     163F   8D 65 2D   STA &2D65
     1642   AC 5C 25   LDY &255C
     1645   88         DEY
     1646   B9 72 15   LDA &1572,Y
     1649   8D 61 2D   STA &2D61
     164C   B9 92 15   LDA &1592,Y
     164F   8D A7 2D   STA &2DA7
     1652   A9 3F      LDA #&3F
     1654   85 73      STA &73
     1656   B9 8A 15   LDA &158A,Y
     1659   85 51      STA &51
     165B   B9 7A 15   LDA &157A,Y
     165E   8D F0 2C   STA &2CF0
     1661   A9 1E      LDA #&1E
     1663   8D 01 2D   STA &2D01
     1666   A9 88      LDA #&88
     1668   8D 59 25   STA &2559
     166B   A9 30      LDA #&30
     166D   8D 5A 25   STA &255A
     1670   A9 80      LDA #&80
     1672   8D 57 25   STA &2557
     1675   A9 32      LDA #&32
     1677   8D 58 25   STA &2558
     167A   AE 56 25   LDX &2556
.pmi
     167D   20 89 19   JSR &1989
     1680   18         CLC
     1681   AD 57 25   LDA &2557
     1684   69 18      ADC #&18
     1686   8D 57 25   STA &2557
     1689   CA         DEX
     168A   D0 F1      BNE &167D
     168C   A9 3A      LDA #&3A
     168E   85 81      STA &81
     1690   A9 81      LDA #&81
     1692   85 82      STA &82
     1694   A2 01      LDX #&01
     1696   A0 08      LDY #&08
.pp1
     1698   A9 81      LDA #&81
     169A   9D 01 2D   STA &2D01,X
     169D   E8         INX
     169E   98         TYA
     169F   18         CLC
     16A0   69 50      ADC #&50
     16A2   9D 01 2D   STA &2D01,X
     16A5   A8         TAY
     16A6   E8         INX
     16A7   A5 81      LDA &81
     16A9   69 00      ADC #&00
     16AB   9D 01 2D   STA &2D01,X
     16AE   85 81      STA &81
     16B0   18         CLC
     16B1   E8         INX
     16B2   A5 82      LDA &82
     16B4   69 0A      ADC #&0A
     16B6   85 82      STA &82
     16B8   9D 01 2D   STA &2D01,X
     16BB   E8         INX
     16BC   A9 D0      LDA #&D0
     16BE   9D 01 2D   STA &2D01,X
     16C1   E8         INX
     16C2   E0 1F      CPX #&1F
     16C4   30 D2      BMI &1698
     16C6   A0 00      LDY #&00
     16C8   B1 75      LDA (&75),Y
     16CA   85 70      STA &70
.slop
     16CC   C8         INY
     16CD   C8         INY
     16CE   B1 75      LDA (&75),Y
     16D0   85 78      STA &78
     16D2   C8         INY
     16D3   B1 75      LDA (&75),Y
     16D5   85 79      STA &79
     16D7   20 55 2A   JSR &2A55
     16DA   C8         INY
     16DB   C8         INY
     16DC   C4 70      CPY &70
     16DE   30 EC      BMI &16CC
     16E0   20 4B 1A   JSR &1A4B
.sgun
.player_gun_initialise
     16E3   A9 20      LDA #&20
     16E5   8D A6 2D   STA &2DA6
     16E8   A9 7E      LDA #&7E
     16EA   85 87      STA &87
     16EC   A9 90      LDA #&90
     16EE   85 86      STA &86
     16F0   A9 20      LDA #&20
     16F2   8D BB 26   STA &26BB
     16F5   A9 58      LDA #&58
     16F7   8D BA 26   STA &26BA
     16FA   20 B7 26   JSR &26B7
     16FD   A9 40      LDA #&40
     16FF   4C 0D 19   JMP &190D
.score_exit
     1702   60         RTS
.sor
     1703   AD 5E 2D   LDA &2D5E
     1706   F0 FA      BEQ &1702
     1708   F8         SED
     1709   29 02      AND #&02
     170B   F0 14      BEQ &1721
     170D   18         CLC
     170E   A9 15      LDA #&15
     1710   6D 5F 2D   ADC &2D5F
     1713   8D 5F 2D   STA &2D5F
     1716   AD 60 2D   LDA &2D60
     1719   69 00      ADC #&00
     171B   8D 60 2D   STA &2D60
     171E   20 73 1C   JSR &1C73
.s1
     1721   A9 40      LDA #&40
     1723   2C 5E 2D   BIT &2D5E
     1726   F0 1C      BEQ &1744
     1728   18         CLC
     1729   A9 01      LDA #&01
.wng
     172B   6D 5F 2D   ADC &2D5F
     172E   8D 5F 2D   STA &2D5F
     1731   AD 60 2D   LDA &2D60
     1734   69 00      ADC #&00
     1736   8D 60 2D   STA &2D60
     1739   D8         CLD
     173A   A2 C8      LDX #&C8
     173C   A0 2D      LDY #&2D
     173E   A9 07      LDA #&07
     1740   20 F1 FF   JSR &FFF1
     1743   F8         SED
.s4
     1744   A9 10      LDA #&10
     1746   2C 5E 2D   BIT &2D5E
     1749   F0 1A      BEQ &1765
     174B   18         CLC
     174C   A9 0A      LDA #&0A
.pig
     174E   6D 5F 2D   ADC &2D5F
     1751   8D 5F 2D   STA &2D5F
     1754   AD 60 2D   LDA &2D60
     1757   69 00      ADC #&00
     1759   8D 60 2D   STA &2D60
     175C   D8         CLD
     175D   20 45 18   JSR &1845
     1760   D0 03      BNE &1765
     1762   20 50 11   JSR &1150
.s2
     1765   D8         CLD
     1766   20 AF 17   JSR &17AF
     1769   AD 5E 2D   LDA &2D5E
     176C   10 03      BPL &1771
     176E   4C 12 18   JMP &1812
.s3
     1771   A9 00      LDA #&00
     1773   8D 5E 2D   STA &2D5E
.s7
.score_update_screen
     1776   A9 34      LDA #&34
     1778   85 81      STA &81
     177A   A9 B0      LDA #&B0
     177C   85 80      STA &80
     177E   A9 24      LDA #&24
     1780   85 83      STA &83
     1782   A9 F0      LDA #&F0
     1784   2D 60 2D   AND &2D60
     1787   20 3D 26   JSR &263D
     178A   A9 0F      LDA #&0F
     178C   2D 60 2D   AND &2D60
     178F   0A         ASL A
     1790   0A         ASL A
     1791   0A         ASL A
     1792   0A         ASL A
     1793   20 3D 26   JSR &263D
     1796   A9 F0      LDA #&F0
     1798   2D 5F 2D   AND &2D5F
     179B   20 3D 26   JSR &263D
     179E   A9 0F      LDA #&0F
     17A0   2D 5F 2D   AND &2D5F
     17A3   0A         ASL A
     17A4   0A         ASL A
     17A5   0A         ASL A
     17A6   0A         ASL A
     17A7   20 3D 26   JSR &263D
     17AA   A9 00      LDA #&00
     17AC   4C 3D 26   JMP &263D
.extra_player_check
.exg
     17AF   A9 01      LDA #&01
     17B1   2C DE 17   BIT &17DE
     17B4   D0 10      BNE &17C6
     17B6   AC 60 2D   LDY &2D60
     17B9   C0 05      CPY #&05
     17BB   30 20      BMI &17DD
     17BD   0D DE 17   ORA &17DE
     17C0   8D DE 17   STA &17DE
     17C3   20 DF 17   JSR &17DF
.exg1
     17C6   A9 02      LDA #&02
     17C8   2C DE 17   BIT &17DE
     17CB   D0 10      BNE &17DD
     17CD   AC 60 2D   LDY &2D60
     17D0   C0 10      CPY #&10
     17D2   30 09      BMI &17DD
     17D4   0D DE 17   ORA &17DE
     17D7   8D DE 17   STA &17DE
     17DA   4C DF 17   JMP &17DF
.exg2
     17DD   60         RTS
.exg3
     17DE   00
.exg4
     17DF   20 89 19   JSR &1989
     17E2   A9 DC      LDA #&DC
     17E4   8D FC 2D   STA &2DFC
     17E7   A2 F8      LDX #&F8
     17E9   A0 2D      LDY #&2D
     17EB   A9 07      LDA #&07
     17ED   20 F1 FF   JSR &FFF1
     17F0   EE 56 25   INC &2556
     17F3   18         CLC
     17F4   AD 57 25   LDA &2557
     17F7   69 18      ADC #&18
     17F9   8D 57 25   STA &2557
     17FC   90 03      BCC &1801
     17FE   EE 58 25   INC &2558
.exg5
     1801   60         RTS
.delay
     1802   8D 0A 22   STA &220A
     1805   98         TYA
     1806   48         PHA
.del1
     1807   20 2D 26   JSR &262D
     180A   CE 0A 22   DEC &220A
     180D   D0 F8      BNE &1807
     180F   68         PLA
     1810   A8         TAY
     1811   60         RTS
.next_level
.ef
     1812   A9 00      LDA #&00
     1814   8D 5E 2D   STA &2D5E
     1817   18         CLC
     1818   A5 88      LDA &88
     181A   69 40      ADC #&40
     181C   85 88      STA &88
     181E   A9 64      LDA #&64
     1820   20 02 18   JSR &1802
     1823   4C 0E 16   JMP &160E
.cht
     1826   A9 03      LDA #&03
     1828   2D 5C 25   AND &255C
     182B   AA         TAX
     182C   D0 03      BNE &1831
     182E   A9 33      LDA #&33
     1830   60         RTS
.ct1
     1831   CA         DEX
     1832   D0 04      BNE &1838
     1834   8A         TXA
     1835   A2 0D      LDX #&0D
     1837   60         RTS
.ct2
     1838   CA         DEX
     1839   D0 05      BNE &1840
     183B   A9 11      LDA #&11
     183D   A2 1A      LDX #&1A
     183F   60         RTS
.ct3
     1840   A9 22      LDA #&22
     1842   A2 26      LDX #&26
     1844   60         RTS
.nxno
     1845   EE 68 1A   INC &1A68
     1848   AC 68 1A   LDY &1A68
     184B   B9 68 1A   LDA &1A68,Y
     184E   85 70      STA &70
     1850   29 0E      AND #&0E
     1852   C9 08      CMP #&08
     1854   10 0A      BPL &1860
     1856   18         CLC
     1857   6D 59 25   ADC &2559
     185A   85 80      STA &80
     185C   A9 00      LDA #&00
     185E   F0 0A      BEQ &186A
.n1
     1860   18         CLC
     1861   6D 59 25   ADC &2559
     1864   69 78      ADC #&78
     1866   85 80      STA &80
     1868   A9 02      LDA #&02
.n2
     186A   6D 5A 25   ADC &255A
     186D   85 81      STA &81
     186F   A9 20      LDA #&20
     1871   85 83      STA &83
     1873   20 A5 18   JSR &18A5
     1876   18         CLC
     1877   AD 59 25   LDA &2559
     187A   69 20      ADC #&20
     187C   8D 59 25   STA &2559
     187F   90 03      BCC &1884
     1881   EE 5A 25   INC &255A
.n3
     1884   20 D9 18   JSR &18D9
     1887   18         CLC
     1888   A5 80      LDA &80
     188A   69 08      ADC #&08
     188C   85 80      STA &80
     188E   90 02      BCC &1892
     1890   E6 81      INC &81
.n4
     1892   18         CLC
     1893   A5 82      LDA &82
     1895   69 08      ADC #&08
     1897   85 82      STA &82
     1899   90 02      BCC &189D
     189B   E6 83      INC &83
.n5
     189D   20 D9 18   JSR &18D9
     18A0   C8         INY
     18A1   B9 68 1A   LDA &1A68,Y
     18A4   60         RTS
.chnot
     18A5   A9 80      LDA #&80
     18A7   24 70      BIT &70
     18A9   F0 05      BEQ &18B0
     18AB   A9 00      LDA #&00
     18AD   85 82      STA &82
     18AF   60         RTS
.c1
     18B0   4A         LSR A
     18B1   24 70      BIT &70
     18B3   F0 05      BEQ &18BA
     18B5   A9 10      LDA #&10
     18B7   85 82      STA &82
     18B9   60         RTS
.c2
     18BA   4A         LSR A
     18BB   24 70      BIT &70
     18BD   F0 05      BEQ &18C4
     18BF   A9 20      LDA #&20
     18C1   85 82      STA &82
     18C3   60         RTS
.c3
     18C4   4A         LSR A
     18C5   24 70      BIT &70
     18C7   F0 05      BEQ &18CE
     18C9   A9 30      LDA #&30
     18CB   85 82      STA &82
     18CD   60         RTS
.c4
     18CE   A9 01      LDA #&01
     18D0   24 70      BIT &70
     18D2   F0 04      BEQ &18D8
     18D4   A9 40      LDA #&40
     18D6   85 82      STA &82
.c5
     18D8   60         RTS
.pno
     18D9   98         TYA
     18DA   48         PHA
     18DB   A0 07      LDY #&07
     18DD   18         CLC
     18DE   A5 80      LDA &80
     18E0   69 78      ADC #&78
     18E2   85 84      STA &84
     18E4   A5 81      LDA &81
     18E6   69 02      ADC #&02
     18E8   85 85      STA &85
     18EA   A5 80      LDA &80
     18EC   29 07      AND #&07
     18EE   49 07      EOR #&07
     18F0   85 74      STA &74
     18F2   C9 07      CMP #&07
     18F4   10 0B      BPL &1901
.pnbot
     18F6   B1 82      LDA (&82),Y
     18F8   11 84      ORA (&84),Y
     18FA   91 84      STA (&84),Y
     18FC   88         DEY
     18FD   C4 74      CPY &74
     18FF   D0 F5      BNE &18F6
.pntop
     1901   B1 82      LDA (&82),Y
     1903   11 80      ORA (&80),Y
     1905   91 80      STA (&80),Y
     1907   88         DEY
     1908   10 F7      BPL &1901
     190A   68         PLA
     190B   A8         TAY
     190C   60         RTS
.playTune
.tune
     190D   85 70      STA &70
.t1
     190F   A4 70      LDY &70
     1911   B9 98 1A   LDA &1A98,Y
     1914   F0 1A      BEQ &1930
     1916   8D FC 2D   STA &2DFC
     1919   C8         INY
     191A   B9 98 1A   LDA &1A98,Y
     191D   8D FE 2D   STA &2DFE
     1920   A2 F8      LDX #&F8
     1922   A0 2D      LDY #&2D
     1924   A9 07      LDA #&07
     1926   20 F1 FF   JSR &FFF1
     1929   E6 70      INC &70
     192B   E6 70      INC &70
     192D   4C 0F 19   JMP &190F
.t3
     1930   A9 80      LDA #&80
     1932   A2 FA      LDX #&FA
     1934   20 F4 FF   JSR &FFF4
     1937   E0 0F      CPX #&0F
     1939   30 F5      BMI &1930
     193B   60         RTS
.keyboardScan
.key
     193C   A9 81      LDA #&81
     193E   A0 FF      LDY #&FF
     1940   20 F4 FF   JSR &FFF4
     1943   E8         INX
     1944   60         RTS
.check_key_press
.opt
.checkQkey
     1945   A2 EF      LDX #&EF
     1947   20 3C 19   JSR &193C
     194A   D0 0A      BNE &1956
     194C   A9 80      LDA #&80
     194E   8D 0C 02   STA &020C
     1951   A9 19      LDA #&19
     1953   8D 0D 02   STA &020D
.op1
.checkSkey
     1956   A2 AE      LDX #&AE
     1958   20 3C 19   JSR &193C
     195B   D0 0C      BNE &1969
     195D   AD 87 19   LDA &1987
     1960   8D 0C 02   STA &020C
     1963   AD 88 19   LDA &1988
     1966   8D 0D 02   STA &020D
.op2
.checkRkey
     1969   A2 CC      LDX #&CC
     196B   20 3C 19   JSR &193C
     196E   D0 0F      BNE &197F
.op3
     1970   A9 81      LDA #&81
     1972   A0 01      LDY #&01
     1974   A2 00      LDX #&00
     1976   20 F4 FF   JSR &FFF4
     1979   B0 F5      BCS &1970
     197B   E0 52      CPX #&52
     197D   F0 F1      BEQ &1970
.op5
.checkKeyComplete
     197F   60         RTS
.mute
     1980   C9 07      CMP #&07
     1982   F0 FB      BEQ &197F
.mu1
     1984   6C 87 19   JMP (&1987)
.soun
     1987   EB E7
.end_SS_03
.end_SS_03 =  &1989 
.mini
.plot_gun_life_indicator
     1989   A9 10      LDA #&10
     198B   85 82      STA &82
     198D   A9 21      LDA #&21
     198F   85 83      STA &83
     1991   AD 57 25   LDA &2557
     1994   85 80      STA &80
     1996   AD 58 25   LDA &2558
     1999   85 81      STA &81
     199B   4C 67 1C   JMP &1C67
.gun_hit_display
.h0
     199E   A9 20      LDA #&20
     19A0   2C 5E 2D   BIT &2D5E
     19A3   D0 06      BNE &19AB
     19A5   AD 55 25   LDA &2555
     19A8   D0 37      BNE &19E1
.hreturn
     19AA   60         RTS
.h1
     19AB   A2 00      LDX #&00
     19AD   A0 07      LDY #&07
     19AF   20 00 26   JSR &2600
     19B2   A9 07      LDA #&07
     19B4   A0 2D      LDY #&2D
     19B6   A2 E0      LDX #&E0
     19B8   20 F1 FF   JSR &FFF1
     19BB   A9 FF      LDA #&FF
     19BD   8D 55 25   STA &2555
     19C0   A9 60      LDA #&60
     19C2   8D 92 2A   STA &2A92
     19C5   8D 1E 28   STA &281E
     19C8   8D 51 26   STA &2651
     19CB   8D 42 27   STA &2742
     19CE   8D E6 2A   STA &2AE6
     19D1   20 B7 26   JSR &26B7
     19D4   A9 22      LDA #&22
     19D6   8D BB 26   STA &26BB
     19D9   A9 10      LDA #&10
     19DB   8D BA 26   STA &26BA
     19DE   4C B7 26   JMP &26B7
.h12
     19E1   CE 55 25   DEC &2555
     19E4   AD 55 25   LDA &2555
     19E7   C9 FE      CMP #&FE
     19E9   D0 07      BNE &19F2
     19EB   A2 00      LDX #&00
     19ED   A0 00      LDY #&00
     19EF   4C 00 26   JMP &2600
.h3
     19F2   C9 DC      CMP #&DC
     19F4   D0 0B      BNE &1A01
     19F6   20 B7 26   JSR &26B7
     19F9   A9 38      LDA #&38
     19FB   8D BA 26   STA &26BA
     19FE   4C B7 26   JMP &26B7
.h4
     1A01   C9 8C      CMP #&8C
     1A03   D0 0B      BNE &1A10
     1A05   20 B7 26   JSR &26B7
     1A08   A9 60      LDA #&60
     1A0A   8D BA 26   STA &26BA
     1A0D   4C B7 26   JMP &26B7
.h5
     1A10   C9 01      CMP #&01
     1A12   D0 96      BNE &19AA
     1A14   CE 56 25   DEC &2556
     1A17   D0 03      BNE &1A1C
     1A19   4C 26 11   JMP &1126
.h5a
     1A1C   20 B7 26   JSR &26B7
     1A1F   20 E3 16   JSR &16E3
     1A22   AC 01 2D   LDY &2D01
.h6
     1A25   B1 75      LDA (&75),Y
     1A27   C9 C0      CMP #&C0
     1A29   D0 19      BNE &1A44
     1A2B   88         DEY
     1A2C   B1 75      LDA (&75),Y
     1A2E   10 15      BPL &1A45
     1A30   49 80      EOR #&80
     1A32   91 75      STA (&75),Y
     1A34   88         DEY
     1A35   B1 75      LDA (&75),Y
     1A37   85 79      STA &79
     1A39   88         DEY
     1A3A   B1 75      LDA (&75),Y
     1A3C   85 78      STA &78
     1A3E   20 55 2A   JSR &2A55
     1A41   4C 47 1A   JMP &1A47
.h8
     1A44   88         DEY
.h9
     1A45   88         DEY
     1A46   88         DEY
.h10
     1A47   88         DEY
     1A48   88         DEY
     1A49   D0 DA      BNE &1A25
.h7
     1A4B   A9 EA      LDA #&EA
     1A4D   8D 92 2A   STA &2A92
     1A50   8D 42 27   STA &2742
     1A53   8D 1E 28   STA &281E
     1A56   8D 51 26   STA &2651
     1A59   8D E6 2A   STA &2AE6
     1A5C   38         SEC
     1A5D   AD 57 25   LDA &2557
     1A60   E9 18      SBC #&18
     1A62   8D 57 25   STA &2557
     1A65   4C 89 19   JMP &1989
.end_PIG_01
.end_PIG-01 =  &1A68 
.nl
     1A68   0D
     1A69   4A
     1A6A   18
     1A6B   8C
     1A6C   8E
     1A6D   1C
     1A6E   8A
     1A6F   84
     1A70   14
     1A71   82
     1A72   20
     1A73   44
     1A74   05
     1A75   00
     1A76   48
     1A77   18
     1A78   86
     1A79   84
     1A7A   14
     1A7B   86
     1A7C   84
     1A7D   14
     1A7E   88
     1A7F   2A
     1A80   4E
     1A81   05
     1A82   00
     1A83   4A
     1A84   18
     1A85   8C
     1A86   8E
     1A87   1C
     1A88   8A
     1A89   84
     1A8A   14
     1A8B   82
     1A8C   20
     1A8D   44
     1A8E   00
     1A8F   44
     1A90   42
     1A91   42
     1A92   44
     1A93   46
     1A94   24
     1A95   14
     1A96   05
     1A97   00
.tl
     1A98   65
     1A99   17
     1A9A   5D
     1A9B   05
     1A9C   59
     1A9D   0A
     1A9E   65
     1A9F   05
     1AA0   79
     1AA1   0A
     1AA2   81
     1AA3   05
     1AA4   89
     1AA5   1E
     1AA6   79
     1AA7   1E
     1AA8   00
     1AA9   6D
     1AAA   17
     1AAB   75
     1AAC   05
     1AAD   79
     1AAE   0A
     1AAF   75
     1AB0   05
     1AB1   79
     1AB2   0A
     1AB3   6D
     1AB4   05
     1AB5   65
     1AB6   1E
     1AB7   59
     1AB8   1E
     1AB9   00
     1ABA   65
     1ABB   17
     1ABC   5D
     1ABD   05
     1ABE   59
     1ABF   0A
     1AC0   65
     1AC1   05
     1AC2   79
     1AC3   0A
     1AC4   81
     1AC5   05
     1AC6   89
     1AC7   1E
     1AC8   79
     1AC9   0F
     1ACA   00
     1ACB   79
     1ACC   0F
     1ACD   81
     1ACE   0F
     1ACF   81
     1AD0   0F
     1AD1   79
     1AD2   0F
     1AD3   75
     1AD4   0F
     1AD5   79
     1AD6   1E
     1AD7   00
     1AD8   59
     1AD9   05
     1ADA   59
     1ADB   05
     1ADC   59
     1ADD   05
     1ADE   49
     1ADF   0F
     1AE0   00
     1AE1   41
     1AE2   05
     1AE3   35
     1AE4   0A
     1AE5   39
     1AE6   05
     1AE7   3D
     1AE8   05
     1AE9   41
     1AEA   05
     1AEB   65
     1AEC   0A
     1AED   65
     1AEE   0A
     1AEF   55
     1AF0   14
     1AF1   00
     1AF2   14
     1AF3   00
.pg
     1AF4   A9 23      LDA #&23
     1AF6   85 83      STA &83
     1AF8   AD 65 2D   LDA &2D65
     1AFB   D0 77      BNE &1B74
     1AFD   A9 42      LDA #&42
     1AFF   2C 5E 2D   BIT &2D5E
     1B02   F0 6F      BEQ &1B73
     1B04   A9 02      LDA #&02
     1B06   2C 54 25   BIT &2554
     1B09   F0 1F      BEQ &1B2A
.pig_init_right
     1B0B   A9 23      LDA #&23
     1B0D   85 83      STA &83
     1B0F   8D F5 1A   STA &1AF5
     1B12   A9 68      LDA #&68
     1B14   8D 64 2D   STA &2D64
     1B17   85 80      STA &80
     1B19   A9 00      LDA #&00
     1B1B   8D 15 1C   STA &1C15
     1B1E   A9 4C      LDA #&4C
     1B20   8D 67 2D   STA &2D67
     1B23   A9 4B      LDA #&4B
     1B25   8D 52 1B   STA &1B52
     1B28   D0 1B      BNE &1B45
.pgl
.pig_init_left
     1B2A   A9 22      LDA #&22
     1B2C   85 83      STA &83
     1B2E   8D F5 1A   STA &1AF5
     1B31   A9 00      LDA #&00
     1B33   8D 64 2D   STA &2D64
     1B36   85 80      STA &80
     1B38   8D 67 2D   STA &2D67
     1B3B   A9 4C      LDA #&4C
     1B3D   8D 15 1C   STA &1C15
     1B40   A9 49      LDA #&49
     1B42   8D 52 1B   STA &1B52
.b3
     1B45   A9 00      LDA #&00
     1B47   85 7C      STA &7C
     1B49   EE 54 25   INC &2554
     1B4C   A9 07      LDA #&07
     1B4E   25 7D      AND &7D
     1B50   AA         TAX
     1B51   A9 4B      LDA #&4B
     1B53   18         CLC
.b5
     1B54   69 05      ADC #&05
     1B56   A8         TAY
     1B57   A5 7C      LDA &7C
     1B59   69 10      ADC #&10
     1B5B   85 7C      STA &7C
     1B5D   98         TYA
     1B5E   CA         DEX
     1B5F   10 F3      BPL &1B54
     1B61   8D 65 2D   STA &2D65
     1B64   85 81      STA &81
     1B66   A2 02      LDX #&02
     1B68   8E 66 2D   STX &2D66
     1B6B   BD 56 2D   LDA &2D56,X
     1B6E   85 82      STA &82
     1B70   4C 67 1C   JMP &1C67
.ep
     1B73   60         RTS
.pgb0
     1B74   AD 64 2D   LDA &2D64
     1B77   85 80      STA &80
     1B79   AD 65 2D   LDA &2D65
     1B7C   85 81      STA &81
     1B7E   10 18      BPL &1B98
     1B80   CE 66 2D   DEC &2D66
     1B83   D0 EE      BNE &1B73
     1B85   49 80      EOR #&80
     1B87   85 81      STA &81
     1B89   A9 10      LDA #&10
     1B8B   0D 5E 2D   ORA &2D5E
     1B8E   8D 5E 2D   STA &2D5E
     1B91   A9 00      LDA #&00
     1B93   8D 65 2D   STA &2D65
     1B96   F0 4C      BEQ &1BE4
.pgb1
     1B98   AD 66 2D   LDA &2D66
     1B9B   29 7F      AND #&7F
     1B9D   AA         TAX
     1B9E   BD 56 2D   LDA &2D56,X
     1BA1   85 82      STA &82
     1BA3   A0 00      LDY #&00
     1BA5   B1 8A      LDA (&8A),Y
     1BA7   85 70      STA &70
.pgh
     1BA9   C8         INY
     1BAA   B1 8A      LDA (&8A),Y
     1BAC   38         SEC
     1BAD   E5 7C      SBC &7C
     1BAF   30 4C      BMI &1BFD
     1BB1   C9 07      CMP #&07
     1BB3   10 48      BPL &1BFD
     1BB5   C8         INY
     1BB6   C8         INY
     1BB7   B1 8A      LDA (&8A),Y
     1BB9   F0 44      BEQ &1BFF
     1BBB   C8         INY
     1BBC   B1 8A      LDA (&8A),Y
     1BBE   38         SEC
     1BBF   ED 67 2D   SBC &2D67
     1BC2   30 3C      BMI &1C00
     1BC4   C9 03      CMP #&03
     1BC6   10 38      BPL &1C00
     1BC8   A9 E8      LDA #&E8
     1BCA   91 8A      STA (&8A),Y
     1BCC   AA         TAX
     1BCD   A9 07      LDA #&07
     1BCF   A0 2D      LDY #&2D
     1BD1   20 F1 FF   JSR &FFF1
     1BD4   A9 10      LDA #&10
     1BD6   8D 66 2D   STA &2D66
     1BD9   A9 80      LDA #&80
     1BDB   0D 65 2D   ORA &2D65
     1BDE   8D 65 2D   STA &2D65
     1BE1   20 67 1C   JSR &1C67
.bx
     1BE4   A9 23      LDA #&23
     1BE6   85 83      STA &83
     1BE8   A9 70      LDA #&70
     1BEA   85 82      STA &82
     1BEC   4C 67 1C   JMP &1C67
.b9
     1BEF   A9 04      LDA #&04
     1BF1   0D 5E 2D   ORA &2D5E
     1BF4   8D 5E 2D   STA &2D5E
     1BF7   A9 00      LDA #&00
     1BF9   8D 65 2D   STA &2D65
.x
     1BFC   60         RTS
.pgnh
     1BFD   C8         INY
     1BFE   C8         INY
     1BFF   C8         INY
     1C00   C4 70      CPY &70
     1C02   30 A5      BMI &1BA9
     1C04   A9 80      LDA #&80
     1C06   4D 66 2D   EOR &2D66
     1C09   8D 66 2D   STA &2D66
     1C0C   30 EE      BMI &1BFC
     1C0E   20 67 1C   JSR &1C67
     1C11   AD 67 2D   LDA &2D67
.xps
     1C14   C9 00      CMP #&00
     1C16   F0 D7      BEQ &1BEF
     1C18   29 1F      AND #&1F
     1C1A   D0 09      BNE &1C25
     1C1C   A9 07      LDA #&07
     1C1E   A0 2D      LDY #&2D
     1C20   A2 F0      LDX #&F0
     1C22   20 F1 FF   JSR &FFF1
.b6
     1C25   AE 66 2D   LDX &2D66
     1C28   CA         DEX
     1C29   10 02      BPL &1C2D
     1C2B   A2 07      LDX #&07
.b7
     1C2D   8E 66 2D   STX &2D66
     1C30   BD 56 2D   LDA &2D56,X
     1C33   85 82      STA &82
     1C35   AD 15 1C   LDA &1C15
     1C38   F0 18      BEQ &1C52
     1C3A   EE 67 2D   INC &2D67
     1C3D   18         CLC
     1C3E   AD 64 2D   LDA &2D64
     1C41   69 08      ADC #&08
     1C43   8D 64 2D   STA &2D64
     1C46   85 80      STA &80
     1C48   90 1D      BCC &1C67
     1C4A   EE 65 2D   INC &2D65
     1C4D   E6 81      INC &81
     1C4F   4C 67 1C   JMP &1C67
.b10
     1C52   CE 67 2D   DEC &2D67
     1C55   38         SEC
     1C56   AD 64 2D   LDA &2D64
     1C59   E9 08      SBC #&08
     1C5B   8D 64 2D   STA &2D64
     1C5E   85 80      STA &80
     1C60   B0 05      BCS &1C67
     1C62   CE 65 2D   DEC &2D65
     1C65   C6 81      DEC &81
.plot_pigeon_sprite
.pb
     1C67   A0 17      LDY #&17
.b8
     1C69   B1 82      LDA (&82),Y
     1C6B   51 80      EOR (&80),Y
     1C6D   91 80      STA (&80),Y
     1C6F   88         DEY
     1C70   10 F7      BPL &1C69
     1C72   60         RTS
.ddu1
.plane_hit
     1C73   AC 5B 25   LDY &255B
     1C76   C0 09      CPY #&09
     1C78   10 23      BPL &1C9D
     1C7A   B9 40 25   LDA &2540,Y
     1C7D   85 80      STA &80
     1C7F   C8         INY
     1C80   B9 40 25   LDA &2540,Y
     1C83   85 81      STA &81
     1C85   C8         INY
     1C86   8C 5B 25   STY &255B
     1C89   A0 04      LDY #&04
     1C8B   A9 55      LDA #&55
.ddu2
     1C8D   91 80      STA (&80),Y
     1C8F   88         DEY
     1C90   10 FB      BPL &1C8D
     1C92   A0 09      LDY #&09
     1C94   0A         ASL A
     1C95   91 80      STA (&80),Y
     1C97   A0 01      LDY #&01
     1C99   A9 FF      LDA #&FF
     1C9B   91 80      STA (&80),Y
.ddu3
     1C9D   60         RTS
.random1
     1C9E   A5 7D      LDA &7D
     1CA0   29 48      AND #&48
     1CA2   69 38      ADC #&38
     1CA4   0A         ASL A
     1CA5   0A         ASL A
     1CA6   26 7F      ROL &7F
     1CA8   26 7E      ROL &7E
     1CAA   26 7D      ROL &7D
     1CAC   A5 7D      LDA &7D
     1CAE   60         RTS
.draw_backgnd_art
     1CAF   A0 00      LDY #&00
.draw_line_art_loop
     1CB1   B9 96 1D   LDA &1D96,Y
     1CB4   20 EE FF   JSR &FFEE
     1CB7   C8         INY
     1CB8   D0 F7      BNE &1CB1
     1CBA   A5 88      LDA &88
     1CBC   85 82      STA &82
     1CBE   A5 89      LDA &89
     1CC0   85 83      STA &83
     1CC2   A9 1F      LDA #&1F
     1CC4   8D 6B 2A   STA &2A6B
     1CC7   A9 C0      LDA #&C0
     1CC9   85 70      STA &70
     1CCB   A0 00      LDY #&00
.draw_backgnd_sprite_loop
     1CCD   C8         INY
     1CCE   BE A9 1E   LDX &1EA9,Y
     1CD1   C8         INY
     1CD2   B9 A9 1E   LDA &1EA9,Y
     1CD5   24 70      BIT &70
     1CD7   D0 0C      BNE &1CE5
     1CD9   85 89      STA &89
     1CDB   86 88      STX &88
     1CDD   C8         INY
     1CDE   BE A9 1E   LDX &1EA9,Y
     1CE1   C8         INY
     1CE2   B9 A9 1E   LDA &1EA9,Y
.skip1
     1CE5   86 78      STX &78
     1CE7   85 79      STA &79
     1CE9   20 55 2A   JSR &2A55
     1CEC   CC A9 1E   CPY &1EA9
     1CEF   30 DC      BMI &1CCD
     1CF1   A9 3F      LDA #&3F
     1CF3   8D 6B 2A   STA &2A6B
     1CF6   A5 82      LDA &82
     1CF8   85 88      STA &88
     1CFA   A5 83      LDA &83
     1CFC   85 89      STA &89
     1CFE   60         RTS
     1CFF   00         BRK
.plot_clouds
     1D00   A9 44      LDA #&44
     1D02   85 79      STA &79
     1D04   A9 FF      LDA #&FF
     1D06   A2 05      LDX #&05
.mid_outer_loop
     1D08   A0 00      LDY #&00
     1D0A   84 78      STY &78
.mid_inner_loop
     1D0C   91 78      STA (&78),Y
     1D0E   C8         INY
     1D0F   D0 FB      BNE &1D0C
     1D11   E6 79      INC &79
     1D13   CA         DEX
     1D14   D0 F2      BNE &1D08
     1D16   A0 1F      LDY #&1F
.cloud_loop2
     1D18   B9 E0 2E   LDA &2EE0,Y
     1D1B   91 78      STA (&78),Y
     1D1D   88         DEY
     1D1E   10 F8      BPL &1D18
     1D20   A9 2E      LDA #&2E
     1D22   85 7B      STA &7B
     1D24   A9 20      LDA #&20
     1D26   85 78      STA &78
     1D28   A2 08      LDX #&08
.next_cloud_sprite
     1D2A   BD 4D 2D   LDA &2D4D,X
     1D2D   85 7A      STA &7A
     1D2F   A0 3F      LDY #&3F
.next_cloud_byte
     1D31   B1 7A      LDA (&7A),Y
     1D33   91 78      STA (&78),Y
     1D35   88         DEY
     1D36   10 F9      BPL &1D31
     1D38   18         CLC
     1D39   A5 78      LDA &78
     1D3B   69 40      ADC #&40
     1D3D   85 78      STA &78
     1D3F   90 02      BCC &1D43
     1D41   E6 79      INC &79
.skip1
     1D43   CA         DEX
     1D44   10 E4      BPL &1D2A
     1D46   A0 1F      LDY #&1F
.loop32
     1D48   B9 C0 2E   LDA &2EC0,Y
     1D4B   91 78      STA (&78),Y
     1D4D   88         DEY
     1D4E   10 F8      BPL &1D48
.mirror_loop_1
     1D50   A0 00      LDY #&00
.mirror_loop_2
     1D52   A2 07      LDX #&07
.mirror_loop_3
.modify_lower_dest_addr
     1D54   B9 00 49   LDA &4900,Y
.modify_upper_dest_addr
     1D57   9D 80 41   STA &4180,X
     1D5A   C8         INY
     1D5B   CA         DEX
     1D5C   10 F6      BPL &1D54
     1D5E   18         CLC
     1D5F   AD 58 1D   LDA &1D58
     1D62   69 08      ADC #&08
     1D64   8D 58 1D   STA &1D58
     1D67   90 03      BCC &1D6C
     1D69   EE 59 1D   INC &1D59
.skip2
     1D6C   C0 80      CPY #&80
     1D6E   D0 E2      BNE &1D52
     1D70   AD 55 1D   LDA &1D55
     1D73   49 80      EOR #&80
     1D75   8D 55 1D   STA &1D55
     1D78   30 03      BMI &1D7D
     1D7A   EE 56 1D   INC &1D56
.skip3
     1D7D   A9 44      LDA #&44
     1D7F   CD 59 1D   CMP &1D59
     1D82   D0 CC      BNE &1D50
     1D84   8C 58 1D   STY &1D58
     1D87   E8         INX
     1D88   8E 55 1D   STX &1D55
     1D8B   A9 49      LDA #&49
     1D8D   8D 56 1D   STA &1D56
     1D90   A9 41      LDA #&41
     1D92   8D 59 1D   STA &1D59
     1D95   60         RTS
.scenery_line_art
     1D96   12
     1D97   00
     1D98   06
     1D99   19
     1D9A   04
     1D9B   00
     1D9C   00
     1D9D   13
     1D9E   00
     1D9F   19
     1DA0   05
     1DA1   04
     1DA2   01
     1DA3   17
     1DA4   00
     1DA5   19
     1DA6   05
     1DA7   2C
     1DA8   01
     1DA9   3C
     1DAA   00
     1DAB   19
     1DAC   04
     1DAD   7E
     1DAE   04
     1DAF   3E
     1DB0   00
     1DB1   19
     1DB2   05
     1DB3   1A
     1DB4   04
     1DB5   20
     1DB6   00
     1DB7   19
     1DB8   05
     1DB9   84
     1DBA   03
     1DBB   20
     1DBC   00
     1DBD   19
     1DBE   05
     1DBF   52
     1DC0   03
     1DC1   28
     1DC2   00
     1DC3   19
     1DC4   05
     1DC5   20
     1DC6   03
     1DC7   38
     1DC8   00
     1DC9   19
     1DCA   05
     1DCB   16
     1DCC   03
     1DCD   46
     1DCE   00
     1DCF   19
     1DD0   05
     1DD1   16
     1DD2   03
     1DD3   52
     1DD4   00
     1DD5   19
     1DD6   05
     1DD7   20
     1DD8   03
     1DD9   60
     1DDA   00
     1DDB   19
     1DDC   05
     1DDD   52
     1DDE   03
     1DDF   74
     1DE0   00
     1DE1   19
     1DE2   05
     1DE3   BB
     1DE4   03
     1DE5   7C
     1DE6   00
     1DE7   19
     1DE8   04
     1DE9   7E
     1DEA   04
     1DEB   42
     1DEC   00
     1DED   19
     1DEE   15
     1DEF   1A
     1DF0   04
     1DF1   24
     1DF2   00
     1DF3   19
     1DF4   15
     1DF5   84
     1DF6   03
     1DF7   24
     1DF8   00
     1DF9   19
     1DFA   15
     1DFB   52
     1DFC   03
     1DFD   2C
     1DFE   00
     1DFF   19
     1E00   15
     1E01   20
     1E02   03
     1E03   3C
     1E04   00
     1E05   19
     1E06   04
     1E07   20
     1E08   03
     1E09   64
     1E0A   00
     1E0B   19
     1E0C   15
     1E0D   52
     1E0E   03
     1E0F   78
     1E10   00
     1E11   19
     1E12   15
     1E13   BB
     1E14   03
     1E15   80
     1E16   00
     1E17   12
     1E18   00
     1E19   02
     1E1A   19
     1E1B   04
     1E1C   00
     1E1D   05
     1E1E   17
     1E1F   00
     1E20   19
     1E21   05
     1E22   C4
     1E23   04
     1E24   28
     1E25   00
     1E26   19
     1E27   04
     1E28   E2
     1E29   04
     1E2A   1C
     1E2B   00
     1E2C   19
     1E2D   05
     1E2E   DE
     1E2F   03
     1E30   38
     1E31   00
     1E32   19
     1E33   04
     1E34   80
     1E35   02
     1E36   82
     1E37   00
     1E38   19
     1E39   05
     1E3A   48
     1E3B   03
     1E3C   0E
     1E3D   01
     1E3E   19
     1E3F   05
     1E40   AC
     1E41   03
     1E42   45
     1E43   01
     1E44   19
     1E45   05
     1E46   1A
     1E47   04
     1E48   4A
     1E49   01
     1E4A   19
     1E4B   05
     1E4C   00
     1E4D   05
     1E4E   AE
     1E4F   01
     1E50   19
     1E51   04
     1E52   2C
     1E53   01
     1E54   C8
     1E55   00
     1E56   19
     1E57   05
     1E58   8A
     1E59   02
     1E5A   40
     1E5B   01
     1E5C   19
     1E5D   05
     1E5E   3E
     1E5F   03
     1E60   04
     1E61   01
     1E62   19
     1E63   04
     1E64   F4
     1E65   01
     1E66   64
     1E67   00
     1E68   19
     1E69   05
     1E6A   FA
     1E6B   00
     1E6C   DC
     1E6D   00
     1E6E   19
     1E6F   05
     1E70   8C
     1E71   00
     1E72   54
     1E73   01
     1E74   19
     1E75   05
     1E76   00
     1E77   00
     1E78   68
     1E79   01
     1E7A   12
     1E7B   00
     1E7C   04
     1E7D   19
     1E7E   04
     1E7F   9E
     1E80   02
     1E81   96
     1E82   00
     1E83   19
     1E84   15
     1E85   F4
     1E86   01
     1E87   78
     1E88   00
     1E89   19
     1E8A   05
     1E8B   58
     1E8C   02
     1E8D   64
     1E8E   00
     1E8F   19
     1E90   05
     1E91   90
     1E92   01
     1E93   5A
     1E94   00
     1E95   00
     1E96   7D
     1E97   2D
     1E98   20
     1E99   13
     1E9A   28
     1E9B   A9
     1E9C   09
     1E9D   85
     1E9E   83
     1E9F   A9
     1EA0   F0
     1EA1   85
     1EA2   82
     1EA3   4C
     1EA4   13
     1EA5   28
     1EA6   A9
     1EA7   00
     1EA8   8D
.backgnd_sprite_addr_table
     1EA9   58
     1EAA   A0 24
     1EAC   93 73
     1EAE   49 71
     1EB0   60 76
     1EB2   99 75
     1EB4   44 73
     1EB6   C9 78
     1EB8   B4 76
     1EBA   C0 24
     1EBC   13 76
     1EBE   93 78
     1EC0   C9 73
     1EC2   49 76
     1EC4   E0 78
     1EC6   44 78
     1EC8   C4 75
     1ECA   E0 24
     1ECC   13 7B
     1ECE   4A 7B
     1ED0   60 7B
     1ED2   C4 7A
     1ED4   00 25
     1ED6   B0 78
     1ED8   20 78
     1EDA   5C 78
     1EDC   20 25
     1EDE   00 78
     1EE0   88 76
     1EE2   60 25
     1EE4   60 70
     1EE6   80 25
     1EE8   E0 72
     1EEA   60 75
     1EEC   E0 77
     1EEE   80 7A
     1EF0   A0 7A
     1EF2   DC 7A
     1EF4   A0 25
     1EF6   60 7A
     1EF8   30 7B
     1EFA   C0 25
     1EFC   08 79
     1EFE   E0 25
     1F00   28 79
     1F02   00
.end_PIG_02
.end_PIG-02 =  &1F03 
.draw_stave
.stv
     1F03   A0 00      LDY #&00
.stave_loop1
     1F05   B9 23 1F   LDA &1F23,Y
     1F08   20 EE FF   JSR &FFEE
     1F0B   C8         INY
     1F0C   C0 09      CPY #&09
     1F0E   D0 F5      BNE &1F05
     1F10   A2 05      LDX #&05
.stave_loop2
     1F12   A0 09      LDY #&09
.stave_loop3
     1F14   B9 23 1F   LDA &1F23,Y
     1F17   20 EE FF   JSR &FFEE
     1F1A   C8         INY
     1F1B   C0 15      CPY #&15
     1F1D   D0 F5      BNE &1F14
     1F1F   CA         DEX
     1F20   D0 F0      BNE &1F12
     1F22   60         RTS
.stave_data
.sl
     1F23   12
     1F24   00
     1F25   04
     1F26   19
     1F27   04
     1F28   00
     1F29   01
     1F2A   EC
     1F2B   03
     1F2C   19
     1F2D   01
     1F2E   00
     1F2F   03
     1F30   00
     1F31   00
     1F32   19
     1F33   00
     1F34   00
     1F35   FD
     1F36   F0
     1F37   FF
.end_GG_01
.end_GG-01 =  &1F38 
.end_G_Note
.end_G_Note =  &2080 
.end_X
.end_X =  &2600 
.D%
.def_log_colour
     2600   A9 13      LDA #&13
     2602   20 EE FF   JSR &FFEE
     2605   8A         TXA
     2606   20 EE FF   JSR &FFEE
     2609   98         TYA
     260A   20 EE FF   JSR &FFEE
     260D   A9 00      LDA #&00
     260F   20 EE FF   JSR &FFEE
     2612   20 EE FF   JSR &FFEE
     2615   4C EE FF   JMP &FFEE
.E%
.def_envelopes
     2618   A5 70      LDA &70
     261A   0A         ASL A
     261B   0A         ASL A
     261C   0A         ASL A
     261D   0A         ASL A
     261E   69 68      ADC #&68
     2620   AA         TAX
     2621   A9 08      LDA #&08
     2623   A0 2D      LDY #&2D
     2625   20 F1 FF   JSR &FFF1
     2628   C6 70      DEC &70
     262A   D0 EC      BNE &2618
     262C   60         RTS
.scr
     262D   A9 02      LDA #&02
     262F   8D 4E FE   STA &FE4E
.scri
     2632   2C 4D FE   BIT &FE4D
     2635   F0 FB      BEQ &2632
     2637   A9 82      LDA #&82
     2639   8D 4E FE   STA &FE4E
     263C   60         RTS
.plot_score
     263D   85 82      STA &82
     263F   A0 0F      LDY #&0F
.loop
     2641   B1 82      LDA (&82),Y
     2643   91 80      STA (&80),Y
     2645   88         DEY
     2646   10 F9      BPL &2641
     2648   18         CLC
     2649   A5 80      LDA &80
     264B   69 10      ADC #&10
     264D   85 80      STA &80
     264F   60         RTS
     2650   00
.mg
.move_gun
     2651   EA         NOP
     2652   20 B7 26   JSR &26B7
     2655   A9 81      LDA #&81
     2657   A0 FF      LDY #&FF
     2659   A2 BD      LDX #&BD
     265B   20 F4 FF   JSR &FFF4
     265E   E8         INX
     265F   F0 21      BEQ &2682
     2661   88         DEY
     2662   A2 9E      LDX #&9E
     2664   20 F4 FF   JSR &FFF4
     2667   E8         INX
     2668   D0 2E      BNE &2698
.l
     266A   AE A6 2D   LDX &2DA6
     266D   E0 01      CPX #&01
     266F   F0 27      BEQ &2698
     2671   CA         DEX
     2672   8E A6 2D   STX &2DA6
     2675   38         SEC
     2676   A5 86      LDA &86
     2678   E9 08      SBC #&08
     267A   85 86      STA &86
     267C   B0 1A      BCS &2698
     267E   C6 87      DEC &87
     2680   90 16      BCC &2698
.r
     2682   AE A6 2D   LDX &2DA6
     2685   E0 47      CPX #&47
     2687   F0 0F      BEQ &2698
     2689   E8         INX
     268A   8E A6 2D   STX &2DA6
     268D   18         CLC
     268E   A5 86      LDA &86
     2690   69 08      ADC #&08
     2692   85 86      STA &86
     2694   90 02      BCC &2698
     2696   E6 87      INC &87
.gd
     2698   38         SEC
     2699   A9 00      LDA #&00
     269B   85 78      STA &78
     269D   A0 24      LDY #&24
.ch
     269F   B1 86      LDA (&86),Y
     26A1   F0 02      BEQ &26A5
     26A3   85 78      STA &78
.cop
     26A5   98         TYA
     26A6   E9 08      SBC #&08
     26A8   A8         TAY
     26A9   10 F4      BPL &269F
     26AB   A5 78      LDA &78
     26AD   F0 08      BEQ &26B7
     26AF   AD 5E 2D   LDA &2D5E
     26B2   09 20      ORA #&20
     26B4   8D 5E 2D   STA &2D5E
.gun
.plot_gun_sprite
.modify_gun_length
     26B7   A0 27      LDY #&27
.gop
     26B9   B9 60 22   LDA &2260,Y
     26BC   F0 04      BEQ &26C2
     26BE   51 86      EOR (&86),Y
     26C0   91 86      STA (&86),Y
.gz
     26C2   88         DEY
     26C3   10 F4      BPL &26B9
     26C5   60         RTS
.mb
.move_bullets
     26C6   A0 00      LDY #&00
     26C8   B1 8A      LDA (&8A),Y
     26CA   85 70      STA &70
     26CC   AD 86 2D   LDA &2D86
     26CF   85 82      STA &82
     26D1   AD 87 2D   LDA &2D87
     26D4   85 83      STA &83
.ntbu
     26D6   C8         INY
     26D7   B1 8A      LDA (&8A),Y
     26D9   85 77      STA &77
     26DB   C8         INY
     26DC   B1 8A      LDA (&8A),Y
     26DE   85 80      STA &80
     26E0   C8         INY
     26E1   B1 8A      LDA (&8A),Y
     26E3   85 81      STA &81
     26E5   D0 0A      BNE &26F1
     26E7   C8         INY
     26E8   A9 FE      LDA #&FE
     26EA   25 71      AND &71
     26EC   85 71      STA &71
     26EE   4C 2B 27   JMP &272B
.bu1
     26F1   C8         INY
     26F2   20 B5 27   JSR &27B5
     26F5   B1 8A      LDA (&8A),Y
     26F7   10 06      BPL &26FF
.bu7
     26F9   A9 00      LDA #&00
     26FB   85 81      STA &81
     26FD   F0 2C      BEQ &272B
.bu2
     26FF   38         SEC
     2700   A9 07      LDA #&07
     2702   25 80      AND &80
     2704   C9 05      CMP #&05
     2706   30 09      BMI &2711
     2708   A5 80      LDA &80
     270A   E9 05      SBC #&05
     270C   85 80      STA &80
     270E   4C 1D 27   JMP &271D
.bu3
     2711   A5 80      LDA &80
     2713   E9 7D      SBC #&7D
     2715   85 80      STA &80
     2717   A5 81      LDA &81
     2719   E9 02      SBC #&02
     271B   85 81      STA &81
.bu4
     271D   38         SEC
     271E   A5 77      LDA &77
     2720   E9 05      SBC #&05
     2722   85 77      STA &77
     2724   C9 02      CMP #&02
     2726   F0 D1      BEQ &26F9
.bu5
     2728   20 B5 27   JSR &27B5
.nxbu
     272B   88         DEY
     272C   88         DEY
     272D   88         DEY
     272E   A5 77      LDA &77
     2730   91 8A      STA (&8A),Y
     2732   C8         INY
     2733   A5 80      LDA &80
     2735   91 8A      STA (&8A),Y
     2737   C8         INY
     2738   A5 81      LDA &81
     273A   91 8A      STA (&8A),Y
     273C   C8         INY
     273D   C4 70      CPY &70
     273F   90 95      BCC &26D6
     2741   60         RTS
.new_bullet
.nb
     2742   EA         NOP
     2743   A9 01      LDA #&01
     2745   24 71      BIT &71
     2747   D0 11      BNE &275A
     2749   A9 81      LDA #&81
     274B   A0 FF      LDY #&FF
     274D   A2 B6      LDX #&B6
     274F   20 F4 FF   JSR &FFF4
     2752   E8         INX
     2753   F0 07      BEQ &275C
     2755   A9 00      LDA #&00
     2757   8D 5B 27   STA &275B
.nwb0
     275A   60         RTS
.fp0
     275B   00
.nwb1
     275C   AD 5B 27   LDA &275B
     275F   F0 04      BEQ &2765
     2761   CE 5B 27   DEC &275B
     2764   60         RTS
.fp1
     2765   A9 12      LDA #&12
     2767   8D 5B 27   STA &275B
     276A   A0 FF      LDY #&FF
.nwb2
     276C   C8         INY
     276D   C8         INY
     276E   C8         INY
     276F   C8         INY
     2770   CC F0 2C   CPY &2CF0
     2773   B0 E5      BCS &275A
     2775   B1 8A      LDA (&8A),Y
     2777   D0 F3      BNE &276C
     2779   88         DEY
     277A   88         DEY
     277B   A9 9D      LDA #&9D
     277D   91 8A      STA (&8A),Y
     277F   C8         INY
     2780   38         SEC
     2781   A5 86      LDA &86
     2783   E9 6E      SBC #&6E
     2785   91 8A      STA (&8A),Y
     2787   85 80      STA &80
     2789   C8         INY
     278A   A5 87      LDA &87
     278C   E9 02      SBC #&02
     278E   91 8A      STA (&8A),Y
     2790   85 81      STA &81
     2792   C8         INY
     2793   AD A6 2D   LDA &2DA6
     2796   18         CLC
     2797   69 03      ADC #&03
     2799   91 8A      STA (&8A),Y
     279B   20 B5 27   JSR &27B5
     279E   A9 03      LDA #&03
     27A0   05 71      ORA &71
     27A2   85 71      STA &71
     27A4   A9 01      LDA #&01
     27A6   0D 5E 2D   ORA &2D5E
     27A9   8D 5E 2D   STA &2D5E
     27AC   A2 D0      LDX #&D0
     27AE   A0 2D      LDY #&2D
     27B0   A9 07      LDA #&07
     27B2   4C F1 FF   JMP &FFF1
.s5
.plot_bullet_sprite
     27B5   98         TYA
     27B6   48         PHA
     27B7   A0 05      LDY #&05
     27B9   18         CLC
     27BA   A5 80      LDA &80
     27BC   69 78      ADC #&78
     27BE   85 84      STA &84
     27C0   A5 81      LDA &81
     27C2   69 02      ADC #&02
     27C4   85 85      STA &85
     27C6   A5 80      LDA &80
     27C8   29 07      AND #&07
     27CA   49 07      EOR #&07
     27CC   85 74      STA &74
     27CE   C9 05      CMP #&05
     27D0   10 0B      BPL &27DD
.bot
     27D2   B1 82      LDA (&82),Y
     27D4   51 84      EOR (&84),Y
     27D6   91 84      STA (&84),Y
     27D8   88         DEY
     27D9   C4 74      CPY &74
     27DB   D0 F5      BNE &27D2
.top
     27DD   B1 82      LDA (&82),Y
     27DF   51 80      EOR (&80),Y
     27E1   91 80      STA (&80),Y
     27E3   88         DEY
     27E4   10 F7      BPL &27DD
     27E6   68         PLA
     27E7   A8         TAY
     27E8   60         RTS
.plot_fast_bullet_sprite
     27E9   98         TYA
     27EA   48         PHA
     27EB   A0 05      LDY #&05
     27ED   18         CLC
     27EE   A5 80      LDA &80
     27F0   69 78      ADC #&78
     27F2   85 84      STA &84
     27F4   A5 81      LDA &81
     27F6   69 02      ADC #&02
     27F8   85 85      STA &85
     27FA   A5 80      LDA &80
     27FC   29 07      AND #&07
     27FE   49 07      EOR #&07
     2800   8D 0F 28   STA &280F
     2803   C9 05      CMP #&05
     2805   10 0B      BPL &2812
.bot
     2807   B1 84      LDA (&84),Y
     2809   49 2A      EOR #&2A
     280B   91 84      STA (&84),Y
     280D   88         DEY
.comp_mod
     280E   C0 FF      CPY #&FF
     2810   D0 F5      BNE &2807
.top
     2812   B1 80      LDA (&80),Y
     2814   49 2A      EOR #&2A
     2816   91 80      STA (&80),Y
     2818   88         DEY
     2819   10 F7      BPL &2812
     281B   68         PLA
     281C   A8         TAY
     281D   60         RTS
.np
     281E   EA         NOP
     281F   A5 72      LDA &72
     2821   C9 01      CMP #&01
     2823   10 3A      BPL &285F
     2825   CE 62 2D   DEC &2D62
     2828   D0 35      BNE &285F
     282A   AD 63 2D   LDA &2D63
     282D   8D 62 2D   STA &2D62
     2830   A5 70      LDA &70
     2832   20 81 2C   JSR &2C81
     2835   A8         TAY
     2836   38         SEC
.np2
     2837   E9 05      SBC #&05
     2839   10 FC      BPL &2837
     283B   AA         TAX
.np3
     283C   C8         INY
     283D   E8         INX
     283E   D0 FC      BNE &283C
     2840   88         DEY
     2841   B1 75      LDA (&75),Y
     2843   30 16      BMI &285B
     2845   A4 70      LDY &70
.se
     2847   88         DEY
     2848   B1 75      LDA (&75),Y
     284A   30 0F      BMI &285B
     284C   88         DEY
     284D   88         DEY
     284E   88         DEY
     284F   88         DEY
     2850   D0 F5      BNE &2847
     2852   A9 80      LDA #&80
     2854   0D 5E 2D   ORA &2D5E
     2857   8D 5E 2D   STA &2D5E
     285A   60         RTS
.fy
     285B   49 80      EOR #&80
     285D   91 75      STA (&75),Y
.nw
     285F   60         RTS
.pxp
     2860   A5 77      LDA &77
     2862   F0 55      BEQ &28B9
     2864   A2 21      LDX #&21
     2866   86 89      STX &89
     2868   A5 88      LDA &88
     286A   48         PHA
     286B   A5 77      LDA &77
     286D   C9 15      CMP #&15
     286F   D0 0A      BNE &287B
     2871   A9 40      LDA #&40
     2873   85 88      STA &88
     2875   20 55 2A   JSR &2A55
     2878   4C B0 28   JMP &28B0
.px1
     287B   C9 0C      CMP #&0C
     287D   D0 11      BNE &2890
     287F   A9 40      LDA #&40
     2881   85 88      STA &88
     2883   20 55 2A   JSR &2A55
     2886   A9 80      LDA #&80
     2888   85 88      STA &88
     288A   20 55 2A   JSR &2A55
     288D   4C B0 28   JMP &28B0
.px2
     2890   C9 06      CMP #&06
     2892   D0 11      BNE &28A5
     2894   A9 80      LDA #&80
     2896   85 88      STA &88
     2898   20 55 2A   JSR &2A55
     289B   A9 C0      LDA #&C0
     289D   85 88      STA &88
     289F   20 55 2A   JSR &2A55
     28A2   4C B0 28   JMP &28B0
.px3
     28A5   C9 01      CMP #&01
     28A7   D0 07      BNE &28B0
     28A9   A9 C0      LDA #&C0
     28AB   85 88      STA &88
     28AD   20 55 2A   JSR &2A55
.px4
     28B0   A9 2F      LDA #&2F
     28B2   85 89      STA &89
     28B4   68         PLA
     28B5   85 88      STA &88
     28B7   C6 77      DEC &77
.nx
     28B9   4C 31 2A   JMP &2A31
.mp
     28BC   A0 00      LDY #&00
     28BE   B1 75      LDA (&75),Y
     28C0   85 70      STA &70
     28C2   84 72      STY &72
.nxpl
     28C4   C8         INY
     28C5   B1 75      LDA (&75),Y
     28C7   85 77      STA &77
     28C9   C8         INY
     28CA   B1 75      LDA (&75),Y
     28CC   85 78      STA &78
     28CE   C8         INY
     28CF   B1 75      LDA (&75),Y
     28D1   85 79      STA &79
     28D3   C8         INY
     28D4   B1 75      LDA (&75),Y
     28D6   85 7A      STA &7A
     28D8   C8         INY
     28D9   B1 75      LDA (&75),Y
     28DB   85 7B      STA &7B
     28DD   A5 77      LDA &77
     28DF   29 C0      AND #&C0
     28E1   D0 03      BNE &28E6
     28E3   4C 60 28   JMP &2860
.p0
     28E6   A5 7A      LDA &7A
     28E8   10 03      BPL &28ED
     28EA   4C 4D 2A   JMP &2A4D
.p1
     28ED   C6 77      DEC &77
     28EF   98         TYA
     28F0   48         PHA
     28F1   A0 00      LDY #&00
     28F3   B1 8A      LDA (&8A),Y
     28F5   85 80      STA &80
.h
.next_plane
     28F7   C8         INY
     28F8   B1 8A      LDA (&8A),Y
     28FA   38         SEC
     28FB   E5 7B      SBC &7B
     28FD   30 47      BMI &2946
     28FF   C9 08      CMP #&08
     2901   10 43      BPL &2946
     2903   C8         INY
     2904   C8         INY
     2905   B1 8A      LDA (&8A),Y
     2907   F0 3F      BEQ &2948
     2909   C8         INY
     290A   B1 8A      LDA (&8A),Y
     290C   38         SEC
     290D   E5 7A      SBC &7A
     290F   30 38      BMI &2949
     2911   C9 07      CMP #&07
     2913   10 34      BPL &2949
     2915   C9 03      CMP #&03
     2917   F0 0D      BEQ &2926
     2919   A9 40      LDA #&40
     291B   0D 5E 2D   ORA &2D5E
     291E   8D 5E 2D   STA &2D5E
     2921   0A         ASL A
     2922   91 8A      STA (&8A),Y
     2924   D0 23      BNE &2949
.o
.plane_hit
     2926   A9 19      LDA #&19
     2928   85 77      STA &77
     292A   A9 D8      LDA #&D8
     292C   91 8A      STA (&8A),Y
     292E   AA         TAX
     292F   A0 2D      LDY #&2D
     2931   A9 07      LDA #&07
     2933   20 F1 FF   JSR &FFF1
     2936   68         PLA
     2937   A8         TAY
     2938   A9 02      LDA #&02
     293A   0D 5E 2D   ORA &2D5E
     293D   8D 5E 2D   STA &2D5E
     2940   20 55 2A   JSR &2A55
     2943   4C 60 28   JMP &2860
.nh
.plane_not_hit
     2946   C8         INY
     2947   C8         INY
     2948   C8         INY
     2949   C4 80      CPY &80
     294B   90 AA      BCC &28F7
     294D   68         PLA
     294E   A8         TAY
     294F   A5 73      LDA &73
     2951   29 BF      AND #&BF
     2953   85 73      STA &73
     2955   E6 72      INC &72
     2957   20 55 2A   JSR &2A55
     295A   A5 7B      LDA &7B
     295C   C9 AF      CMP #&AF
     295E   D0 21      BNE &2981
     2960   38         SEC
     2961   A5 78      LDA &78
     2963   E9 87      SBC #&87
     2965   85 78      STA &78
     2967   A5 79      LDA &79
     2969   E9 48      SBC #&48
     296B   85 79      STA &79
     296D   A9 C0      LDA #&C0
     296F   85 7B      STA &7B
     2971   AD 55 25   LDA &2555
     2974   F0 0B      BEQ &2981
     2976   A5 7A      LDA &7A
     2978   49 80      EOR #&80
     297A   85 7A      STA &7A
     297C   E6 77      INC &77
     297E   4C 31 2A   JMP &2A31
.hop5
     2981   A9 3F      LDA #&3F
     2983   25 77      AND &77
     2985   D0 40      BNE &29C7
     2987   38         SEC
     2988   A5 7A      LDA &7A
     298A   ED A6 2D   SBC &2DA6
     298D   85 77      STA &77
     298F   A9 00      LDA #&00
     2991   B0 02      BCS &2995
     2993   38         SEC
     2994   6A         ROR A
.pl3
     2995   6A         ROR A
     2996   85 80      STA &80
     2998   A5 77      LDA &77
     299A   D0 0D      BNE &29A9
.pl20
     299C   A5 7D      LDA &7D
     299E   10 06      BPL &29A6
     29A0   A5 80      LDA &80
     29A2   49 C0      EOR #&C0
     29A4   85 80      STA &80
.pl21
     29A6   AD 61 2D   LDA &2D61
.pl5
     29A9   10 05      BPL &29B0
     29AB   49 FF      EOR #&FF
     29AD   18         CLC
     29AE   69 01      ADC #&01
.pl4
     29B0   C9 02      CMP #&02
     29B2   30 0F      BMI &29C3
     29B4   8D 8A 2C   STA &2C8A
     29B7   20 84 2C   JSR &2C84
     29BA   4E 8A 2C   LSR &2C8A
     29BD   18         CLC
     29BE   6D 8A 2C   ADC &2C8A
     29C1   29 3F      AND #&3F
.pl6
     29C3   05 80      ORA &80
     29C5   85 77      STA &77
.mid
     29C7   A5 77      LDA &77
     29C9   A6 7A      LDX &7A
     29CB   E0 01      CPX #&01
     29CD   10 07      BPL &29D6
     29CF   09 40      ORA #&40
     29D1   29 7F      AND #&7F
     29D3   4C DE 29   JMP &29DE
.plnl
     29D6   E0 48      CPX #&48
     29D8   30 06      BMI &29E0
     29DA   09 80      ORA #&80
     29DC   29 BF      AND #&BF
.do
     29DE   85 77      STA &77
     29E0   E6 7B      INC &7B
     29E2   A9 07      LDA #&07
     29E4   25 78      AND &78
     29E6   C9 07      CMP #&07
     29E8   F0 05      BEQ &29EF
     29EA   E6 78      INC &78
     29EC   4C FC 29   JMP &29FC
.pl2
     29EF   18         CLC
     29F0   A5 78      LDA &78
     29F2   69 79      ADC #&79
     29F4   85 78      STA &78
     29F6   A5 79      LDA &79
     29F8   69 02      ADC #&02
     29FA   85 79      STA &79
.lft
     29FC   AD 2D 2A   LDA &2A2D
     29FF   F0 21      BEQ &2A22
     2A01   A5 77      LDA &77
     2A03   10 10      BPL &2A15
     2A05   C6 7A      DEC &7A
     2A07   38         SEC
     2A08   A5 78      LDA &78
     2A0A   E9 08      SBC #&08
     2A0C   85 78      STA &78
     2A0E   B0 12      BCS &2A22
     2A10   C6 79      DEC &79
     2A12   4C 22 2A   JMP &2A22
.rt
     2A15   E6 7A      INC &7A
     2A17   18         CLC
     2A18   A5 78      LDA &78
     2A1A   69 08      ADC #&08
     2A1C   85 78      STA &78
     2A1E   90 02      BCC &2A22
     2A20   E6 79      INC &79
.enlr
     2A22   A9 01      LDA #&01
     2A24   4D 2D 2A   EOR &2A2D
     2A27   8D 2D 2A   STA &2A2D
     2A2A   4C 2E 2A   JMP &2A2E
.tog
     2A2D   00
.fo
     2A2E   20 55 2A   JSR &2A55
     2A31   88         DEY
     2A32   88         DEY
     2A33   88         DEY
     2A34   88         DEY
     2A35   A5 77      LDA &77
     2A37   91 75      STA (&75),Y
     2A39   C8         INY
     2A3A   A5 78      LDA &78
     2A3C   91 75      STA (&75),Y
     2A3E   C8         INY
     2A3F   A5 79      LDA &79
     2A41   91 75      STA (&75),Y
     2A43   C8         INY
     2A44   A5 7A      LDA &7A
     2A46   91 75      STA (&75),Y
     2A48   C8         INY
     2A49   A5 7B      LDA &7B
     2A4B   91 75      STA (&75),Y
.pl1
     2A4D   C4 70      CPY &70
     2A4F   F0 03      BEQ &2A54
     2A51   4C C4 28   JMP &28C4
.hop7
     2A54   60         RTS
.pp
.plot_plane
     2A55   98         TYA
     2A56   48         PHA
     2A57   18         CLC
     2A58   A5 78      LDA &78
     2A5A   69 78      ADC #&78
     2A5C   85 84      STA &84
     2A5E   29 07      AND #&07
     2A60   49 07      EOR #&07
     2A62   85 74      STA &74
     2A64   A5 79      LDA &79
     2A66   69 02      ADC #&02
     2A68   85 85      STA &85
.modify_plane_sprite_length
     2A6A   A0 3F      LDY #&3F
.plo
     2A6C   A2 07      LDX #&07
     2A6E   E4 74      CPX &74
     2A70   F0 0E      BEQ &2A80
.bt
     2A72   B1 88      LDA (&88),Y
     2A74   F0 04      BEQ &2A7A
     2A76   51 84      EOR (&84),Y
     2A78   91 84      STA (&84),Y
.bz
     2A7A   88         DEY
     2A7B   CA         DEX
     2A7C   E4 74      CPX &74
     2A7E   D0 F2      BNE &2A72
.tp
     2A80   B1 88      LDA (&88),Y
     2A82   F0 04      BEQ &2A88
     2A84   51 78      EOR (&78),Y
     2A86   91 78      STA (&78),Y
.tz
     2A88   88         DEY
     2A89   CA         DEX
     2A8A   10 F4      BPL &2A80
     2A8C   98         TYA
     2A8D   10 DD      BPL &2A6C
     2A8F   68         PLA
     2A90   A8         TAY
     2A91   60         RTS
.nbo
     2A92   EA         NOP
     2A93   A9 C0      LDA #&C0
     2A95   24 73      BIT &73
     2A97   D0 46      BNE &2ADF
     2A99   C6 73      DEC &73
     2A9B   D0 42      BNE &2ADF
     2A9D   A0 FF      LDY #&FF
.nbo2
     2A9F   C8         INY
     2AA0   C8         INY
     2AA1   C8         INY
     2AA2   C8         INY
     2AA3   C8         INY
     2AA4   B1 75      LDA (&75),Y
     2AA6   30 F7      BMI &2A9F
     2AA8   88         DEY
     2AA9   88         DEY
     2AAA   88         DEY
     2AAB   B1 75      LDA (&75),Y
     2AAD   29 C0      AND #&C0
     2AAF   D0 06      BNE &2AB7
     2AB1   C8         INY
     2AB2   C8         INY
     2AB3   C8         INY
     2AB4   4C 9F 2A   JMP &2A9F
.nbo5
     2AB7   C8         INY
     2AB8   18         CLC
     2AB9   B1 75      LDA (&75),Y
     2ABB   69 9D      ADC #&9D
     2ABD   85 80      STA &80
     2ABF   C8         INY
     2AC0   B1 75      LDA (&75),Y
     2AC2   69 02      ADC #&02
     2AC4   85 81      STA &81
     2AC6   20 B5 27   JSR &27B5
     2AC9   A0 00      LDY #&00
.nbo3
     2ACB   C8         INY
     2ACC   C8         INY
     2ACD   B1 8C      LDA (&8C),Y
     2ACF   D0 FA      BNE &2ACB
     2AD1   A5 81      LDA &81
     2AD3   91 8C      STA (&8C),Y
     2AD5   88         DEY
     2AD6   A5 80      LDA &80
     2AD8   91 8C      STA (&8C),Y
     2ADA   AD A7 2D   LDA &2DA7
     2ADD   85 73      STA &73
.nbo4
     2ADF   A9 C0      LDA #&C0
     2AE1   05 73      ORA &73
     2AE3   85 73      STA &73
     2AE5   60         RTS
.new_bomb
     2AE6   EA         NOP
     2AE7   A5 51      LDA &51
     2AE9   C5 50      CMP &50
     2AEB   90 71      BCC &2B5E
     2AED   A9 C0      LDA #&C0
     2AEF   24 73      BIT &73
     2AF1   D0 6B      BNE &2B5E
     2AF3   C6 73      DEC &73
     2AF5   D0 67      BNE &2B5E
     2AF7   A2 00      LDX #&00
.find_slot_loop
     2AF9   E8         INX
     2AFA   E4 51      CPX &51
     2AFC   B0 60      BCS &2B5E
     2AFE   E8         INX
     2AFF   B5 51      LDA &51,X
     2B01   D0 F6      BNE &2AF9
     2B03   A0 FF      LDY #&FF
.find_plane_loop
     2B05   C8         INY
     2B06   C8         INY
     2B07   C8         INY
     2B08   C8         INY
     2B09   C8         INY
     2B0A   B1 75      LDA (&75),Y
     2B0C   30 F7      BMI &2B05
     2B0E   88         DEY
     2B0F   88         DEY
     2B10   88         DEY
     2B11   B1 75      LDA (&75),Y
     2B13   29 C0      AND #&C0
     2B15   D0 06      BNE &2B1D
     2B17   C8         INY
     2B18   C8         INY
     2B19   C8         INY
     2B1A   4C 05 2B   JMP &2B05
.found_plane
     2B1D   C8         INY
     2B1E   18         CLC
     2B1F   B1 75      LDA (&75),Y
     2B21   69 9D      ADC #&9D
     2B23   95 50      STA &50,X
     2B25   29 07      AND #&07
     2B27   49 07      EOR #&07
     2B29   8D 76 2B   STA &2B76
     2B2C   C8         INY
     2B2D   B1 75      LDA (&75),Y
     2B2F   69 02      ADC #&02
     2B31   95 51      STA &51,X
     2B33   18         CLC
     2B34   B5 50      LDA &50,X
     2B36   69 78      ADC #&78
     2B38   95 60      STA &60,X
     2B3A   B5 51      LDA &51,X
     2B3C   69 02      ADC #&02
     2B3E   95 61      STA &61,X
     2B40   8A         TXA
     2B41   69 50      ADC #&50
     2B43   8D 7A 2B   STA &2B7A
     2B46   8D 7E 2B   STA &2B7E
     2B49   8A         TXA
     2B4A   69 60      ADC #&60
     2B4C   8D 6F 2B   STA &2B6F
     2B4F   8D 73 2B   STA &2B73
     2B52   20 65 2B   JSR &2B65
     2B55   A0 00      LDY #&00
     2B57   AD A7 2D   LDA &2DA7
     2B5A   85 73      STA &73
     2B5C   E6 50      INC &50
.no_bomb
     2B5E   A9 C0      LDA #&C0
     2B60   05 73      ORA &73
     2B62   85 73      STA &73
     2B64   60         RTS
.plot_bomb
     2B65   A0 05      LDY #&05
     2B67   AD 76 2B   LDA &2B76
     2B6A   C9 05      CMP #&05
     2B6C   10 0B      BPL &2B79
.plot_bomb_lower1
     2B6E   B1 62      LDA (&62),Y
     2B70   49 2A      EOR #&2A
.plot_bomb_lower2
     2B72   91 62      STA (&62),Y
     2B74   88         DEY
.plot_bomb_mod
     2B75   C0 FF      CPY #&FF
     2B77   D0 F5      BNE &2B6E
.plot_bomb_upper1
     2B79   B1 52      LDA (&52),Y
     2B7B   49 2A      EOR #&2A
.plot_bomb_upper2
     2B7D   91 52      STA (&52),Y
     2B7F   88         DEY
     2B80   10 F7      BPL &2B79
     2B82   60         RTS
.move_bombs
     2B83   EA         NOP
     2B84   A9 50      LDA #&50
     2B86   8D 7A 2B   STA &2B7A
     2B89   8D 7E 2B   STA &2B7E
     2B8C   A9 60      LDA #&60
     2B8E   8D 6F 2B   STA &2B6F
     2B91   8D 73 2B   STA &2B73
     2B94   A5 52      LDA &52
     2B96   29 07      AND #&07
     2B98   49 07      EOR #&07
     2B9A   8D 76 2B   STA &2B76
     2B9D   A2 00      LDX #&00
.next_bomb_loop
     2B9F   EE 7A 2B   INC &2B7A
     2BA2   EE 7E 2B   INC &2B7E
     2BA5   EE 7A 2B   INC &2B7A
     2BA8   EE 7E 2B   INC &2B7E
     2BAB   EE 6F 2B   INC &2B6F
     2BAE   EE 73 2B   INC &2B73
     2BB1   EE 6F 2B   INC &2B6F
     2BB4   EE 73 2B   INC &2B73
     2BB7   B5 53      LDA &53,X
     2BB9   D0 08      BNE &2BC3
     2BBB   A9 7F      LDA #&7F
     2BBD   25 73      AND &73
     2BBF   85 73      STA &73
     2BC1   D0 53      BNE &2C16
.unplot
     2BC3   20 65 2B   JSR &2B65
.upper_addr
     2BC6   B5 52      LDA &52,X
     2BC8   29 07      AND #&07
     2BCA   C9 06      CMP #&06
     2BCC   10 07      BPL &2BD5
     2BCE   F6 52      INC &52,X
     2BD0   F6 52      INC &52,X
     2BD2   4C E9 2B   JMP &2BE9
.upper_next_line
     2BD5   18         CLC
     2BD6   B5 52      LDA &52,X
     2BD8   69 7A      ADC #&7A
     2BDA   95 52      STA &52,X
     2BDC   29 07      AND #&07
     2BDE   49 07      EOR #&07
     2BE0   8D 76 2B   STA &2B76
     2BE3   B5 53      LDA &53,X
     2BE5   69 02      ADC #&02
     2BE7   95 53      STA &53,X
.skip_16bit_add
.lower_addr
     2BE9   B5 62      LDA &62,X
     2BEB   29 07      AND #&07
     2BED   C9 06      CMP #&06
     2BEF   10 07      BPL &2BF8
     2BF1   F6 62      INC &62,X
     2BF3   F6 62      INC &62,X
     2BF5   4C 05 2C   JMP &2C05
.lower_next_line
     2BF8   18         CLC
     2BF9   B5 62      LDA &62,X
     2BFB   69 7A      ADC #&7A
     2BFD   95 62      STA &62,X
     2BFF   B5 63      LDA &63,X
     2C01   69 02      ADC #&02
     2C03   95 63      STA &63,X
.check_bottom
     2C05   B5 53      LDA &53,X
     2C07   C9 80      CMP #&80
     2C09   90 08      BCC &2C13
     2C0B   C6 50      DEC &50
     2C0D   A9 00      LDA #&00
     2C0F   95 53      STA &53,X
     2C11   F0 03      BEQ &2C16
.bomb_redraw
     2C13   20 65 2B   JSR &2B65
.next_bomb
     2C16   E8         INX
     2C17   E8         INX
     2C18   E4 51      CPX &51
     2C1A   90 83      BCC &2B9F
     2C1C   60         RTS
.mbo
     2C1D   A0 00      LDY #&00
     2C1F   B1 8C      LDA (&8C),Y
     2C21   85 70      STA &70
     2C23   AD 96 2D   LDA &2D96
     2C26   85 82      STA &82
     2C28   AD 97 2D   LDA &2D97
     2C2B   85 83      STA &83
.ntbo
     2C2D   C8         INY
     2C2E   B1 8C      LDA (&8C),Y
     2C30   85 80      STA &80
     2C32   C8         INY
     2C33   B1 8C      LDA (&8C),Y
     2C35   85 81      STA &81
     2C37   D0 09      BNE &2C42
     2C39   A9 7F      LDA #&7F
     2C3B   25 73      AND &73
     2C3D   85 73      STA &73
     2C3F   4C 7C 2C   JMP &2C7C
.bo1
     2C42   20 B5 27   JSR &27B5
     2C45   A5 80      LDA &80
     2C47   29 07      AND #&07
     2C49   C9 06      CMP #&06
     2C4B   10 09      BPL &2C56
     2C4D   E6 80      INC &80
     2C4F   E6 80      INC &80
     2C51   A5 81      LDA &81
     2C53   4C 63 2C   JMP &2C63
.bo2
     2C56   18         CLC
     2C57   A5 80      LDA &80
     2C59   69 7A      ADC #&7A
     2C5B   85 80      STA &80
     2C5D   A5 81      LDA &81
     2C5F   69 02      ADC #&02
     2C61   85 81      STA &81
.bo4
     2C63   C9 80      CMP #&80
     2C65   30 08      BMI &2C6F
     2C67   C6 50      DEC &50
     2C69   A9 00      LDA #&00
     2C6B   91 8C      STA (&8C),Y
     2C6D   F0 0D      BEQ &2C7C
.bo6
     2C6F   20 B5 27   JSR &27B5
     2C72   88         DEY
     2C73   A5 80      LDA &80
     2C75   91 8C      STA (&8C),Y
     2C77   C8         INY
     2C78   A5 81      LDA &81
     2C7A   91 8C      STA (&8C),Y
.bo7
     2C7C   C4 70      CPY &70
     2C7E   30 AD      BMI &2C2D
     2C80   60         RTS
.ra2
     2C81   8D 8A 2C   STA &2C8A
     2C84   38         SEC
     2C85   A5 7C      LDA &7C
     2C87   29 7F      AND #&7F
.ra3
     2C89   E9 10      SBC #&10
     2C8B   10 FC      BPL &2C89
     2C8D   6D 8A 2C   ADC &2C8A
     2C90   60         RTS
.end_GG_02_code
.end_GG_02_code =  &2C91 
.bullet_list
     2CF0   08
     2CF1   00
     2CF2   00
     2CF3   00
     2CF4   00
     2CF5   00
     2CF6   00
     2CF7   00
     2CF8   00
     2CF9   00
     2CFA   00
     2CFB   00
     2CFC   00
     2CFD   00
     2CFE   00
     2CFF   00
     2D00   00
.plane_list
     2D01   1E
     2D02   00
     2D03   00
     2D04   00
     2D05   00
     2D06   00
     2D07   00
     2D08   00
     2D09   00
     2D0A   00
     2D0B   00
     2D0C   00
     2D0D   00
     2D0E   00
     2D0F   00
     2D10   00
     2D11   00
     2D12   00
     2D13   00
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
.bomb_list_old
     2D35   02
     2D36   D6
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
     2D47   00
     2D48   00
     2D49   00
     2D4A   00
     2D4B   00
     2D4C   00
.cloud_sprite_offset_list
     2D4D   80
     2D4E   40
     2D4F   40
     2D50   00
     2D51   80
     2D52   00
     2D53   40
     2D54   80
     2D55   00
.bis
     2D56   88
     2D57   A0
     2D58   B8
     2D59   D0
     2D5A   E8
     2D5B   D0
     2D5C   B8
     2D5D   88
.sc
     2D5E   00
     2D5F   00
     2D60   00
.de
     2D61   20
.ti
     2D62   03
     2D63   42
.ba
     2D64   00
     2D65   00
     2D66   06
     2D67   00
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
     2D87   22
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
     2D97   20
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
