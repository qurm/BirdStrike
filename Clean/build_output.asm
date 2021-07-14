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
     112D   20 4A 18   JSR &184A
     1130   B9 42 11   LDA &1142,Y
     1133   20 EE FF   JSR &FFEE
     1136   C9 52      CMP #&52
     1138   D0 F0      BNE &112A
     113A   A9 96      LDA #&96
     113C   20 4A 18   JSR &184A
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
     1159   20 4A 18   JSR &184A
     115C   20 7F 13   JSR &137F
     115F   4C 68 11   JMP &1168
.play_short
     1162   20 69 18   JSR &1869
     1165   20 50 19   JSR &1950
.play_full
     1168   20 B0 11   JSR &11B0
     116B   A0 4B      LDY #&4B
.bonus_loop
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
     1182   20 4A 18   JSR &184A
     1185   98         TYA
     1186   48         PHA
     1187   A2 E8      LDX #&E8
     1189   A0 2D      LDY #&2D
     118B   A9 07      LDA #&07
     118D   20 F1 FF   JSR &FFF1
     1190   20 BE 17   JSR &17BE
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
     13BC   20 4B 1F   JSR &1F4B
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
     13EA   20 69 18   JSR &1869
     13ED   8E B0 1A   STX &1AB0
     13F0   EE 5C 25   INC &255C
.stm8
     13F3   20 88 18   JSR &1888
     13F6   D0 FB      BNE &13F3
     13F8   20 69 18   JSR &1869
     13FB   20 50 19   JSR &1950
     13FE   A9 3C      LDA #&3C
     1400   20 4A 18   JSR &184A
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
     14C7   20 4A 18   JSR &184A
.space
     14CA   A9 1A      LDA #&1A
     14CC   20 EE FF   JSR &FFEE
     14CF   A2 65      LDX #&65
     14D1   A0 13      LDY #&13
     14D3   20 F2 14   JSR &14F2
.ge4
     14D6   A2 9D      LDX #&9D
     14D8   20 7F 19   JSR &197F
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
     151E   8D D5 19   STA &19D5
     1521   AD 0D 02   LDA &020D
     1524   8D D6 19   STA &19D6
.newgame
     1527   20 20 14   JSR &1420
     152A   20 A2 15   JSR &15A2
.GO
     152D   20 E6 1C   JSR &1CE6
     1530   20 2D 26   JSR &262D
     1533   20 EF 28   JSR &28EF
     1536   20 F3 27   JSR &27F3
     1539   20 51 26   JSR &2651
     153C   20 CA 26   JSR &26CA
     153F   20 4B 27   JSR &274B
     1542   20 0C 2B   JSR &2B0C
     1545   20 6E 2A   JSR &2A6E
     1548   20 3C 1B   JSR &1B3C
     154B   20 EC 19   JSR &19EC
     154E   20 35 17   JSR &1735
     1551   20 88 19   JSR &1988
     1554   4C 2D 15   JMP &152D
     1557   28 63 29 ...
.level_de
     1572   20
     1573   1E
     1574   1C
     1575   1A
     1576   18
     1577   16
     1578   14
     1579   12
.level_bullet_count
     157A   06
     157B   08
     157C   0A
     157D   0C
     157E   0E
     157F   10
     1580   10
     1581   10
.level_bullet_interval
     1582   0C
     1583   0A
     1584   08
     1585   08
     1586   08
     1587   08
     1588   08
     1589   08
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
     159A   03
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
     15AB   20 50 19   JSR &1950
     15AE   A9 16      LDA #&16
     15B0   20 EE FF   JSR &FFEE
     15B3   A9 02      LDA #&02
     15B5   20 EE FF   JSR &FFEE
     15B8   A9 00      LDA #&00
     15BA   8D 26 18   STA &1826
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
.colour_loop
     15FF   20 00 26   JSR &2600
     1602   CA         DEX
     1603   E0 07      CPX #&07
     1605   D0 F8      BNE &15FF
     1607   86 7D      STX &7D
     1609   A9 01      LDA #&01
     160B   8D 99 26   STA &2699
     160E   A9 03      LDA #&03
     1610   8D 56 25   STA &2556
     1613   A9 2F      LDA #&2F
     1615   85 89      STA &89
.bf
.begin_level
     1617   20 69 18   JSR &1869
     161A   8E B0 1A   STX &1AB0
     161D   EE 5C 25   INC &255C
     1620   A0 4C      LDY #&4C
     1622   A9 00      LDA #&00
.clear_bullet_list
     1624   99 F0 2C   STA &2CF0,Y
     1627   88         DEY
     1628   10 FA      BPL &1624
     162A   A0 1F      LDY #&1F
.clear_bomb_list
     162C   99 50 00   STA &0050,Y
     162F   88         DEY
     1630   10 FA      BPL &162C
.b0
     1632   A9 0C      LDA #&0C
     1634   20 EE FF   JSR &FFEE
     1637   A9 9A      LDA #&9A
     1639   A2 14      LDX #&14
     163B   20 F4 FF   JSR &FFF4
     163E   20 48 1D   JSR &1D48
     1641   20 F7 1C   JSR &1CF7
     1644   20 4B 1F   JSR &1F4B
     1647   20 BE 17   JSR &17BE
     164A   A9 00      LDA #&00
     164C   8D 5B 25   STA &255B
     164F   8D 4E 2D   STA &2D4E
     1652   8D 55 2D   STA &2D55
     1655   AC 5C 25   LDY &255C
     1658   88         DEY
     1659   B9 72 15   LDA &1572,Y
     165C   8D 51 2D   STA &2D51
     165F   B9 92 15   LDA &1592,Y
     1662   09 C0      ORA #&C0
     1664   8D A7 2D   STA &2DA7
     1667   85 73      STA &73
     1669   38         SEC
     166A   B9 8A 15   LDA &158A,Y
     166D   E9 02      SBC #&02
     166F   85 51      STA &51
     1671   B9 9A 15   LDA &159A,Y
     1674   8D 9B 2B   STA &2B9B
     1677   18         CLC
     1678   69 78      ADC #&78
     167A   8D 9D 2B   STA &2B9D
     167D   49 07      EOR #&07
     167F   29 07      AND #&07
     1681   AA         TAX
     1682   E8         INX
     1683   8E 9C 2B   STX &2B9C
     1686   B9 7A 15   LDA &157A,Y
     1689   8D F0 2C   STA &2CF0
     168C   B9 82 15   LDA &1582,Y
     168F   8D 6F 27   STA &276F
     1692   A9 1E      LDA #&1E
     1694   8D 01 2D   STA &2D01
     1697   A9 88      LDA #&88
     1699   8D 59 25   STA &2559
     169C   A9 30      LDA #&30
     169E   8D 5A 25   STA &255A
     16A1   A9 80      LDA #&80
     16A3   8D 57 25   STA &2557
     16A6   A9 32      LDA #&32
     16A8   8D 58 25   STA &2558
     16AB   AE 56 25   LDX &2556
.pmi
     16AE   20 D7 19   JSR &19D7
     16B1   18         CLC
     16B2   AD 57 25   LDA &2557
     16B5   69 18      ADC #&18
     16B7   8D 57 25   STA &2557
     16BA   CA         DEX
     16BB   D0 F1      BNE &16AE
     16BD   A9 3A      LDA #&3A
     16BF   85 81      STA &81
     16C1   A9 81      LDA #&81
     16C3   85 82      STA &82
     16C5   A2 01      LDX #&01
     16C7   A0 08      LDY #&08
.pp1
     16C9   A9 81      LDA #&81
     16CB   9D 01 2D   STA &2D01,X
     16CE   E8         INX
     16CF   98         TYA
     16D0   18         CLC
     16D1   69 50      ADC #&50
     16D3   9D 01 2D   STA &2D01,X
     16D6   A8         TAY
     16D7   E8         INX
     16D8   A5 81      LDA &81
     16DA   69 00      ADC #&00
     16DC   9D 01 2D   STA &2D01,X
     16DF   85 81      STA &81
     16E1   18         CLC
     16E2   E8         INX
     16E3   A5 82      LDA &82
     16E5   69 0A      ADC #&0A
     16E7   85 82      STA &82
     16E9   9D 01 2D   STA &2D01,X
     16EC   E8         INX
     16ED   A9 D0      LDA #&D0
     16EF   9D 01 2D   STA &2D01,X
     16F2   E8         INX
     16F3   E0 1F      CPX #&1F
     16F5   30 D2      BMI &16C9
     16F7   A0 00      LDY #&00
     16F9   B1 75      LDA (&75),Y
     16FB   85 70      STA &70
.slop
     16FD   C8         INY
     16FE   C8         INY
     16FF   B1 75      LDA (&75),Y
     1701   85 78      STA &78
     1703   C8         INY
     1704   B1 75      LDA (&75),Y
     1706   85 79      STA &79
     1708   20 2D 2A   JSR &2A2D
     170B   C8         INY
     170C   C8         INY
     170D   C4 70      CPY &70
     170F   30 EC      BMI &16FD
     1711   20 96 1A   JSR &1A96
.sgun
.player_gun_initialise
     1714   A9 20      LDA #&20
     1716   8D A6 2D   STA &2DA6
     1719   A9 7E      LDA #&7E
     171B   85 87      STA &87
     171D   A9 90      LDA #&90
     171F   85 86      STA &86
     1721   A9 20      LDA #&20
     1723   8D BF 26   STA &26BF
     1726   A9 58      LDA #&58
     1728   8D BE 26   STA &26BE
     172B   20 BB 26   JSR &26BB
     172E   A9 40      LDA #&40
     1730   4C 50 19   JMP &1950
.end_frame
     1733   00
.score_exit
     1734   60         RTS
