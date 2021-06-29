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
     112D   20 FB 17   JSR &17FB
     1130   B9 42 11   LDA &1142,Y
     1133   20 EE FF   JSR &FFEE
     1136   C9 52      CMP #&52
     1138   D0 F0      BNE &112A
     113A   A9 96      LDA #&96
     113C   20 FB 17   JSR &17FB
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
     1159   20 FB 17   JSR &17FB
     115C   20 7F 13   JSR &137F
     115F   4C 68 11   JMP &1168
.bon0
     1162   20 1F 18   JSR &181F
     1165   20 06 19   JSR &1906
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
     1182   20 FB 17   JSR &17FB
     1185   98         TYA
     1186   48         PHA
     1187   A2 E8      LDX #&E8
     1189   A0 2D      LDY #&2D
     118B   A9 07      LDA #&07
     118D   20 F1 FF   JSR &FFF1
     1190   20 6F 17   JSR &176F
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
     13BC   20 F6 1E   JSR &1EF6
     13BF   C6 70      DEC &70
     13C1   D0 D5      BNE &1398
.stm5
     13C3   AD 5C 25   LDA &255C
     13C6   8D 08 22   STA &2208
     13C9   A9 00      LDA #&00
     13CB   8D 5C 25   STA &255C
     13CE   A9 26      LDA #&26
     13D0   8D 0C 22   STA &220C
     13D3   A9 88      LDA #&88
     13D5   8D 0B 22   STA &220B
.stm6
     13D8   18         CLC
     13D9   AD 0B 22   LDA &220B
     13DC   8D 59 25   STA &2559
     13DF   AD 0C 22   LDA &220C
     13E2   69 0A      ADC #&0A
     13E4   8D 0C 22   STA &220C
     13E7   8D 5A 25   STA &255A
     13EA   20 1F 18   JSR &181F
     13ED   8E 5B 1A   STX &1A5B
     13F0   EE 5C 25   INC &255C
.stm8
     13F3   20 3E 18   JSR &183E
     13F6   D0 FB      BNE &13F3
     13F8   20 1F 18   JSR &181F
     13FB   20 06 19   JSR &1906
     13FE   A9 3C      LDA #&3C
     1400   20 FB 17   JSR &17FB
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
     14C7   20 FB 17   JSR &17FB
.space
     14CA   A9 1A      LDA #&1A
     14CC   20 EE FF   JSR &FFEE
     14CF   A2 65      LDX #&65
     14D1   A0 13      LDY #&13
     14D3   20 F2 14   JSR &14F2
.ge4
     14D6   A2 9D      LDX #&9D
     14D8   20 35 19   JSR &1935
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
     151E   8D 80 19   STA &1980
     1521   AD 0D 02   LDA &020D
     1524   8D 81 19   STA &1981
.newgame
     1527   20 20 14   JSR &1420
     152A   20 9B 15   JSR &159B
.GO
     152D   20 91 1C   JSR &1C91
     1530   20 2D 26   JSR &262D
     1533   20 87 28   JSR &2887
     1536   20 E9 27   JSR &27E9
     1539   20 51 26   JSR &2651
     153C   20 C6 26   JSR &26C6
     153F   20 42 27   JSR &2742
     1542   20 B1 2A   JSR &2AB1
     1545   20 5D 2A   JSR &2A5D
     1548   20 E7 1A   JSR &1AE7
     154B   20 97 19   JSR &1997
     154E   20 FB 16   JSR &16FB
     1551   20 3E 19   JSR &193E
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
     1582   08
     1583   0C
     1584   0C
     1585   0C
     1586   0C
     1587   0C
     1588   0C
     1589   0C
.level_bomb_count
     158A   02
     158B   02
     158C   04
     158D   04
     158E   02
     158F   02
     1590   04
     1591   04
.level_inb
.level_bomb_interval
     1592   F0
     1593   EF
     1594   EF
     1595   EE
     1596   EE
     1597   ED
     1598   ED
     1599   EC
     159A   EC
.start_game
     159B   A9 05      LDA #&05
     159D   85 70      STA &70
     159F   20 18 26   JSR &2618
     15A2   A9 49      LDA #&49
     15A4   20 06 19   JSR &1906
     15A7   A9 16      LDA #&16
     15A9   20 EE FF   JSR &FFEE
     15AC   A9 02      LDA #&02
     15AE   20 EE FF   JSR &FFEE
     15B1   A9 00      LDA #&00
     15B3   8D D7 17   STA &17D7
     15B6   85 8E      STA &8E
     15B8   8D 5C 25   STA &255C
     15BB   8D 54 25   STA &2554
     15BE   8D 55 25   STA &2555
     15C1   8D 5F 2D   STA &2D5F
     15C4   8D 60 2D   STA &2D60
     15C7   85 88      STA &88
     15C9   18         CLC
     15CA   A9 03      LDA #&03
     15CC   8D 62 2D   STA &2D62
     15CF   A9 2A      LDA #&2A
     15D1   8D 63 2D   STA &2D63
     15D4   A9 02      LDA #&02
     15D6   85 71      STA &71
     15D8   A9 F0      LDA #&F0
     15DA   85 8A      STA &8A
     15DC   A9 2C      LDA #&2C
     15DE   85 8B      STA &8B
     15E0   A9 35      LDA #&35
     15E2   85 8C      STA &8C
     15E4   A9 2D      LDA #&2D
     15E6   85 8D      STA &8D
     15E8   A9 01      LDA #&01
     15EA   85 75      STA &75
     15EC   A9 2D      LDA #&2D
     15EE   85 76      STA &76
     15F0   A2 0F      LDX #&0F
     15F2   A0 07      LDY #&07
.co1
     15F4   20 00 26   JSR &2600
     15F7   CA         DEX
     15F8   E0 07      CPX #&07
     15FA   D0 F8      BNE &15F4
     15FC   86 7D      STX &7D
     15FE   A9 03      LDA #&03
     1600   8D 56 25   STA &2556
     1603   A9 2F      LDA #&2F
     1605   85 89      STA &89
.bf
     1607   20 1F 18   JSR &181F
     160A   8E 5B 1A   STX &1A5B
     160D   EE 5C 25   INC &255C
     1610   A0 5C      LDY #&5C
.b1
     1612   99 F0 2C   STA &2CF0,Y
     1615   88         DEY
     1616   D0 FA      BNE &1612
.b0
     1618   A9 0C      LDA #&0C
     161A   20 EE FF   JSR &FFEE
     161D   A9 9A      LDA #&9A
     161F   A2 14      LDX #&14
     1621   20 F4 FF   JSR &FFF4
     1624   20 F3 1C   JSR &1CF3
     1627   20 A2 1C   JSR &1CA2
     162A   20 F6 1E   JSR &1EF6
     162D   20 6F 17   JSR &176F
     1630   A9 00      LDA #&00
     1632   8D 5B 25   STA &255B
     1635   8D 5E 2D   STA &2D5E
     1638   8D 65 2D   STA &2D65
     163B   AC 5C 25   LDY &255C
     163E   88         DEY
     163F   B9 72 15   LDA &1572,Y
     1642   8D 61 2D   STA &2D61
     1645   B9 92 15   LDA &1592,Y
     1648   8D A7 2D   STA &2DA7
     164B   B9 8A 15   LDA &158A,Y
     164E   8D 09 22   STA &2209
     1651   8D 35 2D   STA &2D35
     1654   B9 7A 15   LDA &157A,Y
     1657   8D F0 2C   STA &2CF0
     165A   A9 0A      LDA #&0A
     165C   8D 01 2D   STA &2D01
     165F   A9 88      LDA #&88
     1661   8D 59 25   STA &2559
     1664   A9 30      LDA #&30
     1666   8D 5A 25   STA &255A
     1669   A9 80      LDA #&80
     166B   8D 57 25   STA &2557
     166E   A9 32      LDA #&32
     1670   8D 58 25   STA &2558
     1673   AE 56 25   LDX &2556
.pmi
     1676   20 82 19   JSR &1982
     1679   18         CLC
     167A   AD 57 25   LDA &2557
     167D   69 18      ADC #&18
     167F   8D 57 25   STA &2557
     1682   CA         DEX
     1683   D0 F1      BNE &1676
     1685   A9 3A      LDA #&3A
     1687   85 81      STA &81
     1689   A9 81      LDA #&81
     168B   85 82      STA &82
     168D   A2 01      LDX #&01
     168F   A0 08      LDY #&08
.pp1
     1691   A9 81      LDA #&81
     1693   9D 01 2D   STA &2D01,X
     1696   E8         INX
     1697   98         TYA
     1698   18         CLC
     1699   69 50      ADC #&50
     169B   9D 01 2D   STA &2D01,X
     169E   A8         TAY
     169F   E8         INX
     16A0   A5 81      LDA &81
     16A2   69 00      ADC #&00
     16A4   9D 01 2D   STA &2D01,X
     16A7   85 81      STA &81
     16A9   18         CLC
     16AA   E8         INX
     16AB   A5 82      LDA &82
     16AD   69 0A      ADC #&0A
     16AF   85 82      STA &82
     16B1   9D 01 2D   STA &2D01,X
     16B4   E8         INX
     16B5   A9 D0      LDA #&D0
     16B7   9D 01 2D   STA &2D01,X
     16BA   E8         INX
     16BB   E0 10      CPX #&10
     16BD   30 D2      BMI &1691
     16BF   A0 00      LDY #&00
     16C1   B1 75      LDA (&75),Y
     16C3   85 70      STA &70
