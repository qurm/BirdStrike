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
     112D   20 23 18   JSR &1823
     1130   B9 42 11   LDA &1142,Y
     1133   20 EE FF   JSR &FFEE
     1136   C9 52      CMP #&52
     1138   D0 F0      BNE &112A
     113A   A9 96      LDA #&96
     113C   20 23 18   JSR &1823
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
     1159   20 23 18   JSR &1823
     115C   20 7F 13   JSR &137F
     115F   4C 68 11   JMP &1168
.bon0
     1162   20 47 18   JSR &1847
     1165   20 2E 19   JSR &192E
.bon11
     1168   20 B0 11   JSR &11B0
     116B   A0 4B      LDY #&4B
.bon1
     116D   F8         SED
     116E   18         CLC
     116F   AD 4F 2D   LDA &2D4F
     1172   69 02      ADC #&02
     1174   8D 4F 2D   STA &2D4F
     1177   AD 50 2D   LDA &2D50
     117A   69 00      ADC #&00
     117C   8D 50 2D   STA &2D50
     117F   D8         CLD
     1180   A9 02      LDA #&02
     1182   20 23 18   JSR &1823
     1185   98         TYA
     1186   48         PHA
     1187   A2 E8      LDX #&E8
     1189   A0 2D      LDY #&2D
     118B   A9 07      LDA #&07
     118D   20 F1 FF   JSR &FFF1
     1190   20 97 17   JSR &1797
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
     11A9   0D 4E 2D   ORA &2D4E
     11AC   8D 4E 2D   STA &2D4E
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
     13BC   20 29 1F   JSR &1F29
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
     13EA   20 47 18   JSR &1847
     13ED   8E 8E 1A   STX &1A8E
     13F0   EE 5C 25   INC &255C
.stm8
     13F3   20 66 18   JSR &1866
     13F6   D0 FB      BNE &13F3
     13F8   20 47 18   JSR &1847
     13FB   20 2E 19   JSR &192E
     13FE   A9 3C      LDA #&3C
     1400   20 23 18   JSR &1823
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
     1425   AD 50 2D   LDA &2D50
     1428   CD D0 11   CMP &11D0
     142B   90 19      BCC &1446
     142D   D0 08      BNE &1437
     142F   AD 4F 2D   LDA &2D4F
     1432   CD CF 11   CMP &11CF
     1435   90 0F      BCC &1446
.ge0
     1437   AD 4F 2D   LDA &2D4F
     143A   8D CF 11   STA &11CF
     143D   AD 50 2D   LDA &2D50
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
     14C7   20 23 18   JSR &1823
.space
     14CA   A9 1A      LDA #&1A
     14CC   20 EE FF   JSR &FFEE
     14CF   A2 65      LDX #&65
     14D1   A0 13      LDY #&13
     14D3   20 F2 14   JSR &14F2
.ge4
     14D6   A2 9D      LDX #&9D
     14D8   20 5D 19   JSR &195D
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
     151E   8D B3 19   STA &19B3
     1521   AD 0D 02   LDA &020D
     1524   8D B4 19   STA &19B4
.newgame
     1527   20 20 14   JSR &1420
     152A   20 A2 15   JSR &15A2
.GO
     152D   20 C4 1C   JSR &1CC4
     1530   20 2D 26   JSR &262D
     1533   20 EA 28   JSR &28EA
     1536   20 EE 27   JSR &27EE
     1539   20 51 26   JSR &2651
     153C   20 CA 26   JSR &26CA
     153F   20 46 27   JSR &2746
     1542   20 07 2B   JSR &2B07
     1545   20 69 2A   JSR &2A69
     1548   20 1A 1B   JSR &1B1A
     154B   20 CA 19   JSR &19CA
     154E   20 24 17   JSR &1724
     1551   20 66 19   JSR &1966
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
     158B   06
     158C   08
     158D   0A
     158E   0C
     158F   0C
     1590   0C
     1591   0C
.level_bomb_interval
     1592   2F
     1593   27
     1594   1F
     1595   17
     1596   0F
     1597   0F
     1598   0F
     1599   0F
.level_bomb_rate
     159A   02
     159B   03
     159C   03
     159D   03
     159E   04
     159F   04
     15A0   04
     15A1   04
.start_game
     15A2   A9 05      LDA #&05
     15A4   85 70      STA &70
     15A6   20 18 26   JSR &2618
     15A9   A9 49      LDA #&49
     15AB   20 2E 19   JSR &192E
     15AE   A9 16      LDA #&16
     15B0   20 EE FF   JSR &FFEE
     15B3   A9 02      LDA #&02
     15B5   20 EE FF   JSR &FFEE
     15B8   A9 00      LDA #&00
     15BA   8D FF 17   STA &17FF
     15BD   85 8E      STA &8E
     15BF   8D 5C 25   STA &255C
     15C2   8D 54 25   STA &2554
     15C5   8D 55 25   STA &2555
     15C8   8D 4F 2D   STA &2D4F
     15CB   8D 50 2D   STA &2D50
     15CE   85 88      STA &88
     15D0   85 52      STA &52
     15D2   85 53      STA &53
     15D4   85 54      STA &54
     15D6   85 55      STA &55
     15D8   85 56      STA &56
     15DA   85 57      STA &57
     15DC   18         CLC
     15DD   A9 03      LDA #&03
     15DF   8D 52 2D   STA &2D52
     15E2   A9 2A      LDA #&2A
     15E4   8D 53 2D   STA &2D53
     15E7   A9 02      LDA #&02
     15E9   85 71      STA &71
     15EB   A9 F0      LDA #&F0
     15ED   85 8A      STA &8A
     15EF   A9 2C      LDA #&2C
     15F1   85 8B      STA &8B
     15F3   A9 01      LDA #&01
     15F5   85 75      STA &75
     15F7   A9 2D      LDA #&2D
     15F9   85 76      STA &76
     15FB   A2 0F      LDX #&0F
     15FD   A0 07      LDY #&07
.co1
     15FF   20 00 26   JSR &2600
     1602   CA         DEX
     1603   E0 07      CPX #&07
     1605   D0 F8      BNE &15FF
     1607   86 7D      STX &7D
     1609   A9 00      LDA #&00
     160B   8D 99 26   STA &2699
     160E   A9 03      LDA #&03
     1610   8D 56 25   STA &2556
     1613   A9 2F      LDA #&2F
     1615   85 89      STA &89
.bf
     1617   20 47 18   JSR &1847
     161A   8E 8E 1A   STX &1A8E
     161D   EE 5C 25   INC &255C
     1620   A0 4C      LDY #&4C
.b1
     1622   99 F0 2C   STA &2CF0,Y
     1625   88         DEY
     1626   D0 FA      BNE &1622
.b0
     1628   A9 0C      LDA #&0C
     162A   20 EE FF   JSR &FFEE
     162D   A9 9A      LDA #&9A
     162F   A2 14      LDX #&14
     1631   20 F4 FF   JSR &FFF4
     1634   20 26 1D   JSR &1D26
     1637   20 D5 1C   JSR &1CD5
     163A   20 29 1F   JSR &1F29
     163D   20 97 17   JSR &1797
     1640   A9 00      LDA #&00
     1642   8D 5B 25   STA &255B
     1645   8D 4E 2D   STA &2D4E
     1648   8D 55 2D   STA &2D55
     164B   AC 5C 25   LDY &255C
     164E   88         DEY
     164F   B9 72 15   LDA &1572,Y
     1652   8D 51 2D   STA &2D51
     1655   B9 92 15   LDA &1592,Y
     1658   09 C0      ORA #&C0
     165A   8D A7 2D   STA &2DA7
     165D   85 73      STA &73
     165F   38         SEC
     1660   B9 8A 15   LDA &158A,Y
     1663   E9 02      SBC #&02
     1665   85 51      STA &51
     1667   B9 9A 15   LDA &159A,Y
     166A   8D 91 2B   STA &2B91
     166D   18         CLC
     166E   69 78      ADC #&78
     1670   8D 93 2B   STA &2B93
     1673   49 07      EOR #&07
     1675   29 07      AND #&07
     1677   AA         TAX
     1678   E8         INX
     1679   8E 92 2B   STX &2B92
     167C   B9 7A 15   LDA &157A,Y
     167F   8D F0 2C   STA &2CF0
     1682   A9 1E      LDA #&1E
     1684   8D 01 2D   STA &2D01
     1687   A9 88      LDA #&88
     1689   8D 59 25   STA &2559
     168C   A9 30      LDA #&30
     168E   8D 5A 25   STA &255A
     1691   A9 80      LDA #&80
     1693   8D 57 25   STA &2557
     1696   A9 32      LDA #&32
     1698   8D 58 25   STA &2558
     169B   AE 56 25   LDX &2556
.pmi
     169E   20 B5 19   JSR &19B5
     16A1   18         CLC
     16A2   AD 57 25   LDA &2557
     16A5   69 18      ADC #&18
     16A7   8D 57 25   STA &2557
     16AA   CA         DEX
     16AB   D0 F1      BNE &169E
     16AD   A9 3A      LDA #&3A
     16AF   85 81      STA &81
     16B1   A9 81      LDA #&81
     16B3   85 82      STA &82
     16B5   A2 01      LDX #&01
     16B7   A0 08      LDY #&08
.pp1
     16B9   A9 81      LDA #&81
     16BB   9D 01 2D   STA &2D01,X
     16BE   E8         INX
     16BF   98         TYA
     16C0   18         CLC
     16C1   69 50      ADC #&50
     16C3   9D 01 2D   STA &2D01,X
     16C6   A8         TAY
     16C7   E8         INX
     16C8   A5 81      LDA &81
     16CA   69 00      ADC #&00
     16CC   9D 01 2D   STA &2D01,X
     16CF   85 81      STA &81
     16D1   18         CLC
     16D2   E8         INX
     16D3   A5 82      LDA &82
     16D5   69 0A      ADC #&0A
     16D7   85 82      STA &82
     16D9   9D 01 2D   STA &2D01,X
     16DC   E8         INX
     16DD   A9 D0      LDA #&D0
     16DF   9D 01 2D   STA &2D01,X
     16E2   E8         INX
     16E3   E0 1F      CPX #&1F
     16E5   30 D2      BMI &16B9
     16E7   A0 00      LDY #&00
     16E9   B1 75      LDA (&75),Y
     16EB   85 70      STA &70
