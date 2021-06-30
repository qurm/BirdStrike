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
     112D   20 F7 17   JSR &17F7
     1130   B9 42 11   LDA &1142,Y
     1133   20 EE FF   JSR &FFEE
     1136   C9 52      CMP #&52
     1138   D0 F0      BNE &112A
     113A   A9 96      LDA #&96
     113C   20 F7 17   JSR &17F7
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
     1159   20 F7 17   JSR &17F7
     115C   20 7F 13   JSR &137F
     115F   4C 68 11   JMP &1168
.bon0
     1162   20 1B 18   JSR &181B
     1165   20 02 19   JSR &1902
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
     1182   20 F7 17   JSR &17F7
     1185   98         TYA
     1186   48         PHA
     1187   A2 E8      LDX #&E8
     1189   A0 2D      LDY #&2D
     118B   A9 07      LDA #&07
     118D   20 F1 FF   JSR &FFF1
     1190   20 6B 17   JSR &176B
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
     13BC   20 F2 1E   JSR &1EF2
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
     13EA   20 1B 18   JSR &181B
     13ED   8E 57 1A   STX &1A57
     13F0   EE 5C 25   INC &255C
.stm8
     13F3   20 3A 18   JSR &183A
     13F6   D0 FB      BNE &13F3
     13F8   20 1B 18   JSR &181B
     13FB   20 02 19   JSR &1902
     13FE   A9 3C      LDA #&3C
     1400   20 F7 17   JSR &17F7
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
     14C7   20 F7 17   JSR &17F7
.space
     14CA   A9 1A      LDA #&1A
     14CC   20 EE FF   JSR &FFEE
     14CF   A2 65      LDX #&65
     14D1   A0 13      LDY #&13
     14D3   20 F2 14   JSR &14F2
.ge4
     14D6   A2 9D      LDX #&9D
     14D8   20 31 19   JSR &1931
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
     151E   8D 7C 19   STA &197C
     1521   AD 0D 02   LDA &020D
     1524   8D 7D 19   STA &197D
.newgame
     1527   20 20 14   JSR &1420
     152A   20 9A 15   JSR &159A
.GO
     152D   20 8D 1C   JSR &1C8D
     1530   20 2D 26   JSR &262D
     1533   20 BC 28   JSR &28BC
     1536   20 1E 28   JSR &281E
     1539   20 51 26   JSR &2651
     153C   20 C6 26   JSR &26C6
     153F   20 42 27   JSR &2742
     1542   20 E6 2A   JSR &2AE6
     1545   20 92 2A   JSR &2A92
     1548   20 E3 1A   JSR &1AE3
     154B   20 93 19   JSR &1993
     154E   20 F7 16   JSR &16F7
     1551   20 3A 19   JSR &193A
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
     158A   03
     158B   04
     158C   05
     158D   04
     158E   04
     158F   04
     1590   04
     1591   04
.level_inb
.level_bomb_interval
     1592   EC
     1593   EB
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
     15A3   20 02 19   JSR &1902
     15A6   A9 16      LDA #&16
     15A8   20 EE FF   JSR &FFEE
     15AB   A9 02      LDA #&02
     15AD   20 EE FF   JSR &FFEE
     15B0   A9 00      LDA #&00
     15B2   8D D3 17   STA &17D3
     15B5   85 8E      STA &8E
     15B7   8D 5C 25   STA &255C
     15BA   8D 54 25   STA &2554
     15BD   8D 55 25   STA &2555
     15C0   8D 5F 2D   STA &2D5F
     15C3   8D 60 2D   STA &2D60
     15C6   85 88      STA &88
     15C8   18         CLC
     15C9   A9 03      LDA #&03
     15CB   8D 62 2D   STA &2D62
     15CE   A9 2A      LDA #&2A
     15D0   8D 63 2D   STA &2D63
     15D3   A9 02      LDA #&02
     15D5   85 71      STA &71
     15D7   A9 F0      LDA #&F0
     15D9   85 8A      STA &8A
     15DB   A9 2C      LDA #&2C
     15DD   85 8B      STA &8B
     15DF   A9 35      LDA #&35
     15E1   85 8C      STA &8C
     15E3   A9 2D      LDA #&2D
     15E5   85 8D      STA &8D
     15E7   A9 01      LDA #&01
     15E9   85 75      STA &75
     15EB   A9 2D      LDA #&2D
     15ED   85 76      STA &76
     15EF   A2 0F      LDX #&0F
     15F1   A0 07      LDY #&07
.co1
     15F3   20 00 26   JSR &2600
     15F6   CA         DEX
     15F7   E0 07      CPX #&07
     15F9   D0 F8      BNE &15F3
     15FB   86 7D      STX &7D
     15FD   A9 03      LDA #&03
     15FF   8D 56 25   STA &2556
     1602   A9 2F      LDA #&2F
     1604   85 89      STA &89
.bf
     1606   20 1B 18   JSR &181B
     1609   8E 57 1A   STX &1A57
     160C   EE 5C 25   INC &255C
     160F   A0 5C      LDY #&5C
.b1
     1611   99 F0 2C   STA &2CF0,Y
     1614   88         DEY
     1615   D0 FA      BNE &1611
.b0
     1617   A9 0C      LDA #&0C
     1619   20 EE FF   JSR &FFEE
     161C   A9 9A      LDA #&9A
     161E   A2 14      LDX #&14
     1620   20 F4 FF   JSR &FFF4
     1623   20 EF 1C   JSR &1CEF
     1626   20 9E 1C   JSR &1C9E
     1629   20 F2 1E   JSR &1EF2
     162C   20 6B 17   JSR &176B
     162F   A9 00      LDA #&00
     1631   8D 5B 25   STA &255B
     1634   8D 5E 2D   STA &2D5E
     1637   8D 65 2D   STA &2D65
     163A   AC 5C 25   LDY &255C
     163D   88         DEY
     163E   B9 72 15   LDA &1572,Y
     1641   8D 61 2D   STA &2D61
     1644   B9 92 15   LDA &1592,Y
     1647   8D A7 2D   STA &2DA7
     164A   B9 8A 15   LDA &158A,Y
     164D   8D 35 2D   STA &2D35
     1650   B9 7A 15   LDA &157A,Y
     1653   8D F0 2C   STA &2CF0
     1656   A9 1E      LDA #&1E
     1658   8D 01 2D   STA &2D01
     165B   A9 88      LDA #&88
     165D   8D 59 25   STA &2559
     1660   A9 30      LDA #&30
     1662   8D 5A 25   STA &255A
     1665   A9 80      LDA #&80
     1667   8D 57 25   STA &2557
     166A   A9 32      LDA #&32
     166C   8D 58 25   STA &2558
     166F   AE 56 25   LDX &2556