.slop
     16C5   C8         INY
     16C6   C8         INY
     16C7   B1 75      LDA (&75),Y
     16C9   85 78      STA &78
     16CB   C8         INY
     16CC   B1 75      LDA (&75),Y
     16CE   85 79      STA &79
     16D0   20 20 2A   JSR &2A20
     16D3   C8         INY
     16D4   C8         INY
     16D5   C4 70      CPY &70
     16D7   30 EC      BMI &16C5
     16D9   20 41 1A   JSR &1A41
.sgun
.player_gun_initialise
     16DC   A9 20      LDA #&20
     16DE   8D A6 2D   STA &2DA6
     16E1   A9 7E      LDA #&7E
     16E3   85 87      STA &87
     16E5   A9 90      LDA #&90
     16E7   85 86      STA &86
     16E9   A9 20      LDA #&20
     16EB   8D BB 26   STA &26BB
     16EE   A9 58      LDA #&58
     16F0   8D BA 26   STA &26BA
     16F3   20 B7 26   JSR &26B7
     16F6   A9 40      LDA #&40
     16F8   4C 06 19   JMP &1906
.sor
     16FB   AD 5E 2D   LDA &2D5E
     16FE   F0 6F      BEQ &176F
     1700   F8         SED
     1701   29 02      AND #&02
     1703   F0 14      BEQ &1719
     1705   18         CLC
     1706   A9 15      LDA #&15
     1708   6D 5F 2D   ADC &2D5F
     170B   8D 5F 2D   STA &2D5F
     170E   AD 60 2D   LDA &2D60
     1711   69 00      ADC #&00
     1713   8D 60 2D   STA &2D60
     1716   20 66 1C   JSR &1C66
.s1
     1719   A9 40      LDA #&40
     171B   2C 5E 2D   BIT &2D5E
     171E   F0 1C      BEQ &173C
     1720   18         CLC
     1721   A9 01      LDA #&01
.wng
     1723   6D 5F 2D   ADC &2D5F
     1726   8D 5F 2D   STA &2D5F
     1729   AD 60 2D   LDA &2D60
     172C   69 00      ADC #&00
     172E   8D 60 2D   STA &2D60
     1731   D8         CLD
     1732   A2 C8      LDX #&C8
     1734   A0 2D      LDY #&2D
     1736   A9 07      LDA #&07
     1738   20 F1 FF   JSR &FFF1
     173B   F8         SED
.s4
     173C   A9 10      LDA #&10
     173E   2C 5E 2D   BIT &2D5E
     1741   F0 1A      BEQ &175D
     1743   18         CLC
     1744   A9 0A      LDA #&0A
.pig
     1746   6D 5F 2D   ADC &2D5F
     1749   8D 5F 2D   STA &2D5F
     174C   AD 60 2D   LDA &2D60
     174F   69 00      ADC #&00
     1751   8D 60 2D   STA &2D60
     1754   D8         CLD
     1755   20 3E 18   JSR &183E
     1758   D0 03      BNE &175D
     175A   20 50 11   JSR &1150
.s2
     175D   D8         CLD
     175E   20 A8 17   JSR &17A8
     1761   AD 5E 2D   LDA &2D5E
     1764   10 03      BPL &1769
     1766   4C 0B 18   JMP &180B
.s3
     1769   A9 00      LDA #&00
     176B   8D 5E 2D   STA &2D5E
     176E   60         RTS
.s7
.score_update_screen
     176F   A9 34      LDA #&34
     1771   85 81      STA &81
     1773   A9 B0      LDA #&B0
     1775   85 80      STA &80
     1777   A9 24      LDA #&24
     1779   85 83      STA &83
     177B   A9 F0      LDA #&F0
     177D   2D 60 2D   AND &2D60
     1780   20 3D 26   JSR &263D
     1783   A9 0F      LDA #&0F
     1785   2D 60 2D   AND &2D60
     1788   0A         ASL A
     1789   0A         ASL A
     178A   0A         ASL A
     178B   0A         ASL A
     178C   20 3D 26   JSR &263D
     178F   A9 F0      LDA #&F0
     1791   2D 5F 2D   AND &2D5F
     1794   20 3D 26   JSR &263D
     1797   A9 0F      LDA #&0F
     1799   2D 5F 2D   AND &2D5F
     179C   0A         ASL A
     179D   0A         ASL A
     179E   0A         ASL A
     179F   0A         ASL A
     17A0   20 3D 26   JSR &263D
     17A3   A9 00      LDA #&00
     17A5   4C 3D 26   JMP &263D
.extra_player_check
.exg
     17A8   A9 01      LDA #&01
     17AA   2C D7 17   BIT &17D7
     17AD   D0 10      BNE &17BF
     17AF   AC 60 2D   LDY &2D60
     17B2   C0 05      CPY #&05
     17B4   30 20      BMI &17D6
     17B6   0D D7 17   ORA &17D7
     17B9   8D D7 17   STA &17D7
     17BC   20 D8 17   JSR &17D8
.exg1
     17BF   A9 02      LDA #&02
     17C1   2C D7 17   BIT &17D7
     17C4   D0 10      BNE &17D6
     17C6   AC 60 2D   LDY &2D60
     17C9   C0 10      CPY #&10
     17CB   30 09      BMI &17D6
     17CD   0D D7 17   ORA &17D7
     17D0   8D D7 17   STA &17D7
     17D3   4C D8 17   JMP &17D8
.exg2
     17D6   60         RTS
.exg3
     17D7   00
.exg4
     17D8   20 82 19   JSR &1982
     17DB   A9 DC      LDA #&DC
     17DD   8D FC 2D   STA &2DFC
     17E0   A2 F8      LDX #&F8
     17E2   A0 2D      LDY #&2D
     17E4   A9 07      LDA #&07
     17E6   20 F1 FF   JSR &FFF1
     17E9   EE 56 25   INC &2556
     17EC   18         CLC
     17ED   AD 57 25   LDA &2557
     17F0   69 18      ADC #&18
     17F2   8D 57 25   STA &2557
     17F5   90 03      BCC &17FA
     17F7   EE 58 25   INC &2558
.exg5
     17FA   60         RTS
.delay
     17FB   8D 0A 22   STA &220A
     17FE   98         TYA
     17FF   48         PHA
.del1
     1800   20 2D 26   JSR &262D
     1803   CE 0A 22   DEC &220A
     1806   D0 F8      BNE &1800
     1808   68         PLA
     1809   A8         TAY
     180A   60         RTS
.next_level
.ef
     180B   A9 00      LDA #&00
     180D   8D 5E 2D   STA &2D5E
     1810   18         CLC
     1811   A5 88      LDA &88
     1813   69 40      ADC #&40
     1815   85 88      STA &88
     1817   A9 64      LDA #&64
     1819   20 FB 17   JSR &17FB
     181C   4C 07 16   JMP &1607
.cht
     181F   A9 03      LDA #&03
     1821   2D 5C 25   AND &255C
     1824   AA         TAX
     1825   D0 03      BNE &182A
     1827   A9 33      LDA #&33
     1829   60         RTS
.ct1
     182A   CA         DEX
     182B   D0 04      BNE &1831
     182D   8A         TXA
     182E   A2 0D      LDX #&0D
     1830   60         RTS
.ct2
     1831   CA         DEX
     1832   D0 05      BNE &1839
     1834   A9 11      LDA #&11
     1836   A2 1A      LDX #&1A
     1838   60         RTS
.ct3
     1839   A9 22      LDA #&22
     183B   A2 26      LDX #&26
     183D   60         RTS
.nxno
     183E   EE 5B 1A   INC &1A5B
     1841   AC 5B 1A   LDY &1A5B
     1844   B9 5B 1A   LDA &1A5B,Y
     1847   85 70      STA &70
     1849   29 0E      AND #&0E
     184B   C9 08      CMP #&08
     184D   10 0A      BPL &1859
     184F   18         CLC
     1850   6D 59 25   ADC &2559
     1853   85 80      STA &80
     1855   A9 00      LDA #&00
     1857   F0 0A      BEQ &1863
.n1
     1859   18         CLC
     185A   6D 59 25   ADC &2559
     185D   69 78      ADC #&78
     185F   85 80      STA &80
     1861   A9 02      LDA #&02
.n2
     1863   6D 5A 25   ADC &255A
     1866   85 81      STA &81
     1868   A9 20      LDA #&20
     186A   85 83      STA &83
     186C   20 9E 18   JSR &189E
     186F   18         CLC
     1870   AD 59 25   LDA &2559
     1873   69 20      ADC #&20
     1875   8D 59 25   STA &2559
     1878   90 03      BCC &187D
     187A   EE 5A 25   INC &255A