.slop
     16ED   C8         INY
     16EE   C8         INY
     16EF   B1 75      LDA (&75),Y
     16F1   85 78      STA &78
     16F3   C8         INY
     16F4   B1 75      LDA (&75),Y
     16F6   85 79      STA &79
     16F8   20 28 2A   JSR &2A28
     16FB   C8         INY
     16FC   C8         INY
     16FD   C4 70      CPY &70
     16FF   30 EC      BMI &16ED
     1701   20 74 1A   JSR &1A74
.sgun
.player_gun_initialise
     1704   A9 20      LDA #&20
     1706   8D A6 2D   STA &2DA6
     1709   A9 7E      LDA #&7E
     170B   85 87      STA &87
     170D   A9 90      LDA #&90
     170F   85 86      STA &86
     1711   A9 20      LDA #&20
     1713   8D BF 26   STA &26BF
     1716   A9 58      LDA #&58
     1718   8D BE 26   STA &26BE
     171B   20 BB 26   JSR &26BB
     171E   A9 40      LDA #&40
     1720   4C 2E 19   JMP &192E
.score_exit
     1723   60         RTS
.sor
     1724   AD 4E 2D   LDA &2D4E
     1727   F0 FA      BEQ &1723
     1729   F8         SED
     172A   29 02      AND #&02
     172C   F0 14      BEQ &1742
     172E   18         CLC
     172F   A9 15      LDA #&15
     1731   6D 4F 2D   ADC &2D4F
     1734   8D 4F 2D   STA &2D4F
     1737   AD 50 2D   LDA &2D50
     173A   69 00      ADC #&00
     173C   8D 50 2D   STA &2D50
     173F   20 99 1C   JSR &1C99
.s1
     1742   A9 40      LDA #&40
     1744   2C 4E 2D   BIT &2D4E
     1747   F0 1C      BEQ &1765
     1749   18         CLC
     174A   A9 01      LDA #&01
.wng
     174C   6D 4F 2D   ADC &2D4F
     174F   8D 4F 2D   STA &2D4F
     1752   AD 50 2D   LDA &2D50
     1755   69 00      ADC #&00
     1757   8D 50 2D   STA &2D50
     175A   D8         CLD
     175B   A2 C8      LDX #&C8
     175D   A0 2D      LDY #&2D
     175F   A9 07      LDA #&07
     1761   20 F1 FF   JSR &FFF1
     1764   F8         SED
.s4
     1765   A9 10      LDA #&10
     1767   2C 4E 2D   BIT &2D4E
     176A   F0 1A      BEQ &1786
     176C   18         CLC
     176D   A9 0A      LDA #&0A
.pig
     176F   6D 4F 2D   ADC &2D4F
     1772   8D 4F 2D   STA &2D4F
     1775   AD 50 2D   LDA &2D50
     1778   69 00      ADC #&00
     177A   8D 50 2D   STA &2D50
     177D   D8         CLD
     177E   20 66 18   JSR &1866
     1781   D0 03      BNE &1786
     1783   20 50 11   JSR &1150
.s2
     1786   D8         CLD
     1787   20 D0 17   JSR &17D0
     178A   AD 4E 2D   LDA &2D4E
     178D   10 03      BPL &1792
     178F   4C 33 18   JMP &1833
.s3
     1792   A9 00      LDA #&00
     1794   8D 4E 2D   STA &2D4E
.s7
.score_update_screen
     1797   A9 34      LDA #&34
     1799   85 81      STA &81
     179B   A9 B0      LDA #&B0
     179D   85 80      STA &80
     179F   A9 24      LDA #&24
     17A1   85 83      STA &83
     17A3   A9 F0      LDA #&F0
     17A5   2D 50 2D   AND &2D50
     17A8   20 3D 26   JSR &263D
     17AB   A9 0F      LDA #&0F
     17AD   2D 50 2D   AND &2D50
     17B0   0A         ASL A
     17B1   0A         ASL A
     17B2   0A         ASL A
     17B3   0A         ASL A
     17B4   20 3D 26   JSR &263D
     17B7   A9 F0      LDA #&F0
     17B9   2D 4F 2D   AND &2D4F
     17BC   20 3D 26   JSR &263D
     17BF   A9 0F      LDA #&0F
     17C1   2D 4F 2D   AND &2D4F
     17C4   0A         ASL A
     17C5   0A         ASL A
     17C6   0A         ASL A
     17C7   0A         ASL A
     17C8   20 3D 26   JSR &263D
     17CB   A9 00      LDA #&00
     17CD   4C 3D 26   JMP &263D
.extra_player_check
.exg
     17D0   A9 01      LDA #&01
     17D2   2C FF 17   BIT &17FF
     17D5   D0 10      BNE &17E7
     17D7   AC 50 2D   LDY &2D50
     17DA   C0 05      CPY #&05
     17DC   30 20      BMI &17FE
     17DE   0D FF 17   ORA &17FF
     17E1   8D FF 17   STA &17FF
     17E4   20 00 18   JSR &1800
.exg1
     17E7   A9 02      LDA #&02
     17E9   2C FF 17   BIT &17FF
     17EC   D0 10      BNE &17FE
     17EE   AC 50 2D   LDY &2D50
     17F1   C0 10      CPY #&10
     17F3   30 09      BMI &17FE
     17F5   0D FF 17   ORA &17FF
     17F8   8D FF 17   STA &17FF
     17FB   4C 00 18   JMP &1800
.exg2
     17FE   60         RTS
.exg3
     17FF   00
.exg4
     1800   20 B5 19   JSR &19B5
     1803   A9 DC      LDA #&DC
     1805   8D FC 2D   STA &2DFC
     1808   A2 F8      LDX #&F8
     180A   A0 2D      LDY #&2D
     180C   A9 07      LDA #&07
     180E   20 F1 FF   JSR &FFF1
     1811   EE 56 25   INC &2556
     1814   18         CLC
     1815   AD 57 25   LDA &2557
     1818   69 18      ADC #&18
     181A   8D 57 25   STA &2557
     181D   90 03      BCC &1822
     181F   EE 58 25   INC &2558
.exg5
     1822   60         RTS
.delay
     1823   8D 0A 22   STA &220A
     1826   98         TYA
     1827   48         PHA
.del1
     1828   20 2D 26   JSR &262D
     182B   CE 0A 22   DEC &220A
     182E   D0 F8      BNE &1828
     1830   68         PLA
     1831   A8         TAY
     1832   60         RTS
.next_level
.ef
     1833   A9 00      LDA #&00
     1835   8D 4E 2D   STA &2D4E
     1838   18         CLC
     1839   A5 88      LDA &88
     183B   69 40      ADC #&40
     183D   85 88      STA &88
     183F   A9 64      LDA #&64
     1841   20 23 18   JSR &1823
     1844   4C 17 16   JMP &1617
.cht
     1847   A9 03      LDA #&03
     1849   2D 5C 25   AND &255C
     184C   AA         TAX
     184D   D0 03      BNE &1852
     184F   A9 33      LDA #&33
     1851   60         RTS
.ct1
     1852   CA         DEX
     1853   D0 04      BNE &1859
     1855   8A         TXA
     1856   A2 0D      LDX #&0D
     1858   60         RTS
.ct2
     1859   CA         DEX
     185A   D0 05      BNE &1861
     185C   A9 11      LDA #&11
     185E   A2 1A      LDX #&1A
     1860   60         RTS
.ct3
     1861   A9 22      LDA #&22
     1863   A2 26      LDX #&26
     1865   60         RTS
.nxno
     1866   EE 8E 1A   INC &1A8E
     1869   AC 8E 1A   LDY &1A8E
     186C   B9 8E 1A   LDA &1A8E,Y
     186F   85 70      STA &70
     1871   29 0E      AND #&0E
     1873   C9 08      CMP #&08
     1875   10 0A      BPL &1881
     1877   18         CLC
     1878   6D 59 25   ADC &2559
     187B   85 80      STA &80
     187D   A9 00      LDA #&00
     187F   F0 0A      BEQ &188B
.n1
     1881   18         CLC
     1882   6D 59 25   ADC &2559
     1885   69 78      ADC #&78
     1887   85 80      STA &80
     1889   A9 02      LDA #&02
.n2
     188B   6D 5A 25   ADC &255A
     188E   85 81      STA &81
     1890   A9 20      LDA #&20
     1892   85 83      STA &83
     1894   20 C6 18   JSR &18C6
     1897   18         CLC
     1898   AD 59 25   LDA &2559
     189B   69 20      ADC #&20
     189D   8D 59 25   STA &2559
     18A0   90 03      BCC &18A5
     18A2   EE 5A 25   INC &255A
.n3
     18A5   20 FA 18   JSR &18FA
     18A8   18         CLC
     18A9   A5 80      LDA &80
     18AB   69 08      ADC #&08
     18AD   85 80      STA &80
     18AF   90 02      BCC &18B3
     18B1   E6 81      INC &81
.n4
     18B3   18         CLC
     18B4   A5 82      LDA &82
     18B6   69 08      ADC #&08
     18B8   85 82      STA &82
     18BA   90 02      BCC &18BE
     18BC   E6 83      INC &83
.n5
     18BE   20 FA 18   JSR &18FA
     18C1   C8         INY
     18C2   B9 8E 1A   LDA &1A8E,Y
     18C5   60         RTS
.chnot
     18C6   A9 80      LDA #&80
     18C8   24 70      BIT &70
     18CA   F0 05      BEQ &18D1
     18CC   A9 00      LDA #&00
     18CE   85 82      STA &82
     18D0   60         RTS
.c1
     18D1   4A         LSR A
     18D2   24 70      BIT &70
     18D4   F0 05      BEQ &18DB
     18D6   A9 10      LDA #&10
     18D8   85 82      STA &82
     18DA   60         RTS
.c2
     18DB   4A         LSR A
     18DC   24 70      BIT &70
     18DE   F0 05      BEQ &18E5
     18E0   A9 20      LDA #&20
     18E2   85 82      STA &82
     18E4   60         RTS
.c3
     18E5   4A         LSR A
     18E6   24 70      BIT &70
     18E8   F0 05      BEQ &18EF
     18EA   A9 30      LDA #&30
     18EC   85 82      STA &82
     18EE   60         RTS
.c4
     18EF   A9 01      LDA #&01
     18F1   24 70      BIT &70
     18F3   F0 04      BEQ &18F9
     18F5   A9 40      LDA #&40
     18F7   85 82      STA &82
.c5
     18F9   60         RTS
