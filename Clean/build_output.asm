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
     112D   20 F3 17   JSR &17F3
     1130   B9 42 11   LDA &1142,Y
     1133   20 EE FF   JSR &FFEE
     1136   C9 52      CMP #&52
     1138   D0 F0      BNE &112A
     113A   A9 96      LDA #&96
     113C   20 F3 17   JSR &17F3
     113F   4C 30 15   JMP &1530
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
     1159   20 F3 17   JSR &17F3
     115C   20 88 13   JSR &1388
     115F   4C 68 11   JMP &1168
.bon0
     1162   20 17 18   JSR &1817
     1165   20 FE 18   JSR &18FE
.bon11
     1168   20 B0 11   JSR &11B0
     116B   A0 4B      LDY #&4B
.bon1
     116D   F8         SED
     116E   18         CLC
     116F   AD 77 2D   LDA &2D77
     1172   69 02      ADC #&02
     1174   8D 77 2D   STA &2D77
     1177   AD 78 2D   LDA &2D78
     117A   69 00      ADC #&00
     117C   8D 78 2D   STA &2D78
     117F   D8         CLD
     1180   A9 02      LDA #&02
     1182   20 F3 17   JSR &17F3
     1185   98         TYA
     1186   48         PHA
     1187   A2 E8      LDX #&E8
     1189   A0 2D      LDY #&2D
     118B   A9 07      LDA #&07
     118D   20 F1 FF   JSR &FFF1
     1190   20 67 17   JSR &1767
     1193   68         PLA
     1194   A8         TAY
     1195   88         DEY
     1196   D0 D5      BNE &116D
     1198   EE C9 11   INC &11C9
     119B   A2 C9      LDX #&C9
     119D   A0 11      LDY #&11
     119F   A9 07      LDA #&07
     11A1   20 F1 FF   JSR &FFF1
     11A4   CE C9 11   DEC &11C9
     11A7   A9 80      LDA #&80
     11A9   0D 76 2D   ORA &2D76
     11AC   8D 76 2D   STA &2D76
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
.bsou
     11C9   12 00 FF FF
     11CD   00 00 00 00
     11D1   FF
.nbk
     11D2   B4
     11D3   16
     11D4   08
     11D5   20
     11D6   7F
.hs
     11D7   00
     11D8   00
     11D9   02
.m7
     11DA   16
     11DB   07
     11DC   17
     11DD   00
     11DE   0A
     11DF   20
     11E0   00
     11E1   00
     11E2   00
     11E3   00
     11E4   00
     11E5   00
.bsk
     11E6   9A
     11E7   94
     11E8   68
     11E9   3F
     11EA   6F
     11EB   34
     11EC   20
     11ED   20
     11EE   20
     11EF   20
     11F0   20
     11F1   20
     11F2   20
     11F3   20
     11F4   FF
     11F5   20
     11F6   20
     11F7   5F
     11F8   7E
     11F9   2F
     11FA   6D
     11FB   20
     11FC   78
     11FD   20
     11FE   20
     11FF   20
     1200   20
     1201   20
     1202   20
     1203   20
     1204   7E
     1205   0D
     1206   9A
     1207   96
     1208   6A
     1209   7D
     120A   7E
     120B   25
     120C   20
     120D   2F
     120E   20
     120F   30
     1210   20
     1211   20
     1212   20
     1213   20
     1214   FF
     1215   20
     1216   20
     1217   6A
     1218   7D
     1219   70
     121A   30
     121B   20
     121C   FF
     121D   2C
     121E   20
     121F   30
     1220   20
     1221   20
     1222   2F
     1223   20
     1224   FF
     1225   5F
     1226   3E
     1227   0D
     1228   9A
     1229   94
     122A   6A
     122B   3F
     122C   60
     122D   6F
     122E   34
     122F   FF
     1230   20
     1231   FF
     1232   2F
     1233   21
     1234   78
     1235   2F
     1236   FF
     1237   20
     1238   20
     1239   20
     123A   60
     123B   60
     123C   FF
     123D   20
     123E   FF
     123F   20
     1240   20
     1241   FF
     1242   2F
     1243   21
     1244   FF
     1245   20
     1246   FF
     1247   6F
     1248   30
     1249   20
     124A   7E
     124B   7B
     124C   34
     124D   0D
     124E   9A
     124F   96
     1250   2A
     1251   7D
     1252   70
     1253   7E
     1254   25
     1255   6F
     1256   30
     1257   FF
     1258   20
     1259   20
     125A   6F
     125B   7C
     125C   3F
     125D   20
     125E   20
     125F   2A
     1260   7C
     1261   7E
     1262   27
     1263   20
     1264   6F
     1265   74
     1266   30
     1267   FF
     1268   20
     1269   20
     126A   6F
     126B   30
     126C   FF
     126D   20
     126E   2B
     126F   34
     1270   6D
     1271   78
     1272   24
     1273   1F
     1274   05
     1275   05
     1276   82
     1277   46
     1278   49
     1279   52
     127A   45
     127B   46
     127C   4C
     127D   59
     127E   20
     127F   28
     1280   63
     1281   29
     1282   20
     1283   41
     1284   6E
     1285   64
     1286   72
     1287   65
     1288   77
     1289   20
     128A   46
     128B   72
     128C   69
     128D   67
     128E   61
     128F   61
     1290   72
     1291   64
     1292   0D
     1293   1F
     1294   0B
     1295   08
     1296   8D
     1297   83
     1298   48
     1299   69
     129A   67
     129B   68
     129C   20
     129D   53
     129E   63
     129F   6F
     12A0   72
     12A1   65
     12A2   1F
     12A3   0B
     12A4   09
     12A5   8D
     12A6   83
     12A7   48
     12A8   69
     12A9   67
     12AA   68
     12AB   20
     12AC   53
     12AD   63
     12AE   6F
     12AF   72
     12B0   65
     12B1   00
.dts
.dots_str
     12B2   1F
     12B3   0B
     12B4   0B
     12B5   2E
     12B6   2E
     12B7   2E
     12B8   2E
     12B9   2E
     12BA   2E
     12BB   2E
     12BC   2E
     12BD   2E
     12BE   2E
     12BF   2E
     12C0   2E
     12C1   2E
     12C2   00
     12C3   1F
     12C4   19
     12C5   0B
.nam
     12C6   61
     12C7   6E
     12C8   64
     12C9   72
     12CA   65
     12CB   77
     12CC   20
     12CD   20
     12CE   00
.ints
.instructions_str
     12CF   1F
     12D0   0E
     12D1   0E
     12D2   8D
     12D3   83
     12D4   4B
     12D5   65
     12D6   79
     12D7   73
     12D8   1F
     12D9   0E
     12DA   0F
     12DB   8D
     12DC   83
     12DD   4B
     12DE   65
     12DF   79
     12E0   73
     12E1   1F
     12E2   06
     12E3   11
     12E4   86
     12E5   5A
     12E6   20
     12E7   2E
     12E8   2E
     12E9   2E
     12EA   2E
     12EB   2E
     12EC   2E
     12ED   2E
     12EE   2E
     12EF   2E
     12F0   2E
     12F1   2E
     12F2   2E
     12F3   20
     12F4   6D
     12F5   6F
     12F6   76
     12F7   65
     12F8   20
     12F9   6C
     12FA   65
     12FB   66
     12FC   74
     12FD   1F
     12FE   06
     12FF   12
     1300   86
     1301   58
     1302   20
     1303   2E
     1304   2E
     1305   2E
     1306   2E
     1307   2E
     1308   2E
     1309   2E
     130A   2E
     130B   2E
     130C   2E
     130D   2E
     130E   20
     130F   6D
     1310   6F
     1311   76
     1312   65
     1313   20
     1314   72
     1315   69
     1316   67
     1317   68
     1318   74
     1319   1F
     131A   06
     131B   13
     131C   86
     131D   52
     131E   45
     131F   54
     1320   55
     1321   52
     1322   4E
     1323   20
     1324   2E
     1325   2E
     1326   2E
     1327   2E
     1328   2E
     1329   2E
     132A   2E
     132B   2E
     132C   2E
     132D   2E
     132E   2E
     132F   20
     1330   73
     1331   68
     1332   6F
     1333   6F
     1334   74
     1335   1F
     1336   06
     1337   14
     1338   86
     1339   53
     133A   2F
     133B   51
     133C   20
     133D   2E
     133E   2E
     133F   2E
     1340   2E
     1341   2E
     1342   2E
     1343   2E
     1344   20
     1345   73
     1346   6F
     1347   75
     1348   6E
     1349   64
     134A   20
     134B   6F
     134C   6E
     134D   2F
     134E   6F
     134F   66
     1350   66
     1351   1F
     1352   06
     1353   15
     1354   86
     1355   52
     1356   20
     1357   2E
     1358   2E
     1359   2E
     135A   2E
     135B   2E
     135C   2E
     135D   2E
     135E   2E
     135F   2E
     1360   2E
     1361   2E
     1362   2E
     1363   2E
     1364   2E
     1365   2E
     1366   2E
     1367   2E
     1368   20
     1369   72
     136A   65
     136B   73
     136C   74
     136D   00
