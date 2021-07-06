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
     112D   20 20 18   JSR &1820
     1130   B9 42 11   LDA &1142,Y
     1133   20 EE FF   JSR &FFEE
     1136   C9 52      CMP #&52
     1138   D0 F0      BNE &112A
     113A   A9 96      LDA #&96
     113C   20 20 18   JSR &1820
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
     1159   20 20 18   JSR &1820
     115C   20 7F 13   JSR &137F
     115F   4C 68 11   JMP &1168
.bon0
     1162   20 44 18   JSR &1844
     1165   20 2B 19   JSR &192B
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
     1182   20 20 18   JSR &1820
     1185   98         TYA
     1186   48         PHA
     1187   A2 E8      LDX #&E8
     1189   A0 2D      LDY #&2D
     118B   A9 07      LDA #&07
     118D   20 F1 FF   JSR &FFF1
     1190   20 94 17   JSR &1794
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
     13BC   20 21 1F   JSR &1F21
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
     13EA   20 44 18   JSR &1844
     13ED   8E 86 1A   STX &1A86
     13F0   EE 5C 25   INC &255C
.stm8
     13F3   20 63 18   JSR &1863
     13F6   D0 FB      BNE &13F3
     13F8   20 44 18   JSR &1844
     13FB   20 2B 19   JSR &192B
     13FE   A9 3C      LDA #&3C
     1400   20 20 18   JSR &1820
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
     14C7   20 20 18   JSR &1820
.space
     14CA   A9 1A      LDA #&1A
     14CC   20 EE FF   JSR &FFEE
     14CF   A2 65      LDX #&65
     14D1   A0 13      LDY #&13
     14D3   20 F2 14   JSR &14F2
.ge4
     14D6   A2 9D      LDX #&9D
     14D8   20 5A 19   JSR &195A
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
     151E   8D A5 19   STA &19A5
     1521   AD 0D 02   LDA &020D
     1524   8D A6 19   STA &19A6
.newgame
     1527   20 20 14   JSR &1420
     152A   20 A2 15   JSR &15A2
.GO
     152D   20 BC 1C   JSR &1CBC
     1530   20 2D 26   JSR &262D
     1533   20 C0 28   JSR &28C0
     1536   20 22 28   JSR &2822
     1539   20 51 26   JSR &2651
     153C   20 CA 26   JSR &26CA
     153F   20 46 27   JSR &2746
     1542   20 87 2B   JSR &2B87
     1545   20 EA 2A   JSR &2AEA
     1548   20 12 1B   JSR &1B12
     154B   20 BC 19   JSR &19BC
     154E   20 21 17   JSR &1721
     1551   20 63 19   JSR &1963
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
     158A   0C
     158B   08
     158C   10
     158D   04
     158E   04
     158F   04
     1590   04
     1591   04
.level_inb
.level_bomb_interval
     1592   1F
     1593   24
     1594   EA
     1595   E9
     1596   ED
     1597   ED
     1598   EC
     1599   EC
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
     15AB   20 2B 19   JSR &192B
     15AE   A9 16      LDA #&16
     15B0   20 EE FF   JSR &FFEE
     15B3   A9 02      LDA #&02
     15B5   20 EE FF   JSR &FFEE
     15B8   A9 00      LDA #&00
     15BA   8D FC 17   STA &17FC
     15BD   85 8E      STA &8E
     15BF   8D 5C 25   STA &255C
     15C2   8D 54 25   STA &2554
     15C5   8D 55 25   STA &2555
     15C8   8D 5F 2D   STA &2D5F
     15CB   8D 60 2D   STA &2D60
     15CE   85 88      STA &88
     15D0   85 52      STA &52
     15D2   85 53      STA &53
     15D4   85 54      STA &54
     15D6   85 55      STA &55
     15D8   85 56      STA &56
     15DA   85 57      STA &57
     15DC   18         CLC
     15DD   A9 03      LDA #&03
     15DF   8D 62 2D   STA &2D62
     15E2   A9 2A      LDA #&2A
     15E4   8D 63 2D   STA &2D63
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
     1617   20 44 18   JSR &1844
     161A   8E 86 1A   STX &1A86
     161D   EE 5C 25   INC &255C
     1620   A0 5C      LDY #&5C
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
     1634   20 1E 1D   JSR &1D1E
     1637   20 CD 1C   JSR &1CCD
     163A   20 21 1F   JSR &1F21
     163D   20 94 17   JSR &1794
     1640   A9 00      LDA #&00
     1642   8D 5B 25   STA &255B
     1645   8D 5E 2D   STA &2D5E
     1648   8D 65 2D   STA &2D65
     164B   AC 5C 25   LDY &255C
     164E   88         DEY
     164F   B9 72 15   LDA &1572,Y
     1652   8D 61 2D   STA &2D61
     1655   B9 92 15   LDA &1592,Y
     1658   09 C0      ORA #&C0
     165A   8D A7 2D   STA &2DA7
     165D   85 73      STA &73
     165F   B9 8A 15   LDA &158A,Y
     1662   85 51      STA &51
     1664   B9 9A 15   LDA &159A,Y
     1667   8D 77 2C   STA &2C77
     166A   18         CLC
     166B   69 78      ADC #&78
     166D   8D 79 2C   STA &2C79
     1670   49 07      EOR #&07
     1672   29 07      AND #&07
     1674   AA         TAX
     1675   E8         INX
     1676   8E 78 2C   STX &2C78
     1679   B9 7A 15   LDA &157A,Y
     167C   8D F0 2C   STA &2CF0
     167F   A9 1E      LDA #&1E
     1681   8D 01 2D   STA &2D01
     1684   A9 88      LDA #&88
     1686   8D 59 25   STA &2559
     1689   A9 30      LDA #&30
     168B   8D 5A 25   STA &255A
     168E   A9 80      LDA #&80
     1690   8D 57 25   STA &2557
     1693   A9 32      LDA #&32
     1695   8D 58 25   STA &2558
     1698   AE 56 25   LDX &2556
.pmi
     169B   20 A7 19   JSR &19A7
     169E   18         CLC
     169F   AD 57 25   LDA &2557
     16A2   69 18      ADC #&18
     16A4   8D 57 25   STA &2557
     16A7   CA         DEX
     16A8   D0 F1      BNE &169B
     16AA   A9 3A      LDA #&3A
     16AC   85 81      STA &81
     16AE   A9 81      LDA #&81
     16B0   85 82      STA &82
     16B2   A2 01      LDX #&01
     16B4   A0 08      LDY #&08
.pp1
     16B6   A9 81      LDA #&81
     16B8   9D 01 2D   STA &2D01,X
     16BB   E8         INX
     16BC   98         TYA
     16BD   18         CLC
     16BE   69 50      ADC #&50
     16C0   9D 01 2D   STA &2D01,X
     16C3   A8         TAY
     16C4   E8         INX
     16C5   A5 81      LDA &81
     16C7   69 00      ADC #&00
     16C9   9D 01 2D   STA &2D01,X
     16CC   85 81      STA &81
     16CE   18         CLC
     16CF   E8         INX
     16D0   A5 82      LDA &82
     16D2   69 0A      ADC #&0A
     16D4   85 82      STA &82
     16D6   9D 01 2D   STA &2D01,X
     16D9   E8         INX
     16DA   A9 D0      LDA #&D0
     16DC   9D 01 2D   STA &2D01,X
     16DF   E8         INX
     16E0   E0 1F      CPX #&1F
     16E2   30 D2      BMI &16B6
     16E4   A0 00      LDY #&00
     16E6   B1 75      LDA (&75),Y
     16E8   85 70      STA &70
.slop
     16EA   C8         INY
     16EB   C8         INY
     16EC   B1 75      LDA (&75),Y
     16EE   85 78      STA &78
     16F0   C8         INY
     16F1   B1 75      LDA (&75),Y
     16F3   85 79      STA &79
     16F5   20 59 2A   JSR &2A59
     16F8   C8         INY
     16F9   C8         INY
     16FA   C4 70      CPY &70
     16FC   30 EC      BMI &16EA
     16FE   20 69 1A   JSR &1A69
.sgun
.player_gun_initialise
     1701   A9 20      LDA #&20
     1703   8D A6 2D   STA &2DA6
     1706   A9 7E      LDA #&7E
     1708   85 87      STA &87
     170A   A9 90      LDA #&90
     170C   85 86      STA &86
     170E   A9 20      LDA #&20
     1710   8D BF 26   STA &26BF
     1713   A9 58      LDA #&58
     1715   8D BE 26   STA &26BE
     1718   20 BB 26   JSR &26BB
     171B   A9 40      LDA #&40
     171D   4C 2B 19   JMP &192B
.score_exit
     1720   60         RTS
.sor
     1721   AD 5E 2D   LDA &2D5E
     1724   F0 FA      BEQ &1720
     1726   F8         SED
     1727   29 02      AND #&02
     1729   F0 14      BEQ &173F
     172B   18         CLC
     172C   A9 15      LDA #&15
     172E   6D 5F 2D   ADC &2D5F
     1731   8D 5F 2D   STA &2D5F
     1734   AD 60 2D   LDA &2D60
     1737   69 00      ADC #&00
     1739   8D 60 2D   STA &2D60
     173C   20 91 1C   JSR &1C91
.s1
     173F   A9 40      LDA #&40
     1741   2C 5E 2D   BIT &2D5E
     1744   F0 1C      BEQ &1762
     1746   18         CLC
     1747   A9 01      LDA #&01
.wng
     1749   6D 5F 2D   ADC &2D5F
     174C   8D 5F 2D   STA &2D5F
     174F   AD 60 2D   LDA &2D60
     1752   69 00      ADC #&00
     1754   8D 60 2D   STA &2D60
     1757   D8         CLD
     1758   A2 C8      LDX #&C8
     175A   A0 2D      LDY #&2D
     175C   A9 07      LDA #&07
     175E   20 F1 FF   JSR &FFF1
     1761   F8         SED
