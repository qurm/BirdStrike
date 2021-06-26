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
     113F   4C 43 15   JMP &1543
.gov2
     1142   1F
     1143   05
     1144   0F
     1145   11
     1146   01
     1147   47 41 4D ...
.stp4
     1150   60         RTS
.stp6
     1151   AD 55 25   LDA &2555
     1154   F0 FA      BEQ &1150
     1156   A5 7A      LDA &7A
     1158   49 80      EOR #&80
     115A   85 7A      STA &7A
     115C   E6 77      INC &77
     115E   68         PLA
     115F   68         PLA
     1160   4C E0 29   JMP &29E0
.bon
     1163   AD 5C 25   LDA &255C
     1166   29 03      AND #&03
     1168   D0 0B      BNE &1175
     116A   A9 0F      LDA #&0F
     116C   20 02 18   JSR &1802
     116F   20 9B 13   JSR &139B
     1172   4C 7B 11   JMP &117B
.bon0
     1175   20 26 18   JSR &1826
     1178   20 1B 19   JSR &191B
.bon11
     117B   20 C3 11   JSR &11C3
     117E   A0 4B      LDY #&4B
.bon1
     1180   F8         SED
     1181   18         CLC
     1182   AD 77 2D   LDA &2D77
     1185   69 02      ADC #&02
     1187   8D 77 2D   STA &2D77
     118A   AD 78 2D   LDA &2D78
     118D   69 00      ADC #&00
     118F   8D 78 2D   STA &2D78
     1192   D8         CLD
     1193   A9 02      LDA #&02
     1195   20 02 18   JSR &1802
     1198   98         TYA
     1199   48         PHA
     119A   A2 E8      LDX #&E8
     119C   A0 2D      LDY #&2D
     119E   A9 07      LDA #&07
     11A0   20 F1 FF   JSR &FFF1
     11A3   20 76 17   JSR &1776
     11A6   68         PLA
     11A7   A8         TAY
     11A8   88         DEY
     11A9   D0 D5      BNE &1180
     11AB   EE DC 11   INC &11DC
     11AE   A2 DC      LDX #&DC
     11B0   A0 11      LDY #&11
     11B2   A9 07      LDA #&07
     11B4   20 F1 FF   JSR &FFF1
     11B7   CE DC 11   DEC &11DC
     11BA   A9 80      LDA #&80
     11BC   0D 76 2D   ORA &2D76
     11BF   8D 76 2D   STA &2D76
     11C2   60         RTS
.wbmsg
     11C3   A0 00      LDY #&00
.wb1
     11C5   B9 D1 11   LDA &11D1,Y
     11C8   20 EE FF   JSR &FFEE
     11CB   C8         INY
     11CC   C0 0B      CPY #&0B
     11CE   D0 F5      BNE &11C5
     11D0   60         RTS
.bmsg
     11D1   11 06 1F 07
     11D5   0F
     11D6   42 4F 4E ...
.bsou
     11DC   12 00 FF FF
     11E0   00 00 00 00
     11E4   FF
.nbk
     11E5   B4
     11E6   16
     11E7   08
     11E8   20
     11E9   7F
.hs
     11EA   00
     11EB   00
     11EC   02
.m7
     11ED   16
     11EE   07
     11EF   17
     11F0   00
     11F1   0A
     11F2   20
     11F3   00
     11F4   00
     11F5   00
     11F6   00
     11F7   00
     11F8   00
.bsk
     11F9   9A
     11FA   94
     11FB   68
     11FC   3F
     11FD   6F
     11FE   34
     11FF   20
     1200   20
     1201   20
     1202   20
     1203   20
     1204   20
     1205   20
     1206   20
     1207   FF
     1208   20
     1209   20
     120A   5F
     120B   7E
     120C   2F
     120D   6D
     120E   20
     120F   78
     1210   20
     1211   20
     1212   20
     1213   20
     1214   20
     1215   20
     1216   20
     1217   7E
     1218   0D
     1219   9A
     121A   96
     121B   6A
     121C   7D
     121D   7E
     121E   25
     121F   20
     1220   2F
     1221   20
     1222   30
     1223   20
     1224   20
     1225   20
     1226   20
     1227   FF
     1228   20
     1229   20
     122A   6A
     122B   7D
     122C   70
     122D   30
     122E   20
     122F   FF
     1230   2C
     1231   20
     1232   30
     1233   20
     1234   20
     1235   2F
     1236   20
     1237   FF
     1238   5F
     1239   3E
     123A   0D
     123B   9A
     123C   94
     123D   6A
     123E   3F
     123F   60
     1240   6F
     1241   34
     1242   FF
     1243   20
     1244   FF
     1245   2F
     1246   21
     1247   78
     1248   2F
     1249   FF
     124A   20
     124B   20
     124C   20
     124D   60
     124E   60
     124F   FF
     1250   20
     1251   FF
     1252   20
     1253   20
     1254   FF
     1255   2F
     1256   21
     1257   FF
     1258   20
     1259   FF
     125A   6F
     125B   30
     125C   20
     125D   7E
     125E   7B
     125F   34
     1260   0D
     1261   9A
     1262   96
     1263   2A
     1264   7D
     1265   70
     1266   7E
     1267   25
     1268   6F
     1269   30
     126A   FF
     126B   20
     126C   20
     126D   6F
     126E   7C
     126F   3F
     1270   20
     1271   20
     1272   2A
     1273   7C
     1274   7E
     1275   27
     1276   20
     1277   6F
     1278   74
     1279   30
     127A   FF
     127B   20
     127C   20
     127D   6F
     127E   30
     127F   FF
     1280   20
     1281   2B
     1282   34
     1283   6D
     1284   78
     1285   24
     1286   1F
     1287   05
     1288   05
     1289   82
     128A   46
     128B   49
     128C   52
     128D   45
     128E   46
     128F   4C
     1290   59
     1291   20
     1292   28
     1293   63
     1294   29
     1295   20
     1296   41
     1297   6E
     1298   64
     1299   72
     129A   65
     129B   77
     129C   20
     129D   46
     129E   72
     129F   69
     12A0   67
     12A1   61
     12A2   61
     12A3   72
     12A4   64
     12A5   0D
     12A6   1F
     12A7   0B
     12A8   08
     12A9   8D
     12AA   83
     12AB   48
     12AC   69
     12AD   67
     12AE   68
     12AF   20
     12B0   53
     12B1   63
     12B2   6F
     12B3   72
     12B4   65
     12B5   1F
     12B6   0B
     12B7   09
     12B8   8D
     12B9   83
     12BA   48
     12BB   69
     12BC   67
     12BD   68
     12BE   20
     12BF   53
     12C0   63
     12C1   6F
     12C2   72
     12C3   65
     12C4   00
.dts
.dots_str
     12C5   1F
     12C6   0B
     12C7   0B
     12C8   2E
     12C9   2E
     12CA   2E
     12CB   2E
     12CC   2E
     12CD   2E
     12CE   2E
     12CF   2E
     12D0   2E
     12D1   2E
     12D2   2E
     12D3   2E
     12D4   2E
     12D5   00
     12D6   1F
     12D7   19
     12D8   0B
.nam
     12D9   61
     12DA   6E
     12DB   64
     12DC   72
     12DD   65
     12DE   77
     12DF   20
     12E0   20
     12E1   00
.ints
.instructions_str
     12E2   1F
     12E3   0E
     12E4   0E
     12E5   8D
     12E6   83
     12E7   4B
     12E8   65
     12E9   79
     12EA   73
     12EB   1F
     12EC   0E
     12ED   0F
     12EE   8D
     12EF   83
     12F0   4B
     12F1   65
     12F2   79
     12F3   73
     12F4   1F
     12F5   06
     12F6   11
     12F7   86
     12F8   5A
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
     1305   2E
     1306   20
     1307   6D
     1308   6F
     1309   76
     130A   65
     130B   20
     130C   6C
     130D   65
     130E   66
     130F   74
     1310   1F
     1311   06
     1312   12
     1313   86
     1314   58
     1315   20
     1316   2E
     1317   2E
     1318   2E
     1319   2E
     131A   2E
     131B   2E
     131C   2E
     131D   2E
     131E   2E
     131F   2E
     1320   2E
     1321   20
     1322   6D
     1323   6F
     1324   76
     1325   65
     1326   20
     1327   72
     1328   69
     1329   67
     132A   68
     132B   74
     132C   1F
     132D   06
     132E   13
     132F   86
     1330   52
     1331   45
     1332   54
     1333   55
     1334   52
     1335   4E
     1336   20
     1337   2E
     1338   2E
     1339   2E
     133A   2E
     133B   2E
     133C   2E
     133D   2E
     133E   2E
     133F   2E
     1340   2E
     1341   2E
     1342   20
     1343   73
     1344   68
     1345   6F
     1346   6F
     1347   74
     1348   1F
     1349   06
     134A   14
     134B   86
     134C   53
     134D   2F
     134E   51
     134F   20
     1350   2E
     1351   2E
     1352   2E
     1353   2E
     1354   2E
     1355   2E
     1356   2E
     1357   20
     1358   73
     1359   6F
     135A   75
     135B   6E
     135C   64
     135D   20
     135E   6F
     135F   6E
     1360   2F
     1361   6F
     1362   66
     1363   66
     1364   1F
     1365   06
     1366   15
     1367   86
     1368   52
     1369   20
     136A   2E
     136B   2E
     136C   2E
     136D   2E
     136E   2E
     136F   2E
     1370   2E
     1371   2E
     1372   2E
     1373   2E
     1374   2E
     1375   2E
     1376   2E
     1377   2E
     1378   2E
     1379   2E
     137A   2E
     137B   20
     137C   72
     137D   65
     137E   73
     137F   74
     1380   00
.sps
     1381   1F
     1382   07
     1383   18
     1384   81
     1385   88
     1386   50
     1387   72
     1388   65
     1389   73
     138A   73
     138B   20
     138C   73
     138D   70
     138E   61
     138F   63
     1390   65
     1391   20
     1392   74
     1393   6F
     1394   20
     1395   70
     1396   6C
     1397   61
     1398   79
     1399   2E
     139A   00
.stmv
     139B   A0 0A      LDY #&0A
.stm4
     139D   B9 31 14   LDA &1431,Y
     13A0   20 EE FF   JSR &FFEE
     13A3   88         DEY
     13A4   10 F7      BPL &139D
     13A6   A9 80      LDA #&80
     13A8   8D C3 13   STA &13C3
     13AB   A9 00      LDA #&00
     13AD   8D CF 13   STA &13CF
     13B0   A9 04      LDA #&04
     13B2   85 70      STA &70