.pno
     18FA   98         TYA
     18FB   48         PHA
     18FC   A0 07      LDY #&07
     18FE   18         CLC
     18FF   A5 80      LDA &80
     1901   69 78      ADC #&78
     1903   85 84      STA &84
     1905   A5 81      LDA &81
     1907   69 02      ADC #&02
     1909   85 85      STA &85
     190B   A5 80      LDA &80
     190D   29 07      AND #&07
     190F   49 07      EOR #&07
     1911   85 74      STA &74
     1913   C9 07      CMP #&07
     1915   10 0B      BPL &1922
.pnbot
     1917   B1 82      LDA (&82),Y
     1919   11 84      ORA (&84),Y
     191B   91 84      STA (&84),Y
     191D   88         DEY
     191E   C4 74      CPY &74
     1920   D0 F5      BNE &1917
.pntop
     1922   B1 82      LDA (&82),Y
     1924   11 80      ORA (&80),Y
     1926   91 80      STA (&80),Y
     1928   88         DEY
     1929   10 F7      BPL &1922
     192B   68         PLA
     192C   A8         TAY
     192D   60         RTS
.playTune
.tune
     192E   85 70      STA &70
.t1
     1930   A4 70      LDY &70
     1932   B9 BE 1A   LDA &1ABE,Y
     1935   F0 1A      BEQ &1951
     1937   8D FC 2D   STA &2DFC
     193A   C8         INY
     193B   B9 BE 1A   LDA &1ABE,Y
     193E   8D FE 2D   STA &2DFE
     1941   A2 F8      LDX #&F8
     1943   A0 2D      LDY #&2D
     1945   A9 07      LDA #&07
     1947   20 F1 FF   JSR &FFF1
     194A   E6 70      INC &70
     194C   E6 70      INC &70
     194E   4C 30 19   JMP &1930
.t3
     1951   A9 80      LDA #&80
     1953   A2 FA      LDX #&FA
     1955   20 F4 FF   JSR &FFF4
     1958   E0 0F      CPX #&0F
     195A   30 F5      BMI &1951
     195C   60         RTS
.keyboardScan
.key
     195D   A9 81      LDA #&81
     195F   A0 FF      LDY #&FF
     1961   20 F4 FF   JSR &FFF4
     1964   E8         INX
     1965   60         RTS
.check_key_press
     1966   CE AB 19   DEC &19AB
     1969   D0 3F      BNE &19AA
     196B   A9 05      LDA #&05
     196D   8D AB 19   STA &19AB
.checkQkey
     1970   A2 EF      LDX #&EF
     1972   20 5D 19   JSR &195D
     1975   D0 0A      BNE &1981
     1977   A9 AC      LDA #&AC
     1979   8D 0C 02   STA &020C
     197C   A9 19      LDA #&19
     197E   8D 0D 02   STA &020D
.checkSkey
     1981   A2 AE      LDX #&AE
     1983   20 5D 19   JSR &195D
     1986   D0 0C      BNE &1994
     1988   AD B3 19   LDA &19B3
     198B   8D 0C 02   STA &020C
     198E   AD B4 19   LDA &19B4
     1991   8D 0D 02   STA &020D
.checkRkey
     1994   A2 CC      LDX #&CC
     1996   20 5D 19   JSR &195D
     1999   D0 0F      BNE &19AA
.op3
     199B   A9 81      LDA #&81
     199D   A0 01      LDY #&01
     199F   A2 00      LDX #&00
     19A1   20 F4 FF   JSR &FFF4
     19A4   B0 F5      BCS &199B
     19A6   E0 52      CPX #&52
     19A8   F0 F1      BEQ &199B
.op5
.checkKeyComplete
     19AA   60         RTS
.keycounter
     19AB   01
.mute
     19AC   C9 07      CMP #&07
     19AE   F0 FA      BEQ &19AA
.mu1
     19B0   6C B3 19   JMP (&19B3)
.soun
     19B3   EB E7
.end_SS_03
.end_SS_03 =  &19B5 
.mini
.plot_gun_life_indicator
     19B5   A9 10      LDA #&10
     19B7   85 82      STA &82
     19B9   A9 21      LDA #&21
     19BB   85 83      STA &83
     19BD   AD 57 25   LDA &2557
     19C0   85 80      STA &80
     19C2   AD 58 25   LDA &2558
     19C5   85 81      STA &81
     19C7   4C 8D 1C   JMP &1C8D
.gun_hit_display
.h0
     19CA   A9 20      LDA #&20
     19CC   2C 4E 2D   BIT &2D4E
     19CF   D0 06      BNE &19D7
     19D1   AD 55 25   LDA &2555
     19D4   D0 34      BNE &1A0A
.hreturn
     19D6   60         RTS
.h1
     19D7   A2 00      LDX #&00
     19D9   A0 07      LDY #&07
     19DB   20 00 26   JSR &2600
     19DE   A9 07      LDA #&07
     19E0   A0 2D      LDY #&2D
     19E2   A2 E0      LDX #&E0
     19E4   20 F1 FF   JSR &FFF1
     19E7   A9 FF      LDA #&FF
     19E9   8D 55 25   STA &2555
     19EC   A9 60      LDA #&60
     19EE   8D EE 27   STA &27EE
     19F1   8D 51 26   STA &2651
     19F4   8D 46 27   STA &2746
     19F7   8D 69 2A   STA &2A69
     19FA   20 BB 26   JSR &26BB
     19FD   A9 22      LDA #&22
     19FF   8D BF 26   STA &26BF
     1A02   A9 10      LDA #&10
     1A04   8D BE 26   STA &26BE
     1A07   4C BB 26   JMP &26BB
.h12
     1A0A   CE 55 25   DEC &2555
     1A0D   AD 55 25   LDA &2555
     1A10   C9 FE      CMP #&FE
     1A12   D0 07      BNE &1A1B
     1A14   A2 00      LDX #&00
     1A16   A0 00      LDY #&00
     1A18   4C 00 26   JMP &2600
.h3
     1A1B   C9 DC      CMP #&DC
     1A1D   D0 0B      BNE &1A2A
     1A1F   20 BB 26   JSR &26BB
     1A22   A9 38      LDA #&38
     1A24   8D BE 26   STA &26BE
     1A27   4C BB 26   JMP &26BB
.h4
     1A2A   C9 8C      CMP #&8C
     1A2C   D0 0B      BNE &1A39
     1A2E   20 BB 26   JSR &26BB
     1A31   A9 60      LDA #&60
     1A33   8D BE 26   STA &26BE
     1A36   4C BB 26   JMP &26BB
.h5
     1A39   C9 01      CMP #&01
     1A3B   D0 99      BNE &19D6
     1A3D   CE 56 25   DEC &2556
     1A40   D0 03      BNE &1A45
     1A42   4C 26 11   JMP &1126
.h5a
     1A45   20 BB 26   JSR &26BB
     1A48   20 04 17   JSR &1704
     1A4B   AC 01 2D   LDY &2D01
.h6
     1A4E   B1 75      LDA (&75),Y
     1A50   C9 C0      CMP #&C0
     1A52   D0 19      BNE &1A6D
     1A54   88         DEY
     1A55   B1 75      LDA (&75),Y
     1A57   10 15      BPL &1A6E
     1A59   49 80      EOR #&80
     1A5B   91 75      STA (&75),Y
     1A5D   88         DEY
     1A5E   B1 75      LDA (&75),Y
     1A60   85 79      STA &79
     1A62   88         DEY
     1A63   B1 75      LDA (&75),Y
     1A65   85 78      STA &78
     1A67   20 28 2A   JSR &2A28
     1A6A   4C 70 1A   JMP &1A70
.h8
     1A6D   88         DEY
.h9
     1A6E   88         DEY
     1A6F   88         DEY
.h10
     1A70   88         DEY
     1A71   88         DEY
     1A72   D0 DA      BNE &1A4E
.h7
     1A74   A9 EA      LDA #&EA
     1A76   8D 46 27   STA &2746
     1A79   8D EE 27   STA &27EE
     1A7C   8D 51 26   STA &2651
     1A7F   8D 69 2A   STA &2A69
     1A82   38         SEC
     1A83   AD 57 25   LDA &2557
     1A86   E9 18      SBC #&18
     1A88   8D 57 25   STA &2557
     1A8B   4C B5 19   JMP &19B5
.end_PIG_01
.end_PIG-01 =  &1A8E 
.nl
     1A8E   0D
     1A8F   4A
     1A90   18
     1A91   8C
     1A92   8E
     1A93   1C
     1A94   8A
     1A95   84
     1A96   14
     1A97   82
     1A98   20
     1A99   44
     1A9A   05
     1A9B   00
     1A9C   48
     1A9D   18
     1A9E   86
     1A9F   84
     1AA0   14
     1AA1   86
     1AA2   84
     1AA3   14
     1AA4   88
     1AA5   2A
     1AA6   4E
     1AA7   05
     1AA8   00
     1AA9   4A
     1AAA   18
     1AAB   8C
     1AAC   8E
     1AAD   1C
     1AAE   8A
     1AAF   84
     1AB0   14
     1AB1   82
     1AB2   20
     1AB3   44
     1AB4   00
     1AB5   44
     1AB6   42
     1AB7   42
     1AB8   44
     1AB9   46
     1ABA   24
     1ABB   14
     1ABC   05
     1ABD   00
.tl
     1ABE   65
     1ABF   17
     1AC0   5D
     1AC1   05
     1AC2   59
     1AC3   0A
     1AC4   65
     1AC5   05
     1AC6   79
     1AC7   0A
     1AC8   81
     1AC9   05
     1ACA   89
     1ACB   1E
     1ACC   79
     1ACD   1E
     1ACE   00
     1ACF   6D
     1AD0   17
     1AD1   75
     1AD2   05
     1AD3   79
     1AD4   0A
     1AD5   75
     1AD6   05
     1AD7   79
     1AD8   0A
     1AD9   6D
     1ADA   05
     1ADB   65
     1ADC   1E
     1ADD   59
     1ADE   1E
     1ADF   00
     1AE0   65
     1AE1   17
     1AE2   5D
     1AE3   05
     1AE4   59
     1AE5   0A
     1AE6   65
     1AE7   05
     1AE8   79
     1AE9   0A
     1AEA   81
     1AEB   05
     1AEC   89
     1AED   1E
     1AEE   79
     1AEF   0F
     1AF0   00
     1AF1   79
     1AF2   0F
     1AF3   81
     1AF4   0F
     1AF5   81
     1AF6   0F
     1AF7   79
     1AF8   0F
     1AF9   75
     1AFA   0F
     1AFB   79
     1AFC   1E
     1AFD   00
     1AFE   59
     1AFF   05
     1B00   59
     1B01   05
     1B02   59
     1B03   05
     1B04   49
     1B05   0F
     1B06   00
     1B07   41
     1B08   05
     1B09   35
     1B0A   0A
     1B0B   39
     1B0C   05
     1B0D   3D
     1B0E   05
     1B0F   41
     1B10   05
     1B11   65
     1B12   0A
     1B13   65
     1B14   0A
     1B15   55
     1B16   14
     1B17   00
     1B18   14
     1B19   00