.sor
     1735   AD 4E 2D   LDA &2D4E
     1738   F0 FA      BEQ &1734
     173A   F8         SED
     173B   29 02      AND #&02
     173D   F0 14      BEQ &1753
     173F   18         CLC
     1740   A9 15      LDA #&15
     1742   6D 4F 2D   ADC &2D4F
     1745   8D 4F 2D   STA &2D4F
     1748   AD 50 2D   LDA &2D50
     174B   69 00      ADC #&00
     174D   8D 50 2D   STA &2D50
     1750   20 BB 1C   JSR &1CBB
.s1
     1753   A9 40      LDA #&40
     1755   2C 4E 2D   BIT &2D4E
     1758   F0 1C      BEQ &1776
     175A   18         CLC
     175B   A9 01      LDA #&01
.wng
     175D   6D 4F 2D   ADC &2D4F
     1760   8D 4F 2D   STA &2D4F
     1763   AD 50 2D   LDA &2D50
     1766   69 00      ADC #&00
     1768   8D 50 2D   STA &2D50
     176B   D8         CLD
     176C   A2 C8      LDX #&C8
     176E   A0 2D      LDY #&2D
     1770   A9 07      LDA #&07
     1772   20 F1 FF   JSR &FFF1
     1775   F8         SED
.s4
     1776   A9 10      LDA #&10
     1778   2C 4E 2D   BIT &2D4E
     177B   F0 1A      BEQ &1797
     177D   18         CLC
     177E   A9 0A      LDA #&0A
.pig
     1780   6D 4F 2D   ADC &2D4F
     1783   8D 4F 2D   STA &2D4F
     1786   AD 50 2D   LDA &2D50
     1789   69 00      ADC #&00
     178B   8D 50 2D   STA &2D50
     178E   D8         CLD
     178F   20 88 18   JSR &1888
     1792   D0 03      BNE &1797
     1794   20 50 11   JSR &1150
.s2
     1797   D8         CLD
     1798   20 F7 17   JSR &17F7
     179B   AD 4E 2D   LDA &2D4E
     179E   10 19      BPL &17B9
     17A0   AD 33 17   LDA &1733
     17A3   D0 09      BNE &17AE
     17A5   A9 80      LDA #&80
     17A7   8D 33 17   STA &1733
     17AA   8D 4E 2D   STA &2D4E
     17AD   60         RTS
.end_level
     17AE   A9 00      LDA #&00
     17B0   8D 4E 2D   STA &2D4E
     17B3   8D 33 17   STA &1733
     17B6   4C 5A 18   JMP &185A
.s3
     17B9   A9 00      LDA #&00
     17BB   8D 4E 2D   STA &2D4E
.s7
.score_update_screen
     17BE   A9 34      LDA #&34
     17C0   85 81      STA &81
     17C2   A9 B0      LDA #&B0
     17C4   85 80      STA &80
     17C6   A9 24      LDA #&24
     17C8   85 83      STA &83
     17CA   A9 F0      LDA #&F0
     17CC   2D 50 2D   AND &2D50
     17CF   20 3D 26   JSR &263D
     17D2   A9 0F      LDA #&0F
     17D4   2D 50 2D   AND &2D50
     17D7   0A         ASL A
     17D8   0A         ASL A
     17D9   0A         ASL A
     17DA   0A         ASL A
     17DB   20 3D 26   JSR &263D
     17DE   A9 F0      LDA #&F0
     17E0   2D 4F 2D   AND &2D4F
     17E3   20 3D 26   JSR &263D
     17E6   A9 0F      LDA #&0F
     17E8   2D 4F 2D   AND &2D4F
     17EB   0A         ASL A
     17EC   0A         ASL A
     17ED   0A         ASL A
     17EE   0A         ASL A
     17EF   20 3D 26   JSR &263D
     17F2   A9 00      LDA #&00
     17F4   4C 3D 26   JMP &263D
.extra_player_check
.exg
     17F7   A9 01      LDA #&01
     17F9   2C 26 18   BIT &1826
     17FC   D0 10      BNE &180E
     17FE   AC 50 2D   LDY &2D50
     1801   C0 05      CPY #&05
     1803   30 20      BMI &1825
     1805   0D 26 18   ORA &1826
     1808   8D 26 18   STA &1826
     180B   20 27 18   JSR &1827
.exg1
     180E   A9 02      LDA #&02
     1810   2C 26 18   BIT &1826
     1813   D0 10      BNE &1825
     1815   AC 50 2D   LDY &2D50
     1818   C0 10      CPY #&10
     181A   30 09      BMI &1825
     181C   0D 26 18   ORA &1826
     181F   8D 26 18   STA &1826
     1822   4C 27 18   JMP &1827
.exg2
     1825   60         RTS
.exg3
     1826   00
.exg4
     1827   20 D7 19   JSR &19D7
     182A   A9 DC      LDA #&DC
     182C   8D FC 2D   STA &2DFC
     182F   A2 F8      LDX #&F8
     1831   A0 2D      LDY #&2D
     1833   A9 07      LDA #&07
     1835   20 F1 FF   JSR &FFF1
     1838   EE 56 25   INC &2556
     183B   18         CLC
     183C   AD 57 25   LDA &2557
     183F   69 18      ADC #&18
     1841   8D 57 25   STA &2557
     1844   90 03      BCC &1849
     1846   EE 58 25   INC &2558
.exg5
     1849   60         RTS
.delay
     184A   8D 0A 22   STA &220A
     184D   98         TYA
     184E   48         PHA
.del1
     184F   20 2D 26   JSR &262D
     1852   CE 0A 22   DEC &220A
     1855   D0 F8      BNE &184F
     1857   68         PLA
     1858   A8         TAY
     1859   60         RTS
.next_level
.ef
     185A   18         CLC
     185B   A5 88      LDA &88
     185D   69 40      ADC #&40
     185F   85 88      STA &88
     1861   A9 64      LDA #&64
     1863   20 4A 18   JSR &184A
     1866   4C 17 16   JMP &1617
.cht
     1869   A9 03      LDA #&03
     186B   2D 5C 25   AND &255C
     186E   AA         TAX
     186F   D0 03      BNE &1874
     1871   A9 33      LDA #&33
     1873   60         RTS
.ct1
     1874   CA         DEX
     1875   D0 04      BNE &187B
     1877   8A         TXA
     1878   A2 0D      LDX #&0D
     187A   60         RTS
.ct2
     187B   CA         DEX
     187C   D0 05      BNE &1883
     187E   A9 11      LDA #&11
     1880   A2 1A      LDX #&1A
     1882   60         RTS
.ct3
     1883   A9 22      LDA #&22
     1885   A2 26      LDX #&26
     1887   60         RTS
.nxno
     1888   EE B0 1A   INC &1AB0
     188B   AC B0 1A   LDY &1AB0
     188E   B9 B0 1A   LDA &1AB0,Y
     1891   85 70      STA &70
     1893   29 0E      AND #&0E
     1895   C9 08      CMP #&08
     1897   10 0A      BPL &18A3
     1899   18         CLC
     189A   6D 59 25   ADC &2559
     189D   85 80      STA &80
     189F   A9 00      LDA #&00
     18A1   F0 0A      BEQ &18AD
.n1
     18A3   18         CLC
     18A4   6D 59 25   ADC &2559
     18A7   69 78      ADC #&78
     18A9   85 80      STA &80
     18AB   A9 02      LDA #&02
.n2
     18AD   6D 5A 25   ADC &255A
     18B0   85 81      STA &81
     18B2   A9 20      LDA #&20
     18B4   85 83      STA &83
     18B6   20 E8 18   JSR &18E8
     18B9   18         CLC
     18BA   AD 59 25   LDA &2559
     18BD   69 20      ADC #&20
     18BF   8D 59 25   STA &2559
     18C2   90 03      BCC &18C7
     18C4   EE 5A 25   INC &255A
.n3
     18C7   20 1C 19   JSR &191C
     18CA   18         CLC
     18CB   A5 80      LDA &80
     18CD   69 08      ADC #&08
     18CF   85 80      STA &80
     18D1   90 02      BCC &18D5
     18D3   E6 81      INC &81
.n4
     18D5   18         CLC
     18D6   A5 82      LDA &82
     18D8   69 08      ADC #&08
     18DA   85 82      STA &82
     18DC   90 02      BCC &18E0
     18DE   E6 83      INC &83
.n5
     18E0   20 1C 19   JSR &191C
     18E3   C8         INY
     18E4   B9 B0 1A   LDA &1AB0,Y
     18E7   60         RTS
.chnot
     18E8   A9 80      LDA #&80
     18EA   24 70      BIT &70
     18EC   F0 05      BEQ &18F3
     18EE   A9 00      LDA #&00
     18F0   85 82      STA &82
     18F2   60         RTS
.c1
     18F3   4A         LSR A
     18F4   24 70      BIT &70
     18F6   F0 05      BEQ &18FD
     18F8   A9 10      LDA #&10
     18FA   85 82      STA &82
     18FC   60         RTS
.c2
     18FD   4A         LSR A
     18FE   24 70      BIT &70
     1900   F0 05      BEQ &1907
     1902   A9 20      LDA #&20
     1904   85 82      STA &82
     1906   60         RTS
.c3
     1907   4A         LSR A
     1908   24 70      BIT &70
     190A   F0 05      BEQ &1911
     190C   A9 30      LDA #&30
     190E   85 82      STA &82
     1910   60         RTS
.c4
     1911   A9 01      LDA #&01
     1913   24 70      BIT &70
     1915   F0 04      BEQ &191B
     1917   A9 40      LDA #&40
     1919   85 82      STA &82
.c5
     191B   60         RTS
.pno
     191C   98         TYA
     191D   48         PHA
     191E   A0 07      LDY #&07
     1920   18         CLC
     1921   A5 80      LDA &80
     1923   69 78      ADC #&78
     1925   85 84      STA &84
     1927   A5 81      LDA &81
     1929   69 02      ADC #&02
     192B   85 85      STA &85
     192D   A5 80      LDA &80
     192F   29 07      AND #&07
     1931   49 07      EOR #&07
     1933   85 74      STA &74
     1935   C9 07      CMP #&07
     1937   10 0B      BPL &1944