.stm1
     13B4   A9 1D      LDA #&1D
     13B6   20 EE FF   JSR &FFEE
     13B9   A9 00      LDA #&00
     13BB   20 EE FF   JSR &FFEE
     13BE   20 EE FF   JSR &FFEE
     13C1   38         SEC
.stm2
     13C2   A9 00      LDA #&00
     13C4   E9 80      SBC #&80
     13C6   8D C3 13   STA &13C3
     13C9   08         PHP
     13CA   20 EE FF   JSR &FFEE
     13CD   28         PLP
.stm3
     13CE   A9 00      LDA #&00
     13D0   E9 00      SBC #&00
     13D2   8D CF 13   STA &13CF
     13D5   20 EE FF   JSR &FFEE
     13D8   20 0B 1F   JSR &1F0B
     13DB   C6 70      DEC &70
     13DD   D0 D5      BNE &13B4
.stm5
     13DF   AD 5C 25   LDA &255C
     13E2   8D 08 22   STA &2208
     13E5   A9 00      LDA #&00
     13E7   8D 5C 25   STA &255C
     13EA   A9 26      LDA #&26
     13EC   8D 0C 22   STA &220C
     13EF   A9 88      LDA #&88
     13F1   8D 0B 22   STA &220B
.stm6
     13F4   18         CLC
     13F5   AD 0B 22   LDA &220B
     13F8   8D 59 25   STA &2559
     13FB   AD 0C 22   LDA &220C
     13FE   69 0A      ADC #&0A
     1400   8D 0C 22   STA &220C
     1403   8D 5A 25   STA &255A
     1406   20 26 18   JSR &1826
     1409   8E 70 1A   STX &1A70
     140C   EE 5C 25   INC &255C
.stm8
     140F   20 53 18   JSR &1853
     1412   D0 FB      BNE &140F
     1414   20 26 18   JSR &1826
     1417   20 1B 19   JSR &191B
     141A   A9 3C      LDA #&3C
     141C   20 02 18   JSR &1802
     141F   AD 5C 25   LDA &255C
     1422   C9 04      CMP #&04
     1424   D0 CE      BNE &13F4
     1426   AD 08 22   LDA &2208
     1429   8D 5C 25   STA &255C
     142C   A9 1A      LDA #&1A
     142E   4C EE FF   JMP &FFEE
.stm10
     1431   10 03 FF 04
     1435   0F 02 0F 00
     1439   F0 18
     143B   1A
.gend
     143C   A9 00      LDA #&00
     143E   8D EA 11   STA &11EA
     1441   AD 78 2D   LDA &2D78
     1444   CD EC 11   CMP &11EC
     1447   90 19      BCC &1462
     1449   D0 08      BNE &1453
     144B   AD 77 2D   LDA &2D77
     144E   CD EB 11   CMP &11EB
     1451   90 0F      BCC &1462
.ge0
     1453   AD 77 2D   LDA &2D77
     1456   8D EB 11   STA &11EB
     1459   AD 78 2D   LDA &2D78
     145C   8D EC 11   STA &11EC
     145F   CE EA 11   DEC &11EA
.ge1
     1462   A9 16      LDA #&16
     1464   20 EE FF   JSR &FFEE
     1467   A9 07      LDA #&07
     1469   20 EE FF   JSR &FFEE
     146C   A2 F9      LDX #&F9
     146E   A0 11      LDY #&11
     1470   20 0E 15   JSR &150E
     1473   A9 1F      LDA #&1F
     1475   20 EE FF   JSR &FFEE
     1478   A9 05      LDA #&05
     147A   20 EE FF   JSR &FFEE
     147D   A9 0B      LDA #&0B
     147F   20 EE FF   JSR &FFEE
     1482   AD EC 11   LDA &11EC
     1485   20 FA 14   JSR &14FA
     1488   AD EB 11   LDA &11EB
     148B   20 FA 14   JSR &14FA
     148E   A9 30      LDA #&30
     1490   20 EE FF   JSR &FFEE
     1493   A2 C5      LDX #&C5
     1495   A0 12      LDY #&12
     1497   20 0E 15   JSR &150E
     149A   A2 E2      LDX #&E2
     149C   A0 12      LDY #&12
     149E   20 0E 15   JSR &150E
     14A1   A9 1F      LDA #&1F
     14A3   20 EE FF   JSR &FFEE
     14A6   A9 1A      LDA #&1A
     14A8   20 EE FF   JSR &FFEE
     14AB   A9 0B      LDA #&0B
     14AD   20 EE FF   JSR &FFEE
     14B0   AD EA 11   LDA &11EA
     14B3   F0 12      BEQ &14C7
     14B5   A9 15      LDA #&15
     14B7   A2 00      LDX #&00
     14B9   20 F4 FF   JSR &FFF4
     14BC   8A         TXA
     14BD   A2 E5      LDX #&E5
     14BF   A0 11      LDY #&11
     14C1   20 F1 FF   JSR &FFF1
     14C4   4C D4 14   JMP &14D4
.ge3
     14C7   A0 FF      LDY #&FF
.ge6
     14C9   C8         INY
     14CA   B9 D9 12   LDA &12D9,Y
     14CD   20 E3 FF   JSR &FFE3
     14D0   C9 20      CMP #&20
     14D2   10 F5      BPL &14C9
.ge7
     14D4   A0 02      LDY #&02
.ge5
     14D6   B9 ED 11   LDA &11ED,Y
     14D9   20 EE FF   JSR &FFEE
     14DC   C8         INY
     14DD   C0 0D      CPY #&0D
     14DF   D0 F5      BNE &14D6
     14E1   A9 64      LDA #&64
     14E3   20 02 18   JSR &1802
.space
     14E6   A9 1A      LDA #&1A
     14E8   20 EE FF   JSR &FFEE
     14EB   A2 81      LDX #&81
     14ED   A0 13      LDY #&13
     14EF   20 0E 15   JSR &150E
.ge4
     14F2   A2 9D      LDX #&9D
     14F4   20 4A 19   JSR &194A
     14F7   D0 F9      BNE &14F2
     14F9   60         RTS
.whs
     14FA   48         PHA
     14FB   4A         LSR A
     14FC   4A         LSR A
     14FD   4A         LSR A
     14FE   4A         LSR A
     14FF   18         CLC
     1500   69 30      ADC #&30
     1502   20 E3 FF   JSR &FFE3
     1505   68         PLA
     1506   29 0F      AND #&0F
     1508   18         CLC
     1509   69 30      ADC #&30
     150B   4C E3 FF   JMP &FFE3
.wrs
.write_string
     150E   8E 18 15   STX &1518
     1511   8C 19 15   STY &1519
     1514   A0 FF      LDY #&FF
.wr1
     1516   C8         INY
.modify_string_addr
     1517   B9 C5 12   LDA &12C5,Y
     151A   20 E3 FF   JSR &FFE3
     151D   C9 00      CMP #&00
     151F   D0 F5      BNE &1516
     1521   60         RTS
.end_SS_01
.end_SS_01 =  &1522 
.game
     1522   A9 C8      LDA #&C8
     1524   A2 03      LDX #&03
     1526   A0 00      LDY #&00
     1528   20 F4 FF   JSR &FFF4
     152B   20 E6 14   JSR &14E6
     152E   A2 01      LDX #&01
     1530   A9 04      LDA #&04
     1532   A0 00      LDY #&00
     1534   20 F4 FF   JSR &FFF4
     1537   AD 0C 02   LDA &020C
     153A   8D 95 19   STA &1995
     153D   AD 0D 02   LDA &020D
     1540   8D 96 19   STA &1996
.newgame
     1543   20 3C 14   JSR &143C
     1546   20 8E 15   JSR &158E
.GO
     1549   20 A6 1C   JSR &1CA6
     154C   20 2D 26   JSR &262D
     154F   20 82 28   JSR &2882
     1552   20 E4 27   JSR &27E4
     1555   20 51 26   JSR &2651
     1558   20 C6 26   JSR &26C6
     155B   20 42 27   JSR &2742
     155E   20 95 2A   JSR &2A95
     1561   20 41 2A   JSR &2A41
     1564   20 FC 1A   JSR &1AFC
     1567   20 AC 19   JSR &19AC
     156A   20 02 17   JSR &1702
     156D   20 53 19   JSR &1953
     1570   4C 49 15   JMP &1549
     1573   28 63 29 ...
.start_game
     158E   A9 05      LDA #&05
     1590   85 70      STA &70
     1592   20 18 26   JSR &2618
     1595   A9 49      LDA #&49
     1597   20 1B 19   JSR &191B
     159A   A9 16      LDA #&16
     159C   20 EE FF   JSR &FFEE
     159F   A9 02      LDA #&02
     15A1   20 EE FF   JSR &FFEE
     15A4   A9 00      LDA #&00
     15A6   8D DE 17   STA &17DE
     15A9   85 8E      STA &8E
     15AB   8D 5C 25   STA &255C
     15AE   8D 54 25   STA &2554
     15B1   8D 55 25   STA &2555
     15B4   8D 77 2D   STA &2D77
     15B7   8D 78 2D   STA &2D78
     15BA   85 88      STA &88
     15BC   18         CLC
     15BD   A9 20      LDA #&20
     15BF   8D 79 2D   STA &2D79
     15C2   A9 03      LDA #&03
     15C4   8D 7A 2D   STA &2D7A
     15C7   A9 2A      LDA #&2A
     15C9   8D 7B 2D   STA &2D7B
     15CC   A9 02      LDA #&02
     15CE   85 71      STA &71
     15D0   A9 2D      LDA #&2D
     15D2   85 8B      STA &8B
     15D4   85 8D      STA &8D
     15D6   85 76      STA &76
     15D8   A9 47      LDA #&47
     15DA   85 8C      STA &8C
     15DC   A9 0A      LDA #&0A
     15DE   85 8A      STA &8A
     15E0   A9 13      LDA #&13
     15E2   85 75      STA &75
     15E4   A2 0F      LDX #&0F
     15E6   A0 07      LDY #&07
.co1
     15E8   20 00 26   JSR &2600
     15EB   CA         DEX
     15EC   E0 07      CPX #&07
     15EE   D0 F8      BNE &15E8
     15F0   86 7D      STX &7D
     15F2   A9 03      LDA #&03
     15F4   8D 56 25   STA &2556
     15F7   A9 2F      LDA #&2F
     15F9   85 89      STA &89
     15FB   A9 F0      LDA #&F0
     15FD   8D 71 2D   STA &2D71
     1600   A9 00      LDA #&00
     1602   8D 09 22   STA &2209