.pmi
     1672   20 7E 19   JSR &197E
     1675   18         CLC
     1676   AD 57 25   LDA &2557
     1679   69 18      ADC #&18
     167B   8D 57 25   STA &2557
     167E   CA         DEX
     167F   D0 F1      BNE &1672
     1681   A9 3A      LDA #&3A
     1683   85 81      STA &81
     1685   A9 81      LDA #&81
     1687   85 82      STA &82
     1689   A2 01      LDX #&01
     168B   A0 08      LDY #&08
.pp1
     168D   A9 81      LDA #&81
     168F   9D 01 2D   STA &2D01,X
     1692   E8         INX
     1693   98         TYA
     1694   18         CLC
     1695   69 50      ADC #&50
     1697   9D 01 2D   STA &2D01,X
     169A   A8         TAY
     169B   E8         INX
     169C   A5 81      LDA &81
     169E   69 00      ADC #&00
     16A0   9D 01 2D   STA &2D01,X
     16A3   85 81      STA &81
     16A5   18         CLC
     16A6   E8         INX
     16A7   A5 82      LDA &82
     16A9   69 0A      ADC #&0A
     16AB   85 82      STA &82
     16AD   9D 01 2D   STA &2D01,X
     16B0   E8         INX
     16B1   A9 D0      LDA #&D0
     16B3   9D 01 2D   STA &2D01,X
     16B6   E8         INX
     16B7   E0 1F      CPX #&1F
     16B9   30 D2      BMI &168D
     16BB   A0 00      LDY #&00
     16BD   B1 75      LDA (&75),Y
     16BF   85 70      STA &70
.slop
     16C1   C8         INY
     16C2   C8         INY
     16C3   B1 75      LDA (&75),Y
     16C5   85 78      STA &78
     16C7   C8         INY
     16C8   B1 75      LDA (&75),Y
     16CA   85 79      STA &79
     16CC   20 55 2A   JSR &2A55
     16CF   C8         INY
     16D0   C8         INY
     16D1   C4 70      CPY &70
     16D3   30 EC      BMI &16C1
     16D5   20 3D 1A   JSR &1A3D
.sgun
.player_gun_initialise
     16D8   A9 20      LDA #&20
     16DA   8D A6 2D   STA &2DA6
     16DD   A9 7E      LDA #&7E
     16DF   85 87      STA &87
     16E1   A9 90      LDA #&90
     16E3   85 86      STA &86
     16E5   A9 20      LDA #&20
     16E7   8D BB 26   STA &26BB
     16EA   A9 58      LDA #&58
     16EC   8D BA 26   STA &26BA
     16EF   20 B7 26   JSR &26B7
     16F2   A9 40      LDA #&40
     16F4   4C 02 19   JMP &1902
.sor
     16F7   AD 5E 2D   LDA &2D5E
     16FA   F0 6F      BEQ &176B
     16FC   F8         SED
     16FD   29 02      AND #&02
     16FF   F0 14      BEQ &1715
     1701   18         CLC
     1702   A9 15      LDA #&15
     1704   6D 5F 2D   ADC &2D5F
     1707   8D 5F 2D   STA &2D5F
     170A   AD 60 2D   LDA &2D60
     170D   69 00      ADC #&00
     170F   8D 60 2D   STA &2D60
     1712   20 62 1C   JSR &1C62
.s1
     1715   A9 40      LDA #&40
     1717   2C 5E 2D   BIT &2D5E
     171A   F0 1C      BEQ &1738
     171C   18         CLC
     171D   A9 01      LDA #&01
.wng
     171F   6D 5F 2D   ADC &2D5F
     1722   8D 5F 2D   STA &2D5F
     1725   AD 60 2D   LDA &2D60
     1728   69 00      ADC #&00
     172A   8D 60 2D   STA &2D60
     172D   D8         CLD
     172E   A2 C8      LDX #&C8
     1730   A0 2D      LDY #&2D
     1732   A9 07      LDA #&07
     1734   20 F1 FF   JSR &FFF1
     1737   F8         SED
.s4
     1738   A9 10      LDA #&10
     173A   2C 5E 2D   BIT &2D5E
     173D   F0 1A      BEQ &1759
     173F   18         CLC
     1740   A9 0A      LDA #&0A
.pig
     1742   6D 5F 2D   ADC &2D5F
     1745   8D 5F 2D   STA &2D5F
     1748   AD 60 2D   LDA &2D60
     174B   69 00      ADC #&00
     174D   8D 60 2D   STA &2D60
     1750   D8         CLD
     1751   20 3A 18   JSR &183A
     1754   D0 03      BNE &1759
     1756   20 50 11   JSR &1150
.s2
     1759   D8         CLD
     175A   20 A4 17   JSR &17A4
     175D   AD 5E 2D   LDA &2D5E
     1760   10 03      BPL &1765
     1762   4C 07 18   JMP &1807
.s3
     1765   A9 00      LDA #&00
     1767   8D 5E 2D   STA &2D5E
     176A   60         RTS
.s7
.score_update_screen
     176B   A9 34      LDA #&34
     176D   85 81      STA &81
     176F   A9 B0      LDA #&B0
     1771   85 80      STA &80
     1773   A9 24      LDA #&24
     1775   85 83      STA &83
     1777   A9 F0      LDA #&F0
     1779   2D 60 2D   AND &2D60
     177C   20 3D 26   JSR &263D
     177F   A9 0F      LDA #&0F
     1781   2D 60 2D   AND &2D60
     1784   0A         ASL A
     1785   0A         ASL A
     1786   0A         ASL A
     1787   0A         ASL A
     1788   20 3D 26   JSR &263D
     178B   A9 F0      LDA #&F0
     178D   2D 5F 2D   AND &2D5F
     1790   20 3D 26   JSR &263D
     1793   A9 0F      LDA #&0F
     1795   2D 5F 2D   AND &2D5F
     1798   0A         ASL A
     1799   0A         ASL A
     179A   0A         ASL A
     179B   0A         ASL A
     179C   20 3D 26   JSR &263D
     179F   A9 00      LDA #&00
     17A1   4C 3D 26   JMP &263D
.extra_player_check
.exg
     17A4   A9 01      LDA #&01
     17A6   2C D3 17   BIT &17D3
     17A9   D0 10      BNE &17BB
     17AB   AC 60 2D   LDY &2D60
     17AE   C0 05      CPY #&05
     17B0   30 20      BMI &17D2
     17B2   0D D3 17   ORA &17D3
     17B5   8D D3 17   STA &17D3
     17B8   20 D4 17   JSR &17D4
.exg1
     17BB   A9 02      LDA #&02
     17BD   2C D3 17   BIT &17D3
     17C0   D0 10      BNE &17D2
     17C2   AC 60 2D   LDY &2D60
     17C5   C0 10      CPY #&10
     17C7   30 09      BMI &17D2
     17C9   0D D3 17   ORA &17D3
     17CC   8D D3 17   STA &17D3
     17CF   4C D4 17   JMP &17D4
.exg2
     17D2   60         RTS
.exg3
     17D3   00