.s4
     1762   A9 10      LDA #&10
     1764   2C 5E 2D   BIT &2D5E
     1767   F0 1A      BEQ &1783
     1769   18         CLC
     176A   A9 0A      LDA #&0A
.pig
     176C   6D 5F 2D   ADC &2D5F
     176F   8D 5F 2D   STA &2D5F
     1772   AD 60 2D   LDA &2D60
     1775   69 00      ADC #&00
     1777   8D 60 2D   STA &2D60
     177A   D8         CLD
     177B   20 63 18   JSR &1863
     177E   D0 03      BNE &1783
     1780   20 50 11   JSR &1150
.s2
     1783   D8         CLD
     1784   20 CD 17   JSR &17CD
     1787   AD 5E 2D   LDA &2D5E
     178A   10 03      BPL &178F
     178C   4C 30 18   JMP &1830
.s3
     178F   A9 00      LDA #&00
     1791   8D 5E 2D   STA &2D5E
.s7
.score_update_screen
     1794   A9 34      LDA #&34
     1796   85 81      STA &81
     1798   A9 B0      LDA #&B0
     179A   85 80      STA &80
     179C   A9 24      LDA #&24
     179E   85 83      STA &83
     17A0   A9 F0      LDA #&F0
     17A2   2D 60 2D   AND &2D60
     17A5   20 3D 26   JSR &263D
     17A8   A9 0F      LDA #&0F
     17AA   2D 60 2D   AND &2D60
     17AD   0A         ASL A
     17AE   0A         ASL A
     17AF   0A         ASL A
     17B0   0A         ASL A
     17B1   20 3D 26   JSR &263D
     17B4   A9 F0      LDA #&F0
     17B6   2D 5F 2D   AND &2D5F
     17B9   20 3D 26   JSR &263D
     17BC   A9 0F      LDA #&0F
     17BE   2D 5F 2D   AND &2D5F
     17C1   0A         ASL A
     17C2   0A         ASL A
     17C3   0A         ASL A
     17C4   0A         ASL A
     17C5   20 3D 26   JSR &263D
     17C8   A9 00      LDA #&00
     17CA   4C 3D 26   JMP &263D
.extra_player_check
.exg
     17CD   A9 01      LDA #&01
     17CF   2C FC 17   BIT &17FC
     17D2   D0 10      BNE &17E4
     17D4   AC 60 2D   LDY &2D60
     17D7   C0 05      CPY #&05
     17D9   30 20      BMI &17FB
     17DB   0D FC 17   ORA &17FC
     17DE   8D FC 17   STA &17FC
     17E1   20 FD 17   JSR &17FD
.exg1
     17E4   A9 02      LDA #&02
     17E6   2C FC 17   BIT &17FC
     17E9   D0 10      BNE &17FB
     17EB   AC 60 2D   LDY &2D60
     17EE   C0 10      CPY #&10
     17F0   30 09      BMI &17FB
     17F2   0D FC 17   ORA &17FC
     17F5   8D FC 17   STA &17FC
     17F8   4C FD 17   JMP &17FD
.exg2
     17FB   60         RTS
.exg3
     17FC   00
.exg4
     17FD   20 A7 19   JSR &19A7
     1800   A9 DC      LDA #&DC
     1802   8D FC 2D   STA &2DFC
     1805   A2 F8      LDX #&F8
     1807   A0 2D      LDY #&2D
     1809   A9 07      LDA #&07
     180B   20 F1 FF   JSR &FFF1
     180E   EE 56 25   INC &2556
     1811   18         CLC
     1812   AD 57 25   LDA &2557
     1815   69 18      ADC #&18
     1817   8D 57 25   STA &2557
     181A   90 03      BCC &181F
     181C   EE 58 25   INC &2558
.exg5
     181F   60         RTS
.delay
     1820   8D 0A 22   STA &220A
     1823   98         TYA
     1824   48         PHA
.del1
     1825   20 2D 26   JSR &262D
     1828   CE 0A 22   DEC &220A
     182B   D0 F8      BNE &1825
     182D   68         PLA
     182E   A8         TAY
     182F   60         RTS
.next_level
.ef
     1830   A9 00      LDA #&00
     1832   8D 5E 2D   STA &2D5E
     1835   18         CLC
     1836   A5 88      LDA &88
     1838   69 40      ADC #&40
     183A   85 88      STA &88
     183C   A9 64      LDA #&64
     183E   20 20 18   JSR &1820
     1841   4C 17 16   JMP &1617
.cht
     1844   A9 03      LDA #&03
     1846   2D 5C 25   AND &255C
     1849   AA         TAX
     184A   D0 03      BNE &184F
     184C   A9 33      LDA #&33
     184E   60         RTS
.ct1
     184F   CA         DEX
     1850   D0 04      BNE &1856
     1852   8A         TXA
     1853   A2 0D      LDX #&0D
     1855   60         RTS
.ct2
     1856   CA         DEX
     1857   D0 05      BNE &185E
     1859   A9 11      LDA #&11
     185B   A2 1A      LDX #&1A
     185D   60         RTS
.ct3
     185E   A9 22      LDA #&22
     1860   A2 26      LDX #&26
     1862   60         RTS
.nxno
     1863   EE 86 1A   INC &1A86
     1866   AC 86 1A   LDY &1A86
     1869   B9 86 1A   LDA &1A86,Y
     186C   85 70      STA &70
     186E   29 0E      AND #&0E
     1870   C9 08      CMP #&08
     1872   10 0A      BPL &187E
     1874   18         CLC
     1875   6D 59 25   ADC &2559
     1878   85 80      STA &80
     187A   A9 00      LDA #&00
     187C   F0 0A      BEQ &1888
.n1
     187E   18         CLC
     187F   6D 59 25   ADC &2559
     1882   69 78      ADC #&78
     1884   85 80      STA &80
     1886   A9 02      LDA #&02
.n2
     1888   6D 5A 25   ADC &255A
     188B   85 81      STA &81
     188D   A9 20      LDA #&20
     188F   85 83      STA &83
     1891   20 C3 18   JSR &18C3
     1894   18         CLC
     1895   AD 59 25   LDA &2559
     1898   69 20      ADC #&20
     189A   8D 59 25   STA &2559
     189D   90 03      BCC &18A2
     189F   EE 5A 25   INC &255A
.n3
     18A2   20 F7 18   JSR &18F7
     18A5   18         CLC
     18A6   A5 80      LDA &80
     18A8   69 08      ADC #&08
     18AA   85 80      STA &80
     18AC   90 02      BCC &18B0
     18AE   E6 81      INC &81
.n4
     18B0   18         CLC
     18B1   A5 82      LDA &82
     18B3   69 08      ADC #&08
     18B5   85 82      STA &82
     18B7   90 02      BCC &18BB
     18B9   E6 83      INC &83
.n5
     18BB   20 F7 18   JSR &18F7
     18BE   C8         INY
     18BF   B9 86 1A   LDA &1A86,Y
     18C2   60         RTS
.chnot
     18C3   A9 80      LDA #&80
     18C5   24 70      BIT &70
     18C7   F0 05      BEQ &18CE
     18C9   A9 00      LDA #&00
     18CB   85 82      STA &82
     18CD   60         RTS
.c1
     18CE   4A         LSR A
     18CF   24 70      BIT &70
     18D1   F0 05      BEQ &18D8
     18D3   A9 10      LDA #&10
     18D5   85 82      STA &82
     18D7   60         RTS
.c2
     18D8   4A         LSR A
     18D9   24 70      BIT &70
     18DB   F0 05      BEQ &18E2
     18DD   A9 20      LDA #&20
     18DF   85 82      STA &82
     18E1   60         RTS
.c3
     18E2   4A         LSR A
     18E3   24 70      BIT &70
     18E5   F0 05      BEQ &18EC
     18E7   A9 30      LDA #&30
     18E9   85 82      STA &82
     18EB   60         RTS
.c4
     18EC   A9 01      LDA #&01
     18EE   24 70      BIT &70
     18F0   F0 04      BEQ &18F6
     18F2   A9 40      LDA #&40
     18F4   85 82      STA &82
.c5
     18F6   60         RTS
.pno
     18F7   98         TYA
     18F8   48         PHA
     18F9   A0 07      LDY #&07
     18FB   18         CLC
     18FC   A5 80      LDA &80
     18FE   69 78      ADC #&78
     1900   85 84      STA &84
     1902   A5 81      LDA &81
     1904   69 02      ADC #&02
     1906   85 85      STA &85
     1908   A5 80      LDA &80
     190A   29 07      AND #&07
     190C   49 07      EOR #&07
     190E   85 74      STA &74
     1910   C9 07      CMP #&07
     1912   10 0B      BPL &191F
.pnbot
     1914   B1 82      LDA (&82),Y
     1916   11 84      ORA (&84),Y
     1918   91 84      STA (&84),Y
     191A   88         DEY
     191B   C4 74      CPY &74
     191D   D0 F5      BNE &1914
.pntop
     191F   B1 82      LDA (&82),Y
     1921   11 80      ORA (&80),Y
     1923   91 80      STA (&80),Y
     1925   88         DEY
     1926   10 F7      BPL &191F
     1928   68         PLA
     1929   A8         TAY
     192A   60         RTS
.playTune
.tune
     192B   85 70      STA &70
.t1
     192D   A4 70      LDY &70
     192F   B9 B6 1A   LDA &1AB6,Y
     1932   F0 1A      BEQ &194E
     1934   8D FC 2D   STA &2DFC
     1937   C8         INY
     1938   B9 B6 1A   LDA &1AB6,Y
     193B   8D FE 2D   STA &2DFE
     193E   A2 F8      LDX #&F8
     1940   A0 2D      LDY #&2D
     1942   A9 07      LDA #&07
     1944   20 F1 FF   JSR &FFF1
     1947   E6 70      INC &70
     1949   E6 70      INC &70
     194B   4C 2D 19   JMP &192D