.n3
     187D   20 D2 18   JSR &18D2
     1880   18         CLC
     1881   A5 80      LDA &80
     1883   69 08      ADC #&08
     1885   85 80      STA &80
     1887   90 02      BCC &188B
     1889   E6 81      INC &81
.n4
     188B   18         CLC
     188C   A5 82      LDA &82
     188E   69 08      ADC #&08
     1890   85 82      STA &82
     1892   90 02      BCC &1896
     1894   E6 83      INC &83
.n5
     1896   20 D2 18   JSR &18D2
     1899   C8         INY
     189A   B9 5B 1A   LDA &1A5B,Y
     189D   60         RTS
.chnot
     189E   A9 80      LDA #&80
     18A0   24 70      BIT &70
     18A2   F0 05      BEQ &18A9
     18A4   A9 00      LDA #&00
     18A6   85 82      STA &82
     18A8   60         RTS
.c1
     18A9   4A         LSR A
     18AA   24 70      BIT &70
     18AC   F0 05      BEQ &18B3
     18AE   A9 10      LDA #&10
     18B0   85 82      STA &82
     18B2   60         RTS
.c2
     18B3   4A         LSR A
     18B4   24 70      BIT &70
     18B6   F0 05      BEQ &18BD
     18B8   A9 20      LDA #&20
     18BA   85 82      STA &82
     18BC   60         RTS
.c3
     18BD   4A         LSR A
     18BE   24 70      BIT &70
     18C0   F0 05      BEQ &18C7
     18C2   A9 30      LDA #&30
     18C4   85 82      STA &82
     18C6   60         RTS
.c4
     18C7   A9 01      LDA #&01
     18C9   24 70      BIT &70
     18CB   F0 04      BEQ &18D1
     18CD   A9 40      LDA #&40
     18CF   85 82      STA &82
.c5
     18D1   60         RTS
.pno
     18D2   98         TYA
     18D3   48         PHA
     18D4   A0 07      LDY #&07
     18D6   18         CLC
     18D7   A5 80      LDA &80
     18D9   69 78      ADC #&78
     18DB   85 84      STA &84
     18DD   A5 81      LDA &81
     18DF   69 02      ADC #&02
     18E1   85 85      STA &85
     18E3   A5 80      LDA &80
     18E5   29 07      AND #&07
     18E7   49 07      EOR #&07
     18E9   85 74      STA &74
     18EB   C9 07      CMP #&07
     18ED   10 0B      BPL &18FA
.pnbot
     18EF   B1 82      LDA (&82),Y
     18F1   11 84      ORA (&84),Y
     18F3   91 84      STA (&84),Y
     18F5   88         DEY
     18F6   C4 74      CPY &74
     18F8   D0 F5      BNE &18EF
.pntop
     18FA   B1 82      LDA (&82),Y
     18FC   11 80      ORA (&80),Y
     18FE   91 80      STA (&80),Y
     1900   88         DEY
     1901   10 F7      BPL &18FA
     1903   68         PLA
     1904   A8         TAY
     1905   60         RTS
.playTune
.tune
     1906   85 70      STA &70
.t1
     1908   A4 70      LDY &70
     190A   B9 8B 1A   LDA &1A8B,Y
     190D   F0 1A      BEQ &1929
     190F   8D FC 2D   STA &2DFC
     1912   C8         INY
     1913   B9 8B 1A   LDA &1A8B,Y
     1916   8D FE 2D   STA &2DFE
     1919   A2 F8      LDX #&F8
     191B   A0 2D      LDY #&2D
     191D   A9 07      LDA #&07
     191F   20 F1 FF   JSR &FFF1
     1922   E6 70      INC &70
     1924   E6 70      INC &70
     1926   4C 08 19   JMP &1908
.t3
     1929   A9 80      LDA #&80
     192B   A2 FA      LDX #&FA
     192D   20 F4 FF   JSR &FFF4
     1930   E0 0F      CPX #&0F
     1932   30 F5      BMI &1929
     1934   60         RTS
.keyboardScan
.key
     1935   A9 81      LDA #&81
     1937   A0 FF      LDY #&FF
     1939   20 F4 FF   JSR &FFF4
     193C   E8         INX
     193D   60         RTS
.check_key_press
.opt
.checkQkey
     193E   A2 EF      LDX #&EF
     1940   20 35 19   JSR &1935
     1943   D0 0A      BNE &194F
     1945   A9 79      LDA #&79
     1947   8D 0C 02   STA &020C
     194A   A9 19      LDA #&19
     194C   8D 0D 02   STA &020D
.op1
.checkSkey
     194F   A2 AE      LDX #&AE
     1951   20 35 19   JSR &1935
     1954   D0 0C      BNE &1962
     1956   AD 80 19   LDA &1980
     1959   8D 0C 02   STA &020C
     195C   AD 81 19   LDA &1981
     195F   8D 0D 02   STA &020D
.op2
.checkRkey
     1962   A2 CC      LDX #&CC
     1964   20 35 19   JSR &1935
     1967   D0 0F      BNE &1978
.op3
     1969   A9 81      LDA #&81
     196B   A0 01      LDY #&01
     196D   A2 00      LDX #&00
     196F   20 F4 FF   JSR &FFF4
     1972   B0 F5      BCS &1969
     1974   E0 52      CPX #&52
     1976   F0 F1      BEQ &1969
.op5
.checkKeyComplete
     1978   60         RTS
.mute
     1979   C9 07      CMP #&07
     197B   F0 FB      BEQ &1978
.mu1
     197D   6C 80 19   JMP (&1980)
.soun
     1980   EB E7
.end_SS_03
.end_SS_03 =  &1982 
.mini
.plot_gun_life_indicator
     1982   A9 10      LDA #&10
     1984   85 82      STA &82
     1986   A9 21      LDA #&21
     1988   85 83      STA &83
     198A   AD 57 25   LDA &2557
     198D   85 80      STA &80
     198F   AD 58 25   LDA &2558
     1992   85 81      STA &81
     1994   4C 5A 1C   JMP &1C5A
.gun_hit_display
.h0
     1997   A9 20      LDA #&20
     1999   2C 5E 2D   BIT &2D5E
     199C   D0 06      BNE &19A4
     199E   AD 55 25   LDA &2555
     19A1   D0 34      BNE &19D7
.hreturn
     19A3   60         RTS
.h1
     19A4   A2 00      LDX #&00
     19A6   A0 07      LDY #&07
     19A8   20 00 26   JSR &2600
     19AB   A9 07      LDA #&07
     19AD   A0 2D      LDY #&2D
     19AF   A2 E0      LDX #&E0
     19B1   20 F1 FF   JSR &FFF1
     19B4   A9 FF      LDA #&FF
     19B6   8D 55 25   STA &2555
     19B9   A9 60      LDA #&60
     19BB   8D 5D 2A   STA &2A5D
     19BE   8D E9 27   STA &27E9
     19C1   8D 51 26   STA &2651
     19C4   8D 42 27   STA &2742
     19C7   20 B7 26   JSR &26B7
     19CA   A9 22      LDA #&22
     19CC   8D BB 26   STA &26BB
     19CF   A9 10      LDA #&10
     19D1   8D BA 26   STA &26BA
     19D4   4C B7 26   JMP &26B7
.h12
     19D7   CE 55 25   DEC &2555
     19DA   AD 55 25   LDA &2555
     19DD   C9 FE      CMP #&FE
     19DF   D0 07      BNE &19E8
     19E1   A2 00      LDX #&00
     19E3   A0 00      LDY #&00
     19E5   4C 00 26   JMP &2600
.h3
     19E8   C9 DC      CMP #&DC
     19EA   D0 0B      BNE &19F7
     19EC   20 B7 26   JSR &26B7
     19EF   A9 38      LDA #&38
     19F1   8D BA 26   STA &26BA
     19F4   4C B7 26   JMP &26B7
.h4
     19F7   C9 8C      CMP #&8C
     19F9   D0 0B      BNE &1A06
     19FB   20 B7 26   JSR &26B7
     19FE   A9 60      LDA #&60
     1A00   8D BA 26   STA &26BA
     1A03   4C B7 26   JMP &26B7
.h5
     1A06   C9 01      CMP #&01
     1A08   D0 99      BNE &19A3
     1A0A   CE 56 25   DEC &2556
     1A0D   D0 03      BNE &1A12
     1A0F   4C 26 11   JMP &1126
.h5a
     1A12   20 B7 26   JSR &26B7
     1A15   20 DC 16   JSR &16DC
     1A18   AC 01 2D   LDY &2D01