.exg4
     17D4   20 7E 19   JSR &197E
     17D7   A9 DC      LDA #&DC
     17D9   8D FC 2D   STA &2DFC
     17DC   A2 F8      LDX #&F8
     17DE   A0 2D      LDY #&2D
     17E0   A9 07      LDA #&07
     17E2   20 F1 FF   JSR &FFF1
     17E5   EE 56 25   INC &2556
     17E8   18         CLC
     17E9   AD 57 25   LDA &2557
     17EC   69 18      ADC #&18
     17EE   8D 57 25   STA &2557
     17F1   90 03      BCC &17F6
     17F3   EE 58 25   INC &2558
.exg5
     17F6   60         RTS
.delay
     17F7   8D 0A 22   STA &220A
     17FA   98         TYA
     17FB   48         PHA
.del1
     17FC   20 2D 26   JSR &262D
     17FF   CE 0A 22   DEC &220A
     1802   D0 F8      BNE &17FC
     1804   68         PLA
     1805   A8         TAY
     1806   60         RTS
.next_level
.ef
     1807   A9 00      LDA #&00
     1809   8D 5E 2D   STA &2D5E
     180C   18         CLC
     180D   A5 88      LDA &88
     180F   69 40      ADC #&40
     1811   85 88      STA &88
     1813   A9 64      LDA #&64
     1815   20 F7 17   JSR &17F7
     1818   4C 06 16   JMP &1606
.cht
     181B   A9 03      LDA #&03
     181D   2D 5C 25   AND &255C
     1820   AA         TAX
     1821   D0 03      BNE &1826
     1823   A9 33      LDA #&33
     1825   60         RTS
.ct1
     1826   CA         DEX
     1827   D0 04      BNE &182D
     1829   8A         TXA
     182A   A2 0D      LDX #&0D
     182C   60         RTS
.ct2
     182D   CA         DEX
     182E   D0 05      BNE &1835
     1830   A9 11      LDA #&11
     1832   A2 1A      LDX #&1A
     1834   60         RTS
.ct3
     1835   A9 22      LDA #&22
     1837   A2 26      LDX #&26
     1839   60         RTS
.nxno
     183A   EE 57 1A   INC &1A57
     183D   AC 57 1A   LDY &1A57
     1840   B9 57 1A   LDA &1A57,Y
     1843   85 70      STA &70
     1845   29 0E      AND #&0E
     1847   C9 08      CMP #&08
     1849   10 0A      BPL &1855
     184B   18         CLC
     184C   6D 59 25   ADC &2559
     184F   85 80      STA &80
     1851   A9 00      LDA #&00
     1853   F0 0A      BEQ &185F
.n1
     1855   18         CLC
     1856   6D 59 25   ADC &2559
     1859   69 78      ADC #&78
     185B   85 80      STA &80
     185D   A9 02      LDA #&02
.n2
     185F   6D 5A 25   ADC &255A
     1862   85 81      STA &81
     1864   A9 20      LDA #&20
     1866   85 83      STA &83
     1868   20 9A 18   JSR &189A
     186B   18         CLC
     186C   AD 59 25   LDA &2559
     186F   69 20      ADC #&20
     1871   8D 59 25   STA &2559
     1874   90 03      BCC &1879
     1876   EE 5A 25   INC &255A
.n3
     1879   20 CE 18   JSR &18CE
     187C   18         CLC
     187D   A5 80      LDA &80
     187F   69 08      ADC #&08
     1881   85 80      STA &80
     1883   90 02      BCC &1887
     1885   E6 81      INC &81
.n4
     1887   18         CLC
     1888   A5 82      LDA &82
     188A   69 08      ADC #&08
     188C   85 82      STA &82
     188E   90 02      BCC &1892
     1890   E6 83      INC &83
.n5
     1892   20 CE 18   JSR &18CE
     1895   C8         INY
     1896   B9 57 1A   LDA &1A57,Y
     1899   60         RTS
.chnot
     189A   A9 80      LDA #&80
     189C   24 70      BIT &70
     189E   F0 05      BEQ &18A5
     18A0   A9 00      LDA #&00
     18A2   85 82      STA &82
     18A4   60         RTS
.c1
     18A5   4A         LSR A
     18A6   24 70      BIT &70
     18A8   F0 05      BEQ &18AF
     18AA   A9 10      LDA #&10
     18AC   85 82      STA &82
     18AE   60         RTS
.c2
     18AF   4A         LSR A
     18B0   24 70      BIT &70
     18B2   F0 05      BEQ &18B9
     18B4   A9 20      LDA #&20
     18B6   85 82      STA &82
     18B8   60         RTS
.c3
     18B9   4A         LSR A
     18BA   24 70      BIT &70
     18BC   F0 05      BEQ &18C3
     18BE   A9 30      LDA #&30
     18C0   85 82      STA &82
     18C2   60         RTS
.c4
     18C3   A9 01      LDA #&01
     18C5   24 70      BIT &70
     18C7   F0 04      BEQ &18CD
     18C9   A9 40      LDA #&40
     18CB   85 82      STA &82
.c5
     18CD   60         RTS
.pno
     18CE   98         TYA
     18CF   48         PHA
     18D0   A0 07      LDY #&07
     18D2   18         CLC
     18D3   A5 80      LDA &80
     18D5   69 78      ADC #&78
     18D7   85 84      STA &84
     18D9   A5 81      LDA &81
     18DB   69 02      ADC #&02
     18DD   85 85      STA &85
     18DF   A5 80      LDA &80
     18E1   29 07      AND #&07
     18E3   49 07      EOR #&07
     18E5   85 74      STA &74
     18E7   C9 07      CMP #&07
     18E9   10 0B      BPL &18F6
.pnbot
     18EB   B1 82      LDA (&82),Y
     18ED   11 84      ORA (&84),Y
     18EF   91 84      STA (&84),Y
     18F1   88         DEY
     18F2   C4 74      CPY &74
     18F4   D0 F5      BNE &18EB
.pntop
     18F6   B1 82      LDA (&82),Y
     18F8   11 80      ORA (&80),Y
     18FA   91 80      STA (&80),Y
     18FC   88         DEY
     18FD   10 F7      BPL &18F6
     18FF   68         PLA
     1900   A8         TAY
     1901   60         RTS
.playTune
.tune
     1902   85 70      STA &70
.t1
     1904   A4 70      LDY &70
     1906   B9 87 1A   LDA &1A87,Y
     1909   F0 1A      BEQ &1925
     190B   8D FC 2D   STA &2DFC
     190E   C8         INY
     190F   B9 87 1A   LDA &1A87,Y
     1912   8D FE 2D   STA &2DFE
     1915   A2 F8      LDX #&F8
     1917   A0 2D      LDY #&2D
     1919   A9 07      LDA #&07
     191B   20 F1 FF   JSR &FFF1
     191E   E6 70      INC &70
     1920   E6 70      INC &70
     1922   4C 04 19   JMP &1904
.t3
     1925   A9 80      LDA #&80
     1927   A2 FA      LDX #&FA
     1929   20 F4 FF   JSR &FFF4
     192C   E0 0F      CPX #&0F
     192E   30 F5      BMI &1925
     1930   60         RTS