.pg
     1B1A   A9 23      LDA #&23
     1B1C   85 83      STA &83
     1B1E   AD 55 2D   LDA &2D55
     1B21   D0 77      BNE &1B9A
     1B23   A9 42      LDA #&42
     1B25   2C 4E 2D   BIT &2D4E
     1B28   F0 6F      BEQ &1B99
     1B2A   A9 02      LDA #&02
     1B2C   2C 54 25   BIT &2554
     1B2F   F0 1F      BEQ &1B50
.pig_init_right
     1B31   A9 23      LDA #&23
     1B33   85 83      STA &83
     1B35   8D 1B 1B   STA &1B1B
     1B38   A9 68      LDA #&68
     1B3A   8D 54 2D   STA &2D54
     1B3D   85 80      STA &80
     1B3F   A9 00      LDA #&00
     1B41   8D 3B 1C   STA &1C3B
     1B44   A9 4C      LDA #&4C
     1B46   8D 57 2D   STA &2D57
     1B49   A9 4B      LDA #&4B
     1B4B   8D 78 1B   STA &1B78
     1B4E   D0 1B      BNE &1B6B
.pgl
.pig_init_left
     1B50   A9 22      LDA #&22
     1B52   85 83      STA &83
     1B54   8D 1B 1B   STA &1B1B
     1B57   A9 00      LDA #&00
     1B59   8D 54 2D   STA &2D54
     1B5C   85 80      STA &80
     1B5E   8D 57 2D   STA &2D57
     1B61   A9 4C      LDA #&4C
     1B63   8D 3B 1C   STA &1C3B
     1B66   A9 49      LDA #&49
     1B68   8D 78 1B   STA &1B78
.b3
     1B6B   A9 00      LDA #&00
     1B6D   85 7C      STA &7C
     1B6F   EE 54 25   INC &2554
     1B72   A9 07      LDA #&07
     1B74   25 7D      AND &7D
     1B76   AA         TAX
     1B77   A9 4B      LDA #&4B
     1B79   18         CLC
.b5
     1B7A   69 05      ADC #&05
     1B7C   A8         TAY
     1B7D   A5 7C      LDA &7C
     1B7F   69 10      ADC #&10
     1B81   85 7C      STA &7C
     1B83   98         TYA
     1B84   CA         DEX
     1B85   10 F3      BPL &1B7A
     1B87   8D 55 2D   STA &2D55
     1B8A   85 81      STA &81
     1B8C   A2 02      LDX #&02
     1B8E   8E 56 2D   STX &2D56
     1B91   BD 46 2D   LDA &2D46,X
     1B94   85 82      STA &82
     1B96   4C 8D 1C   JMP &1C8D
.ep
     1B99   60         RTS
.pgb0
     1B9A   AD 54 2D   LDA &2D54
     1B9D   85 80      STA &80
     1B9F   AD 55 2D   LDA &2D55
     1BA2   85 81      STA &81
     1BA4   10 18      BPL &1BBE
     1BA6   CE 56 2D   DEC &2D56
     1BA9   D0 EE      BNE &1B99
     1BAB   49 80      EOR #&80
     1BAD   85 81      STA &81
     1BAF   A9 10      LDA #&10
     1BB1   0D 4E 2D   ORA &2D4E
     1BB4   8D 4E 2D   STA &2D4E
     1BB7   A9 00      LDA #&00
     1BB9   8D 55 2D   STA &2D55
     1BBC   F0 4C      BEQ &1C0A
.pgb1
     1BBE   AD 56 2D   LDA &2D56
     1BC1   29 7F      AND #&7F
     1BC3   AA         TAX
     1BC4   BD 46 2D   LDA &2D46,X
     1BC7   85 82      STA &82
     1BC9   A0 00      LDY #&00
     1BCB   B1 8A      LDA (&8A),Y
     1BCD   85 70      STA &70
.pgh
     1BCF   C8         INY
     1BD0   B1 8A      LDA (&8A),Y
     1BD2   38         SEC
     1BD3   E5 7C      SBC &7C
     1BD5   30 4C      BMI &1C23
     1BD7   C9 07      CMP #&07
     1BD9   10 48      BPL &1C23
     1BDB   C8         INY
     1BDC   C8         INY
     1BDD   B1 8A      LDA (&8A),Y
     1BDF   F0 44      BEQ &1C25
     1BE1   C8         INY
     1BE2   B1 8A      LDA (&8A),Y
     1BE4   38         SEC
     1BE5   ED 57 2D   SBC &2D57
     1BE8   30 3C      BMI &1C26
     1BEA   C9 03      CMP #&03
     1BEC   10 38      BPL &1C26
     1BEE   A9 E8      LDA #&E8
     1BF0   91 8A      STA (&8A),Y
     1BF2   AA         TAX
     1BF3   A9 07      LDA #&07
     1BF5   A0 2D      LDY #&2D
     1BF7   20 F1 FF   JSR &FFF1
     1BFA   A9 10      LDA #&10
     1BFC   8D 56 2D   STA &2D56
     1BFF   A9 80      LDA #&80
     1C01   0D 55 2D   ORA &2D55
     1C04   8D 55 2D   STA &2D55
     1C07   20 8D 1C   JSR &1C8D
.bx
     1C0A   A9 23      LDA #&23
     1C0C   85 83      STA &83
     1C0E   A9 70      LDA #&70
     1C10   85 82      STA &82
     1C12   4C 8D 1C   JMP &1C8D
.b9
     1C15   A9 04      LDA #&04
     1C17   0D 4E 2D   ORA &2D4E
     1C1A   8D 4E 2D   STA &2D4E
     1C1D   A9 00      LDA #&00
     1C1F   8D 55 2D   STA &2D55
.x
     1C22   60         RTS
.pgnh
     1C23   C8         INY
     1C24   C8         INY
     1C25   C8         INY
     1C26   C4 70      CPY &70
     1C28   30 A5      BMI &1BCF
     1C2A   A9 80      LDA #&80
     1C2C   4D 56 2D   EOR &2D56
     1C2F   8D 56 2D   STA &2D56
     1C32   30 EE      BMI &1C22
     1C34   20 8D 1C   JSR &1C8D
     1C37   AD 57 2D   LDA &2D57
.xps
     1C3A   C9 00      CMP #&00
     1C3C   F0 D7      BEQ &1C15
     1C3E   29 1F      AND #&1F
     1C40   D0 09      BNE &1C4B
     1C42   A9 07      LDA #&07
     1C44   A0 2D      LDY #&2D
     1C46   A2 F0      LDX #&F0
     1C48   20 F1 FF   JSR &FFF1
.b6
     1C4B   AE 56 2D   LDX &2D56
     1C4E   CA         DEX
     1C4F   10 02      BPL &1C53
     1C51   A2 07      LDX #&07
.b7
     1C53   8E 56 2D   STX &2D56
     1C56   BD 46 2D   LDA &2D46,X
     1C59   85 82      STA &82
     1C5B   AD 3B 1C   LDA &1C3B
     1C5E   F0 18      BEQ &1C78
     1C60   EE 57 2D   INC &2D57
     1C63   18         CLC
     1C64   AD 54 2D   LDA &2D54
     1C67   69 08      ADC #&08
     1C69   8D 54 2D   STA &2D54
     1C6C   85 80      STA &80
     1C6E   90 1D      BCC &1C8D
     1C70   EE 55 2D   INC &2D55
     1C73   E6 81      INC &81
     1C75   4C 8D 1C   JMP &1C8D
.b10
     1C78   CE 57 2D   DEC &2D57
     1C7B   38         SEC
     1C7C   AD 54 2D   LDA &2D54
     1C7F   E9 08      SBC #&08
     1C81   8D 54 2D   STA &2D54
     1C84   85 80      STA &80
     1C86   B0 05      BCS &1C8D
     1C88   CE 55 2D   DEC &2D55
     1C8B   C6 81      DEC &81
.plot_pigeon_sprite
.pb
     1C8D   A0 17      LDY #&17
.b8
     1C8F   B1 82      LDA (&82),Y
     1C91   51 80      EOR (&80),Y
     1C93   91 80      STA (&80),Y
     1C95   88         DEY
     1C96   10 F7      BPL &1C8F
     1C98   60         RTS
.ddu1
.plane_hit
     1C99   AC 5B 25   LDY &255B
     1C9C   C0 09      CPY #&09
     1C9E   10 23      BPL &1CC3
     1CA0   B9 40 25   LDA &2540,Y
     1CA3   85 80      STA &80
     1CA5   C8         INY
     1CA6   B9 40 25   LDA &2540,Y
     1CA9   85 81      STA &81
     1CAB   C8         INY
     1CAC   8C 5B 25   STY &255B
     1CAF   A0 04      LDY #&04
     1CB1   A9 55      LDA #&55
.ddu2
     1CB3   91 80      STA (&80),Y
     1CB5   88         DEY
     1CB6   10 FB      BPL &1CB3
     1CB8   A0 09      LDY #&09
     1CBA   0A         ASL A
     1CBB   91 80      STA (&80),Y
     1CBD   A0 01      LDY #&01
     1CBF   A9 FF      LDA #&FF
     1CC1   91 80      STA (&80),Y
.ddu3
     1CC3   60         RTS
.random1
     1CC4   A5 7D      LDA &7D
     1CC6   29 48      AND #&48
     1CC8   69 38      ADC #&38
     1CCA   0A         ASL A
     1CCB   0A         ASL A
     1CCC   26 7F      ROL &7F
     1CCE   26 7E      ROL &7E
     1CD0   26 7D      ROL &7D
     1CD2   A5 7D      LDA &7D
     1CD4   60         RTS
.draw_backgnd_art
     1CD5   A0 00      LDY #&00