.bf
     1605   20 26 18   JSR &1826
     1608   8E 70 1A   STX &1A70
     160B   EE 5C 25   INC &255C
     160E   AD 79 2D   LDA &2D79
     1611   C9 0F      CMP #&0F
     1613   30 10      BMI &1625
     1615   AD 5C 25   LDA &255C
     1618   29 01      AND #&01
     161A   F0 09      BEQ &1625
     161C   CE 79 2D   DEC &2D79
     161F   CE 79 2D   DEC &2D79
     1622   CE 71 2D   DEC &2D71
.b0
     1625   EE 09 22   INC &2209
     1628   EE 09 22   INC &2209
     162B   A9 0C      LDA #&0C
     162D   20 EE FF   JSR &FFEE
     1630   A9 9A      LDA #&9A
     1632   A2 14      LDX #&14
     1634   20 F4 FF   JSR &FFF4
     1637   20 08 1D   JSR &1D08
     163A   20 B7 1C   JSR &1CB7
     163D   20 0B 1F   JSR &1F0B
     1640   20 76 17   JSR &1776
     1643   A9 00      LDA #&00
     1645   8D 5B 25   STA &255B
     1648   8D 76 2D   STA &2D76
     164B   8D 7D 2D   STA &2D7D
     164E   A0 54      LDY #&54
.b1
     1650   99 0A 2D   STA &2D0A,Y
     1653   88         DEY
     1654   D0 FA      BNE &1650
     1656   AD 09 22   LDA &2209
     1659   8D 47 2D   STA &2D47
     165C   A9 06      LDA #&06
     165E   8D 0A 2D   STA &2D0A
     1661   A9 1E      LDA #&1E
     1663   8D 13 2D   STA &2D13
     1666   A9 30      LDA #&30
     1668   8D 5A 25   STA &255A
     166B   A9 88      LDA #&88
     166D   8D 59 25   STA &2559
     1670   A9 80      LDA #&80
     1672   8D 57 25   STA &2557
     1675   A9 32      LDA #&32
     1677   8D 58 25   STA &2558
     167A   AE 56 25   LDX &2556
.pmi
     167D   20 97 19   JSR &1997
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
     169A   9D 13 2D   STA &2D13,X
     169D   E8         INX
     169E   98         TYA
     169F   18         CLC
     16A0   69 50      ADC #&50
     16A2   9D 13 2D   STA &2D13,X
     16A5   A8         TAY
     16A6   E8         INX
     16A7   A5 81      LDA &81
     16A9   69 00      ADC #&00
     16AB   9D 13 2D   STA &2D13,X
     16AE   85 81      STA &81
     16B0   18         CLC
     16B1   E8         INX
     16B2   A5 82      LDA &82
     16B4   69 0A      ADC #&0A
     16B6   85 82      STA &82
     16B8   9D 13 2D   STA &2D13,X
     16BB   E8         INX
     16BC   A9 D0      LDA #&D0
     16BE   9D 13 2D   STA &2D13,X
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
     16D7   20 04 2A   JSR &2A04
     16DA   C8         INY
     16DB   C8         INY
     16DC   C4 70      CPY &70
     16DE   30 EC      BMI &16CC
     16E0   20 56 1A   JSR &1A56
.sgun
.player_gun_initialise
     16E3   A9 20      LDA #&20
     16E5   8D 70 2D   STA &2D70
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
     16FF   4C 1B 19   JMP &191B
.sor
     1702   AD 76 2D   LDA &2D76
     1705   F0 6F      BEQ &1776
     1707   F8         SED
     1708   29 02      AND #&02
     170A   F0 14      BEQ &1720
     170C   18         CLC
     170D   A9 15      LDA #&15
     170F   6D 77 2D   ADC &2D77
     1712   8D 77 2D   STA &2D77
     1715   AD 78 2D   LDA &2D78
     1718   69 00      ADC #&00
     171A   8D 78 2D   STA &2D78
     171D   20 7B 1C   JSR &1C7B
.s1
     1720   A9 40      LDA #&40
     1722   2C 76 2D   BIT &2D76
     1725   F0 1C      BEQ &1743
     1727   18         CLC
     1728   A9 01      LDA #&01
.wng
     172A   6D 77 2D   ADC &2D77
     172D   8D 77 2D   STA &2D77
     1730   AD 78 2D   LDA &2D78
     1733   69 00      ADC #&00
     1735   8D 78 2D   STA &2D78
     1738   D8         CLD
     1739   A2 DC      LDX #&DC
     173B   A0 11      LDY #&11
     173D   A9 07      LDA #&07
     173F   20 F1 FF   JSR &FFF1
     1742   F8         SED
.s4
     1743   A9 10      LDA #&10
     1745   2C 76 2D   BIT &2D76
     1748   F0 1A      BEQ &1764
     174A   18         CLC
     174B   A9 0A      LDA #&0A
.pig
     174D   6D 77 2D   ADC &2D77
     1750   8D 77 2D   STA &2D77
     1753   AD 78 2D   LDA &2D78
     1756   69 00      ADC #&00
     1758   8D 78 2D   STA &2D78
     175B   D8         CLD
     175C   20 53 18   JSR &1853
     175F   D0 03      BNE &1764
     1761   20 63 11   JSR &1163
.s2
     1764   D8         CLD
     1765   20 AF 17   JSR &17AF
     1768   AD 76 2D   LDA &2D76
     176B   10 03      BPL &1770
     176D   4C 12 18   JMP &1812
.s3
     1770   A9 00      LDA #&00
     1772   8D 76 2D   STA &2D76
     1775   60         RTS
.s7
.score_update_screen
     1776   A9 34      LDA #&34
     1778   85 81      STA &81
     177A   A9 B0      LDA #&B0
     177C   85 80      STA &80
     177E   A9 24      LDA #&24
     1780   85 83      STA &83
     1782   A9 F0      LDA #&F0
     1784   2D 78 2D   AND &2D78
     1787   20 3D 26   JSR &263D
     178A   A9 0F      LDA #&0F
     178C   2D 78 2D   AND &2D78
     178F   0A         ASL A
     1790   0A         ASL A
     1791   0A         ASL A
     1792   0A         ASL A
     1793   20 3D 26   JSR &263D
     1796   A9 F0      LDA #&F0
     1798   2D 77 2D   AND &2D77
     179B   20 3D 26   JSR &263D
     179E   A9 0F      LDA #&0F
     17A0   2D 77 2D   AND &2D77
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
     17B6   AC 78 2D   LDY &2D78
     17B9   C0 05      CPY #&05
     17BB   30 20      BMI &17DD
     17BD   0D DE 17   ORA &17DE
     17C0   8D DE 17   STA &17DE
     17C3   20 DF 17   JSR &17DF
.exg1
     17C6   A9 02      LDA #&02
     17C8   2C DE 17   BIT &17DE
     17CB   D0 10      BNE &17DD
     17CD   AC 78 2D   LDY &2D78
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
     17DF   20 97 19   JSR &1997
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
     1814   8D 76 2D   STA &2D76
     1817   18         CLC
     1818   A5 88      LDA &88
     181A   69 40      ADC #&40
     181C   85 88      STA &88
     181E   A9 64      LDA #&64
     1820   20 02 18   JSR &1802
     1823   4C 05 16   JMP &1605
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
.patch
     1845   A5 7D      LDA &7D
     1847   10 06      BPL &184F
     1849   A5 80      LDA &80
     184B   49 C0      EOR #&C0
     184D   85 80      STA &80
.patch2
     184F   AD 79 2D   LDA &2D79
     1852   60         RTS
.nxno
     1853   EE 70 1A   INC &1A70
     1856   AC 70 1A   LDY &1A70
     1859   B9 70 1A   LDA &1A70,Y
     185C   85 70      STA &70
     185E   29 0E      AND #&0E
     1860   C9 08      CMP #&08
     1862   10 0A      BPL &186E
     1864   18         CLC
     1865   6D 59 25   ADC &2559
     1868   85 80      STA &80
     186A   A9 00      LDA #&00
     186C   F0 0A      BEQ &1878
.n1
     186E   18         CLC
     186F   6D 59 25   ADC &2559
     1872   69 78      ADC #&78
     1874   85 80      STA &80
     1876   A9 02      LDA #&02
.n2
     1878   6D 5A 25   ADC &255A
     187B   85 81      STA &81
     187D   A9 20      LDA #&20
     187F   85 83      STA &83
     1881   20 B3 18   JSR &18B3
     1884   18         CLC
     1885   AD 59 25   LDA &2559
     1888   69 20      ADC #&20
     188A   8D 59 25   STA &2559
     188D   90 03      BCC &1892
     188F   EE 5A 25   INC &255A
.n3
     1892   20 E7 18   JSR &18E7
     1895   18         CLC
     1896   A5 80      LDA &80
     1898   69 08      ADC #&08
     189A   85 80      STA &80
     189C   90 02      BCC &18A0
     189E   E6 81      INC &81
.n4
     18A0   18         CLC
     18A1   A5 82      LDA &82
     18A3   69 08      ADC #&08
     18A5   85 82      STA &82
     18A7   90 02      BCC &18AB
     18A9   E6 83      INC &83
.n5
     18AB   20 E7 18   JSR &18E7
     18AE   C8         INY
     18AF   B9 70 1A   LDA &1A70,Y
     18B2   60         RTS
.chnot
     18B3   A9 80      LDA #&80
     18B5   24 70      BIT &70
     18B7   F0 05      BEQ &18BE
     18B9   A9 00      LDA #&00
     18BB   85 82      STA &82
     18BD   60         RTS
.c1
     18BE   4A         LSR A
     18BF   24 70      BIT &70
     18C1   F0 05      BEQ &18C8
     18C3   A9 10      LDA #&10
     18C5   85 82      STA &82
     18C7   60         RTS
.c2
     18C8   4A         LSR A
     18C9   24 70      BIT &70
     18CB   F0 05      BEQ &18D2
     18CD   A9 20      LDA #&20
     18CF   85 82      STA &82
     18D1   60         RTS
.c3
     18D2   4A         LSR A
     18D3   24 70      BIT &70
     18D5   F0 05      BEQ &18DC
     18D7   A9 30      LDA #&30
     18D9   85 82      STA &82
     18DB   60         RTS
.c4
     18DC   A9 01      LDA #&01
     18DE   24 70      BIT &70
     18E0   F0 04      BEQ &18E6
     18E2   A9 40      LDA #&40
     18E4   85 82      STA &82
.c5
     18E6   60         RTS
.pno
     18E7   98         TYA
     18E8   48         PHA
     18E9   A0 07      LDY #&07
     18EB   18         CLC
     18EC   A5 80      LDA &80
     18EE   69 78      ADC #&78
     18F0   85 84      STA &84
     18F2   A5 81      LDA &81
     18F4   69 02      ADC #&02
     18F6   85 85      STA &85
     18F8   A5 80      LDA &80
     18FA   29 07      AND #&07
     18FC   49 07      EOR #&07
     18FE   85 74      STA &74
     1900   C9 07      CMP #&07
     1902   10 0B      BPL &190F