.t3
     194E   A9 80      LDA #&80
     1950   A2 FA      LDX #&FA
     1952   20 F4 FF   JSR &FFF4
     1955   E0 0F      CPX #&0F
     1957   30 F5      BMI &194E
     1959   60         RTS
.keyboardScan
.key
     195A   A9 81      LDA #&81
     195C   A0 FF      LDY #&FF
     195E   20 F4 FF   JSR &FFF4
     1961   E8         INX
     1962   60         RTS
.check_key_press
.opt
.checkQkey
     1963   A2 EF      LDX #&EF
     1965   20 5A 19   JSR &195A
     1968   D0 0A      BNE &1974
     196A   A9 9E      LDA #&9E
     196C   8D 0C 02   STA &020C
     196F   A9 19      LDA #&19
     1971   8D 0D 02   STA &020D
.op1
.checkSkey
     1974   A2 AE      LDX #&AE
     1976   20 5A 19   JSR &195A
     1979   D0 0C      BNE &1987
     197B   AD A5 19   LDA &19A5
     197E   8D 0C 02   STA &020C
     1981   AD A6 19   LDA &19A6
     1984   8D 0D 02   STA &020D
.op2
.checkRkey
     1987   A2 CC      LDX #&CC
     1989   20 5A 19   JSR &195A
     198C   D0 0F      BNE &199D
.op3
     198E   A9 81      LDA #&81
     1990   A0 01      LDY #&01
     1992   A2 00      LDX #&00
     1994   20 F4 FF   JSR &FFF4
     1997   B0 F5      BCS &198E
     1999   E0 52      CPX #&52
     199B   F0 F1      BEQ &198E
.op5
.checkKeyComplete
     199D   60         RTS
.mute
     199E   C9 07      CMP #&07
     19A0   F0 FB      BEQ &199D
.mu1
     19A2   6C A5 19   JMP (&19A5)
.soun
     19A5   EB E7
.end_SS_03
.end_SS_03 =  &19A7 
.mini
.plot_gun_life_indicator
     19A7   A9 10      LDA #&10
     19A9   85 82      STA &82
     19AB   A9 21      LDA #&21
     19AD   85 83      STA &83
     19AF   AD 57 25   LDA &2557
     19B2   85 80      STA &80
     19B4   AD 58 25   LDA &2558
     19B7   85 81      STA &81
     19B9   4C 85 1C   JMP &1C85
.gun_hit_display
.h0
     19BC   A9 20      LDA #&20
     19BE   2C 5E 2D   BIT &2D5E
     19C1   D0 06      BNE &19C9
     19C3   AD 55 25   LDA &2555
     19C6   D0 37      BNE &19FF
.hreturn
     19C8   60         RTS
.h1
     19C9   A2 00      LDX #&00
     19CB   A0 07      LDY #&07
     19CD   20 00 26   JSR &2600
     19D0   A9 07      LDA #&07
     19D2   A0 2D      LDY #&2D
     19D4   A2 E0      LDX #&E0
     19D6   20 F1 FF   JSR &FFF1
     19D9   A9 FF      LDA #&FF
     19DB   8D 55 25   STA &2555
     19DE   A9 60      LDA #&60
     19E0   8D 96 2A   STA &2A96
     19E3   8D 22 28   STA &2822
     19E6   8D 51 26   STA &2651
     19E9   8D 46 27   STA &2746
     19EC   8D EA 2A   STA &2AEA
     19EF   20 BB 26   JSR &26BB
     19F2   A9 22      LDA #&22
     19F4   8D BF 26   STA &26BF
     19F7   A9 10      LDA #&10
     19F9   8D BE 26   STA &26BE
     19FC   4C BB 26   JMP &26BB
.h12
     19FF   CE 55 25   DEC &2555
     1A02   AD 55 25   LDA &2555
     1A05   C9 FE      CMP #&FE
     1A07   D0 07      BNE &1A10
     1A09   A2 00      LDX #&00
     1A0B   A0 00      LDY #&00
     1A0D   4C 00 26   JMP &2600
.h3
     1A10   C9 DC      CMP #&DC
     1A12   D0 0B      BNE &1A1F
     1A14   20 BB 26   JSR &26BB
     1A17   A9 38      LDA #&38
     1A19   8D BE 26   STA &26BE
     1A1C   4C BB 26   JMP &26BB
.h4
     1A1F   C9 8C      CMP #&8C
     1A21   D0 0B      BNE &1A2E
     1A23   20 BB 26   JSR &26BB
     1A26   A9 60      LDA #&60
     1A28   8D BE 26   STA &26BE
     1A2B   4C BB 26   JMP &26BB
.h5
     1A2E   C9 01      CMP #&01
     1A30   D0 96      BNE &19C8
     1A32   CE 56 25   DEC &2556
     1A35   D0 03      BNE &1A3A
     1A37   4C 26 11   JMP &1126
.h5a
     1A3A   20 BB 26   JSR &26BB
     1A3D   20 01 17   JSR &1701
     1A40   AC 01 2D   LDY &2D01
.h6
     1A43   B1 75      LDA (&75),Y
     1A45   C9 C0      CMP #&C0
     1A47   D0 19      BNE &1A62
     1A49   88         DEY
     1A4A   B1 75      LDA (&75),Y
     1A4C   10 15      BPL &1A63
     1A4E   49 80      EOR #&80
     1A50   91 75      STA (&75),Y
     1A52   88         DEY
     1A53   B1 75      LDA (&75),Y
     1A55   85 79      STA &79
     1A57   88         DEY
     1A58   B1 75      LDA (&75),Y
     1A5A   85 78      STA &78
     1A5C   20 59 2A   JSR &2A59
     1A5F   4C 65 1A   JMP &1A65
.h8
     1A62   88         DEY
.h9
     1A63   88         DEY
     1A64   88         DEY
.h10
     1A65   88         DEY
     1A66   88         DEY
     1A67   D0 DA      BNE &1A43
.h7
     1A69   A9 EA      LDA #&EA
     1A6B   8D 96 2A   STA &2A96
     1A6E   8D 46 27   STA &2746
     1A71   8D 22 28   STA &2822
     1A74   8D 51 26   STA &2651
     1A77   8D EA 2A   STA &2AEA
     1A7A   38         SEC
     1A7B   AD 57 25   LDA &2557
     1A7E   E9 18      SBC #&18
     1A80   8D 57 25   STA &2557
     1A83   4C A7 19   JMP &19A7
.end_PIG_01
.end_PIG-01 =  &1A86 
.nl
     1A86   0D
     1A87   4A
     1A88   18
     1A89   8C
     1A8A   8E
     1A8B   1C
     1A8C   8A
     1A8D   84
     1A8E   14
     1A8F   82
     1A90   20
     1A91   44
     1A92   05
     1A93   00
     1A94   48
     1A95   18
     1A96   86
     1A97   84
     1A98   14
     1A99   86
     1A9A   84
     1A9B   14
     1A9C   88
     1A9D   2A
     1A9E   4E
     1A9F   05
     1AA0   00
     1AA1   4A
     1AA2   18
     1AA3   8C
     1AA4   8E
     1AA5   1C
     1AA6   8A
     1AA7   84
     1AA8   14
     1AA9   82
     1AAA   20
     1AAB   44
     1AAC   00
     1AAD   44
     1AAE   42
     1AAF   42
     1AB0   44
     1AB1   46
     1AB2   24
     1AB3   14
     1AB4   05
     1AB5   00
.tl
     1AB6   65
     1AB7   17
     1AB8   5D
     1AB9   05
     1ABA   59
     1ABB   0A
     1ABC   65
     1ABD   05
     1ABE   79
     1ABF   0A
     1AC0   81
     1AC1   05
     1AC2   89
     1AC3   1E
     1AC4   79
     1AC5   1E
     1AC6   00
     1AC7   6D
     1AC8   17
     1AC9   75
     1ACA   05
     1ACB   79
     1ACC   0A
     1ACD   75
     1ACE   05
     1ACF   79
     1AD0   0A
     1AD1   6D
     1AD2   05
     1AD3   65
     1AD4   1E
     1AD5   59
     1AD6   1E
     1AD7   00
     1AD8   65
     1AD9   17
     1ADA   5D
     1ADB   05
     1ADC   59
     1ADD   0A
     1ADE   65
     1ADF   05
     1AE0   79
     1AE1   0A
     1AE2   81
     1AE3   05
     1AE4   89
     1AE5   1E
     1AE6   79
     1AE7   0F
     1AE8   00
     1AE9   79
     1AEA   0F
     1AEB   81
     1AEC   0F
     1AED   81
     1AEE   0F
     1AEF   79
     1AF0   0F
     1AF1   75
     1AF2   0F
     1AF3   79
     1AF4   1E
     1AF5   00
     1AF6   59
     1AF7   05
     1AF8   59
     1AF9   05
     1AFA   59
     1AFB   05
     1AFC   49
     1AFD   0F
     1AFE   00
     1AFF   41
     1B00   05
     1B01   35
     1B02   0A
     1B03   39
     1B04   05
     1B05   3D
     1B06   05
     1B07   41
     1B08   05
     1B09   65
     1B0A   0A
     1B0B   65
     1B0C   0A
     1B0D   55
     1B0E   14
     1B0F   00
     1B10   14
     1B11   00
.pg
     1B12   A9 23      LDA #&23
     1B14   85 83      STA &83
     1B16   AD 65 2D   LDA &2D65
     1B19   D0 77      BNE &1B92
     1B1B   A9 42      LDA #&42
     1B1D   2C 5E 2D   BIT &2D5E
     1B20   F0 6F      BEQ &1B91
     1B22   A9 02      LDA #&02
     1B24   2C 54 25   BIT &2554
     1B27   F0 1F      BEQ &1B48