.sps
     136E   1F
     136F   07
     1370   18
     1371   81
     1372   88
     1373   50
     1374   72
     1375   65
     1376   73
     1377   73
     1378   20
     1379   73
     137A   70
     137B   61
     137C   63
     137D   65
     137E   20
     137F   74
     1380   6F
     1381   20
     1382   70
     1383   6C
     1384   61
     1385   79
     1386   2E
     1387   00
.stmv
     1388   A0 0A      LDY #&0A
.stm4
     138A   B9 1E 14   LDA &141E,Y
     138D   20 EE FF   JSR &FFEE
     1390   88         DEY
     1391   10 F7      BPL &138A
     1393   A9 80      LDA #&80
     1395   8D B0 13   STA &13B0
     1398   A9 00      LDA #&00
     139A   8D BC 13   STA &13BC
     139D   A9 04      LDA #&04
     139F   85 70      STA &70
.stm1
     13A1   A9 1D      LDA #&1D
     13A3   20 EE FF   JSR &FFEE
     13A6   A9 00      LDA #&00
     13A8   20 EE FF   JSR &FFEE
     13AB   20 EE FF   JSR &FFEE
     13AE   38         SEC
.stm2
     13AF   A9 00      LDA #&00
     13B1   E9 80      SBC #&80
     13B3   8D B0 13   STA &13B0
     13B6   08         PHP
     13B7   20 EE FF   JSR &FFEE
     13BA   28         PLP
.stm3
     13BB   A9 00      LDA #&00
     13BD   E9 00      SBC #&00
     13BF   8D BC 13   STA &13BC
     13C2   20 EE FF   JSR &FFEE
     13C5   20 EE 1E   JSR &1EEE
     13C8   C6 70      DEC &70
     13CA   D0 D5      BNE &13A1
.stm5
     13CC   AD 5C 25   LDA &255C
     13CF   8D 08 22   STA &2208
     13D2   A9 00      LDA #&00
     13D4   8D 5C 25   STA &255C
     13D7   A9 26      LDA #&26
     13D9   8D 0C 22   STA &220C
     13DC   A9 88      LDA #&88
     13DE   8D 0B 22   STA &220B
.stm6
     13E1   18         CLC
     13E2   AD 0B 22   LDA &220B
     13E5   8D 59 25   STA &2559
     13E8   AD 0C 22   LDA &220C
     13EB   69 0A      ADC #&0A
     13ED   8D 0C 22   STA &220C
     13F0   8D 5A 25   STA &255A
     13F3   20 17 18   JSR &1817
     13F6   8E 53 1A   STX &1A53
     13F9   EE 5C 25   INC &255C
.stm8
     13FC   20 36 18   JSR &1836
     13FF   D0 FB      BNE &13FC
     1401   20 17 18   JSR &1817
     1404   20 FE 18   JSR &18FE
     1407   A9 3C      LDA #&3C
     1409   20 F3 17   JSR &17F3
     140C   AD 5C 25   LDA &255C
     140F   C9 04      CMP #&04
     1411   D0 CE      BNE &13E1
     1413   AD 08 22   LDA &2208
     1416   8D 5C 25   STA &255C
     1419   A9 1A      LDA #&1A
     141B   4C EE FF   JMP &FFEE
.stm10
     141E   10 03 FF 04
     1422   0F 02 0F 00
     1426   F0 18
     1428   1A
.gend
     1429   A9 00      LDA #&00
     142B   8D D7 11   STA &11D7
     142E   AD 78 2D   LDA &2D78
     1431   CD D9 11   CMP &11D9
     1434   90 19      BCC &144F
     1436   D0 08      BNE &1440
     1438   AD 77 2D   LDA &2D77
     143B   CD D8 11   CMP &11D8
     143E   90 0F      BCC &144F
.ge0
     1440   AD 77 2D   LDA &2D77
     1443   8D D8 11   STA &11D8
     1446   AD 78 2D   LDA &2D78
     1449   8D D9 11   STA &11D9
     144C   CE D7 11   DEC &11D7
.ge1
     144F   A9 16      LDA #&16
     1451   20 EE FF   JSR &FFEE
     1454   A9 07      LDA #&07
     1456   20 EE FF   JSR &FFEE
     1459   A2 E6      LDX #&E6
     145B   A0 11      LDY #&11
     145D   20 FB 14   JSR &14FB
     1460   A9 1F      LDA #&1F
     1462   20 EE FF   JSR &FFEE
     1465   A9 05      LDA #&05
     1467   20 EE FF   JSR &FFEE
     146A   A9 0B      LDA #&0B
     146C   20 EE FF   JSR &FFEE
     146F   AD D9 11   LDA &11D9
     1472   20 E7 14   JSR &14E7
     1475   AD D8 11   LDA &11D8
     1478   20 E7 14   JSR &14E7
     147B   A9 30      LDA #&30
     147D   20 EE FF   JSR &FFEE
     1480   A2 B2      LDX #&B2
     1482   A0 12      LDY #&12
     1484   20 FB 14   JSR &14FB
     1487   A2 CF      LDX #&CF
     1489   A0 12      LDY #&12
     148B   20 FB 14   JSR &14FB
     148E   A9 1F      LDA #&1F
     1490   20 EE FF   JSR &FFEE
     1493   A9 1A      LDA #&1A
     1495   20 EE FF   JSR &FFEE
     1498   A9 0B      LDA #&0B
     149A   20 EE FF   JSR &FFEE
     149D   AD D7 11   LDA &11D7
     14A0   F0 12      BEQ &14B4
     14A2   A9 15      LDA #&15
     14A4   A2 00      LDX #&00
     14A6   20 F4 FF   JSR &FFF4
     14A9   8A         TXA
     14AA   A2 D2      LDX #&D2
     14AC   A0 11      LDY #&11
     14AE   20 F1 FF   JSR &FFF1
     14B1   4C C1 14   JMP &14C1
.ge3
     14B4   A0 FF      LDY #&FF
.ge6
     14B6   C8         INY
     14B7   B9 C6 12   LDA &12C6,Y
     14BA   20 E3 FF   JSR &FFE3
     14BD   C9 20      CMP #&20
     14BF   10 F5      BPL &14B6
.ge7
     14C1   A0 02      LDY #&02
.ge5
     14C3   B9 DA 11   LDA &11DA,Y
     14C6   20 EE FF   JSR &FFEE
     14C9   C8         INY
     14CA   C0 0D      CPY #&0D
     14CC   D0 F5      BNE &14C3
     14CE   A9 64      LDA #&64
     14D0   20 F3 17   JSR &17F3
.space
     14D3   A9 1A      LDA #&1A
     14D5   20 EE FF   JSR &FFEE
     14D8   A2 6E      LDX #&6E
     14DA   A0 13      LDY #&13
     14DC   20 FB 14   JSR &14FB
.ge4
     14DF   A2 9D      LDX #&9D
     14E1   20 2D 19   JSR &192D
     14E4   D0 F9      BNE &14DF
     14E6   60         RTS
.whs
     14E7   48         PHA
     14E8   4A         LSR A
     14E9   4A         LSR A
     14EA   4A         LSR A
     14EB   4A         LSR A
     14EC   18         CLC
     14ED   69 30      ADC #&30
     14EF   20 E3 FF   JSR &FFE3
     14F2   68         PLA
     14F3   29 0F      AND #&0F
     14F5   18         CLC
     14F6   69 30      ADC #&30
     14F8   4C E3 FF   JMP &FFE3
.wrs
.write_string
     14FB   8E 05 15   STX &1505
     14FE   8C 06 15   STY &1506
     1501   A0 FF      LDY #&FF
.wr1
     1503   C8         INY
.modify_string_addr
     1504   B9 B2 12   LDA &12B2,Y
     1507   20 E3 FF   JSR &FFE3
     150A   C9 00      CMP #&00
     150C   D0 F5      BNE &1503
     150E   60         RTS
.end_SS_01
.end_SS_01 =  &150F 
.game
     150F   A9 C8      LDA #&C8
     1511   A2 03      LDX #&03
     1513   A0 00      LDY #&00
     1515   20 F4 FF   JSR &FFF4
     1518   20 D3 14   JSR &14D3
     151B   A2 01      LDX #&01
     151D   A9 04      LDA #&04
     151F   A0 00      LDY #&00
     1521   20 F4 FF   JSR &FFF4
     1524   AD 0C 02   LDA &020C
     1527   8D 78 19   STA &1978
     152A   AD 0D 02   LDA &020D
     152D   8D 79 19   STA &1979
.newgame
     1530   20 29 14   JSR &1429
     1533   20 7B 15   JSR &157B