.pnbot
     1904   B1 82      LDA (&82),Y
     1906   11 84      ORA (&84),Y
     1908   91 84      STA (&84),Y
     190A   88         DEY
     190B   C4 74      CPY &74
     190D   D0 F5      BNE &1904
.pntop
     190F   B1 82      LDA (&82),Y
     1911   11 80      ORA (&80),Y
     1913   91 80      STA (&80),Y
     1915   88         DEY
     1916   10 F7      BPL &190F
     1918   68         PLA
     1919   A8         TAY
     191A   60         RTS
.playTune
.tune
     191B   85 70      STA &70
.t1
     191D   A4 70      LDY &70
     191F   B9 A0 1A   LDA &1AA0,Y
     1922   F0 1A      BEQ &193E
     1924   8D FC 2D   STA &2DFC
     1927   C8         INY
     1928   B9 A0 1A   LDA &1AA0,Y
     192B   8D FE 2D   STA &2DFE
     192E   A2 F8      LDX #&F8
     1930   A0 2D      LDY #&2D
     1932   A9 07      LDA #&07
     1934   20 F1 FF   JSR &FFF1
     1937   E6 70      INC &70
     1939   E6 70      INC &70
     193B   4C 1D 19   JMP &191D
.t3
     193E   A9 80      LDA #&80
     1940   A2 FA      LDX #&FA
     1942   20 F4 FF   JSR &FFF4
     1945   E0 0F      CPX #&0F
     1947   30 F5      BMI &193E
     1949   60         RTS
.keyboardScan
.key
     194A   A9 81      LDA #&81
     194C   A0 FF      LDY #&FF
     194E   20 F4 FF   JSR &FFF4
     1951   E8         INX
     1952   60         RTS
.check_key_press
.opt
.checkQkey
     1953   A2 EF      LDX #&EF
     1955   20 4A 19   JSR &194A
     1958   D0 0A      BNE &1964
     195A   A9 8E      LDA #&8E
     195C   8D 0C 02   STA &020C
     195F   A9 19      LDA #&19
     1961   8D 0D 02   STA &020D
.op1
.checkSkey
     1964   A2 AE      LDX #&AE
     1966   20 4A 19   JSR &194A
     1969   D0 0C      BNE &1977
     196B   AD 95 19   LDA &1995
     196E   8D 0C 02   STA &020C
     1971   AD 96 19   LDA &1996
     1974   8D 0D 02   STA &020D
.op2
.checkRkey
     1977   A2 CC      LDX #&CC
     1979   20 4A 19   JSR &194A
     197C   D0 0F      BNE &198D
.op3
     197E   A9 81      LDA #&81
     1980   A0 01      LDY #&01
     1982   A2 00      LDX #&00
     1984   20 F4 FF   JSR &FFF4
     1987   B0 F5      BCS &197E
     1989   E0 52      CPX #&52
     198B   F0 F1      BEQ &197E
.op5
.checkKeyComplete
     198D   60         RTS
.mute
     198E   C9 07      CMP #&07
     1990   F0 FB      BEQ &198D
.mu1
     1992   6C 95 19   JMP (&1995)
.soun
     1995   EB E7
.end_SS_03
.end_SS_03 =  &1997 
.mini
.plot_gun_life_indicator
     1997   A9 10      LDA #&10
     1999   85 82      STA &82
     199B   A9 21      LDA #&21
     199D   85 83      STA &83
     199F   AD 57 25   LDA &2557
     19A2   85 80      STA &80
     19A4   AD 58 25   LDA &2558
     19A7   85 81      STA &81
     19A9   4C 6F 1C   JMP &1C6F
.gun_hit_display
.h0
     19AC   A9 20      LDA #&20
     19AE   2C 76 2D   BIT &2D76
     19B1   D0 06      BNE &19B9
     19B3   AD 55 25   LDA &2555
     19B6   D0 34      BNE &19EC
.hreturn
     19B8   60         RTS
.h1
     19B9   A2 00      LDX #&00
     19BB   A0 07      LDY #&07
     19BD   20 00 26   JSR &2600
     19C0   A9 07      LDA #&07
     19C2   A0 2D      LDY #&2D
     19C4   A2 E0      LDX #&E0
     19C6   20 F1 FF   JSR &FFF1
     19C9   A9 FF      LDA #&FF
     19CB   8D 55 25   STA &2555
     19CE   A9 60      LDA #&60
     19D0   8D 41 2A   STA &2A41
     19D3   8D E4 27   STA &27E4
     19D6   8D 51 26   STA &2651
     19D9   8D 42 27   STA &2742
     19DC   20 B7 26   JSR &26B7
     19DF   A9 22      LDA #&22
     19E1   8D BB 26   STA &26BB
     19E4   A9 10      LDA #&10
     19E6   8D BA 26   STA &26BA
     19E9   4C B7 26   JMP &26B7
.h12
     19EC   CE 55 25   DEC &2555
     19EF   AD 55 25   LDA &2555
     19F2   C9 FE      CMP #&FE
     19F4   D0 07      BNE &19FD
     19F6   A2 00      LDX #&00
     19F8   A0 00      LDY #&00
     19FA   4C 00 26   JMP &2600
.h3
     19FD   C9 DC      CMP #&DC
     19FF   D0 0B      BNE &1A0C
     1A01   20 B7 26   JSR &26B7
     1A04   A9 38      LDA #&38
     1A06   8D BA 26   STA &26BA
     1A09   4C B7 26   JMP &26B7
.h4
     1A0C   C9 8C      CMP #&8C
     1A0E   D0 0B      BNE &1A1B
     1A10   20 B7 26   JSR &26B7
     1A13   A9 60      LDA #&60
     1A15   8D BA 26   STA &26BA
     1A18   4C B7 26   JMP &26B7
.h5
     1A1B   C9 01      CMP #&01
     1A1D   D0 99      BNE &19B8
     1A1F   CE 56 25   DEC &2556
     1A22   D0 03      BNE &1A27
     1A24   4C 26 11   JMP &1126
.h5a
     1A27   20 B7 26   JSR &26B7
     1A2A   20 E3 16   JSR &16E3
     1A2D   AC 13 2D   LDY &2D13
.h6
     1A30   B1 75      LDA (&75),Y
     1A32   C9 C0      CMP #&C0
     1A34   D0 19      BNE &1A4F
     1A36   88         DEY
     1A37   B1 75      LDA (&75),Y
     1A39   10 15      BPL &1A50
     1A3B   49 80      EOR #&80
     1A3D   91 75      STA (&75),Y
     1A3F   88         DEY
     1A40   B1 75      LDA (&75),Y
     1A42   85 79      STA &79
     1A44   88         DEY
     1A45   B1 75      LDA (&75),Y
     1A47   85 78      STA &78
     1A49   20 04 2A   JSR &2A04
     1A4C   4C 52 1A   JMP &1A52
.h8
     1A4F   88         DEY
.h9
     1A50   88         DEY
     1A51   88         DEY
.h10
     1A52   88         DEY
     1A53   88         DEY
     1A54   D0 DA      BNE &1A30
.h7
     1A56   A9 EA      LDA #&EA
     1A58   8D 41 2A   STA &2A41
     1A5B   8D 42 27   STA &2742
     1A5E   8D E4 27   STA &27E4
     1A61   8D 51 26   STA &2651
     1A64   38         SEC
     1A65   AD 57 25   LDA &2557
     1A68   E9 18      SBC #&18
     1A6A   8D 57 25   STA &2557
     1A6D   4C 97 19   JMP &1997
.end_PIG_01
.end_PIG-01 =  &1A70 
.nl
     1A70   0D
     1A71   4A
     1A72   18
     1A73   8C
     1A74   8E
     1A75   1C
     1A76   8A
     1A77   84
     1A78   14
     1A79   82
     1A7A   20
     1A7B   44
     1A7C   05
     1A7D   00
     1A7E   48
     1A7F   18
     1A80   86
     1A81   84
     1A82   14
     1A83   86
     1A84   84
     1A85   14
     1A86   88
     1A87   2A
     1A88   4E
     1A89   05
     1A8A   00
     1A8B   4A
     1A8C   18
     1A8D   8C
     1A8E   8E
     1A8F   1C
     1A90   8A
     1A91   84
     1A92   14
     1A93   82
     1A94   20
     1A95   44
     1A96   00
     1A97   44
     1A98   42
     1A99   42
     1A9A   44
     1A9B   46
     1A9C   24
     1A9D   14
     1A9E   05
     1A9F   00
.tl
     1AA0   65
     1AA1   17
     1AA2   5D
     1AA3   05
     1AA4   59
     1AA5   0A
     1AA6   65
     1AA7   05
     1AA8   79
     1AA9   0A
     1AAA   81
     1AAB   05
     1AAC   89
     1AAD   1E
     1AAE   79
     1AAF   1E
     1AB0   00
     1AB1   6D
     1AB2   17
     1AB3   75
     1AB4   05
     1AB5   79
     1AB6   0A
     1AB7   75
     1AB8   05
     1AB9   79
     1ABA   0A
     1ABB   6D
     1ABC   05
     1ABD   65
     1ABE   1E
     1ABF   59
     1AC0   1E
     1AC1   00
     1AC2   65
     1AC3   17
     1AC4   5D
     1AC5   05
     1AC6   59
     1AC7   0A
     1AC8   65
     1AC9   05
     1ACA   79
     1ACB   0A
     1ACC   81
     1ACD   05
     1ACE   89
     1ACF   1E
     1AD0   79
     1AD1   0F
     1AD2   00
     1AD3   79
     1AD4   0F
     1AD5   81
     1AD6   0F
     1AD7   81
     1AD8   0F
     1AD9   79
     1ADA   0F
     1ADB   75
     1ADC   0F
     1ADD   79
     1ADE   1E
     1ADF   00
     1AE0   59
     1AE1   05
     1AE2   59
     1AE3   05
     1AE4   59
     1AE5   05
     1AE6   49
     1AE7   0F
     1AE8   00
     1AE9   41
     1AEA   05
     1AEB   35
     1AEC   0A
     1AED   39
     1AEE   05
     1AEF   3D
     1AF0   05
     1AF1   41
     1AF2   05
     1AF3   65
     1AF4   0A
     1AF5   65
     1AF6   0A
     1AF7   55
     1AF8   14
     1AF9   00
     1AFA   14
     1AFB   00