.h6
     1A1B   B1 75      LDA (&75),Y
     1A1D   C9 C0      CMP #&C0
     1A1F   D0 19      BNE &1A3A
     1A21   88         DEY
     1A22   B1 75      LDA (&75),Y
     1A24   10 15      BPL &1A3B
     1A26   49 80      EOR #&80
     1A28   91 75      STA (&75),Y
     1A2A   88         DEY
     1A2B   B1 75      LDA (&75),Y
     1A2D   85 79      STA &79
     1A2F   88         DEY
     1A30   B1 75      LDA (&75),Y
     1A32   85 78      STA &78
     1A34   20 20 2A   JSR &2A20
     1A37   4C 3D 1A   JMP &1A3D
.h8
     1A3A   88         DEY
.h9
     1A3B   88         DEY
     1A3C   88         DEY
.h10
     1A3D   88         DEY
     1A3E   88         DEY
     1A3F   D0 DA      BNE &1A1B
.h7
     1A41   A9 EA      LDA #&EA
     1A43   8D 5D 2A   STA &2A5D
     1A46   8D 42 27   STA &2742
     1A49   8D E9 27   STA &27E9
     1A4C   8D 51 26   STA &2651
     1A4F   38         SEC
     1A50   AD 57 25   LDA &2557
     1A53   E9 18      SBC #&18
     1A55   8D 57 25   STA &2557
     1A58   4C 82 19   JMP &1982
.end_PIG_01
.end_PIG-01 =  &1A5B 
.nl
     1A5B   0D
     1A5C   4A
     1A5D   18
     1A5E   8C
     1A5F   8E
     1A60   1C
     1A61   8A
     1A62   84
     1A63   14
     1A64   82
     1A65   20
     1A66   44
     1A67   05
     1A68   00
     1A69   48
     1A6A   18
     1A6B   86
     1A6C   84
     1A6D   14
     1A6E   86
     1A6F   84
     1A70   14
     1A71   88
     1A72   2A
     1A73   4E
     1A74   05
     1A75   00
     1A76   4A
     1A77   18
     1A78   8C
     1A79   8E
     1A7A   1C
     1A7B   8A
     1A7C   84
     1A7D   14
     1A7E   82
     1A7F   20
     1A80   44
     1A81   00
     1A82   44
     1A83   42
     1A84   42
     1A85   44
     1A86   46
     1A87   24
     1A88   14
     1A89   05
     1A8A   00
.tl
     1A8B   65
     1A8C   17
     1A8D   5D
     1A8E   05
     1A8F   59
     1A90   0A
     1A91   65
     1A92   05
     1A93   79
     1A94   0A
     1A95   81
     1A96   05
     1A97   89
     1A98   1E
     1A99   79
     1A9A   1E
     1A9B   00
     1A9C   6D
     1A9D   17
     1A9E   75
     1A9F   05
     1AA0   79
     1AA1   0A
     1AA2   75
     1AA3   05
     1AA4   79
     1AA5   0A
     1AA6   6D
     1AA7   05
     1AA8   65
     1AA9   1E
     1AAA   59
     1AAB   1E
     1AAC   00
     1AAD   65
     1AAE   17
     1AAF   5D
     1AB0   05
     1AB1   59
     1AB2   0A
     1AB3   65
     1AB4   05
     1AB5   79
     1AB6   0A
     1AB7   81
     1AB8   05
     1AB9   89
     1ABA   1E
     1ABB   79
     1ABC   0F
     1ABD   00
     1ABE   79
     1ABF   0F
     1AC0   81
     1AC1   0F
     1AC2   81
     1AC3   0F
     1AC4   79
     1AC5   0F
     1AC6   75
     1AC7   0F
     1AC8   79
     1AC9   1E
     1ACA   00
     1ACB   59
     1ACC   05
     1ACD   59
     1ACE   05
     1ACF   59
     1AD0   05
     1AD1   49
     1AD2   0F
     1AD3   00
     1AD4   41
     1AD5   05
     1AD6   35
     1AD7   0A
     1AD8   39
     1AD9   05
     1ADA   3D
     1ADB   05
     1ADC   41
     1ADD   05
     1ADE   65
     1ADF   0A
     1AE0   65
     1AE1   0A
     1AE2   55
     1AE3   14
     1AE4   00
     1AE5   14
     1AE6   00
.pg
     1AE7   A9 23      LDA #&23
     1AE9   85 83      STA &83
     1AEB   AD 65 2D   LDA &2D65
     1AEE   D0 77      BNE &1B67
     1AF0   A9 42      LDA #&42
     1AF2   2C 5E 2D   BIT &2D5E
     1AF5   F0 6F      BEQ &1B66
     1AF7   A9 02      LDA #&02
     1AF9   2C 54 25   BIT &2554
     1AFC   F0 1F      BEQ &1B1D
.pig_init_right
     1AFE   A9 23      LDA #&23
     1B00   85 83      STA &83
     1B02   8D E8 1A   STA &1AE8
     1B05   A9 68      LDA #&68
     1B07   8D 64 2D   STA &2D64
     1B0A   85 80      STA &80
     1B0C   A9 00      LDA #&00
     1B0E   8D 08 1C   STA &1C08
     1B11   A9 4C      LDA #&4C
     1B13   8D 67 2D   STA &2D67
     1B16   A9 4B      LDA #&4B
     1B18   8D 45 1B   STA &1B45
     1B1B   D0 1B      BNE &1B38
.pgl
.pig_init_left
     1B1D   A9 22      LDA #&22
     1B1F   85 83      STA &83
     1B21   8D E8 1A   STA &1AE8
     1B24   A9 00      LDA #&00
     1B26   8D 64 2D   STA &2D64
     1B29   85 80      STA &80
     1B2B   8D 67 2D   STA &2D67
     1B2E   A9 4C      LDA #&4C
     1B30   8D 08 1C   STA &1C08
     1B33   A9 49      LDA #&49
     1B35   8D 45 1B   STA &1B45
.b3
     1B38   A9 00      LDA #&00
     1B3A   85 7C      STA &7C
     1B3C   EE 54 25   INC &2554
     1B3F   A9 07      LDA #&07
     1B41   25 7D      AND &7D
     1B43   AA         TAX
     1B44   A9 4B      LDA #&4B
     1B46   18         CLC
.b5
     1B47   69 05      ADC #&05
     1B49   A8         TAY
     1B4A   A5 7C      LDA &7C
     1B4C   69 10      ADC #&10
     1B4E   85 7C      STA &7C
     1B50   98         TYA
     1B51   CA         DEX
     1B52   10 F3      BPL &1B47
     1B54   8D 65 2D   STA &2D65
     1B57   85 81      STA &81
     1B59   A2 02      LDX #&02
     1B5B   8E 66 2D   STX &2D66
     1B5E   BD 56 2D   LDA &2D56,X
     1B61   85 82      STA &82
     1B63   4C 5A 1C   JMP &1C5A
.ep
     1B66   60         RTS
.pgb0
     1B67   AD 64 2D   LDA &2D64
     1B6A   85 80      STA &80
     1B6C   AD 65 2D   LDA &2D65
     1B6F   85 81      STA &81
     1B71   10 18      BPL &1B8B
     1B73   CE 66 2D   DEC &2D66
     1B76   D0 EE      BNE &1B66
     1B78   49 80      EOR #&80
     1B7A   85 81      STA &81
     1B7C   A9 10      LDA #&10
     1B7E   0D 5E 2D   ORA &2D5E
     1B81   8D 5E 2D   STA &2D5E
     1B84   A9 00      LDA #&00
     1B86   8D 65 2D   STA &2D65
     1B89   F0 4C      BEQ &1BD7
.pgb1
     1B8B   AD 66 2D   LDA &2D66
     1B8E   29 7F      AND #&7F
     1B90   AA         TAX
     1B91   BD 56 2D   LDA &2D56,X
     1B94   85 82      STA &82
     1B96   A0 00      LDY #&00
     1B98   B1 8A      LDA (&8A),Y
     1B9A   85 70      STA &70
.pgh
     1B9C   C8         INY
     1B9D   B1 8A      LDA (&8A),Y
     1B9F   38         SEC
     1BA0   E5 7C      SBC &7C
     1BA2   30 4C      BMI &1BF0
     1BA4   C9 07      CMP #&07
     1BA6   10 48      BPL &1BF0
     1BA8   C8         INY
     1BA9   C8         INY
     1BAA   B1 8A      LDA (&8A),Y
     1BAC   F0 44      BEQ &1BF2
     1BAE   C8         INY
     1BAF   B1 8A      LDA (&8A),Y
     1BB1   38         SEC
     1BB2   ED 67 2D   SBC &2D67
     1BB5   30 3C      BMI &1BF3
     1BB7   C9 03      CMP #&03
     1BB9   10 38      BPL &1BF3
     1BBB   A9 E8      LDA #&E8
     1BBD   91 8A      STA (&8A),Y
     1BBF   AA         TAX
     1BC0   A9 07      LDA #&07
     1BC2   A0 2D      LDY #&2D
     1BC4   20 F1 FF   JSR &FFF1
     1BC7   A9 10      LDA #&10
     1BC9   8D 66 2D   STA &2D66
     1BCC   A9 80      LDA #&80
     1BCE   0D 65 2D   ORA &2D65
     1BD1   8D 65 2D   STA &2D65
     1BD4   20 5A 1C   JSR &1C5A