.draw_line_art_loop
     1CD7   B9 BC 1D   LDA &1DBC,Y
     1CDA   20 EE FF   JSR &FFEE
     1CDD   C8         INY
     1CDE   D0 F7      BNE &1CD7
     1CE0   A5 88      LDA &88
     1CE2   85 82      STA &82
     1CE4   A5 89      LDA &89
     1CE6   85 83      STA &83
     1CE8   A9 1F      LDA #&1F
     1CEA   8D 42 2A   STA &2A42
     1CED   A9 C0      LDA #&C0
     1CEF   85 70      STA &70
     1CF1   A0 00      LDY #&00
.draw_backgnd_sprite_loop
     1CF3   C8         INY
     1CF4   BE CF 1E   LDX &1ECF,Y
     1CF7   C8         INY
     1CF8   B9 CF 1E   LDA &1ECF,Y
     1CFB   24 70      BIT &70
     1CFD   D0 0C      BNE &1D0B
     1CFF   85 89      STA &89
     1D01   86 88      STX &88
     1D03   C8         INY
     1D04   BE CF 1E   LDX &1ECF,Y
     1D07   C8         INY
     1D08   B9 CF 1E   LDA &1ECF,Y
.skip1
     1D0B   86 78      STX &78
     1D0D   85 79      STA &79
     1D0F   20 28 2A   JSR &2A28
     1D12   CC CF 1E   CPY &1ECF
     1D15   30 DC      BMI &1CF3
     1D17   A9 3F      LDA #&3F
     1D19   8D 42 2A   STA &2A42
     1D1C   A5 82      LDA &82
     1D1E   85 88      STA &88
     1D20   A5 83      LDA &83
     1D22   85 89      STA &89
     1D24   60         RTS
     1D25   00         BRK
.plot_clouds
     1D26   A9 44      LDA #&44
     1D28   85 79      STA &79
     1D2A   A9 FF      LDA #&FF
     1D2C   A2 05      LDX #&05
.mid_outer_loop
     1D2E   A0 00      LDY #&00
     1D30   84 78      STY &78
.mid_inner_loop
     1D32   91 78      STA (&78),Y
     1D34   C8         INY
     1D35   D0 FB      BNE &1D32
     1D37   E6 79      INC &79
     1D39   CA         DEX
     1D3A   D0 F2      BNE &1D2E
     1D3C   A0 1F      LDY #&1F
.cloud_loop2
     1D3E   B9 E0 2E   LDA &2EE0,Y
     1D41   91 78      STA (&78),Y
     1D43   88         DEY
     1D44   10 F8      BPL &1D3E
     1D46   A9 2E      LDA #&2E
     1D48   85 7B      STA &7B
     1D4A   A9 20      LDA #&20
     1D4C   85 78      STA &78
     1D4E   A2 08      LDX #&08
.next_cloud_sprite
     1D50   BD 3D 2D   LDA &2D3D,X
     1D53   85 7A      STA &7A
     1D55   A0 3F      LDY #&3F
.next_cloud_byte
     1D57   B1 7A      LDA (&7A),Y
     1D59   91 78      STA (&78),Y
     1D5B   88         DEY
     1D5C   10 F9      BPL &1D57
     1D5E   18         CLC
     1D5F   A5 78      LDA &78
     1D61   69 40      ADC #&40
     1D63   85 78      STA &78
     1D65   90 02      BCC &1D69
     1D67   E6 79      INC &79
.skip1
     1D69   CA         DEX
     1D6A   10 E4      BPL &1D50
     1D6C   A0 1F      LDY #&1F
.loop32
     1D6E   B9 C0 2E   LDA &2EC0,Y
     1D71   91 78      STA (&78),Y
     1D73   88         DEY
     1D74   10 F8      BPL &1D6E
.mirror_loop_1
     1D76   A0 00      LDY #&00
.mirror_loop_2
     1D78   A2 07      LDX #&07
.mirror_loop_3
.modify_lower_dest_addr
     1D7A   B9 00 49   LDA &4900,Y
.modify_upper_dest_addr
     1D7D   9D 80 41   STA &4180,X
     1D80   C8         INY
     1D81   CA         DEX
     1D82   10 F6      BPL &1D7A
     1D84   18         CLC
     1D85   AD 7E 1D   LDA &1D7E
     1D88   69 08      ADC #&08
     1D8A   8D 7E 1D   STA &1D7E
     1D8D   90 03      BCC &1D92
     1D8F   EE 7F 1D   INC &1D7F
.skip2
     1D92   C0 80      CPY #&80
     1D94   D0 E2      BNE &1D78
     1D96   AD 7B 1D   LDA &1D7B
     1D99   49 80      EOR #&80
     1D9B   8D 7B 1D   STA &1D7B
     1D9E   30 03      BMI &1DA3
     1DA0   EE 7C 1D   INC &1D7C
.skip3
     1DA3   A9 44      LDA #&44
     1DA5   CD 7F 1D   CMP &1D7F
     1DA8   D0 CC      BNE &1D76
     1DAA   8C 7E 1D   STY &1D7E
     1DAD   E8         INX
     1DAE   8E 7B 1D   STX &1D7B
     1DB1   A9 49      LDA #&49
     1DB3   8D 7C 1D   STA &1D7C
     1DB6   A9 41      LDA #&41
     1DB8   8D 7F 1D   STA &1D7F
     1DBB   60         RTS
.scenery_line_art
     1DBC   12
     1DBD   00
     1DBE   06
     1DBF   19
     1DC0   04
     1DC1   00
     1DC2   00
     1DC3   13
     1DC4   00
     1DC5   19
     1DC6   05
     1DC7   04
     1DC8   01
     1DC9   17
     1DCA   00
     1DCB   19
     1DCC   05
     1DCD   2C
     1DCE   01
     1DCF   3C
     1DD0   00
     1DD1   19
     1DD2   04
     1DD3   7E
     1DD4   04
     1DD5   3E
     1DD6   00
     1DD7   19
     1DD8   05
     1DD9   1A
     1DDA   04
     1DDB   20
     1DDC   00
     1DDD   19
     1DDE   05
     1DDF   84
     1DE0   03
     1DE1   20
     1DE2   00
     1DE3   19
     1DE4   05
     1DE5   52
     1DE6   03
     1DE7   28
     1DE8   00
     1DE9   19
     1DEA   05
     1DEB   20
     1DEC   03
     1DED   38
     1DEE   00
     1DEF   19
     1DF0   05
     1DF1   16
     1DF2   03
     1DF3   46
     1DF4   00
     1DF5   19
     1DF6   05
     1DF7   16
     1DF8   03
     1DF9   52
     1DFA   00
     1DFB   19
     1DFC   05
     1DFD   20
     1DFE   03
     1DFF   60
     1E00   00
     1E01   19
     1E02   05
     1E03   52
     1E04   03
     1E05   74
     1E06   00
     1E07   19
     1E08   05
     1E09   BB
     1E0A   03
     1E0B   7C
     1E0C   00
     1E0D   19
     1E0E   04
     1E0F   7E
     1E10   04
     1E11   42
     1E12   00
     1E13   19
     1E14   15
     1E15   1A
     1E16   04
     1E17   24
     1E18   00
     1E19   19
     1E1A   15
     1E1B   84
     1E1C   03
     1E1D   24
     1E1E   00
     1E1F   19
     1E20   15
     1E21   52
     1E22   03
     1E23   2C
     1E24   00
     1E25   19
     1E26   15
     1E27   20
     1E28   03
     1E29   3C
     1E2A   00
     1E2B   19
     1E2C   04
     1E2D   20
     1E2E   03
     1E2F   64
     1E30   00
     1E31   19
     1E32   15
     1E33   52
     1E34   03
     1E35   78
     1E36   00
     1E37   19
     1E38   15
     1E39   BB
     1E3A   03
     1E3B   80
     1E3C   00
     1E3D   12
     1E3E   00
     1E3F   02
     1E40   19
     1E41   04
     1E42   00
     1E43   05
     1E44   17
     1E45   00
     1E46   19
     1E47   05
     1E48   C4
     1E49   04
     1E4A   28
     1E4B   00
     1E4C   19
     1E4D   04
     1E4E   E2
     1E4F   04
     1E50   1C
     1E51   00
     1E52   19
     1E53   05
     1E54   DE
     1E55   03
     1E56   38
     1E57   00
     1E58   19
     1E59   04
     1E5A   80
     1E5B   02
     1E5C   82
     1E5D   00
     1E5E   19
     1E5F   05
     1E60   48
     1E61   03
     1E62   0E
     1E63   01
     1E64   19
     1E65   05
     1E66   AC
     1E67   03
     1E68   45
     1E69   01
     1E6A   19
     1E6B   05
     1E6C   1A
     1E6D   04
     1E6E   4A
     1E6F   01
     1E70   19
     1E71   05
     1E72   00
     1E73   05
     1E74   AE
     1E75   01
     1E76   19
     1E77   04
     1E78   2C
     1E79   01
     1E7A   C8
     1E7B   00
     1E7C   19
     1E7D   05
     1E7E   8A
     1E7F   02
     1E80   40
     1E81   01
     1E82   19
     1E83   05
     1E84   3E
     1E85   03
     1E86   04
     1E87   01
     1E88   19
     1E89   04
     1E8A   F4
     1E8B   01
     1E8C   64
     1E8D   00
     1E8E   19
     1E8F   05
     1E90   FA
     1E91   00
     1E92   DC
     1E93   00
     1E94   19
     1E95   05
     1E96   8C
     1E97   00
     1E98   54
     1E99   01
     1E9A   19
     1E9B   05
     1E9C   00
     1E9D   00
     1E9E   68
     1E9F   01
     1EA0   12
     1EA1   00
     1EA2   04
     1EA3   19
     1EA4   04
     1EA5   9E
     1EA6   02
     1EA7   96
     1EA8   00
     1EA9   19
     1EAA   15
     1EAB   F4
     1EAC   01
     1EAD   78
     1EAE   00
     1EAF   19
     1EB0   05
     1EB1   58
     1EB2   02
     1EB3   64
     1EB4   00
     1EB5   19
     1EB6   05
     1EB7   90
     1EB8   01
     1EB9   5A
     1EBA   00
     1EBB   00
     1EBC   7D
     1EBD   2D
     1EBE   20
     1EBF   13
     1EC0   28
     1EC1   A9
     1EC2   09
     1EC3   85
     1EC4   83
     1EC5   A9
     1EC6   F0
     1EC7   85
     1EC8   82
     1EC9   4C
     1ECA   13
     1ECB   28
     1ECC   A9
     1ECD   00
     1ECE   8D