.pg
     1AFC   A9 23      LDA #&23
     1AFE   85 83      STA &83
     1B00   AD 7D 2D   LDA &2D7D
     1B03   D0 77      BNE &1B7C
     1B05   A9 42      LDA #&42
     1B07   2C 76 2D   BIT &2D76
     1B0A   F0 6F      BEQ &1B7B
     1B0C   A9 02      LDA #&02
     1B0E   2C 54 25   BIT &2554
     1B11   F0 1F      BEQ &1B32
.pig_init_right
     1B13   A9 23      LDA #&23
     1B15   85 83      STA &83
     1B17   8D FD 1A   STA &1AFD
     1B1A   A9 68      LDA #&68
     1B1C   8D 7C 2D   STA &2D7C
     1B1F   85 80      STA &80
     1B21   A9 00      LDA #&00
     1B23   8D 1D 1C   STA &1C1D
     1B26   A9 4C      LDA #&4C
     1B28   8D 7F 2D   STA &2D7F
     1B2B   A9 4B      LDA #&4B
     1B2D   8D 5A 1B   STA &1B5A
     1B30   D0 1B      BNE &1B4D
.pgl
.pig_init_left
     1B32   A9 22      LDA #&22
     1B34   85 83      STA &83
     1B36   8D FD 1A   STA &1AFD
     1B39   A9 00      LDA #&00
     1B3B   8D 7C 2D   STA &2D7C
     1B3E   85 80      STA &80
     1B40   8D 7F 2D   STA &2D7F
     1B43   A9 4C      LDA #&4C
     1B45   8D 1D 1C   STA &1C1D
     1B48   A9 49      LDA #&49
     1B4A   8D 5A 1B   STA &1B5A
.b3
     1B4D   A9 00      LDA #&00
     1B4F   85 7C      STA &7C
     1B51   EE 54 25   INC &2554
     1B54   A9 07      LDA #&07
     1B56   25 7D      AND &7D
     1B58   AA         TAX
     1B59   A9 4B      LDA #&4B
     1B5B   18         CLC
.b5
     1B5C   69 05      ADC #&05
     1B5E   A8         TAY
     1B5F   A5 7C      LDA &7C
     1B61   69 10      ADC #&10
     1B63   85 7C      STA &7C
     1B65   98         TYA
     1B66   CA         DEX
     1B67   10 F3      BPL &1B5C
     1B69   8D 7D 2D   STA &2D7D
     1B6C   85 81      STA &81
     1B6E   A2 02      LDX #&02
     1B70   8E 7E 2D   STX &2D7E
     1B73   BD 68 2D   LDA &2D68,X
     1B76   85 82      STA &82
     1B78   4C 6F 1C   JMP &1C6F
.ep
     1B7B   60         RTS
.pgb0
     1B7C   AD 7C 2D   LDA &2D7C
     1B7F   85 80      STA &80
     1B81   AD 7D 2D   LDA &2D7D
     1B84   85 81      STA &81
     1B86   10 18      BPL &1BA0
     1B88   CE 7E 2D   DEC &2D7E
     1B8B   D0 EE      BNE &1B7B
     1B8D   49 80      EOR #&80
     1B8F   85 81      STA &81
     1B91   A9 10      LDA #&10
     1B93   0D 76 2D   ORA &2D76
     1B96   8D 76 2D   STA &2D76
     1B99   A9 00      LDA #&00
     1B9B   8D 7D 2D   STA &2D7D
     1B9E   F0 4C      BEQ &1BEC
.pgb1
     1BA0   AD 7E 2D   LDA &2D7E
     1BA3   29 7F      AND #&7F
     1BA5   AA         TAX
     1BA6   BD 68 2D   LDA &2D68,X
     1BA9   85 82      STA &82
     1BAB   A0 00      LDY #&00
     1BAD   B1 8A      LDA (&8A),Y
     1BAF   85 70      STA &70
.pgh
     1BB1   C8         INY
     1BB2   B1 8A      LDA (&8A),Y
     1BB4   38         SEC
     1BB5   E5 7C      SBC &7C
     1BB7   30 4C      BMI &1C05
     1BB9   C9 07      CMP #&07
     1BBB   10 48      BPL &1C05
     1BBD   C8         INY
     1BBE   C8         INY
     1BBF   B1 8A      LDA (&8A),Y
     1BC1   F0 44      BEQ &1C07
     1BC3   C8         INY
     1BC4   B1 8A      LDA (&8A),Y
     1BC6   38         SEC
     1BC7   ED 7F 2D   SBC &2D7F
     1BCA   30 3C      BMI &1C08
     1BCC   C9 03      CMP #&03
     1BCE   10 38      BPL &1C08
     1BD0   A9 E8      LDA #&E8
     1BD2   91 8A      STA (&8A),Y
     1BD4   AA         TAX
     1BD5   A9 07      LDA #&07
     1BD7   A0 2D      LDY #&2D
     1BD9   20 F1 FF   JSR &FFF1
     1BDC   A9 10      LDA #&10
     1BDE   8D 7E 2D   STA &2D7E
     1BE1   A9 80      LDA #&80
     1BE3   0D 7D 2D   ORA &2D7D
     1BE6   8D 7D 2D   STA &2D7D
     1BE9   20 6F 1C   JSR &1C6F
.bx
     1BEC   A9 23      LDA #&23
     1BEE   85 83      STA &83
     1BF0   A9 70      LDA #&70
     1BF2   85 82      STA &82
     1BF4   4C 6F 1C   JMP &1C6F
.b9
     1BF7   A9 04      LDA #&04
     1BF9   0D 76 2D   ORA &2D76
     1BFC   8D 76 2D   STA &2D76
     1BFF   A9 00      LDA #&00
     1C01   8D 7D 2D   STA &2D7D
.x
     1C04   60         RTS
.pgnh
     1C05   C8         INY
     1C06   C8         INY
     1C07   C8         INY
     1C08   C4 70      CPY &70
     1C0A   30 A5      BMI &1BB1
     1C0C   A9 80      LDA #&80
     1C0E   4D 7E 2D   EOR &2D7E
     1C11   8D 7E 2D   STA &2D7E
     1C14   30 EE      BMI &1C04
     1C16   20 6F 1C   JSR &1C6F
     1C19   AD 7F 2D   LDA &2D7F
.xps
     1C1C   C9 00      CMP #&00
     1C1E   F0 D7      BEQ &1BF7
     1C20   29 1F      AND #&1F
     1C22   D0 09      BNE &1C2D
     1C24   A9 07      LDA #&07
     1C26   A0 2D      LDY #&2D
     1C28   A2 F0      LDX #&F0
     1C2A   20 F1 FF   JSR &FFF1
.b6
     1C2D   AE 7E 2D   LDX &2D7E
     1C30   CA         DEX
     1C31   10 02      BPL &1C35
     1C33   A2 07      LDX #&07
.b7
     1C35   8E 7E 2D   STX &2D7E
     1C38   BD 68 2D   LDA &2D68,X
     1C3B   85 82      STA &82
     1C3D   AD 1D 1C   LDA &1C1D
     1C40   F0 18      BEQ &1C5A
     1C42   EE 7F 2D   INC &2D7F
     1C45   18         CLC
     1C46   AD 7C 2D   LDA &2D7C
     1C49   69 08      ADC #&08
     1C4B   8D 7C 2D   STA &2D7C
     1C4E   85 80      STA &80
     1C50   90 1D      BCC &1C6F
     1C52   EE 7D 2D   INC &2D7D
     1C55   E6 81      INC &81
     1C57   4C 6F 1C   JMP &1C6F
.b10
     1C5A   CE 7F 2D   DEC &2D7F
     1C5D   38         SEC
     1C5E   AD 7C 2D   LDA &2D7C
     1C61   E9 08      SBC #&08
     1C63   8D 7C 2D   STA &2D7C
     1C66   85 80      STA &80
     1C68   B0 05      BCS &1C6F
     1C6A   CE 7D 2D   DEC &2D7D
     1C6D   C6 81      DEC &81
.plot_pigeon_sprite
.pb
     1C6F   A0 17      LDY #&17
.b8
     1C71   B1 82      LDA (&82),Y
     1C73   51 80      EOR (&80),Y
     1C75   91 80      STA (&80),Y
     1C77   88         DEY
     1C78   10 F7      BPL &1C71
     1C7A   60         RTS
.ddu1
.plane_hit
     1C7B   AC 5B 25   LDY &255B
     1C7E   C0 09      CPY #&09
     1C80   10 23      BPL &1CA5
     1C82   B9 40 25   LDA &2540,Y
     1C85   85 80      STA &80
     1C87   C8         INY
     1C88   B9 40 25   LDA &2540,Y
     1C8B   85 81      STA &81
     1C8D   C8         INY
     1C8E   8C 5B 25   STY &255B
     1C91   A0 04      LDY #&04
     1C93   A9 55      LDA #&55
.ddu2
     1C95   91 80      STA (&80),Y
     1C97   88         DEY
     1C98   10 FB      BPL &1C95
     1C9A   A0 09      LDY #&09
     1C9C   0A         ASL A
     1C9D   91 80      STA (&80),Y
     1C9F   A0 01      LDY #&01
     1CA1   A9 FF      LDA #&FF
     1CA3   91 80      STA (&80),Y
.ddu3
     1CA5   60         RTS
.random1
     1CA6   A5 7D      LDA &7D
     1CA8   29 48      AND #&48
     1CAA   69 38      ADC #&38
     1CAC   0A         ASL A
     1CAD   0A         ASL A
     1CAE   26 7F      ROL &7F
     1CB0   26 7E      ROL &7E
     1CB2   26 7D      ROL &7D
     1CB4   A5 7D      LDA &7D
     1CB6   60         RTS
.draw_backgnd_art
     1CB7   A0 00      LDY #&00
.draw_line_art_loop
     1CB9   B9 9E 1D   LDA &1D9E,Y
     1CBC   20 EE FF   JSR &FFEE
     1CBF   C8         INY
     1CC0   D0 F7      BNE &1CB9
     1CC2   A5 88      LDA &88
     1CC4   85 82      STA &82
     1CC6   A5 89      LDA &89
     1CC8   85 83      STA &83
     1CCA   A9 1F      LDA #&1F
     1CCC   8D 1A 2A   STA &2A1A
     1CCF   A9 C0      LDA #&C0
     1CD1   85 70      STA &70
     1CD3   A0 00      LDY #&00
.draw_backgnd_sprite_loop
     1CD5   C8         INY
     1CD6   BE B1 1E   LDX &1EB1,Y
     1CD9   C8         INY
     1CDA   B9 B1 1E   LDA &1EB1,Y
     1CDD   24 70      BIT &70
     1CDF   D0 0C      BNE &1CED
     1CE1   85 89      STA &89
     1CE3   86 88      STX &88
     1CE5   C8         INY
     1CE6   BE B1 1E   LDX &1EB1,Y
     1CE9   C8         INY
     1CEA   B9 B1 1E   LDA &1EB1,Y