.pnbot
     1939   B1 82      LDA (&82),Y
     193B   11 84      ORA (&84),Y
     193D   91 84      STA (&84),Y
     193F   88         DEY
     1940   C4 74      CPY &74
     1942   D0 F5      BNE &1939
.pntop
     1944   B1 82      LDA (&82),Y
     1946   11 80      ORA (&80),Y
     1948   91 80      STA (&80),Y
     194A   88         DEY
     194B   10 F7      BPL &1944
     194D   68         PLA
     194E   A8         TAY
     194F   60         RTS
.playTune
.tune
     1950   85 70      STA &70
.t1
     1952   A4 70      LDY &70
     1954   B9 E0 1A   LDA &1AE0,Y
     1957   F0 1A      BEQ &1973
     1959   8D FC 2D   STA &2DFC
     195C   C8         INY
     195D   B9 E0 1A   LDA &1AE0,Y
     1960   8D FE 2D   STA &2DFE
     1963   A2 F8      LDX #&F8
     1965   A0 2D      LDY #&2D
     1967   A9 07      LDA #&07
     1969   20 F1 FF   JSR &FFF1
     196C   E6 70      INC &70
     196E   E6 70      INC &70
     1970   4C 52 19   JMP &1952
.t3
     1973   A9 80      LDA #&80
     1975   A2 FA      LDX #&FA
     1977   20 F4 FF   JSR &FFF4
     197A   E0 0F      CPX #&0F
     197C   30 F5      BMI &1973
     197E   60         RTS
.keyboardScan
.key
     197F   A9 81      LDA #&81
     1981   A0 FF      LDY #&FF
     1983   20 F4 FF   JSR &FFF4
     1986   E8         INX
     1987   60         RTS
.check_key_press
     1988   CE CD 19   DEC &19CD
     198B   D0 3F      BNE &19CC
     198D   A9 05      LDA #&05
     198F   8D CD 19   STA &19CD
.checkQkey
     1992   A2 EF      LDX #&EF
     1994   20 7F 19   JSR &197F
     1997   D0 0A      BNE &19A3
     1999   A9 CE      LDA #&CE
     199B   8D 0C 02   STA &020C
     199E   A9 19      LDA #&19
     19A0   8D 0D 02   STA &020D
.checkSkey
     19A3   A2 AE      LDX #&AE
     19A5   20 7F 19   JSR &197F
     19A8   D0 0C      BNE &19B6
     19AA   AD D5 19   LDA &19D5
     19AD   8D 0C 02   STA &020C
     19B0   AD D6 19   LDA &19D6
     19B3   8D 0D 02   STA &020D
.checkRkey
     19B6   A2 CC      LDX #&CC
     19B8   20 7F 19   JSR &197F
     19BB   D0 0F      BNE &19CC
.op3
     19BD   A9 81      LDA #&81
     19BF   A0 01      LDY #&01
     19C1   A2 00      LDX #&00
     19C3   20 F4 FF   JSR &FFF4
     19C6   B0 F5      BCS &19BD
     19C8   E0 52      CPX #&52
     19CA   F0 F1      BEQ &19BD
.op5
.checkKeyComplete
     19CC   60         RTS
.keycounter
     19CD   01
.mute
     19CE   C9 07      CMP #&07
     19D0   F0 FA      BEQ &19CC
.mu1
     19D2   6C D5 19   JMP (&19D5)
.soun
     19D5   EB E7
.end_SS_03
.end_SS_03 =  &19D7 
.mini
.plot_gun_life_indicator
     19D7   A9 10      LDA #&10
     19D9   85 82      STA &82
     19DB   A9 21      LDA #&21
     19DD   85 83      STA &83
     19DF   AD 57 25   LDA &2557
     19E2   85 80      STA &80
     19E4   AD 58 25   LDA &2558
     19E7   85 81      STA &81
     19E9   4C AF 1C   JMP &1CAF
.gun_hit_display
.h0
     19EC   A9 20      LDA #&20
     19EE   2C 4E 2D   BIT &2D4E
     19F1   D0 06      BNE &19F9
     19F3   AD 55 25   LDA &2555
     19F6   D0 34      BNE &1A2C
.hreturn
     19F8   60         RTS
.h1
     19F9   A2 00      LDX #&00
     19FB   A0 07      LDY #&07
     19FD   20 00 26   JSR &2600
     1A00   A9 07      LDA #&07
     1A02   A0 2D      LDY #&2D
     1A04   A2 E0      LDX #&E0
     1A06   20 F1 FF   JSR &FFF1
     1A09   A9 FF      LDA #&FF
     1A0B   8D 55 25   STA &2555
     1A0E   A9 60      LDA #&60
     1A10   8D F3 27   STA &27F3
     1A13   8D 51 26   STA &2651
     1A16   8D 4B 27   STA &274B
     1A19   8D 6E 2A   STA &2A6E
     1A1C   20 BB 26   JSR &26BB
     1A1F   A9 22      LDA #&22
     1A21   8D BF 26   STA &26BF
     1A24   A9 10      LDA #&10
     1A26   8D BE 26   STA &26BE
     1A29   4C BB 26   JMP &26BB
.h12
     1A2C   CE 55 25   DEC &2555
     1A2F   AD 55 25   LDA &2555
     1A32   C9 FE      CMP #&FE
     1A34   D0 07      BNE &1A3D
     1A36   A2 00      LDX #&00
     1A38   A0 00      LDY #&00
     1A3A   4C 00 26   JMP &2600
.h3
     1A3D   C9 DC      CMP #&DC
     1A3F   D0 0B      BNE &1A4C
     1A41   20 BB 26   JSR &26BB
     1A44   A9 38      LDA #&38
     1A46   8D BE 26   STA &26BE
     1A49   4C BB 26   JMP &26BB
.h4
     1A4C   C9 8C      CMP #&8C
     1A4E   D0 0B      BNE &1A5B
     1A50   20 BB 26   JSR &26BB
     1A53   A9 60      LDA #&60
     1A55   8D BE 26   STA &26BE
     1A58   4C BB 26   JMP &26BB
.h5
     1A5B   C9 01      CMP #&01
     1A5D   D0 99      BNE &19F8
     1A5F   CE 56 25   DEC &2556
     1A62   D0 03      BNE &1A67
     1A64   4C 26 11   JMP &1126
.h5a
     1A67   20 BB 26   JSR &26BB
     1A6A   20 14 17   JSR &1714
     1A6D   AC 01 2D   LDY &2D01
.h6
     1A70   B1 75      LDA (&75),Y
     1A72   C9 C0      CMP #&C0
     1A74   D0 19      BNE &1A8F
     1A76   88         DEY
     1A77   B1 75      LDA (&75),Y
     1A79   10 15      BPL &1A90
     1A7B   49 80      EOR #&80
     1A7D   91 75      STA (&75),Y
     1A7F   88         DEY
     1A80   B1 75      LDA (&75),Y
     1A82   85 79      STA &79
     1A84   88         DEY
     1A85   B1 75      LDA (&75),Y
     1A87   85 78      STA &78
     1A89   20 2D 2A   JSR &2A2D
     1A8C   4C 92 1A   JMP &1A92
.h8
     1A8F   88         DEY
.h9
     1A90   88         DEY
     1A91   88         DEY
.h10
     1A92   88         DEY
     1A93   88         DEY
     1A94   D0 DA      BNE &1A70
.h7
     1A96   A9 EA      LDA #&EA
     1A98   8D 4B 27   STA &274B
     1A9B   8D F3 27   STA &27F3
     1A9E   8D 51 26   STA &2651
     1AA1   8D 6E 2A   STA &2A6E
     1AA4   38         SEC
     1AA5   AD 57 25   LDA &2557
     1AA8   E9 18      SBC #&18
     1AAA   8D 57 25   STA &2557
     1AAD   4C D7 19   JMP &19D7
.end_PIG_01
.end_PIG-01 =  &1AB0 
.nl
     1AB0   0D
     1AB1   4A
     1AB2   18
     1AB3   8C
     1AB4   8E
     1AB5   1C
     1AB6   8A
     1AB7   84
     1AB8   14
     1AB9   82
     1ABA   20
     1ABB   44
     1ABC   05
     1ABD   00
     1ABE   48
     1ABF   18
     1AC0   86
     1AC1   84
     1AC2   14
     1AC3   86
     1AC4   84
     1AC5   14
     1AC6   88
     1AC7   2A
     1AC8   4E
     1AC9   05
     1ACA   00
     1ACB   4A
     1ACC   18
     1ACD   8C
     1ACE   8E
     1ACF   1C
     1AD0   8A
     1AD1   84
     1AD2   14
     1AD3   82
     1AD4   20
     1AD5   44
     1AD6   00
     1AD7   44
     1AD8   42
     1AD9   42
     1ADA   44
     1ADB   46
     1ADC   24
     1ADD   14
     1ADE   05
     1ADF   00
.tl
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
     1AEF   1E
     1AF0   00
     1AF1   6D
     1AF2   17
     1AF3   75
     1AF4   05
     1AF5   79
     1AF6   0A
     1AF7   75
     1AF8   05
     1AF9   79
     1AFA   0A
     1AFB   6D
     1AFC   05
     1AFD   65
     1AFE   1E
     1AFF   59
     1B00   1E
     1B01   00
     1B02   65
     1B03   17
     1B04   5D
     1B05   05
     1B06   59
     1B07   0A
     1B08   65
     1B09   05
     1B0A   79
     1B0B   0A
     1B0C   81
     1B0D   05
     1B0E   89
     1B0F   1E
     1B10   79
     1B11   0F
     1B12   00
     1B13   79
     1B14   0F
     1B15   81
     1B16   0F
     1B17   81
     1B18   0F
     1B19   79
     1B1A   0F
     1B1B   75
     1B1C   0F
     1B1D   79
     1B1E   1E
     1B1F   00
     1B20   59
     1B21   05
     1B22   59
     1B23   05
     1B24   59
     1B25   05
     1B26   49
     1B27   0F
     1B28   00
     1B29   41
     1B2A   05
     1B2B   35
     1B2C   0A
     1B2D   39
     1B2E   05
     1B2F   3D
     1B30   05
     1B31   41
     1B32   05
     1B33   65
     1B34   0A
     1B35   65
     1B36   0A
     1B37   55
     1B38   14
     1B39   00
     1B3A   14
     1B3B   00