.pig_init_right
     1B29   A9 23      LDA #&23
     1B2B   85 83      STA &83
     1B2D   8D 13 1B   STA &1B13
     1B30   A9 68      LDA #&68
     1B32   8D 64 2D   STA &2D64
     1B35   85 80      STA &80
     1B37   A9 00      LDA #&00
     1B39   8D 33 1C   STA &1C33
     1B3C   A9 4C      LDA #&4C
     1B3E   8D 67 2D   STA &2D67
     1B41   A9 4B      LDA #&4B
     1B43   8D 70 1B   STA &1B70
     1B46   D0 1B      BNE &1B63
.pgl
.pig_init_left
     1B48   A9 22      LDA #&22
     1B4A   85 83      STA &83
     1B4C   8D 13 1B   STA &1B13
     1B4F   A9 00      LDA #&00
     1B51   8D 64 2D   STA &2D64
     1B54   85 80      STA &80
     1B56   8D 67 2D   STA &2D67
     1B59   A9 4C      LDA #&4C
     1B5B   8D 33 1C   STA &1C33
     1B5E   A9 49      LDA #&49
     1B60   8D 70 1B   STA &1B70
.b3
     1B63   A9 00      LDA #&00
     1B65   85 7C      STA &7C
     1B67   EE 54 25   INC &2554
     1B6A   A9 07      LDA #&07
     1B6C   25 7D      AND &7D
     1B6E   AA         TAX
     1B6F   A9 4B      LDA #&4B
     1B71   18         CLC
.b5
     1B72   69 05      ADC #&05
     1B74   A8         TAY
     1B75   A5 7C      LDA &7C
     1B77   69 10      ADC #&10
     1B79   85 7C      STA &7C
     1B7B   98         TYA
     1B7C   CA         DEX
     1B7D   10 F3      BPL &1B72
     1B7F   8D 65 2D   STA &2D65
     1B82   85 81      STA &81
     1B84   A2 02      LDX #&02
     1B86   8E 66 2D   STX &2D66
     1B89   BD 56 2D   LDA &2D56,X
     1B8C   85 82      STA &82
     1B8E   4C 85 1C   JMP &1C85
.ep
     1B91   60         RTS
.pgb0
     1B92   AD 64 2D   LDA &2D64
     1B95   85 80      STA &80
     1B97   AD 65 2D   LDA &2D65
     1B9A   85 81      STA &81
     1B9C   10 18      BPL &1BB6
     1B9E   CE 66 2D   DEC &2D66
     1BA1   D0 EE      BNE &1B91
     1BA3   49 80      EOR #&80
     1BA5   85 81      STA &81
     1BA7   A9 10      LDA #&10
     1BA9   0D 5E 2D   ORA &2D5E
     1BAC   8D 5E 2D   STA &2D5E
     1BAF   A9 00      LDA #&00
     1BB1   8D 65 2D   STA &2D65
     1BB4   F0 4C      BEQ &1C02
.pgb1
     1BB6   AD 66 2D   LDA &2D66
     1BB9   29 7F      AND #&7F
     1BBB   AA         TAX
     1BBC   BD 56 2D   LDA &2D56,X
     1BBF   85 82      STA &82
     1BC1   A0 00      LDY #&00
     1BC3   B1 8A      LDA (&8A),Y
     1BC5   85 70      STA &70
.pgh
     1BC7   C8         INY
     1BC8   B1 8A      LDA (&8A),Y
     1BCA   38         SEC
     1BCB   E5 7C      SBC &7C
     1BCD   30 4C      BMI &1C1B
     1BCF   C9 07      CMP #&07
     1BD1   10 48      BPL &1C1B
     1BD3   C8         INY
     1BD4   C8         INY
     1BD5   B1 8A      LDA (&8A),Y
     1BD7   F0 44      BEQ &1C1D
     1BD9   C8         INY
     1BDA   B1 8A      LDA (&8A),Y
     1BDC   38         SEC
     1BDD   ED 67 2D   SBC &2D67
     1BE0   30 3C      BMI &1C1E
     1BE2   C9 03      CMP #&03
     1BE4   10 38      BPL &1C1E
     1BE6   A9 E8      LDA #&E8
     1BE8   91 8A      STA (&8A),Y
     1BEA   AA         TAX
     1BEB   A9 07      LDA #&07
     1BED   A0 2D      LDY #&2D
     1BEF   20 F1 FF   JSR &FFF1
     1BF2   A9 10      LDA #&10
     1BF4   8D 66 2D   STA &2D66
     1BF7   A9 80      LDA #&80
     1BF9   0D 65 2D   ORA &2D65
     1BFC   8D 65 2D   STA &2D65
     1BFF   20 85 1C   JSR &1C85
.bx
     1C02   A9 23      LDA #&23
     1C04   85 83      STA &83
     1C06   A9 70      LDA #&70
     1C08   85 82      STA &82
     1C0A   4C 85 1C   JMP &1C85
.b9
     1C0D   A9 04      LDA #&04
     1C0F   0D 5E 2D   ORA &2D5E
     1C12   8D 5E 2D   STA &2D5E
     1C15   A9 00      LDA #&00
     1C17   8D 65 2D   STA &2D65
.x
     1C1A   60         RTS
.pgnh
     1C1B   C8         INY
     1C1C   C8         INY
     1C1D   C8         INY
     1C1E   C4 70      CPY &70
     1C20   30 A5      BMI &1BC7
     1C22   A9 80      LDA #&80
     1C24   4D 66 2D   EOR &2D66
     1C27   8D 66 2D   STA &2D66
     1C2A   30 EE      BMI &1C1A
     1C2C   20 85 1C   JSR &1C85
     1C2F   AD 67 2D   LDA &2D67
.xps
     1C32   C9 00      CMP #&00
     1C34   F0 D7      BEQ &1C0D
     1C36   29 1F      AND #&1F
     1C38   D0 09      BNE &1C43
     1C3A   A9 07      LDA #&07
     1C3C   A0 2D      LDY #&2D
     1C3E   A2 F0      LDX #&F0
     1C40   20 F1 FF   JSR &FFF1
.b6
     1C43   AE 66 2D   LDX &2D66
     1C46   CA         DEX
     1C47   10 02      BPL &1C4B
     1C49   A2 07      LDX #&07
.b7
     1C4B   8E 66 2D   STX &2D66
     1C4E   BD 56 2D   LDA &2D56,X
     1C51   85 82      STA &82
     1C53   AD 33 1C   LDA &1C33
     1C56   F0 18      BEQ &1C70
     1C58   EE 67 2D   INC &2D67
     1C5B   18         CLC
     1C5C   AD 64 2D   LDA &2D64
     1C5F   69 08      ADC #&08
     1C61   8D 64 2D   STA &2D64
     1C64   85 80      STA &80
     1C66   90 1D      BCC &1C85
     1C68   EE 65 2D   INC &2D65
     1C6B   E6 81      INC &81
     1C6D   4C 85 1C   JMP &1C85
.b10
     1C70   CE 67 2D   DEC &2D67
     1C73   38         SEC
     1C74   AD 64 2D   LDA &2D64
     1C77   E9 08      SBC #&08
     1C79   8D 64 2D   STA &2D64
     1C7C   85 80      STA &80
     1C7E   B0 05      BCS &1C85
     1C80   CE 65 2D   DEC &2D65
     1C83   C6 81      DEC &81
.plot_pigeon_sprite
.pb
     1C85   A0 17      LDY #&17
.b8
     1C87   B1 82      LDA (&82),Y
     1C89   51 80      EOR (&80),Y
     1C8B   91 80      STA (&80),Y
     1C8D   88         DEY
     1C8E   10 F7      BPL &1C87
     1C90   60         RTS
.ddu1
.plane_hit
     1C91   AC 5B 25   LDY &255B
     1C94   C0 09      CPY #&09
     1C96   10 23      BPL &1CBB
     1C98   B9 40 25   LDA &2540,Y
     1C9B   85 80      STA &80
     1C9D   C8         INY
     1C9E   B9 40 25   LDA &2540,Y
     1CA1   85 81      STA &81
     1CA3   C8         INY
     1CA4   8C 5B 25   STY &255B
     1CA7   A0 04      LDY #&04
     1CA9   A9 55      LDA #&55
.ddu2
     1CAB   91 80      STA (&80),Y
     1CAD   88         DEY
     1CAE   10 FB      BPL &1CAB
     1CB0   A0 09      LDY #&09
     1CB2   0A         ASL A
     1CB3   91 80      STA (&80),Y
     1CB5   A0 01      LDY #&01
     1CB7   A9 FF      LDA #&FF
     1CB9   91 80      STA (&80),Y
.ddu3
     1CBB   60         RTS
.random1
     1CBC   A5 7D      LDA &7D
     1CBE   29 48      AND #&48
     1CC0   69 38      ADC #&38
     1CC2   0A         ASL A
     1CC3   0A         ASL A
     1CC4   26 7F      ROL &7F
     1CC6   26 7E      ROL &7E
     1CC8   26 7D      ROL &7D
     1CCA   A5 7D      LDA &7D
     1CCC   60         RTS
.draw_backgnd_art
     1CCD   A0 00      LDY #&00
.draw_line_art_loop
     1CCF   B9 B4 1D   LDA &1DB4,Y
     1CD2   20 EE FF   JSR &FFEE
     1CD5   C8         INY
     1CD6   D0 F7      BNE &1CCF
     1CD8   A5 88      LDA &88
     1CDA   85 82      STA &82
     1CDC   A5 89      LDA &89
     1CDE   85 83      STA &83
     1CE0   A9 1F      LDA #&1F
     1CE2   8D 6F 2A   STA &2A6F
     1CE5   A9 C0      LDA #&C0
     1CE7   85 70      STA &70
     1CE9   A0 00      LDY #&00