.skip1
     1CED   86 78      STX &78
     1CEF   85 79      STA &79
     1CF1   20 04 2A   JSR &2A04
     1CF4   CC B1 1E   CPY &1EB1
     1CF7   30 DC      BMI &1CD5
     1CF9   A9 3F      LDA #&3F
     1CFB   8D 1A 2A   STA &2A1A
     1CFE   A5 82      LDA &82
     1D00   85 88      STA &88
     1D02   A5 83      LDA &83
     1D04   85 89      STA &89
     1D06   60         RTS
     1D07   00         BRK
.plot_clouds
     1D08   A9 44      LDA #&44
     1D0A   85 79      STA &79
     1D0C   A9 FF      LDA #&FF
     1D0E   A2 05      LDX #&05
.mid_outer_loop
     1D10   A0 00      LDY #&00
     1D12   84 78      STY &78
.mid_inner_loop
     1D14   91 78      STA (&78),Y
     1D16   C8         INY
     1D17   D0 FB      BNE &1D14
     1D19   E6 79      INC &79
     1D1B   CA         DEX
     1D1C   D0 F2      BNE &1D10
     1D1E   A0 1F      LDY #&1F
.cloud_loop2
     1D20   B9 E0 2E   LDA &2EE0,Y
     1D23   91 78      STA (&78),Y
     1D25   88         DEY
     1D26   10 F8      BPL &1D20
     1D28   A9 2E      LDA #&2E
     1D2A   85 7B      STA &7B
     1D2C   A9 20      LDA #&20
     1D2E   85 78      STA &78
     1D30   A2 08      LDX #&08
.next_cloud_sprite
     1D32   BD 5F 2D   LDA &2D5F,X
     1D35   85 7A      STA &7A
     1D37   A0 3F      LDY #&3F
.next_cloud_byte
     1D39   B1 7A      LDA (&7A),Y
     1D3B   91 78      STA (&78),Y
     1D3D   88         DEY
     1D3E   10 F9      BPL &1D39
     1D40   18         CLC
     1D41   A5 78      LDA &78
     1D43   69 40      ADC #&40
     1D45   85 78      STA &78
     1D47   90 02      BCC &1D4B
     1D49   E6 79      INC &79
.skip1
     1D4B   CA         DEX
     1D4C   10 E4      BPL &1D32
     1D4E   A0 1F      LDY #&1F
.loop32
     1D50   B9 C0 2E   LDA &2EC0,Y
     1D53   91 78      STA (&78),Y
     1D55   88         DEY
     1D56   10 F8      BPL &1D50
.mirror_loop_1
     1D58   A0 00      LDY #&00
.mirror_loop_2
     1D5A   A2 07      LDX #&07
.mirror_loop_3
.modify_lower_dest_addr
     1D5C   B9 00 49   LDA &4900,Y
.modify_upper_dest_addr
     1D5F   9D 80 41   STA &4180,X
     1D62   C8         INY
     1D63   CA         DEX
     1D64   10 F6      BPL &1D5C
     1D66   18         CLC
     1D67   AD 60 1D   LDA &1D60
     1D6A   69 08      ADC #&08
     1D6C   8D 60 1D   STA &1D60
     1D6F   90 03      BCC &1D74
     1D71   EE 61 1D   INC &1D61
.skip2
     1D74   C0 80      CPY #&80
     1D76   D0 E2      BNE &1D5A
     1D78   AD 5D 1D   LDA &1D5D
     1D7B   49 80      EOR #&80
     1D7D   8D 5D 1D   STA &1D5D
     1D80   30 03      BMI &1D85
     1D82   EE 5E 1D   INC &1D5E
.skip3
     1D85   A9 44      LDA #&44
     1D87   CD 61 1D   CMP &1D61
     1D8A   D0 CC      BNE &1D58
     1D8C   8C 60 1D   STY &1D60
     1D8F   E8         INX
     1D90   8E 5D 1D   STX &1D5D
     1D93   A9 49      LDA #&49
     1D95   8D 5E 1D   STA &1D5E
     1D98   A9 41      LDA #&41
     1D9A   8D 61 1D   STA &1D61
     1D9D   60         RTS
.scenery_line_art
     1D9E   12
     1D9F   00
     1DA0   06
     1DA1   19
     1DA2   04
     1DA3   00
     1DA4   00
     1DA5   13
     1DA6   00
     1DA7   19
     1DA8   05
     1DA9   04
     1DAA   01
     1DAB   17
     1DAC   00
     1DAD   19
     1DAE   05
     1DAF   2C
     1DB0   01
     1DB1   3C
     1DB2   00
     1DB3   19
     1DB4   04
     1DB5   7E
     1DB6   04
     1DB7   3E
     1DB8   00
     1DB9   19
     1DBA   05
     1DBB   1A
     1DBC   04
     1DBD   20
     1DBE   00
     1DBF   19
     1DC0   05
     1DC1   84
     1DC2   03
     1DC3   20
     1DC4   00
     1DC5   19
     1DC6   05
     1DC7   52
     1DC8   03
     1DC9   28
     1DCA   00
     1DCB   19
     1DCC   05
     1DCD   20
     1DCE   03
     1DCF   38
     1DD0   00
     1DD1   19
     1DD2   05
     1DD3   16
     1DD4   03
     1DD5   46
     1DD6   00
     1DD7   19
     1DD8   05
     1DD9   16
     1DDA   03
     1DDB   52
     1DDC   00
     1DDD   19
     1DDE   05
     1DDF   20
     1DE0   03
     1DE1   60
     1DE2   00
     1DE3   19
     1DE4   05
     1DE5   52
     1DE6   03
     1DE7   74
     1DE8   00
     1DE9   19
     1DEA   05
     1DEB   BB
     1DEC   03
     1DED   7C
     1DEE   00
     1DEF   19
     1DF0   04
     1DF1   7E
     1DF2   04
     1DF3   42
     1DF4   00
     1DF5   19
     1DF6   15
     1DF7   1A
     1DF8   04
     1DF9   24
     1DFA   00
     1DFB   19
     1DFC   15
     1DFD   84
     1DFE   03
     1DFF   24
     1E00   00
     1E01   19
     1E02   15
     1E03   52
     1E04   03
     1E05   2C
     1E06   00
     1E07   19
     1E08   15
     1E09   20
     1E0A   03
     1E0B   3C
     1E0C   00
     1E0D   19
     1E0E   04
     1E0F   20
     1E10   03
     1E11   64
     1E12   00
     1E13   19
     1E14   15
     1E15   52
     1E16   03
     1E17   78
     1E18   00
     1E19   19
     1E1A   15
     1E1B   BB
     1E1C   03
     1E1D   80
     1E1E   00
     1E1F   12
     1E20   00
     1E21   02
     1E22   19
     1E23   04
     1E24   00
     1E25   05
     1E26   17
     1E27   00
     1E28   19
     1E29   05
     1E2A   C4
     1E2B   04
     1E2C   28
     1E2D   00
     1E2E   19
     1E2F   04
     1E30   E2
     1E31   04
     1E32   1C
     1E33   00
     1E34   19
     1E35   05
     1E36   DE
     1E37   03
     1E38   38
     1E39   00
     1E3A   19
     1E3B   04
     1E3C   80
     1E3D   02
     1E3E   82
     1E3F   00
     1E40   19
     1E41   05
     1E42   48
     1E43   03
     1E44   0E
     1E45   01
     1E46   19
     1E47   05
     1E48   AC
     1E49   03
     1E4A   45
     1E4B   01
     1E4C   19
     1E4D   05
     1E4E   1A
     1E4F   04
     1E50   4A
     1E51   01
     1E52   19
     1E53   05
     1E54   00
     1E55   05
     1E56   AE
     1E57   01
     1E58   19
     1E59   04
     1E5A   2C
     1E5B   01
     1E5C   C8
     1E5D   00
     1E5E   19
     1E5F   05
     1E60   8A
     1E61   02
     1E62   40
     1E63   01
     1E64   19
     1E65   05
     1E66   3E
     1E67   03
     1E68   04
     1E69   01
     1E6A   19
     1E6B   04
     1E6C   F4
     1E6D   01
     1E6E   64
     1E6F   00
     1E70   19
     1E71   05
     1E72   FA
     1E73   00
     1E74   DC
     1E75   00
     1E76   19
     1E77   05
     1E78   8C
     1E79   00
     1E7A   54
     1E7B   01
     1E7C   19
     1E7D   05
     1E7E   00
     1E7F   00
     1E80   68
     1E81   01
     1E82   12
     1E83   00
     1E84   04
     1E85   19
     1E86   04
     1E87   9E
     1E88   02
     1E89   96
     1E8A   00
     1E8B   19
     1E8C   15
     1E8D   F4
     1E8E   01
     1E8F   78
     1E90   00
     1E91   19
     1E92   05
     1E93   58
     1E94   02
     1E95   64
     1E96   00
     1E97   19
     1E98   05
     1E99   90
     1E9A   01
     1E9B   5A
     1E9C   00
     1E9D   00
     1E9E   7D
     1E9F   2D
     1EA0   20
     1EA1   13
     1EA2   28
     1EA3   A9
     1EA4   09
     1EA5   85
     1EA6   83
     1EA7   A9
     1EA8   F0
     1EA9   85
     1EAA   82
     1EAB   4C
     1EAC   13
     1EAD   28
     1EAE   A9
     1EAF   00
     1EB0   8D
.backgnd_sprite_addr_table
     1EB1   58
     1EB2   A0 24
     1EB4   93 73
     1EB6   49 71
     1EB8   60 76
     1EBA   99 75
     1EBC   44 73
     1EBE   C9 78
     1EC0   B4 76
     1EC2   C0 24
     1EC4   13 76
     1EC6   93 78
     1EC8   C9 73
     1ECA   49 76
     1ECC   E0 78
     1ECE   44 78
     1ED0   C4 75
     1ED2   E0 24
     1ED4   13 7B
     1ED6   4A 7B
     1ED8   60 7B
     1EDA   C4 7A
     1EDC   00 25
     1EDE   B0 78
     1EE0   20 78
     1EE2   5C 78
     1EE4   20 25
     1EE6   00 78
     1EE8   88 76
     1EEA   60 25
     1EEC   60 70
     1EEE   80 25
     1EF0   E0 72
     1EF2   60 75
     1EF4   E0 77
     1EF6   80 7A
     1EF8   A0 7A
     1EFA   DC 7A
     1EFC   A0 25
     1EFE   60 7A
     1F00   30 7B
     1F02   C0 25
     1F04   08 79
     1F06   E0 25
     1F08   28 79
     1F0A   00