.pg
     1B3C   A9 23      LDA #&23
     1B3E   85 83      STA &83
     1B40   AD 55 2D   LDA &2D55
     1B43   D0 77      BNE &1BBC
     1B45   A9 42      LDA #&42
     1B47   2C 4E 2D   BIT &2D4E
     1B4A   F0 6F      BEQ &1BBB
     1B4C   A9 02      LDA #&02
     1B4E   2C 54 25   BIT &2554
     1B51   F0 1F      BEQ &1B72
.pig_init_right
     1B53   A9 23      LDA #&23
     1B55   85 83      STA &83
     1B57   8D 3D 1B   STA &1B3D
     1B5A   A9 68      LDA #&68
     1B5C   8D 54 2D   STA &2D54
     1B5F   85 80      STA &80
     1B61   A9 00      LDA #&00
     1B63   8D 5D 1C   STA &1C5D
     1B66   A9 4C      LDA #&4C
     1B68   8D 57 2D   STA &2D57
     1B6B   A9 4B      LDA #&4B
     1B6D   8D 9A 1B   STA &1B9A
     1B70   D0 1B      BNE &1B8D
.pgl
.pig_init_left
     1B72   A9 22      LDA #&22
     1B74   85 83      STA &83
     1B76   8D 3D 1B   STA &1B3D
     1B79   A9 00      LDA #&00
     1B7B   8D 54 2D   STA &2D54
     1B7E   85 80      STA &80
     1B80   8D 57 2D   STA &2D57
     1B83   A9 4C      LDA #&4C
     1B85   8D 5D 1C   STA &1C5D
     1B88   A9 49      LDA #&49
     1B8A   8D 9A 1B   STA &1B9A
.b3
     1B8D   A9 00      LDA #&00
     1B8F   85 7C      STA &7C
     1B91   EE 54 25   INC &2554
     1B94   A9 07      LDA #&07
     1B96   25 7D      AND &7D
     1B98   AA         TAX
     1B99   A9 4B      LDA #&4B
     1B9B   18         CLC
.b5
     1B9C   69 05      ADC #&05
     1B9E   A8         TAY
     1B9F   A5 7C      LDA &7C
     1BA1   69 10      ADC #&10
     1BA3   85 7C      STA &7C
     1BA5   98         TYA
     1BA6   CA         DEX
     1BA7   10 F3      BPL &1B9C
     1BA9   8D 55 2D   STA &2D55
     1BAC   85 81      STA &81
     1BAE   A2 02      LDX #&02
     1BB0   8E 56 2D   STX &2D56
     1BB3   BD 46 2D   LDA &2D46,X
     1BB6   85 82      STA &82
     1BB8   4C AF 1C   JMP &1CAF
.ep
     1BBB   60         RTS
.pgb0
     1BBC   AD 54 2D   LDA &2D54
     1BBF   85 80      STA &80
     1BC1   AD 55 2D   LDA &2D55
     1BC4   85 81      STA &81
     1BC6   10 18      BPL &1BE0
     1BC8   CE 56 2D   DEC &2D56
     1BCB   D0 EE      BNE &1BBB
     1BCD   49 80      EOR #&80
     1BCF   85 81      STA &81
     1BD1   A9 10      LDA #&10
     1BD3   0D 4E 2D   ORA &2D4E
     1BD6   8D 4E 2D   STA &2D4E
     1BD9   A9 00      LDA #&00
     1BDB   8D 55 2D   STA &2D55
     1BDE   F0 4C      BEQ &1C2C
.pgb1
     1BE0   AD 56 2D   LDA &2D56
     1BE3   29 7F      AND #&7F
     1BE5   AA         TAX
     1BE6   BD 46 2D   LDA &2D46,X
     1BE9   85 82      STA &82
     1BEB   A0 00      LDY #&00
     1BED   B1 8A      LDA (&8A),Y
     1BEF   85 70      STA &70
.pgh
     1BF1   C8         INY
     1BF2   B1 8A      LDA (&8A),Y
     1BF4   38         SEC
     1BF5   E5 7C      SBC &7C
     1BF7   30 4C      BMI &1C45
     1BF9   C9 07      CMP #&07
     1BFB   10 48      BPL &1C45
     1BFD   C8         INY
     1BFE   C8         INY
     1BFF   B1 8A      LDA (&8A),Y
     1C01   F0 44      BEQ &1C47
     1C03   C8         INY
     1C04   B1 8A      LDA (&8A),Y
     1C06   38         SEC
     1C07   ED 57 2D   SBC &2D57
     1C0A   30 3C      BMI &1C48
     1C0C   C9 03      CMP #&03
     1C0E   10 38      BPL &1C48
     1C10   A9 E8      LDA #&E8
     1C12   91 8A      STA (&8A),Y
     1C14   AA         TAX
     1C15   A9 07      LDA #&07
     1C17   A0 2D      LDY #&2D
     1C19   20 F1 FF   JSR &FFF1
     1C1C   A9 10      LDA #&10
     1C1E   8D 56 2D   STA &2D56
     1C21   A9 80      LDA #&80
     1C23   0D 55 2D   ORA &2D55
     1C26   8D 55 2D   STA &2D55
     1C29   20 AF 1C   JSR &1CAF
.bx
     1C2C   A9 23      LDA #&23
     1C2E   85 83      STA &83
     1C30   A9 70      LDA #&70
     1C32   85 82      STA &82
     1C34   4C AF 1C   JMP &1CAF
.b9
     1C37   A9 04      LDA #&04
     1C39   0D 4E 2D   ORA &2D4E
     1C3C   8D 4E 2D   STA &2D4E
     1C3F   A9 00      LDA #&00
     1C41   8D 55 2D   STA &2D55
.x
     1C44   60         RTS
.pgnh
     1C45   C8         INY
     1C46   C8         INY
     1C47   C8         INY
     1C48   C4 70      CPY &70
     1C4A   30 A5      BMI &1BF1
     1C4C   A9 80      LDA #&80
     1C4E   4D 56 2D   EOR &2D56
     1C51   8D 56 2D   STA &2D56
     1C54   30 EE      BMI &1C44
     1C56   20 AF 1C   JSR &1CAF
     1C59   AD 57 2D   LDA &2D57
.xps
     1C5C   C9 00      CMP #&00
     1C5E   F0 D7      BEQ &1C37
     1C60   29 1F      AND #&1F
     1C62   D0 09      BNE &1C6D
     1C64   A9 07      LDA #&07
     1C66   A0 2D      LDY #&2D
     1C68   A2 F0      LDX #&F0
     1C6A   20 F1 FF   JSR &FFF1
.b6
     1C6D   AE 56 2D   LDX &2D56
     1C70   CA         DEX
     1C71   10 02      BPL &1C75
     1C73   A2 07      LDX #&07
.b7
     1C75   8E 56 2D   STX &2D56
     1C78   BD 46 2D   LDA &2D46,X
     1C7B   85 82      STA &82
     1C7D   AD 5D 1C   LDA &1C5D
     1C80   F0 18      BEQ &1C9A
     1C82   EE 57 2D   INC &2D57
     1C85   18         CLC
     1C86   AD 54 2D   LDA &2D54
     1C89   69 08      ADC #&08
     1C8B   8D 54 2D   STA &2D54
     1C8E   85 80      STA &80
     1C90   90 1D      BCC &1CAF
     1C92   EE 55 2D   INC &2D55
     1C95   E6 81      INC &81
     1C97   4C AF 1C   JMP &1CAF
.b10
     1C9A   CE 57 2D   DEC &2D57
     1C9D   38         SEC
     1C9E   AD 54 2D   LDA &2D54
     1CA1   E9 08      SBC #&08
     1CA3   8D 54 2D   STA &2D54
     1CA6   85 80      STA &80
     1CA8   B0 05      BCS &1CAF
     1CAA   CE 55 2D   DEC &2D55
     1CAD   C6 81      DEC &81
.plot_pigeon_sprite
.pb
     1CAF   A0 17      LDY #&17
.b8
     1CB1   B1 82      LDA (&82),Y
     1CB3   51 80      EOR (&80),Y
     1CB5   91 80      STA (&80),Y
     1CB7   88         DEY
     1CB8   10 F7      BPL &1CB1
     1CBA   60         RTS
.ddu1
.plane_hit
     1CBB   AC 5B 25   LDY &255B
     1CBE   C0 09      CPY #&09
     1CC0   10 23      BPL &1CE5
     1CC2   B9 40 25   LDA &2540,Y
     1CC5   85 80      STA &80
     1CC7   C8         INY
     1CC8   B9 40 25   LDA &2540,Y
     1CCB   85 81      STA &81
     1CCD   C8         INY
     1CCE   8C 5B 25   STY &255B
     1CD1   A0 04      LDY #&04
     1CD3   A9 55      LDA #&55
.ddu2
     1CD5   91 80      STA (&80),Y
     1CD7   88         DEY
     1CD8   10 FB      BPL &1CD5
     1CDA   A0 09      LDY #&09
     1CDC   0A         ASL A
     1CDD   91 80      STA (&80),Y
     1CDF   A0 01      LDY #&01
     1CE1   A9 FF      LDA #&FF
     1CE3   91 80      STA (&80),Y
.ddu3
     1CE5   60         RTS
.random1
     1CE6   A5 7D      LDA &7D
     1CE8   29 48      AND #&48
     1CEA   69 38      ADC #&38
     1CEC   0A         ASL A
     1CED   0A         ASL A
     1CEE   26 7F      ROL &7F
     1CF0   26 7E      ROL &7E
     1CF2   26 7D      ROL &7D
     1CF4   A5 7D      LDA &7D
     1CF6   60         RTS
