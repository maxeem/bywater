100 PRINT TAB(31);"HORSERACE"
110 PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
120 PRINT:PRINT:PRINT
210 DIM S(10),M(10)
220 PRINT "WELCOME TO SOUTH PORTLAND HIGH RACETRACK"
230 PRINT "                      ...OWNED BY LAURIE CHEVALIER"
240 PRINT "DO YOU WANT DIRECTIONS";
250 INPUT X$
260 IF X$="NO" THEN 320
270 PRINT"UP TO 10 MAY PLAY.  A TABLE OF ODDS WILL BE PRINTED.  YOU"
280 PRINT"MAY BET ANY + AMOUNT UNDER 100000 ON ONE HORSE."
290 PRINT "DURING THE RACE, A HORSE WILL BE SHOWN BY ITS"
300 PRINT"NUMBER.  THE HORSES RACE DOWN THE PAPER!"
310 PRINT
320 PRINT "HOW MANY WANT TO BET";
330 INPUT C
340 PRINT "WHEN ? APPEARS,TYPE NAME"
350 FOR A=1 TO C
360 INPUT W$(A)
370 NEXT A
380 PRINT
390 PRINT"HORSE",,"NUMBER","ODDS"
400 PRINT
410 FOR I=1 TO 8: S(I)=0: NEXT I
420 LET R=0
430 FOR A=1 TO 8
440 LET D(A)=INT(10*RND(1)+1)
450 NEXT A
460 FOR A=1 TO 8
470 LET R=R+D(A)
480 NEXT A
490 LET V$(1)="JOE MAW"
500 LET V$(2)="L.B.J."
510 LET V$(3)="MR.WASHBURN"
520 LET V$(4)="MISS KAREN"
530 LET V$(5)="JOLLY"
540 LET V$(6)="HORSE"
550 LET V$(7)="JELLY DO NOT"
560 LET V$(8)="MIDNIGHT"
570 FOR N=1 TO 8
580 PRINT V$(N),,N,R/D(N);":1"
590 NEXT N
600 PRINT"--------------------------------------------------"
610 PRINT "PLACE YOUR BETS...HORSE # THEN AMOUNT"
620 FOR J=1 TO C
630 PRINT W$(J);
640 INPUT Q(J),P(J)
650 IF P(J)<1 THEN 670
660 IF P(J)<100000 THEN 690
670 PRINT"  YOU CAN'T DO THAT!"
680 GOTO 630
690 NEXT J
700 PRINT
710 PRINT"1 2 3 4 5 6 7 8"
720 PRINT"XXXXSTARTXXXX"
721 N = 8
730 FOR I=1 TO N
740 REM LET M=I
750 LET M(I)=I
760 LET Y(M(I))=INT(100*RND(1)+1)
770 IF Y(M(I))<10 THEN 860
780 LET S=INT(R/D(I)+.5)
790 IF Y(M(I))<S+17 THEN 880
800 IF Y(M(I))<S+37 THEN 900
810 IF Y(M(I))<S+57 THEN 920
820 IF Y(M(I))<77+S THEN 940
830 IF Y(M(I))<S+92 THEN 960
840 LET Y(M(I))=7
850 GOTO 970
860 LET Y(M(I))=1
870 GOTO 970
880 LET Y(M(I))=2
890 GOTO 970
900 LET Y(M(I))=3
910 GOTO 970
920 LET Y(M(I))=4
930 GOTO 970
940 LET Y(M(I))=5
950 GOTO 970
960 LET Y(M(I))=6
970 NEXT I
980 LET M=I
990 FOR I=1 TO 8
1000 LET S(M(I))=S(M(I))+Y(M(I))
1010 NEXT I
1020 LET I=1
1030 FOR L=1 TO 8
1040 FOR I=1 TO 8-L
1050 IF S(M(I))<S(M(I+1))THEN 1090
1060 LET H=M(I)
1070 LET M(I)=M(I+1)
1080 LET M(I+1)=H
1090 NEXT I
1100 NEXT L
1110 LET T=S(M(8))
1120 FOR I=1 TO 8
1130 LET B=S(M(I))-S(M(I-1))
1140 IF B=0 THEN 1190
1150 FOR A=1 TO B
1160 PRINT
1170 IF S(M(I))>27 THEN 1240
1180 NEXT A
1190 PRINT M(I);
1200 NEXT I
1210 FOR A=1 TO 28-T
1220 PRINT
1230 NEXT A
1240 PRINT "XXXXFINISHXXXX";
1242 PRINT
1243 PRINT
1244 PRINT "---------------------------------------------"
1245 PRINT
1250 IF T<28 THEN 720
1270 PRINT "THE RACE RESULTS ARE:"
1272 LET Z9=1
1280 FOR I=8 TO 1 STEP-1
1290 LET F=M(I)
1300 PRINT
1310 PRINT Z9;"PLACE HORSE NO.";F,"AT ";R/D(F);":1"
1312 LET Z9=Z9+1
1320  NEXT I
1330 FOR J=1 TO C
1340 IF Q(J)<>M(8) THEN 1370
1350 LET N=Q(J)
1355 PRINT
1360 PRINT W$(J);" WINS $";(R/D(N))*P(J)
1370 NEXT J
1372 PRINT "DO YOU WANT TO BET ON THE NEXT RACE ?"
1374 INPUT "YES OR NO"; O$
1376 IF O$="YES" THEN 380
1380 END