.end_PIG_02
.end_PIG-02 =  &1F0B 
.draw_stave
.stv
     1F0B   A0 00      LDY #&00
.stave_loop1
     1F0D   B9 2B 1F   LDA &1F2B,Y
     1F10   20 EE FF   JSR &FFEE
     1F13   C8         INY
     1F14   C0 09      CPY #&09
     1F16   D0 F5      BNE &1F0D
     1F18   A2 05      LDX #&05
.stave_loop2
     1F1A   A0 09      LDY #&09
.stave_loop3
     1F1C   B9 2B 1F   LDA &1F2B,Y
     1F1F   20 EE FF   JSR &FFEE
     1F22   C8         INY
     1F23   C0 15      CPY #&15
     1F25   D0 F5      BNE &1F1C
     1F27   CA         DEX
     1F28   D0 F0      BNE &1F1A
     1F2A   60         RTS
.stave_data
.sl
     1F2B   12
     1F2C   00
     1F2D   04
     1F2E   19
     1F2F   04
     1F30   00
     1F31   01
     1F32   EC
     1F33   03
     1F34   19
     1F35   01
     1F36   00
     1F37   03
     1F38   00
     1F39   00
     1F3A   19
     1F3B   00
     1F3C   00
     1F3D   FD
     1F3E   F0
     1F3F   FF
.end_GG_01
.end_GG-01 =  &1F40 
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
     26F2   20 B0 27   JSR &27B0
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
     2728   20 B0 27   JSR &27B0
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
     273F   30 95      BMI &26D6
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
     2770   B1 8A      LDA (&8A),Y
     2772   D0 F8      BNE &276C
     2774   88         DEY
     2775   88         DEY
     2776   A9 9D      LDA #&9D
     2778   91 8A      STA (&8A),Y
     277A   C8         INY
     277B   38         SEC
     277C   A5 86      LDA &86
     277E   E9 6E      SBC #&6E
     2780   91 8A      STA (&8A),Y
     2782   85 80      STA &80
     2784   C8         INY
     2785   A5 87      LDA &87
     2787   E9 02      SBC #&02
     2789   91 8A      STA (&8A),Y
     278B   85 81      STA &81
     278D   C8         INY
     278E   AD 70 2D   LDA &2D70
     2791   18         CLC
     2792   69 03      ADC #&03
     2794   91 8A      STA (&8A),Y
     2796   20 B0 27   JSR &27B0
     2799   A9 03      LDA #&03
     279B   05 71      ORA &71
     279D   85 71      STA &71
     279F   A9 01      LDA #&01
     27A1   0D 76 2D   ORA &2D76
     27A4   8D 76 2D   STA &2D76
     27A7   A2 D0      LDX #&D0
     27A9   A0 2D      LDY #&2D
     27AB   A9 07      LDA #&07
     27AD   4C F1 FF   JMP &FFF1
.s5
.plot_bullet_sprite
     27B0   98         TYA
     27B1   48         PHA
     27B2   A0 05      LDY #&05
     27B4   18         CLC
     27B5   A5 80      LDA &80
     27B7   69 78      ADC #&78
     27B9   85 84      STA &84
     27BB   A5 81      LDA &81
     27BD   69 02      ADC #&02
     27BF   85 85      STA &85
     27C1   A5 80      LDA &80
     27C3   29 07      AND #&07
     27C5   49 07      EOR #&07
     27C7   85 74      STA &74
     27C9   C9 05      CMP #&05
     27CB   10 0B      BPL &27D8
.bot
     27CD   B1 82      LDA (&82),Y
     27CF   51 84      EOR (&84),Y
     27D1   91 84      STA (&84),Y
     27D3   88         DEY
     27D4   C4 74      CPY &74
     27D6   D0 F5      BNE &27CD
.top
     27D8   B1 82      LDA (&82),Y
     27DA   51 80      EOR (&80),Y
     27DC   91 80      STA (&80),Y
     27DE   88         DEY
     27DF   10 F7      BPL &27D8
     27E1   68         PLA
     27E2   A8         TAY
     27E3   60         RTS
.np
     27E4   EA         NOP
     27E5   A5 72      LDA &72
     27E7   C9 01      CMP #&01
     27E9   10 3A      BPL &2825
     27EB   CE 7A 2D   DEC &2D7A
     27EE   D0 35      BNE &2825
     27F0   AD 7B 2D   LDA &2D7B
     27F3   8D 7A 2D   STA &2D7A
     27F6   A5 70      LDA &70
     27F8   20 F7 2A   JSR &2AF7
     27FB   A8         TAY
     27FC   38         SEC
.np2
     27FD   E9 05      SBC #&05
     27FF   10 FC      BPL &27FD
     2801   AA         TAX
.np3
     2802   C8         INY
     2803   E8         INX
     2804   D0 FC      BNE &2802
     2806   88         DEY
     2807   B1 75      LDA (&75),Y
     2809   30 16      BMI &2821
     280B   A4 70      LDY &70
.se
     280D   88         DEY
     280E   B1 75      LDA (&75),Y
     2810   30 0F      BMI &2821
     2812   88         DEY
     2813   88         DEY
     2814   88         DEY
     2815   88         DEY
     2816   D0 F5      BNE &280D
     2818   A9 80      LDA #&80
     281A   0D 76 2D   ORA &2D76
     281D   8D 76 2D   STA &2D76
     2820   60         RTS
.fy
     2821   49 80      EOR #&80
     2823   91 75      STA (&75),Y
.nw
     2825   60         RTS
.pxp
     2826   A5 77      LDA &77
     2828   F0 55      BEQ &287F
     282A   A2 21      LDX #&21
     282C   86 89      STX &89
     282E   A5 88      LDA &88
     2830   48         PHA
     2831   A5 77      LDA &77
     2833   C9 15      CMP #&15
     2835   D0 0A      BNE &2841
     2837   A9 40      LDA #&40
     2839   85 88      STA &88
     283B   20 04 2A   JSR &2A04
     283E   4C 76 28   JMP &2876
.px1
     2841   C9 0C      CMP #&0C
     2843   D0 11      BNE &2856
     2845   A9 40      LDA #&40
     2847   85 88      STA &88
     2849   20 04 2A   JSR &2A04
     284C   A9 80      LDA #&80
     284E   85 88      STA &88
     2850   20 04 2A   JSR &2A04
     2853   4C 76 28   JMP &2876
.px2
     2856   C9 06      CMP #&06
     2858   D0 11      BNE &286B
     285A   A9 80      LDA #&80
     285C   85 88      STA &88
     285E   20 04 2A   JSR &2A04
     2861   A9 C0      LDA #&C0
     2863   85 88      STA &88
     2865   20 04 2A   JSR &2A04
     2868   4C 76 28   JMP &2876
.px3
     286B   C9 01      CMP #&01
     286D   D0 07      BNE &2876
     286F   A9 C0      LDA #&C0
     2871   85 88      STA &88
     2873   20 04 2A   JSR &2A04
.px4
     2876   A9 2F      LDA #&2F
     2878   85 89      STA &89
     287A   68         PLA
     287B   85 88      STA &88
     287D   C6 77      DEC &77
.nx
     287F   4C E0 29   JMP &29E0
.mp
     2882   A0 00      LDY #&00
     2884   B1 75      LDA (&75),Y
     2886   85 70      STA &70
     2888   84 72      STY &72
.nxpl
     288A   C8         INY
     288B   B1 75      LDA (&75),Y
     288D   85 77      STA &77
     288F   C8         INY
     2890   B1 75      LDA (&75),Y
     2892   85 78      STA &78
     2894   C8         INY
     2895   B1 75      LDA (&75),Y
     2897   85 79      STA &79
     2899   C8         INY
     289A   B1 75      LDA (&75),Y
     289C   85 7A      STA &7A
     289E   C8         INY
     289F   B1 75      LDA (&75),Y
     28A1   85 7B      STA &7B
     28A3   A5 77      LDA &77
     28A5   29 C0      AND #&C0
     28A7   D0 03      BNE &28AC
     28A9   4C 26 28   JMP &2826
.p0
     28AC   A5 7A      LDA &7A
     28AE   10 03      BPL &28B3
     28B0   4C FC 29   JMP &29FC
.p1
     28B3   C6 77      DEC &77
     28B5   98         TYA
     28B6   48         PHA
     28B7   A0 00      LDY #&00
     28B9   B1 8A      LDA (&8A),Y
     28BB   85 80      STA &80
.h
     28BD   C8         INY
     28BE   B1 8A      LDA (&8A),Y
     28C0   38         SEC
     28C1   E5 7B      SBC &7B
     28C3   30 47      BMI &290C
     28C5   C9 08      CMP #&08
     28C7   10 43      BPL &290C
     28C9   C8         INY
     28CA   C8         INY
     28CB   B1 8A      LDA (&8A),Y
     28CD   F0 3F      BEQ &290E
     28CF   C8         INY
     28D0   B1 8A      LDA (&8A),Y
     28D2   38         SEC
     28D3   E5 7A      SBC &7A
     28D5   30 38      BMI &290F
     28D7   C9 07      CMP #&07
     28D9   10 34      BPL &290F
     28DB   C9 03      CMP #&03
     28DD   F0 0D      BEQ &28EC
     28DF   A9 40      LDA #&40
     28E1   0D 76 2D   ORA &2D76
     28E4   8D 76 2D   STA &2D76
     28E7   0A         ASL A
     28E8   91 8A      STA (&8A),Y
     28EA   D0 23      BNE &290F
.o
     28EC   A9 19      LDA #&19
     28EE   85 77      STA &77
     28F0   A9 D8      LDA #&D8
     28F2   91 8A      STA (&8A),Y
     28F4   AA         TAX
     28F5   A0 2D      LDY #&2D
     28F7   A9 07      LDA #&07
     28F9   20 F1 FF   JSR &FFF1
     28FC   68         PLA
     28FD   A8         TAY
     28FE   A9 02      LDA #&02
     2900   0D 76 2D   ORA &2D76
     2903   8D 76 2D   STA &2D76
     2906   20 04 2A   JSR &2A04
     2909   4C 26 28   JMP &2826
.nh
     290C   C8         INY
     290D   C8         INY
     290E   C8         INY
     290F   C4 80      CPY &80
     2911   30 AA      BMI &28BD
     2913   68         PLA
     2914   A8         TAY
     2915   A5 73      LDA &73
     2917   29 BF      AND #&BF
     2919   85 73      STA &73
     291B   E6 72      INC &72
     291D   20 04 2A   JSR &2A04
     2920   A5 7B      LDA &7B
     2922   C9 AF      CMP #&AF
     2924   D0 14      BNE &293A
     2926   38         SEC
     2927   A5 78      LDA &78
     2929   E9 87      SBC #&87
     292B   85 78      STA &78
     292D   A5 79      LDA &79
     292F   E9 48      SBC #&48
     2931   85 79      STA &79
     2933   A9 C0      LDA #&C0
     2935   85 7B      STA &7B
     2937   20 51 11   JSR &1151