.draw_backgnd_art
     1CF7   A0 00      LDY #&00
.draw_line_art_loop
     1CF9   B9 DE 1D   LDA &1DDE,Y
     1CFC   20 EE FF   JSR &FFEE
     1CFF   C8         INY
     1D00   D0 F7      BNE &1CF9
     1D02   A5 88      LDA &88
     1D04   85 82      STA &82
     1D06   A5 89      LDA &89
     1D08   85 83      STA &83
     1D0A   A9 1F      LDA #&1F
     1D0C   8D 47 2A   STA &2A47
     1D0F   A9 C0      LDA #&C0
     1D11   85 70      STA &70
     1D13   A0 00      LDY #&00
.draw_backgnd_sprite_loop
     1D15   C8         INY
     1D16   BE F1 1E   LDX &1EF1,Y
     1D19   C8         INY
     1D1A   B9 F1 1E   LDA &1EF1,Y
     1D1D   24 70      BIT &70
     1D1F   D0 0C      BNE &1D2D
     1D21   85 89      STA &89
     1D23   86 88      STX &88
     1D25   C8         INY
     1D26   BE F1 1E   LDX &1EF1,Y
     1D29   C8         INY
     1D2A   B9 F1 1E   LDA &1EF1,Y
.skip1
     1D2D   86 78      STX &78
     1D2F   85 79      STA &79
     1D31   20 2D 2A   JSR &2A2D
     1D34   CC F1 1E   CPY &1EF1
     1D37   30 DC      BMI &1D15
     1D39   A9 3F      LDA #&3F
     1D3B   8D 47 2A   STA &2A47
     1D3E   A5 82      LDA &82
     1D40   85 88      STA &88
     1D42   A5 83      LDA &83
     1D44   85 89      STA &89
     1D46   60         RTS
     1D47   00         BRK
.plot_clouds
     1D48   A9 44      LDA #&44
     1D4A   85 79      STA &79
     1D4C   A9 FF      LDA #&FF
     1D4E   A2 05      LDX #&05
.mid_outer_loop
     1D50   A0 00      LDY #&00
     1D52   84 78      STY &78
.mid_inner_loop
     1D54   91 78      STA (&78),Y
     1D56   C8         INY
     1D57   D0 FB      BNE &1D54
     1D59   E6 79      INC &79
     1D5B   CA         DEX
     1D5C   D0 F2      BNE &1D50
     1D5E   A0 1F      LDY #&1F
.cloud_loop2
     1D60   B9 E0 2E   LDA &2EE0,Y
     1D63   91 78      STA (&78),Y
     1D65   88         DEY
     1D66   10 F8      BPL &1D60
     1D68   A9 2E      LDA #&2E
     1D6A   85 7B      STA &7B
     1D6C   A9 20      LDA #&20
     1D6E   85 78      STA &78
     1D70   A2 08      LDX #&08
.next_cloud_sprite
     1D72   BD 3D 2D   LDA &2D3D,X
     1D75   85 7A      STA &7A
     1D77   A0 3F      LDY #&3F
.next_cloud_byte
     1D79   B1 7A      LDA (&7A),Y
     1D7B   91 78      STA (&78),Y
     1D7D   88         DEY
     1D7E   10 F9      BPL &1D79
     1D80   18         CLC
     1D81   A5 78      LDA &78
     1D83   69 40      ADC #&40
     1D85   85 78      STA &78
     1D87   90 02      BCC &1D8B
     1D89   E6 79      INC &79
.skip1
     1D8B   CA         DEX
     1D8C   10 E4      BPL &1D72
     1D8E   A0 1F      LDY #&1F
.loop32
     1D90   B9 C0 2E   LDA &2EC0,Y
     1D93   91 78      STA (&78),Y
     1D95   88         DEY
     1D96   10 F8      BPL &1D90
.mirror_loop_1
     1D98   A0 00      LDY #&00
.mirror_loop_2
     1D9A   A2 07      LDX #&07
.mirror_loop_3
.modify_lower_dest_addr
     1D9C   B9 00 49   LDA &4900,Y
.modify_upper_dest_addr
     1D9F   9D 80 41   STA &4180,X
     1DA2   C8         INY
     1DA3   CA         DEX
     1DA4   10 F6      BPL &1D9C
     1DA6   18         CLC
     1DA7   AD A0 1D   LDA &1DA0
     1DAA   69 08      ADC #&08
     1DAC   8D A0 1D   STA &1DA0
     1DAF   90 03      BCC &1DB4
     1DB1   EE A1 1D   INC &1DA1
.skip2
     1DB4   C0 80      CPY #&80
     1DB6   D0 E2      BNE &1D9A
     1DB8   AD 9D 1D   LDA &1D9D
     1DBB   49 80      EOR #&80
     1DBD   8D 9D 1D   STA &1D9D
     1DC0   30 03      BMI &1DC5
     1DC2   EE 9E 1D   INC &1D9E
.skip3
     1DC5   A9 44      LDA #&44
     1DC7   CD A1 1D   CMP &1DA1
     1DCA   D0 CC      BNE &1D98
     1DCC   8C A0 1D   STY &1DA0
     1DCF   E8         INX
     1DD0   8E 9D 1D   STX &1D9D
     1DD3   A9 49      LDA #&49
     1DD5   8D 9E 1D   STA &1D9E
     1DD8   A9 41      LDA #&41
     1DDA   8D A1 1D   STA &1DA1
     1DDD   60         RTS
.scenery_line_art
     1DDE   12
     1DDF   00
     1DE0   06
     1DE1   19
     1DE2   04
     1DE3   00
     1DE4   00
     1DE5   13
     1DE6   00
     1DE7   19
     1DE8   05
     1DE9   04
     1DEA   01
     1DEB   17
     1DEC   00
     1DED   19
     1DEE   05
     1DEF   2C
     1DF0   01
     1DF1   3C
     1DF2   00
     1DF3   19
     1DF4   04
     1DF5   7E
     1DF6   04
     1DF7   3E
     1DF8   00
     1DF9   19
     1DFA   05
     1DFB   1A
     1DFC   04
     1DFD   20
     1DFE   00
     1DFF   19
     1E00   05
     1E01   84
     1E02   03
     1E03   20
     1E04   00
     1E05   19
     1E06   05
     1E07   52
     1E08   03
     1E09   28
     1E0A   00
     1E0B   19
     1E0C   05
     1E0D   20
     1E0E   03
     1E0F   38
     1E10   00
     1E11   19
     1E12   05
     1E13   16
     1E14   03
     1E15   46
     1E16   00
     1E17   19
     1E18   05
     1E19   16
     1E1A   03
     1E1B   52
     1E1C   00
     1E1D   19
     1E1E   05
     1E1F   20
     1E20   03
     1E21   60
     1E22   00
     1E23   19
     1E24   05
     1E25   52
     1E26   03
     1E27   74
     1E28   00
     1E29   19
     1E2A   05
     1E2B   BB
     1E2C   03
     1E2D   7C
     1E2E   00
     1E2F   19
     1E30   04
     1E31   7E
     1E32   04
     1E33   42
     1E34   00
     1E35   19
     1E36   15
     1E37   1A
     1E38   04
     1E39   24
     1E3A   00
     1E3B   19
     1E3C   15
     1E3D   84
     1E3E   03
     1E3F   24
     1E40   00
     1E41   19
     1E42   15
     1E43   52
     1E44   03
     1E45   2C
     1E46   00
     1E47   19
     1E48   15
     1E49   20
     1E4A   03
     1E4B   3C
     1E4C   00
     1E4D   19
     1E4E   04
     1E4F   20
     1E50   03
     1E51   64
     1E52   00
     1E53   19
     1E54   15
     1E55   52
     1E56   03
     1E57   78
     1E58   00
     1E59   19
     1E5A   15
     1E5B   BB
     1E5C   03
     1E5D   80
     1E5E   00
     1E5F   12
     1E60   00
     1E61   02
     1E62   19
     1E63   04
     1E64   00
     1E65   05
     1E66   17
     1E67   00
     1E68   19
     1E69   05
     1E6A   C4
     1E6B   04
     1E6C   28
     1E6D   00
     1E6E   19
     1E6F   04
     1E70   E2
     1E71   04
     1E72   1C
     1E73   00
     1E74   19
     1E75   05
     1E76   DE
     1E77   03
     1E78   38
     1E79   00
     1E7A   19
     1E7B   04
     1E7C   80
     1E7D   02
     1E7E   82
     1E7F   00
     1E80   19
     1E81   05
     1E82   48
     1E83   03
     1E84   0E
     1E85   01
     1E86   19
     1E87   05
     1E88   AC
     1E89   03
     1E8A   45
     1E8B   01
     1E8C   19
     1E8D   05
     1E8E   1A
     1E8F   04
     1E90   4A
     1E91   01
     1E92   19
     1E93   05
     1E94   00
     1E95   05
     1E96   AE
     1E97   01
     1E98   19
     1E99   04
     1E9A   2C
     1E9B   01
     1E9C   C8
     1E9D   00
     1E9E   19
     1E9F   05
     1EA0   8A
     1EA1   02
     1EA2   40
     1EA3   01
     1EA4   19
     1EA5   05
     1EA6   3E
     1EA7   03
     1EA8   04
     1EA9   01
     1EAA   19
     1EAB   04
     1EAC   F4
     1EAD   01
     1EAE   64
     1EAF   00
     1EB0   19
     1EB1   05
     1EB2   FA
     1EB3   00
     1EB4   DC
     1EB5   00
     1EB6   19
     1EB7   05
     1EB8   8C
     1EB9   00
     1EBA   54
     1EBB   01
     1EBC   19
     1EBD   05
     1EBE   00
     1EBF   00
     1EC0   68
     1EC1   01
     1EC2   12
     1EC3   00
     1EC4   04
     1EC5   19
     1EC6   04
     1EC7   9E
     1EC8   02
     1EC9   96
     1ECA   00
     1ECB   19
     1ECC   15
     1ECD   F4
     1ECE   01
     1ECF   78
     1ED0   00
     1ED1   19
     1ED2   05
     1ED3   58
     1ED4   02
     1ED5   64
     1ED6   00
     1ED7   19
     1ED8   05
     1ED9   90
     1EDA   01
     1EDB   5A
     1EDC   00
     1EDD   00
     1EDE   7D
     1EDF   2D
     1EE0   20
     1EE1   13
     1EE2   28
     1EE3   A9
     1EE4   09
     1EE5   85
     1EE6   83
     1EE7   A9
     1EE8   F0
     1EE9   85
     1EEA   82
     1EEB   4C
     1EEC   13
     1EED   28
     1EEE   A9
     1EEF   00
     1EF0   8D