.GO
     1536   20 89 1C   JSR &1C89
     1539   20 2D 26   JSR &262D
     153C   20 87 28   JSR &2887
     153F   20 E9 27   JSR &27E9
     1542   20 51 26   JSR &2651
     1545   20 C6 26   JSR &26C6
     1548   20 42 27   JSR &2742
     154B   20 B1 2A   JSR &2AB1
     154E   20 5D 2A   JSR &2A5D
     1551   20 DF 1A   JSR &1ADF
     1554   20 8F 19   JSR &198F
     1557   20 F3 16   JSR &16F3
     155A   20 36 19   JSR &1936
     155D   4C 36 15   JMP &1536
     1560   28 63 29 ...
.start_game
     157B   A9 05      LDA #&05
     157D   85 70      STA &70
     157F   20 18 26   JSR &2618
     1582   A9 49      LDA #&49
     1584   20 FE 18   JSR &18FE
     1587   A9 16      LDA #&16
     1589   20 EE FF   JSR &FFEE
     158C   A9 02      LDA #&02
     158E   20 EE FF   JSR &FFEE
     1591   A9 00      LDA #&00
     1593   8D CF 17   STA &17CF
     1596   85 8E      STA &8E
     1598   8D 5C 25   STA &255C
     159B   8D 54 25   STA &2554
     159E   8D 55 25   STA &2555
     15A1   8D 77 2D   STA &2D77
     15A4   8D 78 2D   STA &2D78
     15A7   85 88      STA &88
     15A9   18         CLC
     15AA   A9 20      LDA #&20
     15AC   8D 79 2D   STA &2D79
     15AF   A9 03      LDA #&03
     15B1   8D 7A 2D   STA &2D7A
     15B4   A9 2A      LDA #&2A
     15B6   8D 7B 2D   STA &2D7B
     15B9   A9 02      LDA #&02
     15BB   85 71      STA &71
     15BD   A9 02      LDA #&02
     15BF   85 8A      STA &8A
     15C1   A9 2D      LDA #&2D
     15C3   85 8B      STA &8B
     15C5   A9 47      LDA #&47
     15C7   85 8C      STA &8C
     15C9   A9 2D      LDA #&2D
     15CB   85 8D      STA &8D
     15CD   A9 13      LDA #&13
     15CF   85 75      STA &75
     15D1   A9 2D      LDA #&2D
     15D3   85 76      STA &76
     15D5   A2 0F      LDX #&0F
     15D7   A0 07      LDY #&07
.co1
     15D9   20 00 26   JSR &2600
     15DC   CA         DEX
     15DD   E0 07      CPX #&07
     15DF   D0 F8      BNE &15D9
     15E1   86 7D      STX &7D
     15E3   A9 03      LDA #&03
     15E5   8D 56 25   STA &2556
     15E8   A9 2F      LDA #&2F
     15EA   85 89      STA &89
     15EC   A9 F0      LDA #&F0
     15EE   8D 71 2D   STA &2D71
     15F1   A9 00      LDA #&00
     15F3   8D 09 22   STA &2209
.bf
     15F6   20 17 18   JSR &1817
     15F9   8E 53 1A   STX &1A53
     15FC   EE 5C 25   INC &255C
     15FF   AD 79 2D   LDA &2D79
     1602   C9 0F      CMP #&0F
     1604   30 16      BMI &161C
     1606   AD 5C 25   LDA &255C
     1609   29 01      AND #&01
     160B   F0 0F      BEQ &161C
     160D   CE 79 2D   DEC &2D79
     1610   CE 79 2D   DEC &2D79
     1613   CE 71 2D   DEC &2D71
     1616   EE 09 22   INC &2209
     1619   EE 09 22   INC &2209
.b0
     161C   A9 0C      LDA #&0C
     161E   20 EE FF   JSR &FFEE
     1621   A9 9A      LDA #&9A
     1623   A2 14      LDX #&14
     1625   20 F4 FF   JSR &FFF4
     1628   20 EB 1C   JSR &1CEB
     162B   20 9A 1C   JSR &1C9A
     162E   20 EE 1E   JSR &1EEE
     1631   20 67 17   JSR &1767
     1634   A9 00      LDA #&00
     1636   8D 5B 25   STA &255B
     1639   8D 76 2D   STA &2D76
     163C   8D 7D 2D   STA &2D7D
     163F   A0 5C      LDY #&5C
.b1
     1641   99 02 2D   STA &2D02,Y
     1644   88         DEY
     1645   D0 FA      BNE &1641
     1647   AD 09 22   LDA &2209
     164A   8D 47 2D   STA &2D47
     164D   A9 0C      LDA #&0C
     164F   8D 02 2D   STA &2D02
     1652   A9 1E      LDA #&1E
     1654   8D 13 2D   STA &2D13
     1657   A9 88      LDA #&88
     1659   8D 59 25   STA &2559
     165C   A9 30      LDA #&30
     165E   8D 5A 25   STA &255A
     1661   A9 80      LDA #&80
     1663   8D 57 25   STA &2557
     1666   A9 32      LDA #&32
     1668   8D 58 25   STA &2558
     166B   AE 56 25   LDX &2556
.pmi
     166E   20 7A 19   JSR &197A
     1671   18         CLC
     1672   AD 57 25   LDA &2557
     1675   69 18      ADC #&18
     1677   8D 57 25   STA &2557
     167A   CA         DEX
     167B   D0 F1      BNE &166E
     167D   A9 3A      LDA #&3A
     167F   85 81      STA &81
     1681   A9 81      LDA #&81
     1683   85 82      STA &82
     1685   A2 01      LDX #&01
     1687   A0 08      LDY #&08
.pp1
     1689   A9 81      LDA #&81
     168B   9D 13 2D   STA &2D13,X
     168E   E8         INX
     168F   98         TYA
     1690   18         CLC
     1691   69 50      ADC #&50
     1693   9D 13 2D   STA &2D13,X
     1696   A8         TAY
     1697   E8         INX
     1698   A5 81      LDA &81
     169A   69 00      ADC #&00
     169C   9D 13 2D   STA &2D13,X
     169F   85 81      STA &81
     16A1   18         CLC
     16A2   E8         INX
     16A3   A5 82      LDA &82
     16A5   69 0A      ADC #&0A
     16A7   85 82      STA &82
     16A9   9D 13 2D   STA &2D13,X
     16AC   E8         INX
     16AD   A9 D0      LDA #&D0
     16AF   9D 13 2D   STA &2D13,X
     16B2   E8         INX
     16B3   E0 1F      CPX #&1F
     16B5   30 D2      BMI &1689
     16B7   A0 00      LDY #&00
     16B9   B1 75      LDA (&75),Y
     16BB   85 70      STA &70
.slop
     16BD   C8         INY
     16BE   C8         INY
     16BF   B1 75      LDA (&75),Y
     16C1   85 78      STA &78
     16C3   C8         INY
     16C4   B1 75      LDA (&75),Y
     16C6   85 79      STA &79
     16C8   20 20 2A   JSR &2A20
     16CB   C8         INY
     16CC   C8         INY
     16CD   C4 70      CPY &70
     16CF   30 EC      BMI &16BD
     16D1   20 39 1A   JSR &1A39
.sgun
.player_gun_initialise
     16D4   A9 20      LDA #&20
     16D6   8D 70 2D   STA &2D70
     16D9   A9 7E      LDA #&7E
     16DB   85 87      STA &87
     16DD   A9 90      LDA #&90
     16DF   85 86      STA &86
     16E1   A9 20      LDA #&20
     16E3   8D BB 26   STA &26BB
     16E6   A9 58      LDA #&58
     16E8   8D BA 26   STA &26BA
     16EB   20 B7 26   JSR &26B7
     16EE   A9 40      LDA #&40
     16F0   4C FE 18   JMP &18FE
.sor
     16F3   AD 76 2D   LDA &2D76
     16F6   F0 6F      BEQ &1767
     16F8   F8         SED
     16F9   29 02      AND #&02
     16FB   F0 14      BEQ &1711
     16FD   18         CLC
     16FE   A9 15      LDA #&15
     1700   6D 77 2D   ADC &2D77
     1703   8D 77 2D   STA &2D77
     1706   AD 78 2D   LDA &2D78
     1709   69 00      ADC #&00
     170B   8D 78 2D   STA &2D78
     170E   20 5E 1C   JSR &1C5E
.s1
     1711   A9 40      LDA #&40
     1713   2C 76 2D   BIT &2D76
     1716   F0 1C      BEQ &1734
     1718   18         CLC
     1719   A9 01      LDA #&01
.wng
     171B   6D 77 2D   ADC &2D77
     171E   8D 77 2D   STA &2D77
     1721   AD 78 2D   LDA &2D78
     1724   69 00      ADC #&00
     1726   8D 78 2D   STA &2D78
     1729   D8         CLD
     172A   A2 C9      LDX #&C9
     172C   A0 11      LDY #&11
     172E   A9 07      LDA #&07
     1730   20 F1 FF   JSR &FFF1
     1733   F8         SED