.backgnd_sprite_addr_table
     1ECF   58
     1ED0   A0 24
     1ED2   93 73
     1ED4   49 71
     1ED6   60 76
     1ED8   99 75
     1EDA   44 73
     1EDC   C9 78
     1EDE   B4 76
     1EE0   C0 24
     1EE2   13 76
     1EE4   93 78
     1EE6   C9 73
     1EE8   49 76
     1EEA   E0 78
     1EEC   44 78
     1EEE   C4 75
     1EF0   E0 24
     1EF2   13 7B
     1EF4   4A 7B
     1EF6   60 7B
     1EF8   C4 7A
     1EFA   00 25
     1EFC   B0 78
     1EFE   20 78
     1F00   5C 78
     1F02   20 25
     1F04   00 78
     1F06   88 76
     1F08   60 25
     1F0A   60 70
     1F0C   80 25
     1F0E   E0 72
     1F10   60 75
     1F12   E0 77
     1F14   80 7A
     1F16   A0 7A
     1F18   DC 7A
     1F1A   A0 25
     1F1C   60 7A
     1F1E   30 7B
     1F20   C0 25
     1F22   08 79
     1F24   E0 25
     1F26   28 79
     1F28   00
.end_PIG_02
.end_PIG-02 =  &1F29 
.draw_stave
.stv
     1F29   A0 00      LDY #&00
.stave_loop1
     1F2B   B9 49 1F   LDA &1F49,Y
     1F2E   20 EE FF   JSR &FFEE
     1F31   C8         INY
     1F32   C0 09      CPY #&09
     1F34   D0 F5      BNE &1F2B
     1F36   A2 05      LDX #&05
.stave_loop2
     1F38   A0 09      LDY #&09
.stave_loop3
     1F3A   B9 49 1F   LDA &1F49,Y
     1F3D   20 EE FF   JSR &FFEE
     1F40   C8         INY
     1F41   C0 15      CPY #&15
     1F43   D0 F5      BNE &1F3A
     1F45   CA         DEX
     1F46   D0 F0      BNE &1F38
     1F48   60         RTS
.stave_data
.sl
     1F49   12
     1F4A   00
     1F4B   04
     1F4C   19
     1F4D   04
     1F4E   00
     1F4F   01
     1F50   EC
     1F51   03
     1F52   19
     1F53   01
     1F54   00
     1F55   03
     1F56   00
     1F57   00
     1F58   19
     1F59   00
     1F5A   00
     1F5B   FD
     1F5C   F0
     1F5D   FF
.end_GG_01
.end_GG-01 =  &1F5E 
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
     2652   20 BB 26   JSR &26BB
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
.left
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
.right
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
.player_dies
     2698   A9 01      LDA #&01
     269A   F0 1F      BEQ &26BB
     269C   38         SEC
     269D   A9 00      LDA #&00
     269F   85 78      STA &78
     26A1   A0 24      LDY #&24
.ch
     26A3   B1 86      LDA (&86),Y
     26A5   F0 02      BEQ &26A9
     26A7   85 78      STA &78
.cop
     26A9   98         TYA
     26AA   E9 08      SBC #&08
     26AC   A8         TAY
     26AD   10 F4      BPL &26A3
     26AF   A5 78      LDA &78
     26B1   F0 08      BEQ &26BB
     26B3   AD 4E 2D   LDA &2D4E
     26B6   09 20      ORA #&20
     26B8   8D 4E 2D   STA &2D4E
.gun
.plot_gun_sprite
.modify_gun_length
     26BB   A0 27      LDY #&27
.gop
     26BD   B9 60 22   LDA &2260,Y
     26C0   F0 04      BEQ &26C6
     26C2   51 86      EOR (&86),Y
     26C4   91 86      STA (&86),Y
.gz
     26C6   88         DEY
     26C7   10 F4      BPL &26BD
     26C9   60         RTS
.mb
.move_bullets
     26CA   A0 00      LDY #&00
     26CC   B1 8A      LDA (&8A),Y
     26CE   85 70      STA &70
     26D0   AD 86 2D   LDA &2D86
     26D3   85 82      STA &82
     26D5   AD 87 2D   LDA &2D87
     26D8   85 83      STA &83
.ntbu
     26DA   C8         INY
     26DB   B1 8A      LDA (&8A),Y
     26DD   85 77      STA &77
     26DF   C8         INY
     26E0   B1 8A      LDA (&8A),Y
     26E2   85 80      STA &80
     26E4   C8         INY
     26E5   B1 8A      LDA (&8A),Y
     26E7   85 81      STA &81
     26E9   D0 0A      BNE &26F5
     26EB   C8         INY
     26EC   A9 FE      LDA #&FE
     26EE   25 71      AND &71
     26F0   85 71      STA &71
     26F2   4C 2F 27   JMP &272F
.bu1
     26F5   C8         INY
     26F6   20 B9 27   JSR &27B9
     26F9   B1 8A      LDA (&8A),Y
     26FB   10 06      BPL &2703
.bu7
     26FD   A9 00      LDA #&00
     26FF   85 81      STA &81
     2701   F0 2C      BEQ &272F
.bu2
     2703   38         SEC
     2704   A9 07      LDA #&07
     2706   25 80      AND &80
     2708   C9 05      CMP #&05
     270A   30 09      BMI &2715
     270C   A5 80      LDA &80
     270E   E9 05      SBC #&05
     2710   85 80      STA &80
     2712   4C 21 27   JMP &2721
.bu3
     2715   A5 80      LDA &80
     2717   E9 7D      SBC #&7D
     2719   85 80      STA &80
     271B   A5 81      LDA &81
     271D   E9 02      SBC #&02
     271F   85 81      STA &81
.bu4
     2721   38         SEC
     2722   A5 77      LDA &77
     2724   E9 05      SBC #&05
     2726   85 77      STA &77
     2728   C9 02      CMP #&02
     272A   F0 D1      BEQ &26FD
.bu5
     272C   20 B9 27   JSR &27B9
.nxbu
     272F   88         DEY
     2730   88         DEY
     2731   88         DEY
     2732   A5 77      LDA &77
     2734   91 8A      STA (&8A),Y
     2736   C8         INY
     2737   A5 80      LDA &80
     2739   91 8A      STA (&8A),Y
     273B   C8         INY
     273C   A5 81      LDA &81
     273E   91 8A      STA (&8A),Y
     2740   C8         INY
     2741   C4 70      CPY &70
     2743   90 95      BCC &26DA
     2745   60         RTS
.new_bullet
.nb
     2746   EA         NOP
     2747   A9 01      LDA #&01
     2749   24 71      BIT &71
     274B   D0 11      BNE &275E
     274D   A9 81      LDA #&81
     274F   A0 FF      LDY #&FF
     2751   A2 B6      LDX #&B6
     2753   20 F4 FF   JSR &FFF4
     2756   E8         INX
     2757   F0 07      BEQ &2760
     2759   A9 00      LDA #&00
     275B   8D 5F 27   STA &275F
.nwb0
     275E   60         RTS
.fp0
     275F   00
.nwb1
     2760   AD 5F 27   LDA &275F
     2763   F0 04      BEQ &2769
     2765   CE 5F 27   DEC &275F
     2768   60         RTS
.fp1
     2769   A9 12      LDA #&12
     276B   8D 5F 27   STA &275F
     276E   A0 FF      LDY #&FF
.nwb2
     2770   C8         INY
     2771   C8         INY
     2772   C8         INY
     2773   C8         INY
     2774   CC F0 2C   CPY &2CF0
     2777   B0 E5      BCS &275E
     2779   B1 8A      LDA (&8A),Y
     277B   D0 F3      BNE &2770
     277D   88         DEY
     277E   88         DEY
     277F   A9 9D      LDA #&9D
     2781   91 8A      STA (&8A),Y
     2783   C8         INY
     2784   38         SEC
     2785   A5 86      LDA &86
     2787   E9 6E      SBC #&6E
     2789   91 8A      STA (&8A),Y
     278B   85 80      STA &80
     278D   C8         INY
     278E   A5 87      LDA &87
     2790   E9 02      SBC #&02
     2792   91 8A      STA (&8A),Y
     2794   85 81      STA &81
     2796   C8         INY
     2797   AD A6 2D   LDA &2DA6
     279A   18         CLC
     279B   69 03      ADC #&03
     279D   91 8A      STA (&8A),Y
     279F   20 B9 27   JSR &27B9
     27A2   A9 03      LDA #&03
     27A4   05 71      ORA &71
     27A6   85 71      STA &71
     27A8   A9 01      LDA #&01
     27AA   0D 4E 2D   ORA &2D4E
     27AD   8D 4E 2D   STA &2D4E
     27B0   A2 D0      LDX #&D0
     27B2   A0 2D      LDY #&2D
     27B4   A9 07      LDA #&07
     27B6   4C F1 FF   JMP &FFF1
.plot_fast_bullet_sprite
     27B9   98         TYA
     27BA   48         PHA
     27BB   A0 05      LDY #&05
     27BD   18         CLC
     27BE   A5 80      LDA &80
     27C0   69 78      ADC #&78
     27C2   85 84      STA &84
     27C4   A5 81      LDA &81
     27C6   69 02      ADC #&02
     27C8   85 85      STA &85
     27CA   A5 80      LDA &80
     27CC   29 07      AND #&07
     27CE   49 07      EOR #&07
     27D0   8D DF 27   STA &27DF
     27D3   C9 05      CMP #&05
     27D5   10 0B      BPL &27E2
.bot
     27D7   B1 84      LDA (&84),Y
     27D9   49 2A      EOR #&2A
     27DB   91 84      STA (&84),Y
     27DD   88         DEY
.comp_mod
     27DE   C0 FF      CPY #&FF
     27E0   D0 F5      BNE &27D7
.top
     27E2   B1 80      LDA (&80),Y
     27E4   49 2A      EOR #&2A
     27E6   91 80      STA (&80),Y
     27E8   88         DEY
     27E9   10 F7      BPL &27E2
     27EB   68         PLA
     27EC   A8         TAY
     27ED   60         RTS
.np
.new_plane
     27EE   EA         NOP
     27EF   A5 72      LDA &72
     27F1   C9 01      CMP #&01
     27F3   10 3A      BPL &282F
     27F5   CE 52 2D   DEC &2D52
     27F8   D0 35      BNE &282F
     27FA   AD 53 2D   LDA &2D53
     27FD   8D 52 2D   STA &2D52
     2800   A5 70      LDA &70
     2802   20 81 2B   JSR &2B81
     2805   A8         TAY
     2806   38         SEC
.next_plane2
     2807   E9 05      SBC #&05
     2809   10 FC      BPL &2807
     280B   AA         TAX
