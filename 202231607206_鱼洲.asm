DATA	SEGMENT	
      ;����ʱ����		
      LED0 DB 50H,49H,48H,47H,46H,45H,44H,43H,42H,41H
      LED1 DB 40H,39H,38H,37H,36H,35H,34H,33H,32H,31H,30H,29H,28H,27H,26H,25H,24H,23H,22H,21H,20H,19H,18H,17H,16H,15H,14H,13H,12H,11H,10H,9H,8H,7H,6H,5H,4H,3H,2H,1H
      LED5 DB 5H,4H,3H,2H,1H
      LED30 DB 30H,29H,28H,27H,26H,25H,24H,23H,22H,21H,20H,19H,18H,17H,16H,15H,14H,13H,12H,11H,10H,9H,8H,7H,6H,5H,4H,3H,2H,1H
      LEDA DB 99H,98H,97H,96H,95H,94H,93H,92H,91H,90H
      LEDB DB 89H,88H,87H,86H,85H,84H,83H,82H,81H,80H,79H,78H,77H,76H,75H,74H,73H,72H,71H,70H,69H,68H,67H,66H,65H,64H,63H,62H,61H,60H,59H,58H,57H,56H,55H,54H,53H,52H,51H,50H
      LEDC DB 49H,48H,47H,46H,45H,44H,43H,42H,41H,40H
      LEDD DB 39H,38H,37H,36H,35H,34H,33H,32H,31H,30H,29H,28H,27H,26H,25H,24H,23H,22H,21H,20H,19H,18H,17H,16H,15H,14H,13H,12H,11H,10H
      LEDE DB 9H,8H,7H,6H,5H,4H,3H,2H,1H,0H
     ;��������8255
     ;A������ B���ƶ� C�������������
      PA0 EQU 60H
      PB0 EQU 62H
      PC0 EQU 64H
      LED_8255_1 EQU 66H
      ;�ϱ�����8255
      ;A���Ʊ� B������ C�������������
      PA1 EQU 78H
      PB1 EQU 7AH
      PC1 EQU 7CH
      LED_8255_2 EQU 7EH
      ;��������8255
      PA EQU 70H
      PB EQU 72H
      PC EQU 74H
      LED_8255 EQU 76H

      ;����8259��ַ
      ICW1 EQU 68H
      ICW2 EQU 6AH
      ICW3 EQU 6AH
      ICW4 EQU 6AH 
      OCW1 EQU 6AH
      OCW2 EQU 68H
      OCW3 EQU 68H
      ;LED������
      N DB 00H
      LCD DW 0000H
      ;
     ;;;;;;; ;����8255��ַ
   
    DZA_1 EQU 0200H     
    DZB_1 EQU 0202H     
    DZC_1 EQU 0204H      
    DZ_LED1 EQU 0206H
    
    DZA_2 EQU 0300H      
    DZB_2 EQU 0302H    
    DZC_2 EQU 0304H      
    DZ_LED2 EQU 0306H    
    
    DZA_3 EQU 0400H      
    DZB_3 EQU 0402H     
    DZC_3 EQU 0404H      
    DZ_LED3 EQU 0406H    
    
    DZA_4 EQU 0500H      
    DZB_4 EQU 0502H      
    DZC_4 EQU 0504H      
    DZ_LED4 EQU 0506H   
 
WO DB 00H,20H,08H,24H,48H,24H,84H,24H,7FH,0FEH,02H,23H,41H,22H,40H,20H
DB  20H,20H,13H,0FFH,0CH,20H,14H,22H,22H,2CH,41H,0A0H,0F8H,20H,00H,00H;��

DE DB  00H,00H,7FH,0F8H,21H,0CH,21H,0BH,21H,08H,21H,08H,7FH,0F8H,00H,40H
DB  00H,30H,00H,8FH,43H,08H,80H,08H,40H,08H,3FH,0F8H,00H,00H,00H,00H;��
    
X_1 DB  10H,00H,0CH,00H,03H,80H,00H,00H,00H,00H,3FH,0E0H,40H,02H,40H,04H
DB  40H,18H,40H,00H,40H,00H,78H,00H,00H,40H,01H,80H,0EH,00H,00H,00H;��

Y_1 DB  80H,00H,60H,00H,1FH,0FEH,80H,02H,64H,02H,02H,0FAH,61H,0AAH,84H,0AAH
DB  88H,0AEH,0B7H,0AAH,80H,0AAH,0C1H,0AAH,02H,0FAH,14H,02H,60H,02H,00H,00H;Ը

shi_1  DB  00H,00H,00H,20H,40H,20H,40H,20H,40H,20H,47H,0FFH,44H,20H,44H,20H
DB  44H,20H,47H,0FFH,40H,20H,40H,20H,7FH,0FEH,00H,20H,00H,20H,00H,20H;��
jie DB  08H,00H,08H,00H,04H,00H,84H,0FEH,62H,92H,1EH,92H,01H,92H,00H,0FEH
DB  01H,92H,0FEH,92H,02H,92H,04H,0FEH,04H,00H,08H,00H,08H,00H,00H,00H;��
    
kong DB 00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H
  DB 00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H,00H;�հ�
he DB  00H,00H,00H,00H,3FH,0F8H,10H,08H,10H,08H,10H,08H,3FH,0F8H,00H,00H
DB  00H,20H,06H,22H,01H,23H,0FFH,0FEH,01H,0A4H,06H,24H,08H,24H,10H,20H;��
ping DB  00H,00H,01H,00H,01H,02H,01H,02H,01H,32H,01H,42H,01H,02H,01H,02H
DB  0FFH,0FEH,01H,02H,01H,02H,01H,62H,01H,12H,01H,02H,01H,02H,01H,00H;ƽ


    ;;;;;;
      N1 DB 00H
      CNT DW 0000H
      DNT DW 0000H
      ENT DW 0000H
      FNT DW 0000H
       ;;;;;;;;;;;
       ;;;;;;;;;;
      ;Һ��������
PORTA EQU 0100H ;8255��PA�ڵ�ַ
PORTB EQU 0102H ;A1��A2���ڶ˿�ѡ��
PORTC EQU 0104H ;PC�ڣ�������PB��
PCONT EQU 0106H ;8255�Ŀ��ƿڵ�ַ
RESET EQU 11100010B ;LCD��λ������
DISP_ON EQU 10101111B ;LCD��ʾ��������
DISP_NOR EQU 10100110B ;LCD������ʾ������
DISP_ALL EQU 10100100B ;LCD���е�ȫ����ʾ������
LINE0 EQU 01000000B ;�кţ�0��ʼ����63
PAGE0 EQU 10110000B ;ҳ�ţ�0��ʼ����7
COLHIGH EQU 00010000B ;�кŸ���λ
COLLOW EQU 00000000B ;�кŵ���λ����16��
ADCA EQU 10100000B ;������ʾ������
XI DB  02H,02H,0E2H,22H,22H,0FEH,22H,22H,22H,0FEH,22H,22H,0E2H,02H,02H,00H
DB  00H,00H,0FFH,48H,44H,43H,40H,40H,40H,43H,44H,44H,0FFH,00H,00H,00H;��
BEI DB  00H,20H,20H,20H,20H,0FFH,00H,00H,00H,0FFH,40H,20H,10H,08H,00H,00H
DB  20H,60H,20H,10H,10H,0FFH,00H,00H,00H,3FH,40H,40H,40H,40H,78H,00H;��
SHI DB  00H,0FCH,00H,00H,0FFH,00H,02H,0E2H,22H,22H,0FEH,22H,22H,0E2H,02H,00H
DB  00H,87H,40H,30H,0FH,00H,00H,1FH,00H,00H,0FFH,08H,10H,0FH,00H,00H;ʦ
DA DB  20H,20H,20H,20H,20H,20H,20H,0FFH,20H,20H,20H,20H,20H,20H,20H,00H
DB  80H,80H,40H,20H,10H,0CH,03H,00H,03H,0CH,10H,20H,40H,80H,80H,00H;��
JI DB  40H,40H,42H,0CCH,00H,40H,40H,40H,40H,0FFH,40H,40H,40H,40H,40H,00H
DB  00H,00H,00H,7FH,20H,10H,00H,00H,00H,0FFH,00H,00H,00H,00H,00H,00H;��
GONG DB  00H,04H,04H,04H,04H,04H,04H,0FCH,04H,04H,04H,04H,04H,04H,00H,00H
DB  20H,20H,20H,20H,20H,20H,20H,3FH,20H,20H,20H,20H,20H,20H,20H,00H;��
XUE DB  40H,30H,11H,96H,90H,90H,91H,96H,90H,90H,98H,14H,13H,50H,30H,00H
DB  04H,04H,04H,04H,04H,44H,84H,7EH,06H,05H,04H,04H,04H,04H,04H,00H;ѧ
YUAN DB  00H,0FEH,22H,5AH,86H,10H,0CH,24H,24H,25H,26H,24H,24H,14H,0CH,00H
DB  00H,0FFH,04H,08H,07H,80H,41H,31H,0FH,01H,01H,3FH,41H,41H,71H,00H;Ժ
YU DB  40H,20H,0F0H,28H,24H,27H,24H,0E4H,24H,34H,2CH,20H,0E0H,00H,00H,00H
DB  40H,40H,4FH,49H,49H,49H,49H,4FH,49H,49H,49H,49H,4FH,40H,40H,00H;��
ZHOU DB  10H,60H,02H,8CH,00H,0C0H,00H,0FFH,40H,80H,0FEH,40H,80H,0FFH,00H,00H
DB  04H,04H,7EH,01H,01H,80H,60H,1FH,00H,00H,3FH,00H,00H,0FFH,00H,00H;��
WEI DB  10H,88H,0C4H,33H,80H,9EH,90H,9FH,90H,9EH,20H,0D8H,17H,0F0H,10H,00H
DB  01H,00H,0FFH,80H,40H,3EH,02H,02H,3EH,10H,88H,67H,18H,67H,80H,00H;΢
GI DB  10H,10H,0D0H,0FFH,90H,10H,00H,0FEH,02H,02H,02H,0FEH,00H,00H,00H,00H
DB  04H,03H,00H,0FFH,00H,83H,60H,1FH,00H,00H,00H,3FH,40H,40H,78H,00H;��
OP DB  00H,00H,0FEH,02H,02H,0F2H,92H,9AH,96H,92H,92H,0F2H,02H,02H,02H,00H
DB  80H,60H,1FH,40H,20H,17H,44H,84H,7CH,04H,04H,17H,20H,40H,00H,00H;ԭ
LI DB  04H,84H,84H,0FCH,84H,84H,00H,0FEH,92H,92H,0FEH,92H,92H,0FEH,00H,00H
DB  20H,60H,20H,1FH,10H,10H,40H,44H,44H,44H,7FH,44H,44H,44H,40H,00H;��
QI DB  00H,04H,0FFH,24H,24H,24H,0FFH,04H,00H,0FEH,22H,22H,22H,0FEH,00H,00H
DB  88H,48H,2FH,09H,09H,19H,0AFH,48H,30H,0FH,02H,42H,82H,7FH,00H,00H;��
MO DB  08H,88H,88H,88H,88H,88H,88H,0FFH,88H,88H,88H,88H,88H,88H,08H,00H
DB  20H,20H,10H,08H,04H,02H,01H,0FFH,01H,02H,04H,08H,10H,20H,20H,00H;ĩ
SHE DB  40H,40H,42H,0CCH,00H,40H,0A0H,9EH,82H,82H,82H,9EH,0A0H,20H,20H,00H
DB  00H,00H,00H,3FH,90H,88H,40H,43H,2CH,10H,28H,46H,41H,80H,80H,00H;��
C0 DB 00H,0E0H,10H,08H,08H,10H,0E0H,00H
 DB 00H,0FH,10H,20H,20H,10H,0FH,00H;0

C1 DB 00H,10H,10H,0F8H,00H,00H,00H,00H
 DB 00H,20H,20H,3FH,20H,20H,00H,00H;1
C2 DB 00H,70H,08H,08H,08H,88H,70H,00H
 DB 00H,30H,28H,24H,22H,21H,30H,00H;2
C3 DB 00H,30H,08H,88H,88H,48H,30H,00H
 DB 00H,18H,20H,20H,20H,11H,0EH,00H;3
C4 DB 00H,00H,0C0H,20H,10H,0F8H,00H,00H
 DB 00H,07H,04H,24H,24H,3FH,24H,00H;4
C5 DB 00H,0F8H,08H,88H,88H,08H,08H,00H
 DB 00H,19H,21H,20H,20H,11H,0EH,00H;5

C6 DB 00H,0E0H,10H,88H,88H,18H,00H,00H
 DB 00H,0FH,11H,20H,20H,11H,0EH,00H;6
C7 DB 00H,38H,08H,08H,0C8H,38H,08H,00H
 DB 00H,00H,00H,3FH,00H,00H,00H,00H;7
C8 DB 00H,70H,88H,08H,08H,88H,70H,00H
 DB 00H,1CH,22H,21H,21H,22H,1CH,00H;8
C9 DB 00H,0E0H,10H,08H,08H,10H,0E0H,00H
 DB 00H,00H,31H,22H,22H,11H,0FH,00H;9

TEMP DB 32 DUP(0) ;��ʱ��ģ������
X DB 0 ;��ʾλ�õ���ʼ�к�
Y DB 0 ;��ʾλ�õ���ʼ�к�
DATA	ENDS
EXTRA	SEGMENT		;���Ӷ�
EXTRA	ENDS
STACK SEGMENT STACK ;׼�������ջ��
STP DW 100 DUP(?) ;Ԥ�ȶ���Ķ�ջ���
LEN EQU $-STP
STACK ENDS ;��ջ�ζ������
CODE SEGMENT;��������		
    ASSUME  CS:CODE, DS:DATA,ES:EXTRA,SS:STACK
START: 
        MOV AX,DATA
        MOV DS,AX    
       ;;;;;;;;;;;
       ;�洢����չ���֣�
        MOV AX, 08200H	
	MOV DS, AX     ;ROM��ַ��ʼ��
        MOV AX, 0E300H   ;RAM��ַ��ʼ��
        MOV ES, AX        
        MOV SI, 0
        MOV DI, 0
	MOV CX, 14H   ;������Ϣ��С
        MOV AL, [SI]
        MOV ES:[DI], AL
	
     ;����ѭ����˳���ȡ
cunchu: 
	MOVSW
	LOOP cunchu
	;;;;;;;;;;;;;;
		
 MOV AX,DATA ;��ʼ�����ݶ�
 MOV DS,AX
 
 CALL INIT ;LCD��ʼ��
;׼����ʾ�֣�SI<-��ģλ��,X->BL,Y->BH
 MOV BL,X
 MOV BH,Y
 LEA SI,XI
 CALL DISPCHN
 MOV BL,1
 MOV BH,0
 LEA SI,BEI
 CALL DISPCHN
  MOV BL,2
 MOV BH,0
 LEA SI,SHI
 CALL DISPCHN
  MOV BL,3
 MOV BH,0
 LEA SI,DA
 CALL DISPCHN
  MOV BL,4
 MOV BH,0
 LEA SI,JI
 CALL DISPCHN
  MOV BL,5
 MOV BH,0
 LEA SI,GONG
 CALL DISPCHN
  MOV BL,6
 MOV BH,0
 LEA SI,XUE
 CALL DISPCHN
  MOV BL,7
 MOV BH,0
 LEA SI,YUAN
 CALL DISPCHN
 MOV BL,0
 MOV BH,1
 LEA SI,WEI
 CALL DISPCHN
  MOV BL,1
 MOV BH,1
 LEA SI,GI
 CALL DISPCHN
 MOV BL,2
 MOV BH,1
 LEA SI,OP
 CALL DISPCHN
  MOV BL,3
 MOV BH,1
 LEA SI,LI
 CALL DISPCHN
  MOV BL,4
 MOV BH,1
 LEA SI,QI
 CALL DISPCHN
   MOV BL,5
 MOV BH,1
 LEA SI,MO
 CALL DISPCHN
   MOV BL,6
 MOV BH,1
 LEA SI,SHE
 CALL DISPCHN
    MOV BL,7
 MOV BH,1
 LEA SI,JI
 CALL DISPCHN
     MOV BL,0
 MOV BH,2
 LEA SI,YU
 CALL DISPCHN
     MOV BL,1
 MOV BH,2
 LEA SI,ZHOU
 CALL DISPCHN
;׼����ʾ�������2,SI<-2����ģ���׵�ַ
;�к�->BL,�к�->BH������������ȫ�Ǻ�����ģ�洢
; �ռ�����ͬ�����ò�ͬ���ӳ�������ʾ
 MOV BL,0
 MOV BH,3
 LEA SI,C2
 LEA DI,C0
 LEA BP,TEMP
 CALL FULLCHA
  MOV BL,1
 MOV BH,3
 LEA SI,C2
 LEA DI,C2
 LEA BP,TEMP
 CALL FULLCHA
 MOV BL,2
 MOV BH,3
 LEA SI,C3
 LEA DI,C1
 LEA BP,TEMP
 CALL FULLCHA
  MOV BL,3
 MOV BH,3
 LEA SI,C6
 LEA DI,C0
 LEA BP,TEMP
 CALL FULLCHA
  MOV BL,4
 MOV BH,3
 LEA SI,C7
 LEA DI,C2
 LEA BP,TEMP
  CALL FULLCHA
  MOV BL,5
 MOV BH,3
 LEA SI,C0
LEA DI,C6
LEA BP,TEMP
 CALL FULLCHA

;��ʾ��һ�����ֺ�һ�����֣���ԭ��ѭ���ȴ�
 JMP JTD

INIT PROC NEAR ;LCD��8255��ʼ���ӳ���
 MOV AL,10000000B 
 MOV DX,PCONT
 OUT DX,AL ;INIT 8255
 MOV AL,00000001B ;INIT LCD
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,RESET ;RESET
 MOV DX,PORTA
 OUT DX,AL
 NOP 

 MOV AL,00000000B
 MOV DX,PORTB
 OUT DX,AL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,DISP_ON ;DISP ON
 MOV DX,PORTA
 OUT DX,AL
 NOP

 MOV AL,00000000B 
 MOV DX,PORTB
 OUT DX,AL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,ADCA ;ADC
 INC AL
 MOV DX,PORTA
 OUT DX,AL

 NOP
 MOV AL,00000000B 
 MOV DX,PORTB
 OUT DX,AL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,DISP_ALL ;DISP ALL
 MOV DX,PORTA
 OUT DX,AL

 NOP
 MOV AL,00000000B
 MOV DX,PORTB 
 OUT DX,AL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,DISP_NOR ;DISP NOR
 MOV DX,PORTA
 OUT DX,AL

 NOP
 MOV AL,00000000B
 MOV DX,PORTB
 OUT DX,AL 
 RET
INIT ENDP 
;����Ϊ������ʾ�ӳ���
DISPCHN PROC NEAR
 PUSH CX
 PUSH DX
 PUSH AX

 PUSH DI
 PUSH SI
 MOV DI,BX
 MOV CL,4
 SHL BL,CL 
 MOV AL,BL
 AND BL, 0FH
 MOV CL,4
 SHR AL,CL
 ADD AL,COLHIGH
 ADD BL,COLLOW

 MOV BH,AL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,BH ;COL HIGH 
 MOV DX,PORTA
 OUT DX,AL
 NOP
 MOV AL,00000000B
 MOV DX,PORTB

 OUT DX,AL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,BL ;COL LOW
 MOV DX,PORTA
 OUT DX,AL
 NOP
 MOV AL,00000000B
 MOV DX,PORTB

 OUT DX,AL
 MOV BX,DI
 MOV BL,BH
 SHL BL,1
 ADD BL,PAGE0
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,BL ;ROW 1
 MOV DX,PORTA

 OUT DX,AL
 NOP
 MOV AL,00000000B
 MOV DX,PORTB
 OUT DX,AL
 MOV CX,16
HIGHE:
 MOV AL,00000011B
 MOV DX,PORTB
 OUT DX,AL
DATA1:
 MOV AL,[SI]

 MOV DX,PORTA
 OUT DX,AL
 NOP
 NOP
 INC SI
DATAE:
 MOV AL,00000010B
 MOV DX,PORTB
 OUT DX,AL 
 NOP
 NOP

 LOOP HIGHE
 MOV BX,DI
 MOV BL,BH
 SHL BL,1
 ADD BL,PAGE0
 INC BL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP 
 MOV AL,BL ;ROW 2

 MOV DX,PORTA
 OUT DX,AL
 NOP
 MOV AL,00000000B
 MOV DX,PORTB
 OUT DX,AL
 MOV BX,DI
 MOV CL,4
 SHL BL,CL
 MOV AL,BL
 AND BL,0FH

 MOV CL,4
 SHR AL,CL
 ADD AL,COLHIGH
 ADD BL,COLLOW
 MOV BH,AL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,BH ;COL HIGH
 MOV DX,PORTA

 OUT DX,AL
 NOP
 MOV AL,00000000B
 MOV DX,PORTB
 OUT DX,AL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,BL ;COL LOW
 MOV DX,PORTA

 OUT DX,AL
 NOP
 MOV AL,00000000B
 MOV DX,PORTB
 OUT DX,AL
 POP SI
 ADD SI,16
 MOV CX,16
HIGHE2:
 MOV AL,00000011B
 MOV DX,PORTB

 OUT DX,AL
DATA2:
 MOV AL,[SI]
 MOV DX,PORTA
 OUT DX,AL
 NOP
 NOP
 INC SI
DATAE2:
 MOV AL,00000010B
 MOV DX,PORTB

 OUT DX,AL
 NOP
 NOP
 LOOP HIGHE2
 POP DI
 POP AX
 POP DX
 POP CX
 RET
DISPCHN ENDP
;����Ϊ��ʾ�����ĸ�����ֵ��ӳ���

DISPCHA PROC NEAR
 PUSH CX
 PUSH DX
 PUSH AX
 PUSH DI
 PUSH SI
 MOV DI,BX
 MOV CL,4 ;4
 SHL BL,CL
 MOV AL,BL
 AND BL,0FH ;0F

 MOV CL,4 ;4
 SHR AL,CL
 ADD AL,COLHIGH
 ADD BL,COLLOW
 MOV BH,AL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,BH ;COL HIGH
 MOV DX,PORTA

 OUT DX,AL
 NOP
 MOV AL,00000000B
 MOV DX,PORTB
 OUT DX,AL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,BL ;COL LOW
 MOV DX,PORTA

 OUT DX,AL
 NOP
 MOV AL,00000000B
 MOV DX,PORTB
 OUT DX,AL
 MOV BX,DI
 MOV BL,BH ;Y 
 SHL BL,1
 ADD BL,PAGE0
 MOV AL,00000001B
 MOV DX,PORTB

 OUT DX,AL
 NOP
 MOV AL,BL ;ROW 1
 MOV DX,PORTA
 OUT DX,AL
 NOP
 MOV AL,00000000B
 MOV DX,PORTB
 OUT DX,AL
 MOV CX,8