.s4
     1734   A9 10      LDA #&10
     1736   2C 76 2D   BIT &2D76
     1739   F0 1A      BEQ &1755
     173B   18         CLC
     173C   A9 0A      LDA #&0A
.pig
     173E   6D 77 2D   ADC &2D77
     1741   8D 77 2D   STA &2D77
     1744   AD 78 2D   LDA &2D78
     1747   69 00      ADC #&00
     1749   8D 78 2D   STA &2D78
     174C   D8         CLD
     174D   20 36 18   JSR &1836
     1750   D0 03      BNE &1755
     1752   20 50 11   JSR &1150
.s2
     1755   D8         CLD
     1756   20 A0 17   JSR &17A0
     1759   AD 76 2D   LDA &2D76
     175C   10 03      BPL &1761
     175E   4C 03 18   JMP &1803
.s3
     1761   A9 00      LDA #&00
     1763   8D 76 2D   STA &2D76
     1766   60         RTS
.s7
.score_update_screen
     1767   A9 34      LDA #&34
     1769   85 81      STA &81
     176B   A9 B0      LDA #&B0
     176D   85 80      STA &80
     176F   A9 24      LDA #&24
     1771   85 83      STA &83
     1773   A9 F0      LDA #&F0
     1775   2D 78 2D   AND &2D78
     1778   20 3D 26   JSR &263D
     177B   A9 0F      LDA #&0F
     177D   2D 78 2D   AND &2D78
     1780   0A         ASL A
     1781   0A         ASL A
     1782   0A         ASL A
     1783   0A         ASL A
     1784   20 3D 26   JSR &263D
     1787   A9 F0      LDA #&F0
     1789   2D 77 2D   AND &2D77
     178C   20 3D 26   JSR &263D
     178F   A9 0F      LDA #&0F
     1791   2D 77 2D   AND &2D77
     1794   0A         ASL A
     1795   0A         ASL A
     1796   0A         ASL A
     1797   0A         ASL A
     1798   20 3D 26   JSR &263D
     179B   A9 00      LDA #&00
     179D   4C 3D 26   JMP &263D
.extra_player_check
.exg
     17A0   A9 01      LDA #&01
     17A2   2C CF 17   BIT &17CF
     17A5   D0 10      BNE &17B7
     17A7   AC 78 2D   LDY &2D78
     17AA   C0 05      CPY #&05
     17AC   30 20      BMI &17CE
     17AE   0D CF 17   ORA &17CF
     17B1   8D CF 17   STA &17CF
     17B4   20 D0 17   JSR &17D0
.exg1
     17B7   A9 02      LDA #&02
     17B9   2C CF 17   BIT &17CF
     17BC   D0 10      BNE &17CE
     17BE   AC 78 2D   LDY &2D78
     17C1   C0 10      CPY #&10
     17C3   30 09      BMI &17CE
     17C5   0D CF 17   ORA &17CF
     17C8   8D CF 17   STA &17CF
     17CB   4C D0 17   JMP &17D0
.exg2
     17CE   60         RTS
.exg3
     17CF   00
.exg4
     17D0   20 7A 19   JSR &197A
     17D3   A9 DC      LDA #&DC
     17D5   8D FC 2D   STA &2DFC
     17D8   A2 F8      LDX #&F8
     17DA   A0 2D      LDY #&2D
     17DC   A9 07      LDA #&07
     17DE   20 F1 FF   JSR &FFF1
     17E1   EE 56 25   INC &2556
     17E4   18         CLC
     17E5   AD 57 25   LDA &2557
     17E8   69 18      ADC #&18
     17EA   8D 57 25   STA &2557
     17ED   90 03      BCC &17F2
     17EF   EE 58 25   INC &2558
.exg5
     17F2   60         RTS
.delay
     17F3   8D 0A 22   STA &220A
     17F6   98         TYA
     17F7   48         PHA
.del1
     17F8   20 2D 26   JSR &262D
     17FB   CE 0A 22   DEC &220A
     17FE   D0 F8      BNE &17F8
     1800   68         PLA
     1801   A8         TAY
     1802   60         RTS
.next_level
.ef
     1803   A9 00      LDA #&00
     1805   8D 76 2D   STA &2D76
     1808   18         CLC
     1809   A5 88      LDA &88
     180B   69 40      ADC #&40
     180D   85 88      STA &88
     180F   A9 64      LDA #&64
     1811   20 F3 17   JSR &17F3
     1814   4C F6 15   JMP &15F6
.cht
     1817   A9 03      LDA #&03
     1819   2D 5C 25   AND &255C
     181C   AA         TAX
     181D   D0 03      BNE &1822
     181F   A9 33      LDA #&33
     1821   60         RTS
.ct1
     1822   CA         DEX
     1823   D0 04      BNE &1829
     1825   8A         TXA
     1826   A2 0D      LDX #&0D
     1828   60         RTS
.ct2
     1829   CA         DEX
     182A   D0 05      BNE &1831
     182C   A9 11      LDA #&11
     182E   A2 1A      LDX #&1A
     1830   60         RTS
.ct3
     1831   A9 22      LDA #&22
     1833   A2 26      LDX #&26
     1835   60         RTS
.nxno
     1836   EE 53 1A   INC &1A53
     1839   AC 53 1A   LDY &1A53
     183C   B9 53 1A   LDA &1A53,Y
     183F   85 70      STA &70
     1841   29 0E      AND #&0E
     1843   C9 08      CMP #&08
     1845   10 0A      BPL &1851
     1847   18         CLC
     1848   6D 59 25   ADC &2559
     184B   85 80      STA &80
     184D   A9 00      LDA #&00
     184F   F0 0A      BEQ &185B
.n1
     1851   18         CLC
     1852   6D 59 25   ADC &2559
     1855   69 78      ADC #&78
     1857   85 80      STA &80
     1859   A9 02      LDA #&02
.n2
     185B   6D 5A 25   ADC &255A
     185E   85 81      STA &81
     1860   A9 20      LDA #&20
     1862   85 83      STA &83
     1864   20 96 18   JSR &1896
     1867   18         CLC
     1868   AD 59 25   LDA &2559
     186B   69 20      ADC #&20
     186D   8D 59 25   STA &2559
     1870   90 03      BCC &1875
     1872   EE 5A 25   INC &255A
.n3
     1875   20 CA 18   JSR &18CA
     1878   18         CLC
     1879   A5 80      LDA &80
     187B   69 08      ADC #&08
     187D   85 80      STA &80
     187F   90 02      BCC &1883
     1881   E6 81      INC &81
.n4
     1883   18         CLC
     1884   A5 82      LDA &82
     1886   69 08      ADC #&08
     1888   85 82      STA &82
     188A   90 02      BCC &188E
     188C   E6 83      INC &83
.n5
     188E   20 CA 18   JSR &18CA
     1891   C8         INY
     1892   B9 53 1A   LDA &1A53,Y
     1895   60         RTS
.chnot
     1896   A9 80      LDA #&80
     1898   24 70      BIT &70
     189A   F0 05      BEQ &18A1
     189C   A9 00      LDA #&00
     189E   85 82      STA &82
     18A0   60         RTS
.c1
     18A1   4A         LSR A
     18A2   24 70      BIT &70
     18A4   F0 05      BEQ &18AB
     18A6   A9 10      LDA #&10
     18A8   85 82      STA &82
     18AA   60         RTS
.c2
     18AB   4A         LSR A
     18AC   24 70      BIT &70
     18AE   F0 05      BEQ &18B5
     18B0   A9 20      LDA #&20
     18B2   85 82      STA &82
     18B4   60         RTS
.c3
     18B5   4A         LSR A
     18B6   24 70      BIT &70
     18B8   F0 05      BEQ &18BF
     18BA   A9 30      LDA #&30
     18BC   85 82      STA &82
     18BE   60         RTS
.c4
     18BF   A9 01      LDA #&01
     18C1   24 70      BIT &70
     18C3   F0 04      BEQ &18C9
     18C5   A9 40      LDA #&40
     18C7   85 82      STA &82
.c5
     18C9   60         RTS
.pno
     18CA   98         TYA
     18CB   48         PHA
     18CC   A0 07      LDY #&07
     18CE   18         CLC
     18CF   A5 80      LDA &80
     18D1   69 78      ADC #&78
     18D3   85 84      STA &84
     18D5   A5 81      LDA &81
     18D7   69 02      ADC #&02
     18D9   85 85      STA &85
     18DB   A5 80      LDA &80
     18DD   29 07      AND #&07
     18DF   49 07      EOR #&07
     18E1   85 74      STA &74
     18E3   C9 07      CMP #&07
     18E5   10 0B      BPL &18F2
.pnbot
     18E7   B1 82      LDA (&82),Y
     18E9   11 84      ORA (&84),Y
     18EB   91 84      STA (&84),Y
     18ED   88         DEY
     18EE   C4 74      CPY &74
     18F0   D0 F5      BNE &18E7
