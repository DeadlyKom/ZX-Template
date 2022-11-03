				device ZXSPECTRUM128
ENTRY_POINT		EQU #8000
STACK_SIZE 		EQU 100

				ORG ENTRY_POINT
				LD SP, STACK_TOP
				LD A, 120
				CALL 11560
				LD A, 80
				CALL 11560
				LD A, 60
				CALL 11560
				CALL 9005
		
				RET

				DW #0000
STACK_BOTTOM: 	DS STACK_SIZE * 2, 0
STACK_TOP		DW #0000

	labelslist  "C:/Work/spectrum/unreal/user.l"												; метки
	savesna     "C:/Work/spectrum/unreal/ZX-Template.sna", ENTRY_POINT							; путь SNA
	; shellexec	"C:/Work/spectrum/unreal/unreal.exe C:/Work/spectrum/unreal/ZX-Template.sna"	; путь UNREAL эмулятора и путь запускаемого SNA файла