.next_plane3
     280C   C8         INY
     280D   E8         INX
     280E   D0 FC      BNE &280C
     2810   88         DEY
     2811   B1 75      LDA (&75),Y
     2813   30 16      BMI &282B
     2815   A4 70      LDY &70
.se
     2817   88         DEY
     2818   B1 75      LDA (&75),Y
     281A   30 0F      BMI &282B
     281C   88         DEY
     281D   88         DEY
     281E   88         DEY
     281F   88         DEY
     2820   D0 F5      BNE &2817
     2822   A9 80      LDA #&80
     2824   0D 4E 2D   ORA &2D4E
     2827   8D 4E 2D   STA &2D4E
     282A   60         RTS
.fly
     282B   49 80      EOR #&80
     282D   91 75      STA (&75),Y
.no_plane
     282F   60         RTS
.pxp
     2830   A5 77      LDA &77
     2832   F0 55      BEQ &2889
     2834   A2 21      LDX #&21
     2836   86 89      STX &89
     2838   A5 88      LDA &88
     283A   48         PHA
     283B   A5 77      LDA &77
     283D   C9 15      CMP #&15
     283F   D0 0A      BNE &284B
     2841   A9 40      LDA #&40
     2843   85 88      STA &88
     2845   20 28 2A   JSR &2A28
     2848   4C 80 28   JMP &2880
.px1
     284B   C9 0C      CMP #&0C
     284D   D0 11      BNE &2860
     284F   A9 40      LDA #&40
     2851   85 88      STA &88
     2853   20 28 2A   JSR &2A28
     2856   A9 80      LDA #&80
     2858   85 88      STA &88
     285A   20 28 2A   JSR &2A28
     285D   4C 80 28   JMP &2880
.px2
     2860   C9 06      CMP #&06
     2862   D0 11      BNE &2875
     2864   A9 80      LDA #&80
     2866   85 88      STA &88
     2868   20 28 2A   JSR &2A28
     286B   A9 C0      LDA #&C0
     286D   85 88      STA &88
     286F   20 28 2A   JSR &2A28
     2872   4C 80 28   JMP &2880
.px3
     2875   C9 01      CMP #&01
     2877   D0 07      BNE &2880
     2879   A9 C0      LDA #&C0
     287B   85 88      STA &88
     287D   20 28 2A   JSR &2A28
.reset_sp_addr
     2880   A9 2F      LDA #&2F
     2882   85 89      STA &89
     2884   68         PLA
     2885   85 88      STA &88
     2887   C6 77      DEC &77
.nx
     2889   4C FB 29   JMP &29FB
.check_plane_collision
     288C   98         TYA
     288D   48         PHA
     288E   A0 00      LDY #&00
     2890   B1 8A      LDA (&8A),Y
     2892   85 80      STA &80
.h
.check_next_plane
     2894   C8         INY
     2895   B1 8A      LDA (&8A),Y
     2897   38         SEC
     2898   E5 7B      SBC &7B
     289A   30 43      BMI &28DF
     289C   C9 08      CMP #&08
     289E   10 3F      BPL &28DF
     28A0   C8         INY
     28A1   C8         INY
     28A2   B1 8A      LDA (&8A),Y
     28A4   F0 3B      BEQ &28E1
     28A6   C8         INY
     28A7   B1 8A      LDA (&8A),Y
     28A9   38         SEC
     28AA   E5 7A      SBC &7A
     28AC   30 34      BMI &28E2
     28AE   C9 07      CMP #&07
     28B0   10 30      BPL &28E2
     28B2   C9 03      CMP #&03
     28B4   F0 0D      BEQ &28C3
     28B6   A9 40      LDA #&40
     28B8   0D 4E 2D   ORA &2D4E
     28BB   8D 4E 2D   STA &2D4E
     28BE   0A         ASL A
     28BF   91 8A      STA (&8A),Y
     28C1   D0 1F      BNE &28E2
.plane_hit
     28C3   A9 19      LDA #&19
     28C5   85 77      STA &77
     28C7   A9 D8      LDA #&D8
     28C9   91 8A      STA (&8A),Y
     28CB   AA         TAX
     28CC   A0 2D      LDY #&2D
     28CE   A9 07      LDA #&07
     28D0   20 F1 FF   JSR &FFF1
     28D3   A9 02      LDA #&02
     28D5   0D 4E 2D   ORA &2D4E
     28D8   8D 4E 2D   STA &2D4E
     28DB   68         PLA
     28DC   A8         TAY
     28DD   38         SEC
     28DE   60         RTS
.plane_not_hit
     28DF   C8         INY
     28E0   C8         INY
     28E1   C8         INY
     28E2   C4 80      CPY &80
     28E4   90 AE      BCC &2894
     28E6   68         PLA
     28E7   A8         TAY
     28E8   18         CLC
     28E9   60         RTS
.mp
.move_planes
     28EA   A0 00      LDY #&00
     28EC   B1 75      LDA (&75),Y
     28EE   85 70      STA &70
     28F0   84 72      STY &72
.nxpl
     28F2   C8         INY
     28F3   B1 75      LDA (&75),Y
     28F5   85 77      STA &77
     28F7   C8         INY
     28F8   B1 75      LDA (&75),Y
     28FA   85 78      STA &78
     28FC   C8         INY
     28FD   B1 75      LDA (&75),Y
     28FF   85 79      STA &79
     2901   C8         INY
     2902   B1 75      LDA (&75),Y
     2904   85 7A      STA &7A
     2906   C8         INY
     2907   B1 75      LDA (&75),Y
     2909   85 7B      STA &7B
     290B   A5 77      LDA &77
     290D   29 C0      AND #&C0
     290F   D0 03      BNE &2914
     2911   4C 30 28   JMP &2830
.no_explosion
     2914   A5 7A      LDA &7A
     2916   10 03      BPL &291B
     2918   4C 17 2A   JMP &2A17
.plane_flying
     291B   C6 77      DEC &77
     291D   20 28 2A   JSR &2A28
     2920   20 8C 28   JSR &288C
     2923   90 03      BCC &2928
     2925   4C 30 28   JMP &2830
.plane_not_hit
     2928   A5 73      LDA &73
     292A   29 BF      AND #&BF
     292C   85 73      STA &73
     292E   E6 72      INC &72
     2930   A5 7B      LDA &7B
     2932   C9 AF      CMP #&AF
     2934   D0 21      BNE &2957
     2936   38         SEC
     2937   A5 78      LDA &78
     2939   E9 87      SBC #&87
     293B   85 78      STA &78
     293D   A5 79      LDA &79
     293F   E9 48      SBC #&48
     2941   85 79      STA &79
     2943   A9 C0      LDA #&C0
     2945   85 7B      STA &7B
     2947   AD 55 25   LDA &2555
     294A   F0 0B      BEQ &2957
     294C   A5 7A      LDA &7A
     294E   49 80      EOR #&80
     2950   85 7A      STA &7A
     2952   E6 77      INC &77
     2954   4C FB 29   JMP &29FB
.calc_move
     2957   A9 3F      LDA #&3F
     2959   25 77      AND &77
     295B   D0 40      BNE &299D
     295D   38         SEC
     295E   A5 7A      LDA &7A
     2960   ED A6 2D   SBC &2DA6
     2963   85 77      STA &77
     2965   A9 00      LDA #&00
     2967   B0 02      BCS &296B
     2969   38         SEC
     296A   6A         ROR A
.pl3
     296B   6A         ROR A
     296C   85 80      STA &80
     296E   A5 77      LDA &77
     2970   D0 0D      BNE &297F
.pl20
     2972   A5 7D      LDA &7D
     2974   10 06      BPL &297C
     2976   A5 80      LDA &80
     2978   49 C0      EOR #&C0
     297A   85 80      STA &80
.pl21
     297C   AD 51 2D   LDA &2D51
.pl5
     297F   10 05      BPL &2986
     2981   49 FF      EOR #&FF
     2983   18         CLC
     2984   69 01      ADC #&01
.pl4
     2986   C9 02      CMP #&02
     2988   30 0F      BMI &2999
     298A   8D 8A 2B   STA &2B8A
     298D   20 84 2B   JSR &2B84
     2990   4E 8A 2B   LSR &2B8A
     2993   18         CLC
     2994   6D 8A 2B   ADC &2B8A
     2997   29 3F      AND #&3F
.pl6
     2999   05 80      ORA &80
     299B   85 77      STA &77
.mid
     299D   A5 77      LDA &77
     299F   A6 7A      LDX &7A
     29A1   E0 01      CPX #&01
     29A3   10 07      BPL &29AC
     29A5   09 40      ORA #&40
     29A7   29 7F      AND #&7F
     29A9   4C B4 29   JMP &29B4
.plnl
     29AC   E0 48      CPX #&48
     29AE   30 06      BMI &29B6
     29B0   09 80      ORA #&80
     29B2   29 BF      AND #&BF
.down
     29B4   85 77      STA &77
     29B6   E6 7B      INC &7B
     29B8   A9 07      LDA #&07
     29BA   25 78      AND &78
     29BC   C9 07      CMP #&07
     29BE   F0 05      BEQ &29C5
     29C0   E6 78      INC &78
     29C2   4C D2 29   JMP &29D2
.pl2
     29C5   18         CLC
     29C6   A5 78      LDA &78
     29C8   69 79      ADC #&79
     29CA   85 78      STA &78
     29CC   A5 79      LDA &79
     29CE   69 02      ADC #&02
     29D0   85 79      STA &79
.left
     29D2   AD 27 2A   LDA &2A27
     29D5   F0 21      BEQ &29F8
     29D7   A5 77      LDA &77
     29D9   10 10      BPL &29EB
     29DB   C6 7A      DEC &7A
     29DD   38         SEC
     29DE   A5 78      LDA &78
     29E0   E9 08      SBC #&08
     29E2   85 78      STA &78
     29E4   B0 12      BCS &29F8
     29E6   C6 79      DEC &79
     29E8   4C F8 29   JMP &29F8
.right
     29EB   E6 7A      INC &7A
     29ED   18         CLC
     29EE   A5 78      LDA &78
     29F0   69 08      ADC #&08
     29F2   85 78      STA &78
     29F4   90 02      BCC &29F8
     29F6   E6 79      INC &79
.enlr
.fo
     29F8   20 28 2A   JSR &2A28