.backgnd_sprite_addr_table
     1EF1   58
     1EF2   A0 24
     1EF4   93 73
     1EF6   49 71
     1EF8   60 76
     1EFA   99 75
     1EFC   44 73
     1EFE   C9 78
     1F00   B4 76
     1F02   C0 24
     1F04   13 76
     1F06   93 78
     1F08   C9 73
     1F0A   49 76
     1F0C   E0 78
     1F0E   44 78
     1F10   C4 75
     1F12   E0 24
     1F14   13 7B
     1F16   4A 7B
     1F18   60 7B
     1F1A   C4 7A
     1F1C   00 25
     1F1E   B0 78
     1F20   20 78
     1F22   5C 78
     1F24   20 25
     1F26   00 78
     1F28   88 76
     1F2A   60 25
     1F2C   60 70
     1F2E   80 25
     1F30   E0 72
     1F32   60 75
     1F34   E0 77
     1F36   80 7A
     1F38   A0 7A
     1F3A   DC 7A
     1F3C   A0 25
     1F3E   60 7A
     1F40   30 7B
     1F42   C0 25
     1F44   08 79
     1F46   E0 25
     1F48   28 79
     1F4A   00
.end_PIG_02
.end_PIG-02 =  &1F4B 
.draw_stave
.stv
     1F4B   A0 00      LDY #&00
.stave_loop1
     1F4D   B9 6B 1F   LDA &1F6B,Y
     1F50   20 EE FF   JSR &FFEE
     1F53   C8         INY
     1F54   C0 09      CPY #&09
     1F56   D0 F5      BNE &1F4D
     1F58   A2 05      LDX #&05
.stave_loop2
     1F5A   A0 09      LDY #&09
.stave_loop3
     1F5C   B9 6B 1F   LDA &1F6B,Y
     1F5F   20 EE FF   JSR &FFEE
     1F62   C8         INY
     1F63   C0 15      CPY #&15
     1F65   D0 F5      BNE &1F5C
     1F67   CA         DEX
     1F68   D0 F0      BNE &1F5A
     1F6A   60         RTS
.stave_data
.sl
     1F6B   12
     1F6C   00
     1F6D   04
     1F6E   19
     1F6F   04
     1F70   00
     1F71   01
     1F72   EC
     1F73   03
     1F74   19
     1F75   01
     1F76   00
     1F77   03
     1F78   00
     1F79   00
     1F7A   19
     1F7B   00
     1F7C   00
     1F7D   FD
     1F7E   F0
     1F7F   FF
.end_GG_01
.end_GG-01 =  &1F80 
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
     26F2   4C 34 27   JMP &2734
.bu1
     26F5   C8         INY
     26F6   20 BE 27   JSR &27BE
     26F9   B1 8A      LDA (&8A),Y
     26FB   10 06      BPL &2703
.bu7
     26FD   A9 00      LDA #&00
     26FF   85 81      STA &81
     2701   F0 31      BEQ &2734
.bu2
     2703   AD 4E 2D   LDA &2D4E
     2706   30 2C      BMI &2734
     2708   38         SEC
     2709   A9 07      LDA #&07
     270B   25 80      AND &80
     270D   C9 05      CMP #&05
     270F   30 09      BMI &271A
     2711   A5 80      LDA &80
     2713   E9 05      SBC #&05
     2715   85 80      STA &80
     2717   4C 26 27   JMP &2726
.bu3
     271A   A5 80      LDA &80
     271C   E9 7D      SBC #&7D
     271E   85 80      STA &80
     2720   A5 81      LDA &81
     2722   E9 02      SBC #&02
     2724   85 81      STA &81
.bu4
     2726   38         SEC
     2727   A5 77      LDA &77
     2729   E9 05      SBC #&05
     272B   85 77      STA &77
     272D   C9 02      CMP #&02
     272F   F0 CC      BEQ &26FD
.bu5
     2731   20 BE 27   JSR &27BE
.nxbu
     2734   88         DEY
     2735   88         DEY
     2736   88         DEY
     2737   A5 77      LDA &77
     2739   91 8A      STA (&8A),Y
     273B   C8         INY
     273C   A5 80      LDA &80
     273E   91 8A      STA (&8A),Y
     2740   C8         INY
     2741   A5 81      LDA &81
     2743   91 8A      STA (&8A),Y
     2745   C8         INY
     2746   C4 70      CPY &70
     2748   90 90      BCC &26DA
     274A   60         RTS
.new_bullet
.nb
     274B   EA         NOP
     274C   A9 01      LDA #&01
     274E   24 71      BIT &71
     2750   D0 11      BNE &2763
     2752   A9 81      LDA #&81
     2754   A0 FF      LDY #&FF
     2756   A2 B6      LDX #&B6
     2758   20 F4 FF   JSR &FFF4
     275B   E8         INX
     275C   F0 07      BEQ &2765
     275E   A9 00      LDA #&00
     2760   8D 64 27   STA &2764
.nwb0
     2763   60         RTS
.fp0
     2764   00
.nwb1
     2765   AD 64 27   LDA &2764
     2768   F0 04      BEQ &276E
     276A   CE 64 27   DEC &2764
     276D   60         RTS
.fp1
.bullet_interval
     276E   A9 12      LDA #&12
     2770   8D 64 27   STA &2764
     2773   A0 FF      LDY #&FF
.nwb2
     2775   C8         INY
     2776   C8         INY
     2777   C8         INY
     2778   C8         INY
     2779   CC F0 2C   CPY &2CF0
     277C   B0 E5      BCS &2763
     277E   B1 8A      LDA (&8A),Y
     2780   D0 F3      BNE &2775
     2782   88         DEY
     2783   88         DEY
     2784   A9 9D      LDA #&9D
     2786   91 8A      STA (&8A),Y
     2788   C8         INY
     2789   38         SEC
     278A   A5 86      LDA &86
     278C   E9 6E      SBC #&6E
     278E   91 8A      STA (&8A),Y
     2790   85 80      STA &80
     2792   C8         INY
     2793   A5 87      LDA &87
     2795   E9 02      SBC #&02
     2797   91 8A      STA (&8A),Y
     2799   85 81      STA &81
     279B   C8         INY
     279C   AD A6 2D   LDA &2DA6
     279F   18         CLC
     27A0   69 03      ADC #&03
     27A2   91 8A      STA (&8A),Y
     27A4   20 BE 27   JSR &27BE
     27A7   A9 03      LDA #&03
     27A9   05 71      ORA &71
     27AB   85 71      STA &71
     27AD   A9 01      LDA #&01
     27AF   0D 4E 2D   ORA &2D4E
     27B2   8D 4E 2D   STA &2D4E
     27B5   A2 D0      LDX #&D0
     27B7   A0 2D      LDY #&2D
     27B9   A9 07      LDA #&07
     27BB   4C F1 FF   JMP &FFF1
.plot_fast_bullet_sprite
     27BE   98         TYA
     27BF   48         PHA
     27C0   A0 05      LDY #&05
     27C2   18         CLC
     27C3   A5 80      LDA &80
     27C5   69 78      ADC #&78
     27C7   85 84      STA &84
     27C9   A5 81      LDA &81
     27CB   69 02      ADC #&02
     27CD   85 85      STA &85
     27CF   A5 80      LDA &80
     27D1   29 07      AND #&07
     27D3   49 07      EOR #&07
     27D5   8D E4 27   STA &27E4
     27D8   C9 05      CMP #&05
     27DA   10 0B      BPL &27E7
.bot
     27DC   B1 84      LDA (&84),Y
     27DE   49 2A      EOR #&2A
     27E0   91 84      STA (&84),Y
     27E2   88         DEY
.comp_mod
     27E3   C0 FF      CPY #&FF
     27E5   D0 F5      BNE &27DC
.top
     27E7   B1 80      LDA (&80),Y
     27E9   49 2A      EOR #&2A
     27EB   91 80      STA (&80),Y
     27ED   88         DEY
     27EE   10 F7      BPL &27E7
     27F0   68         PLA
     27F1   A8         TAY
     27F2   60         RTS
.np
.new_plane
     27F3   EA         NOP
     27F4   A5 72      LDA &72
     27F6   C9 01      CMP #&01
     27F8   10 3A      BPL &2834
     27FA   CE 52 2D   DEC &2D52
     27FD   D0 35      BNE &2834
     27FF   AD 53 2D   LDA &2D53
     2802   8D 52 2D   STA &2D52
     2805   A5 70      LDA &70
     2807   20 8B 2B   JSR &2B8B
     280A   A8         TAY
     280B   38         SEC
.next_plane2
     280C   E9 05      SBC #&05
     280E   10 FC      BPL &280C
     2810   AA         TAX
.next_plane3
     2811   C8         INY
     2812   E8         INX
     2813   D0 FC      BNE &2811
     2815   88         DEY
     2816   B1 75      LDA (&75),Y
     2818   30 16      BMI &2830
     281A   A4 70      LDY &70
.se
     281C   88         DEY
     281D   B1 75      LDA (&75),Y
     281F   30 0F      BMI &2830
     2821   88         DEY
     2822   88         DEY
     2823   88         DEY
     2824   88         DEY
     2825   D0 F5      BNE &281C
     2827   A9 80      LDA #&80
     2829   0D 4E 2D   ORA &2D4E
     282C   8D 4E 2D   STA &2D4E
     282F   60         RTS