HIGHEC:
 MOV AL,00000011B
 MOV DX,PORTB
 OUT DX,AL
DATA1C:
 MOV AL,[SI]
 MOV DX,PORTA
 OUT DX,AL
 NOP
 NOP
 INC SI
DATAEC:
 MOV AL,00000010B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 NOP
 LOOP HIGHEC
 MOV BX,DI
 MOV BL,BH
 SHL BL,1
 ADD BL,PAGE0
 INC BL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,BL ;ROW 2
 MOV DX,PORTA
 OUT DX,AL
 NOP
 MOV AL,00000000B
 MOV DX,PORTB
 OUT DX,AL
 MOV BX,DI
 MOV CL,4 ;4
 SHL BL,CL
 MOV AL,BL
 AND BL, 0FH ;0F
 MOV CL,4 ;4
 SHR AL,CL
 ADD AL,COLHIGH
 ADD BL,COLLOW
 MOV BH,AL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,BH ;COL HIGH
 MOV DX,PORTA
 OUT DX,AL
 NOP
 MOV AL,00000000B
 MOV DX,PORTB
 OUT DX,AL
 MOV AL,00000001B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 MOV AL,BL ;COL LOW
 MOV DX,PORTA
 OUT DX,AL
 NOP
 MOV AL,00000000B
 MOV DX,PORTB
 OUT DX,AL
 POP SI
 ADD SI,8
 MOV CX,8
HIGHE2C:
 MOV AL,00000011B
 MOV DX,PORTB
 OUT DX,AL
DATA2C:
 MOV AL,[SI]
 MOV DX,PORTA
 OUT DX,AL
 NOP
 NOP
 INC SI
DATAE2C:
 MOV AL,00000010B
 MOV DX,PORTB
 OUT DX,AL
 NOP
 NOP
 LOOP HIGHE2C
 POP DI
 POP AX
 POP DX
 POP CX
 RET
DISPCHA ENDP
FULLCHA PROC NEAR
 PUSH SI
 PUSH DI
 PUSH CX
 PUSH BX
 PUSH AX
 MOV CX,4
 MOV BX,BP
TLOP1:
 MOV AX,[SI]
 MOV [BX],AX
 INC SI
 INC SI

 INC BX
 INC BX
 LOOP TLOP1
 MOV CX,4
TLOP2:
 MOV AX,[DI]
 MOV [BX],AX
 INC DI
 INC DI
 INC BX
 INC BX

 LOOP TLOP2
 MOV CX,4
TLOP3:
 MOV AX,[SI]
 MOV [BX],AX
 INC SI
 INC SI
 INC BX
 INC BX
 LOOP TLOP3
 MOV CX,4

TLOP4:
 MOV AX,[DI]
 MOV [BX],AX
 INC DI
 INC DI
 INC BX
 INC BX
 LOOP TLOP4
 POP AX
 POP BX
 POP CX

 POP DI
 POP SI
 MOV SI,BP
 CALL DISPCHN
 RET
FULLCHA ENDP
	;;;;;;;;;;;;;
        ;��ͨ�Ʋ��֣�
JTD:	
    MOV AX, DATA
    MOV DS, AX  
         ;8255��ʼ��    
    MOV DX, DZ_LED1
    MOV AL, 81H             ;���÷�ʽ0��PA��PB���,PC�°������
    OUT DX, AL      
    
    MOV DX, DZ_LED2
    MOV AL, 80H             ;���÷�ʽ0��PA��PB���
    OUT DX, AL                                   
    
    MOV DX, DZ_LED3
    MOV AL, 80H             ;���÷�ʽ0��PA��PB���
    OUT DX, AL 
    
    MOV DX, DZ_LED4
    MOV AL, 80H             ;���÷�ʽ0��PA��PB���
    OUT DX, AL 
    ;����
    MOV AL,00H             
    MOV DX, DZA_1      
    OUT DX, AL  
    MOV AL,00H
    MOV DX, DZB_1
    OUT DX, AL
    MOV AL,0FFH              
    MOV DX, DZA_2
    OUT DX, AL  
    MOV AL,0FFH
    MOV DX, DZB_2
    OUT DX, AL    
    MOV AL,00H              
    MOV DX, DZA_3
    OUT DX, AL  
    MOV AL,00H
    MOV DX, DZB_3
    OUT DX, AL 
    MOV AL,0FFH              
    MOV DX, DZA_4
    OUT DX, AL  
    MOV AL,0FFH
    MOV DX, DZB_4
    OUT DX, AL           
    
        MOV AX,DATA
        MOV DS,AX    
        MOV AX, EXTRA
        MOV ES,AX
        
        MOV AX,STACK
        MOV SS,AX
       
        ; ��ʼ��LED8255
        MOV DX,LED_8255_1
        MOV AL,10000000B
        OUT DX,AL

        MOV DX,LED_8255_2
        MOV AL,10000000B
        OUT DX,AL
	
	MOV DX,LED_8255
        MOV AL,10010000B
        OUT DX,AL
       
        ; 8259��ʼ��
        MOV DX,ICW1
        MOV AL, 00011011B   ; ��ƽ����
        OUT DX,AL
        
        MOV DX,ICW2
        MOV AL,60H        ;�ж�������Ż�����ַ IR0-IR7��Ӧ�ж�����60h-67h
        OUT DX,AL
        
        MOV DX,ICW4
        MOV AL,00000001B  ; ���Զ��ж�
        OUT DX,AL
        
        MOV DX,OCW1
        MOV AL,10000000B  ; ���ж� IR0-IR3
        OUT DX,AL 
        
       
        MOV AX,00H         ;�����ж�������
        MOV ES,AX
        
	
        MOV BX, 60H*4      ; ����IR0���ж���Ӧ���� ΪINT0
        MOV AX,OFFSET INT0
        MOV ES:[BX],AX 
        
        MOV AX,CS
        MOV ES:[BX+2],AX  
      ; �����ж�������
 
	MOV AX,00H
       MOV ES,AX
        
	
       MOV BX, 61H*4      ; ����IR1���ж���Ӧ���� ΪINT1
       MOV AX,OFFSET INT1
       MOV ES:[BX],AX 
        
        MOV AX,CS
      MOV ES:[BX+2],AX  
      
      	MOV AX,00H
       MOV ES,AX
        
	
       MOV BX, 62H*4      ; ����IR2���ж���Ӧ���� ΪINT2
       MOV AX,OFFSET INT2
       MOV ES:[BX],AX 
        
        MOV AX,CS
       MOV ES:[BX+2],AX  
      
       MOV AX,00H
       MOV ES,AX
        
	
       MOV BX, 63H*4      ; ����IR3���ж���Ӧ���� ΪINT3
       MOV AX,OFFSET INT3
       MOV ES:[BX],AX 
        
        MOV AX,CS
        MOV ES:[BX+2],AX  
	
       MOV AX,00H
       MOV ES,AX
        
	
       MOV BX, 64H*4      ; ����IR3���ж���Ӧ���� ΪINT3
       MOV AX,OFFSET INT4
       MOV ES:[BX],AX 
        
        MOV AX,CS
        MOV ES:[BX+2],AX 
	
		
       MOV AX,00H
       MOV ES,AX
	MOV BX, 65H*4      ; ����IR3���ж���Ӧ���� ΪINT3
       MOV AX,OFFSET INT5
       MOV ES:[BX],AX 
        
        MOV AX,CS
        MOV ES:[BX+2],AX 
        STI