.pntop
     18F2   B1 82      LDA (&82),Y
     18F4   11 80      ORA (&80),Y
     18F6   91 80      STA (&80),Y
     18F8   88         DEY
     18F9   10 F7      BPL &18F2
     18FB   68         PLA
     18FC   A8         TAY
     18FD   60         RTS
.playTune
.tune
     18FE   85 70      STA &70
.t1
     1900   A4 70      LDY &70
     1902   B9 83 1A   LDA &1A83,Y
     1905   F0 1A      BEQ &1921
     1907   8D FC 2D   STA &2DFC
     190A   C8         INY
     190B   B9 83 1A   LDA &1A83,Y
     190E   8D FE 2D   STA &2DFE
     1911   A2 F8      LDX #&F8
     1913   A0 2D      LDY #&2D
     1915   A9 07      LDA #&07
     1917   20 F1 FF   JSR &FFF1
     191A   E6 70      INC &70
     191C   E6 70      INC &70
     191E   4C 00 19   JMP &1900
.t3
     1921   A9 80      LDA #&80
     1923   A2 FA      LDX #&FA
     1925   20 F4 FF   JSR &FFF4
     1928   E0 0F      CPX #&0F
     192A   30 F5      BMI &1921
     192C   60         RTS
.keyboardScan
.key
     192D   A9 81      LDA #&81
     192F   A0 FF      LDY #&FF
     1931   20 F4 FF   JSR &FFF4
     1934   E8         INX
     1935   60         RTS
.check_key_press
.opt
.checkQkey
     1936   A2 EF      LDX #&EF
     1938   20 2D 19   JSR &192D
     193B   D0 0A      BNE &1947
     193D   A9 71      LDA #&71
     193F   8D 0C 02   STA &020C
     1942   A9 19      LDA #&19
     1944   8D 0D 02   STA &020D
.op1
.checkSkey
     1947   A2 AE      LDX #&AE
     1949   20 2D 19   JSR &192D
     194C   D0 0C      BNE &195A
     194E   AD 78 19   LDA &1978
     1951   8D 0C 02   STA &020C
     1954   AD 79 19   LDA &1979
     1957   8D 0D 02   STA &020D
.op2
.checkRkey
     195A   A2 CC      LDX #&CC
     195C   20 2D 19   JSR &192D
     195F   D0 0F      BNE &1970
.op3
     1961   A9 81      LDA #&81
     1963   A0 01      LDY #&01
     1965   A2 00      LDX #&00
     1967   20 F4 FF   JSR &FFF4
     196A   B0 F5      BCS &1961
     196C   E0 52      CPX #&52
     196E   F0 F1      BEQ &1961
.op5
.checkKeyComplete
     1970   60         RTS
.mute
     1971   C9 07      CMP #&07
     1973   F0 FB      BEQ &1970
.mu1
     1975   6C 78 19   JMP (&1978)
.soun
     1978   EB E7
.end_SS_03
.end_SS_03 =  &197A 
.mini
.plot_gun_life_indicator
     197A   A9 10      LDA #&10
     197C   85 82      STA &82
     197E   A9 21      LDA #&21
     1980   85 83      STA &83
     1982   AD 57 25   LDA &2557
     1985   85 80      STA &80
     1987   AD 58 25   LDA &2558
     198A   85 81      STA &81
     198C   4C 52 1C   JMP &1C52
.gun_hit_display
.h0
     198F   A9 20      LDA #&20
     1991   2C 76 2D   BIT &2D76
     1994   D0 06      BNE &199C
     1996   AD 55 25   LDA &2555
     1999   D0 34      BNE &19CF
.hreturn
     199B   60         RTS
.h1
     199C   A2 00      LDX #&00
     199E   A0 07      LDY #&07
     19A0   20 00 26   JSR &2600
     19A3   A9 07      LDA #&07
     19A5   A0 2D      LDY #&2D
     19A7   A2 E0      LDX #&E0
     19A9   20 F1 FF   JSR &FFF1
     19AC   A9 FF      LDA #&FF
     19AE   8D 55 25   STA &2555
     19B1   A9 60      LDA #&60
     19B3   8D 5D 2A   STA &2A5D
     19B6   8D E9 27   STA &27E9
     19B9   8D 51 26   STA &2651
     19BC   8D 42 27   STA &2742
     19BF   20 B7 26   JSR &26B7
     19C2   A9 22      LDA #&22
     19C4   8D BB 26   STA &26BB
     19C7   A9 10      LDA #&10
     19C9   8D BA 26   STA &26BA
     19CC   4C B7 26   JMP &26B7
.h12
     19CF   CE 55 25   DEC &2555
     19D2   AD 55 25   LDA &2555
     19D5   C9 FE      CMP #&FE
     19D7   D0 07      BNE &19E0
     19D9   A2 00      LDX #&00
     19DB   A0 00      LDY #&00
     19DD   4C 00 26   JMP &2600
.h3
     19E0   C9 DC      CMP #&DC
     19E2   D0 0B      BNE &19EF
     19E4   20 B7 26   JSR &26B7
     19E7   A9 38      LDA #&38
     19E9   8D BA 26   STA &26BA
     19EC   4C B7 26   JMP &26B7
.h4
     19EF   C9 8C      CMP #&8C
     19F1   D0 0B      BNE &19FE
     19F3   20 B7 26   JSR &26B7
     19F6   A9 60      LDA #&60
     19F8   8D BA 26   STA &26BA
     19FB   4C B7 26   JMP &26B7
.h5
     19FE   C9 01      CMP #&01
     1A00   D0 99      BNE &199B
     1A02   CE 56 25   DEC &2556
     1A05   D0 03      BNE &1A0A
     1A07   4C 26 11   JMP &1126
.h5a
     1A0A   20 B7 26   JSR &26B7
     1A0D   20 D4 16   JSR &16D4
     1A10   AC 13 2D   LDY &2D13
.h6
     1A13   B1 75      LDA (&75),Y
     1A15   C9 C0      CMP #&C0
     1A17   D0 19      BNE &1A32
     1A19   88         DEY
     1A1A   B1 75      LDA (&75),Y
     1A1C   10 15      BPL &1A33
     1A1E   49 80      EOR #&80
     1A20   91 75      STA (&75),Y
     1A22   88         DEY
     1A23   B1 75      LDA (&75),Y
     1A25   85 79      STA &79
     1A27   88         DEY
     1A28   B1 75      LDA (&75),Y
     1A2A   85 78      STA &78
     1A2C   20 20 2A   JSR &2A20
     1A2F   4C 35 1A   JMP &1A35
.h8
     1A32   88         DEY
.h9
     1A33   88         DEY
     1A34   88         DEY
.h10
     1A35   88         DEY
     1A36   88         DEY
     1A37   D0 DA      BNE &1A13
.h7
     1A39   A9 EA      LDA #&EA
     1A3B   8D 5D 2A   STA &2A5D
     1A3E   8D 42 27   STA &2742
     1A41   8D E9 27   STA &27E9
     1A44   8D 51 26   STA &2651
     1A47   38         SEC
     1A48   AD 57 25   LDA &2557
     1A4B   E9 18      SBC #&18
     1A4D   8D 57 25   STA &2557
     1A50   4C 7A 19   JMP &197A
.end_PIG_01
.end_PIG-01 =  &1A53 
.nl
     1A53   0D
     1A54   4A
     1A55   18
     1A56   8C
     1A57   8E
     1A58   1C
     1A59   8A
     1A5A   84
     1A5B   14
     1A5C   82
     1A5D   20
     1A5E   44
     1A5F   05
     1A60   00
     1A61   48
     1A62   18
     1A63   86
     1A64   84
     1A65   14
     1A66   86
     1A67   84
     1A68   14
     1A69   88
     1A6A   2A
     1A6B   4E
     1A6C   05
     1A6D   00
     1A6E   4A
     1A6F   18
     1A70   8C
     1A71   8E
     1A72   1C
     1A73   8A
     1A74   84
     1A75   14
     1A76   82
     1A77   20
     1A78   44
     1A79   00
     1A7A   44
     1A7B   42
     1A7C   42
     1A7D   44
     1A7E   46
     1A7F   24
     1A80   14
     1A81   05
     1A82   00