.save_plane
     29FB   88         DEY
     29FC   88         DEY
     29FD   88         DEY
     29FE   88         DEY
     29FF   A5 77      LDA &77
     2A01   91 75      STA (&75),Y
     2A03   C8         INY
     2A04   A5 78      LDA &78
     2A06   91 75      STA (&75),Y
     2A08   C8         INY
     2A09   A5 79      LDA &79
     2A0B   91 75      STA (&75),Y
     2A0D   C8         INY
     2A0E   A5 7A      LDA &7A
     2A10   91 75      STA (&75),Y
     2A12   C8         INY
     2A13   A5 7B      LDA &7B
     2A15   91 75      STA (&75),Y
.pl1
     2A17   C4 70      CPY &70
     2A19   F0 03      BEQ &2A1E
     2A1B   4C F2 28   JMP &28F2
.hop7
     2A1E   A9 01      LDA #&01
     2A20   4D 27 2A   EOR &2A27
     2A23   8D 27 2A   STA &2A27
     2A26   60         RTS
.tog
     2A27   00
.pp
.plot_plane
     2A28   98         TYA
     2A29   48         PHA
     2A2A   18         CLC
     2A2B   A5 78      LDA &78
     2A2D   69 78      ADC #&78
     2A2F   85 84      STA &84
     2A31   29 07      AND #&07
     2A33   49 07      EOR #&07
     2A35   8D 46 2A   STA &2A46
     2A38   8D 54 2A   STA &2A54
     2A3B   A5 79      LDA &79
     2A3D   69 02      ADC #&02
     2A3F   85 85      STA &85
.modify_plane_sprite_length
     2A41   A0 3F      LDY #&3F
.plot_loop
     2A43   A2 07      LDX #&07
.plot_pl_mod1
     2A45   E0 FF      CPX #&FF
     2A47   F0 0E      BEQ &2A57
.bottom
     2A49   B1 88      LDA (&88),Y
     2A4B   F0 04      BEQ &2A51
     2A4D   51 84      EOR (&84),Y
     2A4F   91 84      STA (&84),Y
.bz
     2A51   88         DEY
     2A52   CA         DEX
.plot_pl_mod2
     2A53   E0 FF      CPX #&FF
     2A55   D0 F2      BNE &2A49
.top
     2A57   B1 88      LDA (&88),Y
     2A59   F0 04      BEQ &2A5F
     2A5B   51 78      EOR (&78),Y
     2A5D   91 78      STA (&78),Y
.tz
     2A5F   88         DEY
     2A60   CA         DEX
     2A61   10 F4      BPL &2A57
     2A63   98         TYA
     2A64   10 DD      BPL &2A43
     2A66   68         PLA
     2A67   A8         TAY
     2A68   60         RTS
.new_bomb
     2A69   EA         NOP
     2A6A   A5 51      LDA &51
     2A6C   C5 50      CMP &50
     2A6E   90 6E      BCC &2ADE
     2A70   A9 C0      LDA #&C0
     2A72   24 73      BIT &73
     2A74   D0 68      BNE &2ADE
     2A76   C6 73      DEC &73
     2A78   D0 64      BNE &2ADE
     2A7A   A6 51      LDX &51
.find_slot_loop
     2A7C   CA         DEX
     2A7D   B5 52      LDA &52,X
     2A7F   F0 05      BEQ &2A86
     2A81   CA         DEX
     2A82   D0 F8      BNE &2A7C
     2A84   F0 58      BEQ &2ADE
.find_plane
     2A86   CA         DEX
     2A87   A0 FF      LDY #&FF
.find_plane_loop
     2A89   C8         INY
     2A8A   C8         INY
     2A8B   C8         INY
     2A8C   C8         INY
     2A8D   C8         INY
     2A8E   B1 75      LDA (&75),Y
     2A90   30 F7      BMI &2A89
     2A92   88         DEY
     2A93   88         DEY
     2A94   88         DEY
     2A95   B1 75      LDA (&75),Y
     2A97   29 C0      AND #&C0
     2A99   D0 06      BNE &2AA1
     2A9B   C8         INY
     2A9C   C8         INY
     2A9D   C8         INY
     2A9E   4C 89 2A   JMP &2A89
.found_plane
     2AA1   C8         INY
     2AA2   18         CLC
     2AA3   B1 75      LDA (&75),Y
     2AA5   69 9D      ADC #&9D
     2AA7   95 52      STA &52,X
     2AA9   C8         INY
     2AAA   B1 75      LDA (&75),Y
     2AAC   69 02      ADC #&02
     2AAE   95 53      STA &53,X
     2AB0   18         CLC
     2AB1   B5 52      LDA &52,X
     2AB3   69 78      ADC #&78
     2AB5   95 62      STA &62,X
     2AB7   B5 53      LDA &53,X
     2AB9   69 02      ADC #&02
     2ABB   95 63      STA &63,X
     2ABD   18         CLC
     2ABE   8A         TXA
     2ABF   69 52      ADC #&52
     2AC1   8D FE 2A   STA &2AFE
     2AC4   8D 02 2B   STA &2B02
     2AC7   8A         TXA
     2AC8   69 62      ADC #&62
     2ACA   8D F3 2A   STA &2AF3
     2ACD   8D F7 2A   STA &2AF7
     2AD0   B5 52      LDA &52,X
     2AD2   20 E5 2A   JSR &2AE5
     2AD5   A0 00      LDY #&00
     2AD7   AD A7 2D   LDA &2DA7
     2ADA   85 73      STA &73
     2ADC   E6 50      INC &50
.no_bomb
     2ADE   A9 C0      LDA #&C0
     2AE0   05 73      ORA &73
     2AE2   85 73      STA &73
     2AE4   60         RTS
.plot_bomb
     2AE5   A0 05      LDY #&05
     2AE7   29 07      AND #&07
     2AE9   49 07      EOR #&07
     2AEB   8D FA 2A   STA &2AFA
     2AEE   C9 05      CMP #&05
     2AF0   10 0B      BPL &2AFD
.plot_bomb_lower1
     2AF2   B1 62      LDA (&62),Y
     2AF4   49 2A      EOR #&2A
.plot_bomb_lower2
     2AF6   91 62      STA (&62),Y
     2AF8   88         DEY
.plot_bomb_mod
     2AF9   C0 FF      CPY #&FF
     2AFB   D0 F5      BNE &2AF2
.plot_bomb_upper1
     2AFD   B1 52      LDA (&52),Y
     2AFF   49 2A      EOR #&2A
.plot_bomb_upper2
     2B01   91 52      STA (&52),Y
     2B03   88         DEY
     2B04   10 F7      BPL &2AFD
     2B06   60         RTS
.move_bombs
     2B07   EA         NOP
     2B08   A2 00      LDX #&00
.next_bomb_loop
     2B0A   18         CLC
     2B0B   8A         TXA
     2B0C   69 52      ADC #&52
     2B0E   8D FE 2A   STA &2AFE
     2B11   8D 02 2B   STA &2B02
     2B14   8A         TXA
     2B15   69 62      ADC #&62
     2B17   8D F3 2A   STA &2AF3
     2B1A   8D F7 2A   STA &2AF7
     2B1D   B5 53      LDA &53,X
     2B1F   D0 08      BNE &2B29
     2B21   A9 7F      LDA #&7F
     2B23   25 73      AND &73
     2B25   85 73      STA &73
     2B27   D0 51      BNE &2B7A
.unplot
     2B29   B5 52      LDA &52,X
     2B2B   20 E5 2A   JSR &2AE5
.upper_addr
     2B2E   B5 52      LDA &52,X
     2B30   29 07      AND #&07
     2B32   CD 92 2B   CMP &2B92
     2B35   10 13      BPL &2B4A
     2B37   18         CLC
     2B38   B5 52      LDA &52,X
     2B3A   6D 91 2B   ADC &2B91
     2B3D   95 52      STA &52,X
     2B3F   18         CLC
     2B40   B5 62      LDA &62,X
     2B42   6D 91 2B   ADC &2B91
     2B45   95 62      STA &62,X
     2B47   4C 67 2B   JMP &2B67
.upper_next_line
     2B4A   18         CLC
     2B4B   B5 52      LDA &52,X
     2B4D   6D 93 2B   ADC &2B93
     2B50   95 52      STA &52,X
     2B52   B5 53      LDA &53,X
     2B54   6D 94 2B   ADC &2B94
     2B57   95 53      STA &53,X
     2B59   B5 62      LDA &62,X
     2B5B   6D 93 2B   ADC &2B93
     2B5E   95 62      STA &62,X
     2B60   B5 63      LDA &63,X
     2B62   6D 94 2B   ADC &2B94
     2B65   95 63      STA &63,X
.check_bottom
     2B67   B5 53      LDA &53,X
     2B69   C9 80      CMP #&80
     2B6B   90 08      BCC &2B75
     2B6D   C6 50      DEC &50
     2B6F   A9 00      LDA #&00
     2B71   95 53      STA &53,X
     2B73   F0 05      BEQ &2B7A
.bomb_redraw
     2B75   B5 52      LDA &52,X
     2B77   20 E5 2A   JSR &2AE5
.next_bomb
     2B7A   E8         INX
     2B7B   E8         INX
     2B7C   E4 51      CPX &51
     2B7E   90 8A      BCC &2B0A
     2B80   60         RTS
.ra2
     2B81   8D 8A 2B   STA &2B8A
     2B84   38         SEC
     2B85   A5 7C      LDA &7C
     2B87   29 7F      AND #&7F
.ra3
     2B89   E9 10      SBC #&10
     2B8B   10 FC      BPL &2B89
     2B8D   6D 8A 2B   ADC &2B8A
     2B90   60         RTS
.end_GG_02_code
.end_GG_02_code =  &2B91 
.bomb_vert_rate
     2B91   03
.bomb_vert_newline
     2B92   05
.bomb_vert_LO
     2B93   7B
.bomb_vert_HI
     2B94   02
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
.plX
     2D35   00
     2D36   00
     2D37   00
     2D38   00
     2D39   00
     2D3A   00
     2D3B   00
     2D3C   00
.cloud_sprite_offset_list
     2D3D   80
     2D3E   40
     2D3F   40
     2D40   00
     2D41   80
     2D42   00
     2D43   40
     2D44   80
     2D45   00
.bis
     2D46   88
     2D47   A0
     2D48   B8
     2D49   D0
     2D4A   E8
     2D4B   D0
     2D4C   B8
     2D4D   88
.sc
     2D4E   00
     2D4F   00
     2D50   00
.de
     2D51   20
.ti
     2D52   03
     2D53   42
.ba
     2D54   00
     2D55   00
     2D56   06
     2D57   00
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