.keyboardScan
.key
     1931   A9 81      LDA #&81
     1933   A0 FF      LDY #&FF
     1935   20 F4 FF   JSR &FFF4
     1938   E8         INX
     1939   60         RTS
.check_key_press
.opt
.checkQkey
     193A   A2 EF      LDX #&EF
     193C   20 31 19   JSR &1931
     193F   D0 0A      BNE &194B
     1941   A9 75      LDA #&75
     1943   8D 0C 02   STA &020C
     1946   A9 19      LDA #&19
     1948   8D 0D 02   STA &020D
.op1
.checkSkey
     194B   A2 AE      LDX #&AE
     194D   20 31 19   JSR &1931
     1950   D0 0C      BNE &195E
     1952   AD 7C 19   LDA &197C
     1955   8D 0C 02   STA &020C
     1958   AD 7D 19   LDA &197D
     195B   8D 0D 02   STA &020D
.op2
.checkRkey
     195E   A2 CC      LDX #&CC
     1960   20 31 19   JSR &1931
     1963   D0 0F      BNE &1974
.op3
     1965   A9 81      LDA #&81
     1967   A0 01      LDY #&01
     1969   A2 00      LDX #&00
     196B   20 F4 FF   JSR &FFF4
     196E   B0 F5      BCS &1965
     1970   E0 52      CPX #&52
     1972   F0 F1      BEQ &1965
.op5
.checkKeyComplete
     1974   60         RTS
.mute
     1975   C9 07      CMP #&07
     1977   F0 FB      BEQ &1974
.mu1
     1979   6C 7C 19   JMP (&197C)
.soun
     197C   EB E7
.end_SS_03
.end_SS_03 =  &197E 
.mini
.plot_gun_life_indicator
     197E   A9 10      LDA #&10
     1980   85 82      STA &82
     1982   A9 21      LDA #&21
     1984   85 83      STA &83
     1986   AD 57 25   LDA &2557
     1989   85 80      STA &80
     198B   AD 58 25   LDA &2558
     198E   85 81      STA &81
     1990   4C 56 1C   JMP &1C56
.gun_hit_display
.h0
     1993   A9 20      LDA #&20
     1995   2C 5E 2D   BIT &2D5E
     1998   D0 06      BNE &19A0
     199A   AD 55 25   LDA &2555
     199D   D0 34      BNE &19D3
.hreturn
     199F   60         RTS
.h1
     19A0   A2 00      LDX #&00
     19A2   A0 07      LDY #&07
     19A4   20 00 26   JSR &2600
     19A7   A9 07      LDA #&07
     19A9   A0 2D      LDY #&2D
     19AB   A2 E0      LDX #&E0
     19AD   20 F1 FF   JSR &FFF1
     19B0   A9 FF      LDA #&FF
     19B2   8D 55 25   STA &2555
     19B5   A9 60      LDA #&60
     19B7   8D 92 2A   STA &2A92
     19BA   8D 1E 28   STA &281E
     19BD   8D 51 26   STA &2651
     19C0   8D 42 27   STA &2742
     19C3   20 B7 26   JSR &26B7
     19C6   A9 22      LDA #&22
     19C8   8D BB 26   STA &26BB
     19CB   A9 10      LDA #&10
     19CD   8D BA 26   STA &26BA
     19D0   4C B7 26   JMP &26B7
.h12
     19D3   CE 55 25   DEC &2555
     19D6   AD 55 25   LDA &2555
     19D9   C9 FE      CMP #&FE
     19DB   D0 07      BNE &19E4
     19DD   A2 00      LDX #&00
     19DF   A0 00      LDY #&00
     19E1   4C 00 26   JMP &2600
.h3
     19E4   C9 DC      CMP #&DC
     19E6   D0 0B      BNE &19F3
     19E8   20 B7 26   JSR &26B7
     19EB   A9 38      LDA #&38
     19ED   8D BA 26   STA &26BA
     19F0   4C B7 26   JMP &26B7
.h4
     19F3   C9 8C      CMP #&8C
     19F5   D0 0B      BNE &1A02
     19F7   20 B7 26   JSR &26B7
     19FA   A9 60      LDA #&60
     19FC   8D BA 26   STA &26BA
     19FF   4C B7 26   JMP &26B7
.h5
     1A02   C9 01      CMP #&01
     1A04   D0 99      BNE &199F
     1A06   CE 56 25   DEC &2556
     1A09   D0 03      BNE &1A0E
     1A0B   4C 26 11   JMP &1126
.h5a
     1A0E   20 B7 26   JSR &26B7
     1A11   20 D8 16   JSR &16D8
     1A14   AC 01 2D   LDY &2D01
.h6
     1A17   B1 75      LDA (&75),Y
     1A19   C9 C0      CMP #&C0
     1A1B   D0 19      BNE &1A36
     1A1D   88         DEY
     1A1E   B1 75      LDA (&75),Y
     1A20   10 15      BPL &1A37
     1A22   49 80      EOR #&80
     1A24   91 75      STA (&75),Y
     1A26   88         DEY
     1A27   B1 75      LDA (&75),Y
     1A29   85 79      STA &79
     1A2B   88         DEY
     1A2C   B1 75      LDA (&75),Y
     1A2E   85 78      STA &78
     1A30   20 55 2A   JSR &2A55
     1A33   4C 39 1A   JMP &1A39
.h8
     1A36   88         DEY
.h9
     1A37   88         DEY
     1A38   88         DEY
.h10
     1A39   88         DEY
     1A3A   88         DEY
     1A3B   D0 DA      BNE &1A17
.h7
     1A3D   A9 EA      LDA #&EA
     1A3F   8D 92 2A   STA &2A92
     1A42   8D 42 27   STA &2742
     1A45   8D 1E 28   STA &281E
     1A48   8D 51 26   STA &2651
     1A4B   38         SEC
     1A4C   AD 57 25   LDA &2557
     1A4F   E9 18      SBC #&18
     1A51   8D 57 25   STA &2557
     1A54   4C 7E 19   JMP &197E
.end_PIG_01
.end_PIG-01 =  &1A57 
.nl
     1A57   0D
     1A58   4A
     1A59   18
     1A5A   8C
     1A5B   8E
     1A5C   1C
     1A5D   8A
     1A5E   84
     1A5F   14
     1A60   82
     1A61   20
     1A62   44
     1A63   05
     1A64   00
     1A65   48
     1A66   18
     1A67   86
     1A68   84
     1A69   14
     1A6A   86
     1A6B   84
     1A6C   14
     1A6D   88
     1A6E   2A
     1A6F   4E
     1A70   05
     1A71   00
     1A72   4A
     1A73   18
     1A74   8C
     1A75   8E
     1A76   1C
     1A77   8A
     1A78   84
     1A79   14
     1A7A   82
     1A7B   20
     1A7C   44
     1A7D   00
     1A7E   44
     1A7F   42
     1A80   42
     1A81   44
     1A82   46
     1A83   24
     1A84   14
     1A85   05
     1A86   00