;������ ֱ�е��̵�50�룬��ת����ƣ����е��̵�
        ;����0 ����
L0:  
     
	MOV DX,PC0
        MOV BX,OFFSET LED0
        MOV AL,N
        XLAT        
        OUT DX,AL
	
	MOV AX,0E400H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX     ;;;
	
        MOV DX,PB0
        MOV AL,01100001B     ;61 
        OUT DX,AL

	MOV DI,CNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	;;;
	
	MOV AX,0E500H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	
	MOV DX,PA0
        MOV AL,01100001B      ;
        OUT DX,AL

	MOV DI,DNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	;;;
	;��ʱ�ϱ�����ȫ��
	MOV DX,PC1
	MOV BX,OFFSET LEDA
	MOV AL,N1
	XLAT
	OUT DX,AL
	
	MOV AX,0E600H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	MOV DX,PB1
	MOV AL,10001001B
	OUT DX,AL
	MOV DI,ENT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ

	
	MOV AX,0E700H ;�Ϸ��� ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	MOV DX,PA1
	MOV AL,10001001B
	OUT DX,AL	
	MOV DI,FNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	
	;;;;
         MOV CX,3H
        CALL DELAY
        INC N
	INC N1

        CMP N,0AH
        JNZ L0
	MOV N,00H
	MOV N1,00H
	INC CNT
	INC CNT
	INC DNT
	INC DNT
	INC ENT
	INC ENT
	INC FNT
	INC FNT
;������ ֱ�е��̵�50�룬��ת����ƣ����е��̵�
L1:
        MOV DX,PC0
        MOV BX,OFFSET LED1
        MOV AL,N
        XLAT        
        OUT DX,AL

        MOV DX,PB0
        MOV AL,01100001B    
        OUT DX,AL
	
	MOV DX,PA0
        MOV AL,01100001B    
        OUT DX,AL
	;��ʱ�ϱ�����ȫ��
	MOV DX,PC1
	MOV BX,OFFSET LEDB
	MOV AL,N1
	XLAT
	OUT DX,AL
	
	MOV DX,PB1
	MOV AL,10001001B
	OUT DX,AL
	MOV DX,PA1
	MOV AL,10001001B
	OUT DX,AL
	;;;;
        MOV CX,3H
        CALL DELAY
        INC N
	INC N1
        CMP N,028H  ;
        JNZ L1 
	MOV N,00H
	MOV N1,00H
;������ ֱ�е��̵���˸5�룬��ת����ƣ����е��̵�
L2:
       MOV DX,PC0
        MOV BX,OFFSET LED5
        MOV AL,N
        XLAT        
        OUT DX,AL
	
        MOV DX,PB0
        MOV AL,01100001B     
	
        OUT DX,AL
	MOV DX,PA0
        MOV AL,01100001B     
        OUT DX,AL
	;��ʱ�ϱ�����ȫ��
	MOV DX,PC1
	MOV BX,OFFSET LEDC
	MOV AL,N1
	XLAT
	OUT DX,AL
	MOV DX,PB1
	MOV AL,10001001B
	OUT DX,AL
	MOV DX,PA1
	MOV AL,10001001B
	OUT DX,AL
	;;;;
         MOV CX,2H
        CALL DELAY
	

	

	MOV DX,PB0
        MOV AL,01000001B   ;
        OUT DX,AL	

	MOV DX,PA0
        MOV AL,01000001B    
        OUT DX,AL
         MOV CX,1H
        CALL DELAY
        INC N
	INC N1
        CMP N,05H
        JNZ L2
	MOV N,00H
;������ ֱ�е��Ƶ�5�룬��ת����ƣ����е��̵�
L3:
        MOV AX,0E400H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	
        MOV DX,PB0
        MOV AL,01010001B    ;51
        OUT DX,AL
	
	MOV DI,CNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ

	
	MOV AX,0E500H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	
         MOV DX,PA0
        MOV AL,01010001B    
        OUT DX,AL
	
	MOV DI,DNT
	MOV ES:[DI],AL
	
        MOV DX,PC0
        MOV BX,OFFSET LED5
        MOV AL,N
       XLAT        
       OUT DX,AL
        	;��ʱ�ϱ�����ȫ��
	MOV DX,PC1
	MOV BX,OFFSET LEDC
	MOV AL,N1
	XLAT
	OUT DX,AL
        
	MOV AX,0E600H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

	MOV DX,PB1
	MOV AL,10001001B
	OUT DX,AL
	MOV DI,ENT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	        MOV AX,0E700H ;�Ϸ��� ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

	MOV DX,PA1
	MOV AL,10001001B
	OUT DX,AL
	MOV DI,FNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	;;;;
        MOV CX,3H
        CALL DELAY
        INC N
	INC N1
        CMP N,05H
        JNZ L3
	MOV N,00H
	MOV N1,00H
	INC CNT
	INC CNT
	INC DNT
	INC DNT
	INC ENT
	INC ENT
	INC FNT
	INC FNT
;������ ��ת���̵�30�룬ֱ�е���ƣ����е����
L4:
        MOV AX,0E400H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX     ;;;
	
	
        MOV DX,PB0
        MOV AL,10001100B     ;8C ;         61 �� ���е� ��       ��51 ���� ����  8C�� ���е� ��  ��ת��
	 OUT DX,AL
	 
	MOV DI,CNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	
       	MOV AX,0E500H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	

	
         MOV DX,PA0
        MOV AL,10001100B     
        OUT DX,AL
		MOV DI,DNT
	MOV ES:[DI],AL
	
        MOV DX,PC0
        MOV BX,OFFSET LED30
        MOV AL,N
        XLAT        
        OUT DX,AL
        	;��ʱ�ϱ�����ȫ��
	MOV DX,PC1
	MOV BX,OFFSET LEDD
	MOV AL,N1
	XLAT
	OUT DX,AL
		MOV AX,0E600H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	
	MOV DX,PB1
	MOV AL,10001001B
	OUT DX,AL
	MOV DI,ENT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	        MOV AX,0E700H ;�Ϸ��� ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

	MOV DX,PA1
	MOV AL,10001001B
	OUT DX,AL
	MOV DI,FNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	;;;;
        MOV CX,03H
        CALL DELAY
        INC N
	INC N1
        CMP N,01EH
        JNZ L4
	MOV N,00H
	MOV N1,00H
	INC CNT
	INC CNT
	INC DNT
	INC DNT
	INC ENT
	INC ENT
	INC FNT
	INC FNT
;������ ��ת���̵���˸5�룬ֱ�е���ƣ����е����
L5:
        MOV DX,PC0
        MOV BX,OFFSET LED5
        MOV AL,N
        XLAT        
        OUT DX,AL
       ;��ʱ�ϱ�����ȫ��
	MOV DX,PC1
	MOV BX,OFFSET LEDE
	MOV AL,N1
	XLAT
	OUT DX,AL
	MOV DX,PB1
	MOV AL,10001001B
	OUT DX,AL
	MOV DX,PA1
	MOV AL,10001001B
	OUT DX,AL
	;;;;

	
        MOV DX,PB0
        MOV AL,10001100B      ;8C�� ���е� ��  ��ת��
        OUT DX,AL

	 MOV DX,PA0
        MOV AL,10001100B     
        OUT DX,AL
          MOV CX,2H
        CALL DELAY
	
	
	

	 MOV DX,PB0
        MOV AL,10001000B     ;
        OUT DX,AL
	MOV DX,PA0
        MOV AL,10001000B     
        OUT DX,AL
        MOV CX,01H
        CALL DELAY
        INC N
	INC N1
        CMP N,05H
        JNZ L5
        MOV N,00H