.tl
     1A83   65
     1A84   17
     1A85   5D
     1A86   05
     1A87   59
     1A88   0A
     1A89   65
     1A8A   05
     1A8B   79
     1A8C   0A
     1A8D   81
     1A8E   05
     1A8F   89
     1A90   1E
     1A91   79
     1A92   1E
     1A93   00
     1A94   6D
     1A95   17
     1A96   75
     1A97   05
     1A98   79
     1A99   0A
     1A9A   75
     1A9B   05
     1A9C   79
     1A9D   0A
     1A9E   6D
     1A9F   05
     1AA0   65
     1AA1   1E
     1AA2   59
     1AA3   1E
     1AA4   00
     1AA5   65
     1AA6   17
     1AA7   5D
     1AA8   05
     1AA9   59
     1AAA   0A
     1AAB   65
     1AAC   05
     1AAD   79
     1AAE   0A
     1AAF   81
     1AB0   05
     1AB1   89
     1AB2   1E
     1AB3   79
     1AB4   0F
     1AB5   00
     1AB6   79
     1AB7   0F
     1AB8   81
     1AB9   0F
     1ABA   81
     1ABB   0F
     1ABC   79
     1ABD   0F
     1ABE   75
     1ABF   0F
     1AC0   79
     1AC1   1E
     1AC2   00
     1AC3   59
     1AC4   05
     1AC5   59
     1AC6   05
     1AC7   59
     1AC8   05
     1AC9   49
     1ACA   0F
     1ACB   00
     1ACC   41
     1ACD   05
     1ACE   35
     1ACF   0A
     1AD0   39
     1AD1   05
     1AD2   3D
     1AD3   05
     1AD4   41
     1AD5   05
     1AD6   65
     1AD7   0A
     1AD8   65
     1AD9   0A
     1ADA   55
     1ADB   14
     1ADC   00
     1ADD   14
     1ADE   00
.pg
     1ADF   A9 23      LDA #&23
     1AE1   85 83      STA &83
     1AE3   AD 7D 2D   LDA &2D7D
     1AE6   D0 77      BNE &1B5F
     1AE8   A9 42      LDA #&42
     1AEA   2C 76 2D   BIT &2D76
     1AED   F0 6F      BEQ &1B5E
     1AEF   A9 02      LDA #&02
     1AF1   2C 54 25   BIT &2554
     1AF4   F0 1F      BEQ &1B15
.pig_init_right
     1AF6   A9 23      LDA #&23
     1AF8   85 83      STA &83
     1AFA   8D E0 1A   STA &1AE0
     1AFD   A9 68      LDA #&68
     1AFF   8D 7C 2D   STA &2D7C
     1B02   85 80      STA &80
     1B04   A9 00      LDA #&00
     1B06   8D 00 1C   STA &1C00
     1B09   A9 4C      LDA #&4C
     1B0B   8D 7F 2D   STA &2D7F
     1B0E   A9 4B      LDA #&4B
     1B10   8D 3D 1B   STA &1B3D
     1B13   D0 1B      BNE &1B30
.pgl
.pig_init_left
     1B15   A9 22      LDA #&22
     1B17   85 83      STA &83
     1B19   8D E0 1A   STA &1AE0
     1B1C   A9 00      LDA #&00
     1B1E   8D 7C 2D   STA &2D7C
     1B21   85 80      STA &80
     1B23   8D 7F 2D   STA &2D7F
     1B26   A9 4C      LDA #&4C
     1B28   8D 00 1C   STA &1C00
     1B2B   A9 49      LDA #&49
     1B2D   8D 3D 1B   STA &1B3D
.b3
     1B30   A9 00      LDA #&00
     1B32   85 7C      STA &7C
     1B34   EE 54 25   INC &2554
     1B37   A9 07      LDA #&07
     1B39   25 7D      AND &7D
     1B3B   AA         TAX
     1B3C   A9 4B      LDA #&4B
     1B3E   18         CLC
.b5
     1B3F   69 05      ADC #&05
     1B41   A8         TAY
     1B42   A5 7C      LDA &7C
     1B44   69 10      ADC #&10
     1B46   85 7C      STA &7C
     1B48   98         TYA
     1B49   CA         DEX
     1B4A   10 F3      BPL &1B3F
     1B4C   8D 7D 2D   STA &2D7D
     1B4F   85 81      STA &81
     1B51   A2 02      LDX #&02
     1B53   8E 7E 2D   STX &2D7E
     1B56   BD 68 2D   LDA &2D68,X
     1B59   85 82      STA &82
     1B5B   4C 52 1C   JMP &1C52
.ep
     1B5E   60         RTS
.pgb0
     1B5F   AD 7C 2D   LDA &2D7C
     1B62   85 80      STA &80
     1B64   AD 7D 2D   LDA &2D7D
     1B67   85 81      STA &81
     1B69   10 18      BPL &1B83
     1B6B   CE 7E 2D   DEC &2D7E
     1B6E   D0 EE      BNE &1B5E
     1B70   49 80      EOR #&80
     1B72   85 81      STA &81
     1B74   A9 10      LDA #&10
     1B76   0D 76 2D   ORA &2D76
     1B79   8D 76 2D   STA &2D76
     1B7C   A9 00      LDA #&00
     1B7E   8D 7D 2D   STA &2D7D
     1B81   F0 4C      BEQ &1BCF
.pgb1
     1B83   AD 7E 2D   LDA &2D7E
     1B86   29 7F      AND #&7F
     1B88   AA         TAX
     1B89   BD 68 2D   LDA &2D68,X
     1B8C   85 82      STA &82
     1B8E   A0 00      LDY #&00
     1B90   B1 8A      LDA (&8A),Y
     1B92   85 70      STA &70
.pgh
     1B94   C8         INY
     1B95   B1 8A      LDA (&8A),Y
     1B97   38         SEC
     1B98   E5 7C      SBC &7C
     1B9A   30 4C      BMI &1BE8
     1B9C   C9 07      CMP #&07
     1B9E   10 48      BPL &1BE8
     1BA0   C8         INY
     1BA1   C8         INY
     1BA2   B1 8A      LDA (&8A),Y
     1BA4   F0 44      BEQ &1BEA
     1BA6   C8         INY
     1BA7   B1 8A      LDA (&8A),Y
     1BA9   38         SEC
     1BAA   ED 7F 2D   SBC &2D7F
     1BAD   30 3C      BMI &1BEB
     1BAF   C9 03      CMP #&03
     1BB1   10 38      BPL &1BEB
     1BB3   A9 E8      LDA #&E8
     1BB5   91 8A      STA (&8A),Y
     1BB7   AA         TAX
     1BB8   A9 07      LDA #&07
     1BBA   A0 2D      LDY #&2D
     1BBC   20 F1 FF   JSR &FFF1
     1BBF   A9 10      LDA #&10
     1BC1   8D 7E 2D   STA &2D7E
     1BC4   A9 80      LDA #&80
     1BC6   0D 7D 2D   ORA &2D7D
     1BC9   8D 7D 2D   STA &2D7D
     1BCC   20 52 1C   JSR &1C52
.bx
     1BCF   A9 23      LDA #&23
     1BD1   85 83      STA &83
     1BD3   A9 70      LDA #&70
     1BD5   85 82      STA &82
     1BD7   4C 52 1C   JMP &1C52
.b9
     1BDA   A9 04      LDA #&04
     1BDC   0D 76 2D   ORA &2D76
     1BDF   8D 76 2D   STA &2D76
     1BE2   A9 00      LDA #&00
     1BE4   8D 7D 2D   STA &2D7D
.x
     1BE7   60         RTS
.pgnh
     1BE8   C8         INY
     1BE9   C8         INY
     1BEA   C8         INY
     1BEB   C4 70      CPY &70
     1BED   30 A5      BMI &1B94
     1BEF   A9 80      LDA #&80
     1BF1   4D 7E 2D   EOR &2D7E
     1BF4   8D 7E 2D   STA &2D7E
     1BF7   30 EE      BMI &1BE7
     1BF9   20 52 1C   JSR &1C52
     1BFC   AD 7F 2D   LDA &2D7F
.xps
     1BFF   C9 00      CMP #&00
     1C01   F0 D7      BEQ &1BDA
     1C03   29 1F      AND #&1F
     1C05   D0 09      BNE &1C10
     1C07   A9 07      LDA #&07
     1C09   A0 2D      LDY #&2D
     1C0B   A2 F0      LDX #&F0
     1C0D   20 F1 FF   JSR &FFF1
.b6
     1C10   AE 7E 2D   LDX &2D7E
     1C13   CA         DEX
     1C14   10 02      BPL &1C18
     1C16   A2 07      LDX #&07
.b7
     1C18   8E 7E 2D   STX &2D7E
     1C1B   BD 68 2D   LDA &2D68,X
     1C1E   85 82      STA &82
     1C20   AD 00 1C   LDA &1C00
     1C23   F0 18      BEQ &1C3D
     1C25   EE 7F 2D   INC &2D7F
     1C28   18         CLC
     1C29   AD 7C 2D   LDA &2D7C
     1C2C   69 08      ADC #&08
     1C2E   8D 7C 2D   STA &2D7C
     1C31   85 80      STA &80
     1C33   90 1D      BCC &1C52
     1C35   EE 7D 2D   INC &2D7D
     1C38   E6 81      INC &81
     1C3A   4C 52 1C   JMP &1C52