.fly
     2830   49 80      EOR #&80
     2832   91 75      STA (&75),Y
.no_plane
     2834   60         RTS
.pxp
     2835   A5 77      LDA &77
     2837   F0 55      BEQ &288E
     2839   A2 21      LDX #&21
     283B   86 89      STX &89
     283D   A5 88      LDA &88
     283F   48         PHA
     2840   A5 77      LDA &77
     2842   C9 15      CMP #&15
     2844   D0 0A      BNE &2850
     2846   A9 40      LDA #&40
     2848   85 88      STA &88
     284A   20 2D 2A   JSR &2A2D
     284D   4C 85 28   JMP &2885
.px1
     2850   C9 0C      CMP #&0C
     2852   D0 11      BNE &2865
     2854   A9 40      LDA #&40
     2856   85 88      STA &88
     2858   20 2D 2A   JSR &2A2D
     285B   A9 80      LDA #&80
     285D   85 88      STA &88
     285F   20 2D 2A   JSR &2A2D
     2862   4C 85 28   JMP &2885
.px2
     2865   C9 06      CMP #&06
     2867   D0 11      BNE &287A
     2869   A9 80      LDA #&80
     286B   85 88      STA &88
     286D   20 2D 2A   JSR &2A2D
     2870   A9 C0      LDA #&C0
     2872   85 88      STA &88
     2874   20 2D 2A   JSR &2A2D
     2877   4C 85 28   JMP &2885
.px3
     287A   C9 01      CMP #&01
     287C   D0 07      BNE &2885
     287E   A9 C0      LDA #&C0
     2880   85 88      STA &88
     2882   20 2D 2A   JSR &2A2D
.reset_sp_addr
     2885   A9 2F      LDA #&2F
     2887   85 89      STA &89
     2889   68         PLA
     288A   85 88      STA &88
     288C   C6 77      DEC &77
.nx
     288E   4C 00 2A   JMP &2A00
.check_plane_collision
     2891   98         TYA
     2892   48         PHA
     2893   A0 00      LDY #&00
     2895   B1 8A      LDA (&8A),Y
     2897   85 80      STA &80
.h
.check_next_plane
     2899   C8         INY
     289A   B1 8A      LDA (&8A),Y
     289C   38         SEC
     289D   E5 7B      SBC &7B
     289F   30 43      BMI &28E4
     28A1   C9 08      CMP #&08
     28A3   10 3F      BPL &28E4
     28A5   C8         INY
     28A6   C8         INY
     28A7   B1 8A      LDA (&8A),Y
     28A9   F0 3B      BEQ &28E6
     28AB   C8         INY
     28AC   B1 8A      LDA (&8A),Y
     28AE   38         SEC
     28AF   E5 7A      SBC &7A
     28B1   30 34      BMI &28E7
     28B3   C9 07      CMP #&07
     28B5   10 30      BPL &28E7
     28B7   C9 03      CMP #&03
     28B9   F0 0D      BEQ &28C8
     28BB   A9 40      LDA #&40
     28BD   0D 4E 2D   ORA &2D4E
     28C0   8D 4E 2D   STA &2D4E
     28C3   0A         ASL A
     28C4   91 8A      STA (&8A),Y
     28C6   D0 1F      BNE &28E7
.plane_hit
     28C8   A9 19      LDA #&19
     28CA   85 77      STA &77
     28CC   A9 D8      LDA #&D8
     28CE   91 8A      STA (&8A),Y
     28D0   AA         TAX
     28D1   A0 2D      LDY #&2D
     28D3   A9 07      LDA #&07
     28D5   20 F1 FF   JSR &FFF1
     28D8   A9 02      LDA #&02
     28DA   0D 4E 2D   ORA &2D4E
     28DD   8D 4E 2D   STA &2D4E
     28E0   68         PLA
     28E1   A8         TAY
     28E2   38         SEC
     28E3   60         RTS
.plane_not_hit
     28E4   C8         INY
     28E5   C8         INY
     28E6   C8         INY
     28E7   C4 80      CPY &80
     28E9   90 AE      BCC &2899
     28EB   68         PLA
     28EC   A8         TAY
     28ED   18         CLC
     28EE   60         RTS
.mp
.move_planes
     28EF   A0 00      LDY #&00
     28F1   B1 75      LDA (&75),Y
     28F3   85 70      STA &70
     28F5   84 72      STY &72
.nxpl
     28F7   C8         INY
     28F8   B1 75      LDA (&75),Y
     28FA   85 77      STA &77
     28FC   C8         INY
     28FD   B1 75      LDA (&75),Y
     28FF   85 78      STA &78
     2901   C8         INY
     2902   B1 75      LDA (&75),Y
     2904   85 79      STA &79
     2906   C8         INY
     2907   B1 75      LDA (&75),Y
     2909   85 7A      STA &7A
     290B   C8         INY
     290C   B1 75      LDA (&75),Y
     290E   85 7B      STA &7B
     2910   A5 77      LDA &77
     2912   29 C0      AND #&C0
     2914   D0 03      BNE &2919
     2916   4C 35 28   JMP &2835
.no_explosion
     2919   A5 7A      LDA &7A
     291B   10 03      BPL &2920
     291D   4C 1C 2A   JMP &2A1C
.plane_flying
     2920   C6 77      DEC &77
     2922   20 2D 2A   JSR &2A2D
     2925   20 91 28   JSR &2891
     2928   90 03      BCC &292D
     292A   4C 35 28   JMP &2835
.plane_not_hit
     292D   A5 73      LDA &73
     292F   29 BF      AND #&BF
     2931   85 73      STA &73
     2933   E6 72      INC &72
     2935   A5 7B      LDA &7B
     2937   C9 AF      CMP #&AF
     2939   D0 21      BNE &295C
     293B   38         SEC
     293C   A5 78      LDA &78
     293E   E9 87      SBC #&87
     2940   85 78      STA &78
     2942   A5 79      LDA &79
     2944   E9 48      SBC #&48
     2946   85 79      STA &79
     2948   A9 C0      LDA #&C0
     294A   85 7B      STA &7B
     294C   AD 55 25   LDA &2555
     294F   F0 0B      BEQ &295C
     2951   A5 7A      LDA &7A
     2953   49 80      EOR #&80
     2955   85 7A      STA &7A
     2957   E6 77      INC &77
     2959   4C 00 2A   JMP &2A00
.calc_move
     295C   A9 3F      LDA #&3F
     295E   25 77      AND &77
     2960   D0 40      BNE &29A2
     2962   38         SEC
     2963   A5 7A      LDA &7A
     2965   ED A6 2D   SBC &2DA6
     2968   85 77      STA &77
     296A   A9 00      LDA #&00
     296C   B0 02      BCS &2970
     296E   38         SEC
     296F   6A         ROR A
.pl3
     2970   6A         ROR A
     2971   85 80      STA &80
     2973   A5 77      LDA &77
     2975   D0 0D      BNE &2984
.pl20
     2977   A5 7D      LDA &7D
     2979   10 06      BPL &2981
     297B   A5 80      LDA &80
     297D   49 C0      EOR #&C0
     297F   85 80      STA &80
.pl21
     2981   AD 51 2D   LDA &2D51
.pl5
     2984   10 05      BPL &298B
     2986   49 FF      EOR #&FF
     2988   18         CLC
     2989   69 01      ADC #&01
.pl4
     298B   C9 02      CMP #&02
     298D   30 0F      BMI &299E
     298F   8D 94 2B   STA &2B94
     2992   20 8E 2B   JSR &2B8E
     2995   4E 94 2B   LSR &2B94
     2998   18         CLC
     2999   6D 94 2B   ADC &2B94
     299C   29 3F      AND #&3F
.pl6
     299E   05 80      ORA &80
     29A0   85 77      STA &77
.mid
     29A2   A5 77      LDA &77
     29A4   A6 7A      LDX &7A
     29A6   E0 01      CPX #&01
     29A8   10 07      BPL &29B1
     29AA   09 40      ORA #&40
     29AC   29 7F      AND #&7F
     29AE   4C B9 29   JMP &29B9
.plnl
     29B1   E0 48      CPX #&48
     29B3   30 06      BMI &29BB
     29B5   09 80      ORA #&80
     29B7   29 BF      AND #&BF
.down
     29B9   85 77      STA &77
     29BB   E6 7B      INC &7B
     29BD   A9 07      LDA #&07
     29BF   25 78      AND &78
     29C1   C9 07      CMP #&07
     29C3   F0 05      BEQ &29CA
     29C5   E6 78      INC &78
     29C7   4C D7 29   JMP &29D7
.pl2
     29CA   18         CLC
     29CB   A5 78      LDA &78
     29CD   69 79      ADC #&79
     29CF   85 78      STA &78
     29D1   A5 79      LDA &79
     29D3   69 02      ADC #&02
     29D5   85 79      STA &79
.left
     29D7   AD 2C 2A   LDA &2A2C
     29DA   F0 21      BEQ &29FD
     29DC   A5 77      LDA &77
     29DE   10 10      BPL &29F0
     29E0   C6 7A      DEC &7A
     29E2   38         SEC
     29E3   A5 78      LDA &78
     29E5   E9 08      SBC #&08
     29E7   85 78      STA &78
     29E9   B0 12      BCS &29FD
     29EB   C6 79      DEC &79
     29ED   4C FD 29   JMP &29FD
.right
     29F0   E6 7A      INC &7A
     29F2   18         CLC
     29F3   A5 78      LDA &78
     29F5   69 08      ADC #&08
     29F7   85 78      STA &78
     29F9   90 02      BCC &29FD
     29FB   E6 79      INC &79
.enlr
.fo
     29FD   20 2D 2A   JSR &2A2D