;������ ��ת���Ƶ�5�룬ֱ�е���ƣ����е����
L6:
        MOV DX,PC0
        MOV BX,OFFSET LED5
        MOV AL,N
       XLAT        
        OUT DX,AL
		MOV AX,0E400H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX     ;;;
	

        MOV DX,PB0
        MOV AL,10001010B     ;8A   8C�� ���е� ��  ��ת��
        OUT DX,AL
		MOV DI,CNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	       	MOV AX,0E500H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	

	  MOV DX,PA0
        MOV AL,10001010B     ;
        OUT DX,AL
		MOV DI,DNT
	MOV ES:[DI],AL
		;��ʱ�ϱ�����ȫ��
	MOV DX,PC1
	MOV BX,OFFSET LEDE
	MOV AL,N1
	XLAT
	OUT DX,AL
		MOV AX,0E600H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

	MOV DX,PB1
	MOV AL,10001001B
	OUT DX,AL
	MOV DI,ENT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	        MOV AX,0E700H ;�Ϸ��� ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

	MOV DX,PA1
	MOV AL,10001001B
	OUT DX,AL
	MOV DI,FNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	;;;;
        MOV CX,3H
        CALL DELAY
        INC N
	INC N1
        CMP N,05H
        JNZ L6
        MOV N,00H
	MOV N1,00H
	INC CNT
	INC CNT
	INC DNT
	INC DNT
	INC ENT
	INC ENT
	INC FNT
	INC FNT
;������ ȫ���  �ϱ�ֱ�е��̵�50�� ��ת����� ���е��̵�
R0:
      MOV DX,PC0
	MOV BX,OFFSET LEDA
	MOV AL,N1
	XLAT
	OUT DX,AL
	MOV AX,0E400H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX     ;;;
	

        MOV DX,PB0
        MOV AL,10001001B     ;89 ����ȫ��
        OUT DX,AL
	MOV DI,CNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	       	MOV AX,0E500H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	
	
	 MOV DX,PA0
        MOV AL,10001001B     
        OUT DX,AL
	MOV DI,DNT
	MOV ES:[DI],AL
	;��ʱ����ȫ�죬�ϱ��������� ��������
        MOV DX,PC1
        MOV BX,OFFSET LED0
        MOV AL,N
        XLAT        
        OUT DX,AL
		MOV AX,0E600H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

        MOV DX,PB1
        MOV AL,01100001B     
        OUT DX,AL
	MOV DI,ENT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	        MOV AX,0E700H ;�Ϸ��� ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

	MOV DX,PA1
        MOV AL,01100001B     
        OUT DX,AL
	MOV DI,FNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
        MOV CX,3H
        CALL DELAY
        INC N
	INC N1
        CMP N,0AH
        JNZ R0
        MOV N,00H
	MOV N1,00H
	INC CNT
	INC CNT
	INC DNT
	INC DNT
	INC ENT
	INC ENT
	INC FNT
	INC FNT
	;������ ȫ���  �ϱ�ֱ�е��̵�50�� ��ת����� ���е��̵�
R0_1:
        MOV DX,PC0
	MOV BX,OFFSET LEDB
	MOV AL,N1
	XLAT
	OUT DX,AL


	
        MOV DX,PB0
        MOV AL,10001001B     
        OUT DX,AL

	
	 MOV DX,PA0
        MOV AL,10001001B     
        OUT DX,AL
	;��ʱ����ȫ�죬�ϱ��������� ��������
        MOV DX,PC1
        MOV BX,OFFSET LED1
        MOV AL,N
        XLAT        
        OUT DX,AL
        MOV DX,PB1
        MOV AL,01100001B     
        OUT DX,AL
	MOV DX,PA1
        MOV AL,01100001B     
        OUT DX,AL
        MOV CX,3H
        CALL DELAY
        INC N
	INC N1
        CMP N,028H
        JNZ R0_1
        MOV N,00H
	MOV N1,00H

;�ϱ����� ֱ�е��̵���˸5�� ��ת����� ���е��̵�
R1:
        MOV DX,PC1
        MOV BX,OFFSET LED5
        MOV AL,N
        XLAT        
        OUT DX,AL
	
	MOV DX,PC0
	MOV BX,OFFSET LEDC
	MOV AL,N1
	XLAT
	OUT DX,AL


        MOV DX,PB0
        MOV AL,10001001B  ;89   
        OUT DX,AL

	 MOV DX,PA0
        MOV AL,10001001B     
        OUT DX,AL
	
        MOV DX,PB1
        MOV AL,01100001B    
        OUT DX,AL
	 MOV DX,PA1
        MOV AL,01100001B     
        OUT DX,AL

            MOV CX,2H
        CALL DELAY
	MOV DX,PB1
        MOV AL,01000001B   
        OUT DX,AL
	MOV DX,PA1
        MOV AL,01000001B     
        OUT DX,AL
         MOV CX,1H
        CALL DELAY
        INC N
	INC N1
        CMP N,05H
        JNZ R1
	MOV N,00H

;�ϱ����� ֱ�е��Ƶ�5�� ��ת����� ���е��̵�
R2:
        	MOV AX,0E600H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

	MOV DX,PB1
        MOV AL,01010001B     
        OUT DX,AL
	MOV DI,ENT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	        MOV AX,0E700H ;�Ϸ��� ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

         MOV DX,PA1
        MOV AL,01010001B     
        OUT DX,AL
	MOV DI,FNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
        MOV DX,PC1
        MOV BX,OFFSET LED5
        MOV AL,N
        XLAT        
       OUT DX,AL
       
         MOV DX,PC0
	MOV BX,OFFSET LEDC
	MOV AL,N1
	XLAT
	OUT DX,AL
		MOV AX,0E400H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX     ;;;
	

        MOV DX,PB0
        MOV AL,10001001B   ;89 
        OUT DX,AL
		MOV DI,CNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	       	MOV AX,0E500H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	

	 MOV DX,PA0
        MOV AL,10001001B     
        OUT DX,AL
	MOV DI,DNT
	MOV ES:[DI],AL
        MOV CX,3H
        CALL DELAY
        INC N
	INC N1
        CMP N,05H
        JNZ R2
	MOV N,00H
	MOV N1,00H
	INC CNT
	INC CNT
	INC DNT
	INC DNT
	INC ENT
	INC ENT
	INC FNT
	INC FNT
;�ϱ����� ��ת���̵�30�� ֱ�е������е����
R3:
       	MOV AX,0E600H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	
       MOV DX,PB1
        MOV AL,10001100B     
        OUT DX,AL
	
	MOV DI,ENT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	        MOV AX,0E700H ;�Ϸ��� ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

         MOV DX,PA1
        MOV AL,10001100B    
        OUT DX,AL
	MOV DI,FNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
        MOV DX,PC1
        MOV BX,OFFSET LED30
        MOV AL,N
        XLAT        
        OUT DX,AL

           MOV DX,PC0
	MOV BX,OFFSET LEDD
	MOV AL,N1
	XLAT
	OUT DX,AL
		MOV AX,0E400H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX     ;;;
	

        MOV DX,PB0
        MOV AL,10001001B   ;89  
        OUT DX,AL
		MOV DI,CNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	
	       	MOV AX,0E500H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	
	
	 MOV DX,PA0
        MOV AL,10001001B   
        OUT DX,AL
        MOV DI,DNT
	MOV ES:[DI],AL
        MOV CX,03H
        CALL DELAY
        INC N
	INC N1
        CMP N,01EH
        JNZ R3
	MOV N,00H
	MOV N1,00H
	INC CNT
	INC CNT
	INC DNT
	INC DNT
	INC ENT
	INC ENT
	INC FNT
	INC FNT