.b10
     1C3D   CE 7F 2D   DEC &2D7F
     1C40   38         SEC
     1C41   AD 7C 2D   LDA &2D7C
     1C44   E9 08      SBC #&08
     1C46   8D 7C 2D   STA &2D7C
     1C49   85 80      STA &80
     1C4B   B0 05      BCS &1C52
     1C4D   CE 7D 2D   DEC &2D7D
     1C50   C6 81      DEC &81
.plot_pigeon_sprite
.pb
     1C52   A0 17      LDY #&17
.b8
     1C54   B1 82      LDA (&82),Y
     1C56   51 80      EOR (&80),Y
     1C58   91 80      STA (&80),Y
     1C5A   88         DEY
     1C5B   10 F7      BPL &1C54
     1C5D   60         RTS
.ddu1
.plane_hit
     1C5E   AC 5B 25   LDY &255B
     1C61   C0 09      CPY #&09
     1C63   10 23      BPL &1C88
     1C65   B9 40 25   LDA &2540,Y
     1C68   85 80      STA &80
     1C6A   C8         INY
     1C6B   B9 40 25   LDA &2540,Y
     1C6E   85 81      STA &81
     1C70   C8         INY
     1C71   8C 5B 25   STY &255B
     1C74   A0 04      LDY #&04
     1C76   A9 55      LDA #&55
.ddu2
     1C78   91 80      STA (&80),Y
     1C7A   88         DEY
     1C7B   10 FB      BPL &1C78
     1C7D   A0 09      LDY #&09
     1C7F   0A         ASL A
     1C80   91 80      STA (&80),Y
     1C82   A0 01      LDY #&01
     1C84   A9 FF      LDA #&FF
     1C86   91 80      STA (&80),Y
.ddu3
     1C88   60         RTS
.random1
     1C89   A5 7D      LDA &7D
     1C8B   29 48      AND #&48
     1C8D   69 38      ADC #&38
     1C8F   0A         ASL A
     1C90   0A         ASL A
     1C91   26 7F      ROL &7F
     1C93   26 7E      ROL &7E
     1C95   26 7D      ROL &7D
     1C97   A5 7D      LDA &7D
     1C99   60         RTS
.draw_backgnd_art
     1C9A   A0 00      LDY #&00
.draw_line_art_loop
     1C9C   B9 81 1D   LDA &1D81,Y
     1C9F   20 EE FF   JSR &FFEE
     1CA2   C8         INY
     1CA3   D0 F7      BNE &1C9C
     1CA5   A5 88      LDA &88
     1CA7   85 82      STA &82
     1CA9   A5 89      LDA &89
     1CAB   85 83      STA &83
     1CAD   A9 1F      LDA #&1F
     1CAF   8D 36 2A   STA &2A36
     1CB2   A9 C0      LDA #&C0
     1CB4   85 70      STA &70
     1CB6   A0 00      LDY #&00
.draw_backgnd_sprite_loop
     1CB8   C8         INY
     1CB9   BE 94 1E   LDX &1E94,Y
     1CBC   C8         INY
     1CBD   B9 94 1E   LDA &1E94,Y
     1CC0   24 70      BIT &70
     1CC2   D0 0C      BNE &1CD0
     1CC4   85 89      STA &89
     1CC6   86 88      STX &88
     1CC8   C8         INY
     1CC9   BE 94 1E   LDX &1E94,Y
     1CCC   C8         INY
     1CCD   B9 94 1E   LDA &1E94,Y
.skip1
     1CD0   86 78      STX &78
     1CD2   85 79      STA &79
     1CD4   20 20 2A   JSR &2A20
     1CD7   CC 94 1E   CPY &1E94
     1CDA   30 DC      BMI &1CB8
     1CDC   A9 3F      LDA #&3F
     1CDE   8D 36 2A   STA &2A36
     1CE1   A5 82      LDA &82
     1CE3   85 88      STA &88
     1CE5   A5 83      LDA &83
     1CE7   85 89      STA &89
     1CE9   60         RTS
     1CEA   00         BRK
.plot_clouds
     1CEB   A9 44      LDA #&44
     1CED   85 79      STA &79
     1CEF   A9 FF      LDA #&FF
     1CF1   A2 05      LDX #&05
.mid_outer_loop
     1CF3   A0 00      LDY #&00
     1CF5   84 78      STY &78
.mid_inner_loop
     1CF7   91 78      STA (&78),Y
     1CF9   C8         INY
     1CFA   D0 FB      BNE &1CF7
     1CFC   E6 79      INC &79
     1CFE   CA         DEX
     1CFF   D0 F2      BNE &1CF3
     1D01   A0 1F      LDY #&1F
.cloud_loop2
     1D03   B9 E0 2E   LDA &2EE0,Y
     1D06   91 78      STA (&78),Y
     1D08   88         DEY
     1D09   10 F8      BPL &1D03
     1D0B   A9 2E      LDA #&2E
     1D0D   85 7B      STA &7B
     1D0F   A9 20      LDA #&20
     1D11   85 78      STA &78
     1D13   A2 08      LDX #&08
.next_cloud_sprite
     1D15   BD 5F 2D   LDA &2D5F,X
     1D18   85 7A      STA &7A
     1D1A   A0 3F      LDY #&3F
.next_cloud_byte
     1D1C   B1 7A      LDA (&7A),Y
     1D1E   91 78      STA (&78),Y
     1D20   88         DEY
     1D21   10 F9      BPL &1D1C
     1D23   18         CLC
     1D24   A5 78      LDA &78
     1D26   69 40      ADC #&40
     1D28   85 78      STA &78
     1D2A   90 02      BCC &1D2E
     1D2C   E6 79      INC &79
.skip1
     1D2E   CA         DEX
     1D2F   10 E4      BPL &1D15
     1D31   A0 1F      LDY #&1F
.loop32
     1D33   B9 C0 2E   LDA &2EC0,Y
     1D36   91 78      STA (&78),Y
     1D38   88         DEY
     1D39   10 F8      BPL &1D33
.mirror_loop_1
     1D3B   A0 00      LDY #&00
.mirror_loop_2
     1D3D   A2 07      LDX #&07
.mirror_loop_3
.modify_lower_dest_addr
     1D3F   B9 00 49   LDA &4900,Y
.modify_upper_dest_addr
     1D42   9D 80 41   STA &4180,X
     1D45   C8         INY
     1D46   CA         DEX
     1D47   10 F6      BPL &1D3F
     1D49   18         CLC
     1D4A   AD 43 1D   LDA &1D43
     1D4D   69 08      ADC #&08
     1D4F   8D 43 1D   STA &1D43
     1D52   90 03      BCC &1D57
     1D54   EE 44 1D   INC &1D44
.skip2
     1D57   C0 80      CPY #&80
     1D59   D0 E2      BNE &1D3D
     1D5B   AD 40 1D   LDA &1D40
     1D5E   49 80      EOR #&80
     1D60   8D 40 1D   STA &1D40
     1D63   30 03      BMI &1D68
     1D65   EE 41 1D   INC &1D41
.skip3
     1D68   A9 44      LDA #&44
     1D6A   CD 44 1D   CMP &1D44
     1D6D   D0 CC      BNE &1D3B
     1D6F   8C 43 1D   STY &1D43
     1D72   E8         INX
     1D73   8E 40 1D   STX &1D40
     1D76   A9 49      LDA #&49
     1D78   8D 41 1D   STA &1D41
     1D7B   A9 41      LDA #&41
     1D7D   8D 44 1D   STA &1D44
     1D80   60         RTS