.draw_backgnd_sprite_loop
     1CEB   C8         INY
     1CEC   BE C7 1E   LDX &1EC7,Y
     1CEF   C8         INY
     1CF0   B9 C7 1E   LDA &1EC7,Y
     1CF3   24 70      BIT &70
     1CF5   D0 0C      BNE &1D03
     1CF7   85 89      STA &89
     1CF9   86 88      STX &88
     1CFB   C8         INY
     1CFC   BE C7 1E   LDX &1EC7,Y
     1CFF   C8         INY
     1D00   B9 C7 1E   LDA &1EC7,Y
.skip1
     1D03   86 78      STX &78
     1D05   85 79      STA &79
     1D07   20 59 2A   JSR &2A59
     1D0A   CC C7 1E   CPY &1EC7
     1D0D   30 DC      BMI &1CEB
     1D0F   A9 3F      LDA #&3F
     1D11   8D 6F 2A   STA &2A6F
     1D14   A5 82      LDA &82
     1D16   85 88      STA &88
     1D18   A5 83      LDA &83
     1D1A   85 89      STA &89
     1D1C   60         RTS
     1D1D   00         BRK
.plot_clouds
     1D1E   A9 44      LDA #&44
     1D20   85 79      STA &79
     1D22   A9 FF      LDA #&FF
     1D24   A2 05      LDX #&05
.mid_outer_loop
     1D26   A0 00      LDY #&00
     1D28   84 78      STY &78
.mid_inner_loop
     1D2A   91 78      STA (&78),Y
     1D2C   C8         INY
     1D2D   D0 FB      BNE &1D2A
     1D2F   E6 79      INC &79
     1D31   CA         DEX
     1D32   D0 F2      BNE &1D26
     1D34   A0 1F      LDY #&1F
.cloud_loop2
     1D36   B9 E0 2E   LDA &2EE0,Y
     1D39   91 78      STA (&78),Y
     1D3B   88         DEY
     1D3C   10 F8      BPL &1D36
     1D3E   A9 2E      LDA #&2E
     1D40   85 7B      STA &7B
     1D42   A9 20      LDA #&20
     1D44   85 78      STA &78
     1D46   A2 08      LDX #&08
.next_cloud_sprite
     1D48   BD 4D 2D   LDA &2D4D,X
     1D4B   85 7A      STA &7A
     1D4D   A0 3F      LDY #&3F
.next_cloud_byte
     1D4F   B1 7A      LDA (&7A),Y
     1D51   91 78      STA (&78),Y
     1D53   88         DEY
     1D54   10 F9      BPL &1D4F
     1D56   18         CLC
     1D57   A5 78      LDA &78
     1D59   69 40      ADC #&40
     1D5B   85 78      STA &78
     1D5D   90 02      BCC &1D61
     1D5F   E6 79      INC &79
.skip1
     1D61   CA         DEX
     1D62   10 E4      BPL &1D48
     1D64   A0 1F      LDY #&1F
.loop32
     1D66   B9 C0 2E   LDA &2EC0,Y
     1D69   91 78      STA (&78),Y
     1D6B   88         DEY
     1D6C   10 F8      BPL &1D66
.mirror_loop_1
     1D6E   A0 00      LDY #&00
.mirror_loop_2
     1D70   A2 07      LDX #&07
.mirror_loop_3
.modify_lower_dest_addr
     1D72   B9 00 49   LDA &4900,Y
.modify_upper_dest_addr
     1D75   9D 80 41   STA &4180,X
     1D78   C8         INY
     1D79   CA         DEX
     1D7A   10 F6      BPL &1D72
     1D7C   18         CLC
     1D7D   AD 76 1D   LDA &1D76
     1D80   69 08      ADC #&08
     1D82   8D 76 1D   STA &1D76
     1D85   90 03      BCC &1D8A
     1D87   EE 77 1D   INC &1D77
.skip2
     1D8A   C0 80      CPY #&80
     1D8C   D0 E2      BNE &1D70
     1D8E   AD 73 1D   LDA &1D73
     1D91   49 80      EOR #&80
     1D93   8D 73 1D   STA &1D73
     1D96   30 03      BMI &1D9B
     1D98   EE 74 1D   INC &1D74
.skip3
     1D9B   A9 44      LDA #&44
     1D9D   CD 77 1D   CMP &1D77
     1DA0   D0 CC      BNE &1D6E
     1DA2   8C 76 1D   STY &1D76
     1DA5   E8         INX
     1DA6   8E 73 1D   STX &1D73
     1DA9   A9 49      LDA #&49
     1DAB   8D 74 1D   STA &1D74
     1DAE   A9 41      LDA #&41
     1DB0   8D 77 1D   STA &1D77
     1DB3   60         RTS
.scenery_line_art
     1DB4   12
     1DB5   00
     1DB6   06
     1DB7   19
     1DB8   04
     1DB9   00
     1DBA   00
     1DBB   13
     1DBC   00
     1DBD   19
     1DBE   05
     1DBF   04
     1DC0   01
     1DC1   17
     1DC2   00
     1DC3   19
     1DC4   05
     1DC5   2C
     1DC6   01
     1DC7   3C
     1DC8   00
     1DC9   19
     1DCA   04
     1DCB   7E
     1DCC   04
     1DCD   3E
     1DCE   00
     1DCF   19
     1DD0   05
     1DD1   1A
     1DD2   04
     1DD3   20
     1DD4   00
     1DD5   19
     1DD6   05
     1DD7   84
     1DD8   03
     1DD9   20
     1DDA   00
     1DDB   19
     1DDC   05
     1DDD   52
     1DDE   03
     1DDF   28
     1DE0   00
     1DE1   19
     1DE2   05
     1DE3   20
     1DE4   03
     1DE5   38
     1DE6   00
     1DE7   19
     1DE8   05
     1DE9   16
     1DEA   03
     1DEB   46
     1DEC   00
     1DED   19
     1DEE   05
     1DEF   16
     1DF0   03
     1DF1   52
     1DF2   00
     1DF3   19
     1DF4   05
     1DF5   20
     1DF6   03
     1DF7   60
     1DF8   00
     1DF9   19
     1DFA   05
     1DFB   52
     1DFC   03
     1DFD   74
     1DFE   00
     1DFF   19
     1E00   05
     1E01   BB
     1E02   03
     1E03   7C
     1E04   00
     1E05   19
     1E06   04
     1E07   7E
     1E08   04
     1E09   42
     1E0A   00
     1E0B   19
     1E0C   15
     1E0D   1A
     1E0E   04
     1E0F   24
     1E10   00
     1E11   19
     1E12   15
     1E13   84
     1E14   03
     1E15   24
     1E16   00
     1E17   19
     1E18   15
     1E19   52
     1E1A   03
     1E1B   2C
     1E1C   00
     1E1D   19
     1E1E   15
     1E1F   20
     1E20   03
     1E21   3C
     1E22   00
     1E23   19
     1E24   04
     1E25   20
     1E26   03
     1E27   64
     1E28   00
     1E29   19
     1E2A   15
     1E2B   52
     1E2C   03
     1E2D   78
     1E2E   00
     1E2F   19
     1E30   15
     1E31   BB
     1E32   03
     1E33   80
     1E34   00
     1E35   12
     1E36   00
     1E37   02
     1E38   19
     1E39   04
     1E3A   00
     1E3B   05
     1E3C   17
     1E3D   00
     1E3E   19
     1E3F   05
     1E40   C4
     1E41   04
     1E42   28
     1E43   00
     1E44   19
     1E45   04
     1E46   E2
     1E47   04
     1E48   1C
     1E49   00
     1E4A   19
     1E4B   05
     1E4C   DE
     1E4D   03
     1E4E   38
     1E4F   00
     1E50   19
     1E51   04
     1E52   80
     1E53   02
     1E54   82
     1E55   00
     1E56   19
     1E57   05
     1E58   48
     1E59   03
     1E5A   0E
     1E5B   01
     1E5C   19
     1E5D   05
     1E5E   AC
     1E5F   03
     1E60   45
     1E61   01
     1E62   19
     1E63   05
     1E64   1A
     1E65   04
     1E66   4A
     1E67   01
     1E68   19
     1E69   05
     1E6A   00
     1E6B   05
     1E6C   AE
     1E6D   01
     1E6E   19
     1E6F   04
     1E70   2C
     1E71   01
     1E72   C8
     1E73   00
     1E74   19
     1E75   05
     1E76   8A
     1E77   02
     1E78   40
     1E79   01
     1E7A   19
     1E7B   05
     1E7C   3E
     1E7D   03
     1E7E   04
     1E7F   01
     1E80   19
     1E81   04
     1E82   F4
     1E83   01
     1E84   64
     1E85   00
     1E86   19
     1E87   05
     1E88   FA
     1E89   00
     1E8A   DC
     1E8B   00
     1E8C   19
     1E8D   05
     1E8E   8C
     1E8F   00
     1E90   54
     1E91   01
     1E92   19
     1E93   05
     1E94   00
     1E95   00
     1E96   68
     1E97   01
     1E98   12
     1E99   00
     1E9A   04
     1E9B   19
     1E9C   04
     1E9D   9E
     1E9E   02
     1E9F   96
     1EA0   00
     1EA1   19
     1EA2   15
     1EA3   F4
     1EA4   01
     1EA5   78
     1EA6   00
     1EA7   19
     1EA8   05
     1EA9   58
     1EAA   02
     1EAB   64
     1EAC   00
     1EAD   19
     1EAE   05
     1EAF   90
     1EB0   01
     1EB1   5A
     1EB2   00
     1EB3   00
     1EB4   7D
     1EB5   2D
     1EB6   20
     1EB7   13
     1EB8   28
     1EB9   A9
     1EBA   09
     1EBB   85
     1EBC   83
     1EBD   A9
     1EBE   F0
     1EBF   85
     1EC0   82
     1EC1   4C
     1EC2   13
     1EC3   28
     1EC4   A9
     1EC5   00
     1EC6   8D