;�ϱ����� ��ת���̵���˸5�� ֱ�е������е����
R4:
       MOV DX,PC1
       MOV BX,OFFSET LED5
        MOV AL,N
        XLAT        
        OUT DX,AL

         MOV DX,PC0
	MOV BX,OFFSET LEDE
	MOV AL,N1
	XLAT
	OUT DX,AL

	

        MOV DX,PB0
        MOV AL,10001001B     
        OUT DX,AL

	 MOV DX,PA0
        MOV AL,10001001B     
        OUT DX,AL

        MOV DX,PB1
        MOV AL,10001100B    
        OUT DX,AL
	 MOV DX,PA1
        MOV AL,10001100B     
        OUT DX,AL
         MOV CX,2H
        CALL DELAY
	 MOV DX,PB1
        MOV AL,10001000B   
        OUT DX,AL
	MOV DX,PA1
        MOV AL,10001000B     
        OUT DX,AL
        MOV CX,01H
        CALL DELAY
        INC N
	INC N1
        CMP N,05H
        JNZ R4
        MOV N,00H  

;�ϱ����� ��ת���Ƶ�5�� ֱ�е������е����
R5:	
        MOV DX,PC1
        MOV BX,OFFSET LED5
        MOV AL,N
      XLAT        
        OUT DX,AL
		MOV AX,0E600H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

        MOV DX,PB1
        MOV AL,10001010B     
        OUT DX,AL
	MOV DI,ENT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	
	        MOV AX,0E700H ;�Ϸ��� ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

	
	  MOV DX,PA1
        MOV AL,10001010B    
        OUT DX,AL	
	MOV DI,FNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
      MOV DX,PC0
	MOV BX,OFFSET LEDE
	MOV AL,N1
	XLAT
	OUT DX,AL
		MOV AX,0E400H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX     ;;;
	

        MOV DX,PB0
        MOV AL,10001001B   ;89 
        OUT DX,AL
		MOV DI,CNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	       	MOV AX,0E500H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	
	
	 MOV DX,PA0
        MOV AL,10001001B     
        OUT DX,AL
	MOV DI,DNT
	MOV ES:[DI],AL
	
        MOV CX,3H
        CALL DELAY
        INC N
	INC N1
        CMP N,05H
        JNZ R5
        MOV N,00H
	MOV N1,00H
	INC CNT
	INC CNT
	INC CNT
	INC CNT
	INC DNT
	INC DNT
	INC DNT
	INC DNT
	INC ENT
	INC ENT
	INC ENT 
	INC ENT
	INC FNT
	INC FNT
	INC FNT
	INC FNT
        JMP L0
	;��ͨ�Ƶ�һ�ֽ��� ��ת��L0���¿�ʼ
       
; INT0 ��
INT0 PROC
     CLI
     I1:
        MOV DX,PC0
	MOV AL,99H	
	OUT DX,AL
        MOV DX,PC1
	MOV AL,99H	
	OUT DX,AL
	
	MOV AX,0E400H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX     ;;;
        MOV DX,PB0
	MOV AL,10100100B    ;A4 
	OUT DX,AL
	MOV BX,CNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[BX],AL   ;;����Ŀ�ĵ�ַ
	
        MOV AX,0E500H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
        MOV DX,PA0
	MOV AL,10001001B       ;89
	OUT DX,AL
		MOV BX,DNT
	MOV ES:[BX],AL

	      MOV AX,0E700H ;�Ϸ��� ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	
        MOV DX,PA1
	MOV AL,10001001B
	OUT DX,AL
	MOV DI,FNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	
	MOV AX,0E600H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	MOV DX,PB1
	MOV AL,10001001B
	OUT DX,AL
		MOV DI,ENT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	MOV DX,PA
        IN AL,DX
	TEST AL,0001B
	JNE I1
	
	INC CNT
	INC CNT
	INC DNT
	INC DNT
	INC ENT
	INC ENT
	INC FNT
	INC FNT
        MOV DX,OCW2
        MOV AL,20H
        OUT DX,AL
     STI
  IRET
INT0 ENDP
;��
INT1 PROC

    CLI
   I2:
        MOV DX,PC0
	MOV AL,99H	
	OUT DX,AL
	 MOV DX,PC1
	MOV AL,99H	
	OUT DX,AL
	
	    MOV AX,0E500H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
      MOV DX,PA0
	MOV AL,10100100B     
	OUT DX,AL
		MOV BX,DNT
	MOV ES:[BX],AL
	
	MOV AX,0E400H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX     ;;;
       MOV DX,PB0
	MOV AL,10001001B       
	OUT DX,AL
	MOV BX,CNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[BX],AL   ;;����Ŀ�ĵ�ַ
	
	      MOV AX,0E700H ;�Ϸ��� ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX

	  MOV DX,PA1
	MOV AL,10001001B
	OUT DX,AL
		MOV DI,FNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	
	MOV AX,0E600H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	MOV DX,PB1
	MOV AL,10001001B
	OUT DX,AL
	MOV DI,ENT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	
	MOV DX,PA
        IN AL,DX
	TEST AL,0010B
	JNE I2
	INC CNT
	INC CNT
	INC DNT
	INC DNT
	INC ENT
	INC ENT
	INC FNT
	INC FNT
        MOV DX,OCW2
        MOV AL,20H
       OUT DX,AL
    STI
  IRET
INT1 ENDP
;��
INT2 PROC

    CLI
   I3:
        MOV DX,PC0
	MOV AL,99H	
	OUT DX,AL
	 MOV DX,PC1
	MOV AL,99H	
	OUT DX,AL
	MOV AX,0E600H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	MOV DX,PB1
	MOV AL,10100100B
	OUT DX,AL
	MOV DI,ENT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	
	 MOV AX,0E500H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
      MOV DX,PA0
	MOV AL,10001001B     
	OUT DX,AL
	MOV BX,DNT
	MOV ES:[BX],AL
	
	MOV AX,0E400H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX     ;;;
       MOV DX,PB0
	MOV AL,10001001B       
	OUT DX,AL
	MOV BX,CNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[BX],AL   ;;����Ŀ�ĵ�ַ
	
	      MOV AX,0E700H ;�Ϸ��� ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	
	 MOV DX,PA1
	MOV AL,10001001B
	OUT DX,AL
	MOV DI,FNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	
	MOV DX,PA
        IN AL,DX
	TEST AL,0100B
	JNE I3
	INC CNT
	INC CNT
	INC DNT
	INC DNT
	INC ENT
	INC ENT
	INC FNT
	INC FNT
        MOV DX,OCW2
        MOV AL,20H
       OUT DX,AL
    STI
  IRET
INT2 ENDP
;��
INT3 PROC

    CLI
   I4:
        MOV DX,PC0
	MOV AL,99H	
	OUT DX,AL
	 MOV DX,PC1
	MOV AL,99H	
	OUT DX,AL
       MOV AX,0E700H ;�Ϸ��� ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	MOV DX,PA1
	MOV AL,10100100B
	OUT DX,AL
	MOV DI,FNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	
	 MOV AX,0E500H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
      MOV DX,PA0
	MOV AL,10001001B     
	OUT DX,AL
	MOV BX,DNT
	MOV ES:[BX],AL
	
	MOV AX,0E400H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX     ;;;
       MOV DX,PB0
	MOV AL,10001001B       
	OUT DX,AL
	MOV BX,CNT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[BX],AL   ;;����Ŀ�ĵ�ַ
	
	MOV AX,0E600H ;������ ��ʼ��RAM��ַ �洢��λ��
	MOV ES,AX
	 MOV DX,PB1
	MOV AL,10001001B
	OUT DX,AL
	MOV DI,ENT      ;;RAM ƫ�Ƶ�ַ
	MOV ES:[DI],AL   ;;����Ŀ�ĵ�ַ
	
	MOV DX,PA
        IN AL,DX
	TEST AL,1000B
	JNE I4
	INC CNT
	INC CNT
	INC DNT
	INC DNT
	INC ENT
	INC ENT
	INC FNT
	INC FNT
        MOV DX,OCW2
        MOV AL,20H
       OUT DX,AL
    STI
  IRET