.bx
     1BD7   A9 23      LDA #&23
     1BD9   85 83      STA &83
     1BDB   A9 70      LDA #&70
     1BDD   85 82      STA &82
     1BDF   4C 5A 1C   JMP &1C5A
.b9
     1BE2   A9 04      LDA #&04
     1BE4   0D 5E 2D   ORA &2D5E
     1BE7   8D 5E 2D   STA &2D5E
     1BEA   A9 00      LDA #&00
     1BEC   8D 65 2D   STA &2D65
.x
     1BEF   60         RTS
.pgnh
     1BF0   C8         INY
     1BF1   C8         INY
     1BF2   C8         INY
     1BF3   C4 70      CPY &70
     1BF5   30 A5      BMI &1B9C
     1BF7   A9 80      LDA #&80
     1BF9   4D 66 2D   EOR &2D66
     1BFC   8D 66 2D   STA &2D66
     1BFF   30 EE      BMI &1BEF
     1C01   20 5A 1C   JSR &1C5A
     1C04   AD 67 2D   LDA &2D67
.xps
     1C07   C9 00      CMP #&00
     1C09   F0 D7      BEQ &1BE2
     1C0B   29 1F      AND #&1F
     1C0D   D0 09      BNE &1C18
     1C0F   A9 07      LDA #&07
     1C11   A0 2D      LDY #&2D
     1C13   A2 F0      LDX #&F0
     1C15   20 F1 FF   JSR &FFF1
.b6
     1C18   AE 66 2D   LDX &2D66
     1C1B   CA         DEX
     1C1C   10 02      BPL &1C20
     1C1E   A2 07      LDX #&07
.b7
     1C20   8E 66 2D   STX &2D66
     1C23   BD 56 2D   LDA &2D56,X
     1C26   85 82      STA &82
     1C28   AD 08 1C   LDA &1C08
     1C2B   F0 18      BEQ &1C45
     1C2D   EE 67 2D   INC &2D67
     1C30   18         CLC
     1C31   AD 64 2D   LDA &2D64
     1C34   69 08      ADC #&08
     1C36   8D 64 2D   STA &2D64
     1C39   85 80      STA &80
     1C3B   90 1D      BCC &1C5A
     1C3D   EE 65 2D   INC &2D65
     1C40   E6 81      INC &81
     1C42   4C 5A 1C   JMP &1C5A
.b10
     1C45   CE 67 2D   DEC &2D67
     1C48   38         SEC
     1C49   AD 64 2D   LDA &2D64
     1C4C   E9 08      SBC #&08
     1C4E   8D 64 2D   STA &2D64
     1C51   85 80      STA &80
     1C53   B0 05      BCS &1C5A
     1C55   CE 65 2D   DEC &2D65
     1C58   C6 81      DEC &81
.plot_pigeon_sprite
.pb
     1C5A   A0 17      LDY #&17
.b8
     1C5C   B1 82      LDA (&82),Y
     1C5E   51 80      EOR (&80),Y
     1C60   91 80      STA (&80),Y
     1C62   88         DEY
     1C63   10 F7      BPL &1C5C
     1C65   60         RTS
.ddu1
.plane_hit
     1C66   AC 5B 25   LDY &255B
     1C69   C0 09      CPY #&09
     1C6B   10 23      BPL &1C90
     1C6D   B9 40 25   LDA &2540,Y
     1C70   85 80      STA &80
     1C72   C8         INY
     1C73   B9 40 25   LDA &2540,Y
     1C76   85 81      STA &81
     1C78   C8         INY
     1C79   8C 5B 25   STY &255B
     1C7C   A0 04      LDY #&04
     1C7E   A9 55      LDA #&55
.ddu2
     1C80   91 80      STA (&80),Y
     1C82   88         DEY
     1C83   10 FB      BPL &1C80
     1C85   A0 09      LDY #&09
     1C87   0A         ASL A
     1C88   91 80      STA (&80),Y
     1C8A   A0 01      LDY #&01
     1C8C   A9 FF      LDA #&FF
     1C8E   91 80      STA (&80),Y
.ddu3
     1C90   60         RTS
.random1
     1C91   A5 7D      LDA &7D
     1C93   29 48      AND #&48
     1C95   69 38      ADC #&38
     1C97   0A         ASL A
     1C98   0A         ASL A
     1C99   26 7F      ROL &7F
     1C9B   26 7E      ROL &7E
     1C9D   26 7D      ROL &7D
     1C9F   A5 7D      LDA &7D
     1CA1   60         RTS
.draw_backgnd_art
     1CA2   A0 00      LDY #&00
.draw_line_art_loop
     1CA4   B9 89 1D   LDA &1D89,Y
     1CA7   20 EE FF   JSR &FFEE
     1CAA   C8         INY
     1CAB   D0 F7      BNE &1CA4
     1CAD   A5 88      LDA &88
     1CAF   85 82      STA &82
     1CB1   A5 89      LDA &89
     1CB3   85 83      STA &83
     1CB5   A9 1F      LDA #&1F
     1CB7   8D 36 2A   STA &2A36
     1CBA   A9 C0      LDA #&C0
     1CBC   85 70      STA &70
     1CBE   A0 00      LDY #&00
.draw_backgnd_sprite_loop
     1CC0   C8         INY
     1CC1   BE 9C 1E   LDX &1E9C,Y
     1CC4   C8         INY
     1CC5   B9 9C 1E   LDA &1E9C,Y
     1CC8   24 70      BIT &70
     1CCA   D0 0C      BNE &1CD8
     1CCC   85 89      STA &89
     1CCE   86 88      STX &88
     1CD0   C8         INY
     1CD1   BE 9C 1E   LDX &1E9C,Y
     1CD4   C8         INY
     1CD5   B9 9C 1E   LDA &1E9C,Y
.skip1
     1CD8   86 78      STX &78
     1CDA   85 79      STA &79
     1CDC   20 20 2A   JSR &2A20
     1CDF   CC 9C 1E   CPY &1E9C
     1CE2   30 DC      BMI &1CC0
     1CE4   A9 3F      LDA #&3F
     1CE6   8D 36 2A   STA &2A36
     1CE9   A5 82      LDA &82
     1CEB   85 88      STA &88
     1CED   A5 83      LDA &83
     1CEF   85 89      STA &89
     1CF1   60         RTS
     1CF2   00         BRK
.plot_clouds
     1CF3   A9 44      LDA #&44
     1CF5   85 79      STA &79
     1CF7   A9 FF      LDA #&FF
     1CF9   A2 05      LDX #&05
.mid_outer_loop
     1CFB   A0 00      LDY #&00
     1CFD   84 78      STY &78
.mid_inner_loop
     1CFF   91 78      STA (&78),Y
     1D01   C8         INY
     1D02   D0 FB      BNE &1CFF
     1D04   E6 79      INC &79
     1D06   CA         DEX
     1D07   D0 F2      BNE &1CFB
     1D09   A0 1F      LDY #&1F
.cloud_loop2
     1D0B   B9 E0 2E   LDA &2EE0,Y
     1D0E   91 78      STA (&78),Y
     1D10   88         DEY
     1D11   10 F8      BPL &1D0B
     1D13   A9 2E      LDA #&2E
     1D15   85 7B      STA &7B
     1D17   A9 20      LDA #&20
     1D19   85 78      STA &78
     1D1B   A2 08      LDX #&08
.next_cloud_sprite
     1D1D   BD 4D 2D   LDA &2D4D,X
     1D20   85 7A      STA &7A
     1D22   A0 3F      LDY #&3F
.next_cloud_byte
     1D24   B1 7A      LDA (&7A),Y
     1D26   91 78      STA (&78),Y
     1D28   88         DEY
     1D29   10 F9      BPL &1D24
     1D2B   18         CLC
     1D2C   A5 78      LDA &78
     1D2E   69 40      ADC #&40
     1D30   85 78      STA &78
     1D32   90 02      BCC &1D36
     1D34   E6 79      INC &79
.skip1
     1D36   CA         DEX
     1D37   10 E4      BPL &1D1D
     1D39   A0 1F      LDY #&1F
.loop32
     1D3B   B9 C0 2E   LDA &2EC0,Y
     1D3E   91 78      STA (&78),Y
     1D40   88         DEY
     1D41   10 F8      BPL &1D3B
.mirror_loop_1
     1D43   A0 00      LDY #&00
.mirror_loop_2
     1D45   A2 07      LDX #&07
.mirror_loop_3
.modify_lower_dest_addr
     1D47   B9 00 49   LDA &4900,Y
.modify_upper_dest_addr
     1D4A   9D 80 41   STA &4180,X
     1D4D   C8         INY
     1D4E   CA         DEX
     1D4F   10 F6      BPL &1D47
     1D51   18         CLC
     1D52   AD 4B 1D   LDA &1D4B
     1D55   69 08      ADC #&08
     1D57   8D 4B 1D   STA &1D4B
     1D5A   90 03      BCC &1D5F
     1D5C   EE 4C 1D   INC &1D4C