.save_plane
     2A00   88         DEY
     2A01   88         DEY
     2A02   88         DEY
     2A03   88         DEY
     2A04   A5 77      LDA &77
     2A06   91 75      STA (&75),Y
     2A08   C8         INY
     2A09   A5 78      LDA &78
     2A0B   91 75      STA (&75),Y
     2A0D   C8         INY
     2A0E   A5 79      LDA &79
     2A10   91 75      STA (&75),Y
     2A12   C8         INY
     2A13   A5 7A      LDA &7A
     2A15   91 75      STA (&75),Y
     2A17   C8         INY
     2A18   A5 7B      LDA &7B
     2A1A   91 75      STA (&75),Y
.pl1
     2A1C   C4 70      CPY &70
     2A1E   F0 03      BEQ &2A23
     2A20   4C F7 28   JMP &28F7
.hop7
     2A23   A9 01      LDA #&01
     2A25   4D 2C 2A   EOR &2A2C
     2A28   8D 2C 2A   STA &2A2C
     2A2B   60         RTS
.tog
     2A2C   00
.pp
.plot_plane
     2A2D   98         TYA
     2A2E   48         PHA
     2A2F   18         CLC
     2A30   A5 78      LDA &78
     2A32   69 78      ADC #&78
     2A34   85 84      STA &84
     2A36   29 07      AND #&07
     2A38   49 07      EOR #&07
     2A3A   8D 4B 2A   STA &2A4B
     2A3D   8D 59 2A   STA &2A59
     2A40   A5 79      LDA &79
     2A42   69 02      ADC #&02
     2A44   85 85      STA &85
.modify_plane_sprite_length
     2A46   A0 3F      LDY #&3F
.plot_loop
     2A48   A2 07      LDX #&07
.plot_pl_mod1
     2A4A   E0 FF      CPX #&FF
     2A4C   F0 0E      BEQ &2A5C
.bottom
     2A4E   B1 88      LDA (&88),Y
     2A50   F0 04      BEQ &2A56
     2A52   51 84      EOR (&84),Y
     2A54   91 84      STA (&84),Y
.bz
     2A56   88         DEY
     2A57   CA         DEX
.plot_pl_mod2
     2A58   E0 FF      CPX #&FF
     2A5A   D0 F2      BNE &2A4E
.top
     2A5C   B1 88      LDA (&88),Y
     2A5E   F0 04      BEQ &2A64
     2A60   51 78      EOR (&78),Y
     2A62   91 78      STA (&78),Y
.tz
     2A64   88         DEY
     2A65   CA         DEX
     2A66   10 F4      BPL &2A5C
     2A68   98         TYA
     2A69   10 DD      BPL &2A48
     2A6B   68         PLA
     2A6C   A8         TAY
     2A6D   60         RTS
.new_bomb
     2A6E   EA         NOP
     2A6F   A5 51      LDA &51
     2A71   C5 50      CMP &50
     2A73   90 6E      BCC &2AE3
     2A75   A9 C0      LDA #&C0
     2A77   24 73      BIT &73
     2A79   D0 68      BNE &2AE3
     2A7B   C6 73      DEC &73
     2A7D   D0 64      BNE &2AE3
     2A7F   A6 51      LDX &51
.find_slot_loop
     2A81   CA         DEX
     2A82   B5 52      LDA &52,X
     2A84   F0 05      BEQ &2A8B
     2A86   CA         DEX
     2A87   D0 F8      BNE &2A81
     2A89   F0 58      BEQ &2AE3
.find_plane
     2A8B   CA         DEX
     2A8C   A0 FF      LDY #&FF
.find_plane_loop
     2A8E   C8         INY
     2A8F   C8         INY
     2A90   C8         INY
     2A91   C8         INY
     2A92   C8         INY
     2A93   B1 75      LDA (&75),Y
     2A95   30 F7      BMI &2A8E
     2A97   88         DEY
     2A98   88         DEY
     2A99   88         DEY
     2A9A   B1 75      LDA (&75),Y
     2A9C   29 C0      AND #&C0
     2A9E   D0 06      BNE &2AA6
     2AA0   C8         INY
     2AA1   C8         INY
     2AA2   C8         INY
     2AA3   4C 8E 2A   JMP &2A8E
.found_plane
     2AA6   C8         INY
     2AA7   18         CLC
     2AA8   B1 75      LDA (&75),Y
     2AAA   69 9D      ADC #&9D
     2AAC   95 52      STA &52,X
     2AAE   C8         INY
     2AAF   B1 75      LDA (&75),Y
     2AB1   69 02      ADC #&02
     2AB3   95 53      STA &53,X
     2AB5   18         CLC
     2AB6   B5 52      LDA &52,X
     2AB8   69 78      ADC #&78
     2ABA   95 62      STA &62,X
     2ABC   B5 53      LDA &53,X
     2ABE   69 02      ADC #&02
     2AC0   95 63      STA &63,X
     2AC2   18         CLC
     2AC3   8A         TXA
     2AC4   69 52      ADC #&52
     2AC6   8D 03 2B   STA &2B03
     2AC9   8D 07 2B   STA &2B07
     2ACC   8A         TXA
     2ACD   69 62      ADC #&62
     2ACF   8D F8 2A   STA &2AF8
     2AD2   8D FC 2A   STA &2AFC
     2AD5   B5 52      LDA &52,X
     2AD7   20 EA 2A   JSR &2AEA
     2ADA   A0 00      LDY #&00
     2ADC   AD A7 2D   LDA &2DA7
     2ADF   85 73      STA &73
     2AE1   E6 50      INC &50
.no_bomb
     2AE3   A9 C0      LDA #&C0
     2AE5   05 73      ORA &73
     2AE7   85 73      STA &73
     2AE9   60         RTS
.plot_bomb
     2AEA   A0 05      LDY #&05
     2AEC   29 07      AND #&07
     2AEE   49 07      EOR #&07
     2AF0   8D FF 2A   STA &2AFF
     2AF3   C9 05      CMP #&05
     2AF5   10 0B      BPL &2B02
.plot_bomb_lower1
     2AF7   B1 62      LDA (&62),Y
     2AF9   49 2A      EOR #&2A
.plot_bomb_lower2
     2AFB   91 62      STA (&62),Y
     2AFD   88         DEY
.plot_bomb_mod
     2AFE   C0 FF      CPY #&FF
     2B00   D0 F5      BNE &2AF7
.plot_bomb_upper1
     2B02   B1 52      LDA (&52),Y
     2B04   49 2A      EOR #&2A
.plot_bomb_upper2
     2B06   91 52      STA (&52),Y
     2B08   88         DEY
     2B09   10 F7      BPL &2B02
     2B0B   60         RTS
.move_bombs
     2B0C   EA         NOP
     2B0D   A2 00      LDX #&00
.next_bomb_loop
     2B0F   18         CLC
     2B10   8A         TXA
     2B11   69 52      ADC #&52
     2B13   8D 03 2B   STA &2B03
     2B16   8D 07 2B   STA &2B07
     2B19   8A         TXA
     2B1A   69 62      ADC #&62
     2B1C   8D F8 2A   STA &2AF8
     2B1F   8D FC 2A   STA &2AFC
     2B22   B5 53      LDA &53,X
     2B24   D0 08      BNE &2B2E
     2B26   A9 7F      LDA #&7F
     2B28   25 73      AND &73
     2B2A   85 73      STA &73
     2B2C   D0 56      BNE &2B84
.unplot
     2B2E   B5 52      LDA &52,X
     2B30   20 EA 2A   JSR &2AEA
     2B33   AD 4E 2D   LDA &2D4E
     2B36   30 4C      BMI &2B84
.upper_addr
     2B38   B5 52      LDA &52,X
     2B3A   29 07      AND #&07
     2B3C   CD 9C 2B   CMP &2B9C
     2B3F   10 13      BPL &2B54
     2B41   18         CLC
     2B42   B5 52      LDA &52,X
     2B44   6D 9B 2B   ADC &2B9B
     2B47   95 52      STA &52,X
     2B49   18         CLC
     2B4A   B5 62      LDA &62,X
     2B4C   6D 9B 2B   ADC &2B9B
     2B4F   95 62      STA &62,X
     2B51   4C 71 2B   JMP &2B71
.upper_next_line
     2B54   18         CLC
     2B55   B5 52      LDA &52,X
     2B57   6D 9D 2B   ADC &2B9D
     2B5A   95 52      STA &52,X
     2B5C   B5 53      LDA &53,X
     2B5E   6D 9E 2B   ADC &2B9E
     2B61   95 53      STA &53,X
     2B63   B5 62      LDA &62,X
     2B65   6D 9D 2B   ADC &2B9D
     2B68   95 62      STA &62,X
     2B6A   B5 63      LDA &63,X
     2B6C   6D 9E 2B   ADC &2B9E
     2B6F   95 63      STA &63,X
.check_bottom
     2B71   B5 53      LDA &53,X
     2B73   C9 80      CMP #&80
     2B75   90 08      BCC &2B7F
     2B77   C6 50      DEC &50
     2B79   A9 00      LDA #&00
     2B7B   95 53      STA &53,X
     2B7D   F0 05      BEQ &2B84
.bomb_redraw
     2B7F   B5 52      LDA &52,X
     2B81   20 EA 2A   JSR &2AEA
.next_bomb
     2B84   E8         INX
     2B85   E8         INX
     2B86   E4 51      CPX &51
     2B88   90 85      BCC &2B0F
     2B8A   60         RTS
.ra2
     2B8B   8D 94 2B   STA &2B94
     2B8E   38         SEC
     2B8F   A5 7C      LDA &7C
     2B91   29 7F      AND #&7F
.ra3
     2B93   E9 10      SBC #&10
     2B95   10 FC      BPL &2B93
     2B97   6D 94 2B   ADC &2B94
     2B9A   60         RTS
.end_GG_02_code
.end_GG_02_code =  &2B9B 
.bomb_vert_rate
     2B9B   03
.bomb_vert_newline
     2B9C   05
.bomb_vert_LO
     2B9D   7B
.bomb_vert_HI
     2B9E   02
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