.scenery_line_art
     1D81   12
     1D82   00
     1D83   06
     1D84   19
     1D85   04
     1D86   00
     1D87   00
     1D88   13
     1D89   00
     1D8A   19
     1D8B   05
     1D8C   04
     1D8D   01
     1D8E   17
     1D8F   00
     1D90   19
     1D91   05
     1D92   2C
     1D93   01
     1D94   3C
     1D95   00
     1D96   19
     1D97   04
     1D98   7E
     1D99   04
     1D9A   3E
     1D9B   00
     1D9C   19
     1D9D   05
     1D9E   1A
     1D9F   04
     1DA0   20
     1DA1   00
     1DA2   19
     1DA3   05
     1DA4   84
     1DA5   03
     1DA6   20
     1DA7   00
     1DA8   19
     1DA9   05
     1DAA   52
     1DAB   03
     1DAC   28
     1DAD   00
     1DAE   19
     1DAF   05
     1DB0   20
     1DB1   03
     1DB2   38
     1DB3   00
     1DB4   19
     1DB5   05
     1DB6   16
     1DB7   03
     1DB8   46
     1DB9   00
     1DBA   19
     1DBB   05
     1DBC   16
     1DBD   03
     1DBE   52
     1DBF   00
     1DC0   19
     1DC1   05
     1DC2   20
     1DC3   03
     1DC4   60
     1DC5   00
     1DC6   19
     1DC7   05
     1DC8   52
     1DC9   03
     1DCA   74
     1DCB   00
     1DCC   19
     1DCD   05
     1DCE   BB
     1DCF   03
     1DD0   7C
     1DD1   00
     1DD2   19
     1DD3   04
     1DD4   7E
     1DD5   04
     1DD6   42
     1DD7   00
     1DD8   19
     1DD9   15
     1DDA   1A
     1DDB   04
     1DDC   24
     1DDD   00
     1DDE   19
     1DDF   15
     1DE0   84
     1DE1   03
     1DE2   24
     1DE3   00
     1DE4   19
     1DE5   15
     1DE6   52
     1DE7   03
     1DE8   2C
     1DE9   00
     1DEA   19
     1DEB   15
     1DEC   20
     1DED   03
     1DEE   3C
     1DEF   00
     1DF0   19
     1DF1   04
     1DF2   20
     1DF3   03
     1DF4   64
     1DF5   00
     1DF6   19
     1DF7   15
     1DF8   52
     1DF9   03
     1DFA   78
     1DFB   00
     1DFC   19
     1DFD   15
     1DFE   BB
     1DFF   03
     1E00   80
     1E01   00
     1E02   12
     1E03   00
     1E04   02
     1E05   19
     1E06   04
     1E07   00
     1E08   05
     1E09   17
     1E0A   00
     1E0B   19
     1E0C   05
     1E0D   C4
     1E0E   04
     1E0F   28
     1E10   00
     1E11   19
     1E12   04
     1E13   E2
     1E14   04
     1E15   1C
     1E16   00
     1E17   19
     1E18   05
     1E19   DE
     1E1A   03
     1E1B   38
     1E1C   00
     1E1D   19
     1E1E   04
     1E1F   80
     1E20   02
     1E21   82
     1E22   00
     1E23   19
     1E24   05
     1E25   48
     1E26   03
     1E27   0E
     1E28   01
     1E29   19
     1E2A   05
     1E2B   AC
     1E2C   03
     1E2D   45
     1E2E   01
     1E2F   19
     1E30   05
     1E31   1A
     1E32   04
     1E33   4A
     1E34   01
     1E35   19
     1E36   05
     1E37   00
     1E38   05
     1E39   AE
     1E3A   01
     1E3B   19
     1E3C   04
     1E3D   2C
     1E3E   01
     1E3F   C8
     1E40   00
     1E41   19
     1E42   05
     1E43   8A
     1E44   02
     1E45   40
     1E46   01
     1E47   19
     1E48   05
     1E49   3E
     1E4A   03
     1E4B   04
     1E4C   01
     1E4D   19
     1E4E   04
     1E4F   F4
     1E50   01
     1E51   64
     1E52   00
     1E53   19
     1E54   05
     1E55   FA
     1E56   00
     1E57   DC
     1E58   00
     1E59   19
     1E5A   05
     1E5B   8C
     1E5C   00
     1E5D   54
     1E5E   01
     1E5F   19
     1E60   05
     1E61   00
     1E62   00
     1E63   68
     1E64   01
     1E65   12
     1E66   00
     1E67   04
     1E68   19
     1E69   04
     1E6A   9E
     1E6B   02
     1E6C   96
     1E6D   00
     1E6E   19
     1E6F   15
     1E70   F4
     1E71   01
     1E72   78
     1E73   00
     1E74   19
     1E75   05
     1E76   58
     1E77   02
     1E78   64
     1E79   00
     1E7A   19
     1E7B   05
     1E7C   90
     1E7D   01
     1E7E   5A
     1E7F   00
     1E80   00
     1E81   7D
     1E82   2D
     1E83   20
     1E84   13
     1E85   28
     1E86   A9
     1E87   09
     1E88   85
     1E89   83
     1E8A   A9
     1E8B   F0
     1E8C   85
     1E8D   82
     1E8E   4C
     1E8F   13
     1E90   28
     1E91   A9
     1E92   00
     1E93   8D
.backgnd_sprite_addr_table
     1E94   58
     1E95   A0 24
     1E97   93 73
     1E99   49 71
     1E9B   60 76
     1E9D   99 75
     1E9F   44 73
     1EA1   C9 78
     1EA3   B4 76
     1EA5   C0 24
     1EA7   13 76
     1EA9   93 78
     1EAB   C9 73
     1EAD   49 76
     1EAF   E0 78
     1EB1   44 78
     1EB3   C4 75
     1EB5   E0 24
     1EB7   13 7B
     1EB9   4A 7B
     1EBB   60 7B
     1EBD   C4 7A
     1EBF   00 25
     1EC1   B0 78
     1EC3   20 78
     1EC5   5C 78
     1EC7   20 25
     1EC9   00 78
     1ECB   88 76
     1ECD   60 25
     1ECF   60 70
     1ED1   80 25
     1ED3   E0 72
     1ED5   60 75
     1ED7   E0 77
     1ED9   80 7A
     1EDB   A0 7A
     1EDD   DC 7A
     1EDF   A0 25
     1EE1   60 7A
     1EE3   30 7B
     1EE5   C0 25
     1EE7   08 79
     1EE9   E0 25
     1EEB   28 79
     1EED   00
.end_PIG_02
.end_PIG-02 =  &1EEE 
.draw_stave
.stv
     1EEE   A0 00      LDY #&00
.stave_loop1
     1EF0   B9 0E 1F   LDA &1F0E,Y
     1EF3   20 EE FF   JSR &FFEE
     1EF6   C8         INY
     1EF7   C0 09      CPY #&09
     1EF9   D0 F5      BNE &1EF0
     1EFB   A2 05      LDX #&05
.stave_loop2
     1EFD   A0 09      LDY #&09
.stave_loop3
     1EFF   B9 0E 1F   LDA &1F0E,Y
     1F02   20 EE FF   JSR &FFEE
     1F05   C8         INY
     1F06   C0 15      CPY #&15
     1F08   D0 F5      BNE &1EFF
     1F0A   CA         DEX
     1F0B   D0 F0      BNE &1EFD
     1F0D   60         RTS
.stave_data
.sl
     1F0E   12
     1F0F   00
     1F10   04
     1F11   19
     1F12   04
     1F13   00
     1F14   01
     1F15   EC
     1F16   03
     1F17   19
     1F18   01
     1F19   00
     1F1A   03
     1F1B   00
     1F1C   00
     1F1D   19
     1F1E   00
     1F1F   00
     1F20   FD
     1F21   F0
     1F22   FF
.end_GG_01
.end_GG-01 =  &1F23 
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
     261E   69 70      ADC #&70
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
     266A   AE 70 2D   LDX &2D70
     266D   E0 01      CPX #&01
     266F   F0 27      BEQ &2698
     2671   CA         DEX
     2672   8E 70 2D   STX &2D70
     2675   38         SEC
     2676   A5 86      LDA &86
     2678   E9 08      SBC #&08
     267A   85 86      STA &86
     267C   B0 1A      BCS &2698
     267E   C6 87      DEC &87
     2680   90 16      BCC &2698
.r
     2682   AE 70 2D   LDX &2D70
     2685   E0 47      CPX #&47
     2687   F0 0F      BEQ &2698
     2689   E8         INX
     268A   8E 70 2D   STX &2D70
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
     26AF   AD 76 2D   LDA &2D76
     26B2   09 20      ORA #&20
     26B4   8D 76 2D   STA &2D76
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
     26CC   AD 72 2D   LDA &2D72
     26CF   85 82      STA &82
     26D1   AD 73 2D   LDA &2D73
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
     2770   CC 02 2D   CPY &2D02
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
     2793   AD 70 2D   LDA &2D70
     2796   18         CLC
     2797   69 03      ADC #&03
     2799   91 8A      STA (&8A),Y
     279B   20 B5 27   JSR &27B5
     279E   A9 03      LDA #&03
     27A0   05 71      ORA &71
     27A2   85 71      STA &71
     27A4   A9 01      LDA #&01
     27A6   0D 76 2D   ORA &2D76
     27A9   8D 76 2D   STA &2D76
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
     27F0   CE 7A 2D   DEC &2D7A
     27F3   D0 35      BNE &282A
     27F5   AD 7B 2D   LDA &2D7B
     27F8   8D 7A 2D   STA &2D7A
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
     281F   0D 76 2D   ORA &2D76
     2822   8D 76 2D   STA &2D76
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
     28E6   0D 76 2D   ORA &2D76
     28E9   8D 76 2D   STA &2D76
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
     2905   0D 76 2D   ORA &2D76
     2908   8D 76 2D   STA &2D76
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
     2955   ED 70 2D   SBC &2D70
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
     2971   AD 79 2D   LDA &2D79
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
     2AA5   AD 71 2D   LDA &2D71
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
     2AB7   AD 74 2D   LDA &2D74
     2ABA   85 82      STA &82
     2ABC   AD 75 2D   LDA &2D75
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
     2D02   08
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
     2D75   20
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
.end_GG_02
.end_GG-02 =  &2E00 
Saving file 'BIRDS'