.tl
     1A87   65
     1A88   17
     1A89   5D
     1A8A   05
     1A8B   59
     1A8C   0A
     1A8D   65
     1A8E   05
     1A8F   79
     1A90   0A
     1A91   81
     1A92   05
     1A93   89
     1A94   1E
     1A95   79
     1A96   1E
     1A97   00
     1A98   6D
     1A99   17
     1A9A   75
     1A9B   05
     1A9C   79
     1A9D   0A
     1A9E   75
     1A9F   05
     1AA0   79
     1AA1   0A
     1AA2   6D
     1AA3   05
     1AA4   65
     1AA5   1E
     1AA6   59
     1AA7   1E
     1AA8   00
     1AA9   65
     1AAA   17
     1AAB   5D
     1AAC   05
     1AAD   59
     1AAE   0A
     1AAF   65
     1AB0   05
     1AB1   79
     1AB2   0A
     1AB3   81
     1AB4   05
     1AB5   89
     1AB6   1E
     1AB7   79
     1AB8   0F
     1AB9   00
     1ABA   79
     1ABB   0F
     1ABC   81
     1ABD   0F
     1ABE   81
     1ABF   0F
     1AC0   79
     1AC1   0F
     1AC2   75
     1AC3   0F
     1AC4   79
     1AC5   1E
     1AC6   00
     1AC7   59
     1AC8   05
     1AC9   59
     1ACA   05
     1ACB   59
     1ACC   05
     1ACD   49
     1ACE   0F
     1ACF   00
     1AD0   41
     1AD1   05
     1AD2   35
     1AD3   0A
     1AD4   39
     1AD5   05
     1AD6   3D
     1AD7   05
     1AD8   41
     1AD9   05
     1ADA   65
     1ADB   0A
     1ADC   65
     1ADD   0A
     1ADE   55
     1ADF   14
     1AE0   00
     1AE1   14
     1AE2   00
.pg
     1AE3   A9 23      LDA #&23
     1AE5   85 83      STA &83
     1AE7   AD 65 2D   LDA &2D65
     1AEA   D0 77      BNE &1B63
     1AEC   A9 42      LDA #&42
     1AEE   2C 5E 2D   BIT &2D5E
     1AF1   F0 6F      BEQ &1B62
     1AF3   A9 02      LDA #&02
     1AF5   2C 54 25   BIT &2554
     1AF8   F0 1F      BEQ &1B19
.pig_init_right
     1AFA   A9 23      LDA #&23
     1AFC   85 83      STA &83
     1AFE   8D E4 1A   STA &1AE4
     1B01   A9 68      LDA #&68
     1B03   8D 64 2D   STA &2D64
     1B06   85 80      STA &80
     1B08   A9 00      LDA #&00
     1B0A   8D 04 1C   STA &1C04
     1B0D   A9 4C      LDA #&4C
     1B0F   8D 67 2D   STA &2D67
     1B12   A9 4B      LDA #&4B
     1B14   8D 41 1B   STA &1B41
     1B17   D0 1B      BNE &1B34
.pgl
.pig_init_left
     1B19   A9 22      LDA #&22
     1B1B   85 83      STA &83
     1B1D   8D E4 1A   STA &1AE4
     1B20   A9 00      LDA #&00
     1B22   8D 64 2D   STA &2D64
     1B25   85 80      STA &80
     1B27   8D 67 2D   STA &2D67
     1B2A   A9 4C      LDA #&4C
     1B2C   8D 04 1C   STA &1C04
     1B2F   A9 49      LDA #&49
     1B31   8D 41 1B   STA &1B41
.b3
     1B34   A9 00      LDA #&00
     1B36   85 7C      STA &7C
     1B38   EE 54 25   INC &2554
     1B3B   A9 07      LDA #&07
     1B3D   25 7D      AND &7D
     1B3F   AA         TAX
     1B40   A9 4B      LDA #&4B
     1B42   18         CLC
.b5
     1B43   69 05      ADC #&05
     1B45   A8         TAY
     1B46   A5 7C      LDA &7C
     1B48   69 10      ADC #&10
     1B4A   85 7C      STA &7C
     1B4C   98         TYA
     1B4D   CA         DEX
     1B4E   10 F3      BPL &1B43
     1B50   8D 65 2D   STA &2D65
     1B53   85 81      STA &81
     1B55   A2 02      LDX #&02
     1B57   8E 66 2D   STX &2D66
     1B5A   BD 56 2D   LDA &2D56,X
     1B5D   85 82      STA &82
     1B5F   4C 56 1C   JMP &1C56
.ep
     1B62   60         RTS
.pgb0
     1B63   AD 64 2D   LDA &2D64
     1B66   85 80      STA &80
     1B68   AD 65 2D   LDA &2D65
     1B6B   85 81      STA &81
     1B6D   10 18      BPL &1B87
     1B6F   CE 66 2D   DEC &2D66
     1B72   D0 EE      BNE &1B62
     1B74   49 80      EOR #&80
     1B76   85 81      STA &81
     1B78   A9 10      LDA #&10
     1B7A   0D 5E 2D   ORA &2D5E
     1B7D   8D 5E 2D   STA &2D5E
     1B80   A9 00      LDA #&00
     1B82   8D 65 2D   STA &2D65
     1B85   F0 4C      BEQ &1BD3
.pgb1
     1B87   AD 66 2D   LDA &2D66
     1B8A   29 7F      AND #&7F
     1B8C   AA         TAX
     1B8D   BD 56 2D   LDA &2D56,X
     1B90   85 82      STA &82
     1B92   A0 00      LDY #&00
     1B94   B1 8A      LDA (&8A),Y
     1B96   85 70      STA &70
.pgh
     1B98   C8         INY
     1B99   B1 8A      LDA (&8A),Y
     1B9B   38         SEC
     1B9C   E5 7C      SBC &7C
     1B9E   30 4C      BMI &1BEC
     1BA0   C9 07      CMP #&07
     1BA2   10 48      BPL &1BEC
     1BA4   C8         INY
     1BA5   C8         INY
     1BA6   B1 8A      LDA (&8A),Y
     1BA8   F0 44      BEQ &1BEE
     1BAA   C8         INY
     1BAB   B1 8A      LDA (&8A),Y
     1BAD   38         SEC
     1BAE   ED 67 2D   SBC &2D67
     1BB1   30 3C      BMI &1BEF
     1BB3   C9 03      CMP #&03
     1BB5   10 38      BPL &1BEF
     1BB7   A9 E8      LDA #&E8
     1BB9   91 8A      STA (&8A),Y
     1BBB   AA         TAX
     1BBC   A9 07      LDA #&07
     1BBE   A0 2D      LDY #&2D
     1BC0   20 F1 FF   JSR &FFF1
     1BC3   A9 10      LDA #&10
     1BC5   8D 66 2D   STA &2D66
     1BC8   A9 80      LDA #&80
     1BCA   0D 65 2D   ORA &2D65
     1BCD   8D 65 2D   STA &2D65
     1BD0   20 56 1C   JSR &1C56