.backgnd_sprite_addr_table
     1EC7   58
     1EC8   A0 24
     1ECA   93 73
     1ECC   49 71
     1ECE   60 76
     1ED0   99 75
     1ED2   44 73
     1ED4   C9 78
     1ED6   B4 76
     1ED8   C0 24
     1EDA   13 76
     1EDC   93 78
     1EDE   C9 73
     1EE0   49 76
     1EE2   E0 78
     1EE4   44 78
     1EE6   C4 75
     1EE8   E0 24
     1EEA   13 7B
     1EEC   4A 7B
     1EEE   60 7B
     1EF0   C4 7A
     1EF2   00 25
     1EF4   B0 78
     1EF6   20 78
     1EF8   5C 78
     1EFA   20 25
     1EFC   00 78
     1EFE   88 76
     1F00   60 25
     1F02   60 70
     1F04   80 25
     1F06   E0 72
     1F08   60 75
     1F0A   E0 77
     1F0C   80 7A
     1F0E   A0 7A
     1F10   DC 7A
     1F12   A0 25
     1F14   60 7A
     1F16   30 7B
     1F18   C0 25
     1F1A   08 79
     1F1C   E0 25
     1F1E   28 79
     1F20   00
.end_PIG_02
.end_PIG-02 =  &1F21 
.draw_stave
.stv
     1F21   A0 00      LDY #&00
.stave_loop1
     1F23   B9 41 1F   LDA &1F41,Y
     1F26   20 EE FF   JSR &FFEE
     1F29   C8         INY
     1F2A   C0 09      CPY #&09
     1F2C   D0 F5      BNE &1F23
     1F2E   A2 05      LDX #&05
.stave_loop2
     1F30   A0 09      LDY #&09
.stave_loop3
     1F32   B9 41 1F   LDA &1F41,Y
     1F35   20 EE FF   JSR &FFEE
     1F38   C8         INY
     1F39   C0 15      CPY #&15
     1F3B   D0 F5      BNE &1F32
     1F3D   CA         DEX
     1F3E   D0 F0      BNE &1F30
     1F40   60         RTS
.stave_data
.sl
     1F41   12
     1F42   00
     1F43   04
     1F44   19
     1F45   04
     1F46   00
     1F47   01
     1F48   EC
     1F49   03
     1F4A   19
     1F4B   01
     1F4C   00
     1F4D   03
     1F4E   00
     1F4F   00
     1F50   19
     1F51   00
     1F52   00
     1F53   FD
     1F54   F0
     1F55   FF
.end_GG_01
.end_GG-01 =  &1F56 
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
     26B3   AD 5E 2D   LDA &2D5E
     26B6   09 20      ORA #&20
     26B8   8D 5E 2D   STA &2D5E
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
     27AA   0D 5E 2D   ORA &2D5E
     27AD   8D 5E 2D   STA &2D5E
     27B0   A2 D0      LDX #&D0
     27B2   A0 2D      LDY #&2D
     27B4   A9 07      LDA #&07
     27B6   4C F1 FF   JMP &FFF1
.s5
.plot_bullet_sprite
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
     27D0   85 74      STA &74
     27D2   C9 05      CMP #&05
     27D4   10 0B      BPL &27E1
.bot
     27D6   B1 82      LDA (&82),Y
     27D8   51 84      EOR (&84),Y
     27DA   91 84      STA (&84),Y
     27DC   88         DEY
     27DD   C4 74      CPY &74
     27DF   D0 F5      BNE &27D6
.top
     27E1   B1 82      LDA (&82),Y
     27E3   51 80      EOR (&80),Y
     27E5   91 80      STA (&80),Y
     27E7   88         DEY
     27E8   10 F7      BPL &27E1
     27EA   68         PLA
     27EB   A8         TAY
     27EC   60         RTS
.plot_fast_bullet_sprite
     27ED   98         TYA
     27EE   48         PHA
     27EF   A0 05      LDY #&05
     27F1   18         CLC
     27F2   A5 80      LDA &80
     27F4   69 78      ADC #&78
     27F6   85 84      STA &84
     27F8   A5 81      LDA &81
     27FA   69 02      ADC #&02
     27FC   85 85      STA &85
     27FE   A5 80      LDA &80
     2800   29 07      AND #&07
     2802   49 07      EOR #&07
     2804   8D 13 28   STA &2813
     2807   C9 05      CMP #&05
     2809   10 0B      BPL &2816
.bot
     280B   B1 84      LDA (&84),Y
     280D   49 2A      EOR #&2A
     280F   91 84      STA (&84),Y
     2811   88         DEY
.comp_mod
     2812   C0 FF      CPY #&FF
     2814   D0 F5      BNE &280B
.top
     2816   B1 80      LDA (&80),Y
     2818   49 2A      EOR #&2A
     281A   91 80      STA (&80),Y
     281C   88         DEY
     281D   10 F7      BPL &2816
     281F   68         PLA
     2820   A8         TAY
     2821   60         RTS
.np
     2822   EA         NOP
     2823   A5 72      LDA &72
     2825   C9 01      CMP #&01
     2827   10 3A      BPL &2863
     2829   CE 62 2D   DEC &2D62
     282C   D0 35      BNE &2863
     282E   AD 63 2D   LDA &2D63
     2831   8D 62 2D   STA &2D62
     2834   A5 70      LDA &70
     2836   20 67 2C   JSR &2C67
     2839   A8         TAY
     283A   38         SEC
.np2
     283B   E9 05      SBC #&05
     283D   10 FC      BPL &283B
     283F   AA         TAX
.np3
     2840   C8         INY
     2841   E8         INX
     2842   D0 FC      BNE &2840
     2844   88         DEY
     2845   B1 75      LDA (&75),Y
     2847   30 16      BMI &285F
     2849   A4 70      LDY &70
.se
     284B   88         DEY
     284C   B1 75      LDA (&75),Y
     284E   30 0F      BMI &285F
     2850   88         DEY
     2851   88         DEY
     2852   88         DEY
     2853   88         DEY
     2854   D0 F5      BNE &284B
     2856   A9 80      LDA #&80
     2858   0D 5E 2D   ORA &2D5E
     285B   8D 5E 2D   STA &2D5E
     285E   60         RTS
.fy
     285F   49 80      EOR #&80
     2861   91 75      STA (&75),Y
.nw
     2863   60         RTS
.pxp
     2864   A5 77      LDA &77
     2866   F0 55      BEQ &28BD
     2868   A2 21      LDX #&21
     286A   86 89      STX &89
     286C   A5 88      LDA &88
     286E   48         PHA
     286F   A5 77      LDA &77
     2871   C9 15      CMP #&15
     2873   D0 0A      BNE &287F
     2875   A9 40      LDA #&40
     2877   85 88      STA &88
     2879   20 59 2A   JSR &2A59
     287C   4C B4 28   JMP &28B4
.px1
     287F   C9 0C      CMP #&0C
     2881   D0 11      BNE &2894
     2883   A9 40      LDA #&40
     2885   85 88      STA &88
     2887   20 59 2A   JSR &2A59
     288A   A9 80      LDA #&80
     288C   85 88      STA &88
     288E   20 59 2A   JSR &2A59
     2891   4C B4 28   JMP &28B4
.px2
     2894   C9 06      CMP #&06
     2896   D0 11      BNE &28A9
     2898   A9 80      LDA #&80
     289A   85 88      STA &88
     289C   20 59 2A   JSR &2A59
     289F   A9 C0      LDA #&C0
     28A1   85 88      STA &88
     28A3   20 59 2A   JSR &2A59
     28A6   4C B4 28   JMP &28B4
.px3
     28A9   C9 01      CMP #&01
     28AB   D0 07      BNE &28B4
     28AD   A9 C0      LDA #&C0
     28AF   85 88      STA &88
     28B1   20 59 2A   JSR &2A59
.px4
     28B4   A9 2F      LDA #&2F
     28B6   85 89      STA &89
     28B8   68         PLA
     28B9   85 88      STA &88
     28BB   C6 77      DEC &77
.nx
     28BD   4C 35 2A   JMP &2A35
.mp
     28C0   A0 00      LDY #&00
     28C2   B1 75      LDA (&75),Y
     28C4   85 70      STA &70
     28C6   84 72      STY &72
.nxpl
     28C8   C8         INY
     28C9   B1 75      LDA (&75),Y
     28CB   85 77      STA &77
     28CD   C8         INY
     28CE   B1 75      LDA (&75),Y
     28D0   85 78      STA &78
     28D2   C8         INY
     28D3   B1 75      LDA (&75),Y
     28D5   85 79      STA &79
     28D7   C8         INY
     28D8   B1 75      LDA (&75),Y
     28DA   85 7A      STA &7A
     28DC   C8         INY
     28DD   B1 75      LDA (&75),Y
     28DF   85 7B      STA &7B
     28E1   A5 77      LDA &77
     28E3   29 C0      AND #&C0
     28E5   D0 03      BNE &28EA
     28E7   4C 64 28   JMP &2864
.p0
     28EA   A5 7A      LDA &7A
     28EC   10 03      BPL &28F1
     28EE   4C 51 2A   JMP &2A51
.p1
     28F1   C6 77      DEC &77
     28F3   98         TYA
     28F4   48         PHA
     28F5   A0 00      LDY #&00
     28F7   B1 8A      LDA (&8A),Y
     28F9   85 80      STA &80