.skip2
     1D5F   C0 80      CPY #&80
     1D61   D0 E2      BNE &1D45
     1D63   AD 48 1D   LDA &1D48
     1D66   49 80      EOR #&80
     1D68   8D 48 1D   STA &1D48
     1D6B   30 03      BMI &1D70
     1D6D   EE 49 1D   INC &1D49
.skip3
     1D70   A9 44      LDA #&44
     1D72   CD 4C 1D   CMP &1D4C
     1D75   D0 CC      BNE &1D43
     1D77   8C 4B 1D   STY &1D4B
     1D7A   E8         INX
     1D7B   8E 48 1D   STX &1D48
     1D7E   A9 49      LDA #&49
     1D80   8D 49 1D   STA &1D49
     1D83   A9 41      LDA #&41
     1D85   8D 4C 1D   STA &1D4C
     1D88   60         RTS
.scenery_line_art
     1D89   12
     1D8A   00
     1D8B   06
     1D8C   19
     1D8D   04
     1D8E   00
     1D8F   00
     1D90   13
     1D91   00
     1D92   19
     1D93   05
     1D94   04
     1D95   01
     1D96   17
     1D97   00
     1D98   19
     1D99   05
     1D9A   2C
     1D9B   01
     1D9C   3C
     1D9D   00
     1D9E   19
     1D9F   04
     1DA0   7E
     1DA1   04
     1DA2   3E
     1DA3   00
     1DA4   19
     1DA5   05
     1DA6   1A
     1DA7   04
     1DA8   20
     1DA9   00
     1DAA   19
     1DAB   05
     1DAC   84
     1DAD   03
     1DAE   20
     1DAF   00
     1DB0   19
     1DB1   05
     1DB2   52
     1DB3   03
     1DB4   28
     1DB5   00
     1DB6   19
     1DB7   05
     1DB8   20
     1DB9   03
     1DBA   38
     1DBB   00
     1DBC   19
     1DBD   05
     1DBE   16
     1DBF   03
     1DC0   46
     1DC1   00
     1DC2   19
     1DC3   05
     1DC4   16
     1DC5   03
     1DC6   52
     1DC7   00
     1DC8   19
     1DC9   05
     1DCA   20
     1DCB   03
     1DCC   60
     1DCD   00
     1DCE   19
     1DCF   05
     1DD0   52
     1DD1   03
     1DD2   74
     1DD3   00
     1DD4   19
     1DD5   05
     1DD6   BB
     1DD7   03
     1DD8   7C
     1DD9   00
     1DDA   19
     1DDB   04
     1DDC   7E
     1DDD   04
     1DDE   42
     1DDF   00
     1DE0   19
     1DE1   15
     1DE2   1A
     1DE3   04
     1DE4   24
     1DE5   00
     1DE6   19
     1DE7   15
     1DE8   84
     1DE9   03
     1DEA   24
     1DEB   00
     1DEC   19
     1DED   15
     1DEE   52
     1DEF   03
     1DF0   2C
     1DF1   00
     1DF2   19
     1DF3   15
     1DF4   20
     1DF5   03
     1DF6   3C
     1DF7   00
     1DF8   19
     1DF9   04
     1DFA   20
     1DFB   03
     1DFC   64
     1DFD   00
     1DFE   19
     1DFF   15
     1E00   52
     1E01   03
     1E02   78
     1E03   00
     1E04   19
     1E05   15
     1E06   BB
     1E07   03
     1E08   80
     1E09   00
     1E0A   12
     1E0B   00
     1E0C   02
     1E0D   19
     1E0E   04
     1E0F   00
     1E10   05
     1E11   17
     1E12   00
     1E13   19
     1E14   05
     1E15   C4
     1E16   04
     1E17   28
     1E18   00
     1E19   19
     1E1A   04
     1E1B   E2
     1E1C   04
     1E1D   1C
     1E1E   00
     1E1F   19
     1E20   05
     1E21   DE
     1E22   03
     1E23   38
     1E24   00
     1E25   19
     1E26   04
     1E27   80
     1E28   02
     1E29   82
     1E2A   00
     1E2B   19
     1E2C   05
     1E2D   48
     1E2E   03
     1E2F   0E
     1E30   01
     1E31   19
     1E32   05
     1E33   AC
     1E34   03
     1E35   45
     1E36   01
     1E37   19
     1E38   05
     1E39   1A
     1E3A   04
     1E3B   4A
     1E3C   01
     1E3D   19
     1E3E   05
     1E3F   00
     1E40   05
     1E41   AE
     1E42   01
     1E43   19
     1E44   04
     1E45   2C
     1E46   01
     1E47   C8
     1E48   00
     1E49   19
     1E4A   05
     1E4B   8A
     1E4C   02
     1E4D   40
     1E4E   01
     1E4F   19
     1E50   05
     1E51   3E
     1E52   03
     1E53   04
     1E54   01
     1E55   19
     1E56   04
     1E57   F4
     1E58   01
     1E59   64
     1E5A   00
     1E5B   19
     1E5C   05
     1E5D   FA
     1E5E   00
     1E5F   DC
     1E60   00
     1E61   19
     1E62   05
     1E63   8C
     1E64   00
     1E65   54
     1E66   01
     1E67   19
     1E68   05
     1E69   00
     1E6A   00
     1E6B   68
     1E6C   01
     1E6D   12
     1E6E   00
     1E6F   04
     1E70   19
     1E71   04
     1E72   9E
     1E73   02
     1E74   96
     1E75   00
     1E76   19
     1E77   15
     1E78   F4
     1E79   01
     1E7A   78
     1E7B   00
     1E7C   19
     1E7D   05
     1E7E   58
     1E7F   02
     1E80   64
     1E81   00
     1E82   19
     1E83   05
     1E84   90
     1E85   01
     1E86   5A
     1E87   00
     1E88   00
     1E89   7D
     1E8A   2D
     1E8B   20
     1E8C   13
     1E8D   28
     1E8E   A9
     1E8F   09
     1E90   85
     1E91   83
     1E92   A9
     1E93   F0
     1E94   85
     1E95   82
     1E96   4C
     1E97   13
     1E98   28
     1E99   A9
     1E9A   00
     1E9B   8D
.backgnd_sprite_addr_table
     1E9C   58
     1E9D   A0 24
     1E9F   93 73
     1EA1   49 71
     1EA3   60 76
     1EA5   99 75
     1EA7   44 73
     1EA9   C9 78
     1EAB   B4 76
     1EAD   C0 24
     1EAF   13 76
     1EB1   93 78
     1EB3   C9 73
     1EB5   49 76
     1EB7   E0 78
     1EB9   44 78
     1EBB   C4 75
     1EBD   E0 24
     1EBF   13 7B
     1EC1   4A 7B
     1EC3   60 7B
     1EC5   C4 7A
     1EC7   00 25
     1EC9   B0 78
     1ECB   20 78
     1ECD   5C 78
     1ECF   20 25
     1ED1   00 78
     1ED3   88 76
     1ED5   60 25
     1ED7   60 70
     1ED9   80 25
     1EDB   E0 72
     1EDD   60 75
     1EDF   E0 77
     1EE1   80 7A
     1EE3   A0 7A
     1EE5   DC 7A
     1EE7   A0 25
     1EE9   60 7A
     1EEB   30 7B
     1EED   C0 25
     1EEF   08 79
     1EF1   E0 25
     1EF3   28 79
     1EF5   00
.end_PIG_02
.end_PIG-02 =  &1EF6 
.draw_stave
.stv
     1EF6   A0 00      LDY #&00
.stave_loop1
     1EF8   B9 16 1F   LDA &1F16,Y
     1EFB   20 EE FF   JSR &FFEE
     1EFE   C8         INY
     1EFF   C0 09      CPY #&09
     1F01   D0 F5      BNE &1EF8
     1F03   A2 05      LDX #&05
.stave_loop2
     1F05   A0 09      LDY #&09
.stave_loop3
     1F07   B9 16 1F   LDA &1F16,Y
     1F0A   20 EE FF   JSR &FFEE
     1F0D   C8         INY
     1F0E   C0 15      CPY #&15
     1F10   D0 F5      BNE &1F07
     1F12   CA         DEX
     1F13   D0 F0      BNE &1F05
     1F15   60         RTS
.stave_data
.sl
     1F16   12
     1F17   00
     1F18   04
     1F19   19
     1F1A   04
     1F1B   00
     1F1C   01
     1F1D   EC
     1F1E   03
     1F1F   19
     1F20   01
     1F21   00
     1F22   03
     1F23   00
     1F24   00
     1F25   19
     1F26   00
     1F27   00
     1F28   FD
     1F29   F0
     1F2A   FF