.bx
     1BD3   A9 23      LDA #&23
     1BD5   85 83      STA &83
     1BD7   A9 70      LDA #&70
     1BD9   85 82      STA &82
     1BDB   4C 56 1C   JMP &1C56
.b9
     1BDE   A9 04      LDA #&04
     1BE0   0D 5E 2D   ORA &2D5E
     1BE3   8D 5E 2D   STA &2D5E
     1BE6   A9 00      LDA #&00
     1BE8   8D 65 2D   STA &2D65
.x
     1BEB   60         RTS
.pgnh
     1BEC   C8         INY
     1BED   C8         INY
     1BEE   C8         INY
     1BEF   C4 70      CPY &70
     1BF1   30 A5      BMI &1B98
     1BF3   A9 80      LDA #&80
     1BF5   4D 66 2D   EOR &2D66
     1BF8   8D 66 2D   STA &2D66
     1BFB   30 EE      BMI &1BEB
     1BFD   20 56 1C   JSR &1C56
     1C00   AD 67 2D   LDA &2D67
.xps
     1C03   C9 00      CMP #&00
     1C05   F0 D7      BEQ &1BDE
     1C07   29 1F      AND #&1F
     1C09   D0 09      BNE &1C14
     1C0B   A9 07      LDA #&07
     1C0D   A0 2D      LDY #&2D
     1C0F   A2 F0      LDX #&F0
     1C11   20 F1 FF   JSR &FFF1
.b6
     1C14   AE 66 2D   LDX &2D66
     1C17   CA         DEX
     1C18   10 02      BPL &1C1C
     1C1A   A2 07      LDX #&07
.b7
     1C1C   8E 66 2D   STX &2D66
     1C1F   BD 56 2D   LDA &2D56,X
     1C22   85 82      STA &82
     1C24   AD 04 1C   LDA &1C04
     1C27   F0 18      BEQ &1C41
     1C29   EE 67 2D   INC &2D67
     1C2C   18         CLC
     1C2D   AD 64 2D   LDA &2D64
     1C30   69 08      ADC #&08
     1C32   8D 64 2D   STA &2D64
     1C35   85 80      STA &80
     1C37   90 1D      BCC &1C56
     1C39   EE 65 2D   INC &2D65
     1C3C   E6 81      INC &81
     1C3E   4C 56 1C   JMP &1C56
.b10
     1C41   CE 67 2D   DEC &2D67
     1C44   38         SEC
     1C45   AD 64 2D   LDA &2D64
     1C48   E9 08      SBC #&08
     1C4A   8D 64 2D   STA &2D64
     1C4D   85 80      STA &80
     1C4F   B0 05      BCS &1C56
     1C51   CE 65 2D   DEC &2D65
     1C54   C6 81      DEC &81
.plot_pigeon_sprite
.pb
     1C56   A0 17      LDY #&17
.b8
     1C58   B1 82      LDA (&82),Y
     1C5A   51 80      EOR (&80),Y
     1C5C   91 80      STA (&80),Y
     1C5E   88         DEY
     1C5F   10 F7      BPL &1C58
     1C61   60         RTS
.ddu1
.plane_hit
     1C62   AC 5B 25   LDY &255B
     1C65   C0 09      CPY #&09
     1C67   10 23      BPL &1C8C
     1C69   B9 40 25   LDA &2540,Y
     1C6C   85 80      STA &80
     1C6E   C8         INY
     1C6F   B9 40 25   LDA &2540,Y
     1C72   85 81      STA &81
     1C74   C8         INY
     1C75   8C 5B 25   STY &255B
     1C78   A0 04      LDY #&04
     1C7A   A9 55      LDA #&55
.ddu2
     1C7C   91 80      STA (&80),Y
     1C7E   88         DEY
     1C7F   10 FB      BPL &1C7C
     1C81   A0 09      LDY #&09
     1C83   0A         ASL A
     1C84   91 80      STA (&80),Y
     1C86   A0 01      LDY #&01
     1C88   A9 FF      LDA #&FF
     1C8A   91 80      STA (&80),Y
.ddu3
     1C8C   60         RTS
.random1
     1C8D   A5 7D      LDA &7D
     1C8F   29 48      AND #&48
     1C91   69 38      ADC #&38
     1C93   0A         ASL A
     1C94   0A         ASL A
     1C95   26 7F      ROL &7F
     1C97   26 7E      ROL &7E
     1C99   26 7D      ROL &7D
     1C9B   A5 7D      LDA &7D
     1C9D   60         RTS
.draw_backgnd_art
     1C9E   A0 00      LDY #&00
.draw_line_art_loop
     1CA0   B9 85 1D   LDA &1D85,Y
     1CA3   20 EE FF   JSR &FFEE
     1CA6   C8         INY
     1CA7   D0 F7      BNE &1CA0
     1CA9   A5 88      LDA &88
     1CAB   85 82      STA &82
     1CAD   A5 89      LDA &89
     1CAF   85 83      STA &83
     1CB1   A9 1F      LDA #&1F
     1CB3   8D 6B 2A   STA &2A6B
     1CB6   A9 C0      LDA #&C0
     1CB8   85 70      STA &70
     1CBA   A0 00      LDY #&00
.draw_backgnd_sprite_loop
     1CBC   C8         INY
     1CBD   BE 98 1E   LDX &1E98,Y
     1CC0   C8         INY
     1CC1   B9 98 1E   LDA &1E98,Y
     1CC4   24 70      BIT &70
     1CC6   D0 0C      BNE &1CD4
     1CC8   85 89      STA &89
     1CCA   86 88      STX &88
     1CCC   C8         INY
     1CCD   BE 98 1E   LDX &1E98,Y
     1CD0   C8         INY
     1CD1   B9 98 1E   LDA &1E98,Y
.skip1
     1CD4   86 78      STX &78
     1CD6   85 79      STA &79
     1CD8   20 55 2A   JSR &2A55
     1CDB   CC 98 1E   CPY &1E98
     1CDE   30 DC      BMI &1CBC
     1CE0   A9 3F      LDA #&3F
     1CE2   8D 6B 2A   STA &2A6B
     1CE5   A5 82      LDA &82
     1CE7   85 88      STA &88
     1CE9   A5 83      LDA &83
     1CEB   85 89      STA &89
     1CED   60         RTS
     1CEE   00         BRK
.plot_clouds
     1CEF   A9 44      LDA #&44
     1CF1   85 79      STA &79
     1CF3   A9 FF      LDA #&FF
     1CF5   A2 05      LDX #&05
.mid_outer_loop
     1CF7   A0 00      LDY #&00
     1CF9   84 78      STY &78
.mid_inner_loop
     1CFB   91 78      STA (&78),Y
     1CFD   C8         INY
     1CFE   D0 FB      BNE &1CFB
     1D00   E6 79      INC &79
     1D02   CA         DEX
     1D03   D0 F2      BNE &1CF7
     1D05   A0 1F      LDY #&1F