.hop5
     293A   A9 3F      LDA #&3F
     293C   25 77      AND &77
     293E   D0 36      BNE &2976
     2940   38         SEC
     2941   A5 7A      LDA &7A
     2943   ED 70 2D   SBC &2D70
     2946   85 77      STA &77
     2948   A9 00      LDA #&00
     294A   B0 02      BCS &294E
     294C   38         SEC
     294D   6A         ROR A
.pl3
     294E   6A         ROR A
     294F   85 80      STA &80
     2951   A5 77      LDA &77
     2953   D0 03      BNE &2958
.pl20
     2955   20 45 18   JSR &1845
.pl5
     2958   10 05      BPL &295F
     295A   49 FF      EOR #&FF
     295C   18         CLC
     295D   69 01      ADC #&01
.pl4
     295F   C9 02      CMP #&02
     2961   30 0F      BMI &2972
     2963   8D 00 2B   STA &2B00
     2966   20 FA 2A   JSR &2AFA
     2969   4E 00 2B   LSR &2B00
     296C   18         CLC
     296D   6D 00 2B   ADC &2B00
     2970   29 3F      AND #&3F
.pl6
     2972   05 80      ORA &80
     2974   85 77      STA &77
.mid
     2976   A5 77      LDA &77
     2978   A6 7A      LDX &7A
     297A   E0 01      CPX #&01
     297C   10 07      BPL &2985
     297E   09 40      ORA #&40
     2980   29 7F      AND #&7F
     2982   4C 8D 29   JMP &298D
.plnl
     2985   E0 48      CPX #&48
     2987   30 06      BMI &298F
     2989   09 80      ORA #&80
     298B   29 BF      AND #&BF
.do
     298D   85 77      STA &77
     298F   E6 7B      INC &7B
     2991   A9 07      LDA #&07
     2993   25 78      AND &78
     2995   C9 07      CMP #&07
     2997   F0 05      BEQ &299E
     2999   E6 78      INC &78
     299B   4C AB 29   JMP &29AB
.pl2
     299E   18         CLC
     299F   A5 78      LDA &78
     29A1   69 79      ADC #&79
     29A3   85 78      STA &78
     29A5   A5 79      LDA &79
     29A7   69 02      ADC #&02
     29A9   85 79      STA &79
.lft
     29AB   AD DC 29   LDA &29DC
     29AE   F0 21      BEQ &29D1
     29B0   A5 77      LDA &77
     29B2   10 10      BPL &29C4
     29B4   C6 7A      DEC &7A
     29B6   38         SEC
     29B7   A5 78      LDA &78
     29B9   E9 08      SBC #&08
     29BB   85 78      STA &78
     29BD   B0 12      BCS &29D1
     29BF   C6 79      DEC &79
     29C1   4C D1 29   JMP &29D1
.rt
     29C4   E6 7A      INC &7A
     29C6   18         CLC
     29C7   A5 78      LDA &78
     29C9   69 08      ADC #&08
     29CB   85 78      STA &78
     29CD   90 02      BCC &29D1
     29CF   E6 79      INC &79
.enlr
     29D1   A9 01      LDA #&01
     29D3   4D DC 29   EOR &29DC
     29D6   8D DC 29   STA &29DC
     29D9   4C DD 29   JMP &29DD
.tog
     29DC   00
.fo
     29DD   20 04 2A   JSR &2A04
     29E0   88         DEY
     29E1   88         DEY
     29E2   88         DEY
     29E3   88         DEY
     29E4   A5 77      LDA &77
     29E6   91 75      STA (&75),Y
     29E8   C8         INY
     29E9   A5 78      LDA &78
     29EB   91 75      STA (&75),Y
     29ED   C8         INY
     29EE   A5 79      LDA &79
     29F0   91 75      STA (&75),Y
     29F2   C8         INY
     29F3   A5 7A      LDA &7A
     29F5   91 75      STA (&75),Y
     29F7   C8         INY
     29F8   A5 7B      LDA &7B
     29FA   91 75      STA (&75),Y
.pl1
     29FC   C4 70      CPY &70
     29FE   F0 03      BEQ &2A03
     2A00   4C 8A 28   JMP &288A
.hop7
     2A03   60         RTS
.pp
.plot_plane
     2A04   98         TYA
     2A05   48         PHA
     2A06   18         CLC
     2A07   A5 78      LDA &78
     2A09   69 78      ADC #&78
     2A0B   85 84      STA &84
     2A0D   29 07      AND #&07
     2A0F   49 07      EOR #&07
     2A11   85 74      STA &74
     2A13   A5 79      LDA &79
     2A15   69 02      ADC #&02
     2A17   85 85      STA &85
.modify_plane_sprite_length
     2A19   A0 3F      LDY #&3F
.plo
     2A1B   A2 07      LDX #&07
     2A1D   E4 74      CPX &74
     2A1F   F0 0E      BEQ &2A2F
.bt
     2A21   B1 88      LDA (&88),Y
     2A23   F0 04      BEQ &2A29
     2A25   51 84      EOR (&84),Y
     2A27   91 84      STA (&84),Y
.bz
     2A29   88         DEY
     2A2A   CA         DEX
     2A2B   E4 74      CPX &74
     2A2D   D0 F2      BNE &2A21
.tp
     2A2F   B1 88      LDA (&88),Y
     2A31   F0 04      BEQ &2A37
     2A33   51 78      EOR (&78),Y
     2A35   91 78      STA (&78),Y
.tz
     2A37   88         DEY
     2A38   CA         DEX
     2A39   10 F4      BPL &2A2F
     2A3B   98         TYA
     2A3C   10 DD      BPL &2A1B
     2A3E   68         PLA
     2A3F   A8         TAY
     2A40   60         RTS
.nbo
     2A41   EA         NOP
     2A42   A9 C0      LDA #&C0
     2A44   24 73      BIT &73
     2A46   D0 46      BNE &2A8E
     2A48   C6 73      DEC &73
     2A4A   D0 42      BNE &2A8E
     2A4C   A0 FF      LDY #&FF
.nbo2
     2A4E   C8         INY
     2A4F   C8         INY
     2A50   C8         INY
     2A51   C8         INY
     2A52   C8         INY
     2A53   B1 75      LDA (&75),Y
     2A55   30 F7      BMI &2A4E
     2A57   88         DEY
     2A58   88         DEY
     2A59   88         DEY
     2A5A   B1 75      LDA (&75),Y
     2A5C   29 C0      AND #&C0
     2A5E   D0 06      BNE &2A66
     2A60   C8         INY
     2A61   C8         INY
     2A62   C8         INY
     2A63   4C 4E 2A   JMP &2A4E
.nbo5
     2A66   C8         INY
     2A67   18         CLC
     2A68   B1 75      LDA (&75),Y
     2A6A   69 9D      ADC #&9D
     2A6C   85 80      STA &80
     2A6E   C8         INY
     2A6F   B1 75      LDA (&75),Y
     2A71   69 02      ADC #&02
     2A73   85 81      STA &81
     2A75   20 B0 27   JSR &27B0
     2A78   A0 00      LDY #&00
.nbo3
     2A7A   C8         INY
     2A7B   C8         INY
     2A7C   B1 8C      LDA (&8C),Y
     2A7E   D0 FA      BNE &2A7A
     2A80   A5 81      LDA &81
     2A82   91 8C      STA (&8C),Y
     2A84   88         DEY
     2A85   A5 80      LDA &80
     2A87   91 8C      STA (&8C),Y
     2A89   AD 71 2D   LDA &2D71
     2A8C   85 73      STA &73
.nbo4
     2A8E   A9 C0      LDA #&C0
     2A90   05 73      ORA &73
     2A92   85 73      STA &73
     2A94   60         RTS
.mbo
     2A95   A0 00      LDY #&00
     2A97   B1 8C      LDA (&8C),Y
     2A99   85 70      STA &70
     2A9B   AD 74 2D   LDA &2D74
     2A9E   85 82      STA &82
     2AA0   AD 75 2D   LDA &2D75
     2AA3   85 83      STA &83
.ntbo
     2AA5   C8         INY
     2AA6   B1 8C      LDA (&8C),Y
     2AA8   85 80      STA &80
     2AAA   C8         INY
     2AAB   B1 8C      LDA (&8C),Y
     2AAD   85 81      STA &81
     2AAF   D0 09      BNE &2ABA
     2AB1   A9 7F      LDA #&7F
     2AB3   25 73      AND &73
     2AB5   85 73      STA &73
     2AB7   4C F2 2A   JMP &2AF2
.bo1
     2ABA   20 B0 27   JSR &27B0
     2ABD   A5 80      LDA &80
     2ABF   29 07      AND #&07
     2AC1   C9 06      CMP #&06
     2AC3   10 09      BPL &2ACE
     2AC5   E6 80      INC &80
     2AC7   E6 80      INC &80
     2AC9   A5 81      LDA &81
     2ACB   4C DB 2A   JMP &2ADB
.bo2
     2ACE   18         CLC
     2ACF   A5 80      LDA &80
     2AD1   69 7A      ADC #&7A
     2AD3   85 80      STA &80
     2AD5   A5 81      LDA &81
     2AD7   69 02      ADC #&02
     2AD9   85 81      STA &81
.bo4
     2ADB   C9 80      CMP #&80
     2ADD   30 06      BMI &2AE5
     2ADF   A9 00      LDA #&00
     2AE1   91 8C      STA (&8C),Y
     2AE3   F0 0D      BEQ &2AF2
.bo6
     2AE5   20 B0 27   JSR &27B0
     2AE8   88         DEY
     2AE9   A5 80      LDA &80
     2AEB   91 8C      STA (&8C),Y
     2AED   C8         INY
     2AEE   A5 81      LDA &81
     2AF0   91 8C      STA (&8C),Y
.bo7
     2AF2   C4 70      CPY &70
     2AF4   30 AF      BMI &2AA5
     2AF6   60         RTS
.ra2
     2AF7   8D 00 2B   STA &2B00
     2AFA   38         SEC
     2AFB   A5 7C      LDA &7C
     2AFD   29 7F      AND #&7F
.ra3
     2AFF   E9 10      SBC #&10
     2B01   10 FC      BPL &2AFF
     2B03   6D 00 2B   ADC &2B00
     2B06   60         RTS
.end_GG_02_code
.end_GG_02_code =  &2B07 
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