.h
.next_plane
     28FB   C8         INY
     28FC   B1 8A      LDA (&8A),Y
     28FE   38         SEC
     28FF   E5 7B      SBC &7B
     2901   30 47      BMI &294A
     2903   C9 08      CMP #&08
     2905   10 43      BPL &294A
     2907   C8         INY
     2908   C8         INY
     2909   B1 8A      LDA (&8A),Y
     290B   F0 3F      BEQ &294C
     290D   C8         INY
     290E   B1 8A      LDA (&8A),Y
     2910   38         SEC
     2911   E5 7A      SBC &7A
     2913   30 38      BMI &294D
     2915   C9 07      CMP #&07
     2917   10 34      BPL &294D
     2919   C9 03      CMP #&03
     291B   F0 0D      BEQ &292A
     291D   A9 40      LDA #&40
     291F   0D 5E 2D   ORA &2D5E
     2922   8D 5E 2D   STA &2D5E
     2925   0A         ASL A
     2926   91 8A      STA (&8A),Y
     2928   D0 23      BNE &294D
.o
.plane_hit
     292A   A9 19      LDA #&19
     292C   85 77      STA &77
     292E   A9 D8      LDA #&D8
     2930   91 8A      STA (&8A),Y
     2932   AA         TAX
     2933   A0 2D      LDY #&2D
     2935   A9 07      LDA #&07
     2937   20 F1 FF   JSR &FFF1
     293A   68         PLA
     293B   A8         TAY
     293C   A9 02      LDA #&02
     293E   0D 5E 2D   ORA &2D5E
     2941   8D 5E 2D   STA &2D5E
     2944   20 59 2A   JSR &2A59
     2947   4C 64 28   JMP &2864
.nh
.plane_not_hit
     294A   C8         INY
     294B   C8         INY
     294C   C8         INY
     294D   C4 80      CPY &80
     294F   90 AA      BCC &28FB
     2951   68         PLA
     2952   A8         TAY
     2953   A5 73      LDA &73
     2955   29 BF      AND #&BF
     2957   85 73      STA &73
     2959   E6 72      INC &72
     295B   20 59 2A   JSR &2A59
     295E   A5 7B      LDA &7B
     2960   C9 AF      CMP #&AF
     2962   D0 21      BNE &2985
     2964   38         SEC
     2965   A5 78      LDA &78
     2967   E9 87      SBC #&87
     2969   85 78      STA &78
     296B   A5 79      LDA &79
     296D   E9 48      SBC #&48
     296F   85 79      STA &79
     2971   A9 C0      LDA #&C0
     2973   85 7B      STA &7B
     2975   AD 55 25   LDA &2555
     2978   F0 0B      BEQ &2985
     297A   A5 7A      LDA &7A
     297C   49 80      EOR #&80
     297E   85 7A      STA &7A
     2980   E6 77      INC &77
     2982   4C 35 2A   JMP &2A35
.hop5
     2985   A9 3F      LDA #&3F
     2987   25 77      AND &77
     2989   D0 40      BNE &29CB
     298B   38         SEC
     298C   A5 7A      LDA &7A
     298E   ED A6 2D   SBC &2DA6
     2991   85 77      STA &77
     2993   A9 00      LDA #&00
     2995   B0 02      BCS &2999
     2997   38         SEC
     2998   6A         ROR A
.pl3
     2999   6A         ROR A
     299A   85 80      STA &80
     299C   A5 77      LDA &77
     299E   D0 0D      BNE &29AD
.pl20
     29A0   A5 7D      LDA &7D
     29A2   10 06      BPL &29AA
     29A4   A5 80      LDA &80
     29A6   49 C0      EOR #&C0
     29A8   85 80      STA &80
.pl21
     29AA   AD 61 2D   LDA &2D61
.pl5
     29AD   10 05      BPL &29B4
     29AF   49 FF      EOR #&FF
     29B1   18         CLC
     29B2   69 01      ADC #&01
.pl4
     29B4   C9 02      CMP #&02
     29B6   30 0F      BMI &29C7
     29B8   8D 70 2C   STA &2C70
     29BB   20 6A 2C   JSR &2C6A
     29BE   4E 70 2C   LSR &2C70
     29C1   18         CLC
     29C2   6D 70 2C   ADC &2C70
     29C5   29 3F      AND #&3F
.pl6
     29C7   05 80      ORA &80
     29C9   85 77      STA &77
.mid
     29CB   A5 77      LDA &77
     29CD   A6 7A      LDX &7A
     29CF   E0 01      CPX #&01
     29D1   10 07      BPL &29DA
     29D3   09 40      ORA #&40
     29D5   29 7F      AND #&7F
     29D7   4C E2 29   JMP &29E2
.plnl
     29DA   E0 48      CPX #&48
     29DC   30 06      BMI &29E4
     29DE   09 80      ORA #&80
     29E0   29 BF      AND #&BF
.do
     29E2   85 77      STA &77
     29E4   E6 7B      INC &7B
     29E6   A9 07      LDA #&07
     29E8   25 78      AND &78
     29EA   C9 07      CMP #&07
     29EC   F0 05      BEQ &29F3
     29EE   E6 78      INC &78
     29F0   4C 00 2A   JMP &2A00
.pl2
     29F3   18         CLC
     29F4   A5 78      LDA &78
     29F6   69 79      ADC #&79
     29F8   85 78      STA &78
     29FA   A5 79      LDA &79
     29FC   69 02      ADC #&02
     29FE   85 79      STA &79
.lft
     2A00   AD 31 2A   LDA &2A31
     2A03   F0 21      BEQ &2A26
     2A05   A5 77      LDA &77
     2A07   10 10      BPL &2A19
     2A09   C6 7A      DEC &7A
     2A0B   38         SEC
     2A0C   A5 78      LDA &78
     2A0E   E9 08      SBC #&08
     2A10   85 78      STA &78
     2A12   B0 12      BCS &2A26
     2A14   C6 79      DEC &79
     2A16   4C 26 2A   JMP &2A26
.rt
     2A19   E6 7A      INC &7A
     2A1B   18         CLC
     2A1C   A5 78      LDA &78
     2A1E   69 08      ADC #&08
     2A20   85 78      STA &78
     2A22   90 02      BCC &2A26
     2A24   E6 79      INC &79
.enlr
     2A26   A9 01      LDA #&01
     2A28   4D 31 2A   EOR &2A31
     2A2B   8D 31 2A   STA &2A31
     2A2E   4C 32 2A   JMP &2A32
.tog
     2A31   00
.fo
     2A32   20 59 2A   JSR &2A59
     2A35   88         DEY
     2A36   88         DEY
     2A37   88         DEY
     2A38   88         DEY
     2A39   A5 77      LDA &77
     2A3B   91 75      STA (&75),Y
     2A3D   C8         INY
     2A3E   A5 78      LDA &78
     2A40   91 75      STA (&75),Y
     2A42   C8         INY
     2A43   A5 79      LDA &79
     2A45   91 75      STA (&75),Y
     2A47   C8         INY
     2A48   A5 7A      LDA &7A
     2A4A   91 75      STA (&75),Y
     2A4C   C8         INY
     2A4D   A5 7B      LDA &7B
     2A4F   91 75      STA (&75),Y
.pl1
     2A51   C4 70      CPY &70
     2A53   F0 03      BEQ &2A58
     2A55   4C C8 28   JMP &28C8
.hop7
     2A58   60         RTS
.pp
.plot_plane
     2A59   98         TYA
     2A5A   48         PHA
     2A5B   18         CLC
     2A5C   A5 78      LDA &78
     2A5E   69 78      ADC #&78
     2A60   85 84      STA &84
     2A62   29 07      AND #&07
     2A64   49 07      EOR #&07
     2A66   85 74      STA &74
     2A68   A5 79      LDA &79
     2A6A   69 02      ADC #&02
     2A6C   85 85      STA &85
.modify_plane_sprite_length
     2A6E   A0 3F      LDY #&3F
.plo
     2A70   A2 07      LDX #&07
     2A72   E4 74      CPX &74
     2A74   F0 0E      BEQ &2A84
.bt
     2A76   B1 88      LDA (&88),Y
     2A78   F0 04      BEQ &2A7E
     2A7A   51 84      EOR (&84),Y
     2A7C   91 84      STA (&84),Y
.bz
     2A7E   88         DEY
     2A7F   CA         DEX
     2A80   E4 74      CPX &74
     2A82   D0 F2      BNE &2A76
.tp
     2A84   B1 88      LDA (&88),Y
     2A86   F0 04      BEQ &2A8C
     2A88   51 78      EOR (&78),Y
     2A8A   91 78      STA (&78),Y
.tz
     2A8C   88         DEY
     2A8D   CA         DEX
     2A8E   10 F4      BPL &2A84
     2A90   98         TYA
     2A91   10 DD      BPL &2A70
     2A93   68         PLA
     2A94   A8         TAY
     2A95   60         RTS
.nbo
     2A96   EA         NOP
     2A97   A9 C0      LDA #&C0
     2A99   24 73      BIT &73
     2A9B   D0 46      BNE &2AE3
     2A9D   C6 73      DEC &73
     2A9F   D0 42      BNE &2AE3
     2AA1   A0 FF      LDY #&FF
.nbo2
     2AA3   C8         INY
     2AA4   C8         INY
     2AA5   C8         INY
     2AA6   C8         INY
     2AA7   C8         INY
     2AA8   B1 75      LDA (&75),Y
     2AAA   30 F7      BMI &2AA3
     2AAC   88         DEY
     2AAD   88         DEY
     2AAE   88         DEY
     2AAF   B1 75      LDA (&75),Y
     2AB1   29 C0      AND #&C0
     2AB3   D0 06      BNE &2ABB
     2AB5   C8         INY
     2AB6   C8         INY
     2AB7   C8         INY
     2AB8   4C A3 2A   JMP &2AA3
.nbo5
     2ABB   C8         INY
     2ABC   18         CLC
     2ABD   B1 75      LDA (&75),Y
     2ABF   69 9D      ADC #&9D
     2AC1   85 80      STA &80
     2AC3   C8         INY
     2AC4   B1 75      LDA (&75),Y
     2AC6   69 02      ADC #&02
     2AC8   85 81      STA &81
     2ACA   20 B9 27   JSR &27B9
     2ACD   A0 00      LDY #&00