INT3 ENDP

;DZ����
INT4 PROC
     CLI
     MOV SI,OFFSET(shi_1)                   
     MOV DI,OFFSET(he)
     MOV CX,40H      ;�������� 64	
DZ1: PUSH CX
     MOV CX,0110B
DZ2:CALL DZ_MAIN    ;�Ե�ǰ������Ϊ��� ������ʾ���� ��ʾ6�� 0110B  
    DEC CX          ;����һ��������1 2 3 4 5 6��� ��һ��ָ��ָ��1 ��1�����ӳ��򣬴�1��ʼ�����ʾ���ڶ���ָ��2 2�����ӳ��� ��2��ʼ�����ʾ
    CMP CX,0        ;��ʾ������ DI��SI���� ָ����һ���� ����һ����Ϊ��� ������ʾ����
    JNZ DZ2         ;�ӳ���ʵ���Ǵ�0-32��ѭ������һ��
    INC SI
    INC SI
    INC DI
    INC DI
    POP CX
    DEC CX
    DEC CX           ;һ����Ҫ�����ֵ�����
    CMP CX,0       ;��ʾ��� ����
    JNZ DZ1   
    MOV DX,OCW2
    MOV AL,20H
    OUT DX,AL
    STI
  IRET
INT4 ENDP
;DZ����
INT5 PROC
     CLI
     MOV SI,OFFSET(WO)                   
     MOV DI,OFFSET(X_1)
     MOV CX, 20H  
DZ3:     
     PUSH CX
     MOV CX,0110B    
DZ4:
    CALL DZ_MAIN1
    DEC CX
     CMP CX,0
    JNZ DZ4
    INC SI
    INC SI
    INC DI
    INC DI
    POP CX
    DEC CX
    CMP CX,0
    JNZ DZ3   
    MOV DX,OCW2
     MOV AL,20H
    OUT DX,AL
    STI
  IRET
INT5 ENDP
;��ʾ���� ����  
DZ_MAIN:
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    PUSH DI      
    MOV BX,1H
    MOV CX,40H            ;һ������Ҫ��ʾռ��32�� 
DZ_M:                           
    MOV AL,0FFH             
    MOV DX, DZA_2        
    OUT DX, AL  
    MOV AL,0FFH
    MOV DX, DZB_2
    OUT DX, AL 
    MOV AL,0FFH             
    MOV DX, DZA_4        
    OUT DX, AL  
    MOV AL,0FFH
    MOV DX, DZB_4
    OUT DX, AL         ;��ճ�ʼ��  
    MOV AX,[SI]                 
    MOV DX,DZA_1                 
    OUT DX,AL  
    MOV AL,AH                  
    MOV DX,DZB_1            
    OUT DX,AL    
    MOV AX,[DI]                
    MOV DX,DZA_3                 
    OUT DX,AL  
    MOV AL,AH                   
    MOV DX,DZB_3            
    OUT DX,AL         ;������
    
    CMP CX, 20H       ;�ж�0-16���Ƿ���ʾ��
    JBE DZ_M1         ;���û����ʾ�꣬����2��Ч 
    MOV AX, BX 
    NOT AX            ;��Ϊ�иߵ�ƽ��Ч �е͵�ƽ��Ч ����Ҫȡ��         
    MOV DX,DZA_2
    OUT DX,AL   
    MOV AL,AH                  
    MOV DX,DZB_2
    OUT DX,AL     
    MOV AL,0FFH                   
    MOV DX,DZA_4
    OUT DX,AL
    MOV DX,DZB_4
    OUT DX,AL         ;������
    JMP DZ_M2      
DZ_M1:                ;�����ʾ�� ����4��Ч 17-32��
    MOV AX, BX
    NOT AX   
    MOV DX,DZA_4
    OUT DX,AL
    MOV AL,AH              
    MOV DX,DZB_4
    OUT DX,AL 
    MOV AL,0FFH                   
    MOV DX,DZA_2
    OUT DX,AL
    MOV DX,DZB_2
    OUT DX,AL
DZ_M2:          ;����ָ��  
    INC SI      
    INC SI
    INC DI
    INC DI  
    CALL DELAY_DZ 
    CMP SI,OFFSET (shi_1+64)     ;�ж��Ƿ���ʾ��
    JNZ DZ_M3                    ;û���� ��ת
    MOV SI,OFFSET(shi_1)         ;��ȣ������½����ִ���         
    MOV DI,OFFSET(he)
DZ_M3:
    ROR BX,1H        ;����BXһλ
    DEC CX           ;�ڶ��п�ʼ��ʾ
    DEC CX           ;CX-2 ��Ϊһ�����������
    CMP CX,0
    JNZ DZ_M         ;�ص�DZ_M ѭ��
    POP DI
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET    
;��ʾ���� ����    
DZ_MAIN1:
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
    PUSH DI      
    MOV BX,1H
    MOV CX,40H                  
DZ_N:                           
    MOV AL,0FFH             
    MOV DX, DZA_2        
    OUT DX, AL  
    MOV AL,0FFH
    MOV DX, DZB_2
    OUT DX, AL 
    MOV AL,0FFH             
    MOV DX, DZA_4        
    OUT DX, AL  
    MOV AL,0FFH
    MOV DX, DZB_4
    OUT DX, AL              
    MOV AX,[SI]                 
    MOV DX,DZA_1                 
    OUT DX,AL  
    MOV AL,AH                   
    MOV DX,DZB_1            
    OUT DX,AL    
    MOV AX,[DI]               
    MOV DX,DZA_3                 
    OUT DX,AL  
    MOV AL,AH                 
    MOV DX,DZB_3            
    OUT DX,AL           
    CMP CX, 20H
    JBE DZ_N1
    MOV AX, BX 
    NOT AX                    
    MOV DX,DZA_2
    OUT DX,AL   
    MOV AL,AH                   
    MOV DX,DZB_2
    OUT DX,AL     
    MOV AL,0FFH                   
    MOV DX,DZA_4
    OUT DX,AL
    MOV DX,DZB_4
    OUT DX,AL 
    JMP DZ_N2     
DZ_N1:    
    MOV AX, BX
    NOT AX   
    MOV DX,DZA_4
    OUT DX,AL
    MOV AL,AH                   ;�и��ֽ�
    MOV DX,DZB_4
    OUT DX,AL  
    MOV AL,0FFH                   
    MOV DX,DZA_2
    OUT DX,AL
    MOV DX,DZB_2
    OUT DX,AL
DZ_N2:        
    CALL DELAY_DZ         
    INC SI      
    INC SI
    INC DI
    INC DI  
    CMP SI, OFFSET (WO+64)
    JNZ DZ_N3
    MOV SI,OFFSET(WO)                   
    MOV DI,OFFSET(X_1)
DZ_N3:
    ROL BX,1H 
    DEC CX
    DEC CX
    CMP CX,0
    JNZ DZ_N
    
    POP DI
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    RET    
;��ʱ���� 
DELAY_SHORT:
    PUSH CX
    MOV CX, 0D7FFH      
DELAY_LOOP:
    NOP               
    NOP
    NOP
    LOOP DELAY_LOOP
    POP CX
    RET
DELAY:
    PUSH CX
DELAY_LOOP2:
    CALL DELAY_SHORT
    LOOP DELAY_LOOP2
    POP CX
    RET
;������ʱ
DELAY_DZ:              
    PUSH CX
    MOV CX,081H            
DELAY1_DZ:       
    LOOP DELAY1_DZ     
    POP CX
    RET    
CODE  ENDS
    END  START