.end_GG_01
.end_GG-01 =  &1F2B 
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
.np
     27E9   EA         NOP
     27EA   A5 72      LDA &72
     27EC   C9 01      CMP #&01
     27EE   10 3A      BPL &282A
     27F0   CE 62 2D   DEC &2D62
     27F3   D0 35      BNE &282A
     27F5   AD 63 2D   LDA &2D63
     27F8   8D 62 2D   STA &2D62
     27FB   A5 70      LDA &70
     27FD   20 13 2B   JSR &2B13
     2800   A8         TAY
     2801   38         SEC
.np2
     2802   E9 05      SBC #&05
     2804   10 FC      BPL &2802
     2806   AA         TAX
.np3
     2807   C8         INY
     2808   E8         INX
     2809   D0 FC      BNE &2807
     280B   88         DEY
     280C   B1 75      LDA (&75),Y
     280E   30 16      BMI &2826
     2810   A4 70      LDY &70
.se
     2812   88         DEY
     2813   B1 75      LDA (&75),Y
     2815   30 0F      BMI &2826
     2817   88         DEY
     2818   88         DEY
     2819   88         DEY
     281A   88         DEY
     281B   D0 F5      BNE &2812
     281D   A9 80      LDA #&80
     281F   0D 5E 2D   ORA &2D5E
     2822   8D 5E 2D   STA &2D5E
     2825   60         RTS
.fy
     2826   49 80      EOR #&80
     2828   91 75      STA (&75),Y
.nw
     282A   60         RTS
.pxp
     282B   A5 77      LDA &77
     282D   F0 55      BEQ &2884
     282F   A2 21      LDX #&21
     2831   86 89      STX &89
     2833   A5 88      LDA &88
     2835   48         PHA
     2836   A5 77      LDA &77
     2838   C9 15      CMP #&15
     283A   D0 0A      BNE &2846
     283C   A9 40      LDA #&40
     283E   85 88      STA &88
     2840   20 20 2A   JSR &2A20
     2843   4C 7B 28   JMP &287B
.px1
     2846   C9 0C      CMP #&0C
     2848   D0 11      BNE &285B
     284A   A9 40      LDA #&40
     284C   85 88      STA &88
     284E   20 20 2A   JSR &2A20
     2851   A9 80      LDA #&80
     2853   85 88      STA &88
     2855   20 20 2A   JSR &2A20
     2858   4C 7B 28   JMP &287B
.px2
     285B   C9 06      CMP #&06
     285D   D0 11      BNE &2870
     285F   A9 80      LDA #&80
     2861   85 88      STA &88
     2863   20 20 2A   JSR &2A20
     2866   A9 C0      LDA #&C0
     2868   85 88      STA &88
     286A   20 20 2A   JSR &2A20
     286D   4C 7B 28   JMP &287B
.px3
     2870   C9 01      CMP #&01
     2872   D0 07      BNE &287B
     2874   A9 C0      LDA #&C0
     2876   85 88      STA &88
     2878   20 20 2A   JSR &2A20
.px4
     287B   A9 2F      LDA #&2F
     287D   85 89      STA &89
     287F   68         PLA
     2880   85 88      STA &88
     2882   C6 77      DEC &77
.nx
     2884   4C FC 29   JMP &29FC
.mp
     2887   A0 00      LDY #&00
     2889   B1 75      LDA (&75),Y
     288B   85 70      STA &70
     288D   84 72      STY &72
.nxpl
     288F   C8         INY
     2890   B1 75      LDA (&75),Y
     2892   85 77      STA &77
     2894   C8         INY
     2895   B1 75      LDA (&75),Y
     2897   85 78      STA &78
     2899   C8         INY
     289A   B1 75      LDA (&75),Y
     289C   85 79      STA &79
     289E   C8         INY
     289F   B1 75      LDA (&75),Y
     28A1   85 7A      STA &7A
     28A3   C8         INY
     28A4   B1 75      LDA (&75),Y
     28A6   85 7B      STA &7B
     28A8   A5 77      LDA &77
     28AA   29 C0      AND #&C0
     28AC   D0 03      BNE &28B1
     28AE   4C 2B 28   JMP &282B
.p0
     28B1   A5 7A      LDA &7A
     28B3   10 03      BPL &28B8
     28B5   4C 18 2A   JMP &2A18
.p1
     28B8   C6 77      DEC &77
     28BA   98         TYA
     28BB   48         PHA
     28BC   A0 00      LDY #&00
     28BE   B1 8A      LDA (&8A),Y
     28C0   85 80      STA &80
.h
.next_plane
     28C2   C8         INY
     28C3   B1 8A      LDA (&8A),Y
     28C5   38         SEC
     28C6   E5 7B      SBC &7B
     28C8   30 47      BMI &2911
     28CA   C9 08      CMP #&08
     28CC   10 43      BPL &2911
     28CE   C8         INY
     28CF   C8         INY
     28D0   B1 8A      LDA (&8A),Y
     28D2   F0 3F      BEQ &2913
     28D4   C8         INY
     28D5   B1 8A      LDA (&8A),Y
     28D7   38         SEC
     28D8   E5 7A      SBC &7A
     28DA   30 38      BMI &2914
     28DC   C9 07      CMP #&07
     28DE   10 34      BPL &2914
     28E0   C9 03      CMP #&03
     28E2   F0 0D      BEQ &28F1
     28E4   A9 40      LDA #&40
     28E6   0D 5E 2D   ORA &2D5E
     28E9   8D 5E 2D   STA &2D5E
     28EC   0A         ASL A
     28ED   91 8A      STA (&8A),Y
     28EF   D0 23      BNE &2914
.o
.plane_hit
     28F1   A9 19      LDA #&19
     28F3   85 77      STA &77
     28F5   A9 D8      LDA #&D8
     28F7   91 8A      STA (&8A),Y
     28F9   AA         TAX
     28FA   A0 2D      LDY #&2D
     28FC   A9 07      LDA #&07
     28FE   20 F1 FF   JSR &FFF1
     2901   68         PLA
     2902   A8         TAY
     2903   A9 02      LDA #&02
     2905   0D 5E 2D   ORA &2D5E
     2908   8D 5E 2D   STA &2D5E
     290B   20 20 2A   JSR &2A20
     290E   4C 2B 28   JMP &282B
.nh
.plane_not_hit
     2911   C8         INY
     2912   C8         INY
     2913   C8         INY
     2914   C4 80      CPY &80
     2916   90 AA      BCC &28C2
     2918   68         PLA
     2919   A8         TAY
     291A   A5 73      LDA &73
     291C   29 BF      AND #&BF
     291E   85 73      STA &73
     2920   E6 72      INC &72
     2922   20 20 2A   JSR &2A20
     2925   A5 7B      LDA &7B
     2927   C9 AF      CMP #&AF
     2929   D0 21      BNE &294C
     292B   38         SEC
     292C   A5 78      LDA &78
     292E   E9 87      SBC #&87
     2930   85 78      STA &78
     2932   A5 79      LDA &79
     2934   E9 48      SBC #&48
     2936   85 79      STA &79
     2938   A9 C0      LDA #&C0
     293A   85 7B      STA &7B
     293C   AD 55 25   LDA &2555
     293F   F0 0B      BEQ &294C
     2941   A5 7A      LDA &7A
     2943   49 80      EOR #&80
     2945   85 7A      STA &7A
     2947   E6 77      INC &77
     2949   4C FC 29   JMP &29FC
.hop5
     294C   A9 3F      LDA #&3F
     294E   25 77      AND &77
     2950   D0 40      BNE &2992
     2952   38         SEC
     2953   A5 7A      LDA &7A
     2955   ED A6 2D   SBC &2DA6
     2958   85 77      STA &77
     295A   A9 00      LDA #&00
     295C   B0 02      BCS &2960
     295E   38         SEC
     295F   6A         ROR A
.pl3
     2960   6A         ROR A
     2961   85 80      STA &80
     2963   A5 77      LDA &77
     2965   D0 0D      BNE &2974
.pl20
     2967   A5 7D      LDA &7D
     2969   10 06      BPL &2971
     296B   A5 80      LDA &80
     296D   49 C0      EOR #&C0
     296F   85 80      STA &80
.pl21
     2971   AD 61 2D   LDA &2D61
.pl5
     2974   10 05      BPL &297B
     2976   49 FF      EOR #&FF
     2978   18         CLC
     2979   69 01      ADC #&01
.pl4
     297B   C9 02      CMP #&02
     297D   30 0F      BMI &298E
     297F   8D 1C 2B   STA &2B1C
     2982   20 16 2B   JSR &2B16
     2985   4E 1C 2B   LSR &2B1C
     2988   18         CLC
     2989   6D 1C 2B   ADC &2B1C
     298C   29 3F      AND #&3F
.pl6
     298E   05 80      ORA &80
     2990   85 77      STA &77
.mid
     2992   A5 77      LDA &77
     2994   A6 7A      LDX &7A
     2996   E0 01      CPX #&01
     2998   10 07      BPL &29A1
     299A   09 40      ORA #&40
     299C   29 7F      AND #&7F
     299E   4C A9 29   JMP &29A9