.nbo3
     2ACF   C8         INY
     2AD0   C8         INY
     2AD1   B1 8C      LDA (&8C),Y
     2AD3   D0 FA      BNE &2ACF
     2AD5   A5 81      LDA &81
     2AD7   91 8C      STA (&8C),Y
     2AD9   88         DEY
     2ADA   A5 80      LDA &80
     2ADC   91 8C      STA (&8C),Y
     2ADE   AD A7 2D   LDA &2DA7
     2AE1   85 73      STA &73
.nbo4
     2AE3   A9 C0      LDA #&C0
     2AE5   05 73      ORA &73
     2AE7   85 73      STA &73
     2AE9   60         RTS
.new_bomb
     2AEA   EA         NOP
     2AEB   A5 51      LDA &51
     2AED   C5 50      CMP &50
     2AEF   90 6D      BCC &2B5E
     2AF1   A9 C0      LDA #&C0
     2AF3   24 73      BIT &73
     2AF5   D0 67      BNE &2B5E
     2AF7   C6 73      DEC &73
     2AF9   D0 63      BNE &2B5E
     2AFB   A2 00      LDX #&00
.find_slot_loop
     2AFD   E8         INX
     2AFE   E4 51      CPX &51
     2B00   B0 5C      BCS &2B5E
     2B02   E8         INX
     2B03   B5 51      LDA &51,X
     2B05   D0 F6      BNE &2AFD
     2B07   A0 FF      LDY #&FF
.find_plane_loop
     2B09   C8         INY
     2B0A   C8         INY
     2B0B   C8         INY
     2B0C   C8         INY
     2B0D   C8         INY
     2B0E   B1 75      LDA (&75),Y
     2B10   30 F7      BMI &2B09
     2B12   88         DEY
     2B13   88         DEY
     2B14   88         DEY
     2B15   B1 75      LDA (&75),Y
     2B17   29 C0      AND #&C0
     2B19   D0 06      BNE &2B21
     2B1B   C8         INY
     2B1C   C8         INY
     2B1D   C8         INY
     2B1E   4C 09 2B   JMP &2B09
.found_plane
     2B21   C8         INY
     2B22   18         CLC
     2B23   B1 75      LDA (&75),Y
     2B25   69 9D      ADC #&9D
     2B27   95 50      STA &50,X
     2B29   C8         INY
     2B2A   B1 75      LDA (&75),Y
     2B2C   69 02      ADC #&02
     2B2E   95 51      STA &51,X
     2B30   18         CLC
     2B31   B5 50      LDA &50,X
     2B33   69 78      ADC #&78
     2B35   95 60      STA &60,X
     2B37   B5 51      LDA &51,X
     2B39   69 02      ADC #&02
     2B3B   95 61      STA &61,X
     2B3D   18         CLC
     2B3E   8A         TXA
     2B3F   69 50      ADC #&50
     2B41   8D 7E 2B   STA &2B7E
     2B44   8D 82 2B   STA &2B82
     2B47   8A         TXA
     2B48   69 60      ADC #&60
     2B4A   8D 73 2B   STA &2B73
     2B4D   8D 77 2B   STA &2B77
     2B50   B5 50      LDA &50,X
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
     2B67   29 07      AND #&07
     2B69   49 07      EOR #&07
     2B6B   8D 7A 2B   STA &2B7A
     2B6E   C9 05      CMP #&05
     2B70   10 0B      BPL &2B7D
.plot_bomb_lower1
     2B72   B1 62      LDA (&62),Y
     2B74   49 2A      EOR #&2A
.plot_bomb_lower2
     2B76   91 62      STA (&62),Y
     2B78   88         DEY
.plot_bomb_mod
     2B79   C0 FF      CPY #&FF
     2B7B   D0 F5      BNE &2B72
.plot_bomb_upper1
     2B7D   B1 52      LDA (&52),Y
     2B7F   49 2A      EOR #&2A
.plot_bomb_upper2
     2B81   91 52      STA (&52),Y
     2B83   88         DEY
     2B84   10 F7      BPL &2B7D
     2B86   60         RTS
.move_bombs
     2B87   EA         NOP
     2B88   A2 00      LDX #&00
.next_bomb_loop
     2B8A   18         CLC
     2B8B   8A         TXA
     2B8C   69 52      ADC #&52
     2B8E   8D 7E 2B   STA &2B7E
     2B91   8D 82 2B   STA &2B82
     2B94   8A         TXA
     2B95   69 62      ADC #&62
     2B97   8D 73 2B   STA &2B73
     2B9A   8D 77 2B   STA &2B77
     2B9D   B5 53      LDA &53,X
     2B9F   D0 08      BNE &2BA9
     2BA1   A9 7F      LDA #&7F
     2BA3   25 73      AND &73
     2BA5   85 73      STA &73
     2BA7   D0 51      BNE &2BFA
.unplot
     2BA9   B5 52      LDA &52,X
     2BAB   20 65 2B   JSR &2B65
.upper_addr
     2BAE   B5 52      LDA &52,X
     2BB0   29 07      AND #&07
     2BB2   CD 78 2C   CMP &2C78
     2BB5   10 13      BPL &2BCA
     2BB7   18         CLC
     2BB8   B5 52      LDA &52,X
     2BBA   6D 77 2C   ADC &2C77
     2BBD   95 52      STA &52,X
     2BBF   18         CLC
     2BC0   B5 62      LDA &62,X
     2BC2   6D 77 2C   ADC &2C77
     2BC5   95 62      STA &62,X
     2BC7   4C E7 2B   JMP &2BE7
.upper_next_line
     2BCA   18         CLC
     2BCB   B5 52      LDA &52,X
     2BCD   6D 79 2C   ADC &2C79
     2BD0   95 52      STA &52,X
     2BD2   B5 53      LDA &53,X
     2BD4   6D 7A 2C   ADC &2C7A
     2BD7   95 53      STA &53,X
     2BD9   B5 62      LDA &62,X
     2BDB   6D 79 2C   ADC &2C79
     2BDE   95 62      STA &62,X
     2BE0   B5 63      LDA &63,X
     2BE2   6D 7A 2C   ADC &2C7A
     2BE5   95 63      STA &63,X
.check_bottom
     2BE7   B5 53      LDA &53,X
     2BE9   C9 80      CMP #&80
     2BEB   90 08      BCC &2BF5
     2BED   C6 50      DEC &50
     2BEF   A9 00      LDA #&00
     2BF1   95 53      STA &53,X
     2BF3   F0 05      BEQ &2BFA
.bomb_redraw
     2BF5   B5 52      LDA &52,X
     2BF7   20 65 2B   JSR &2B65
.next_bomb
     2BFA   E8         INX
     2BFB   E8         INX
     2BFC   E4 51      CPX &51
     2BFE   90 8A      BCC &2B8A
     2C00   F0 88      BEQ &2B8A
     2C02   60         RTS
.mbo
     2C03   A0 00      LDY #&00
     2C05   B1 8C      LDA (&8C),Y
     2C07   85 70      STA &70
     2C09   AD 96 2D   LDA &2D96
     2C0C   85 82      STA &82
     2C0E   AD 97 2D   LDA &2D97
     2C11   85 83      STA &83
.ntbo
     2C13   C8         INY
     2C14   B1 8C      LDA (&8C),Y
     2C16   85 80      STA &80
     2C18   C8         INY
     2C19   B1 8C      LDA (&8C),Y
     2C1B   85 81      STA &81
     2C1D   D0 09      BNE &2C28
     2C1F   A9 7F      LDA #&7F
     2C21   25 73      AND &73
     2C23   85 73      STA &73
     2C25   4C 62 2C   JMP &2C62
.bo1
     2C28   20 B9 27   JSR &27B9
     2C2B   A5 80      LDA &80
     2C2D   29 07      AND #&07
     2C2F   C9 06      CMP #&06
     2C31   10 09      BPL &2C3C
     2C33   E6 80      INC &80
     2C35   E6 80      INC &80
     2C37   A5 81      LDA &81
     2C39   4C 49 2C   JMP &2C49
.bo2
     2C3C   18         CLC
     2C3D   A5 80      LDA &80
     2C3F   69 7A      ADC #&7A
     2C41   85 80      STA &80
     2C43   A5 81      LDA &81
     2C45   69 02      ADC #&02
     2C47   85 81      STA &81
.bo4
     2C49   C9 80      CMP #&80
     2C4B   30 08      BMI &2C55
     2C4D   C6 50      DEC &50
     2C4F   A9 00      LDA #&00
     2C51   91 8C      STA (&8C),Y
     2C53   F0 0D      BEQ &2C62
.bo6
     2C55   20 B9 27   JSR &27B9
     2C58   88         DEY
     2C59   A5 80      LDA &80
     2C5B   91 8C      STA (&8C),Y
     2C5D   C8         INY
     2C5E   A5 81      LDA &81
     2C60   91 8C      STA (&8C),Y
.bo7
     2C62   C4 70      CPY &70
     2C64   30 AD      BMI &2C13
     2C66   60         RTS
.ra2
     2C67   8D 70 2C   STA &2C70
     2C6A   38         SEC
     2C6B   A5 7C      LDA &7C
     2C6D   29 7F      AND #&7F
.ra3
     2C6F   E9 10      SBC #&10
     2C71   10 FC      BPL &2C6F
     2C73   6D 70 2C   ADC &2C70
     2C76   60         RTS
.end_GG_02_code
.end_GG_02_code =  &2C77 
.bomb_vert_rate
     2C77   03
.bomb_vert_newline
     2C78   05
.bomb_vert_LO
     2C79   7B
.bomb_vert_HI
     2C7A   02
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