.cloud_loop2
     1D07   B9 E0 2E   LDA &2EE0,Y
     1D0A   91 78      STA (&78),Y
     1D0C   88         DEY
     1D0D   10 F8      BPL &1D07
     1D0F   A9 2E      LDA #&2E
     1D11   85 7B      STA &7B
     1D13   A9 20      LDA #&20
     1D15   85 78      STA &78
     1D17   A2 08      LDX #&08
.next_cloud_sprite
     1D19   BD 4D 2D   LDA &2D4D,X
     1D1C   85 7A      STA &7A
     1D1E   A0 3F      LDY #&3F
.next_cloud_byte
     1D20   B1 7A      LDA (&7A),Y
     1D22   91 78      STA (&78),Y
     1D24   88         DEY
     1D25   10 F9      BPL &1D20
     1D27   18         CLC
     1D28   A5 78      LDA &78
     1D2A   69 40      ADC #&40
     1D2C   85 78      STA &78
     1D2E   90 02      BCC &1D32
     1D30   E6 79      INC &79
.skip1
     1D32   CA         DEX
     1D33   10 E4      BPL &1D19
     1D35   A0 1F      LDY #&1F
.loop32
     1D37   B9 C0 2E   LDA &2EC0,Y
     1D3A   91 78      STA (&78),Y
     1D3C   88         DEY
     1D3D   10 F8      BPL &1D37
.mirror_loop_1
     1D3F   A0 00      LDY #&00
.mirror_loop_2
     1D41   A2 07      LDX #&07
.mirror_loop_3
.modify_lower_dest_addr
     1D43   B9 00 49   LDA &4900,Y
.modify_upper_dest_addr
     1D46   9D 80 41   STA &4180,X
     1D49   C8         INY
     1D4A   CA         DEX
     1D4B   10 F6      BPL &1D43
     1D4D   18         CLC
     1D4E   AD 47 1D   LDA &1D47
     1D51   69 08      ADC #&08
     1D53   8D 47 1D   STA &1D47
     1D56   90 03      BCC &1D5B
     1D58   EE 48 1D   INC &1D48
.skip2
     1D5B   C0 80      CPY #&80
     1D5D   D0 E2      BNE &1D41
     1D5F   AD 44 1D   LDA &1D44
     1D62   49 80      EOR #&80
     1D64   8D 44 1D   STA &1D44
     1D67   30 03      BMI &1D6C
     1D69   EE 45 1D   INC &1D45
.skip3
     1D6C   A9 44      LDA #&44
     1D6E   CD 48 1D   CMP &1D48
     1D71   D0 CC      BNE &1D3F
     1D73   8C 47 1D   STY &1D47
     1D76   E8         INX
     1D77   8E 44 1D   STX &1D44
     1D7A   A9 49      LDA #&49
     1D7C   8D 45 1D   STA &1D45
     1D7F   A9 41      LDA #&41
     1D81   8D 48 1D   STA &1D48
     1D84   60         RTS
.scenery_line_art
     1D85   12
     1D86   00
     1D87   06
     1D88   19
     1D89   04
     1D8A   00
     1D8B   00
     1D8C   13
     1D8D   00
     1D8E   19
     1D8F   05
     1D90   04
     1D91   01
     1D92   17
     1D93   00
     1D94   19
     1D95   05
     1D96   2C
     1D97   01
     1D98   3C
     1D99   00
     1D9A   19
     1D9B   04
     1D9C   7E
     1D9D   04
     1D9E   3E
     1D9F   00
     1DA0   19
     1DA1   05
     1DA2   1A
     1DA3   04
     1DA4   20
     1DA5   00
     1DA6   19
     1DA7   05
     1DA8   84
     1DA9   03
     1DAA   20
     1DAB   00
     1DAC   19
     1DAD   05
     1DAE   52
     1DAF   03
     1DB0   28
     1DB1   00
     1DB2   19
     1DB3   05
     1DB4   20
     1DB5   03
     1DB6   38
     1DB7   00
     1DB8   19
     1DB9   05
     1DBA   16
     1DBB   03
     1DBC   46
     1DBD   00
     1DBE   19
     1DBF   05
     1DC0   16
     1DC1   03
     1DC2   52
     1DC3   00
     1DC4   19
     1DC5   05
     1DC6   20
     1DC7   03
     1DC8   60
     1DC9   00
     1DCA   19
     1DCB   05
     1DCC   52
     1DCD   03
     1DCE   74
     1DCF   00
     1DD0   19
     1DD1   05
     1DD2   BB
     1DD3   03
     1DD4   7C
     1DD5   00
     1DD6   19
     1DD7   04
     1DD8   7E
     1DD9   04
     1DDA   42
     1DDB   00
     1DDC   19
     1DDD   15
     1DDE   1A
     1DDF   04
     1DE0   24
     1DE1   00
     1DE2   19
     1DE3   15
     1DE4   84
     1DE5   03
     1DE6   24
     1DE7   00
     1DE8   19
     1DE9   15
     1DEA   52
     1DEB   03
     1DEC   2C
     1DED   00
     1DEE   19
     1DEF   15
     1DF0   20
     1DF1   03
     1DF2   3C
     1DF3   00
     1DF4   19
     1DF5   04
     1DF6   20
     1DF7   03
     1DF8   64
     1DF9   00
     1DFA   19
     1DFB   15
     1DFC   52
     1DFD   03
     1DFE   78
     1DFF   00
     1E00   19
     1E01   15
     1E02   BB
     1E03   03
     1E04   80
     1E05   00
     1E06   12
     1E07   00
     1E08   02
     1E09   19
     1E0A   04
     1E0B   00
     1E0C   05
     1E0D   17
     1E0E   00
     1E0F   19
     1E10   05
     1E11   C4
     1E12   04
     1E13   28
     1E14   00
     1E15   19
     1E16   04
     1E17   E2
     1E18   04
     1E19   1C
     1E1A   00
     1E1B   19
     1E1C   05
     1E1D   DE
     1E1E   03
     1E1F   38
     1E20   00
     1E21   19
     1E22   04
     1E23   80
     1E24   02
     1E25   82
     1E26   00
     1E27   19
     1E28   05
     1E29   48
     1E2A   03
     1E2B   0E
     1E2C   01
     1E2D   19
     1E2E   05
     1E2F   AC
     1E30   03
     1E31   45
     1E32   01
     1E33   19
     1E34   05
     1E35   1A
     1E36   04
     1E37   4A
     1E38   01
     1E39   19
     1E3A   05
     1E3B   00
     1E3C   05
     1E3D   AE
     1E3E   01
     1E3F   19
     1E40   04
     1E41   2C
     1E42   01
     1E43   C8
     1E44   00
     1E45   19
     1E46   05
     1E47   8A
     1E48   02
     1E49   40
     1E4A   01
     1E4B   19
     1E4C   05
     1E4D   3E
     1E4E   03
     1E4F   04
     1E50   01
     1E51   19
     1E52   04
     1E53   F4
     1E54   01
     1E55   64
     1E56   00
     1E57   19
     1E58   05
     1E59   FA
     1E5A   00
     1E5B   DC
     1E5C   00
     1E5D   19
     1E5E   05
     1E5F   8C
     1E60   00
     1E61   54
     1E62   01
     1E63   19
     1E64   05
     1E65   00
     1E66   00
     1E67   68
     1E68   01
     1E69   12
     1E6A   00
     1E6B   04
     1E6C   19
     1E6D   04
     1E6E   9E
     1E6F   02
     1E70   96
     1E71   00
     1E72   19
     1E73   15
     1E74   F4
     1E75   01
     1E76   78
     1E77   00
     1E78   19
     1E79   05
     1E7A   58
     1E7B   02
     1E7C   64
     1E7D   00
     1E7E   19
     1E7F   05
     1E80   90
     1E81   01
     1E82   5A
     1E83   00
     1E84   00
     1E85   7D
     1E86   2D
     1E87   20
     1E88   13
     1E89   28
     1E8A   A9
     1E8B   09
     1E8C   85
     1E8D   83
     1E8E   A9
     1E8F   F0
     1E90   85
     1E91   82
     1E92   4C
     1E93   13
     1E94   28
     1E95   A9
     1E96   00
     1E97   8D