.plnl
     29A1   E0 48      CPX #&48
     29A3   30 06      BMI &29AB
     29A5   09 80      ORA #&80
     29A7   29 BF      AND #&BF
.do
     29A9   85 77      STA &77
     29AB   E6 7B      INC &7B
     29AD   A9 07      LDA #&07
     29AF   25 78      AND &78
     29B1   C9 07      CMP #&07
     29B3   F0 05      BEQ &29BA
     29B5   E6 78      INC &78
     29B7   4C C7 29   JMP &29C7
.pl2
     29BA   18         CLC
     29BB   A5 78      LDA &78
     29BD   69 79      ADC #&79
     29BF   85 78      STA &78
     29C1   A5 79      LDA &79
     29C3   69 02      ADC #&02
     29C5   85 79      STA &79
.lft
     29C7   AD F8 29   LDA &29F8
     29CA   F0 21      BEQ &29ED
     29CC   A5 77      LDA &77
     29CE   10 10      BPL &29E0
     29D0   C6 7A      DEC &7A
     29D2   38         SEC
     29D3   A5 78      LDA &78
     29D5   E9 08      SBC #&08
     29D7   85 78      STA &78
     29D9   B0 12      BCS &29ED
     29DB   C6 79      DEC &79
     29DD   4C ED 29   JMP &29ED
.rt
     29E0   E6 7A      INC &7A
     29E2   18         CLC
     29E3   A5 78      LDA &78
     29E5   69 08      ADC #&08
     29E7   85 78      STA &78
     29E9   90 02      BCC &29ED
     29EB   E6 79      INC &79
.enlr
     29ED   A9 01      LDA #&01
     29EF   4D F8 29   EOR &29F8
     29F2   8D F8 29   STA &29F8
     29F5   4C F9 29   JMP &29F9
.tog
     29F8   00
.fo
     29F9   20 20 2A   JSR &2A20
     29FC   88         DEY
     29FD   88         DEY
     29FE   88         DEY
     29FF   88         DEY
     2A00   A5 77      LDA &77
     2A02   91 75      STA (&75),Y
     2A04   C8         INY
     2A05   A5 78      LDA &78
     2A07   91 75      STA (&75),Y
     2A09   C8         INY
     2A0A   A5 79      LDA &79
     2A0C   91 75      STA (&75),Y
     2A0E   C8         INY
     2A0F   A5 7A      LDA &7A
     2A11   91 75      STA (&75),Y
     2A13   C8         INY
     2A14   A5 7B      LDA &7B
     2A16   91 75      STA (&75),Y
.pl1
     2A18   C4 70      CPY &70
     2A1A   F0 03      BEQ &2A1F
     2A1C   4C 8F 28   JMP &288F
.hop7
     2A1F   60         RTS
.pp
.plot_plane
     2A20   98         TYA
     2A21   48         PHA
     2A22   18         CLC
     2A23   A5 78      LDA &78
     2A25   69 78      ADC #&78
     2A27   85 84      STA &84
     2A29   29 07      AND #&07
     2A2B   49 07      EOR #&07
     2A2D   85 74      STA &74
     2A2F   A5 79      LDA &79
     2A31   69 02      ADC #&02
     2A33   85 85      STA &85
.modify_plane_sprite_length
     2A35   A0 3F      LDY #&3F
.plo
     2A37   A2 07      LDX #&07
     2A39   E4 74      CPX &74
     2A3B   F0 0E      BEQ &2A4B
.bt
     2A3D   B1 88      LDA (&88),Y
     2A3F   F0 04      BEQ &2A45
     2A41   51 84      EOR (&84),Y
     2A43   91 84      STA (&84),Y
.bz
     2A45   88         DEY
     2A46   CA         DEX
     2A47   E4 74      CPX &74
     2A49   D0 F2      BNE &2A3D
.tp
     2A4B   B1 88      LDA (&88),Y
     2A4D   F0 04      BEQ &2A53
     2A4F   51 78      EOR (&78),Y
     2A51   91 78      STA (&78),Y
.tz
     2A53   88         DEY
     2A54   CA         DEX
     2A55   10 F4      BPL &2A4B
     2A57   98         TYA
     2A58   10 DD      BPL &2A37
     2A5A   68         PLA
     2A5B   A8         TAY
     2A5C   60         RTS
.nbo
     2A5D   EA         NOP
     2A5E   A9 C0      LDA #&C0
     2A60   24 73      BIT &73
     2A62   D0 46      BNE &2AAA
     2A64   C6 73      DEC &73
     2A66   D0 42      BNE &2AAA
     2A68   A0 FF      LDY #&FF
.nbo2
     2A6A   C8         INY
     2A6B   C8         INY
     2A6C   C8         INY
     2A6D   C8         INY
     2A6E   C8         INY
     2A6F   B1 75      LDA (&75),Y
     2A71   30 F7      BMI &2A6A
     2A73   88         DEY
     2A74   88         DEY
     2A75   88         DEY
     2A76   B1 75      LDA (&75),Y
     2A78   29 C0      AND #&C0
     2A7A   D0 06      BNE &2A82
     2A7C   C8         INY
     2A7D   C8         INY
     2A7E   C8         INY
     2A7F   4C 6A 2A   JMP &2A6A
.nbo5
     2A82   C8         INY
     2A83   18         CLC
     2A84   B1 75      LDA (&75),Y
     2A86   69 9D      ADC #&9D
     2A88   85 80      STA &80
     2A8A   C8         INY
     2A8B   B1 75      LDA (&75),Y
     2A8D   69 02      ADC #&02
     2A8F   85 81      STA &81
     2A91   20 B5 27   JSR &27B5
     2A94   A0 00      LDY #&00
.nbo3
     2A96   C8         INY
     2A97   C8         INY
     2A98   B1 8C      LDA (&8C),Y
     2A9A   D0 FA      BNE &2A96
     2A9C   A5 81      LDA &81
     2A9E   91 8C      STA (&8C),Y
     2AA0   88         DEY
     2AA1   A5 80      LDA &80
     2AA3   91 8C      STA (&8C),Y
     2AA5   AD A7 2D   LDA &2DA7
     2AA8   85 73      STA &73
.nbo4
     2AAA   A9 C0      LDA #&C0
     2AAC   05 73      ORA &73
     2AAE   85 73      STA &73
     2AB0   60         RTS
.mbo
     2AB1   A0 00      LDY #&00
     2AB3   B1 8C      LDA (&8C),Y
     2AB5   85 70      STA &70
     2AB7   AD 96 2D   LDA &2D96
     2ABA   85 82      STA &82
     2ABC   AD 97 2D   LDA &2D97
     2ABF   85 83      STA &83
.ntbo
     2AC1   C8         INY
     2AC2   B1 8C      LDA (&8C),Y
     2AC4   85 80      STA &80
     2AC6   C8         INY
     2AC7   B1 8C      LDA (&8C),Y
     2AC9   85 81      STA &81
     2ACB   D0 09      BNE &2AD6
     2ACD   A9 7F      LDA #&7F
     2ACF   25 73      AND &73
     2AD1   85 73      STA &73
     2AD3   4C 0E 2B   JMP &2B0E
.bo1
     2AD6   20 B5 27   JSR &27B5
     2AD9   A5 80      LDA &80
     2ADB   29 07      AND #&07
     2ADD   C9 06      CMP #&06
     2ADF   10 09      BPL &2AEA
     2AE1   E6 80      INC &80
     2AE3   E6 80      INC &80
     2AE5   A5 81      LDA &81
     2AE7   4C F7 2A   JMP &2AF7
.bo2
     2AEA   18         CLC
     2AEB   A5 80      LDA &80
     2AED   69 7A      ADC #&7A
     2AEF   85 80      STA &80
     2AF1   A5 81      LDA &81
     2AF3   69 02      ADC #&02
     2AF5   85 81      STA &81
.bo4
     2AF7   C9 80      CMP #&80
     2AF9   30 06      BMI &2B01
     2AFB   A9 00      LDA #&00
     2AFD   91 8C      STA (&8C),Y
     2AFF   F0 0D      BEQ &2B0E
.bo6
     2B01   20 B5 27   JSR &27B5
     2B04   88         DEY
     2B05   A5 80      LDA &80
     2B07   91 8C      STA (&8C),Y
     2B09   C8         INY
     2B0A   A5 81      LDA &81
     2B0C   91 8C      STA (&8C),Y
.bo7
     2B0E   C4 70      CPY &70
     2B10   30 AF      BMI &2AC1
     2B12   60         RTS
.ra2
     2B13   8D 1C 2B   STA &2B1C
     2B16   38         SEC
     2B17   A5 7C      LDA &7C
     2B19   29 7F      AND #&7F
.ra3
     2B1B   E9 10      SBC #&10
     2B1D   10 FC      BPL &2B1B
     2B1F   6D 1C 2B   ADC &2B1C
     2B22   60         RTS
.end_GG_02_code
.end_GG_02_code =  &2B23 
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
     2D01   0F
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
     2DA7   D7
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