.backgnd_sprite_addr_table
     1E98   58
     1E99   A0 24
     1E9B   93 73
     1E9D   49 71
     1E9F   60 76
     1EA1   99 75
     1EA3   44 73
     1EA5   C9 78
     1EA7   B4 76
     1EA9   C0 24
     1EAB   13 76
     1EAD   93 78
     1EAF   C9 73
     1EB1   49 76
     1EB3   E0 78
     1EB5   44 78
     1EB7   C4 75
     1EB9   E0 24
     1EBB   13 7B
     1EBD   4A 7B
     1EBF   60 7B
     1EC1   C4 7A
     1EC3   00 25
     1EC5   B0 78
     1EC7   20 78
     1EC9   5C 78
     1ECB   20 25
     1ECD   00 78
     1ECF   88 76
     1ED1   60 25
     1ED3   60 70
     1ED5   80 25
     1ED7   E0 72
     1ED9   60 75
     1EDB   E0 77
     1EDD   80 7A
     1EDF   A0 7A
     1EE1   DC 7A
     1EE3   A0 25
     1EE5   60 7A
     1EE7   30 7B
     1EE9   C0 25
     1EEB   08 79
     1EED   E0 25
     1EEF   28 79
     1EF1   00
.end_PIG_02
.end_PIG-02 =  &1EF2 
.draw_stave
.stv
     1EF2   A0 00      LDY #&00
.stave_loop1
     1EF4   B9 12 1F   LDA &1F12,Y
     1EF7   20 EE FF   JSR &FFEE
     1EFA   C8         INY
     1EFB   C0 09      CPY #&09
     1EFD   D0 F5      BNE &1EF4
     1EFF   A2 05      LDX #&05
.stave_loop2
     1F01   A0 09      LDY #&09
.stave_loop3
     1F03   B9 12 1F   LDA &1F12,Y
     1F06   20 EE FF   JSR &FFEE
     1F09   C8         INY
     1F0A   C0 15      CPY #&15
     1F0C   D0 F5      BNE &1F03
     1F0E   CA         DEX
     1F0F   D0 F0      BNE &1F01
     1F11   60         RTS
.stave_data
.sl
     1F12   12
     1F13   00
     1F14   04
     1F15   19
     1F16   04
     1F17   00
     1F18   01
     1F19   EC
     1F1A   03
     1F1B   19
     1F1C   01
     1F1D   00
     1F1E   03
     1F1F   00
     1F20   00
     1F21   19
     1F22   00
     1F23   00
     1F24   FD
     1F25   F0
     1F26   FF
.end_GG_01
.end_GG-01 =  &1F27 
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
     2832   20 48 2B   JSR &2B48
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
     29B4   8D 51 2B   STA &2B51
     29B7   20 4B 2B   JSR &2B4B
     29BA   4E 51 2B   LSR &2B51
     29BD   18         CLC
     29BE   6D 51 2B   ADC &2B51
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
.mbo
     2AE6   A0 00      LDY #&00
     2AE8   B1 8C      LDA (&8C),Y
     2AEA   85 70      STA &70
     2AEC   AD 96 2D   LDA &2D96
     2AEF   85 82      STA &82
     2AF1   AD 97 2D   LDA &2D97
     2AF4   85 83      STA &83
.ntbo
     2AF6   C8         INY
     2AF7   B1 8C      LDA (&8C),Y
     2AF9   85 80      STA &80
     2AFB   C8         INY
     2AFC   B1 8C      LDA (&8C),Y
     2AFE   85 81      STA &81
     2B00   D0 09      BNE &2B0B
     2B02   A9 7F      LDA #&7F
     2B04   25 73      AND &73
     2B06   85 73      STA &73
     2B08   4C 43 2B   JMP &2B43
.bo1
     2B0B   20 B5 27   JSR &27B5
     2B0E   A5 80      LDA &80
     2B10   29 07      AND #&07
     2B12   C9 06      CMP #&06
     2B14   10 09      BPL &2B1F
     2B16   E6 80      INC &80
     2B18   E6 80      INC &80
     2B1A   A5 81      LDA &81
     2B1C   4C 2C 2B   JMP &2B2C
.bo2
     2B1F   18         CLC
     2B20   A5 80      LDA &80
     2B22   69 7A      ADC #&7A
     2B24   85 80      STA &80
     2B26   A5 81      LDA &81
     2B28   69 02      ADC #&02
     2B2A   85 81      STA &81
.bo4
     2B2C   C9 80      CMP #&80
     2B2E   30 06      BMI &2B36
     2B30   A9 00      LDA #&00
     2B32   91 8C      STA (&8C),Y
     2B34   F0 0D      BEQ &2B43
.bo6
     2B36   20 B5 27   JSR &27B5
     2B39   88         DEY
     2B3A   A5 80      LDA &80
     2B3C   91 8C      STA (&8C),Y
     2B3E   C8         INY
     2B3F   A5 81      LDA &81
     2B41   91 8C      STA (&8C),Y
.bo7
     2B43   C4 70      CPY &70
     2B45   30 AF      BMI &2AF6
     2B47   60         RTS
.ra2
     2B48   8D 51 2B   STA &2B51
     2B4B   38         SEC
     2B4C   A5 7C      LDA &7C
     2B4E   29 7F      AND #&7F
.ra3
     2B50   E9 10      SBC #&10
     2B52   10 FC      BPL &2B50
     2B54   6D 51 2B   ADC &2B51
     2B57   60         RTS
.end_GG_02_code
.end_GG_02_code =  &2B58 
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
.bomb_list
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
