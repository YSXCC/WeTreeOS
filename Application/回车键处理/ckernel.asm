; Disassembly of file: ckernel.o
; Sat Mar 14 10:48:39 2020
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 132                                ; 0004 _ 81. EC, 00000084
        mov     dword [esp], screen_info                ; 000A _ C7. 04 24, 00000000(d)
        call    init_screeninfo                         ; 0011 _ E8, FFFFFFFC(rel)
        mov     eax, dword [screen_info]                ; 0016 _ A1, 00000000(d)
        mov     dword [ebp-48H], eax                    ; 001B _ 89. 45, B8
        movzx   eax, word [screen_info+4H]              ; 001E _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0025 _ 98
        mov     dword [ebp-44H], eax                    ; 0026 _ 89. 45, BC
        movzx   eax, word [screen_info+6H]              ; 0029 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0030 _ 98
        mov     dword [ebp-40H], eax                    ; 0031 _ 89. 45, C0
        mov     eax, dword [memman]                     ; 0034 _ A1, 00000004(d)
        mov     dword [esp], eax                        ; 0039 _ 89. 04 24
        call    memman_init                             ; 003C _ E8, FFFFFFFC(rel)
        mov     eax, dword [memman]                     ; 0041 _ A1, 00000004(d)
        mov     dword [esp+8H], 1072594944              ; 0046 _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 17301504                ; 004E _ C7. 44 24, 04, 01080000
        mov     dword [esp], eax                        ; 0056 _ 89. 04 24
        call    memman_free                             ; 0059 _ E8, FFFFFFFC(rel)
        mov     eax, dword [memman]                     ; 005E _ A1, 00000004(d)
        mov     edx, dword [ebp-40H]                    ; 0063 _ 8B. 55, C0
        mov     dword [esp+0CH], edx                    ; 0066 _ 89. 54 24, 0C
        mov     edx, dword [ebp-44H]                    ; 006A _ 8B. 55, BC
        mov     dword [esp+8H], edx                     ; 006D _ 89. 54 24, 08
        mov     edx, dword [ebp-48H]                    ; 0071 _ 8B. 55, B8
        mov     dword [esp+4H], edx                     ; 0074 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0078 _ 89. 04 24
        call    sheet_control_init                      ; 007B _ E8, FFFFFFFC(rel)
        mov     dword [sheet_control], eax              ; 0080 _ A3, 0000000C(d)
        mov     eax, dword [sheet_control]              ; 0085 _ A1, 0000000C(d)
        mov     dword [esp], eax                        ; 008A _ 89. 04 24
        call    sheet_alloc                             ; 008D _ E8, FFFFFFFC(rel)
        mov     dword [back_sheet], eax                 ; 0092 _ A3, 00000010(d)
        mov     eax, dword [sheet_control]              ; 0097 _ A1, 0000000C(d)
        mov     dword [esp], eax                        ; 009C _ 89. 04 24
        call    sheet_alloc                             ; 009F _ E8, FFFFFFFC(rel)
        mov     dword [mouse_sheet], eax                ; 00A4 _ A3, 00000014(d)
        mov     eax, dword [ebp-44H]                    ; 00A9 _ 8B. 45, BC
        imul    eax, dword [ebp-40H]                    ; 00AC _ 0F AF. 45, C0
        mov     edx, eax                                ; 00B0 _ 89. C2
        mov     eax, dword [memman]                     ; 00B2 _ A1, 00000004(d)
        mov     dword [esp+4H], edx                     ; 00B7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 00BB _ 89. 04 24
        call    memman_alloc_4k                         ; 00BE _ E8, FFFFFFFC(rel)
        mov     dword [back_buf], eax                   ; 00C3 _ A3, 00000000(d)
        mov     edx, dword [back_buf]                   ; 00C8 _ 8B. 15, 00000000(d)
        mov     eax, dword [back_sheet]                 ; 00CE _ A1, 00000010(d)
        mov     dword [esp+10H], 99                     ; 00D3 _ C7. 44 24, 10, 00000063
        mov     ecx, dword [ebp-40H]                    ; 00DB _ 8B. 4D, C0
        mov     dword [esp+0CH], ecx                    ; 00DE _ 89. 4C 24, 0C
        mov     ecx, dword [ebp-44H]                    ; 00E2 _ 8B. 4D, BC
        mov     dword [esp+8H], ecx                     ; 00E5 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 00E9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 00ED _ 89. 04 24
        call    sheet_setbuf                            ; 00F0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [mouse_sheet]                ; 00F5 _ A1, 00000014(d)
        mov     dword [esp+10H], 99                     ; 00FA _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 0102 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 010A _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], mouse_cursor_buf        ; 0112 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 011A _ 89. 04 24
        call    sheet_setbuf                            ; 011D _ E8, FFFFFFFC(rel)
        call    init_mouse_position                     ; 0122 _ E8, FFFFFFFC(rel)
        call    init_palette                            ; 0127 _ E8, FFFFFFFC(rel)
        call    init_fifo_buf                           ; 012C _ E8, FFFFFFFC(rel)
        call    init_keyboard                           ; 0131 _ E8, FFFFFFFC(rel)
        call    get_timer_control                       ; 0136 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-3CH], eax                    ; 013B _ 89. 45, C4
        call    init_time_port                          ; 013E _ E8, FFFFFFFC(rel)
        mov     dword [esp+0CH], 0                      ; 0143 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], timerbuf1.1762          ; 014B _ C7. 44 24, 08, 00000034(d)
        mov     dword [esp+4H], 8                       ; 0153 _ C7. 44 24, 04, 00000008
        mov     dword [esp], timerinfo1.1759            ; 015B _ C7. 04 24, 00000018(d)
        call    fifo8_init                              ; 0162 _ E8, FFFFFFFC(rel)
        call    timer_alloc                             ; 0167 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-38H], eax                    ; 016C _ 89. 45, C8
        mov     dword [esp+8H], 1                       ; 016F _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], timerinfo1.1759         ; 0177 _ C7. 44 24, 04, 00000018(d)
        mov     eax, dword [ebp-38H]                    ; 017F _ 8B. 45, C8
        mov     dword [esp], eax                        ; 0182 _ 89. 04 24
        call    timer_init                              ; 0185 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 100                     ; 018A _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-38H]                    ; 0192 _ 8B. 45, C8
        mov     dword [esp], eax                        ; 0195 _ 89. 04 24
        call    timer_settime                           ; 0198 _ E8, FFFFFFFC(rel)
        mov     dword [esp+0CH], 0                      ; 019D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], timerbuf2.1763          ; 01A5 _ C7. 44 24, 08, 00000058(d)
        mov     dword [esp+4H], 8                       ; 01AD _ C7. 44 24, 04, 00000008
        mov     dword [esp], timerinfo2.1760            ; 01B5 _ C7. 04 24, 0000003C(d)
        call    fifo8_init                              ; 01BC _ E8, FFFFFFFC(rel)
        call    timer_alloc                             ; 01C1 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 01C6 _ 89. 45, CC
        mov     dword [esp+8H], 1                       ; 01C9 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], timerinfo2.1760         ; 01D1 _ C7. 44 24, 04, 0000003C(d)
        mov     eax, dword [ebp-34H]                    ; 01D9 _ 8B. 45, CC
        mov     dword [esp], eax                        ; 01DC _ 89. 04 24
        call    timer_init                              ; 01DF _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 300                     ; 01E4 _ C7. 44 24, 04, 0000012C
        mov     eax, dword [ebp-34H]                    ; 01EC _ 8B. 45, CC
        mov     dword [esp], eax                        ; 01EF _ 89. 04 24
        call    timer_settime                           ; 01F2 _ E8, FFFFFFFC(rel)
        mov     dword [esp+0CH], 0                      ; 01F7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], timerbuf3.1764          ; 01FF _ C7. 44 24, 08, 0000007C(d)
        mov     dword [esp+4H], 8                       ; 0207 _ C7. 44 24, 04, 00000008
        mov     dword [esp], timerinfo3.1761            ; 020F _ C7. 04 24, 00000060(d)
        call    fifo8_init                              ; 0216 _ E8, FFFFFFFC(rel)
        call    timer_alloc                             ; 021B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-30H], eax                    ; 0220 _ 89. 45, D0
        mov     dword [esp+8H], 1                       ; 0223 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], timerinfo3.1761         ; 022B _ C7. 44 24, 04, 00000060(d)
        mov     eax, dword [ebp-30H]                    ; 0233 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0236 _ 89. 04 24
        call    timer_init                              ; 0239 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 50                      ; 023E _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 0246 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0249 _ 89. 04 24
        call    timer_settime                           ; 024C _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 0251 _ E8, FFFFFFFC(rel)
        mov     eax, dword [back_buf]                   ; 0256 _ A1, 00000000(d)
        mov     edx, dword [ebp-40H]                    ; 025B _ 8B. 55, C0
        mov     dword [esp+8H], edx                     ; 025E _ 89. 54 24, 08
        mov     edx, dword [ebp-44H]                    ; 0262 _ 8B. 55, BC
        mov     dword [esp+4H], edx                     ; 0265 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0269 _ 89. 04 24
        call    init_desktop                            ; 026C _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 99                      ; 0271 _ C7. 44 24, 04, 00000063
        mov     dword [esp], mouse_cursor_buf           ; 0279 _ C7. 04 24, 00000000(d)
        call    init_mouse_cursor                       ; 0280 _ E8, FFFFFFFC(rel)
        mov     edx, dword [back_sheet]                 ; 0285 _ 8B. 15, 00000010(d)
        mov     eax, dword [sheet_control]              ; 028B _ A1, 0000000C(d)
        mov     dword [esp+0CH], 0                      ; 0290 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0298 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 02A0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02A4 _ 89. 04 24
        call    sheet_slide                             ; 02A7 _ E8, FFFFFFFC(rel)
        mov     ebx, dword [mouse_y]                    ; 02AC _ 8B. 1D, 00000000(d)
        mov     ecx, dword [mouse_x]                    ; 02B2 _ 8B. 0D, 00000000(d)
        mov     edx, dword [mouse_sheet]                ; 02B8 _ 8B. 15, 00000014(d)
        mov     eax, dword [sheet_control]              ; 02BE _ A1, 0000000C(d)
        mov     dword [esp+0CH], ebx                    ; 02C3 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 02C7 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 02CB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02CF _ 89. 04 24
        call    sheet_slide                             ; 02D2 _ E8, FFFFFFFC(rel)
        mov     eax, dword [sheet_control]              ; 02D7 _ A1, 0000000C(d)
        mov     dword [esp+4H], ?_231                   ; 02DC _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 02E4 _ 89. 04 24
        call    message_box                             ; 02E7 _ E8, FFFFFFFC(rel)
        mov     dword [sheet_win], eax                  ; 02EC _ A3, 00000000(d)
        mov     edx, dword [back_sheet]                 ; 02F1 _ 8B. 15, 00000010(d)
        mov     eax, dword [sheet_control]              ; 02F7 _ A1, 0000000C(d)
        mov     dword [esp+8H], 0                       ; 02FC _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0304 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0308 _ 89. 04 24
        call    sheet_updown                            ; 030B _ E8, FFFFFFFC(rel)
        mov     edx, dword [mouse_sheet]                ; 0310 _ 8B. 15, 00000014(d)
        mov     eax, dword [sheet_control]              ; 0316 _ A1, 0000000C(d)
        mov     dword [esp+8H], 100                     ; 031B _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], edx                     ; 0323 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0327 _ 89. 04 24
        call    sheet_updown                            ; 032A _ E8, FFFFFFFC(rel)
        call    enable_mouse                            ; 032F _ E8, FFFFFFFC(rel)
        call    get_code32_addr                         ; 0334 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-2CH], eax                    ; 0339 _ 89. 45, D4
        call    get_addr_gdt                            ; 033C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-28H], eax                    ; 0341 _ 89. 45, D8
        mov     eax, dword [memman]                     ; 0344 _ A1, 00000004(d)
        mov     dword [esp], eax                        ; 0349 _ 89. 04 24
        call    task_init                               ; 034C _ E8, FFFFFFFC(rel)
        mov     dword [task_a], eax                     ; 0351 _ A3, 00000008(d)
        mov     eax, dword [task_a]                     ; 0356 _ A1, 00000008(d)
        mov     dword [keyinfo+18H], eax                ; 035B _ A3, 00000018(d)
        mov     eax, dword [task_a]                     ; 0360 _ A1, 00000008(d)
        mov     dword [task_main], eax                  ; 0365 _ A3, 00000004(d)
        mov     eax, dword [task_a]                     ; 036A _ A1, 00000008(d)
        mov     dword [esp+8H], 0                       ; 036F _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], 0                       ; 0377 _ C7. 44 24, 04, 00000000
        mov     dword [esp], eax                        ; 037F _ 89. 04 24
        call    task_run                                ; 0382 _ E8, FFFFFFFC(rel)
        call    launch_console                          ; 0387 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-24H], eax                    ; 038C _ 89. 45, DC
        mov     dword [ebp-20H], 0                      ; 038F _ C7. 45, E0, 00000000
        mov     dword [ebp-1CH], 0                      ; 0396 _ C7. 45, E4, 00000000
        mov     dword [ebp-18H], 0                      ; 039D _ C7. 45, E8, 00000000
        mov     dword [ebp-58H], 8                      ; 03A4 _ C7. 45, A8, 00000008
        mov     dword [ebp-54H], 7                      ; 03AB _ C7. 45, AC, 00000007
        mov     dword [ebp-14H], 0                      ; 03B2 _ C7. 45, EC, 00000000
        mov     dword [ebp-50H], 0                      ; 03B9 _ C7. 45, B0, 00000000
        mov     dword [ebp-10H], 0                      ; 03C0 _ C7. 45, F0, 00000000
?_001:  call    io_cli                                  ; 03C7 _ E8, FFFFFFFC(rel)
        mov     dword [esp], keyinfo                    ; 03CC _ C7. 04 24, 00000000(d)
        call    fifo8_status                            ; 03D3 _ E8, FFFFFFFC(rel)
        mov     ebx, eax                                ; 03D8 _ 89. C3
        mov     dword [esp], mouseinfo                  ; 03DA _ C7. 04 24, 00000000(d)
        call    fifo8_status                            ; 03E1 _ E8, FFFFFFFC(rel)
        add     ebx, eax                                ; 03E6 _ 01. C3
        mov     dword [esp], timerinfo1.1759            ; 03E8 _ C7. 04 24, 00000018(d)
        call    fifo8_status                            ; 03EF _ E8, FFFFFFFC(rel)
        add     ebx, eax                                ; 03F4 _ 01. C3
        mov     dword [esp], timerinfo2.1760            ; 03F6 _ C7. 04 24, 0000003C(d)
        call    fifo8_status                            ; 03FD _ E8, FFFFFFFC(rel)
        add     ebx, eax                                ; 0402 _ 01. C3
        mov     dword [esp], timerinfo3.1761            ; 0404 _ C7. 04 24, 00000060(d)
        call    fifo8_status                            ; 040B _ E8, FFFFFFFC(rel)
        add     eax, ebx                                ; 0410 _ 01. D8
        test    eax, eax                                ; 0412 _ 85. C0
        jnz     ?_002                                   ; 0414 _ 75, 0A
        call    io_sti                                  ; 0416 _ E8, FFFFFFFC(rel)
        jmp     ?_010                                   ; 041B _ E9, 00000421

?_002:  mov     dword [esp], keyinfo                    ; 0420 _ C7. 04 24, 00000000(d)
        call    fifo8_status                            ; 0427 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 042C _ 85. C0
        je      ?_007                                   ; 042E _ 0F 84, 00000396
        call    io_sti                                  ; 0434 _ E8, FFFFFFFC(rel)
        mov     dword [esp], keyinfo                    ; 0439 _ C7. 04 24, 00000000(d)
        call    fifo8_get                               ; 0440 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-20H], eax                    ; 0445 _ 89. 45, E0
        cmp     dword [ebp-20H], 15                     ; 0448 _ 83. 7D, E0, 0F
        jne     ?_005                                   ; 044C _ 0F 85, 000001A5
        mov     dword [ebp-4CH], -1                     ; 0452 _ C7. 45, B4, FFFFFFFF
        cmp     dword [ebp-50H], 0                      ; 0459 _ 83. 7D, B0, 00
        jne     ?_003                                   ; 045D _ 0F 85, 00000089
        mov     dword [ebp-50H], 1                      ; 0463 _ C7. 45, B0, 00000001
        mov     edx, dword [sheet_win]                  ; 046A _ 8B. 15, 00000000(d)
        mov     eax, dword [sheet_control]              ; 0470 _ A1, 0000000C(d)
        mov     dword [esp+0CH], 0                      ; 0475 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_231                   ; 047D _ C7. 44 24, 08, 00000000(d)
        mov     dword [esp+4H], edx                     ; 0485 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0489 _ 89. 04 24
        call    make_window_title                       ; 048C _ E8, FFFFFFFC(rel)
        mov     eax, dword [sheet_control]              ; 0491 _ A1, 0000000C(d)
        mov     dword [esp+0CH], 1                      ; 0496 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_232                   ; 049E _ C7. 44 24, 08, 00000007(d)
        mov     edx, dword [ebp-24H]                    ; 04A6 _ 8B. 55, DC
        mov     dword [esp+4H], edx                     ; 04A9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04AD _ 89. 04 24
        call    make_window_title                       ; 04B0 _ E8, FFFFFFFC(rel)
        mov     edx, dword [sheet_win]                  ; 04B5 _ 8B. 15, 00000000(d)
        mov     eax, dword [sheet_control]              ; 04BB _ A1, 0000000C(d)
        mov     dword [esp+10H], 7                      ; 04C0 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 04C8 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-58H]                    ; 04D0 _ 8B. 4D, A8
        mov     dword [esp+8H], ecx                     ; 04D3 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 04D7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04DB _ 89. 04 24
        call    set_cursor                              ; 04DE _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4CH], 87                     ; 04E3 _ C7. 45, B4, 00000057
        jmp     ?_004                                   ; 04EA _ EB, 71

?_003:  mov     dword [ebp-50H], 0                      ; 04EC _ C7. 45, B0, 00000000
        mov     edx, dword [sheet_win]                  ; 04F3 _ 8B. 15, 00000000(d)
        mov     eax, dword [sheet_control]              ; 04F9 _ A1, 0000000C(d)
        mov     dword [esp+0CH], 1                      ; 04FE _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], ?_231                   ; 0506 _ C7. 44 24, 08, 00000000(d)
        mov     dword [esp+4H], edx                     ; 050E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0512 _ 89. 04 24
        call    make_window_title                       ; 0515 _ E8, FFFFFFFC(rel)
        mov     eax, dword [sheet_control]              ; 051A _ A1, 0000000C(d)
        mov     dword [esp+0CH], 0                      ; 051F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_232                   ; 0527 _ C7. 44 24, 08, 00000007(d)
        mov     edx, dword [ebp-24H]                    ; 052F _ 8B. 55, DC
        mov     dword [esp+4H], edx                     ; 0532 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0536 _ 89. 04 24
        call    make_window_title                       ; 0539 _ E8, FFFFFFFC(rel)
        mov     eax, dword [task_console_g]             ; 053E _ A1, 00000000(d)
        add     eax, 16                                 ; 0543 _ 83. C0, 10
        mov     dword [esp+4H], 88                      ; 0546 _ C7. 44 24, 04, 00000058
        mov     dword [esp], eax                        ; 054E _ 89. 04 24
        call    fifo8_put                               ; 0551 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4CH], 88                     ; 0556 _ C7. 45, B4, 00000058
?_004:  mov     eax, dword [sheet_win]                  ; 055D _ A1, 00000000(d)
        mov     ebx, dword [eax+8H]                     ; 0562 _ 8B. 58, 08
        mov     eax, dword [sheet_win]                  ; 0565 _ A1, 00000000(d)
        mov     ecx, dword [eax+4H]                     ; 056A _ 8B. 48, 04
        mov     edx, dword [sheet_win]                  ; 056D _ 8B. 15, 00000000(d)
        mov     eax, dword [sheet_control]              ; 0573 _ A1, 0000000C(d)
        mov     dword [esp+14H], ebx                    ; 0578 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 057C _ 89. 4C 24, 10
        mov     dword [esp+0CH], 0                      ; 0580 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0588 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0590 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0594 _ 89. 04 24
        call    sheet_refresh                           ; 0597 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-24H]                    ; 059C _ 8B. 45, DC
        mov     ecx, dword [eax+8H]                     ; 059F _ 8B. 48, 08
        mov     eax, dword [ebp-24H]                    ; 05A2 _ 8B. 45, DC
        mov     edx, dword [eax+4H]                     ; 05A5 _ 8B. 50, 04
        mov     eax, dword [sheet_control]              ; 05A8 _ A1, 0000000C(d)
        mov     dword [esp+14H], ecx                    ; 05AD _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 05B1 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 05B5 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 05BD _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-24H]                    ; 05C5 _ 8B. 55, DC
        mov     dword [esp+4H], edx                     ; 05C8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05CC _ 89. 04 24
        call    sheet_refresh                           ; 05CF _ E8, FFFFFFFC(rel)
        mov     edx, dword [task_console_g]             ; 05D4 _ 8B. 15, 00000000(d)
        mov     eax, dword [task_a]                     ; 05DA _ A1, 00000008(d)
        mov     ecx, dword [ebp-4CH]                    ; 05DF _ 8B. 4D, B4
        mov     dword [esp+8H], ecx                     ; 05E2 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 05E6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05EA _ 89. 04 24
        call    task_send_message                       ; 05ED _ E8, FFFFFFFC(rel)
        jmp     ?_010                                   ; 05F2 _ E9, 0000024A

?_005:  cmp     dword [ebp-50H], 0                      ; 05F7 _ 83. 7D, B0, 00
        jne     ?_006                                   ; 05FB _ 0F 85, 00000178
        mov     eax, dword [ebp-20H]                    ; 0601 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 0604 _ 89. 04 24
        call    transfer_scancode                       ; 0607 _ E8, FFFFFFFC(rel)
        test    al, al                                  ; 060C _ 84. C0
        je      ?_010                                   ; 060E _ 0F 84, 0000022D
        cmp     dword [ebp-58H], 143                    ; 0614 _ 81. 7D, A8, 0000008F
        jg      ?_010                                   ; 061B _ 0F 8F, 00000220
        mov     eax, dword [ebp-58H]                    ; 0621 _ 8B. 45, A8
        lea     ecx, [eax+7H]                           ; 0624 _ 8D. 48, 07
        mov     eax, dword [sheet_win]                  ; 0627 _ A1, 00000000(d)
        mov     edx, dword [eax+4H]                     ; 062C _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 062F _ A1, 00000000(d)
        mov     eax, dword [eax]                        ; 0634 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 0636 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 063E _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 0642 _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-58H]                    ; 064A _ 8B. 4D, A8
        mov     dword [esp+0CH], ecx                    ; 064D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 0651 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 0659 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 065D _ 89. 04 24
        call    paint_rectangle                         ; 0660 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-58H]                    ; 0665 _ 8B. 45, A8
        lea     ecx, [eax+8H]                           ; 0668 _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 066B _ 8B. 15, 00000000(d)
        mov     eax, dword [sheet_control]              ; 0671 _ A1, 0000000C(d)
        mov     dword [esp+14H], 44                     ; 0676 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 067E _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0682 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-58H]                    ; 068A _ 8B. 4D, A8
        mov     dword [esp+8H], ecx                     ; 068D _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0691 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0695 _ 89. 04 24
        call    sheet_refresh                           ; 0698 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-20H]                    ; 069D _ 8B. 45, E0
        mov     dword [esp], eax                        ; 06A0 _ 89. 04 24
        call    transfer_scancode                       ; 06A3 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-5BH], al                      ; 06A8 _ 88. 45, A5
        movzx   eax, byte [ebp-5BH]                     ; 06AB _ 0F B6. 45, A5
        mov     byte [ebp-5AH], al                      ; 06AF _ 88. 45, A6
        mov     byte [ebp-59H], 0                       ; 06B2 _ C6. 45, A7, 00
        mov     edx, dword [sheet_win]                  ; 06B6 _ 8B. 15, 00000000(d)
        mov     eax, dword [sheet_control]              ; 06BC _ A1, 0000000C(d)
        mov     dword [esp+14H], 0                      ; 06C1 _ C7. 44 24, 14, 00000000
        lea     ecx, [ebp-5AH]                          ; 06C9 _ 8D. 4D, A6
        mov     dword [esp+10H], ecx                    ; 06CC _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 06D0 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-58H]                    ; 06D8 _ 8B. 4D, A8
        mov     dword [esp+8H], ecx                     ; 06DB _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06DF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06E3 _ 89. 04 24
        call    paint_string                            ; 06E6 _ E8, FFFFFFFC(rel)
        add     dword [ebp-58H], 8                      ; 06EB _ 83. 45, A8, 08
        mov     dword [ebp-10H], 1                      ; 06EF _ C7. 45, F0, 00000001
        mov     eax, dword [ebp-58H]                    ; 06F6 _ 8B. 45, A8
        lea     ebx, [eax+7H]                           ; 06F9 _ 8D. 58, 07
        mov     eax, dword [ebp-54H]                    ; 06FC _ 8B. 45, AC
        movzx   ecx, al                                 ; 06FF _ 0F B6. C8
        mov     eax, dword [sheet_win]                  ; 0702 _ A1, 00000000(d)
        mov     edx, dword [eax+4H]                     ; 0707 _ 8B. 50, 04
        mov     eax, dword [sheet_win]                  ; 070A _ A1, 00000000(d)
        mov     eax, dword [eax]                        ; 070F _ 8B. 00
        mov     dword [esp+18H], 43                     ; 0711 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0719 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 071D _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-58H]                    ; 0725 _ 8B. 5D, A8
        mov     dword [esp+0CH], ebx                    ; 0728 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 072C _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0730 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0734 _ 89. 04 24
        call    paint_rectangle                         ; 0737 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-58H]                    ; 073C _ 8B. 45, A8
        lea     ecx, [eax+8H]                           ; 073F _ 8D. 48, 08
        mov     edx, dword [sheet_win]                  ; 0742 _ 8B. 15, 00000000(d)
        mov     eax, dword [sheet_control]              ; 0748 _ A1, 0000000C(d)
        mov     dword [esp+14H], 44                     ; 074D _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0755 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 0759 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-58H]                    ; 0761 _ 8B. 4D, A8
        mov     dword [esp+8H], ecx                     ; 0764 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0768 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 076C _ 89. 04 24
        call    sheet_refresh                           ; 076F _ E8, FFFFFFFC(rel)
        jmp     ?_010                                   ; 0774 _ E9, 000000C8

?_006:  mov     eax, dword [ebp-20H]                    ; 0779 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 077C _ 89. 04 24
        call    is_special_key                          ; 077F _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 0784 _ 85. C0
        jne     ?_010                                   ; 0786 _ 0F 85, 000000B5
        mov     eax, dword [ebp-20H]                    ; 078C _ 8B. 45, E0
        movzx   eax, al                                 ; 078F _ 0F B6. C0
        mov     edx, dword [task_console_g]             ; 0792 _ 8B. 15, 00000000(d)
        add     edx, 16                                 ; 0798 _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 079B _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 079F _ 89. 14 24
        call    fifo8_put                               ; 07A2 _ E8, FFFFFFFC(rel)
        mov     dword [esp], keyinfo                    ; 07A7 _ C7. 04 24, 00000000(d)
        call    fifo8_status                            ; 07AE _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 07B3 _ 85. C0
        jne     ?_010                                   ; 07B5 _ 0F 85, 00000086
        mov     eax, dword [task_a]                     ; 07BB _ A1, 00000008(d)
        mov     dword [esp], eax                        ; 07C0 _ 89. 04 24
        call    task_sleep                              ; 07C3 _ E8, FFFFFFFC(rel)
        jmp     ?_010                                   ; 07C8 _ EB, 77

?_007:  mov     dword [esp], mouseinfo                  ; 07CA _ C7. 04 24, 00000000(d)
        call    fifo8_status                            ; 07D1 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 07D6 _ 85. C0
        jz      ?_008                                   ; 07D8 _ 74, 23
        mov     ecx, dword [mouse_sheet]                ; 07DA _ 8B. 0D, 00000014(d)
        mov     edx, dword [back_sheet]                 ; 07E0 _ 8B. 15, 00000010(d)
        mov     eax, dword [sheet_control]              ; 07E6 _ A1, 0000000C(d)
        mov     dword [esp+8H], ecx                     ; 07EB _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 07EF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 07F3 _ 89. 04 24
        call    show_mouse_info                         ; 07F6 _ E8, FFFFFFFC(rel)
        jmp     ?_010                                   ; 07FB _ EB, 44

?_008:  mov     dword [esp], timerinfo1.1759            ; 07FD _ C7. 04 24, 00000018(d)
        call    fifo8_status                            ; 0804 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 0809 _ 85. C0
        jz      ?_009                                   ; 080B _ 74, 13
        call    io_sti                                  ; 080D _ E8, FFFFFFFC(rel)
        mov     dword [esp], timerinfo1.1759            ; 0812 _ C7. 04 24, 00000018(d)
        call    fifo8_get                               ; 0819 _ E8, FFFFFFFC(rel)
        jmp     ?_010                                   ; 081E _ EB, 21

?_009:  mov     dword [esp], timerinfo2.1760            ; 0820 _ C7. 04 24, 0000003C(d)
        call    fifo8_status                            ; 0827 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 082C _ 85. C0
        jz      ?_010                                   ; 082E _ 74, 11
        call    io_sti                                  ; 0830 _ E8, FFFFFFFC(rel)
        mov     dword [esp], timerinfo2.1760            ; 0835 _ C7. 04 24, 0000003C(d)
        call    fifo8_get                               ; 083C _ E8, FFFFFFFC(rel)
?_010:  mov     dword [esp], timerinfo3.1761            ; 0841 _ C7. 04 24, 00000060(d)
        call    fifo8_status                            ; 0848 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 084D _ 85. C0
        je      ?_014                                   ; 084F _ 0F 84, 000000DB
        mov     dword [esp], timerinfo3.1761            ; 0855 _ C7. 04 24, 00000060(d)
        call    fifo8_get                               ; 085C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0861 _ 89. 45, F4
        call    io_sti                                  ; 0864 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-0CH], 0                      ; 0869 _ 83. 7D, F4, 00
        jz      ?_011                                   ; 086D _ 74, 24
        mov     dword [esp+8H], 0                       ; 086F _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], timerinfo3.1761         ; 0877 _ C7. 44 24, 04, 00000060(d)
        mov     eax, dword [ebp-30H]                    ; 087F _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0882 _ 89. 04 24
        call    timer_init                              ; 0885 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-54H], 0                      ; 088A _ C7. 45, AC, 00000000
        jmp     ?_012                                   ; 0891 _ EB, 22

?_011:  mov     dword [esp+8H], 1                       ; 0893 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], timerinfo3.1761         ; 089B _ C7. 44 24, 04, 00000060(d)
        mov     eax, dword [ebp-30H]                    ; 08A3 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 08A6 _ 89. 04 24
        call    timer_init                              ; 08A9 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-54H], 7                      ; 08AE _ C7. 45, AC, 00000007
?_012:  mov     dword [esp+4H], 50                      ; 08B5 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 08BD _ 8B. 45, D0
        mov     dword [esp], eax                        ; 08C0 _ 89. 04 24
        call    timer_settime                           ; 08C3 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-50H], 0                      ; 08C8 _ 83. 7D, B0, 00
        jnz     ?_013                                   ; 08CC _ 75, 2F
        mov     edx, dword [sheet_win]                  ; 08CE _ 8B. 15, 00000000(d)
        mov     eax, dword [sheet_control]              ; 08D4 _ A1, 0000000C(d)
        mov     ecx, dword [ebp-54H]                    ; 08D9 _ 8B. 4D, AC
        mov     dword [esp+10H], ecx                    ; 08DC _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 08E0 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-58H]                    ; 08E8 _ 8B. 4D, A8
        mov     dword [esp+8H], ecx                     ; 08EB _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 08EF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08F3 _ 89. 04 24
        call    set_cursor                              ; 08F6 _ E8, FFFFFFFC(rel)
        jmp     ?_014                                   ; 08FB _ EB, 33

?_013:  mov     edx, dword [sheet_win]                  ; 08FD _ 8B. 15, 00000000(d)
        mov     eax, dword [sheet_control]              ; 0903 _ A1, 0000000C(d)
        mov     dword [esp+10H], 7                      ; 0908 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 28                     ; 0910 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-58H]                    ; 0918 _ 8B. 4D, A8
        mov     dword [esp+8H], ecx                     ; 091B _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 091F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0923 _ 89. 04 24
        call    set_cursor                              ; 0926 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 092B _ E9, FFFFFA97

?_014:  jmp     ?_001                                   ; 0930 _ E9, FFFFFA92
; CMain End of function

task_b_main:; Function begin
        push    ebp                                     ; 0935 _ 55
        mov     ebp, esp                                ; 0936 _ 89. E5
        sub     esp, 104                                ; 0938 _ 83. EC, 68
        mov     eax, dword [ebp+8H]                     ; 093B _ 8B. 45, 08
        mov     dword [ebp-4CH], eax                    ; 093E _ 89. 45, B4
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 0941 _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 0947 _ 89. 45, F4
        xor     eax, eax                                ; 094A _ 31. C0
        mov     edx, dword [back_sheet]                 ; 094C _ 8B. 15, 00000010(d)
        mov     eax, dword [sheet_control]              ; 0952 _ A1, 0000000C(d)
        mov     dword [esp+14H], 7                      ; 0957 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], ?_233                  ; 095F _ C7. 44 24, 10, 0000000F(d)
        mov     dword [esp+0CH], 160                    ; 0967 _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 096F _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0977 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 097B _ 89. 04 24
        call    paint_string                            ; 097E _ E8, FFFFFFFC(rel)
        mov     dword [ebp-38H], 0                      ; 0983 _ C7. 45, C8, 00000000
        mov     dword [ebp-34H], 0                      ; 098A _ C7. 45, CC, 00000000
        mov     dword [esp+0CH], 0                      ; 0991 _ C7. 44 24, 0C, 00000000
        lea     eax, [ebp-14H]                          ; 0999 _ 8D. 45, EC
        mov     dword [esp+8H], eax                     ; 099C _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 09A0 _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-30H]                          ; 09A8 _ 8D. 45, D0
        mov     dword [esp], eax                        ; 09AB _ 89. 04 24
        call    fifo8_init                              ; 09AE _ E8, FFFFFFFC(rel)
        call    timer_alloc                             ; 09B3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-38H], eax                    ; 09B8 _ 89. 45, C8
        mov     dword [esp+8H], 123                     ; 09BB _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-30H]                          ; 09C3 _ 8D. 45, D0
        mov     dword [esp+4H], eax                     ; 09C6 _ 89. 44 24, 04
        mov     eax, dword [ebp-38H]                    ; 09CA _ 8B. 45, C8
        mov     dword [esp], eax                        ; 09CD _ 89. 04 24
        call    timer_init                              ; 09D0 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 100                     ; 09D5 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-38H]                    ; 09DD _ 8B. 45, C8
        mov     dword [esp], eax                        ; 09E0 _ 89. 04 24
        call    timer_settime                           ; 09E3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-40H], 0                      ; 09E8 _ C7. 45, C0, 00000000
        mov     dword [ebp-3CH], 0                      ; 09EF _ C7. 45, C4, 00000000
?_015:  add     dword [ebp-40H], 1                      ; 09F6 _ 83. 45, C0, 01
        call    io_cli                                  ; 09FA _ E8, FFFFFFFC(rel)
        lea     eax, [ebp-30H]                          ; 09FF _ 8D. 45, D0
        mov     dword [esp], eax                        ; 0A02 _ 89. 04 24
        call    fifo8_status                            ; 0A05 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 0A0A _ 85. C0
        jnz     ?_016                                   ; 0A0C _ 75, 07
        call    io_sti                                  ; 0A0E _ E8, FFFFFFFC(rel)
        jmp     ?_017                                   ; 0A13 _ EB, 6B

?_016:  lea     eax, [ebp-30H]                          ; 0A15 _ 8D. 45, D0
        mov     dword [esp], eax                        ; 0A18 _ 89. 04 24
        call    fifo8_get                               ; 0A1B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-34H], eax                    ; 0A20 _ 89. 45, CC
        call    io_sti                                  ; 0A23 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-34H], 123                    ; 0A28 _ 83. 7D, CC, 7B
        jnz     ?_017                                   ; 0A2C _ 75, 52
        mov     edx, dword [back_sheet]                 ; 0A2E _ 8B. 15, 00000010(d)
        mov     eax, dword [sheet_control]              ; 0A34 _ A1, 0000000C(d)
        mov     dword [esp+14H], 7                      ; 0A39 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], ?_234                  ; 0A41 _ C7. 44 24, 10, 0000001C(d)
        mov     dword [esp+0CH], 176                    ; 0A49 _ C7. 44 24, 0C, 000000B0
        mov     ecx, dword [ebp-3CH]                    ; 0A51 _ 8B. 4D, C4
        mov     dword [esp+8H], ecx                     ; 0A54 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0A58 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0A5C _ 89. 04 24
        call    paint_string                            ; 0A5F _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 100                     ; 0A64 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-38H]                    ; 0A6C _ 8B. 45, C8
        mov     dword [esp], eax                        ; 0A6F _ 89. 04 24
        call    timer_settime                           ; 0A72 _ E8, FFFFFFFC(rel)
        add     dword [ebp-3CH], 8                      ; 0A77 _ 83. 45, C4, 08
        jmp     ?_015                                   ; 0A7B _ E9, FFFFFF76

?_017:  jmp     ?_015                                   ; 0A80 _ E9, FFFFFF71
; task_b_main End of function

init_screeninfo:; Function begin
        push    ebp                                     ; 0A85 _ 55
        mov     ebp, esp                                ; 0A86 _ 89. E5
        mov     eax, dword [VRAM_ADDRESS]               ; 0A88 _ A1, 00000000(d)
        mov     edx, eax                                ; 0A8D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A8F _ 8B. 45, 08
        mov     dword [eax], edx                        ; 0A92 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0A94 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 640                      ; 0A97 _ 66: C7. 40, 04, 0280
        mov     eax, dword [ebp+8H]                     ; 0A9D _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 480                      ; 0AA0 _ 66: C7. 40, 06, 01E0
        pop     ebp                                     ; 0AA6 _ 5D
        ret                                             ; 0AA7 _ C3
; init_screeninfo End of function

init_palette:; Function begin
        push    ebp                                     ; 0AA8 _ 55
        mov     ebp, esp                                ; 0AA9 _ 89. E5
        sub     esp, 24                                 ; 0AAB _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1758          ; 0AAE _ C7. 44 24, 08, 00000120(d)
        mov     dword [esp+4H], 15                      ; 0AB6 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0ABE _ C7. 04 24, 00000000
        call    set_palette                             ; 0AC5 _ E8, FFFFFFFC(rel)
        nop                                             ; 0ACA _ 90
        leave                                           ; 0ACB _ C9
        ret                                             ; 0ACC _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0ACD _ 55
        mov     ebp, esp                                ; 0ACE _ 89. E5
        sub     esp, 40                                 ; 0AD0 _ 83. EC, 28
        call    io_load_eflags                          ; 0AD3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 0AD8 _ 89. 45, F4
        call    io_cli                                  ; 0ADB _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0AE0 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0AE3 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0AE7 _ C7. 04 24, 000003C8
        call    io_out8                                 ; 0AEE _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0AF3 _ 8B. 45, 08
        mov     dword [ebp-10H], eax                    ; 0AF6 _ 89. 45, F0
        jmp     ?_019                                   ; 0AF9 _ EB, 62

?_018:  mov     eax, dword [ebp+10H]                    ; 0AFB _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0AFE _ 0F B6. 00
        shr     al, 2                                   ; 0B01 _ C0. E8, 02
        movzx   eax, al                                 ; 0B04 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0B07 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0B0B _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0B12 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0B17 _ 8B. 45, 10
        add     eax, 1                                  ; 0B1A _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0B1D _ 0F B6. 00
        shr     al, 2                                   ; 0B20 _ C0. E8, 02
        movzx   eax, al                                 ; 0B23 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0B26 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0B2A _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0B31 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0B36 _ 8B. 45, 10
        add     eax, 2                                  ; 0B39 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0B3C _ 0F B6. 00
        shr     al, 2                                   ; 0B3F _ C0. E8, 02
        movzx   eax, al                                 ; 0B42 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0B45 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0B49 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0B50 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 0B55 _ 83. 45, 10, 03
        add     dword [ebp-10H], 1                      ; 0B59 _ 83. 45, F0, 01
?_019:  mov     eax, dword [ebp-10H]                    ; 0B5D _ 8B. 45, F0
        cmp     eax, dword [ebp+0CH]                    ; 0B60 _ 3B. 45, 0C
        jle     ?_018                                   ; 0B63 _ 7E, 96
        mov     eax, dword [ebp-0CH]                    ; 0B65 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0B68 _ 89. 04 24
        call    io_store_eflags                         ; 0B6B _ E8, FFFFFFFC(rel)
        nop                                             ; 0B70 _ 90
        leave                                           ; 0B71 _ C9
        ret                                             ; 0B72 _ C3
; set_palette End of function

paint_rectangle:; Function begin
        push    ebp                                     ; 0B73 _ 55
        mov     ebp, esp                                ; 0B74 _ 89. E5
        sub     esp, 20                                 ; 0B76 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0B79 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0B7C _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0B7F _ 8B. 45, 18
        mov     dword [ebp-4H], eax                     ; 0B82 _ 89. 45, FC
        jmp     ?_023                                   ; 0B85 _ EB, 33

?_020:  mov     eax, dword [ebp+14H]                    ; 0B87 _ 8B. 45, 14
        mov     dword [ebp-8H], eax                     ; 0B8A _ 89. 45, F8
        jmp     ?_022                                   ; 0B8D _ EB, 1F

?_021:  mov     eax, dword [ebp-4H]                     ; 0B8F _ 8B. 45, FC
        imul    eax, dword [ebp+0CH]                    ; 0B92 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0B96 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0B98 _ 8B. 45, F8
        add     eax, edx                                ; 0B9B _ 01. D0
        mov     edx, eax                                ; 0B9D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B9F _ 8B. 45, 08
        add     edx, eax                                ; 0BA2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BA4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BA8 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0BAA _ 83. 45, F8, 01
?_022:  mov     eax, dword [ebp-8H]                     ; 0BAE _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 0BB1 _ 3B. 45, 1C
        jle     ?_021                                   ; 0BB4 _ 7E, D9
        add     dword [ebp-4H], 1                       ; 0BB6 _ 83. 45, FC, 01
?_023:  mov     eax, dword [ebp-4H]                     ; 0BBA _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 0BBD _ 3B. 45, 20
        jle     ?_020                                   ; 0BC0 _ 7E, C5
        leave                                           ; 0BC2 _ C9
        ret                                             ; 0BC3 _ C3
; paint_rectangle End of function

init_desktop:; Function begin
        push    ebp                                     ; 0BC4 _ 55
        mov     ebp, esp                                ; 0BC5 _ 89. E5
        push    ebx                                     ; 0BC7 _ 53
        sub     esp, 28                                 ; 0BC8 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 0BCB _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0BCE _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 0BD1 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0BD4 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0BD7 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0BDB _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0BDF _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0BE7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 2                       ; 0BEF _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp+0CH]                    ; 0BF7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BFA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BFE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C01 _ 89. 04 24
        call    paint_rectangle                         ; 0C04 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0C09 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 0C0C _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 0C0F _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C12 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C15 _ 8B. 45, 10
        sub     eax, 28                                 ; 0C18 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0C1B _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0C1F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0C23 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0C27 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0C2F _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0C37 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C3A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C3E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C41 _ 89. 04 24
        call    paint_rectangle                         ; 0C44 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0C49 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 0C4C _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 0C4F _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C52 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C55 _ 8B. 45, 10
        sub     eax, 27                                 ; 0C58 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 0C5B _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0C5F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0C63 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0C67 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0C6F _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0C77 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C7A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C7E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C81 _ 89. 04 24
        call    paint_rectangle                         ; 0C84 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0C89 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0C8C _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0C8F _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0C92 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0C95 _ 8B. 45, 10
        sub     eax, 26                                 ; 0C98 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0C9B _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0C9F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0CA3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0CA7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0CAF _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0CB7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CBA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CBE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CC1 _ 89. 04 24
        call    paint_rectangle                         ; 0CC4 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0CC9 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0CCC _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 0CCF _ 8B. 45, 10
        sub     eax, 24                                 ; 0CD2 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0CD5 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0CD9 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0CE1 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0CE5 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0CED _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0CF5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CF8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CFC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CFF _ 89. 04 24
        call    paint_rectangle                         ; 0D02 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0D07 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0D0A _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0D0D _ 8B. 45, 10
        sub     eax, 24                                 ; 0D10 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0D13 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0D17 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0D1F _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0D23 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0D2B _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D33 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D36 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D3A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D3D _ 89. 04 24
        call    paint_rectangle                         ; 0D40 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0D45 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0D48 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0D4B _ 8B. 45, 10
        sub     eax, 4                                  ; 0D4E _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0D51 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0D55 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0D5D _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0D61 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 2                       ; 0D69 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp+0CH]                    ; 0D71 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D74 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D78 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D7B _ 89. 04 24
        call    paint_rectangle                         ; 0D7E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0D83 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0D86 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0D89 _ 8B. 45, 10
        sub     eax, 23                                 ; 0D8C _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 0D8F _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0D93 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0D9B _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0D9F _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 2                       ; 0DA7 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp+0CH]                    ; 0DAF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DB2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DB6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DB9 _ 89. 04 24
        call    paint_rectangle                         ; 0DBC _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0DC1 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0DC4 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0DC7 _ 8B. 45, 10
        sub     eax, 3                                  ; 0DCA _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0DCD _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0DD1 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0DD9 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0DDD _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0DE5 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0DED _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DF0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DF4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0DF7 _ 89. 04 24
        call    paint_rectangle                         ; 0DFA _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0DFF _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0E02 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0E05 _ 8B. 45, 10
        sub     eax, 24                                 ; 0E08 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0E0B _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0E0F _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0E17 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0E1B _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0E23 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0E2B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E2E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E32 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E35 _ 89. 04 24
        call    paint_rectangle                         ; 0E38 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0E3D _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 0E40 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 0E43 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0E46 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0E49 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0E4C _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0E4F _ 8B. 45, 0C
        sub     eax, 47                                 ; 0E52 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0E55 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0E59 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0E5D _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0E61 _ 89. 44 24, 0C
        mov     dword [esp+8H], 2                       ; 0E65 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp+0CH]                    ; 0E6D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E70 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E74 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E77 _ 89. 04 24
        call    paint_rectangle                         ; 0E7A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0E7F _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0E82 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0E85 _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0E88 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0E8B _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0E8E _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0E91 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0E94 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0E97 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0E9B _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0E9F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0EA3 _ 89. 44 24, 0C
        mov     dword [esp+8H], 2                       ; 0EA7 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp+0CH]                    ; 0EAF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0EB2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EB6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EB9 _ 89. 04 24
        call    paint_rectangle                         ; 0EBC _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0EC1 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0EC4 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0EC7 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0ECA _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0ECD _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0ED0 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0ED3 _ 8B. 45, 0C
        sub     eax, 47                                 ; 0ED6 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0ED9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0EDD _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0EE1 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0EE5 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0EE9 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0EF1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0EF4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EF8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EFB _ 89. 04 24
        call    paint_rectangle                         ; 0EFE _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0F03 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0F06 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0F09 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0F0C _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0F0F _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0F12 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 0F15 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0F18 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0F1B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0F1F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0F23 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0F27 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0F2B _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0F33 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F36 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F3A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F3D _ 89. 04 24
        call    paint_rectangle                         ; 0F40 _ E8, FFFFFFFC(rel)
        add     esp, 28                                 ; 0F45 _ 83. C4, 1C
        pop     ebx                                     ; 0F48 _ 5B
        pop     ebp                                     ; 0F49 _ 5D
        ret                                             ; 0F4A _ C3
; init_desktop End of function

init_mouse_position:; Function begin
        push    ebp                                     ; 0F4B _ 55
        mov     ebp, esp                                ; 0F4C _ 89. E5
        sub     esp, 16                                 ; 0F4E _ 83. EC, 10
        movzx   eax, word [?_245]                       ; 0F51 _ 0F B7. 05, 000000A4(d)
        cwde                                            ; 0F58 _ 98
        mov     dword [ebp-8H], eax                     ; 0F59 _ 89. 45, F8
        movzx   eax, word [?_246]                       ; 0F5C _ 0F B7. 05, 000000A6(d)
        cwde                                            ; 0F63 _ 98
        mov     dword [ebp-4H], eax                     ; 0F64 _ 89. 45, FC
        mov     eax, dword [ebp-8H]                     ; 0F67 _ 8B. 45, F8
        sub     eax, 16                                 ; 0F6A _ 83. E8, 10
        mov     edx, eax                                ; 0F6D _ 89. C2
        shr     edx, 31                                 ; 0F6F _ C1. EA, 1F
        add     eax, edx                                ; 0F72 _ 01. D0
        sar     eax, 1                                  ; 0F74 _ D1. F8
        mov     dword [mouse_x], eax                    ; 0F76 _ A3, 000001C8(d)
        mov     eax, dword [ebp-4H]                     ; 0F7B _ 8B. 45, FC
        sub     eax, 44                                 ; 0F7E _ 83. E8, 2C
        mov     edx, eax                                ; 0F81 _ 89. C2
        shr     edx, 31                                 ; 0F83 _ C1. EA, 1F
        add     eax, edx                                ; 0F86 _ 01. D0
        sar     eax, 1                                  ; 0F88 _ D1. F8
        mov     dword [mouse_y], eax                    ; 0F8A _ A3, 000001CC(d)
        leave                                           ; 0F8F _ C9
        ret                                             ; 0F90 _ C3
; init_mouse_position End of function

paint_font:; Function begin
        push    ebp                                     ; 0F91 _ 55
        mov     ebp, esp                                ; 0F92 _ 89. E5
        sub     esp, 20                                 ; 0F94 _ 83. EC, 14
        mov     eax, dword [ebp+1CH]                    ; 0F97 _ 8B. 45, 1C
        mov     byte [ebp-14H], al                      ; 0F9A _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0F9D _ C7. 45, FC, 00000000
        jmp     ?_033                                   ; 0FA4 _ E9, 0000016E

?_024:  mov     edx, dword [ebp-4H]                     ; 0FA9 _ 8B. 55, FC
        mov     eax, dword [ebp+18H]                    ; 0FAC _ 8B. 45, 18
        add     eax, edx                                ; 0FAF _ 01. D0
        movzx   eax, byte [eax]                         ; 0FB1 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0FB4 _ 88. 45, FB
        movzx   eax, byte [ebp-5H]                      ; 0FB7 _ 0F B6. 45, FB
        test    al, al                                  ; 0FBB _ 84. C0
        jns     ?_025                                   ; 0FBD _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 0FBF _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0FC2 _ 8B. 55, 14
        add     eax, edx                                ; 0FC5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0FC7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0FCB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0FCD _ 8B. 45, 10
        add     eax, edx                                ; 0FD0 _ 01. D0
        mov     edx, eax                                ; 0FD2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FD4 _ 8B. 45, 08
        add     edx, eax                                ; 0FD7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0FD9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0FDD _ 88. 02
?_025:  movzx   eax, byte [ebp-5H]                      ; 0FDF _ 0F B6. 45, FB
        and     eax, 40H                                ; 0FE3 _ 83. E0, 40
        test    eax, eax                                ; 0FE6 _ 85. C0
        jz      ?_026                                   ; 0FE8 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0FEA _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0FED _ 8B. 55, 14
        add     eax, edx                                ; 0FF0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0FF2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0FF6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0FF8 _ 8B. 45, 10
        add     eax, edx                                ; 0FFB _ 01. D0
        lea     edx, [eax+1H]                           ; 0FFD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1000 _ 8B. 45, 08
        add     edx, eax                                ; 1003 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1005 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1009 _ 88. 02
?_026:  movzx   eax, byte [ebp-5H]                      ; 100B _ 0F B6. 45, FB
        and     eax, 20H                                ; 100F _ 83. E0, 20
        test    eax, eax                                ; 1012 _ 85. C0
        jz      ?_027                                   ; 1014 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 1016 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 1019 _ 8B. 55, 14
        add     eax, edx                                ; 101C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 101E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 1022 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1024 _ 8B. 45, 10
        add     eax, edx                                ; 1027 _ 01. D0
        lea     edx, [eax+2H]                           ; 1029 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 102C _ 8B. 45, 08
        add     edx, eax                                ; 102F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1031 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1035 _ 88. 02
?_027:  movzx   eax, byte [ebp-5H]                      ; 1037 _ 0F B6. 45, FB
        and     eax, 10H                                ; 103B _ 83. E0, 10
        test    eax, eax                                ; 103E _ 85. C0
        jz      ?_028                                   ; 1040 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 1042 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 1045 _ 8B. 55, 14
        add     eax, edx                                ; 1048 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 104A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 104E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1050 _ 8B. 45, 10
        add     eax, edx                                ; 1053 _ 01. D0
        lea     edx, [eax+3H]                           ; 1055 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1058 _ 8B. 45, 08
        add     edx, eax                                ; 105B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 105D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1061 _ 88. 02
?_028:  movzx   eax, byte [ebp-5H]                      ; 1063 _ 0F B6. 45, FB
        and     eax, 08H                                ; 1067 _ 83. E0, 08
        test    eax, eax                                ; 106A _ 85. C0
        jz      ?_029                                   ; 106C _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 106E _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 1071 _ 8B. 55, 14
        add     eax, edx                                ; 1074 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1076 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 107A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 107C _ 8B. 45, 10
        add     eax, edx                                ; 107F _ 01. D0
        lea     edx, [eax+4H]                           ; 1081 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1084 _ 8B. 45, 08
        add     edx, eax                                ; 1087 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1089 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 108D _ 88. 02
?_029:  movzx   eax, byte [ebp-5H]                      ; 108F _ 0F B6. 45, FB
        and     eax, 04H                                ; 1093 _ 83. E0, 04
        test    eax, eax                                ; 1096 _ 85. C0
        jz      ?_030                                   ; 1098 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 109A _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 109D _ 8B. 55, 14
        add     eax, edx                                ; 10A0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 10A2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 10A6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 10A8 _ 8B. 45, 10
        add     eax, edx                                ; 10AB _ 01. D0
        lea     edx, [eax+5H]                           ; 10AD _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 10B0 _ 8B. 45, 08
        add     edx, eax                                ; 10B3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 10B5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 10B9 _ 88. 02
?_030:  movzx   eax, byte [ebp-5H]                      ; 10BB _ 0F B6. 45, FB
        and     eax, 02H                                ; 10BF _ 83. E0, 02
        test    eax, eax                                ; 10C2 _ 85. C0
        jz      ?_031                                   ; 10C4 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 10C6 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 10C9 _ 8B. 55, 14
        add     eax, edx                                ; 10CC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 10CE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 10D2 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 10D4 _ 8B. 45, 10
        add     eax, edx                                ; 10D7 _ 01. D0
        lea     edx, [eax+6H]                           ; 10D9 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 10DC _ 8B. 45, 08
        add     edx, eax                                ; 10DF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 10E1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 10E5 _ 88. 02
?_031:  movzx   eax, byte [ebp-5H]                      ; 10E7 _ 0F B6. 45, FB
        and     eax, 01H                                ; 10EB _ 83. E0, 01
        test    eax, eax                                ; 10EE _ 85. C0
        jz      ?_032                                   ; 10F0 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 10F2 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 10F5 _ 8B. 55, 14
        add     eax, edx                                ; 10F8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 10FA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 10FE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1100 _ 8B. 45, 10
        add     eax, edx                                ; 1103 _ 01. D0
        lea     edx, [eax+7H]                           ; 1105 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 1108 _ 8B. 45, 08
        add     edx, eax                                ; 110B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 110D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1111 _ 88. 02
?_032:  add     dword [ebp-4H], 1                       ; 1113 _ 83. 45, FC, 01
?_033:  cmp     dword [ebp-4H], 15                      ; 1117 _ 83. 7D, FC, 0F
        jle     ?_024                                   ; 111B _ 0F 8E, FFFFFE88
        leave                                           ; 1121 _ C9
        ret                                             ; 1122 _ C3
; paint_font End of function

paint_string:; Function begin
        push    ebp                                     ; 1123 _ 55
        mov     ebp, esp                                ; 1124 _ 89. E5
        push    ebx                                     ; 1126 _ 53
        sub     esp, 52                                 ; 1127 _ 83. EC, 34
        mov     eax, dword [ebp+1CH]                    ; 112A _ 8B. 45, 1C
        mov     byte [ebp-1CH], al                      ; 112D _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1130 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 1133 _ 89. 45, F4
        jmp     ?_035                                   ; 1136 _ EB, 4B

?_034:  movsx   ecx, byte [ebp-1CH]                     ; 1138 _ 0F BE. 4D, E4
        mov     eax, dword [ebp+18H]                    ; 113C _ 8B. 45, 18
        movzx   eax, byte [eax]                         ; 113F _ 0F B6. 00
        movsx   eax, al                                 ; 1142 _ 0F BE. C0
        shl     eax, 4                                  ; 1145 _ C1. E0, 04
        lea     ebx, [systemFont+eax]                   ; 1148 _ 8D. 98, 00000000(d)
        mov     eax, dword [ebp+0CH]                    ; 114E _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 1151 _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 1154 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1157 _ 8B. 00
        mov     dword [esp+14H], ecx                    ; 1159 _ 89. 4C 24, 14
        mov     dword [esp+10H], ebx                    ; 115D _ 89. 5C 24, 10
        mov     ecx, dword [ebp+14H]                    ; 1161 _ 8B. 4D, 14
        mov     dword [esp+0CH], ecx                    ; 1164 _ 89. 4C 24, 0C
        mov     ecx, dword [ebp+10H]                    ; 1168 _ 8B. 4D, 10
        mov     dword [esp+8H], ecx                     ; 116B _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 116F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1173 _ 89. 04 24
        call    paint_font                              ; 1176 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 8                      ; 117B _ 83. 45, 10, 08
        add     dword [ebp+18H], 1                      ; 117F _ 83. 45, 18, 01
?_035:  mov     eax, dword [ebp+18H]                    ; 1183 _ 8B. 45, 18
        movzx   eax, byte [eax]                         ; 1186 _ 0F B6. 00
        test    al, al                                  ; 1189 _ 84. C0
        jnz     ?_034                                   ; 118B _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 118D _ 8B. 45, 14
        add     eax, 16                                 ; 1190 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 1193 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 1197 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 119A _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 119E _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 11A1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 11A5 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 11A8 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 11AC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 11AF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 11B3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 11B6 _ 89. 04 24
        call    sheet_refresh                           ; 11B9 _ E8, FFFFFFFC(rel)
        add     esp, 52                                 ; 11BE _ 83. C4, 34
        pop     ebx                                     ; 11C1 _ 5B
        pop     ebp                                     ; 11C2 _ 5D
        ret                                             ; 11C3 _ C3
; paint_string End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 11C4 _ 55
        mov     ebp, esp                                ; 11C5 _ 89. E5
        sub     esp, 20                                 ; 11C7 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 11CA _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 11CD _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 11D0 _ C7. 45, F8, 00000000
        jmp     ?_042                                   ; 11D7 _ E9, 0000009C

?_036:  mov     dword [ebp-4H], 0                       ; 11DC _ C7. 45, FC, 00000000
        jmp     ?_041                                   ; 11E3 _ E9, 00000082

?_037:  mov     eax, dword [ebp-8H]                     ; 11E8 _ 8B. 45, F8
        shl     eax, 4                                  ; 11EB _ C1. E0, 04
        mov     edx, eax                                ; 11EE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 11F0 _ 8B. 45, FC
        add     eax, edx                                ; 11F3 _ 01. D0
        add     eax, cursor.1826                        ; 11F5 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 11FA _ 0F B6. 00
        cmp     al, 42                                  ; 11FD _ 3C, 2A
        jnz     ?_038                                   ; 11FF _ 75, 19
        mov     eax, dword [ebp-8H]                     ; 1201 _ 8B. 45, F8
        shl     eax, 4                                  ; 1204 _ C1. E0, 04
        mov     edx, eax                                ; 1207 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1209 _ 8B. 45, FC
        add     eax, edx                                ; 120C _ 01. D0
        mov     edx, eax                                ; 120E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1210 _ 8B. 45, 08
        add     eax, edx                                ; 1213 _ 01. D0
        mov     byte [eax], 0                           ; 1215 _ C6. 00, 00
        jmp     ?_040                                   ; 1218 _ EB, 4C

?_038:  mov     eax, dword [ebp-8H]                     ; 121A _ 8B. 45, F8
        shl     eax, 4                                  ; 121D _ C1. E0, 04
        mov     edx, eax                                ; 1220 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1222 _ 8B. 45, FC
        add     eax, edx                                ; 1225 _ 01. D0
        add     eax, cursor.1826                        ; 1227 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 122C _ 0F B6. 00
        cmp     al, 79                                  ; 122F _ 3C, 4F
        jnz     ?_039                                   ; 1231 _ 75, 19
        mov     eax, dword [ebp-8H]                     ; 1233 _ 8B. 45, F8
        shl     eax, 4                                  ; 1236 _ C1. E0, 04
        mov     edx, eax                                ; 1239 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 123B _ 8B. 45, FC
        add     eax, edx                                ; 123E _ 01. D0
        mov     edx, eax                                ; 1240 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1242 _ 8B. 45, 08
        add     eax, edx                                ; 1245 _ 01. D0
        mov     byte [eax], 7                           ; 1247 _ C6. 00, 07
        jmp     ?_040                                   ; 124A _ EB, 1A

?_039:  mov     eax, dword [ebp-8H]                     ; 124C _ 8B. 45, F8
        shl     eax, 4                                  ; 124F _ C1. E0, 04
        mov     edx, eax                                ; 1252 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1254 _ 8B. 45, FC
        add     eax, edx                                ; 1257 _ 01. D0
        mov     edx, eax                                ; 1259 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 125B _ 8B. 45, 08
        add     edx, eax                                ; 125E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1260 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1264 _ 88. 02
?_040:  add     dword [ebp-4H], 1                       ; 1266 _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 15                      ; 126A _ 83. 7D, FC, 0F
        jle     ?_037                                   ; 126E _ 0F 8E, FFFFFF74
        add     dword [ebp-8H], 1                       ; 1274 _ 83. 45, F8, 01
?_042:  cmp     dword [ebp-8H], 15                      ; 1278 _ 83. 7D, F8, 0F
        jle     ?_036                                   ; 127C _ 0F 8E, FFFFFF5A
        leave                                           ; 1282 _ C9
        ret                                             ; 1283 _ C3
; init_mouse_cursor End of function

paint_block:; Function begin
        push    ebp                                     ; 1284 _ 55
        mov     ebp, esp                                ; 1285 _ 89. E5
        sub     esp, 16                                 ; 1287 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 128A _ C7. 45, F8, 00000000
        jmp     ?_046                                   ; 1291 _ EB, 50

?_043:  mov     dword [ebp-4H], 0                       ; 1293 _ C7. 45, FC, 00000000
        jmp     ?_045                                   ; 129A _ EB, 3B

?_044:  mov     eax, dword [ebp-8H]                     ; 129C _ 8B. 45, F8
        mov     edx, dword [ebp+14H]                    ; 129F _ 8B. 55, 14
        add     eax, edx                                ; 12A2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 12A4 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 12A8 _ 8B. 55, FC
        mov     ecx, dword [ebp+10H]                    ; 12AB _ 8B. 4D, 10
        add     edx, ecx                                ; 12AE _ 01. CA
        add     eax, edx                                ; 12B0 _ 01. D0
        mov     edx, eax                                ; 12B2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12B4 _ 8B. 45, 08
        add     edx, eax                                ; 12B7 _ 01. C2
        mov     eax, dword [ebp-8H]                     ; 12B9 _ 8B. 45, F8
        imul    eax, dword [ebp+18H]                    ; 12BC _ 0F AF. 45, 18
        mov     ecx, eax                                ; 12C0 _ 89. C1
        mov     eax, dword [ebp-4H]                     ; 12C2 _ 8B. 45, FC
        add     eax, ecx                                ; 12C5 _ 01. C8
        mov     ecx, eax                                ; 12C7 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 12C9 _ 8B. 45, 20
        add     eax, ecx                                ; 12CC _ 01. C8
        movzx   eax, byte [eax]                         ; 12CE _ 0F B6. 00
        mov     byte [edx], al                          ; 12D1 _ 88. 02
        add     dword [ebp-4H], 1                       ; 12D3 _ 83. 45, FC, 01
?_045:  mov     eax, dword [ebp-4H]                     ; 12D7 _ 8B. 45, FC
        cmp     eax, dword [ebp+18H]                    ; 12DA _ 3B. 45, 18
        jl      ?_044                                   ; 12DD _ 7C, BD
        add     dword [ebp-8H], 1                       ; 12DF _ 83. 45, F8, 01
?_046:  mov     eax, dword [ebp-8H]                     ; 12E3 _ 8B. 45, F8
        cmp     eax, dword [ebp+1CH]                    ; 12E6 _ 3B. 45, 1C
        jl      ?_043                                   ; 12E9 _ 7C, A8
        leave                                           ; 12EB _ C9
        ret                                             ; 12EC _ C3
; paint_block End of function

init_fifo_buf:; Function begin
        push    ebp                                     ; 12ED _ 55
        mov     ebp, esp                                ; 12EE _ 89. E5
        sub     esp, 24                                 ; 12F0 _ 83. EC, 18
        mov     dword [esp+0CH], 0                      ; 12F3 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], mousebuf                ; 12FB _ C7. 44 24, 08, 00000000(d)
        mov     dword [esp+4H], 128                     ; 1303 _ C7. 44 24, 04, 00000080
        mov     dword [esp], mouseinfo                  ; 130B _ C7. 04 24, 00000000(d)
        call    fifo8_init                              ; 1312 _ E8, FFFFFFFC(rel)
        mov     dword [esp+0CH], 0                      ; 1317 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], keybuf                  ; 131F _ C7. 44 24, 08, 00000000(d)
        mov     dword [esp+4H], 32                      ; 1327 _ C7. 44 24, 04, 00000020
        mov     dword [esp], keyinfo                    ; 132F _ C7. 04 24, 00000000(d)
        call    fifo8_init                              ; 1336 _ E8, FFFFFFFC(rel)
        leave                                           ; 133B _ C9
        ret                                             ; 133C _ C3
; init_fifo_buf End of function

compute_mouse_position:; Function begin
        push    ebp                                     ; 133D _ 55
        mov     ebp, esp                                ; 133E _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 1340 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 1343 _ 8B. 50, 04
        mov     eax, dword [mouse_x]                    ; 1346 _ A1, 000001C8(d)
        add     eax, edx                                ; 134B _ 01. D0
        mov     dword [mouse_x], eax                    ; 134D _ A3, 000001C8(d)
        mov     eax, dword [ebp+10H]                    ; 1352 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 1355 _ 8B. 50, 08
        mov     eax, dword [mouse_y]                    ; 1358 _ A1, 000001CC(d)
        add     eax, edx                                ; 135D _ 01. D0
        mov     dword [mouse_y], eax                    ; 135F _ A3, 000001CC(d)
        mov     eax, dword [mouse_x]                    ; 1364 _ A1, 000001C8(d)
        test    eax, eax                                ; 1369 _ 85. C0
        jns     ?_047                                   ; 136B _ 79, 0A
        mov     dword [mouse_x], 0                      ; 136D _ C7. 05, 000001C8(d), 00000000
?_047:  mov     eax, dword [mouse_y]                    ; 1377 _ A1, 000001CC(d)
        test    eax, eax                                ; 137C _ 85. C0
        jns     ?_048                                   ; 137E _ 79, 0A
        mov     dword [mouse_y], 0                      ; 1380 _ C7. 05, 000001CC(d), 00000000
?_048:  movzx   eax, word [?_245]                       ; 138A _ 0F B7. 05, 000000A4(d)
        cwde                                            ; 1391 _ 98
        lea     edx, [eax-10H]                          ; 1392 _ 8D. 50, F0
        mov     eax, dword [mouse_x]                    ; 1395 _ A1, 000001C8(d)
        cmp     edx, eax                                ; 139A _ 39. C2
        jge     ?_049                                   ; 139C _ 7D, 10
        movzx   eax, word [?_245]                       ; 139E _ 0F B7. 05, 000000A4(d)
        cwde                                            ; 13A5 _ 98
        sub     eax, 16                                 ; 13A6 _ 83. E8, 10
        mov     dword [mouse_x], eax                    ; 13A9 _ A3, 000001C8(d)
?_049:  movzx   eax, word [?_245]                       ; 13AE _ 0F B7. 05, 000000A4(d)
        cwde                                            ; 13B5 _ 98
        lea     edx, [eax-10H]                          ; 13B6 _ 8D. 50, F0
        mov     eax, dword [mouse_y]                    ; 13B9 _ A1, 000001CC(d)
        cmp     edx, eax                                ; 13BE _ 39. C2
        jge     ?_050                                   ; 13C0 _ 7D, 10
        movzx   eax, word [?_245]                       ; 13C2 _ 0F B7. 05, 000000A4(d)
        cwde                                            ; 13C9 _ 98
        sub     eax, 16                                 ; 13CA _ 83. E8, 10
        mov     dword [mouse_y], eax                    ; 13CD _ A3, 000001CC(d)
?_050:  pop     ebp                                     ; 13D2 _ 5D
        ret                                             ; 13D3 _ C3
; compute_mouse_position End of function

show_mouse_info:; Function begin
        push    ebp                                     ; 13D4 _ 55
        mov     ebp, esp                                ; 13D5 _ 89. E5
        sub     esp, 40                                 ; 13D7 _ 83. EC, 28
        mov     byte [ebp-9H], 0                        ; 13DA _ C6. 45, F7, 00
        call    io_sti                                  ; 13DE _ E8, FFFFFFFC(rel)
        mov     dword [esp], mouseinfo                  ; 13E3 _ C7. 04 24, 00000000(d)
        call    fifo8_get                               ; 13EA _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], al                       ; 13EF _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 13F2 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 13F6 _ 89. 44 24, 04
        mov     dword [esp], mouse_send_info            ; 13FA _ C7. 04 24, 00000000(d)
        call    mouse_decode                            ; 1401 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 1406 _ 85. C0
        jz      ?_051                                   ; 1408 _ 74, 77
        mov     dword [esp+8H], mouse_send_info         ; 140A _ C7. 44 24, 08, 00000000(d)
        mov     eax, dword [ebp+0CH]                    ; 1412 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1415 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1419 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 141C _ 89. 04 24
        call    compute_mouse_position                  ; 141F _ E8, FFFFFFFC(rel)
        mov     edx, dword [mouse_y]                    ; 1424 _ 8B. 15, 000001CC(d)
        mov     eax, dword [mouse_x]                    ; 142A _ A1, 000001C8(d)
        mov     dword [esp+0CH], edx                    ; 142F _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 1433 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1437 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 143A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 143E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1441 _ 89. 04 24
        call    sheet_slide                             ; 1444 _ E8, FFFFFFFC(rel)
        mov     eax, dword [mouse_send_info+0CH]        ; 1449 _ A1, 0000000C(d)
        and     eax, 01H                                ; 144E _ 83. E0, 01
        test    eax, eax                                ; 1451 _ 85. C0
        jz      ?_051                                   ; 1453 _ 74, 2C
        mov     eax, dword [mouse_y]                    ; 1455 _ A1, 000001CC(d)
        lea     ecx, [eax-8H]                           ; 145A _ 8D. 48, F8
        mov     eax, dword [mouse_x]                    ; 145D _ A1, 000001C8(d)
        lea     edx, [eax-50H]                          ; 1462 _ 8D. 50, B0
        mov     eax, dword [sheet_win]                  ; 1465 _ A1, 000001C4(d)
        mov     dword [esp+0CH], ecx                    ; 146A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 146E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1472 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1476 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1479 _ 89. 04 24
        call    sheet_slide                             ; 147C _ E8, FFFFFFFC(rel)
?_051:  leave                                           ; 1481 _ C9
        ret                                             ; 1482 _ C3
; show_mouse_info End of function

show_memory_info:; Function begin
        push    ebp                                     ; 1483 _ 55
        mov     ebp, esp                                ; 1484 _ 89. E5
        sub     esp, 88                                 ; 1486 _ 83. EC, 58
        mov     dword [ebp-38H], 0                      ; 1489 _ C7. 45, C8, 00000000
        mov     dword [ebp-34H], 0                      ; 1490 _ C7. 45, CC, 00000000
        mov     dword [ebp-30H], 104                    ; 1497 _ C7. 45, D0, 00000068
        mov     eax, dword [screen_info]                ; 149E _ A1, 000000A0(d)
        mov     dword [ebp-2CH], eax                    ; 14A3 _ 89. 45, D4
        movzx   eax, word [?_245]                       ; 14A6 _ 0F B7. 05, 000000A4(d)
        cwde                                            ; 14AD _ 98
        mov     dword [ebp-28H], eax                    ; 14AE _ 89. 45, D8
        movzx   eax, word [?_246]                       ; 14B1 _ 0F B7. 05, 000000A6(d)
        cwde                                            ; 14B8 _ 98
        mov     dword [ebp-24H], eax                    ; 14B9 _ 89. 45, DC
        mov     eax, dword [ebp+0CH]                    ; 14BC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 14BF _ 8B. 00
        mov     edx, dword [ebp-24H]                    ; 14C1 _ 8B. 55, DC
        mov     dword [esp+8H], edx                     ; 14C4 _ 89. 54 24, 08
        mov     edx, dword [ebp-28H]                    ; 14C8 _ 8B. 55, D8
        mov     dword [esp+4H], edx                     ; 14CB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 14CF _ 89. 04 24
        call    init_desktop                            ; 14D2 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], 7                      ; 14D7 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], ?_235                  ; 14DF _ C7. 44 24, 10, 0000001E(d)
        mov     eax, dword [ebp-34H]                    ; 14E7 _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 14EA _ 89. 44 24, 0C
        mov     eax, dword [ebp-38H]                    ; 14EE _ 8B. 45, C8
        mov     dword [esp+8H], eax                     ; 14F1 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 14F5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 14F8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 14FC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14FF _ 89. 04 24
        call    paint_string                            ; 1502 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+14H]                    ; 1507 _ 8B. 45, 14
        mov     dword [esp], eax                        ; 150A _ 89. 04 24
        call    intToHexStr                             ; 150D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-20H], eax                    ; 1512 _ 89. 45, E0
        mov     dword [esp+14H], 7                      ; 1515 _ C7. 44 24, 14, 00000007
        mov     eax, dword [ebp-20H]                    ; 151D _ 8B. 45, E0
        mov     dword [esp+10H], eax                    ; 1520 _ 89. 44 24, 10
        mov     eax, dword [ebp-34H]                    ; 1524 _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 1527 _ 89. 44 24, 0C
        mov     eax, dword [ebp-30H]                    ; 152B _ 8B. 45, D0
        mov     dword [esp+8H], eax                     ; 152E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1532 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1535 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1539 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 153C _ 89. 04 24
        call    paint_string                            ; 153F _ E8, FFFFFFFC(rel)
        add     dword [ebp-34H], 16                     ; 1544 _ 83. 45, CC, 10
        mov     dword [esp+14H], 7                      ; 1548 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], ?_236                  ; 1550 _ C7. 44 24, 10, 00000028(d)
        mov     eax, dword [ebp-34H]                    ; 1558 _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 155B _ 89. 44 24, 0C
        mov     eax, dword [ebp-38H]                    ; 155F _ 8B. 45, C8
        mov     dword [esp+8H], eax                     ; 1562 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1566 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1569 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 156D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1570 _ 89. 04 24
        call    paint_string                            ; 1573 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 1578 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 157B _ 8B. 00
        mov     dword [esp], eax                        ; 157D _ 89. 04 24
        call    intToHexStr                             ; 1580 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-1CH], eax                    ; 1585 _ 89. 45, E4
        mov     dword [esp+14H], 7                      ; 1588 _ C7. 44 24, 14, 00000007
        mov     eax, dword [ebp-1CH]                    ; 1590 _ 8B. 45, E4
        mov     dword [esp+10H], eax                    ; 1593 _ 89. 44 24, 10
        mov     eax, dword [ebp-34H]                    ; 1597 _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 159A _ 89. 44 24, 0C
        mov     eax, dword [ebp-30H]                    ; 159E _ 8B. 45, D0
        mov     dword [esp+8H], eax                     ; 15A1 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 15A5 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 15A8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15AC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15AF _ 89. 04 24
        call    paint_string                            ; 15B2 _ E8, FFFFFFFC(rel)
        add     dword [ebp-34H], 16                     ; 15B7 _ 83. 45, CC, 10
        mov     dword [esp+14H], 7                      ; 15BB _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], ?_237                  ; 15C3 _ C7. 44 24, 10, 00000034(d)
        mov     eax, dword [ebp-34H]                    ; 15CB _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 15CE _ 89. 44 24, 0C
        mov     eax, dword [ebp-38H]                    ; 15D2 _ 8B. 45, C8
        mov     dword [esp+8H], eax                     ; 15D5 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 15D9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 15DC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15E0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15E3 _ 89. 04 24
        call    paint_string                            ; 15E6 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 15EB _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 15EE _ 8B. 40, 04
        mov     dword [esp], eax                        ; 15F1 _ 89. 04 24
        call    intToHexStr                             ; 15F4 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-18H], eax                    ; 15F9 _ 89. 45, E8
        mov     dword [esp+14H], 7                      ; 15FC _ C7. 44 24, 14, 00000007
        mov     eax, dword [ebp-18H]                    ; 1604 _ 8B. 45, E8
        mov     dword [esp+10H], eax                    ; 1607 _ 89. 44 24, 10
        mov     eax, dword [ebp-34H]                    ; 160B _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 160E _ 89. 44 24, 0C
        mov     eax, dword [ebp-30H]                    ; 1612 _ 8B. 45, D0
        mov     dword [esp+8H], eax                     ; 1615 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1619 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 161C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1620 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1623 _ 89. 04 24
        call    paint_string                            ; 1626 _ E8, FFFFFFFC(rel)
        add     dword [ebp-34H], 16                     ; 162B _ 83. 45, CC, 10
        mov     dword [esp+14H], 7                      ; 162F _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], ?_238                  ; 1637 _ C7. 44 24, 10, 00000040(d)
        mov     eax, dword [ebp-34H]                    ; 163F _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 1642 _ 89. 44 24, 0C
        mov     eax, dword [ebp-38H]                    ; 1646 _ 8B. 45, C8
        mov     dword [esp+8H], eax                     ; 1649 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 164D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1650 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1654 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1657 _ 89. 04 24
        call    paint_string                            ; 165A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 165F _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1662 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1665 _ 89. 04 24
        call    intToHexStr                             ; 1668 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], eax                    ; 166D _ 89. 45, EC
        mov     dword [esp+14H], 7                      ; 1670 _ C7. 44 24, 14, 00000007
        mov     eax, dword [ebp-14H]                    ; 1678 _ 8B. 45, EC
        mov     dword [esp+10H], eax                    ; 167B _ 89. 44 24, 10
        mov     eax, dword [ebp-34H]                    ; 167F _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 1682 _ 89. 44 24, 0C
        mov     eax, dword [ebp-30H]                    ; 1686 _ 8B. 45, D0
        mov     dword [esp+8H], eax                     ; 1689 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 168D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1690 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1694 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1697 _ 89. 04 24
        call    paint_string                            ; 169A _ E8, FFFFFFFC(rel)
        add     dword [ebp-34H], 16                     ; 169F _ 83. 45, CC, 10
        mov     dword [esp+14H], 7                      ; 16A3 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], ?_239                  ; 16AB _ C7. 44 24, 10, 0000004C(d)
        mov     eax, dword [ebp-34H]                    ; 16B3 _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 16B6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-38H]                    ; 16BA _ 8B. 45, C8
        mov     dword [esp+8H], eax                     ; 16BD _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 16C1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 16C4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 16C8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 16CB _ 89. 04 24
        call    paint_string                            ; 16CE _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 16D3 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 16D6 _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 16D9 _ 89. 04 24
        call    intToHexStr                             ; 16DC _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 16E1 _ 89. 45, F0
        mov     dword [esp+14H], 7                      ; 16E4 _ C7. 44 24, 14, 00000007
        mov     eax, dword [ebp-10H]                    ; 16EC _ 8B. 45, F0
        mov     dword [esp+10H], eax                    ; 16EF _ 89. 44 24, 10
        mov     eax, dword [ebp-34H]                    ; 16F3 _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 16F6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-30H]                    ; 16FA _ 8B. 45, D0
        mov     dword [esp+8H], eax                     ; 16FD _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1701 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1704 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1708 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 170B _ 89. 04 24
        call    paint_string                            ; 170E _ E8, FFFFFFFC(rel)
        add     dword [ebp-34H], 16                     ; 1713 _ 83. 45, CC, 10
        mov     dword [esp+14H], 7                      ; 1717 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], ?_240                  ; 171F _ C7. 44 24, 10, 00000059(d)
        mov     eax, dword [ebp-34H]                    ; 1727 _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 172A _ 89. 44 24, 0C
        mov     eax, dword [ebp-38H]                    ; 172E _ 8B. 45, C8
        mov     dword [esp+8H], eax                     ; 1731 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1735 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1738 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 173C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 173F _ 89. 04 24
        call    paint_string                            ; 1742 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 1747 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 174A _ 8B. 40, 10
        mov     dword [esp], eax                        ; 174D _ 89. 04 24
        call    intToHexStr                             ; 1750 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 1755 _ 89. 45, F4
        mov     dword [esp+14H], 7                      ; 1758 _ C7. 44 24, 14, 00000007
        mov     eax, dword [ebp-0CH]                    ; 1760 _ 8B. 45, F4
        mov     dword [esp+10H], eax                    ; 1763 _ 89. 44 24, 10
        mov     eax, dword [ebp-34H]                    ; 1767 _ 8B. 45, CC
        mov     dword [esp+0CH], eax                    ; 176A _ 89. 44 24, 0C
        mov     eax, dword [ebp-30H]                    ; 176E _ 8B. 45, D0
        mov     dword [esp+8H], eax                     ; 1771 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1775 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1778 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 177C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 177F _ 89. 04 24
        call    paint_string                            ; 1782 _ E8, FFFFFFFC(rel)
        add     dword [ebp-34H], 16                     ; 1787 _ 83. 45, CC, 10
        leave                                           ; 178B _ C9
        ret                                             ; 178C _ C3
; show_memory_info End of function

message_box:; Function begin
        push    ebp                                     ; 178D _ 55
        mov     ebp, esp                                ; 178E _ 89. E5
        sub     esp, 56                                 ; 1790 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1793 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1796 _ 89. 04 24
        call    sheet_alloc                             ; 1799 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 179E _ 89. 45, F0
        mov     eax, dword [memman]                     ; 17A1 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 17A6 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 17AE _ 89. 04 24
        call    memman_alloc_4k                         ; 17B1 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 17B6 _ 89. 45, F4
        mov     dword [esp+10H], 99                     ; 17B9 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 68                     ; 17C1 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 17C9 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-0CH]                    ; 17D1 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 17D4 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 17D8 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 17DB _ 89. 04 24
        call    sheet_setbuf                            ; 17DE _ E8, FFFFFFFC(rel)
        mov     dword [esp+0CH], 1                      ; 17E3 _ C7. 44 24, 0C, 00000001
        mov     eax, dword [ebp+0CH]                    ; 17EB _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 17EE _ 89. 44 24, 08
        mov     eax, dword [ebp-10H]                    ; 17F2 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 17F5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 17F9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 17FC _ 89. 04 24
        call    make_windows                            ; 17FF _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], 7                      ; 1804 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 180C _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 1814 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 181C _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1824 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-10H]                    ; 182C _ 8B. 45, F0
        mov     dword [esp], eax                        ; 182F _ 89. 04 24
        call    make_textbox                            ; 1832 _ E8, FFFFFFFC(rel)
        mov     dword [esp+0CH], 172                    ; 1837 _ C7. 44 24, 0C, 000000AC
        mov     dword [esp+8H], 260                     ; 183F _ C7. 44 24, 08, 00000104
        mov     eax, dword [ebp-10H]                    ; 1847 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 184A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 184E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1851 _ 89. 04 24
        call    sheet_slide                             ; 1854 _ E8, FFFFFFFC(rel)
        mov     dword [esp+8H], 2                       ; 1859 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-10H]                    ; 1861 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1864 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1868 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 186B _ 89. 04 24
        call    sheet_updown                            ; 186E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1873 _ 8B. 45, F0
        leave                                           ; 1876 _ C9
        ret                                             ; 1877 _ C3
; message_box End of function

make_textbox:; Function begin
        push    ebp                                     ; 1878 _ 55
        mov     ebp, esp                                ; 1879 _ 89. E5
        push    edi                                     ; 187B _ 57
        push    esi                                     ; 187C _ 56
        push    ebx                                     ; 187D _ 53
        sub     esp, 44                                 ; 187E _ 83. EC, 2C
        mov     eax, dword [ebp+14H]                    ; 1881 _ 8B. 45, 14
        mov     edx, dword [ebp+0CH]                    ; 1884 _ 8B. 55, 0C
        add     eax, edx                                ; 1887 _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1889 _ 89. 45, EC
        mov     eax, dword [ebp+18H]                    ; 188C _ 8B. 45, 18
        mov     edx, dword [ebp+10H]                    ; 188F _ 8B. 55, 10
        add     eax, edx                                ; 1892 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1894 _ 89. 45, F0
        mov     eax, dword [ebp+10H]                    ; 1897 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 189A _ 8D. 78, FD
        mov     eax, dword [ebp-14H]                    ; 189D _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 18A0 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 18A3 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 18A6 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 18A9 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 18AC _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 18AF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 18B2 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 18B5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 18B8 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 18BA _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 18BE _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 18C2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 18C6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 18CA _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 18D2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18D6 _ 89. 04 24
        call    paint_rectangle                         ; 18D9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 18DE _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 18E1 _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 18E4 _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 18E7 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 18EA _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 18ED _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 18F0 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 18F3 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 18F6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 18F9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 18FC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 18FF _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1901 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1905 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1909 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 190D _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1911 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1919 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 191D _ 89. 04 24
        call    paint_rectangle                         ; 1920 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1925 _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 1928 _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 192B _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 192E _ 8D. 70, 01
        mov     eax, dword [ebp-10H]                    ; 1931 _ 8B. 45, F0
        lea     ebx, [eax+2H]                           ; 1934 _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1937 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 193A _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 193D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1940 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1943 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1946 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1948 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 194C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1950 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1954 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1958 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1960 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1964 _ 89. 04 24
        call    paint_rectangle                         ; 1967 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 196C _ 8B. 45, F0
        lea     edi, [eax+2H]                           ; 196F _ 8D. 78, 02
        mov     eax, dword [ebp-14H]                    ; 1972 _ 8B. 45, EC
        lea     esi, [eax+2H]                           ; 1975 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1978 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 197B _ 8D. 58, FD
        mov     eax, dword [ebp-14H]                    ; 197E _ 8B. 45, EC
        lea     ecx, [eax+2H]                           ; 1981 _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1984 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1987 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 198A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 198D _ 8B. 00
        mov     dword [esp+18H], edi                    ; 198F _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1993 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1997 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 199B _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 199F _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 19A7 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 19AB _ 89. 04 24
        call    paint_rectangle                         ; 19AE _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 19B3 _ 8B. 45, 10
        lea     ecx, [eax-2H]                           ; 19B6 _ 8D. 48, FE
        mov     eax, dword [ebp+10H]                    ; 19B9 _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 19BC _ 8D. 70, FE
        mov     eax, dword [ebp+0CH]                    ; 19BF _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 19C2 _ 8D. 58, FF
        mov     eax, dword [ebp+8H]                     ; 19C5 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 19C8 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 19CB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 19CE _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 19D0 _ 89. 4C 24, 18
        mov     ecx, dword [ebp-14H]                    ; 19D4 _ 8B. 4D, EC
        mov     dword [esp+14H], ecx                    ; 19D7 _ 89. 4C 24, 14
        mov     dword [esp+10H], esi                    ; 19DB _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 19DF _ 89. 5C 24, 0C
        mov     dword [esp+8H], 0                       ; 19E3 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 19EB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 19EF _ 89. 04 24
        call    paint_rectangle                         ; 19F2 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+0CH]                    ; 19F7 _ 8B. 45, 0C
        lea     edi, [eax-2H]                           ; 19FA _ 8D. 78, FE
        mov     eax, dword [ebp+10H]                    ; 19FD _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1A00 _ 8D. 70, FE
        mov     eax, dword [ebp+0CH]                    ; 1A03 _ 8B. 45, 0C
        lea     ebx, [eax-2H]                           ; 1A06 _ 8D. 58, FE
        mov     eax, dword [ebp+8H]                     ; 1A09 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1A0C _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A0F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A12 _ 8B. 00
        mov     ecx, dword [ebp-10H]                    ; 1A14 _ 8B. 4D, F0
        mov     dword [esp+18H], ecx                    ; 1A17 _ 89. 4C 24, 18
        mov     dword [esp+14H], edi                    ; 1A1B _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 1A1F _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1A23 _ 89. 5C 24, 0C
        mov     dword [esp+8H], 0                       ; 1A27 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1A2F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A33 _ 89. 04 24
        call    paint_rectangle                         ; 1A36 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1A3B _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1A3E _ 8D. 48, 01
        mov     eax, dword [ebp-10H]                    ; 1A41 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1A44 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1A47 _ 8B. 45, 0C
        lea     ebx, [eax-2H]                           ; 1A4A _ 8D. 58, FE
        mov     eax, dword [ebp+8H]                     ; 1A4D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1A50 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A53 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A56 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1A58 _ 89. 4C 24, 18
        mov     ecx, dword [ebp-14H]                    ; 1A5C _ 8B. 4D, EC
        mov     dword [esp+14H], ecx                    ; 1A5F _ 89. 4C 24, 14
        mov     dword [esp+10H], esi                    ; 1A63 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1A67 _ 89. 5C 24, 0C
        mov     dword [esp+8H], 8                       ; 1A6B _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1A73 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A77 _ 89. 04 24
        call    paint_rectangle                         ; 1A7A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1A7F _ 8B. 45, F0
        lea     edi, [eax+1H]                           ; 1A82 _ 8D. 78, 01
        mov     eax, dword [ebp-14H]                    ; 1A85 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1A88 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1A8B _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1A8E _ 8D. 58, FE
        mov     eax, dword [ebp-14H]                    ; 1A91 _ 8B. 45, EC
        lea     ecx, [eax+1H]                           ; 1A94 _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1A97 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1A9A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A9D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AA0 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1AA2 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1AA6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1AAA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1AAE _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 1AB2 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1ABA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1ABE _ 89. 04 24
        call    paint_rectangle                         ; 1AC1 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 1AC6 _ 8B. 45, 10
        lea     edi, [eax-1H]                           ; 1AC9 _ 8D. 78, FF
        mov     eax, dword [ebp+0CH]                    ; 1ACC _ 8B. 45, 0C
        lea     esi, [eax-1H]                           ; 1ACF _ 8D. 70, FF
        mov     eax, dword [ebp+1CH]                    ; 1AD2 _ 8B. 45, 1C
        movzx   ecx, al                                 ; 1AD5 _ 0F B6. C8
        mov     eax, dword [ebp+8H]                     ; 1AD8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1ADB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1ADE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AE1 _ 8B. 00
        mov     ebx, dword [ebp-10H]                    ; 1AE3 _ 8B. 5D, F0
        mov     dword [esp+18H], ebx                    ; 1AE6 _ 89. 5C 24, 18
        mov     ebx, dword [ebp-14H]                    ; 1AEA _ 8B. 5D, EC
        mov     dword [esp+14H], ebx                    ; 1AED _ 89. 5C 24, 14
        mov     dword [esp+10H], edi                    ; 1AF1 _ 89. 7C 24, 10
        mov     dword [esp+0CH], esi                    ; 1AF5 _ 89. 74 24, 0C
        mov     dword [esp+8H], ecx                     ; 1AF9 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1AFD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B01 _ 89. 04 24
        call    paint_rectangle                         ; 1B04 _ E8, FFFFFFFC(rel)
        add     esp, 44                                 ; 1B09 _ 83. C4, 2C
        pop     ebx                                     ; 1B0C _ 5B
        pop     esi                                     ; 1B0D _ 5E
        pop     edi                                     ; 1B0E _ 5F
        pop     ebp                                     ; 1B0F _ 5D
        ret                                             ; 1B10 _ C3
; make_textbox End of function

make_windows:; Function begin
        push    ebp                                     ; 1B11 _ 55
        mov     ebp, esp                                ; 1B12 _ 89. E5
        push    ebx                                     ; 1B14 _ 53
        sub     esp, 52                                 ; 1B15 _ 83. EC, 34
        mov     eax, dword [ebp+14H]                    ; 1B18 _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 1B1B _ 88. 45, E4
        mov     eax, dword [ebp+0CH]                    ; 1B1E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1B21 _ 8B. 40, 04
        mov     dword [ebp-10H], eax                    ; 1B24 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1B27 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1B2A _ 8B. 40, 08
        mov     dword [ebp-0CH], eax                    ; 1B2D _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 1B30 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1B33 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1B36 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B39 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1B3B _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1B43 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1B47 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1B4F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1B57 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-10H]                    ; 1B5F _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1B62 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B66 _ 89. 04 24
        call    paint_rectangle                         ; 1B69 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1B6E _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1B71 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1B74 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B77 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1B79 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1B81 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1B85 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1B8D _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1B95 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-10H]                    ; 1B9D _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1BA0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BA4 _ 89. 04 24
        call    paint_rectangle                         ; 1BA7 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1BAC _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1BAF _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1BB2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BB5 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1BB7 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1BBB _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1BC3 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1BCB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1BD3 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-10H]                    ; 1BDB _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1BDE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BE2 _ 89. 04 24
        call    paint_rectangle                         ; 1BE5 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1BEA _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1BED _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1BF0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BF3 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1BF5 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1BF9 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1C01 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1C09 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1C11 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-10H]                    ; 1C19 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1C1C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C20 _ 89. 04 24
        call    paint_rectangle                         ; 1C23 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1C28 _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1C2B _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1C2E _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1C31 _ 8D. 48, FE
        mov     eax, dword [ebp-10H]                    ; 1C34 _ 8B. 45, F0
        lea     edx, [eax-2H]                           ; 1C37 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1C3A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C3D _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1C3F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1C43 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1C47 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1C4F _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1C53 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-10H]                    ; 1C5B _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1C5E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C62 _ 89. 04 24
        call    paint_rectangle                         ; 1C65 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1C6A _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1C6D _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1C70 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1C73 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 1C76 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 1C79 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C7C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C7F _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1C81 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1C85 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1C89 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1C91 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1C95 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-10H]                    ; 1C9D _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1CA0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CA4 _ 89. 04 24
        call    paint_rectangle                         ; 1CA7 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1CAC _ 8B. 45, F4
        lea     ecx, [eax-3H]                           ; 1CAF _ 8D. 48, FD
        mov     eax, dword [ebp-10H]                    ; 1CB2 _ 8B. 45, F0
        lea     edx, [eax-3H]                           ; 1CB5 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1CB8 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CBB _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1CBD _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1CC1 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1CC5 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1CCD _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1CD5 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-10H]                    ; 1CDD _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1CE0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CE4 _ 89. 04 24
        call    paint_rectangle                         ; 1CE7 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 1CEC _ 8B. 45, F0
        lea     edx, [eax-4H]                           ; 1CEF _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1CF2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CF5 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1CF7 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1CFF _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1D03 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1D0B _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1D13 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-10H]                    ; 1D1B _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1D1E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D22 _ 89. 04 24
        call    paint_rectangle                         ; 1D25 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1D2A _ 8B. 45, F4
        lea     ebx, [eax-2H]                           ; 1D2D _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1D30 _ 8B. 45, F0
        lea     ecx, [eax-2H]                           ; 1D33 _ 8D. 48, FE
        mov     eax, dword [ebp-0CH]                    ; 1D36 _ 8B. 45, F4
        lea     edx, [eax-2H]                           ; 1D39 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1D3C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D3F _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D41 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D45 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D49 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1D4D _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1D55 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-10H]                    ; 1D5D _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1D60 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D64 _ 89. 04 24
        call    paint_rectangle                         ; 1D67 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 1D6C _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 1D6F _ 8D. 58, FF
        mov     eax, dword [ebp-10H]                    ; 1D72 _ 8B. 45, F0
        lea     ecx, [eax-1H]                           ; 1D75 _ 8D. 48, FF
        mov     eax, dword [ebp-0CH]                    ; 1D78 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1D7B _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D7E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D81 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D83 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D87 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D8B _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1D8F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1D97 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-10H]                    ; 1D9F _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 1DA2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DA6 _ 89. 04 24
        call    paint_rectangle                         ; 1DA9 _ E8, FFFFFFFC(rel)
        movsx   eax, byte [ebp-1CH]                     ; 1DAE _ 0F BE. 45, E4
        mov     dword [esp+0CH], eax                    ; 1DB2 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 1DB6 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1DB9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1DBD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1DC0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DC4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DC7 _ 89. 04 24
        call    make_window_title                       ; 1DCA _ E8, FFFFFFFC(rel)
        add     esp, 52                                 ; 1DCF _ 83. C4, 34
        pop     ebx                                     ; 1DD2 _ 5B
        pop     ebp                                     ; 1DD3 _ 5D
        ret                                             ; 1DD4 _ C3
; make_windows End of function

make_window_title:; Function begin
        push    ebp                                     ; 1DD5 _ 55
        mov     ebp, esp                                ; 1DD6 _ 89. E5
        push    ebx                                     ; 1DD8 _ 53
        sub     esp, 52                                 ; 1DD9 _ 83. EC, 34
        mov     eax, dword [ebp+14H]                    ; 1DDC _ 8B. 45, 14
        mov     byte [ebp-1CH], al                      ; 1DDF _ 88. 45, E4
        cmp     byte [ebp-1CH], 0                       ; 1DE2 _ 80. 7D, E4, 00
        jz      ?_052                                   ; 1DE6 _ 74, 0A
        mov     byte [ebp-12H], 7                       ; 1DE8 _ C6. 45, EE, 07
        mov     byte [ebp-11H], 12                      ; 1DEC _ C6. 45, EF, 0C
        jmp     ?_053                                   ; 1DF0 _ EB, 08

?_052:  mov     byte [ebp-12H], 8                       ; 1DF2 _ C6. 45, EE, 08
        mov     byte [ebp-11H], 15                      ; 1DF6 _ C6. 45, EF, 0F
?_053:  mov     eax, dword [ebp+0CH]                    ; 1DFA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DFD _ 8B. 40, 04
        lea     ebx, [eax-4H]                           ; 1E00 _ 8D. 58, FC
        movzx   eax, byte [ebp-11H]                     ; 1E03 _ 0F B6. 45, EF
        movzx   ecx, al                                 ; 1E07 _ 0F B6. C8
        mov     eax, dword [ebp+0CH]                    ; 1E0A _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 1E0D _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 1E10 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1E13 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1E15 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], ebx                    ; 1E1D _ 89. 5C 24, 14
        mov     dword [esp+10H], 3                      ; 1E21 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1E29 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], ecx                     ; 1E31 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 1E35 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E39 _ 89. 04 24
        call    paint_rectangle                         ; 1E3C _ E8, FFFFFFFC(rel)
        movsx   eax, byte [ebp-12H]                     ; 1E41 _ 0F BE. 45, EE
        mov     dword [esp+14H], eax                    ; 1E45 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 1E49 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 1E4C _ 89. 44 24, 10
        mov     dword [esp+0CH], 4                      ; 1E50 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1E58 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1E60 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1E63 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E67 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E6A _ 89. 04 24
        call    paint_string                            ; 1E6D _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], 0                      ; 1E72 _ C7. 45, F4, 00000000
        jmp     ?_061                                   ; 1E79 _ E9, 00000083

?_054:  mov     dword [ebp-10H], 0                      ; 1E7E _ C7. 45, F0, 00000000
        jmp     ?_060                                   ; 1E85 _ EB, 70

?_055:  mov     eax, dword [ebp-0CH]                    ; 1E87 _ 8B. 45, F4
        shl     eax, 4                                  ; 1E8A _ C1. E0, 04
        mov     edx, eax                                ; 1E8D _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1E8F _ 8B. 45, F0
        add     eax, edx                                ; 1E92 _ 01. D0
        add     eax, closebtn.1913                      ; 1E94 _ 05, 00000260(d)
        movzx   eax, byte [eax]                         ; 1E99 _ 0F B6. 00
        mov     byte [ebp-13H], al                      ; 1E9C _ 88. 45, ED
        cmp     byte [ebp-13H], 64                      ; 1E9F _ 80. 7D, ED, 40
        jnz     ?_056                                   ; 1EA3 _ 75, 06
        mov     byte [ebp-13H], 0                       ; 1EA5 _ C6. 45, ED, 00
        jmp     ?_059                                   ; 1EA9 _ EB, 1C

?_056:  cmp     byte [ebp-13H], 36                      ; 1EAB _ 80. 7D, ED, 24
        jnz     ?_057                                   ; 1EAF _ 75, 06
        mov     byte [ebp-13H], 15                      ; 1EB1 _ C6. 45, ED, 0F
        jmp     ?_059                                   ; 1EB5 _ EB, 10

?_057:  cmp     byte [ebp-13H], 81                      ; 1EB7 _ 80. 7D, ED, 51
        jnz     ?_058                                   ; 1EBB _ 75, 06
        mov     byte [ebp-13H], 8                       ; 1EBD _ C6. 45, ED, 08
        jmp     ?_059                                   ; 1EC1 _ EB, 04

?_058:  mov     byte [ebp-13H], 7                       ; 1EC3 _ C6. 45, ED, 07
?_059:  mov     eax, dword [ebp+0CH]                    ; 1EC7 _ 8B. 45, 0C
        mov     edx, dword [eax]                        ; 1ECA _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 1ECC _ 8B. 45, F4
        lea     ecx, [eax+5H]                           ; 1ECF _ 8D. 48, 05
        mov     eax, dword [ebp+0CH]                    ; 1ED2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1ED5 _ 8B. 40, 04
        imul    ecx, eax                                ; 1ED8 _ 0F AF. C8
        mov     eax, dword [ebp+0CH]                    ; 1EDB _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1EDE _ 8B. 40, 04
        lea     ebx, [eax-15H]                          ; 1EE1 _ 8D. 58, EB
        mov     eax, dword [ebp-10H]                    ; 1EE4 _ 8B. 45, F0
        add     eax, ebx                                ; 1EE7 _ 01. D8
        add     eax, ecx                                ; 1EE9 _ 01. C8
        add     edx, eax                                ; 1EEB _ 01. C2
        movzx   eax, byte [ebp-13H]                     ; 1EED _ 0F B6. 45, ED
        mov     byte [edx], al                          ; 1EF1 _ 88. 02
        add     dword [ebp-10H], 1                      ; 1EF3 _ 83. 45, F0, 01
?_060:  cmp     dword [ebp-10H], 15                     ; 1EF7 _ 83. 7D, F0, 0F
        jle     ?_055                                   ; 1EFB _ 7E, 8A
        add     dword [ebp-0CH], 1                      ; 1EFD _ 83. 45, F4, 01
?_061:  cmp     dword [ebp-0CH], 13                     ; 1F01 _ 83. 7D, F4, 0D
        jle     ?_054                                   ; 1F05 _ 0F 8E, FFFFFF73
        add     esp, 52                                 ; 1F0B _ 83. C4, 34
        pop     ebx                                     ; 1F0E _ 5B
        pop     ebp                                     ; 1F0F _ 5D
        ret                                             ; 1F10 _ C3
; make_window_title End of function

transfer_scancode:; Function begin
        push    ebp                                     ; 1F11 _ 55
        mov     ebp, esp                                ; 1F12 _ 89. E5
        sub     esp, 16                                 ; 1F14 _ 83. EC, 10
        cmp     dword [ebp+8H], 42                      ; 1F17 _ 83. 7D, 08, 2A
        jnz     ?_062                                   ; 1F1B _ 75, 0D
        mov     eax, dword [key_shift]                  ; 1F1D _ A1, 000001D0(d)
        or      eax, 01H                                ; 1F22 _ 83. C8, 01
        mov     dword [key_shift], eax                  ; 1F25 _ A3, 000001D0(d)
?_062:  cmp     dword [ebp+8H], 54                      ; 1F2A _ 83. 7D, 08, 36
        jnz     ?_063                                   ; 1F2E _ 75, 0D
        mov     eax, dword [key_shift]                  ; 1F30 _ A1, 000001D0(d)
        or      eax, 02H                                ; 1F35 _ 83. C8, 02
        mov     dword [key_shift], eax                  ; 1F38 _ A3, 000001D0(d)
?_063:  cmp     dword [ebp+8H], 170                     ; 1F3D _ 81. 7D, 08, 000000AA
        jnz     ?_064                                   ; 1F44 _ 75, 0D
        mov     eax, dword [key_shift]                  ; 1F46 _ A1, 000001D0(d)
        and     eax, 0FFFFFFFEH                         ; 1F4B _ 83. E0, FE
        mov     dword [key_shift], eax                  ; 1F4E _ A3, 000001D0(d)
?_064:  cmp     dword [ebp+8H], 182                     ; 1F53 _ 81. 7D, 08, 000000B6
        jnz     ?_065                                   ; 1F5A _ 75, 0D
        mov     eax, dword [key_shift]                  ; 1F5C _ A1, 000001D0(d)
        and     eax, 0FFFFFFFDH                         ; 1F61 _ 83. E0, FD
        mov     dword [key_shift], eax                  ; 1F64 _ A3, 000001D0(d)
?_065:  cmp     dword [ebp+8H], 58                      ; 1F69 _ 83. 7D, 08, 3A
        jnz     ?_067                                   ; 1F6D _ 75, 1F
        mov     eax, dword [caps_lock]                  ; 1F6F _ A1, 000001D4(d)
        test    eax, eax                                ; 1F74 _ 85. C0
        jnz     ?_066                                   ; 1F76 _ 75, 0C
        mov     dword [caps_lock], 1                    ; 1F78 _ C7. 05, 000001D4(d), 00000001
        jmp     ?_067                                   ; 1F82 _ EB, 0A

?_066:  mov     dword [caps_lock], 0                    ; 1F84 _ C7. 05, 000001D4(d), 00000000
?_067:  cmp     dword [ebp+8H], 42                      ; 1F8E _ 83. 7D, 08, 2A
        jz      ?_068                                   ; 1F92 _ 74, 24
        cmp     dword [ebp+8H], 54                      ; 1F94 _ 83. 7D, 08, 36
        jz      ?_068                                   ; 1F98 _ 74, 1E
        cmp     dword [ebp+8H], 170                     ; 1F9A _ 81. 7D, 08, 000000AA
        jz      ?_068                                   ; 1FA1 _ 74, 15
        cmp     dword [ebp+8H], 182                     ; 1FA3 _ 81. 7D, 08, 000000B6
        jz      ?_068                                   ; 1FAA _ 74, 0C
        cmp     dword [ebp+8H], 127                     ; 1FAC _ 83. 7D, 08, 7F
        jg      ?_068                                   ; 1FB0 _ 7F, 06
        cmp     dword [ebp+8H], 58                      ; 1FB2 _ 83. 7D, 08, 3A
        jnz     ?_069                                   ; 1FB6 _ 75, 0A
?_068:  mov     eax, 0                                  ; 1FB8 _ B8, 00000000
        jmp     ?_074                                   ; 1FBD _ E9, 00000089

?_069:  mov     byte [ebp-1H], 0                        ; 1FC2 _ C6. 45, FF, 00
        mov     eax, dword [key_shift]                  ; 1FC6 _ A1, 000001D0(d)
        test    eax, eax                                ; 1FCB _ 85. C0
        jnz     ?_071                                   ; 1FCD _ 75, 46
        cmp     dword [ebp+8H], 127                     ; 1FCF _ 83. 7D, 08, 7F
        jg      ?_071                                   ; 1FD3 _ 7F, 40
        mov     eax, dword [ebp+8H]                     ; 1FD5 _ 8B. 45, 08
        add     eax, keytable                           ; 1FD8 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 1FDD _ 0F B6. 00
        test    al, al                                  ; 1FE0 _ 84. C0
        jz      ?_071                                   ; 1FE2 _ 74, 31
        mov     eax, dword [ebp+8H]                     ; 1FE4 _ 8B. 45, 08
        add     eax, keytable                           ; 1FE7 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 1FEC _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 1FEF _ 88. 45, FF
        cmp     byte [ebp-1H], 64                       ; 1FF2 _ 80. 7D, FF, 40
        jle     ?_070                                   ; 1FF6 _ 7E, 1B
        cmp     byte [ebp-1H], 90                       ; 1FF8 _ 80. 7D, FF, 5A
        jg      ?_070                                   ; 1FFC _ 7F, 15
        mov     eax, dword [caps_lock]                  ; 1FFE _ A1, 000001D4(d)
        test    eax, eax                                ; 2003 _ 85. C0
        jnz     ?_070                                   ; 2005 _ 75, 0C
        movzx   eax, byte [ebp-1H]                      ; 2007 _ 0F B6. 45, FF
        add     eax, 32                                 ; 200B _ 83. C0, 20
        mov     byte [ebp-1H], al                       ; 200E _ 88. 45, FF
        jmp     ?_073                                   ; 2011 _ EB, 34

?_070:  jmp     ?_073                                   ; 2013 _ EB, 32

?_071:  mov     eax, dword [key_shift]                  ; 2015 _ A1, 000001D0(d)
        test    eax, eax                                ; 201A _ 85. C0
        jz      ?_072                                   ; 201C _ 74, 25
        cmp     dword [ebp+8H], 83                      ; 201E _ 83. 7D, 08, 53
        jg      ?_072                                   ; 2022 _ 7F, 1F
        mov     eax, dword [ebp+8H]                     ; 2024 _ 8B. 45, 08
        add     eax, keytable_shift                     ; 2027 _ 05, 000000A0(d)
        movzx   eax, byte [eax]                         ; 202C _ 0F B6. 00
        test    al, al                                  ; 202F _ 84. C0
        jz      ?_072                                   ; 2031 _ 74, 10
        mov     eax, dword [ebp+8H]                     ; 2033 _ 8B. 45, 08
        add     eax, keytable_shift                     ; 2036 _ 05, 000000A0(d)
        movzx   eax, byte [eax]                         ; 203B _ 0F B6. 00
        mov     byte [ebp-1H], al                       ; 203E _ 88. 45, FF
        jmp     ?_073                                   ; 2041 _ EB, 04

?_072:  mov     byte [ebp-1H], 0                        ; 2043 _ C6. 45, FF, 00
?_073:  movzx   eax, byte [ebp-1H]                      ; 2047 _ 0F B6. 45, FF
?_074:  leave                                           ; 204B _ C9
        ret                                             ; 204C _ C3
; transfer_scancode End of function

is_special_key:; Function begin
        push    ebp                                     ; 204D _ 55
        mov     ebp, esp                                ; 204E _ 89. E5
        sub     esp, 4                                  ; 2050 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 2053 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2056 _ 89. 04 24
        call    transfer_scancode                       ; 2059 _ E8, FFFFFFFC(rel)
        cmp     dword [ebp+8H], 42                      ; 205E _ 83. 7D, 08, 2A
        jz      ?_075                                   ; 2062 _ 74, 27
        cmp     dword [ebp+8H], 54                      ; 2064 _ 83. 7D, 08, 36
        jz      ?_075                                   ; 2068 _ 74, 21
        cmp     dword [ebp+8H], 170                     ; 206A _ 81. 7D, 08, 000000AA
        jz      ?_075                                   ; 2071 _ 74, 18
        cmp     dword [ebp+8H], 182                     ; 2073 _ 81. 7D, 08, 000000B6
        jz      ?_075                                   ; 207A _ 74, 0F
        cmp     dword [ebp+8H], 58                      ; 207C _ 83. 7D, 08, 3A
        jz      ?_075                                   ; 2080 _ 74, 09
        cmp     dword [ebp+8H], 186                     ; 2082 _ 81. 7D, 08, 000000BA
        jnz     ?_076                                   ; 2089 _ 75, 07
?_075:  mov     eax, 1                                  ; 208B _ B8, 00000001
        jmp     ?_077                                   ; 2090 _ EB, 05

?_076:  mov     eax, 0                                  ; 2092 _ B8, 00000000
?_077:  leave                                           ; 2097 _ C9
        ret                                             ; 2098 _ C3
; is_special_key End of function

console_task:; Function begin
        push    ebp                                     ; 2099 _ 55
        mov     ebp, esp                                ; 209A _ 89. E5
        sub     esp, 216                                ; 209C _ 81. EC, 000000D8
        mov     eax, dword [ebp+8H]                     ; 20A2 _ 8B. 45, 08
        mov     dword [ebp-0BCH], eax                   ; 20A5 _ 89. 85, FFFFFF44
; Note: Absolute memory address without relocation
        mov     eax, dword [gs:14H]                     ; 20AB _ 65: A1, 00000014
        mov     dword [ebp-0CH], eax                    ; 20B1 _ 89. 45, F4
        xor     eax, eax                                ; 20B4 _ 31. C0
        call    task_now                                ; 20B6 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-9CH], eax                    ; 20BB _ 89. 85, FFFFFF64
        mov     dword [ebp-0A8H], 16                    ; 20C1 _ C7. 85, FFFFFF58, 00000010
        mov     dword [ebp-0A4H], 28                    ; 20CB _ C7. 85, FFFFFF5C, 0000001C
        mov     dword [ebp-0A0H], 0                     ; 20D5 _ C7. 85, FFFFFF60, 00000000
        mov     eax, dword [ebp-9CH]                    ; 20DF _ 8B. 85, FFFFFF64
        lea     edx, [eax+10H]                          ; 20E5 _ 8D. 50, 10
        mov     eax, dword [ebp-9CH]                    ; 20E8 _ 8B. 85, FFFFFF64
        mov     dword [esp+0CH], eax                    ; 20EE _ 89. 44 24, 0C
        lea     eax, [ebp-8CH]                          ; 20F2 _ 8D. 85, FFFFFF74
        mov     dword [esp+8H], eax                     ; 20F8 _ 89. 44 24, 08
        mov     dword [esp+4H], 128                     ; 20FC _ C7. 44 24, 04, 00000080
        mov     dword [esp], edx                        ; 2104 _ 89. 14 24
        call    fifo8_init                              ; 2107 _ E8, FFFFFFFC(rel)
        call    timer_alloc                             ; 210C _ E8, FFFFFFFC(rel)
        mov     dword [ebp-98H], eax                    ; 2111 _ 89. 85, FFFFFF68
        mov     eax, dword [ebp-9CH]                    ; 2117 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 211D _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 2120 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 2128 _ 89. 44 24, 04
        mov     eax, dword [ebp-98H]                    ; 212C _ 8B. 85, FFFFFF68
        mov     dword [esp], eax                        ; 2132 _ 89. 04 24
        call    timer_init                              ; 2135 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 50                      ; 213A _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-98H]                    ; 2142 _ 8B. 85, FFFFFF68
        mov     dword [esp], eax                        ; 2148 _ 89. 04 24
        call    timer_settime                           ; 214B _ E8, FFFFFFFC(rel)
        mov     eax, dword [sheet_control]              ; 2150 _ A1, 00000000(d)
        mov     dword [esp+14H], 7                      ; 2155 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], ?_241                  ; 215D _ C7. 44 24, 10, 00000060(d)
        mov     dword [esp+0CH], 28                     ; 2165 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 8                       ; 216D _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0BCH]                   ; 2175 _ 8B. 95, FFFFFF44
        mov     dword [esp+4H], edx                     ; 217B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 217F _ 89. 04 24
        call    paint_string                            ; 2182 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-94H], 32                     ; 2187 _ C7. 85, FFFFFF6C, 00000020
?_078:  call    io_cli                                  ; 2191 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-9CH]                    ; 2196 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 219C _ 83. C0, 10
        mov     dword [esp], eax                        ; 219F _ 89. 04 24
        call    fifo8_status                            ; 21A2 _ E8, FFFFFFFC(rel)
        test    eax, eax                                ; 21A7 _ 85. C0
        jnz     ?_079                                   ; 21A9 _ 75, 0A
        call    io_sti                                  ; 21AB _ E8, FFFFFFFC(rel)
        jmp     ?_088                                   ; 21B0 _ E9, 00000391

?_079:  mov     eax, dword [ebp-9CH]                    ; 21B5 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 21BB _ 83. C0, 10
        mov     dword [esp], eax                        ; 21BE _ 89. 04 24
        call    fifo8_get                               ; 21C1 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-90H], eax                    ; 21C6 _ 89. 85, FFFFFF70
        call    io_sti                                  ; 21CC _ E8, FFFFFFFC(rel)
        cmp     dword [ebp-90H], 1                      ; 21D1 _ 83. BD, FFFFFF70, 01
        jg      ?_082                                   ; 21D8 _ 0F 8F, 0000008D
        cmp     dword [ebp-0A0H], 0                     ; 21DE _ 83. BD, FFFFFF60, 00
        js      ?_082                                   ; 21E5 _ 0F 88, 00000080
        cmp     dword [ebp-90H], 0                      ; 21EB _ 83. BD, FFFFFF70, 00
        jz      ?_080                                   ; 21F2 _ 74, 2F
        mov     eax, dword [ebp-9CH]                    ; 21F4 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 21FA _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 21FD _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 2205 _ 89. 44 24, 04
        mov     eax, dword [ebp-98H]                    ; 2209 _ 8B. 85, FFFFFF68
        mov     dword [esp], eax                        ; 220F _ 89. 04 24
        call    timer_init                              ; 2212 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0A0H], 7                     ; 2217 _ C7. 85, FFFFFF60, 00000007
        jmp     ?_081                                   ; 2221 _ EB, 2D

?_080:  mov     eax, dword [ebp-9CH]                    ; 2223 _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 2229 _ 83. C0, 10
        mov     dword [esp+8H], 1                       ; 222C _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], eax                     ; 2234 _ 89. 44 24, 04
        mov     eax, dword [ebp-98H]                    ; 2238 _ 8B. 85, FFFFFF68
        mov     dword [esp], eax                        ; 223E _ 89. 04 24
        call    timer_init                              ; 2241 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0A0H], 0                     ; 2246 _ C7. 85, FFFFFF60, 00000000
?_081:  mov     dword [esp+4H], 50                      ; 2250 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-98H]                    ; 2258 _ 8B. 85, FFFFFF68
        mov     dword [esp], eax                        ; 225E _ 89. 04 24
        call    timer_settime                           ; 2261 _ E8, FFFFFFFC(rel)
        jmp     ?_087                                   ; 2266 _ E9, 00000298

?_082:  cmp     dword [ebp-90H], 87                     ; 226B _ 83. BD, FFFFFF70, 57
        jnz     ?_083                                   ; 2272 _ 75, 48
        mov     dword [ebp-0A0H], 7                     ; 2274 _ C7. 85, FFFFFF60, 00000007
        mov     eax, dword [ebp-9CH]                    ; 227E _ 8B. 85, FFFFFF64
        add     eax, 16                                 ; 2284 _ 83. C0, 10
        mov     dword [esp+8H], 0                       ; 2287 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], eax                     ; 228F _ 89. 44 24, 04
        mov     eax, dword [ebp-98H]                    ; 2293 _ 8B. 85, FFFFFF68
        mov     dword [esp], eax                        ; 2299 _ 89. 04 24
        call    timer_init                              ; 229C _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 50                      ; 22A1 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-98H]                    ; 22A9 _ 8B. 85, FFFFFF68
        mov     dword [esp], eax                        ; 22AF _ 89. 04 24
        call    timer_settime                           ; 22B2 _ E8, FFFFFFFC(rel)
        jmp     ?_087                                   ; 22B7 _ E9, 00000247

?_083:  cmp     dword [ebp-90H], 88                     ; 22BC _ 83. BD, FFFFFF70, 58
        jnz     ?_084                                   ; 22C3 _ 75, 5F
        mov     eax, dword [sheet_control]              ; 22C5 _ A1, 00000000(d)
        mov     dword [esp+10H], 0                      ; 22CA _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-0A4H]                   ; 22D2 _ 8B. 95, FFFFFF5C
        mov     dword [esp+0CH], edx                    ; 22D8 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0A8H]                   ; 22DC _ 8B. 95, FFFFFF58
        mov     dword [esp+8H], edx                     ; 22E2 _ 89. 54 24, 08
        mov     edx, dword [ebp-0BCH]                   ; 22E6 _ 8B. 95, FFFFFF44
        mov     dword [esp+4H], edx                     ; 22EC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 22F0 _ 89. 04 24
        call    set_cursor                              ; 22F3 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0A0H], -1                    ; 22F8 _ C7. 85, FFFFFF60, FFFFFFFF
        mov     eax, dword [task_main]                  ; 2302 _ A1, 00000000(d)
        mov     dword [esp+8H], 0                       ; 2307 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 230F _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 2317 _ 89. 04 24
        call    task_run                                ; 231A _ E8, FFFFFFFC(rel)
        jmp     ?_087                                   ; 231F _ E9, 000001DF

?_084:  cmp     dword [ebp-90H], 28                     ; 2324 _ 83. BD, FFFFFF70, 1C
        jne     ?_085                                   ; 232B _ 0F 85, 00000092
        cmp     dword [ebp-0A4H], 139                   ; 2331 _ 81. BD, FFFFFF5C, 0000008B
        jg      ?_087                                   ; 233B _ 0F 8F, 000001C2
        mov     eax, dword [sheet_control]              ; 2341 _ A1, 00000000(d)
        mov     dword [esp+10H], 0                      ; 2346 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-0A4H]                   ; 234E _ 8B. 95, FFFFFF5C
        mov     dword [esp+0CH], edx                    ; 2354 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0A8H]                   ; 2358 _ 8B. 95, FFFFFF58
        mov     dword [esp+8H], edx                     ; 235E _ 89. 54 24, 08
        mov     edx, dword [ebp-0BCH]                   ; 2362 _ 8B. 95, FFFFFF44
        mov     dword [esp+4H], edx                     ; 2368 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 236C _ 89. 04 24
        call    set_cursor                              ; 236F _ E8, FFFFFFFC(rel)
        add     dword [ebp-0A4H], 16                    ; 2374 _ 83. 85, FFFFFF5C, 10
        mov     dword [ebp-0A8H], 16                    ; 237B _ C7. 85, FFFFFF58, 00000010
        mov     eax, dword [sheet_control]              ; 2385 _ A1, 00000000(d)
        mov     dword [esp+14H], 7                      ; 238A _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], ?_241                  ; 2392 _ C7. 44 24, 10, 00000060(d)
        mov     edx, dword [ebp-0A4H]                   ; 239A _ 8B. 95, FFFFFF5C
        mov     dword [esp+0CH], edx                    ; 23A0 _ 89. 54 24, 0C
        mov     dword [esp+8H], 8                       ; 23A4 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-0BCH]                   ; 23AC _ 8B. 95, FFFFFF44
        mov     dword [esp+4H], edx                     ; 23B2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 23B6 _ 89. 04 24
        call    paint_string                            ; 23B9 _ E8, FFFFFFFC(rel)
        jmp     ?_087                                   ; 23BE _ E9, 00000140

?_085:  cmp     dword [ebp-90H], 14                     ; 23C3 _ 83. BD, FFFFFF70, 0E
        jnz     ?_086                                   ; 23CA _ 75, 7B
        cmp     dword [ebp-0A8H], 16                    ; 23CC _ 83. BD, FFFFFF58, 10
        jle     ?_086                                   ; 23D3 _ 7E, 72
        mov     eax, dword [sheet_control]              ; 23D5 _ A1, 00000000(d)
        mov     dword [esp+10H], 0                      ; 23DA _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-0A4H]                   ; 23E2 _ 8B. 95, FFFFFF5C
        mov     dword [esp+0CH], edx                    ; 23E8 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0A8H]                   ; 23EC _ 8B. 95, FFFFFF58
        mov     dword [esp+8H], edx                     ; 23F2 _ 89. 54 24, 08
        mov     edx, dword [ebp-0BCH]                   ; 23F6 _ 8B. 95, FFFFFF44
        mov     dword [esp+4H], edx                     ; 23FC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2400 _ 89. 04 24
        call    set_cursor                              ; 2403 _ E8, FFFFFFFC(rel)
        sub     dword [ebp-0A8H], 8                     ; 2408 _ 83. AD, FFFFFF58, 08
        mov     eax, dword [sheet_control]              ; 240F _ A1, 00000000(d)
        mov     dword [esp+10H], 0                      ; 2414 _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-0A4H]                   ; 241C _ 8B. 95, FFFFFF5C
        mov     dword [esp+0CH], edx                    ; 2422 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0A8H]                   ; 2426 _ 8B. 95, FFFFFF58
        mov     dword [esp+8H], edx                     ; 242C _ 89. 54 24, 08
        mov     edx, dword [ebp-0BCH]                   ; 2430 _ 8B. 95, FFFFFF44
        mov     dword [esp+4H], edx                     ; 2436 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 243A _ 89. 04 24
        call    set_cursor                              ; 243D _ E8, FFFFFFFC(rel)
        jmp     ?_087                                   ; 2442 _ E9, 000000BC

?_086:  mov     eax, dword [ebp-90H]                    ; 2447 _ 8B. 85, FFFFFF70
        mov     dword [esp], eax                        ; 244D _ 89. 04 24
        call    transfer_scancode                       ; 2450 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-0ABH], al                     ; 2455 _ 88. 85, FFFFFF55
        cmp     byte [ebp-0ABH], 0                      ; 245B _ 80. BD, FFFFFF55, 00
        je      ?_087                                   ; 2462 _ 0F 84, 0000009B
        cmp     dword [ebp-0A8H], 239                   ; 2468 _ 81. BD, FFFFFF58, 000000EF
        jg      ?_087                                   ; 2472 _ 0F 8F, 0000008B
        mov     eax, dword [sheet_control]              ; 2478 _ A1, 00000000(d)
        mov     dword [esp+10H], 0                      ; 247D _ C7. 44 24, 10, 00000000
        mov     edx, dword [ebp-0A4H]                   ; 2485 _ 8B. 95, FFFFFF5C
        mov     dword [esp+0CH], edx                    ; 248B _ 89. 54 24, 0C
        mov     edx, dword [ebp-0A8H]                   ; 248F _ 8B. 95, FFFFFF58
        mov     dword [esp+8H], edx                     ; 2495 _ 89. 54 24, 08
        mov     edx, dword [ebp-0BCH]                   ; 2499 _ 8B. 95, FFFFFF44
        mov     dword [esp+4H], edx                     ; 249F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24A3 _ 89. 04 24
        call    set_cursor                              ; 24A6 _ E8, FFFFFFFC(rel)
        movzx   eax, byte [ebp-0ABH]                    ; 24AB _ 0F B6. 85, FFFFFF55
        mov     byte [ebp-0AAH], al                     ; 24B2 _ 88. 85, FFFFFF56
        mov     byte [ebp-0A9H], 0                      ; 24B8 _ C6. 85, FFFFFF57, 00
        mov     eax, dword [sheet_control]              ; 24BF _ A1, 00000000(d)
        mov     dword [esp+14H], 7                      ; 24C4 _ C7. 44 24, 14, 00000007
        lea     edx, [ebp-0AAH]                         ; 24CC _ 8D. 95, FFFFFF56
        mov     dword [esp+10H], edx                    ; 24D2 _ 89. 54 24, 10
        mov     edx, dword [ebp-0A4H]                   ; 24D6 _ 8B. 95, FFFFFF5C
        mov     dword [esp+0CH], edx                    ; 24DC _ 89. 54 24, 0C
        mov     edx, dword [ebp-0A8H]                   ; 24E0 _ 8B. 95, FFFFFF58
        mov     dword [esp+8H], edx                     ; 24E6 _ 89. 54 24, 08
        mov     edx, dword [ebp-0BCH]                   ; 24EA _ 8B. 95, FFFFFF44
        mov     dword [esp+4H], edx                     ; 24F0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 24F4 _ 89. 04 24
        call    paint_string                            ; 24F7 _ E8, FFFFFFFC(rel)
        add     dword [ebp-0A8H], 8                     ; 24FC _ 83. 85, FFFFFF58, 08
?_087:  cmp     dword [ebp-0A0H], 0                     ; 2503 _ 83. BD, FFFFFF60, 00
        js      ?_088                                   ; 250A _ 78, 3A
        mov     eax, dword [sheet_control]              ; 250C _ A1, 00000000(d)
        mov     edx, dword [ebp-0A0H]                   ; 2511 _ 8B. 95, FFFFFF60
        mov     dword [esp+10H], edx                    ; 2517 _ 89. 54 24, 10
        mov     edx, dword [ebp-0A4H]                   ; 251B _ 8B. 95, FFFFFF5C
        mov     dword [esp+0CH], edx                    ; 2521 _ 89. 54 24, 0C
        mov     edx, dword [ebp-0A8H]                   ; 2525 _ 8B. 95, FFFFFF58
        mov     dword [esp+8H], edx                     ; 252B _ 89. 54 24, 08
        mov     edx, dword [ebp-0BCH]                   ; 252F _ 8B. 95, FFFFFF44
        mov     dword [esp+4H], edx                     ; 2535 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2539 _ 89. 04 24
        call    set_cursor                              ; 253C _ E8, FFFFFFFC(rel)
        jmp     ?_078                                   ; 2541 _ E9, FFFFFC4B

?_088:  jmp     ?_078                                   ; 2546 _ E9, FFFFFC46
; console_task End of function

launch_console:; Function begin
        push    ebp                                     ; 254B _ 55
        mov     ebp, esp                                ; 254C _ 89. E5
        sub     esp, 56                                 ; 254E _ 83. EC, 38
        mov     eax, dword [sheet_control]              ; 2551 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 2556 _ 89. 04 24
        call    sheet_alloc                             ; 2559 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-18H], eax                    ; 255E _ 89. 45, E8
        mov     eax, dword [memman]                     ; 2561 _ A1, 00000000(d)
        mov     dword [esp+4H], 42240                   ; 2566 _ C7. 44 24, 04, 0000A500
        mov     dword [esp], eax                        ; 256E _ 89. 04 24
        call    memman_alloc_4k                         ; 2571 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-14H], eax                    ; 2576 _ 89. 45, EC
        mov     dword [esp+10H], 99                     ; 2579 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 165                    ; 2581 _ C7. 44 24, 0C, 000000A5
        mov     dword [esp+8H], 256                     ; 2589 _ C7. 44 24, 08, 00000100
        mov     eax, dword [ebp-14H]                    ; 2591 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 2594 _ 89. 44 24, 04
        mov     eax, dword [ebp-18H]                    ; 2598 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 259B _ 89. 04 24
        call    sheet_setbuf                            ; 259E _ E8, FFFFFFFC(rel)
        mov     eax, dword [sheet_control]              ; 25A3 _ A1, 00000000(d)
        mov     dword [esp+0CH], 0                      ; 25A8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], ?_242                   ; 25B0 _ C7. 44 24, 08, 00000062(d)
        mov     edx, dword [ebp-18H]                    ; 25B8 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 25BB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 25BF _ 89. 04 24
        call    make_windows                            ; 25C2 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], 0                      ; 25C7 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 128                    ; 25CF _ C7. 44 24, 10, 00000080
        mov     dword [esp+0CH], 240                    ; 25D7 _ C7. 44 24, 0C, 000000F0
        mov     dword [esp+8H], 28                      ; 25DF _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 25E7 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-18H]                    ; 25EF _ 8B. 45, E8
        mov     dword [esp], eax                        ; 25F2 _ 89. 04 24
        call    make_textbox                            ; 25F5 _ E8, FFFFFFFC(rel)
        call    task_alloc                              ; 25FA _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 25FF _ 89. 45, F0
        call    get_code32_addr                         ; 2602 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 2607 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 260A _ 8B. 45, F0
        mov     dword [eax+8CH], 0                      ; 260D _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-10H]                    ; 2617 _ 8B. 45, F0
        mov     dword [eax+90H], 1073741824             ; 261A _ C7. 80, 00000090, 40000000
        mov     eax, console_task                       ; 2624 _ B8, 00000000(d)
        sub     eax, dword [ebp-0CH]                    ; 2629 _ 2B. 45, F4
        mov     edx, eax                                ; 262C _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 262E _ 8B. 45, F0
        mov     dword [eax+4CH], edx                    ; 2631 _ 89. 50, 4C
        mov     eax, dword [ebp-10H]                    ; 2634 _ 8B. 45, F0
        mov     dword [eax+74H], 0                      ; 2637 _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-10H]                    ; 263E _ 8B. 45, F0
        mov     dword [eax+78H], 8                      ; 2641 _ C7. 40, 78, 00000008
        mov     eax, dword [ebp-10H]                    ; 2648 _ 8B. 45, F0
        mov     dword [eax+7CH], 48                     ; 264B _ C7. 40, 7C, 00000030
        mov     eax, dword [ebp-10H]                    ; 2652 _ 8B. 45, F0
        mov     dword [eax+80H], 32                     ; 2655 _ C7. 80, 00000080, 00000020
        mov     eax, dword [ebp-10H]                    ; 265F _ 8B. 45, F0
        mov     dword [eax+84H], 0                      ; 2662 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-10H]                    ; 266C _ 8B. 45, F0
        mov     dword [eax+88H], 16                     ; 266F _ C7. 80, 00000088, 00000010
        mov     eax, dword [ebp-10H]                    ; 2679 _ 8B. 45, F0
        mov     eax, dword [eax+64H]                    ; 267C _ 8B. 40, 64
        lea     edx, [eax-4H]                           ; 267F _ 8D. 50, FC
        mov     eax, dword [ebp-10H]                    ; 2682 _ 8B. 45, F0
        mov     dword [eax+64H], edx                    ; 2685 _ 89. 50, 64
        mov     eax, dword [ebp-10H]                    ; 2688 _ 8B. 45, F0
        mov     eax, dword [eax+64H]                    ; 268B _ 8B. 40, 64
        add     eax, 4                                  ; 268E _ 83. C0, 04
        mov     edx, dword [ebp-18H]                    ; 2691 _ 8B. 55, E8
        mov     dword [eax], edx                        ; 2694 _ 89. 10
        mov     dword [esp+8H], 5                       ; 2696 _ C7. 44 24, 08, 00000005
        mov     dword [esp+4H], 1                       ; 269E _ C7. 44 24, 04, 00000001
        mov     eax, dword [ebp-10H]                    ; 26A6 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 26A9 _ 89. 04 24
        call    task_run                                ; 26AC _ E8, FFFFFFFC(rel)
        mov     eax, dword [sheet_control]              ; 26B1 _ A1, 00000000(d)
        mov     dword [esp+0CH], 4                      ; 26B6 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 32                      ; 26BE _ C7. 44 24, 08, 00000020
        mov     edx, dword [ebp-18H]                    ; 26C6 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 26C9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 26CD _ 89. 04 24
        call    sheet_slide                             ; 26D0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [sheet_control]              ; 26D5 _ A1, 00000000(d)
        mov     dword [esp+8H], 1                       ; 26DA _ C7. 44 24, 08, 00000001
        mov     edx, dword [ebp-18H]                    ; 26E2 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 26E5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 26E9 _ 89. 04 24
        call    sheet_updown                            ; 26EC _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-10H]                    ; 26F1 _ 8B. 45, F0
        mov     dword [task_console_g], eax             ; 26F4 _ A3, 00000000(d)
        mov     eax, dword [ebp-18H]                    ; 26F9 _ 8B. 45, E8
        leave                                           ; 26FC _ C9
        ret                                             ; 26FD _ C3
; launch_console End of function

set_cursor:; Function begin
        push    ebp                                     ; 26FE _ 55
        mov     ebp, esp                                ; 26FF _ 89. E5
        push    esi                                     ; 2701 _ 56
        push    ebx                                     ; 2702 _ 53
        sub     esp, 32                                 ; 2703 _ 83. EC, 20
        mov     eax, dword [ebp+14H]                    ; 2706 _ 8B. 45, 14
        lea     esi, [eax+0FH]                          ; 2709 _ 8D. 70, 0F
        mov     eax, dword [ebp+10H]                    ; 270C _ 8B. 45, 10
        lea     ebx, [eax+7H]                           ; 270F _ 8D. 58, 07
        mov     eax, dword [ebp+18H]                    ; 2712 _ 8B. 45, 18
        movzx   ecx, al                                 ; 2715 _ 0F B6. C8
        mov     eax, dword [ebp+0CH]                    ; 2718 _ 8B. 45, 0C
        mov     edx, dword [eax+4H]                     ; 271B _ 8B. 50, 04
        mov     eax, dword [ebp+0CH]                    ; 271E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 2721 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 2723 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 2727 _ 89. 5C 24, 14
        mov     ebx, dword [ebp+14H]                    ; 272B _ 8B. 5D, 14
        mov     dword [esp+10H], ebx                    ; 272E _ 89. 5C 24, 10
        mov     ebx, dword [ebp+10H]                    ; 2732 _ 8B. 5D, 10
        mov     dword [esp+0CH], ebx                    ; 2735 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 2739 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 273D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2741 _ 89. 04 24
        call    paint_rectangle                         ; 2744 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+14H]                    ; 2749 _ 8B. 45, 14
        lea     edx, [eax+10H]                          ; 274C _ 8D. 50, 10
        mov     eax, dword [ebp+10H]                    ; 274F _ 8B. 45, 10
        add     eax, 8                                  ; 2752 _ 83. C0, 08
        mov     dword [esp+14H], edx                    ; 2755 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 2759 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 275D _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 2760 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 2764 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2767 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 276B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 276E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2772 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2775 _ 89. 04 24
        call    sheet_refresh                           ; 2778 _ E8, FFFFFFFC(rel)
        add     esp, 32                                 ; 277D _ 83. C4, 20
        pop     ebx                                     ; 2780 _ 5B
        pop     esi                                     ; 2781 _ 5E
        pop     ebp                                     ; 2782 _ 5D
        ret                                             ; 2783 _ C3
; set_cursor End of function

wait_KBC_sendready:; Function begin
        push    ebp                                     ; 2784 _ 55
        mov     ebp, esp                                ; 2785 _ 89. E5
        sub     esp, 24                                 ; 2787 _ 83. EC, 18
?_089:  mov     dword [esp], 100                        ; 278A _ C7. 04 24, 00000064
        call    io_in8                                  ; 2791 _ E8, FFFFFFFC(rel)
        and     eax, 02H                                ; 2796 _ 83. E0, 02
        test    eax, eax                                ; 2799 _ 85. C0
        jnz     ?_090                                   ; 279B _ 75, 02
        jmp     ?_091                                   ; 279D _ EB, 02

?_090:  jmp     ?_089                                   ; 279F _ EB, E9

?_091:  leave                                           ; 27A1 _ C9
        ret                                             ; 27A2 _ C3
; wait_KBC_sendready End of function

init_keyboard:; Function begin
        push    ebp                                     ; 27A3 _ 55
        mov     ebp, esp                                ; 27A4 _ 89. E5
        sub     esp, 24                                 ; 27A6 _ 83. EC, 18
        call    wait_KBC_sendready                      ; 27A9 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 96                      ; 27AE _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 27B6 _ C7. 04 24, 00000064
        call    io_out8                                 ; 27BD _ E8, FFFFFFFC(rel)
        call    wait_KBC_sendready                      ; 27C2 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 71                      ; 27C7 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 27CF _ C7. 04 24, 00000060
        call    io_out8                                 ; 27D6 _ E8, FFFFFFFC(rel)
        leave                                           ; 27DB _ C9
        ret                                             ; 27DC _ C3
; init_keyboard End of function

enable_mouse:; Function begin
        push    ebp                                     ; 27DD _ 55
        mov     ebp, esp                                ; 27DE _ 89. E5
        sub     esp, 24                                 ; 27E0 _ 83. EC, 18
        call    wait_KBC_sendready                      ; 27E3 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 212                     ; 27E8 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 27F0 _ C7. 04 24, 00000064
        call    io_out8                                 ; 27F7 _ E8, FFFFFFFC(rel)
        call    wait_KBC_sendready                      ; 27FC _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 244                     ; 2801 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 2809 _ C7. 04 24, 00000060
        call    io_out8                                 ; 2810 _ E8, FFFFFFFC(rel)
        leave                                           ; 2815 _ C9
        ret                                             ; 2816 _ C3
; enable_mouse End of function

mouse_decode:; Function begin
        push    ebp                                     ; 2817 _ 55
        mov     ebp, esp                                ; 2818 _ 89. E5
        sub     esp, 4                                  ; 281A _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 281D _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2820 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2823 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2826 _ 0F B6. 40, 03
        test    al, al                                  ; 282A _ 84. C0
        jnz     ?_093                                   ; 282C _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 282E _ 80. 7D, FC, FA
        jnz     ?_092                                   ; 2832 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 2834 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 2837 _ C6. 40, 03, 01
?_092:  mov     eax, 0                                  ; 283B _ B8, 00000000
        jmp     ?_100                                   ; 2840 _ E9, 0000010F

?_093:  mov     eax, dword [ebp+8H]                     ; 2845 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 2848 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 284C _ 3C, 01
        jnz     ?_095                                   ; 284E _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 2850 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 2854 _ 25, 000000C8
        cmp     eax, 8                                  ; 2859 _ 83. F8, 08
        jnz     ?_094                                   ; 285C _ 75, 10
        mov     eax, dword [ebp+8H]                     ; 285E _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2861 _ 0F B6. 55, FC
        mov     byte [eax], dl                          ; 2865 _ 88. 10
        mov     eax, dword [ebp+8H]                     ; 2867 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 286A _ C6. 40, 03, 02
?_094:  mov     eax, 0                                  ; 286E _ B8, 00000000
        jmp     ?_100                                   ; 2873 _ E9, 000000DC

?_095:  mov     eax, dword [ebp+8H]                     ; 2878 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 287B _ 0F B6. 40, 03
        cmp     al, 2                                   ; 287F _ 3C, 02
        jnz     ?_096                                   ; 2881 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 2883 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 2886 _ 0F B6. 55, FC
        mov     byte [eax+1H], dl                       ; 288A _ 88. 50, 01
        mov     eax, dword [ebp+8H]                     ; 288D _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 2890 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 2894 _ B8, 00000000
        jmp     ?_100                                   ; 2899 _ E9, 000000B6

?_096:  mov     eax, dword [ebp+8H]                     ; 289E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 28A1 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 28A5 _ 3C, 03
        jne     ?_099                                   ; 28A7 _ 0F 85, 000000A2
        mov     eax, dword [ebp+8H]                     ; 28AD _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 28B0 _ 0F B6. 55, FC
        mov     byte [eax+2H], dl                       ; 28B4 _ 88. 50, 02
        mov     eax, dword [ebp+8H]                     ; 28B7 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 28BA _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 28BE _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 28C1 _ 0F B6. 00
        movzx   eax, al                                 ; 28C4 _ 0F B6. C0
        and     eax, 07H                                ; 28C7 _ 83. E0, 07
        mov     edx, eax                                ; 28CA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 28CC _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 28CF _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 28D2 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 28D5 _ 0F B6. 40, 01
        movzx   edx, al                                 ; 28D9 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 28DC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 28DF _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 28E2 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 28E5 _ 0F B6. 40, 02
        movzx   edx, al                                 ; 28E9 _ 0F B6. D0
        mov     eax, dword [ebp+8H]                     ; 28EC _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 28EF _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 28F2 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 28F5 _ 0F B6. 00
        movzx   eax, al                                 ; 28F8 _ 0F B6. C0
        and     eax, 10H                                ; 28FB _ 83. E0, 10
        test    eax, eax                                ; 28FE _ 85. C0
        jz      ?_097                                   ; 2900 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2902 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2905 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 2908 _ 0D, FFFFFF00
        mov     edx, eax                                ; 290D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 290F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2912 _ 89. 50, 04
?_097:  mov     eax, dword [ebp+8H]                     ; 2915 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 2918 _ 0F B6. 00
        movzx   eax, al                                 ; 291B _ 0F B6. C0
        and     eax, 20H                                ; 291E _ 83. E0, 20
        test    eax, eax                                ; 2921 _ 85. C0
        jz      ?_098                                   ; 2923 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 2925 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2928 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 292B _ 0D, FFFFFF00
        mov     edx, eax                                ; 2930 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2932 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2935 _ 89. 50, 08
?_098:  mov     eax, dword [ebp+8H]                     ; 2938 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 293B _ 8B. 40, 08
        neg     eax                                     ; 293E _ F7. D8
        mov     edx, eax                                ; 2940 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2942 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2945 _ 89. 50, 08
        mov     eax, 1                                  ; 2948 _ B8, 00000001
        jmp     ?_100                                   ; 294D _ EB, 05

?_099:  mov     eax, 4294967295                         ; 294F _ B8, FFFFFFFF
?_100:  leave                                           ; 2954 _ C9
        ret                                             ; 2955 _ C3
; mouse_decode End of function

intHandlerKeyboard:; Function begin
        push    ebp                                     ; 2956 _ 55
        mov     ebp, esp                                ; 2957 _ 89. E5
        sub     esp, 40                                 ; 2959 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 295C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 2964 _ C7. 04 24, 00000020
        call    io_out8                                 ; 296B _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 32                      ; 2970 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 2978 _ C7. 04 24, 000000A0
        call    io_out8                                 ; 297F _ E8, FFFFFFFC(rel)
        mov     dword [esp], 96                         ; 2984 _ C7. 04 24, 00000060
        call    io_in8                                  ; 298B _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], al                       ; 2990 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 2993 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 2997 _ 89. 44 24, 04
        mov     dword [esp], keyinfo                    ; 299B _ C7. 04 24, 00000000(d)
        call    fifo8_put                               ; 29A2 _ E8, FFFFFFFC(rel)
        leave                                           ; 29A7 _ C9
        ret                                             ; 29A8 _ C3
; intHandlerKeyboard End of function

intHandlerMouse:; Function begin
        push    ebp                                     ; 29A9 _ 55
        mov     ebp, esp                                ; 29AA _ 89. E5
        sub     esp, 40                                 ; 29AC _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 29AF _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 29B7 _ C7. 04 24, 00000020
        call    io_out8                                 ; 29BE _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 32                      ; 29C3 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 29CB _ C7. 04 24, 000000A0
        call    io_out8                                 ; 29D2 _ E8, FFFFFFFC(rel)
        mov     dword [esp], 96                         ; 29D7 _ C7. 04 24, 00000060
        call    io_in8                                  ; 29DE _ E8, FFFFFFFC(rel)
        mov     byte [ebp-9H], al                       ; 29E3 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 29E6 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 29EA _ 89. 44 24, 04
        mov     dword [esp], mouseinfo                  ; 29EE _ C7. 04 24, 00000000(d)
        call    fifo8_put                               ; 29F5 _ E8, FFFFFFFC(rel)
        leave                                           ; 29FA _ C9
        ret                                             ; 29FB _ C3
; intHandlerMouse End of function

fifo8_init:; Function begin
        push    ebp                                     ; 29FC _ 55
        mov     ebp, esp                                ; 29FD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 29FF _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2A02 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2A05 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2A07 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2A0A _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2A11 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2A14 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2A1B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2A1E _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2A21 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2A24 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2A27 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2A2A _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2A2D _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2A30 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 2A37 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2A3A _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 2A3D _ 89. 50, 18
        pop     ebp                                     ; 2A40 _ 5D
        ret                                             ; 2A41 _ C3
; fifo8_init End of function

fifo8_put:; Function begin
        push    ebp                                     ; 2A42 _ 55
        mov     ebp, esp                                ; 2A43 _ 89. E5
        sub     esp, 40                                 ; 2A45 _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 2A48 _ 8B. 45, 0C
        mov     byte [ebp-1CH], al                      ; 2A4B _ 88. 45, E4
        cmp     dword [ebp+8H], 0                       ; 2A4E _ 83. 7D, 08, 00
        jnz     ?_101                                   ; 2A52 _ 75, 0A
        mov     eax, 4294967295                         ; 2A54 _ B8, FFFFFFFF
        jmp     ?_105                                   ; 2A59 _ E9, 000000B1

?_101:  mov     eax, dword [ebp+8H]                     ; 2A5E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2A61 _ 8B. 40, 10
        test    eax, eax                                ; 2A64 _ 85. C0
        jnz     ?_102                                   ; 2A66 _ 75, 1B
        mov     eax, dword [ebp+8H]                     ; 2A68 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2A6B _ 8B. 40, 14
        or      eax, 01H                                ; 2A6E _ 83. C8, 01
        mov     edx, eax                                ; 2A71 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2A73 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2A76 _ 89. 50, 14
        mov     eax, 4294967295                         ; 2A79 _ B8, FFFFFFFF
        jmp     ?_105                                   ; 2A7E _ E9, 0000008C

?_102:  mov     eax, dword [ebp+8H]                     ; 2A83 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2A86 _ 8B. 40, 04
        mov     dword [ebp-0CH], eax                    ; 2A89 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 2A8C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2A8F _ 8B. 10
        mov     eax, dword [ebp-0CH]                    ; 2A91 _ 8B. 45, F4
        add     edx, eax                                ; 2A94 _ 01. C2
        movzx   eax, byte [ebp-1CH]                     ; 2A96 _ 0F B6. 45, E4
        mov     byte [edx], al                          ; 2A9A _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2A9C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2A9F _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 2AA2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2AA5 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2AA8 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2AAB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2AAE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2AB1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2AB4 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2AB7 _ 39. C2
        jnz     ?_103                                   ; 2AB9 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 2ABB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2ABE _ C7. 40, 04, 00000000
?_103:  mov     eax, dword [ebp+8H]                     ; 2AC5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2AC8 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2ACB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2ACE _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2AD1 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2AD4 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 2AD7 _ 8B. 40, 18
        test    eax, eax                                ; 2ADA _ 85. C0
        jz      ?_104                                   ; 2ADC _ 74, 2C
        mov     eax, dword [ebp+8H]                     ; 2ADE _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 2AE1 _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 2AE4 _ 8B. 40, 04
        cmp     eax, 2                                  ; 2AE7 _ 83. F8, 02
        jz      ?_104                                   ; 2AEA _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 2AEC _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 2AEF _ 8B. 40, 18
        mov     dword [esp+8H], 0                       ; 2AF2 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], -1                      ; 2AFA _ C7. 44 24, 04, FFFFFFFF
        mov     dword [esp], eax                        ; 2B02 _ 89. 04 24
        call    task_run                                ; 2B05 _ E8, FFFFFFFC(rel)
?_104:  mov     eax, 0                                  ; 2B0A _ B8, 00000000
?_105:  leave                                           ; 2B0F _ C9
        ret                                             ; 2B10 _ C3
; fifo8_put End of function

fifo8_get:; Function begin
        push    ebp                                     ; 2B11 _ 55
        mov     ebp, esp                                ; 2B12 _ 89. E5
        sub     esp, 16                                 ; 2B14 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2B17 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 2B1A _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2B1D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B20 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2B23 _ 39. C2
        jnz     ?_106                                   ; 2B25 _ 75, 11
        mov     eax, dword [ebp+8H]                     ; 2B27 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2B2A _ C7. 40, 14, 00000000
        mov     eax, 4294967295                         ; 2B31 _ B8, FFFFFFFF
        jmp     ?_108                                   ; 2B36 _ EB, 57

?_106:  mov     eax, dword [ebp+8H]                     ; 2B38 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B3B _ 8B. 40, 08
        mov     dword [ebp-8H], eax                     ; 2B3E _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2B41 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2B44 _ 8B. 10
        mov     eax, dword [ebp-8H]                     ; 2B46 _ 8B. 45, F8
        add     eax, edx                                ; 2B49 _ 01. D0
        movzx   eax, byte [eax]                         ; 2B4B _ 0F B6. 00
        movzx   eax, al                                 ; 2B4E _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 2B51 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2B54 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2B57 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2B5A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2B5D _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2B60 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2B63 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 2B66 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2B69 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2B6C _ 8B. 40, 0C
        cmp     edx, eax                                ; 2B6F _ 39. C2
        jnz     ?_107                                   ; 2B71 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 2B73 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2B76 _ C7. 40, 08, 00000000
?_107:  mov     eax, dword [ebp+8H]                     ; 2B7D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B80 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2B83 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2B86 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2B89 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 2B8C _ 8B. 45, FC
?_108:  leave                                           ; 2B8F _ C9
        ret                                             ; 2B90 _ C3
; fifo8_get End of function

fifo8_status:; Function begin
        push    ebp                                     ; 2B91 _ 55
        mov     ebp, esp                                ; 2B92 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2B94 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 2B97 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2B9A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B9D _ 8B. 40, 10
        sub     edx, eax                                ; 2BA0 _ 29. C2
        mov     eax, edx                                ; 2BA2 _ 89. D0
        pop     ebp                                     ; 2BA4 _ 5D
        ret                                             ; 2BA5 _ C3
; fifo8_status End of function

charToHexVal:; Function begin
        push    ebp                                     ; 2BA6 _ 55
        mov     ebp, esp                                ; 2BA7 _ 89. E5
        sub     esp, 4                                  ; 2BA9 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 2BAC _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 2BAF _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 2BB2 _ 80. 7D, FC, 09
        jle     ?_109                                   ; 2BB6 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 2BB8 _ 0F B6. 45, FC
        add     eax, 55                                 ; 2BBC _ 83. C0, 37
        jmp     ?_110                                   ; 2BBF _ EB, 07

?_109:  movzx   eax, byte [ebp-4H]                      ; 2BC1 _ 0F B6. 45, FC
        add     eax, 48                                 ; 2BC5 _ 83. C0, 30
?_110:  leave                                           ; 2BC8 _ C9
        ret                                             ; 2BC9 _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 2BCA _ 55
        mov     ebp, esp                                ; 2BCB _ 89. E5
        sub     esp, 24                                 ; 2BCD _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 2BD0 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 2BD3 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 2BD6 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 2BDD _ 0F B6. 45, EC
        and     eax, 0FH                                ; 2BE1 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 2BE4 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 2BE7 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 2BEB _ 89. 04 24
        call    charToHexVal                            ; 2BEE _ E8, FFFFFFFC(rel)
        mov     byte [?_244], al                        ; 2BF3 _ A2, 00000343(d)
        movzx   eax, byte [ebp-14H]                     ; 2BF8 _ 0F B6. 45, EC
        shr     al, 4                                   ; 2BFC _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 2BFF _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 2C02 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 2C06 _ 0F BE. C0
        mov     dword [esp], eax                        ; 2C09 _ 89. 04 24
        call    charToHexVal                            ; 2C0C _ E8, FFFFFFFC(rel)
        mov     byte [?_243], al                        ; 2C11 _ A2, 00000342(d)
        mov     eax, keyval                             ; 2C16 _ B8, 00000340(d)
        leave                                           ; 2C1B _ C9
        ret                                             ; 2C1C _ C3
; charToHexStr End of function

intToHexStr:; Function begin
        push    ebp                                     ; 2C1D _ 55
        mov     ebp, esp                                ; 2C1E _ 89. E5
        sub     esp, 16                                 ; 2C20 _ 83. EC, 10
        mov     byte [str.1386], 48                     ; 2C23 _ C6. 05, 000002E0(d), 30
        mov     byte [?_247], 88                        ; 2C2A _ C6. 05, 000002E1(d), 58
        mov     byte [?_248], 0                         ; 2C31 _ C6. 05, 000002EA(d), 00
        mov     dword [ebp-0CH], 2                      ; 2C38 _ C7. 45, F4, 00000002
        jmp     ?_112                                   ; 2C3F _ EB, 0F

?_111:  mov     eax, dword [ebp-0CH]                    ; 2C41 _ 8B. 45, F4
        add     eax, str.1386                           ; 2C44 _ 05, 000002E0(d)
        mov     byte [eax], 48                          ; 2C49 _ C6. 00, 30
        add     dword [ebp-0CH], 1                      ; 2C4C _ 83. 45, F4, 01
?_112:  cmp     dword [ebp-0CH], 9                      ; 2C50 _ 83. 7D, F4, 09
        jle     ?_111                                   ; 2C54 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 2C56 _ C7. 45, F8, 00000009
        jmp     ?_116                                   ; 2C5D _ EB, 40

?_113:  mov     eax, dword [ebp+8H]                     ; 2C5F _ 8B. 45, 08
        and     eax, 0FH                                ; 2C62 _ 83. E0, 0F
        mov     dword [ebp-4H], eax                     ; 2C65 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2C68 _ 8B. 45, 08
        shr     eax, 4                                  ; 2C6B _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 2C6E _ 89. 45, 08
        cmp     dword [ebp-4H], 9                       ; 2C71 _ 83. 7D, FC, 09
        jle     ?_114                                   ; 2C75 _ 7E, 13
        mov     eax, dword [ebp-4H]                     ; 2C77 _ 8B. 45, FC
        add     eax, 55                                 ; 2C7A _ 83. C0, 37
        mov     edx, dword [ebp-8H]                     ; 2C7D _ 8B. 55, F8
        add     edx, str.1386                           ; 2C80 _ 81. C2, 000002E0(d)
        mov     byte [edx], al                          ; 2C86 _ 88. 02
        jmp     ?_115                                   ; 2C88 _ EB, 11

?_114:  mov     eax, dword [ebp-4H]                     ; 2C8A _ 8B. 45, FC
        add     eax, 48                                 ; 2C8D _ 83. C0, 30
        mov     edx, dword [ebp-8H]                     ; 2C90 _ 8B. 55, F8
        add     edx, str.1386                           ; 2C93 _ 81. C2, 000002E0(d)
        mov     byte [edx], al                          ; 2C99 _ 88. 02
?_115:  sub     dword [ebp-8H], 1                       ; 2C9B _ 83. 6D, F8, 01
?_116:  cmp     dword [ebp-8H], 1                       ; 2C9F _ 83. 7D, F8, 01
        jle     ?_117                                   ; 2CA3 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 2CA5 _ 83. 7D, 08, 00
        jnz     ?_113                                   ; 2CA9 _ 75, B4
?_117:  mov     eax, str.1386                           ; 2CAB _ B8, 000002E0(d)
        leave                                           ; 2CB0 _ C9
        ret                                             ; 2CB1 _ C3
; intToHexStr End of function

memman_init:; Function begin
        push    ebp                                     ; 2CB2 _ 55
        mov     ebp, esp                                ; 2CB3 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2CB5 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2CB8 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2CBE _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2CC1 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2CC8 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2CCB _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2CD2 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2CD5 _ C7. 40, 0C, 00000000
        pop     ebp                                     ; 2CDC _ 5D
        ret                                             ; 2CDD _ C3
; memman_init End of function

memman_total:; Function begin
        push    ebp                                     ; 2CDE _ 55
        mov     ebp, esp                                ; 2CDF _ 89. E5
        sub     esp, 16                                 ; 2CE1 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2CE4 _ C7. 45, FC, 00000000
        mov     dword [ebp-8H], 0                       ; 2CEB _ C7. 45, F8, 00000000
        jmp     ?_119                                   ; 2CF2 _ EB, 14

?_118:  mov     eax, dword [ebp+8H]                     ; 2CF4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2CF7 _ 8B. 55, F8
        add     edx, 2                                  ; 2CFA _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2CFD _ 8B. 44 D0, 04
        add     dword [ebp-4H], eax                     ; 2D01 _ 01. 45, FC
        add     dword [ebp-8H], 1                       ; 2D04 _ 83. 45, F8, 01
?_119:  mov     eax, dword [ebp+8H]                     ; 2D08 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D0B _ 8B. 00
        cmp     eax, dword [ebp-8H]                     ; 2D0D _ 3B. 45, F8
        ja      ?_118                                   ; 2D10 _ 77, E2
        mov     eax, dword [ebp-4H]                     ; 2D12 _ 8B. 45, FC
        leave                                           ; 2D15 _ C9
        ret                                             ; 2D16 _ C3
; memman_total End of function

memman_alloc:; Function begin
        push    ebp                                     ; 2D17 _ 55
        mov     ebp, esp                                ; 2D18 _ 89. E5
        sub     esp, 16                                 ; 2D1A _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2D1D _ C7. 45, F8, 00000000
        jmp     ?_123                                   ; 2D24 _ E9, 00000085

?_120:  mov     eax, dword [ebp+8H]                     ; 2D29 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D2C _ 8B. 55, F8
        add     edx, 2                                  ; 2D2F _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D32 _ 8B. 44 D0, 04
        cmp     eax, dword [ebp+0CH]                    ; 2D36 _ 3B. 45, 0C
        jc      ?_122                                   ; 2D39 _ 72, 6F
        mov     eax, dword [ebp+8H]                     ; 2D3B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D3E _ 8B. 55, F8
        add     edx, 2                                  ; 2D41 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2D44 _ 8B. 04 D0
        mov     dword [ebp-4H], eax                     ; 2D47 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2D4A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D4D _ 8B. 55, F8
        add     edx, 2                                  ; 2D50 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2D53 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2D56 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2D59 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2D5C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D5F _ 8B. 55, F8
        add     edx, 2                                  ; 2D62 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2D65 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2D68 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D6B _ 8B. 55, F8
        add     edx, 2                                  ; 2D6E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D71 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2D75 _ 2B. 45, 0C
        mov     edx, eax                                ; 2D78 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2D7A _ 8B. 45, 08
        mov     ecx, dword [ebp-8H]                     ; 2D7D _ 8B. 4D, F8
        add     ecx, 2                                  ; 2D80 _ 83. C1, 02
        mov     dword [eax+ecx*8+4H], edx               ; 2D83 _ 89. 54 C8, 04
        mov     eax, dword [ebp+8H]                     ; 2D87 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D8A _ 8B. 55, F8
        add     edx, 2                                  ; 2D8D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D90 _ 8B. 44 D0, 04
        test    eax, eax                                ; 2D94 _ 85. C0
        jnz     ?_121                                   ; 2D96 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2D98 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D9B _ 8B. 00
        lea     edx, [eax-1H]                           ; 2D9D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2DA0 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2DA3 _ 89. 10
?_121:  mov     eax, dword [ebp-4H]                     ; 2DA5 _ 8B. 45, FC
        jmp     ?_124                                   ; 2DA8 _ EB, 17

?_122:  add     dword [ebp-8H], 1                       ; 2DAA _ 83. 45, F8, 01
?_123:  mov     eax, dword [ebp+8H]                     ; 2DAE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DB1 _ 8B. 00
        cmp     eax, dword [ebp-8H]                     ; 2DB3 _ 3B. 45, F8
        ja      ?_120                                   ; 2DB6 _ 0F 87, FFFFFF6D
        mov     eax, 0                                  ; 2DBC _ B8, 00000000
?_124:  leave                                           ; 2DC1 _ C9
        ret                                             ; 2DC2 _ C3
; memman_alloc End of function

memman_free:; Function begin
        push    ebp                                     ; 2DC3 _ 55
        mov     ebp, esp                                ; 2DC4 _ 89. E5
        push    ebx                                     ; 2DC6 _ 53
        sub     esp, 16                                 ; 2DC7 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 2DCA _ C7. 45, F4, 00000000
        jmp     ?_127                                   ; 2DD1 _ EB, 17

?_125:  mov     eax, dword [ebp+8H]                     ; 2DD3 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2DD6 _ 8B. 55, F4
        add     edx, 2                                  ; 2DD9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2DDC _ 8B. 04 D0
        cmp     eax, dword [ebp+0CH]                    ; 2DDF _ 3B. 45, 0C
        jbe     ?_126                                   ; 2DE2 _ 76, 02
        jmp     ?_128                                   ; 2DE4 _ EB, 0E

?_126:  add     dword [ebp-0CH], 1                      ; 2DE6 _ 83. 45, F4, 01
?_127:  mov     eax, dword [ebp+8H]                     ; 2DEA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DED _ 8B. 00
        cmp     eax, dword [ebp-0CH]                    ; 2DEF _ 3B. 45, F4
        jg      ?_125                                   ; 2DF2 _ 7F, DF
?_128:  cmp     dword [ebp-0CH], 0                      ; 2DF4 _ 83. 7D, F4, 00
        jle     ?_130                                   ; 2DF8 _ 0F 8E, 000000BA
        mov     eax, dword [ebp-0CH]                    ; 2DFE _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2E01 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E04 _ 8B. 45, 08
        add     edx, 2                                  ; 2E07 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2E0A _ 8B. 14 D0
        mov     eax, dword [ebp-0CH]                    ; 2E0D _ 8B. 45, F4
        lea     ecx, [eax-1H]                           ; 2E10 _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 2E13 _ 8B. 45, 08
        add     ecx, 2                                  ; 2E16 _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2E19 _ 8B. 44 C8, 04
        add     eax, edx                                ; 2E1D _ 01. D0
        cmp     eax, dword [ebp+0CH]                    ; 2E1F _ 3B. 45, 0C
        jne     ?_130                                   ; 2E22 _ 0F 85, 00000090
        mov     eax, dword [ebp-0CH]                    ; 2E28 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2E2B _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2E2E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2E31 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E34 _ 8B. 45, 08
        add     edx, 2                                  ; 2E37 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2E3A _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2E3E _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2E41 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2E44 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2E47 _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2E4A _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2E4E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2E51 _ 8B. 00
        cmp     eax, dword [ebp-0CH]                    ; 2E53 _ 3B. 45, F4
        jle     ?_129                                   ; 2E56 _ 7E, 56
        mov     eax, dword [ebp+10H]                    ; 2E58 _ 8B. 45, 10
        mov     edx, dword [ebp+0CH]                    ; 2E5B _ 8B. 55, 0C
        lea     ecx, [edx+eax]                          ; 2E5E _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2E61 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2E64 _ 8B. 55, F4
        add     edx, 2                                  ; 2E67 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2E6A _ 8B. 04 D0
        cmp     ecx, eax                                ; 2E6D _ 39. C1
        jnz     ?_129                                   ; 2E6F _ 75, 3D
        mov     eax, dword [ebp-0CH]                    ; 2E71 _ 8B. 45, F4
        lea     ebx, [eax-1H]                           ; 2E74 _ 8D. 58, FF
        mov     eax, dword [ebp-0CH]                    ; 2E77 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2E7A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2E7D _ 8B. 45, 08
        add     edx, 2                                  ; 2E80 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2E83 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+8H]                     ; 2E87 _ 8B. 45, 08
        mov     ecx, dword [ebp-0CH]                    ; 2E8A _ 8B. 4D, F4
        add     ecx, 2                                  ; 2E8D _ 83. C1, 02
        mov     eax, dword [eax+ecx*8+4H]               ; 2E90 _ 8B. 44 C8, 04
        lea     ecx, [edx+eax]                          ; 2E94 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2E97 _ 8B. 45, 08
        lea     edx, [ebx+2H]                           ; 2E9A _ 8D. 53, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2E9D _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2EA1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EA4 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2EA6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2EA9 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2EAC _ 89. 10
?_129:  mov     eax, 0                                  ; 2EAE _ B8, 00000000
        jmp     ?_136                                   ; 2EB3 _ E9, 0000011C

?_130:  mov     eax, dword [ebp+8H]                     ; 2EB8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2EBB _ 8B. 00
        cmp     eax, dword [ebp-0CH]                    ; 2EBD _ 3B. 45, F4
        jle     ?_131                                   ; 2EC0 _ 7E, 52
        mov     eax, dword [ebp+10H]                    ; 2EC2 _ 8B. 45, 10
        mov     edx, dword [ebp+0CH]                    ; 2EC5 _ 8B. 55, 0C
        lea     ecx, [edx+eax]                          ; 2EC8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2ECB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2ECE _ 8B. 55, F4
        add     edx, 2                                  ; 2ED1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2ED4 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2ED7 _ 39. C1
        jnz     ?_131                                   ; 2ED9 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2EDB _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2EDE _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2EE1 _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2EE4 _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2EE7 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2EEA _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2EED _ 8B. 55, F4
        add     edx, 2                                  ; 2EF0 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2EF3 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2EF7 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2EFA _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2EFD _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2F00 _ 8B. 55, F4
        add     edx, 2                                  ; 2F03 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2F06 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2F0A _ B8, 00000000
        jmp     ?_136                                   ; 2F0F _ E9, 000000C0

?_131:  mov     eax, dword [ebp+8H]                     ; 2F14 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F17 _ 8B. 00
        cmp     eax, 4095                               ; 2F19 _ 3D, 00000FFF
        jg      ?_135                                   ; 2F1E _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2F24 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F27 _ 8B. 00
        mov     dword [ebp-8H], eax                     ; 2F29 _ 89. 45, F8
        jmp     ?_133                                   ; 2F2C _ EB, 28

?_132:  mov     eax, dword [ebp-8H]                     ; 2F2E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2F31 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2F34 _ 8B. 4D, 08
        mov     eax, dword [ebp-8H]                     ; 2F37 _ 8B. 45, F8
        lea     ebx, [eax+2H]                           ; 2F3A _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2F3D _ 8B. 45, 08
        add     edx, 2                                  ; 2F40 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2F43 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2F46 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2F48 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2F4B _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2F4E _ 89. 54 D9, 04
        sub     dword [ebp-8H], 1                       ; 2F52 _ 83. 6D, F8, 01
?_133:  mov     eax, dword [ebp-8H]                     ; 2F56 _ 8B. 45, F8
        cmp     eax, dword [ebp-0CH]                    ; 2F59 _ 3B. 45, F4
        jg      ?_132                                   ; 2F5C _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2F5E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F61 _ 8B. 00
        lea     edx, [eax+1H]                           ; 2F63 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F66 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2F69 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2F6B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F6E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F71 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2F74 _ 8B. 00
        cmp     edx, eax                                ; 2F76 _ 39. C2
        jge     ?_134                                   ; 2F78 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2F7A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2F7D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2F7F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2F82 _ 89. 50, 04
?_134:  mov     eax, dword [ebp+8H]                     ; 2F85 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2F88 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2F8B _ 8D. 4A, 02
        mov     edx, dword [ebp+0CH]                    ; 2F8E _ 8B. 55, 0C
        mov     dword [eax+ecx*8], edx                  ; 2F91 _ 89. 14 C8
        mov     eax, dword [ebp+8H]                     ; 2F94 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 2F97 _ 8B. 55, F4
        lea     ecx, [edx+2H]                           ; 2F9A _ 8D. 4A, 02
        mov     edx, dword [ebp+10H]                    ; 2F9D _ 8B. 55, 10
        mov     dword [eax+ecx*8+4H], edx               ; 2FA0 _ 89. 54 C8, 04
        mov     eax, 0                                  ; 2FA4 _ B8, 00000000
        jmp     ?_136                                   ; 2FA9 _ EB, 29

?_135:  mov     eax, dword [ebp+8H]                     ; 2FAB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2FAE _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2FB1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2FB4 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2FB7 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2FBA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2FBD _ 8B. 40, 08
        mov     edx, eax                                ; 2FC0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2FC2 _ 8B. 45, 10
        add     eax, edx                                ; 2FC5 _ 01. D0
        mov     edx, eax                                ; 2FC7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2FC9 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2FCC _ 89. 50, 08
        mov     eax, 4294967295                         ; 2FCF _ B8, FFFFFFFF
?_136:  add     esp, 16                                 ; 2FD4 _ 83. C4, 10
        pop     ebx                                     ; 2FD7 _ 5B
        pop     ebp                                     ; 2FD8 _ 5D
        ret                                             ; 2FD9 _ C3
; memman_free End of function

memman_alloc_4k:; Function begin
        push    ebp                                     ; 2FDA _ 55
        mov     ebp, esp                                ; 2FDB _ 89. E5
        sub     esp, 24                                 ; 2FDD _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2FE0 _ 8B. 45, 0C
        add     eax, 4095                               ; 2FE3 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2FE8 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2FED _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 2FF0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2FF3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2FF7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2FFA _ 89. 04 24
        call    memman_alloc                            ; 2FFD _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4H], eax                     ; 3002 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3005 _ 8B. 45, FC
        leave                                           ; 3008 _ C9
        ret                                             ; 3009 _ C3
; memman_alloc_4k End of function

memman_free_4k:; Function begin
        push    ebp                                     ; 300A _ 55
        mov     ebp, esp                                ; 300B _ 89. E5
        sub     esp, 28                                 ; 300D _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 3010 _ 8B. 45, 10
        add     eax, 4095                               ; 3013 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 3018 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 301D _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 3020 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 3023 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 3027 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 302A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 302E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3031 _ 89. 04 24
        call    memman_free                             ; 3034 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-4H], eax                     ; 3039 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 303C _ 8B. 45, FC
        leave                                           ; 303F _ C9
        ret                                             ; 3040 _ C3
; memman_free_4k End of function

sheet_control_init:; Function begin
        push    ebp                                     ; 3041 _ 55
        mov     ebp, esp                                ; 3042 _ 89. E5
        sub     esp, 40                                 ; 3044 _ 83. EC, 28
        mov     dword [esp+4H], 9236                    ; 3047 _ C7. 44 24, 04, 00002414
        mov     eax, dword [ebp+8H]                     ; 304F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3052 _ 89. 04 24
        call    memman_alloc_4k                         ; 3055 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 305A _ 89. 45, F4
        cmp     dword [ebp-0CH], 0                      ; 305D _ 83. 7D, F4, 00
        jnz     ?_137                                   ; 3061 _ 75, 24
        mov     eax, dword [ebp-0CH]                    ; 3063 _ 8B. 45, F4
        mov     dword [esp+8H], 9236                    ; 3066 _ C7. 44 24, 08, 00002414
        mov     dword [esp+4H], eax                     ; 306E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3072 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3075 _ 89. 04 24
        call    memman_free_4k                          ; 3078 _ E8, FFFFFFFC(rel)
        mov     eax, 0                                  ; 307D _ B8, 00000000
        jmp     ?_141                                   ; 3082 _ E9, 0000009D

?_137:  mov     eax, dword [ebp-0CH]                    ; 3087 _ 8B. 45, F4
        mov     edx, dword [ebp+0CH]                    ; 308A _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 308D _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 308F _ 8B. 45, F4
        mov     edx, dword [ebp+10H]                    ; 3092 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 3095 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 3098 _ 8B. 45, F4
        mov     edx, dword [ebp+14H]                    ; 309B _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 309E _ 89. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 30A1 _ 8B. 45, F4
        mov     dword [eax+0CH], -1                     ; 30A4 _ C7. 40, 0C, FFFFFFFF
        mov     dword [ebp-10H], 0                      ; 30AB _ C7. 45, F0, 00000000
        jmp     ?_139                                   ; 30B2 _ EB, 1B

?_138:  mov     eax, dword [ebp-0CH]                    ; 30B4 _ 8B. 45, F4
        mov     edx, dword [ebp-10H]                    ; 30B7 _ 8B. 55, F0
        add     edx, 33                                 ; 30BA _ 83. C2, 21
        shl     edx, 5                                  ; 30BD _ C1. E2, 05
        add     eax, edx                                ; 30C0 _ 01. D0
        add     eax, 16                                 ; 30C2 _ 83. C0, 10
        mov     dword [eax], 0                          ; 30C5 _ C7. 00, 00000000
        add     dword [ebp-10H], 1                      ; 30CB _ 83. 45, F0, 01
?_139:  cmp     dword [ebp-10H], 255                    ; 30CF _ 81. 7D, F0, 000000FF
        jle     ?_138                                   ; 30D6 _ 7E, DC
        mov     eax, dword [ebp+10H]                    ; 30D8 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 30DB _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 30DF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 30E3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 30E6 _ 89. 04 24
        call    memman_alloc_4k                         ; 30E9 _ E8, FFFFFFFC(rel)
        mov     edx, eax                                ; 30EE _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 30F0 _ 8B. 45, F4
        mov     dword [eax+10H], edx                    ; 30F3 _ 89. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 30F6 _ 8B. 45, F4
        mov     eax, dword [eax+10H]                    ; 30F9 _ 8B. 40, 10
        test    eax, eax                                ; 30FC _ 85. C0
        jnz     ?_140                                   ; 30FE _ 75, 21
        mov     eax, dword [ebp-0CH]                    ; 3100 _ 8B. 45, F4
        mov     dword [esp+8H], 9236                    ; 3103 _ C7. 44 24, 08, 00002414
        mov     dword [esp+4H], eax                     ; 310B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 310F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3112 _ 89. 04 24
        call    memman_free_4k                          ; 3115 _ E8, FFFFFFFC(rel)
        mov     eax, 0                                  ; 311A _ B8, 00000000
        jmp     ?_141                                   ; 311F _ EB, 03

?_140:  mov     eax, dword [ebp-0CH]                    ; 3121 _ 8B. 45, F4
?_141:  leave                                           ; 3124 _ C9
        ret                                             ; 3125 _ C3
; sheet_control_init End of function

sheet_alloc:; Function begin
        push    ebp                                     ; 3126 _ 55
        mov     ebp, esp                                ; 3127 _ 89. E5
        sub     esp, 16                                 ; 3129 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 312C _ C7. 45, F8, 00000000
        jmp     ?_144                                   ; 3133 _ EB, 5B

?_142:  mov     eax, dword [ebp+8H]                     ; 3135 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3138 _ 8B. 55, F8
        add     edx, 33                                 ; 313B _ 83. C2, 21
        shl     edx, 5                                  ; 313E _ C1. E2, 05
        add     eax, edx                                ; 3141 _ 01. D0
        add     eax, 16                                 ; 3143 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 3146 _ 8B. 00
        test    eax, eax                                ; 3148 _ 85. C0
        jnz     ?_143                                   ; 314A _ 75, 40
        mov     eax, dword [ebp-8H]                     ; 314C _ 8B. 45, F8
        shl     eax, 5                                  ; 314F _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 3152 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 3158 _ 8B. 45, 08
        add     eax, edx                                ; 315B _ 01. D0
        add     eax, 4                                  ; 315D _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 3160 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3163 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 3166 _ 8B. 55, F8
        lea     ecx, [edx+4H]                           ; 3169 _ 8D. 4A, 04
        mov     edx, dword [ebp-4H]                     ; 316C _ 8B. 55, FC
        mov     dword [eax+ecx*4+4H], edx               ; 316F _ 89. 54 88, 04
        mov     eax, dword [ebp-4H]                     ; 3173 _ 8B. 45, FC
        mov     dword [eax+1CH], 1                      ; 3176 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-4H]                     ; 317D _ 8B. 45, FC
        mov     dword [eax+18H], -1                     ; 3180 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-4H]                     ; 3187 _ 8B. 45, FC
        jmp     ?_145                                   ; 318A _ EB, 12

?_143:  add     dword [ebp-8H], 1                       ; 318C _ 83. 45, F8, 01
?_144:  cmp     dword [ebp-8H], 255                     ; 3190 _ 81. 7D, F8, 000000FF
        jle     ?_142                                   ; 3197 _ 7E, 9C
        mov     eax, 0                                  ; 3199 _ B8, 00000000
?_145:  leave                                           ; 319E _ C9
        ret                                             ; 319F _ C3
; sheet_alloc End of function

sheet_setbuf:; Function begin
        push    ebp                                     ; 31A0 _ 55
        mov     ebp, esp                                ; 31A1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 31A3 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 31A6 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 31A9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 31AB _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 31AE _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 31B1 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 31B4 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 31B7 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 31BA _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 31BD _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 31C0 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 31C3 _ 89. 50, 14
        pop     ebp                                     ; 31C6 _ 5D
        ret                                             ; 31C7 _ C3
; sheet_setbuf End of function

sheet_updown:; Function begin
        push    ebp                                     ; 31C8 _ 55
        mov     ebp, esp                                ; 31C9 _ 89. E5
        push    esi                                     ; 31CB _ 56
        push    ebx                                     ; 31CC _ 53
        sub     esp, 48                                 ; 31CD _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 31D0 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 31D3 _ 8B. 40, 18
        mov     dword [ebp-0CH], eax                    ; 31D6 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 31D9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31DC _ 8B. 40, 0C
        add     eax, 1                                  ; 31DF _ 83. C0, 01
        cmp     eax, dword [ebp+10H]                    ; 31E2 _ 3B. 45, 10
        jge     ?_146                                   ; 31E5 _ 7D, 0C
        mov     eax, dword [ebp+8H]                     ; 31E7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 31EA _ 8B. 40, 0C
        add     eax, 1                                  ; 31ED _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 31F0 _ 89. 45, 10
?_146:  cmp     dword [ebp+10H], -1                     ; 31F3 _ 83. 7D, 10, FF
        jge     ?_147                                   ; 31F7 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 31F9 _ C7. 45, 10, FFFFFFFF
?_147:  mov     eax, dword [ebp+0CH]                    ; 3200 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3203 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 3206 _ 89. 50, 18
        mov     eax, dword [ebp-0CH]                    ; 3209 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 320C _ 3B. 45, 10
        jle     ?_154                                   ; 320F _ 0F 8E, 00000201
        cmp     dword [ebp+10H], 0                      ; 3215 _ 83. 7D, 10, 00
        js      ?_150                                   ; 3219 _ 0F 88, 000000F7
        mov     eax, dword [ebp-0CH]                    ; 321F _ 8B. 45, F4
        mov     dword [ebp-10H], eax                    ; 3222 _ 89. 45, F0
        jmp     ?_149                                   ; 3225 _ EB, 34

?_148:  mov     eax, dword [ebp-10H]                    ; 3227 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 322A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 322D _ 8B. 45, 08
        add     edx, 4                                  ; 3230 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 3233 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 3237 _ 8B. 45, 08
        mov     ecx, dword [ebp-10H]                    ; 323A _ 8B. 4D, F0
        add     ecx, 4                                  ; 323D _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3240 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 3244 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 3247 _ 8B. 55, F0
        add     edx, 4                                  ; 324A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 324D _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 3251 _ 8B. 55, F0
        mov     dword [eax+18H], edx                    ; 3254 _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 3257 _ 83. 6D, F0, 01
?_149:  mov     eax, dword [ebp-10H]                    ; 325B _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 325E _ 3B. 45, 10
        jg      ?_148                                   ; 3261 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 3263 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3266 _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 3269 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 326C _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 326F _ 89. 54 88, 04
        mov     eax, dword [ebp+10H]                    ; 3273 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 3276 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 3279 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 327C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 327F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3282 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3285 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3288 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 328B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 328E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3291 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3294 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3297 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 329A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 329D _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 32A0 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 32A3 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 32A7 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 32AB _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 32AF _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 32B3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 32B7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 32BA _ 89. 04 24
        call    sheet_refresh_map                       ; 32BD _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 32C2 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 32C5 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 32C8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 32CB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32CE _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 32D1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 32D4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 32D7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 32DA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 32DD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 32E0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 32E3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 32E6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 32E9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 32EC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 32EF _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 32F2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 32F6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 32FA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 32FE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3302 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3306 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3309 _ 89. 04 24
        call    sheet_refresh_local                     ; 330C _ E8, FFFFFFFC(rel)
        jmp     ?_161                                   ; 3311 _ E9, 0000026C

?_150:  mov     eax, dword [ebp+8H]                     ; 3316 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3319 _ 8B. 40, 0C
        cmp     eax, dword [ebp-0CH]                    ; 331C _ 3B. 45, F4
        jle     ?_153                                   ; 331F _ 7E, 47
        mov     eax, dword [ebp-0CH]                    ; 3321 _ 8B. 45, F4
        mov     dword [ebp-10H], eax                    ; 3324 _ 89. 45, F0
        jmp     ?_152                                   ; 3327 _ EB, 34

?_151:  mov     eax, dword [ebp-10H]                    ; 3329 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 332C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 332F _ 8B. 45, 08
        add     edx, 4                                  ; 3332 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 3335 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 3339 _ 8B. 45, 08
        mov     ecx, dword [ebp-10H]                    ; 333C _ 8B. 4D, F0
        add     ecx, 4                                  ; 333F _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3342 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 3346 _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 3349 _ 8B. 55, F0
        add     edx, 4                                  ; 334C _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 334F _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 3353 _ 8B. 55, F0
        mov     dword [eax+18H], edx                    ; 3356 _ 89. 50, 18
        add     dword [ebp-10H], 1                      ; 3359 _ 83. 45, F0, 01
?_152:  mov     eax, dword [ebp+8H]                     ; 335D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3360 _ 8B. 40, 0C
        cmp     eax, dword [ebp-10H]                    ; 3363 _ 3B. 45, F0
        jg      ?_151                                   ; 3366 _ 7F, C1
?_153:  mov     eax, dword [ebp+8H]                     ; 3368 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 336B _ 8B. 40, 0C
        lea     edx, [eax-1H]                           ; 336E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 3371 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 3374 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 3377 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 337A _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 337D _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 3380 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 3383 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3386 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3389 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 338C _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 338F _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 3392 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 3395 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3398 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 339B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 339E _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 33A1 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 33A9 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 33AD _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 33B1 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 33B5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 33B9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 33BC _ 89. 04 24
        call    sheet_refresh_map                       ; 33BF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+0CH]                    ; 33C4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 33C7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 33CA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 33CD _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 33D0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 33D3 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 33D6 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 33D9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 33DC _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 33DF _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 33E2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 33E5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 33E8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 33EB _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 33EE _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 33F6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 33FA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 33FE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3402 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3406 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3409 _ 89. 04 24
        call    sheet_refresh_local                     ; 340C _ E8, FFFFFFFC(rel)
        jmp     ?_161                                   ; 3411 _ E9, 0000016C

?_154:  mov     eax, dword [ebp-0CH]                    ; 3416 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 3419 _ 3B. 45, 10
        jge     ?_161                                   ; 341C _ 0F 8D, 00000160
        cmp     dword [ebp-0CH], 0                      ; 3422 _ 83. 7D, F4, 00
        js      ?_157                                   ; 3426 _ 78, 56
        mov     eax, dword [ebp-0CH]                    ; 3428 _ 8B. 45, F4
        mov     dword [ebp-10H], eax                    ; 342B _ 89. 45, F0
        jmp     ?_156                                   ; 342E _ EB, 34

?_155:  mov     eax, dword [ebp-10H]                    ; 3430 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 3433 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3436 _ 8B. 45, 08
        add     edx, 4                                  ; 3439 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 343C _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 3440 _ 8B. 45, 08
        mov     ecx, dword [ebp-10H]                    ; 3443 _ 8B. 4D, F0
        add     ecx, 4                                  ; 3446 _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 3449 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 344D _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 3450 _ 8B. 55, F0
        add     edx, 4                                  ; 3453 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3456 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 345A _ 8B. 55, F0
        mov     dword [eax+18H], edx                    ; 345D _ 89. 50, 18
        add     dword [ebp-10H], 1                      ; 3460 _ 83. 45, F0, 01
?_156:  mov     eax, dword [ebp-10H]                    ; 3464 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 3467 _ 3B. 45, 10
        jl      ?_155                                   ; 346A _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 346C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 346F _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 3472 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 3475 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 3478 _ 89. 54 88, 04
        jmp     ?_160                                   ; 347C _ EB, 6C

?_157:  mov     eax, dword [ebp+8H]                     ; 347E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3481 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 3484 _ 89. 45, F0
        jmp     ?_159                                   ; 3487 _ EB, 3A

?_158:  mov     eax, dword [ebp-10H]                    ; 3489 _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 348C _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 348F _ 8B. 45, 08
        mov     edx, dword [ebp-10H]                    ; 3492 _ 8B. 55, F0
        add     edx, 4                                  ; 3495 _ 83. C2, 04
        mov     edx, dword [eax+edx*4+4H]               ; 3498 _ 8B. 54 90, 04
        mov     eax, dword [ebp+8H]                     ; 349C _ 8B. 45, 08
        add     ecx, 4                                  ; 349F _ 83. C1, 04
        mov     dword [eax+ecx*4+4H], edx               ; 34A2 _ 89. 54 88, 04
        mov     eax, dword [ebp-10H]                    ; 34A6 _ 8B. 45, F0
        lea     edx, [eax+1H]                           ; 34A9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 34AC _ 8B. 45, 08
        add     edx, 4                                  ; 34AF _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 34B2 _ 8B. 44 90, 04
        mov     edx, dword [ebp-10H]                    ; 34B6 _ 8B. 55, F0
        add     edx, 1                                  ; 34B9 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 34BC _ 89. 50, 18
        sub     dword [ebp-10H], 1                      ; 34BF _ 83. 6D, F0, 01
?_159:  mov     eax, dword [ebp-10H]                    ; 34C3 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 34C6 _ 3B. 45, 10
        jge     ?_158                                   ; 34C9 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 34CB _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 34CE _ 8B. 55, 10
        lea     ecx, [edx+4H]                           ; 34D1 _ 8D. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 34D4 _ 8B. 55, 0C
        mov     dword [eax+ecx*4+4H], edx               ; 34D7 _ 89. 54 88, 04
        mov     eax, dword [ebp+8H]                     ; 34DB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 34DE _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 34E1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 34E4 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 34E7 _ 89. 50, 0C
?_160:  mov     eax, dword [ebp+0CH]                    ; 34EA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 34ED _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 34F0 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 34F3 _ 8B. 40, 08
        lea     esi, [edx+eax]                          ; 34F6 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 34F9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 34FC _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 34FF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 3502 _ 8B. 40, 04
        lea     ebx, [edx+eax]                          ; 3505 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3508 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 350B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 350E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3511 _ 8B. 40, 0C
        mov     ecx, dword [ebp+10H]                    ; 3514 _ 8B. 4D, 10
        mov     dword [esp+14H], ecx                    ; 3517 _ 89. 4C 24, 14
        mov     dword [esp+10H], esi                    ; 351B _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 351F _ 89. 5C 24, 0C
        mov     dword [esp+8H], edx                     ; 3523 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3527 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 352B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 352E _ 89. 04 24
        call    sheet_refresh_map                       ; 3531 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+0CH]                    ; 3536 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3539 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 353C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 353F _ 8B. 40, 08
        lea     esi, [edx+eax]                          ; 3542 _ 8D. 34 02
        mov     eax, dword [ebp+0CH]                    ; 3545 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 3548 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 354B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 354E _ 8B. 40, 04
        lea     ebx, [edx+eax]                          ; 3551 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 3554 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 3557 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 355A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 355D _ 8B. 40, 0C
        mov     ecx, dword [ebp+10H]                    ; 3560 _ 8B. 4D, 10
        mov     dword [esp+14H], ecx                    ; 3563 _ 89. 4C 24, 14
        mov     dword [esp+10H], esi                    ; 3567 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 356B _ 89. 5C 24, 0C
        mov     dword [esp+8H], edx                     ; 356F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 3573 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3577 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 357A _ 89. 04 24
        call    sheet_refresh_local                     ; 357D _ E8, FFFFFFFC(rel)
?_161:  add     esp, 48                                 ; 3582 _ 83. C4, 30
        pop     ebx                                     ; 3585 _ 5B
        pop     esi                                     ; 3586 _ 5E
        pop     ebp                                     ; 3587 _ 5D
        ret                                             ; 3588 _ C3
; sheet_updown End of function

sheet_refresh:; Function begin
        push    ebp                                     ; 3589 _ 55
        mov     ebp, esp                                ; 358A _ 89. E5
        push    edi                                     ; 358C _ 57
        push    esi                                     ; 358D _ 56
        push    ebx                                     ; 358E _ 53
        sub     esp, 44                                 ; 358F _ 83. EC, 2C
        mov     eax, dword [ebp+0CH]                    ; 3592 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3595 _ 8B. 40, 18
        test    eax, eax                                ; 3598 _ 85. C0
        js      ?_162                                   ; 359A _ 78, 53
        mov     eax, dword [ebp+0CH]                    ; 359C _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 359F _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 35A2 _ 8B. 55, 0C
        mov     ecx, dword [edx+10H]                    ; 35A5 _ 8B. 4A, 10
        mov     edx, dword [ebp+1CH]                    ; 35A8 _ 8B. 55, 1C
        lea     esi, [ecx+edx]                          ; 35AB _ 8D. 34 11
        mov     edx, dword [ebp+0CH]                    ; 35AE _ 8B. 55, 0C
        mov     ecx, dword [edx+0CH]                    ; 35B1 _ 8B. 4A, 0C
        mov     edx, dword [ebp+18H]                    ; 35B4 _ 8B. 55, 18
        lea     ebx, [ecx+edx]                          ; 35B7 _ 8D. 1C 11
        mov     edx, dword [ebp+0CH]                    ; 35BA _ 8B. 55, 0C
        mov     ecx, dword [edx+10H]                    ; 35BD _ 8B. 4A, 10
        mov     edx, dword [ebp+14H]                    ; 35C0 _ 8B. 55, 14
        add     ecx, edx                                ; 35C3 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 35C5 _ 8B. 55, 0C
        mov     edi, dword [edx+0CH]                    ; 35C8 _ 8B. 7A, 0C
        mov     edx, dword [ebp+10H]                    ; 35CB _ 8B. 55, 10
        add     edx, edi                                ; 35CE _ 01. FA
        mov     dword [esp+14H], eax                    ; 35D0 _ 89. 44 24, 14
        mov     dword [esp+10H], esi                    ; 35D4 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 35D8 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 35DC _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 35E0 _ 89. 54 24, 04
        mov     eax, dword [ebp+8H]                     ; 35E4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 35E7 _ 89. 04 24
        call    sheet_refresh_local                     ; 35EA _ E8, FFFFFFFC(rel)
?_162:  mov     eax, 0                                  ; 35EF _ B8, 00000000
        add     esp, 44                                 ; 35F4 _ 83. C4, 2C
        pop     ebx                                     ; 35F7 _ 5B
        pop     esi                                     ; 35F8 _ 5E
        pop     edi                                     ; 35F9 _ 5F
        pop     ebp                                     ; 35FA _ 5D
        ret                                             ; 35FB _ C3
; sheet_refresh End of function

sheet_slide:; Function begin
        push    ebp                                     ; 35FC _ 55
        mov     ebp, esp                                ; 35FD _ 89. E5
        push    ebx                                     ; 35FF _ 53
        sub     esp, 52                                 ; 3600 _ 83. EC, 34
        mov     eax, dword [ebp+0CH]                    ; 3603 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 3606 _ 8B. 40, 0C
        mov     dword [ebp-10H], eax                    ; 3609 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 360C _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 360F _ 8B. 40, 10
        mov     dword [ebp-0CH], eax                    ; 3612 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 3615 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 3618 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 361B _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 361E _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 3621 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 3624 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 3627 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 362A _ 8B. 40, 18
        test    eax, eax                                ; 362D _ 85. C0
        js      ?_163                                   ; 362F _ 0F 88, 00000100
        mov     eax, dword [ebp+0CH]                    ; 3635 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 3638 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 363B _ 8B. 45, F4
        add     edx, eax                                ; 363E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 3640 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 3643 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 3646 _ 8B. 45, F0
        add     eax, ecx                                ; 3649 _ 01. C8
        mov     dword [esp+14H], 0                      ; 364B _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 3653 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 3657 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 365B _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 365E _ 89. 44 24, 08
        mov     eax, dword [ebp-10H]                    ; 3662 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 3665 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 3669 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 366C _ 89. 04 24
        call    sheet_refresh_map                       ; 366F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+0CH]                    ; 3674 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 3677 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 367A _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 367D _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 3680 _ 8B. 55, 14
        add     ecx, edx                                ; 3683 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 3685 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 3688 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 368B _ 8B. 55, 10
        add     edx, ebx                                ; 368E _ 01. DA
        mov     dword [esp+14H], eax                    ; 3690 _ 89. 44 24, 14
        mov     dword [esp+10H], ecx                    ; 3694 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 3698 _ 89. 54 24, 0C
        mov     eax, dword [ebp+14H]                    ; 369C _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 369F _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 36A3 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 36A6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 36AA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 36AD _ 89. 04 24
        call    sheet_refresh_map                       ; 36B0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+0CH]                    ; 36B5 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 36B8 _ 8B. 50, 08
        mov     eax, dword [ebp-0CH]                    ; 36BB _ 8B. 45, F4
        add     edx, eax                                ; 36BE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 36C0 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 36C3 _ 8B. 48, 04
        mov     eax, dword [ebp-10H]                    ; 36C6 _ 8B. 45, F0
        add     eax, ecx                                ; 36C9 _ 01. C8
        mov     dword [esp+14H], 0                      ; 36CB _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 36D3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 36D7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 36DB _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 36DE _ 89. 44 24, 08
        mov     eax, dword [ebp-10H]                    ; 36E2 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 36E5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 36E9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 36EC _ 89. 04 24
        call    sheet_refresh_local                     ; 36EF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+0CH]                    ; 36F4 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 36F7 _ 8B. 40, 18
        mov     edx, dword [ebp+0CH]                    ; 36FA _ 8B. 55, 0C
        mov     ecx, dword [edx+8H]                     ; 36FD _ 8B. 4A, 08
        mov     edx, dword [ebp+14H]                    ; 3700 _ 8B. 55, 14
        add     ecx, edx                                ; 3703 _ 01. D1
        mov     edx, dword [ebp+0CH]                    ; 3705 _ 8B. 55, 0C
        mov     ebx, dword [edx+4H]                     ; 3708 _ 8B. 5A, 04
        mov     edx, dword [ebp+10H]                    ; 370B _ 8B. 55, 10
        add     edx, ebx                                ; 370E _ 01. DA
        mov     dword [esp+14H], eax                    ; 3710 _ 89. 44 24, 14
        mov     dword [esp+10H], ecx                    ; 3714 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 3718 _ 89. 54 24, 0C
        mov     eax, dword [ebp+14H]                    ; 371C _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 371F _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 3723 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 3726 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 372A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 372D _ 89. 04 24
        call    sheet_refresh_local                     ; 3730 _ E8, FFFFFFFC(rel)
?_163:  add     esp, 52                                 ; 3735 _ 83. C4, 34
        pop     ebx                                     ; 3738 _ 5B
        pop     ebp                                     ; 3739 _ 5D
        ret                                             ; 373A _ C3
; sheet_slide End of function

sheet_refresh_local:; Function begin
        push    ebp                                     ; 373B _ 55
        mov     ebp, esp                                ; 373C _ 89. E5
        sub     esp, 48                                 ; 373E _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 3741 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 3744 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 3746 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 3749 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 374C _ 8B. 40, 10
        mov     dword [ebp-14H], eax                    ; 374F _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 3752 _ 83. 7D, 0C, 00
        jns     ?_164                                   ; 3756 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 3758 _ C7. 45, 0C, 00000000
?_164:  cmp     dword [ebp+10H], 0                      ; 375F _ 83. 7D, 10, 00
        jns     ?_165                                   ; 3763 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 3765 _ C7. 45, 10, 00000000
?_165:  mov     eax, dword [ebp+8H]                     ; 376C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 376F _ 8B. 40, 04
        cmp     eax, dword [ebp+14H]                    ; 3772 _ 3B. 45, 14
        jge     ?_166                                   ; 3775 _ 7D, 09
        mov     eax, dword [ebp+8H]                     ; 3777 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 377A _ 8B. 40, 04
        mov     dword [ebp+14H], eax                    ; 377D _ 89. 45, 14
?_166:  mov     eax, dword [ebp+8H]                     ; 3780 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3783 _ 8B. 40, 08
        cmp     eax, dword [ebp+18H]                    ; 3786 _ 3B. 45, 18
        jge     ?_167                                   ; 3789 _ 7D, 09
        mov     eax, dword [ebp+8H]                     ; 378B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 378E _ 8B. 40, 08
        mov     dword [ebp+18H], eax                    ; 3791 _ 89. 45, 18
?_167:  mov     eax, dword [ebp+1CH]                    ; 3794 _ 8B. 45, 1C
        mov     dword [ebp-24H], eax                    ; 3797 _ 89. 45, DC
        jmp     ?_174                                   ; 379A _ E9, 00000119

?_168:  mov     eax, dword [ebp+8H]                     ; 379F _ 8B. 45, 08
        mov     edx, dword [ebp-24H]                    ; 37A2 _ 8B. 55, DC
        add     edx, 4                                  ; 37A5 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 37A8 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 37AC _ 89. 45, F0
        mov     eax, dword [ebp-10H]                    ; 37AF _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 37B2 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 37B4 _ 89. 45, F4
        mov     edx, dword [ebp-10H]                    ; 37B7 _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 37BA _ 8B. 45, 08
        add     eax, 1044                               ; 37BD _ 05, 00000414
        sub     edx, eax                                ; 37C2 _ 29. C2
        mov     eax, edx                                ; 37C4 _ 89. D0
        sar     eax, 5                                  ; 37C6 _ C1. F8, 05
        mov     byte [ebp-26H], al                      ; 37C9 _ 88. 45, DA
        mov     dword [ebp-1CH], 0                      ; 37CC _ C7. 45, E4, 00000000
        jmp     ?_173                                   ; 37D3 _ E9, 000000CD

?_169:  mov     eax, dword [ebp-10H]                    ; 37D8 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 37DB _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 37DE _ 8B. 45, E4
        add     eax, edx                                ; 37E1 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 37E3 _ 89. 45, F8
        mov     dword [ebp-20H], 0                      ; 37E6 _ C7. 45, E0, 00000000
        jmp     ?_172                                   ; 37ED _ E9, 000000A0

?_170:  mov     eax, dword [ebp-10H]                    ; 37F2 _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 37F5 _ 8B. 50, 0C
        mov     eax, dword [ebp-20H]                    ; 37F8 _ 8B. 45, E0
        add     eax, edx                                ; 37FB _ 01. D0
        mov     dword [ebp-4H], eax                     ; 37FD _ 89. 45, FC
        mov     eax, dword [ebp+0CH]                    ; 3800 _ 8B. 45, 0C
        cmp     eax, dword [ebp-4H]                     ; 3803 _ 3B. 45, FC
        jg      ?_171                                   ; 3806 _ 0F 8F, 00000082
        mov     eax, dword [ebp-4H]                     ; 380C _ 8B. 45, FC
        cmp     eax, dword [ebp+14H]                    ; 380F _ 3B. 45, 14
        jge     ?_171                                   ; 3812 _ 7D, 7A
        mov     eax, dword [ebp+10H]                    ; 3814 _ 8B. 45, 10
        cmp     eax, dword [ebp-8H]                     ; 3817 _ 3B. 45, F8
        jg      ?_171                                   ; 381A _ 7F, 72
        mov     eax, dword [ebp-8H]                     ; 381C _ 8B. 45, F8
        cmp     eax, dword [ebp+18H]                    ; 381F _ 3B. 45, 18
        jge     ?_171                                   ; 3822 _ 7D, 6A
        mov     eax, dword [ebp-10H]                    ; 3824 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3827 _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 382A _ 0F AF. 45, E4
        mov     edx, eax                                ; 382E _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 3830 _ 8B. 45, E0
        add     eax, edx                                ; 3833 _ 01. D0
        mov     edx, eax                                ; 3835 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3837 _ 8B. 45, F4
        add     eax, edx                                ; 383A _ 01. D0
        movzx   eax, byte [eax]                         ; 383C _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 383F _ 88. 45, DB
        movzx   edx, byte [ebp-25H]                     ; 3842 _ 0F B6. 55, DB
        mov     eax, dword [ebp-10H]                    ; 3846 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 3849 _ 8B. 40, 14
        cmp     edx, eax                                ; 384C _ 39. C2
        jz      ?_171                                   ; 384E _ 74, 3E
        mov     eax, dword [ebp+8H]                     ; 3850 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3853 _ 8B. 40, 04
        imul    eax, dword [ebp-8H]                     ; 3856 _ 0F AF. 45, F8
        mov     edx, eax                                ; 385A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 385C _ 8B. 45, FC
        add     eax, edx                                ; 385F _ 01. D0
        mov     edx, eax                                ; 3861 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3863 _ 8B. 45, EC
        add     eax, edx                                ; 3866 _ 01. D0
        movzx   eax, byte [eax]                         ; 3868 _ 0F B6. 00
        cmp     al, byte [ebp-26H]                      ; 386B _ 3A. 45, DA
        jnz     ?_171                                   ; 386E _ 75, 1E
        mov     eax, dword [ebp+8H]                     ; 3870 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3873 _ 8B. 40, 04
        imul    eax, dword [ebp-8H]                     ; 3876 _ 0F AF. 45, F8
        mov     edx, eax                                ; 387A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 387C _ 8B. 45, FC
        add     eax, edx                                ; 387F _ 01. D0
        mov     edx, eax                                ; 3881 _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 3883 _ 8B. 45, E8
        add     edx, eax                                ; 3886 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 3888 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 388C _ 88. 02
?_171:  add     dword [ebp-20H], 1                      ; 388E _ 83. 45, E0, 01
?_172:  mov     eax, dword [ebp-10H]                    ; 3892 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3895 _ 8B. 40, 04
        cmp     eax, dword [ebp-20H]                    ; 3898 _ 3B. 45, E0
        jg      ?_170                                   ; 389B _ 0F 8F, FFFFFF51
        add     dword [ebp-1CH], 1                      ; 38A1 _ 83. 45, E4, 01
?_173:  mov     eax, dword [ebp-10H]                    ; 38A5 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 38A8 _ 8B. 40, 08
        cmp     eax, dword [ebp-1CH]                    ; 38AB _ 3B. 45, E4
        jg      ?_169                                   ; 38AE _ 0F 8F, FFFFFF24
        add     dword [ebp-24H], 1                      ; 38B4 _ 83. 45, DC, 01
?_174:  mov     eax, dword [ebp+8H]                     ; 38B8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 38BB _ 8B. 40, 0C
        cmp     eax, dword [ebp-24H]                    ; 38BE _ 3B. 45, DC
        jge     ?_168                                   ; 38C1 _ 0F 8D, FFFFFED8
        leave                                           ; 38C7 _ C9
        ret                                             ; 38C8 _ C3
; sheet_refresh_local End of function

sheet_refresh_map:; Function begin
        push    ebp                                     ; 38C9 _ 55
        mov     ebp, esp                                ; 38CA _ 89. E5
        sub     esp, 64                                 ; 38CC _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 38CF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 38D2 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 38D4 _ 89. 45, E8
        mov     eax, dword [ebp+8H]                     ; 38D7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 38DA _ 8B. 40, 10
        mov     dword [ebp-14H], eax                    ; 38DD _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 38E0 _ 83. 7D, 0C, 00
        jns     ?_175                                   ; 38E4 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 38E6 _ C7. 45, 0C, 00000000
?_175:  cmp     dword [ebp+10H], 0                      ; 38ED _ 83. 7D, 10, 00
        jns     ?_176                                   ; 38F1 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 38F3 _ C7. 45, 10, 00000000
?_176:  mov     eax, dword [ebp+8H]                     ; 38FA _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 38FD _ 8B. 40, 04
        cmp     eax, dword [ebp+14H]                    ; 3900 _ 3B. 45, 14
        jge     ?_177                                   ; 3903 _ 7D, 09
        mov     eax, dword [ebp+8H]                     ; 3905 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3908 _ 8B. 40, 04
        mov     dword [ebp+14H], eax                    ; 390B _ 89. 45, 14
?_177:  mov     eax, dword [ebp+8H]                     ; 390E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3911 _ 8B. 40, 08
        cmp     eax, dword [ebp+18H]                    ; 3914 _ 3B. 45, 18
        jge     ?_178                                   ; 3917 _ 7D, 09
        mov     eax, dword [ebp+8H]                     ; 3919 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 391C _ 8B. 40, 08
        mov     dword [ebp+18H], eax                    ; 391F _ 89. 45, 18
?_178:  mov     eax, dword [ebp+1CH]                    ; 3922 _ 8B. 45, 1C
        mov     dword [ebp-34H], eax                    ; 3925 _ 89. 45, CC
        jmp     ?_189                                   ; 3928 _ E9, 00000141

?_179:  mov     eax, dword [ebp+8H]                     ; 392D _ 8B. 45, 08
        mov     edx, dword [ebp-34H]                    ; 3930 _ 8B. 55, CC
        add     edx, 4                                  ; 3933 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 3936 _ 8B. 44 90, 04
        mov     dword [ebp-10H], eax                    ; 393A _ 89. 45, F0
        mov     edx, dword [ebp-10H]                    ; 393D _ 8B. 55, F0
        mov     eax, dword [ebp+8H]                     ; 3940 _ 8B. 45, 08
        add     eax, 1044                               ; 3943 _ 05, 00000414
        sub     edx, eax                                ; 3948 _ 29. C2
        mov     eax, edx                                ; 394A _ 89. D0
        sar     eax, 5                                  ; 394C _ C1. F8, 05
        mov     byte [ebp-35H], al                      ; 394F _ 88. 45, CB
        mov     eax, dword [ebp-10H]                    ; 3952 _ 8B. 45, F0
        mov     eax, dword [eax]                        ; 3955 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 3957 _ 89. 45, F4
        mov     eax, dword [ebp-10H]                    ; 395A _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 395D _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 3960 _ 8B. 55, 0C
        sub     edx, eax                                ; 3963 _ 29. C2
        mov     eax, edx                                ; 3965 _ 89. D0
        mov     dword [ebp-30H], eax                    ; 3967 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 396A _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 396D _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 3970 _ 8B. 55, 10
        sub     edx, eax                                ; 3973 _ 29. C2
        mov     eax, edx                                ; 3975 _ 89. D0
        mov     dword [ebp-2CH], eax                    ; 3977 _ 89. 45, D4
        mov     eax, dword [ebp-10H]                    ; 397A _ 8B. 45, F0
        mov     eax, dword [eax+0CH]                    ; 397D _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 3980 _ 8B. 55, 14
        sub     edx, eax                                ; 3983 _ 29. C2
        mov     eax, edx                                ; 3985 _ 89. D0
        mov     dword [ebp-28H], eax                    ; 3987 _ 89. 45, D8
        mov     eax, dword [ebp-10H]                    ; 398A _ 8B. 45, F0
        mov     eax, dword [eax+10H]                    ; 398D _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 3990 _ 8B. 55, 18
        sub     edx, eax                                ; 3993 _ 29. C2
        mov     eax, edx                                ; 3995 _ 89. D0
        mov     dword [ebp-24H], eax                    ; 3997 _ 89. 45, DC
        cmp     dword [ebp-30H], 0                      ; 399A _ 83. 7D, D0, 00
        jns     ?_180                                   ; 399E _ 79, 07
        mov     dword [ebp-30H], 0                      ; 39A0 _ C7. 45, D0, 00000000
?_180:  cmp     dword [ebp-2CH], 0                      ; 39A7 _ 83. 7D, D4, 00
        jns     ?_181                                   ; 39AB _ 79, 07
        mov     dword [ebp-2CH], 0                      ; 39AD _ C7. 45, D4, 00000000
?_181:  mov     eax, dword [ebp-10H]                    ; 39B4 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 39B7 _ 8B. 40, 04
        cmp     eax, dword [ebp-28H]                    ; 39BA _ 3B. 45, D8
        jge     ?_182                                   ; 39BD _ 7D, 09
        mov     eax, dword [ebp-10H]                    ; 39BF _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 39C2 _ 8B. 40, 04
        mov     dword [ebp-28H], eax                    ; 39C5 _ 89. 45, D8
?_182:  mov     eax, dword [ebp-10H]                    ; 39C8 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 39CB _ 8B. 40, 08
        cmp     eax, dword [ebp-24H]                    ; 39CE _ 3B. 45, DC
        jge     ?_183                                   ; 39D1 _ 7D, 09
        mov     eax, dword [ebp-10H]                    ; 39D3 _ 8B. 45, F0
        mov     eax, dword [eax+8H]                     ; 39D6 _ 8B. 40, 08
        mov     dword [ebp-24H], eax                    ; 39D9 _ 89. 45, DC
?_183:  mov     eax, dword [ebp-2CH]                    ; 39DC _ 8B. 45, D4
        mov     dword [ebp-1CH], eax                    ; 39DF _ 89. 45, E4
        jmp     ?_188                                   ; 39E2 _ EB, 7A

?_184:  mov     eax, dword [ebp-10H]                    ; 39E4 _ 8B. 45, F0
        mov     edx, dword [eax+10H]                    ; 39E7 _ 8B. 50, 10
        mov     eax, dword [ebp-1CH]                    ; 39EA _ 8B. 45, E4
        add     eax, edx                                ; 39ED _ 01. D0
        mov     dword [ebp-8H], eax                     ; 39EF _ 89. 45, F8
        mov     eax, dword [ebp-30H]                    ; 39F2 _ 8B. 45, D0
        mov     dword [ebp-20H], eax                    ; 39F5 _ 89. 45, E0
        jmp     ?_187                                   ; 39F8 _ EB, 58

?_185:  mov     eax, dword [ebp-10H]                    ; 39FA _ 8B. 45, F0
        mov     edx, dword [eax+0CH]                    ; 39FD _ 8B. 50, 0C
        mov     eax, dword [ebp-20H]                    ; 3A00 _ 8B. 45, E0
        add     eax, edx                                ; 3A03 _ 01. D0
        mov     dword [ebp-4H], eax                     ; 3A05 _ 89. 45, FC
        mov     eax, dword [ebp-10H]                    ; 3A08 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 3A0B _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 3A0E _ 0F AF. 45, E4
        mov     edx, eax                                ; 3A12 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 3A14 _ 8B. 45, E0
        add     eax, edx                                ; 3A17 _ 01. D0
        mov     edx, eax                                ; 3A19 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 3A1B _ 8B. 45, F4
        add     eax, edx                                ; 3A1E _ 01. D0
        movzx   eax, byte [eax]                         ; 3A20 _ 0F B6. 00
        movzx   edx, al                                 ; 3A23 _ 0F B6. D0
        mov     eax, dword [ebp-10H]                    ; 3A26 _ 8B. 45, F0
        mov     eax, dword [eax+14H]                    ; 3A29 _ 8B. 40, 14
        cmp     edx, eax                                ; 3A2C _ 39. C2
        jz      ?_186                                   ; 3A2E _ 74, 1E
        mov     eax, dword [ebp+8H]                     ; 3A30 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 3A33 _ 8B. 40, 04
        imul    eax, dword [ebp-8H]                     ; 3A36 _ 0F AF. 45, F8
        mov     edx, eax                                ; 3A3A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3A3C _ 8B. 45, FC
        add     eax, edx                                ; 3A3F _ 01. D0
        mov     edx, eax                                ; 3A41 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 3A43 _ 8B. 45, EC
        add     edx, eax                                ; 3A46 _ 01. C2
        movzx   eax, byte [ebp-35H]                     ; 3A48 _ 0F B6. 45, CB
        mov     byte [edx], al                          ; 3A4C _ 88. 02
?_186:  add     dword [ebp-20H], 1                      ; 3A4E _ 83. 45, E0, 01
?_187:  mov     eax, dword [ebp-20H]                    ; 3A52 _ 8B. 45, E0
        cmp     eax, dword [ebp-28H]                    ; 3A55 _ 3B. 45, D8
        jl      ?_185                                   ; 3A58 _ 7C, A0
        add     dword [ebp-1CH], 1                      ; 3A5A _ 83. 45, E4, 01
?_188:  mov     eax, dword [ebp-1CH]                    ; 3A5E _ 8B. 45, E4
        cmp     eax, dword [ebp-24H]                    ; 3A61 _ 3B. 45, DC
        jl      ?_184                                   ; 3A64 _ 0F 8C, FFFFFF7A
        add     dword [ebp-34H], 1                      ; 3A6A _ 83. 45, CC, 01
?_189:  mov     eax, dword [ebp+8H]                     ; 3A6E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3A71 _ 8B. 40, 0C
        cmp     eax, dword [ebp-34H]                    ; 3A74 _ 3B. 45, CC
        jge     ?_179                                   ; 3A77 _ 0F 8D, FFFFFEB0
        leave                                           ; 3A7D _ C9
        ret                                             ; 3A7E _ C3
; sheet_refresh_map End of function

init_time_port:; Function begin
        push    ebp                                     ; 3A7F _ 55
        mov     ebp, esp                                ; 3A80 _ 89. E5
        sub     esp, 40                                 ; 3A82 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 3A85 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 3A8D _ C7. 04 24, 00000043
        call    io_out8                                 ; 3A94 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 156                     ; 3A99 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 3AA1 _ C7. 04 24, 00000040
        call    io_out8                                 ; 3AA8 _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 46                      ; 3AAD _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 3AB5 _ C7. 04 24, 00000040
        call    io_out8                                 ; 3ABC _ E8, FFFFFFFC(rel)
        mov     dword [timer_control], 0                ; 3AC1 _ C7. 05, 00000300(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 3ACB _ C7. 45, F4, 00000000
        jmp     ?_191                                   ; 3AD2 _ EB, 28

?_190:  mov     eax, dword [ebp-0CH]                    ; 3AD4 _ 8B. 45, F4
        shl     eax, 4                                  ; 3AD7 _ C1. E0, 04
        add     eax, timer_control                      ; 3ADA _ 05, 00000300(d)
        mov     dword [eax+8H], 0                       ; 3ADF _ C7. 40, 08, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3AE6 _ 8B. 45, F4
        shl     eax, 4                                  ; 3AE9 _ C1. E0, 04
        add     eax, timer_control                      ; 3AEC _ 05, 00000300(d)
        mov     dword [eax+0CH], 0                      ; 3AF1 _ C7. 40, 0C, 00000000
        add     dword [ebp-0CH], 1                      ; 3AF8 _ 83. 45, F4, 01
?_191:  cmp     dword [ebp-0CH], 499                    ; 3AFC _ 81. 7D, F4, 000001F3
        jle     ?_190                                   ; 3B03 _ 7E, CF
        leave                                           ; 3B05 _ C9
        ret                                             ; 3B06 _ C3
; init_time_port End of function

get_timer_control:; Function begin
        push    ebp                                     ; 3B07 _ 55
        mov     ebp, esp                                ; 3B08 _ 89. E5
        mov     eax, timer_control                      ; 3B0A _ B8, 00000300(d)
        pop     ebp                                     ; 3B0F _ 5D
        ret                                             ; 3B10 _ C3
; get_timer_control End of function

timer_alloc:; Function begin
        push    ebp                                     ; 3B11 _ 55
        mov     ebp, esp                                ; 3B12 _ 89. E5
        sub     esp, 16                                 ; 3B14 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3B17 _ C7. 45, FC, 00000000
        jmp     ?_194                                   ; 3B1E _ EB, 26

?_192:  mov     eax, dword [ebp-4H]                     ; 3B20 _ 8B. 45, FC
        shl     eax, 4                                  ; 3B23 _ C1. E0, 04
        add     eax, timer_control                      ; 3B26 _ 05, 00000300(d)
        mov     eax, dword [eax+8H]                     ; 3B2B _ 8B. 40, 08
        test    eax, eax                                ; 3B2E _ 85. C0
        jnz     ?_193                                   ; 3B30 _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 3B32 _ 8B. 45, FC
        shl     eax, 4                                  ; 3B35 _ C1. E0, 04
        add     eax, timer_control                      ; 3B38 _ 05, 00000300(d)
        add     eax, 4                                  ; 3B3D _ 83. C0, 04
        jmp     ?_195                                   ; 3B40 _ EB, 0D

?_193:  add     dword [ebp-4H], 1                       ; 3B42 _ 83. 45, FC, 01
?_194:  cmp     dword [ebp-4H], 499                     ; 3B46 _ 81. 7D, FC, 000001F3
        jle     ?_192                                   ; 3B4D _ 7E, D1
?_195:  leave                                           ; 3B4F _ C9
        ret                                             ; 3B50 _ C3
; timer_alloc End of function

timer_free:; Function begin
        push    ebp                                     ; 3B51 _ 55
        mov     ebp, esp                                ; 3B52 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3B54 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3B57 _ C7. 40, 04, 00000000
        pop     ebp                                     ; 3B5E _ 5D
        ret                                             ; 3B5F _ C3
; timer_free End of function

timer_init:; Function begin
        push    ebp                                     ; 3B60 _ 55
        mov     ebp, esp                                ; 3B61 _ 89. E5
        sub     esp, 4                                  ; 3B63 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3B66 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3B69 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3B6C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3B6F _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3B72 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3B75 _ 8B. 45, 08
        movzx   edx, byte [ebp-4H]                      ; 3B78 _ 0F B6. 55, FC
        mov     byte [eax+0CH], dl                      ; 3B7C _ 88. 50, 0C
        leave                                           ; 3B7F _ C9
        ret                                             ; 3B80 _ C3
; timer_init End of function

timer_settime:; Function begin
        push    ebp                                     ; 3B81 _ 55
        mov     ebp, esp                                ; 3B82 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3B84 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3B87 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 3B8A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 3B8C _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3B8F _ C7. 40, 04, 00000002
        pop     ebp                                     ; 3B96 _ 5D
        ret                                             ; 3B97 _ C3
; timer_settime End of function

intHandlerTimer:; Function begin
        push    ebp                                     ; 3B98 _ 55
        mov     ebp, esp                                ; 3B99 _ 89. E5
        sub     esp, 40                                 ; 3B9B _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 3B9E _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3BA6 _ C7. 04 24, 00000020
        call    io_out8                                 ; 3BAD _ E8, FFFFFFFC(rel)
        mov     eax, dword [timer_control]              ; 3BB2 _ A1, 00000300(d)
        add     eax, 1                                  ; 3BB7 _ 83. C0, 01
        mov     dword [timer_control], eax              ; 3BBA _ A3, 00000300(d)
        mov     byte [ebp-0DH], 0                       ; 3BBF _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 3BC3 _ C7. 45, F4, 00000000
        jmp     ?_199                                   ; 3BCA _ E9, 000000B0

?_196:  mov     eax, dword [ebp-0CH]                    ; 3BCF _ 8B. 45, F4
        shl     eax, 4                                  ; 3BD2 _ C1. E0, 04
        add     eax, timer_control                      ; 3BD5 _ 05, 00000300(d)
        mov     eax, dword [eax+8H]                     ; 3BDA _ 8B. 40, 08
        cmp     eax, 2                                  ; 3BDD _ 83. F8, 02
        jne     ?_197                                   ; 3BE0 _ 0F 85, 0000008A
        mov     eax, dword [ebp-0CH]                    ; 3BE6 _ 8B. 45, F4
        shl     eax, 4                                  ; 3BE9 _ C1. E0, 04
        add     eax, timer_control                      ; 3BEC _ 05, 00000300(d)
        mov     eax, dword [eax+4H]                     ; 3BF1 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 3BF4 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 3BF7 _ 8B. 45, F4
        shl     eax, 4                                  ; 3BFA _ C1. E0, 04
        add     eax, timer_control                      ; 3BFD _ 05, 00000300(d)
        mov     dword [eax+4H], edx                     ; 3C02 _ 89. 50, 04
        mov     eax, dword [ebp-0CH]                    ; 3C05 _ 8B. 45, F4
        shl     eax, 4                                  ; 3C08 _ C1. E0, 04
        add     eax, timer_control                      ; 3C0B _ 05, 00000300(d)
        mov     eax, dword [eax+4H]                     ; 3C10 _ 8B. 40, 04
        test    eax, eax                                ; 3C13 _ 85. C0
        jnz     ?_197                                   ; 3C15 _ 75, 59
        mov     eax, dword [ebp-0CH]                    ; 3C17 _ 8B. 45, F4
        shl     eax, 4                                  ; 3C1A _ C1. E0, 04
        add     eax, timer_control                      ; 3C1D _ 05, 00000300(d)
        mov     dword [eax+8H], 1                       ; 3C22 _ C7. 40, 08, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3C29 _ 8B. 45, F4
        shl     eax, 4                                  ; 3C2C _ C1. E0, 04
        add     eax, timer_control                      ; 3C2F _ 05, 00000300(d)
        movzx   eax, byte [eax+10H]                     ; 3C34 _ 0F B6. 40, 10
        movzx   edx, al                                 ; 3C38 _ 0F B6. D0
        mov     eax, dword [ebp-0CH]                    ; 3C3B _ 8B. 45, F4
        shl     eax, 4                                  ; 3C3E _ C1. E0, 04
        add     eax, timer_control                      ; 3C41 _ 05, 00000300(d)
        mov     eax, dword [eax+0CH]                    ; 3C46 _ 8B. 40, 0C
        mov     dword [esp+4H], edx                     ; 3C49 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3C4D _ 89. 04 24
        call    fifo8_put                               ; 3C50 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 3C55 _ 8B. 45, F4
        shl     eax, 4                                  ; 3C58 _ C1. E0, 04
        add     eax, timer_control                      ; 3C5B _ 05, 00000300(d)
        lea     edx, [eax+4H]                           ; 3C60 _ 8D. 50, 04
        mov     eax, dword [task_timer]                 ; 3C63 _ A1, 00000000(d)
        cmp     edx, eax                                ; 3C68 _ 39. C2
        jnz     ?_197                                   ; 3C6A _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 3C6C _ C6. 45, F3, 01
?_197:  cmp     byte [ebp-0DH], 0                       ; 3C70 _ 80. 7D, F3, 00
        jz      ?_198                                   ; 3C74 _ 74, 05
        call    task_switch                             ; 3C76 _ E8, FFFFFFFC(rel)
?_198:  add     dword [ebp-0CH], 1                      ; 3C7B _ 83. 45, F4, 01
?_199:  cmp     dword [ebp-0CH], 499                    ; 3C7F _ 81. 7D, F4, 000001F3
        jle     ?_196                                   ; 3C86 _ 0F 8E, FFFFFF43
        leave                                           ; 3C8C _ C9
        ret                                             ; 3C8D _ C3
; intHandlerTimer End of function

segment_descriptor:; Function begin
        push    ebp                                     ; 3C8E _ 55
        mov     ebp, esp                                ; 3C8F _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3C91 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_200                                   ; 3C98 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3C9A _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3CA1 _ 8B. 45, 0C
        shr     eax, 12                                 ; 3CA4 _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 3CA7 _ 89. 45, 0C
?_200:  mov     eax, dword [ebp+0CH]                    ; 3CAA _ 8B. 45, 0C
        mov     edx, eax                                ; 3CAD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CAF _ 8B. 45, 08
        mov     word [eax], dx                          ; 3CB2 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 3CB5 _ 8B. 45, 10
        mov     edx, eax                                ; 3CB8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CBA _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3CBD _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 3CC1 _ 8B. 45, 10
        sar     eax, 16                                 ; 3CC4 _ C1. F8, 10
        mov     edx, eax                                ; 3CC7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CC9 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3CCC _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3CCF _ 8B. 45, 14
        mov     edx, eax                                ; 3CD2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CD4 _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3CD7 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3CDA _ 8B. 45, 0C
        shr     eax, 16                                 ; 3CDD _ C1. E8, 10
        and     eax, 0FH                                ; 3CE0 _ 83. E0, 0F
        mov     edx, eax                                ; 3CE3 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 3CE5 _ 8B. 45, 14
        sar     eax, 8                                  ; 3CE8 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3CEB _ 83. E0, F0
        or      eax, edx                                ; 3CEE _ 09. D0
        mov     edx, eax                                ; 3CF0 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3CF2 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 3CF5 _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3CF8 _ 8B. 45, 10
        shr     eax, 24                                 ; 3CFB _ C1. E8, 18
        mov     edx, eax                                ; 3CFE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3D00 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 3D03 _ 88. 50, 07
        pop     ebp                                     ; 3D06 _ 5D
        ret                                             ; 3D07 _ C3
; segment_descriptor End of function

init_task_level:; Function begin
        push    ebp                                     ; 3D08 _ 55
        mov     ebp, esp                                ; 3D09 _ 89. E5
        sub     esp, 16                                 ; 3D0B _ 83. EC, 10
        mov     ecx, dword [task_control]               ; 3D0E _ 8B. 0D, 00002248(d)
        mov     edx, dword [ebp+8H]                     ; 3D14 _ 8B. 55, 08
        mov     eax, edx                                ; 3D17 _ 89. D0
        shl     eax, 2                                  ; 3D19 _ C1. E0, 02
        add     eax, edx                                ; 3D1C _ 01. D0
        shl     eax, 2                                  ; 3D1E _ C1. E0, 02
        add     eax, ecx                                ; 3D21 _ 01. C8
        add     eax, 8                                  ; 3D23 _ 83. C0, 08
        mov     dword [eax], 0                          ; 3D26 _ C7. 00, 00000000
        mov     ecx, dword [task_control]               ; 3D2C _ 8B. 0D, 00002248(d)
        mov     edx, dword [ebp+8H]                     ; 3D32 _ 8B. 55, 08
        mov     eax, edx                                ; 3D35 _ 89. D0
        shl     eax, 2                                  ; 3D37 _ C1. E0, 02
        add     eax, edx                                ; 3D3A _ 01. D0
        shl     eax, 2                                  ; 3D3C _ C1. E0, 02
        add     eax, ecx                                ; 3D3F _ 01. C8
        add     eax, 12                                 ; 3D41 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 3D44 _ C7. 00, 00000000
        mov     dword [ebp-4H], 0                       ; 3D4A _ C7. 45, FC, 00000000
        jmp     ?_202                                   ; 3D51 _ EB, 21

?_201:  mov     ecx, dword [task_control]               ; 3D53 _ 8B. 0D, 00002248(d)
        mov     edx, dword [ebp-4H]                     ; 3D59 _ 8B. 55, FC
        mov     eax, edx                                ; 3D5C _ 89. D0
        add     eax, eax                                ; 3D5E _ 01. C0
        add     eax, edx                                ; 3D60 _ 01. D0
        shl     eax, 3                                  ; 3D62 _ C1. E0, 03
        add     eax, ecx                                ; 3D65 _ 01. C8
        add     eax, 16                                 ; 3D67 _ 83. C0, 10
        mov     dword [eax], 0                          ; 3D6A _ C7. 00, 00000000
        add     dword [ebp-4H], 1                       ; 3D70 _ 83. 45, FC, 01
?_202:  cmp     dword [ebp-4H], 2                       ; 3D74 _ 83. 7D, FC, 02
        jle     ?_201                                   ; 3D78 _ 7E, D9
        leave                                           ; 3D7A _ C9
        ret                                             ; 3D7B _ C3
; init_task_level End of function

task_init:; Function begin
        push    ebp                                     ; 3D7C _ 55
        mov     ebp, esp                                ; 3D7D _ 89. E5
        sub     esp, 40                                 ; 3D7F _ 83. EC, 28
        call    get_addr_gdt                            ; 3D82 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 3D87 _ 89. 45, F0
        mov     dword [esp+4H], 668                     ; 3D8A _ C7. 44 24, 04, 0000029C
        mov     eax, dword [ebp+8H]                     ; 3D92 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3D95 _ 89. 04 24
        call    memman_alloc_4k                         ; 3D98 _ E8, FFFFFFFC(rel)
        mov     dword [task_control], eax               ; 3D9D _ A3, 00002248(d)
        mov     dword [ebp-14H], 0                      ; 3DA2 _ C7. 45, EC, 00000000
        jmp     ?_204                                   ; 3DA9 _ E9, 00000085

?_203:  mov     edx, dword [task_control]               ; 3DAE _ 8B. 15, 00002248(d)
        mov     eax, dword [ebp-14H]                    ; 3DB4 _ 8B. 45, EC
        imul    eax, eax, 148                           ; 3DB7 _ 69. C0, 00000094
        add     eax, edx                                ; 3DBD _ 01. D0
        add     eax, 72                                 ; 3DBF _ 83. C0, 48
        mov     dword [eax], 0                          ; 3DC2 _ C7. 00, 00000000
        mov     ecx, dword [task_control]               ; 3DC8 _ 8B. 0D, 00002248(d)
        mov     eax, dword [ebp-14H]                    ; 3DCE _ 8B. 45, EC
        add     eax, 8                                  ; 3DD1 _ 83. C0, 08
        lea     edx, [eax*8]                            ; 3DD4 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-14H]                    ; 3DDB _ 8B. 45, EC
        imul    eax, eax, 148                           ; 3DDE _ 69. C0, 00000094
        add     eax, ecx                                ; 3DE4 _ 01. C8
        add     eax, 68                                 ; 3DE6 _ 83. C0, 44
        mov     dword [eax], edx                        ; 3DE9 _ 89. 10
        mov     eax, dword [task_control]               ; 3DEB _ A1, 00002248(d)
        mov     edx, dword [ebp-14H]                    ; 3DF0 _ 8B. 55, EC
        imul    edx, edx, 148                           ; 3DF3 _ 69. D2, 00000094
        add     edx, 96                                 ; 3DF9 _ 83. C2, 60
        add     eax, edx                                ; 3DFC _ 01. D0
        add     eax, 16                                 ; 3DFE _ 83. C0, 10
        mov     edx, dword [ebp-14H]                    ; 3E01 _ 8B. 55, EC
        add     edx, 8                                  ; 3E04 _ 83. C2, 08
        lea     ecx, [edx*8]                            ; 3E07 _ 8D. 0C D5, 00000000
        mov     edx, dword [ebp-10H]                    ; 3E0E _ 8B. 55, F0
        add     edx, ecx                                ; 3E11 _ 01. CA
        mov     dword [esp+0CH], 137                    ; 3E13 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], eax                     ; 3E1B _ 89. 44 24, 08
        mov     dword [esp+4H], 103                     ; 3E1F _ C7. 44 24, 04, 00000067
        mov     dword [esp], edx                        ; 3E27 _ 89. 14 24
        call    segment_descriptor                      ; 3E2A _ E8, FFFFFFFC(rel)
        add     dword [ebp-14H], 1                      ; 3E2F _ 83. 45, EC, 01
?_204:  cmp     dword [ebp-14H], 4                      ; 3E33 _ 83. 7D, EC, 04
        jle     ?_203                                   ; 3E37 _ 0F 8E, FFFFFF71
        mov     dword [ebp-14H], 0                      ; 3E3D _ C7. 45, EC, 00000000
        jmp     ?_206                                   ; 3E44 _ EB, 0F

?_205:  mov     eax, dword [ebp-14H]                    ; 3E46 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 3E49 _ 89. 04 24
        call    init_task_level                         ; 3E4C _ E8, FFFFFFFC(rel)
        add     dword [ebp-14H], 1                      ; 3E51 _ 83. 45, EC, 01
?_206:  cmp     dword [ebp-14H], 2                      ; 3E55 _ 83. 7D, EC, 02
        jle     ?_205                                   ; 3E59 _ 7E, EB
        call    task_alloc                              ; 3E5B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 3E60 _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 3E63 _ 8B. 45, F4
        mov     dword [eax+4H], 2                       ; 3E66 _ C7. 40, 04, 00000002
        mov     eax, dword [ebp-0CH]                    ; 3E6D _ 8B. 45, F4
        mov     dword [eax+8H], 100                     ; 3E70 _ C7. 40, 08, 00000064
        mov     eax, dword [ebp-0CH]                    ; 3E77 _ 8B. 45, F4
        mov     dword [eax+0CH], 0                      ; 3E7A _ C7. 40, 0C, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3E81 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 3E84 _ 89. 04 24
        call    task_add                                ; 3E87 _ E8, FFFFFFFC(rel)
        call    task_switch_sub                         ; 3E8C _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 3E91 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 3E94 _ 8B. 00
        mov     dword [esp], eax                        ; 3E96 _ 89. 04 24
        call    load_tr                                 ; 3E99 _ E8, FFFFFFFC(rel)
        call    timer_alloc                             ; 3E9E _ E8, FFFFFFFC(rel)
        mov     dword [task_timer], eax                 ; 3EA3 _ A3, 00002244(d)
        mov     eax, dword [ebp-0CH]                    ; 3EA8 _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 3EAB _ 8B. 40, 08
        mov     edx, eax                                ; 3EAE _ 89. C2
        mov     eax, dword [task_timer]                 ; 3EB0 _ A1, 00002244(d)
        mov     dword [esp+4H], edx                     ; 3EB5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 3EB9 _ 89. 04 24
        call    timer_settime                           ; 3EBC _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 3EC1 _ 8B. 45, F4
        leave                                           ; 3EC4 _ C9
        ret                                             ; 3EC5 _ C3
; task_init End of function

task_alloc:; Function begin
        push    ebp                                     ; 3EC6 _ 55
        mov     ebp, esp                                ; 3EC7 _ 89. E5
        sub     esp, 16                                 ; 3EC9 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 3ECC _ C7. 45, F8, 00000000
        jmp     ?_209                                   ; 3ED3 _ E9, 000000F6

?_207:  mov     edx, dword [task_control]               ; 3ED8 _ 8B. 15, 00002248(d)
        mov     eax, dword [ebp-8H]                     ; 3EDE _ 8B. 45, F8
        imul    eax, eax, 148                           ; 3EE1 _ 69. C0, 00000094
        add     eax, edx                                ; 3EE7 _ 01. D0
        add     eax, 72                                 ; 3EE9 _ 83. C0, 48
        mov     eax, dword [eax]                        ; 3EEC _ 8B. 00
        test    eax, eax                                ; 3EEE _ 85. C0
        jne     ?_208                                   ; 3EF0 _ 0F 85, 000000D4
        mov     eax, dword [task_control]               ; 3EF6 _ A1, 00002248(d)
        mov     edx, dword [ebp-8H]                     ; 3EFB _ 8B. 55, F8
        imul    edx, edx, 148                           ; 3EFE _ 69. D2, 00000094
        add     edx, 64                                 ; 3F04 _ 83. C2, 40
        add     eax, edx                                ; 3F07 _ 01. D0
        add     eax, 4                                  ; 3F09 _ 83. C0, 04
        mov     dword [ebp-4H], eax                     ; 3F0C _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 3F0F _ 8B. 45, FC
        mov     dword [eax+4H], 1                       ; 3F12 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-4H]                     ; 3F19 _ 8B. 45, FC
        mov     dword [eax+50H], 514                    ; 3F1C _ C7. 40, 50, 00000202
        mov     eax, dword [ebp-4H]                     ; 3F23 _ 8B. 45, FC
        mov     dword [eax+54H], 0                      ; 3F26 _ C7. 40, 54, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F2D _ 8B. 45, FC
        mov     dword [eax+58H], 0                      ; 3F30 _ C7. 40, 58, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F37 _ 8B. 45, FC
        mov     dword [eax+5CH], 0                      ; 3F3A _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F41 _ 8B. 45, FC
        mov     dword [eax+60H], 0                      ; 3F44 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 3F4B _ 8B. 45, F8
        add     eax, 1                                  ; 3F4E _ 83. C0, 01
        shl     eax, 9                                  ; 3F51 _ C1. E0, 09
        mov     edx, eax                                ; 3F54 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 3F56 _ 8B. 45, FC
        mov     dword [eax+64H], edx                    ; 3F59 _ 89. 50, 64
        mov     eax, dword [ebp-4H]                     ; 3F5C _ 8B. 45, FC
        mov     dword [eax+68H], 0                      ; 3F5F _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F66 _ 8B. 45, FC
        mov     dword [eax+6CH], 0                      ; 3F69 _ C7. 40, 6C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F70 _ 8B. 45, FC
        mov     dword [eax+70H], 0                      ; 3F73 _ C7. 40, 70, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F7A _ 8B. 45, FC
        mov     dword [eax+74H], 0                      ; 3F7D _ C7. 40, 74, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F84 _ 8B. 45, FC
        mov     dword [eax+80H], 0                      ; 3F87 _ C7. 80, 00000080, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F91 _ 8B. 45, FC
        mov     dword [eax+84H], 0                      ; 3F94 _ C7. 80, 00000084, 00000000
        mov     eax, dword [ebp-4H]                     ; 3F9E _ 8B. 45, FC
        mov     dword [eax+88H], 0                      ; 3FA1 _ C7. 80, 00000088, 00000000
        mov     eax, dword [ebp-4H]                     ; 3FAB _ 8B. 45, FC
        mov     dword [eax+8CH], 0                      ; 3FAE _ C7. 80, 0000008C, 00000000
        mov     eax, dword [ebp-4H]                     ; 3FB8 _ 8B. 45, FC
        mov     dword [eax+90H], 1073741824             ; 3FBB _ C7. 80, 00000090, 40000000
        mov     eax, dword [ebp-4H]                     ; 3FC5 _ 8B. 45, FC
        jmp     ?_210                                   ; 3FC8 _ EB, 13

?_208:  add     dword [ebp-8H], 1                       ; 3FCA _ 83. 45, F8, 01
?_209:  cmp     dword [ebp-8H], 4                       ; 3FCE _ 83. 7D, F8, 04
        jle     ?_207                                   ; 3FD2 _ 0F 8E, FFFFFF00
        mov     eax, 0                                  ; 3FD8 _ B8, 00000000
?_210:  leave                                           ; 3FDD _ C9
        ret                                             ; 3FDE _ C3
; task_alloc End of function

task_run:; Function begin
        push    ebp                                     ; 3FDF _ 55
        mov     ebp, esp                                ; 3FE0 _ 89. E5
        sub     esp, 24                                 ; 3FE2 _ 83. EC, 18
        cmp     dword [ebp+0CH], 0                      ; 3FE5 _ 83. 7D, 0C, 00
        jns     ?_211                                   ; 3FE9 _ 79, 09
        mov     eax, dword [ebp+8H]                     ; 3FEB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3FEE _ 8B. 40, 0C
        mov     dword [ebp+0CH], eax                    ; 3FF1 _ 89. 45, 0C
?_211:  cmp     dword [ebp+10H], 0                      ; 3FF4 _ 83. 7D, 10, 00
        jle     ?_212                                   ; 3FF8 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 3FFA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 3FFD _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 4000 _ 89. 50, 08
?_212:  mov     eax, dword [ebp+8H]                     ; 4003 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4006 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4009 _ 83. F8, 02
        jnz     ?_213                                   ; 400C _ 75, 16
        mov     eax, dword [ebp+8H]                     ; 400E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 4011 _ 8B. 40, 0C
        cmp     eax, dword [ebp+0CH]                    ; 4014 _ 3B. 45, 0C
        jz      ?_213                                   ; 4017 _ 74, 0B
        mov     eax, dword [ebp+8H]                     ; 4019 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 401C _ 89. 04 24
        call    task_remove                             ; 401F _ E8, FFFFFFFC(rel)
?_213:  mov     eax, dword [ebp+8H]                     ; 4024 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4027 _ 8B. 40, 04
        cmp     eax, 2                                  ; 402A _ 83. F8, 02
        jz      ?_214                                   ; 402D _ 74, 14
        mov     eax, dword [ebp+8H]                     ; 402F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 4032 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 4035 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 4038 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 403B _ 89. 04 24
        call    task_add                                ; 403E _ E8, FFFFFFFC(rel)
?_214:  mov     eax, dword [task_control]               ; 4043 _ A1, 00002248(d)
        mov     dword [eax+4H], 1                       ; 4048 _ C7. 40, 04, 00000001
        leave                                           ; 404F _ C9
        ret                                             ; 4050 _ C3
; task_run End of function

task_switch:; Function begin
        push    ebp                                     ; 4051 _ 55
        mov     ebp, esp                                ; 4052 _ 89. E5
        sub     esp, 40                                 ; 4054 _ 83. EC, 28
        mov     ecx, dword [task_control]               ; 4057 _ 8B. 0D, 00002248(d)
        mov     eax, dword [task_control]               ; 405D _ A1, 00002248(d)
        mov     edx, dword [eax]                        ; 4062 _ 8B. 10
        mov     eax, edx                                ; 4064 _ 89. D0
        shl     eax, 2                                  ; 4066 _ C1. E0, 02
        add     eax, edx                                ; 4069 _ 01. D0
        shl     eax, 2                                  ; 406B _ C1. E0, 02
        add     eax, ecx                                ; 406E _ 01. C8
        add     eax, 8                                  ; 4070 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 4073 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 4076 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 4079 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 407C _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 407F _ 8B. 44 90, 08
        mov     dword [ebp-10H], eax                    ; 4083 _ 89. 45, F0
        mov     eax, dword [ebp-14H]                    ; 4086 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 4089 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 408C _ 8D. 50, 01
        mov     eax, dword [ebp-14H]                    ; 408F _ 8B. 45, EC
        mov     dword [eax+4H], edx                     ; 4092 _ 89. 50, 04
        mov     eax, dword [ebp-14H]                    ; 4095 _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 4098 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 409B _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 409E _ 8B. 00
        cmp     edx, eax                                ; 40A0 _ 39. C2
        jnz     ?_215                                   ; 40A2 _ 75, 0A
        mov     eax, dword [ebp-14H]                    ; 40A4 _ 8B. 45, EC
        mov     dword [eax+4H], 0                       ; 40A7 _ C7. 40, 04, 00000000
?_215:  mov     eax, dword [task_control]               ; 40AE _ A1, 00002248(d)
        mov     eax, dword [eax+4H]                     ; 40B3 _ 8B. 40, 04
        test    eax, eax                                ; 40B6 _ 85. C0
        jz      ?_216                                   ; 40B8 _ 74, 24
        call    task_switch_sub                         ; 40BA _ E8, FFFFFFFC(rel)
        mov     ecx, dword [task_control]               ; 40BF _ 8B. 0D, 00002248(d)
        mov     eax, dword [task_control]               ; 40C5 _ A1, 00002248(d)
        mov     edx, dword [eax]                        ; 40CA _ 8B. 10
        mov     eax, edx                                ; 40CC _ 89. D0
        shl     eax, 2                                  ; 40CE _ C1. E0, 02
        add     eax, edx                                ; 40D1 _ 01. D0
        shl     eax, 2                                  ; 40D3 _ C1. E0, 02
        add     eax, ecx                                ; 40D6 _ 01. C8
        add     eax, 8                                  ; 40D8 _ 83. C0, 08
        mov     dword [ebp-14H], eax                    ; 40DB _ 89. 45, EC
?_216:  mov     eax, dword [ebp-14H]                    ; 40DE _ 8B. 45, EC
        mov     edx, dword [eax+4H]                     ; 40E1 _ 8B. 50, 04
        mov     eax, dword [ebp-14H]                    ; 40E4 _ 8B. 45, EC
        mov     eax, dword [eax+edx*4+8H]               ; 40E7 _ 8B. 44 90, 08
        mov     dword [ebp-0CH], eax                    ; 40EB _ 89. 45, F4
        mov     eax, dword [ebp-0CH]                    ; 40EE _ 8B. 45, F4
        mov     eax, dword [eax+8H]                     ; 40F1 _ 8B. 40, 08
        mov     edx, eax                                ; 40F4 _ 89. C2
        mov     eax, dword [task_timer]                 ; 40F6 _ A1, 00002244(d)
        mov     dword [esp+4H], edx                     ; 40FB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 40FF _ 89. 04 24
        call    timer_settime                           ; 4102 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-0CH]                    ; 4107 _ 8B. 45, F4
        cmp     eax, dword [ebp-10H]                    ; 410A _ 3B. 45, F0
        jz      ?_217                                   ; 410D _ 74, 1B
        cmp     dword [ebp-0CH], 0                      ; 410F _ 83. 7D, F4, 00
        jz      ?_217                                   ; 4113 _ 74, 15
        mov     eax, dword [ebp-0CH]                    ; 4115 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 4118 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 411A _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 411E _ C7. 04 24, 00000000
        call    farjmp                                  ; 4125 _ E8, FFFFFFFC(rel)
?_217:  leave                                           ; 412A _ C9
        ret                                             ; 412B _ C3
; task_switch End of function

task_sleep:; Function begin
        push    ebp                                     ; 412C _ 55
        mov     ebp, esp                                ; 412D _ 89. E5
        sub     esp, 40                                 ; 412F _ 83. EC, 28
        mov     dword [ebp-0CH], 0                      ; 4132 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 4139 _ C7. 45, F0, 00000000
        mov     eax, dword [ebp+8H]                     ; 4140 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 4143 _ 8B. 40, 04
        cmp     eax, 2                                  ; 4146 _ 83. F8, 02
        jnz     ?_218                                   ; 4149 _ 75, 51
        call    task_now                                ; 414B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 4150 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 4153 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4156 _ 89. 04 24
        call    task_remove                             ; 4159 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], 1                      ; 415E _ C7. 45, F0, 00000001
        mov     eax, dword [ebp+8H]                     ; 4165 _ 8B. 45, 08
        cmp     eax, dword [ebp-0CH]                    ; 4168 _ 3B. 45, F4
        jnz     ?_218                                   ; 416B _ 75, 2F
        call    task_switch_sub                         ; 416D _ E8, FFFFFFFC(rel)
        call    task_now                                ; 4172 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-0CH], eax                    ; 4177 _ 89. 45, F4
        mov     dword [ebp-10H], 2                      ; 417A _ C7. 45, F0, 00000002
        cmp     dword [ebp-0CH], 0                      ; 4181 _ 83. 7D, F4, 00
        jz      ?_218                                   ; 4185 _ 74, 15
        mov     eax, dword [ebp-0CH]                    ; 4187 _ 8B. 45, F4
        mov     eax, dword [eax]                        ; 418A _ 8B. 00
        mov     dword [esp+4H], eax                     ; 418C _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 4190 _ C7. 04 24, 00000000
        call    farjmp                                  ; 4197 _ E8, FFFFFFFC(rel)
?_218:  mov     eax, dword [ebp-10H]                    ; 419C _ 8B. 45, F0
        leave                                           ; 419F _ C9
        ret                                             ; 41A0 _ C3
; task_sleep End of function

task_now:; Function begin
        push    ebp                                     ; 41A1 _ 55
        mov     ebp, esp                                ; 41A2 _ 89. E5
        sub     esp, 16                                 ; 41A4 _ 83. EC, 10
        mov     ecx, dword [task_control]               ; 41A7 _ 8B. 0D, 00002248(d)
        mov     eax, dword [task_control]               ; 41AD _ A1, 00002248(d)
        mov     edx, dword [eax]                        ; 41B2 _ 8B. 10
        mov     eax, edx                                ; 41B4 _ 89. D0
        shl     eax, 2                                  ; 41B6 _ C1. E0, 02
        add     eax, edx                                ; 41B9 _ 01. D0
        shl     eax, 2                                  ; 41BB _ C1. E0, 02
        add     eax, ecx                                ; 41BE _ 01. C8
        add     eax, 8                                  ; 41C0 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 41C3 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 41C6 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 41C9 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 41CC _ 8B. 45, FC
        mov     eax, dword [eax+edx*4+8H]               ; 41CF _ 8B. 44 90, 08
        leave                                           ; 41D3 _ C9
        ret                                             ; 41D4 _ C3
; task_now End of function

task_add:; Function begin
        push    ebp                                     ; 41D5 _ 55
        mov     ebp, esp                                ; 41D6 _ 89. E5
        sub     esp, 16                                 ; 41D8 _ 83. EC, 10
        mov     ecx, dword [task_control]               ; 41DB _ 8B. 0D, 00002248(d)
        mov     eax, dword [ebp+8H]                     ; 41E1 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 41E4 _ 8B. 50, 0C
        mov     eax, edx                                ; 41E7 _ 89. D0
        shl     eax, 2                                  ; 41E9 _ C1. E0, 02
        add     eax, edx                                ; 41EC _ 01. D0
        shl     eax, 2                                  ; 41EE _ C1. E0, 02
        add     eax, ecx                                ; 41F1 _ 01. C8
        add     eax, 8                                  ; 41F3 _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 41F6 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 41F9 _ 8B. 45, FC
        mov     edx, dword [eax]                        ; 41FC _ 8B. 10
        mov     eax, dword [ebp-4H]                     ; 41FE _ 8B. 45, FC
        mov     ecx, dword [ebp+8H]                     ; 4201 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 4204 _ 89. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 4208 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 420B _ 8B. 00
        lea     edx, [eax+1H]                           ; 420D _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 4210 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 4213 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 4215 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 4218 _ C7. 40, 04, 00000002
        leave                                           ; 421F _ C9
        ret                                             ; 4220 _ C3
; task_add End of function

task_remove:; Function begin
        push    ebp                                     ; 4221 _ 55
        mov     ebp, esp                                ; 4222 _ 89. E5
        sub     esp, 16                                 ; 4224 _ 83. EC, 10
        mov     ecx, dword [task_control]               ; 4227 _ 8B. 0D, 00002248(d)
        mov     eax, dword [ebp+8H]                     ; 422D _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 4230 _ 8B. 50, 0C
        mov     eax, edx                                ; 4233 _ 89. D0
        shl     eax, 2                                  ; 4235 _ C1. E0, 02
        add     eax, edx                                ; 4238 _ 01. D0
        shl     eax, 2                                  ; 423A _ C1. E0, 02
        add     eax, ecx                                ; 423D _ 01. C8
        add     eax, 8                                  ; 423F _ 83. C0, 08
        mov     dword [ebp-4H], eax                     ; 4242 _ 89. 45, FC
        mov     dword [ebp-8H], 0                       ; 4245 _ C7. 45, F8, 00000000
        jmp     ?_221                                   ; 424C _ EB, 23

?_219:  mov     eax, dword [ebp-4H]                     ; 424E _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 4251 _ 8B. 55, F8
        mov     eax, dword [eax+edx*4+8H]               ; 4254 _ 8B. 44 90, 08
        cmp     eax, dword [ebp+8H]                     ; 4258 _ 3B. 45, 08
        jnz     ?_220                                   ; 425B _ 75, 10
        mov     eax, dword [ebp-4H]                     ; 425D _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 4260 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], 0                 ; 4263 _ C7. 44 90, 08, 00000000
        jmp     ?_222                                   ; 426B _ EB, 0E

?_220:  add     dword [ebp-8H], 1                       ; 426D _ 83. 45, F8, 01
?_221:  mov     eax, dword [ebp-4H]                     ; 4271 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 4274 _ 8B. 00
        cmp     eax, dword [ebp-8H]                     ; 4276 _ 3B. 45, F8
        jg      ?_219                                   ; 4279 _ 7F, D3
?_222:  mov     eax, dword [ebp-4H]                     ; 427B _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 427E _ 8B. 00
        lea     edx, [eax-1H]                           ; 4280 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 4283 _ 8B. 45, FC
        mov     dword [eax], edx                        ; 4286 _ 89. 10
        mov     eax, dword [ebp-4H]                     ; 4288 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 428B _ 8B. 40, 04
        cmp     eax, dword [ebp-8H]                     ; 428E _ 3B. 45, F8
        jle     ?_223                                   ; 4291 _ 7E, 0F
        mov     eax, dword [ebp-4H]                     ; 4293 _ 8B. 45, FC
        mov     eax, dword [eax+4H]                     ; 4296 _ 8B. 40, 04
        lea     edx, [eax-1H]                           ; 4299 _ 8D. 50, FF
        mov     eax, dword [ebp-4H]                     ; 429C _ 8B. 45, FC
        mov     dword [eax+4H], edx                     ; 429F _ 89. 50, 04
?_223:  mov     eax, dword [ebp-4H]                     ; 42A2 _ 8B. 45, FC
        mov     edx, dword [eax+4H]                     ; 42A5 _ 8B. 50, 04
        mov     eax, dword [ebp-4H]                     ; 42A8 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 42AB _ 8B. 00
        cmp     edx, eax                                ; 42AD _ 39. C2
        jl      ?_224                                   ; 42AF _ 7C, 0A
        mov     eax, dword [ebp-4H]                     ; 42B1 _ 8B. 45, FC
        mov     dword [eax+4H], 0                       ; 42B4 _ C7. 40, 04, 00000000
?_224:  mov     eax, dword [ebp+8H]                     ; 42BB _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 42BE _ C7. 40, 04, 00000001
        jmp     ?_226                                   ; 42C5 _ EB, 1B

?_225:  mov     eax, dword [ebp-8H]                     ; 42C7 _ 8B. 45, F8
        lea     edx, [eax+1H]                           ; 42CA _ 8D. 50, 01
        mov     eax, dword [ebp-4H]                     ; 42CD _ 8B. 45, FC
        mov     ecx, dword [eax+edx*4+8H]               ; 42D0 _ 8B. 4C 90, 08
        mov     eax, dword [ebp-4H]                     ; 42D4 _ 8B. 45, FC
        mov     edx, dword [ebp-8H]                     ; 42D7 _ 8B. 55, F8
        mov     dword [eax+edx*4+8H], ecx               ; 42DA _ 89. 4C 90, 08
        add     dword [ebp-8H], 1                       ; 42DE _ 83. 45, F8, 01
?_226:  mov     eax, dword [ebp-4H]                     ; 42E2 _ 8B. 45, FC
        mov     eax, dword [eax]                        ; 42E5 _ 8B. 00
        cmp     eax, dword [ebp-8H]                     ; 42E7 _ 3B. 45, F8
        jg      ?_225                                   ; 42EA _ 7F, DB
        leave                                           ; 42EC _ C9
        ret                                             ; 42ED _ C3
; task_remove End of function

task_switch_sub:; Function begin
        push    ebp                                     ; 42EE _ 55
        mov     ebp, esp                                ; 42EF _ 89. E5
        sub     esp, 16                                 ; 42F1 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 42F4 _ C7. 45, FC, 00000000
        jmp     ?_229                                   ; 42FB _ EB, 24

?_227:  mov     ecx, dword [task_control]               ; 42FD _ 8B. 0D, 00002248(d)
        mov     edx, dword [ebp-4H]                     ; 4303 _ 8B. 55, FC
        mov     eax, edx                                ; 4306 _ 89. D0
        shl     eax, 2                                  ; 4308 _ C1. E0, 02
        add     eax, edx                                ; 430B _ 01. D0
        shl     eax, 2                                  ; 430D _ C1. E0, 02
        add     eax, ecx                                ; 4310 _ 01. C8
        add     eax, 8                                  ; 4312 _ 83. C0, 08
        mov     eax, dword [eax]                        ; 4315 _ 8B. 00
        test    eax, eax                                ; 4317 _ 85. C0
        jle     ?_228                                   ; 4319 _ 7E, 02
        jmp     ?_230                                   ; 431B _ EB, 0A

?_228:  add     dword [ebp-4H], 1                       ; 431D _ 83. 45, FC, 01
?_229:  cmp     dword [ebp-4H], 2                       ; 4321 _ 83. 7D, FC, 02
        jle     ?_227                                   ; 4325 _ 7E, D6
?_230:  mov     eax, dword [task_control]               ; 4327 _ A1, 00002248(d)
        mov     edx, dword [ebp-4H]                     ; 432C _ 8B. 55, FC
        mov     dword [eax], edx                        ; 432F _ 89. 10
        mov     eax, dword [task_control]               ; 4331 _ A1, 00002248(d)
        mov     dword [eax+4H], 0                       ; 4336 _ C7. 40, 04, 00000000
        leave                                           ; 433D _ C9
        ret                                             ; 433E _ C3
; task_switch_sub End of function

task_send_message:; Function begin
        push    ebp                                     ; 433F _ 55
        mov     ebp, esp                                ; 4340 _ 89. E5
        sub     esp, 24                                 ; 4342 _ 83. EC, 18
        mov     eax, dword [ebp+10H]                    ; 4345 _ 8B. 45, 10
        movzx   eax, al                                 ; 4348 _ 0F B6. C0
        mov     edx, dword [ebp+0CH]                    ; 434B _ 8B. 55, 0C
        add     edx, 16                                 ; 434E _ 83. C2, 10
        mov     dword [esp+4H], eax                     ; 4351 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 4355 _ 89. 14 24
        call    fifo8_put                               ; 4358 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 435D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 4360 _ 89. 04 24
        call    task_sleep                              ; 4363 _ E8, FFFFFFFC(rel)
        leave                                           ; 4368 _ C9
        ret                                             ; 4369 _ C3
; task_send_message End of function



?_231:                                                  ; byte
        db 77H, 69H, 6EH, 64H, 6FH, 77H, 00H            ; 0000 _ window.

?_232:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 0007 _ console.

?_233:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 000F _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 0017 _ sk b.

?_234:                                                  ; byte
        db 42H, 00H                                     ; 001C _ B.

?_235:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 001E _ page is:
        db 20H, 00H                                     ; 0026 _  .

?_236:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0028 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0030 _ L: .

?_237:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0034 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 003C _ H: .

?_238:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0040 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0048 _ w: .

?_239:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 004C _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0054 _ gh: .

?_240:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0059 _ type: .

?_241:                                                  ; byte
        db 3EH, 00H                                     ; 0060 _ >.

?_242:                                                  ; byte
        db 63H, 6FH, 6EH, 73H, 6FH, 6CH, 65H, 00H       ; 0062 _ console.



test:                                                   ; dword
        dd 00000064H                                    ; 0000 _ 100 

memman: dd 00100000H, 00000000H                         ; 0004 _ 1048576 0 
        dd 00000000H, 00000000H                         ; 000C _ 0 0 
        dd 00000000H, 00000000H                         ; 0014 _ 0 0 
        dd 00000000H                                    ; 001C _ 0 

keytable:                                               ; byte
        db 00H, 00H, 31H, 32H, 33H, 34H, 35H, 36H       ; 0020 _ ..123456
        db 37H, 38H, 39H, 30H, 2DH, 3DH, 00H, 00H       ; 0028 _ 7890-=..
        db 51H, 57H, 45H, 52H, 54H, 59H, 55H, 49H       ; 0030 _ QWERTYUI
        db 4FH, 50H, 5BH, 5DH, 00H, 00H, 41H, 53H       ; 0038 _ OP[]..AS
        db 44H, 46H, 47H, 48H, 4AH, 4BH, 4CH, 3BH       ; 0040 _ DFGHJKL;
        db 2CH, 60H, 00H, 5CH, 5AH, 58H, 43H, 56H       ; 0048 _ ,`.\ZXCV
        db 42H, 4EH, 4DH, 2CH, 2EH, 2FH, 00H, 00H       ; 0050 _ BNM,./..
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0060 _ ........
        db 00H, 00H, 2DH, 00H, 00H, 2BH, 00H, 00H       ; 0068 _ ..-..+..
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0070 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0078 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0080 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0088 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0090 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0098 _ ........

keytable_shift:                                         ; byte
        db 00H, 00H, 21H, 40H, 23H, 24H, 25H, 5EH       ; 00A0 _ ..!@#$%^
        db 26H, 2AH, 28H, 29H, 5FH, 2BH, 00H, 00H       ; 00A8 _ &*()_+..
        db 51H, 57H, 45H, 52H, 54H, 59H, 55H, 49H       ; 00B0 _ QWERTYUI
        db 4FH, 50H, 7BH, 7DH, 00H, 00H, 41H, 53H       ; 00B8 _ OP{}..AS
        db 44H, 46H, 47H, 48H, 4AH, 4BH, 4CH, 3AH       ; 00C0 _ DFGHJKL:
        db 22H, 7EH, 00H, 7CH, 5AH, 58H, 43H, 56H       ; 00C8 _ "~.|ZXCV
        db 42H, 4EH, 4DH, 3CH, 3EH, 3FH, 00H, 00H       ; 00D0 _ BNM<>?..
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00D8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00E0 _ ........
        db 00H, 00H, 2DH, 00H, 00H, 2BH, 00H, 00H       ; 00E8 _ ..-..+..
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00F0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00F8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0100 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0108 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0110 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0118 _ ........

table_rgb.1758:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 44H, 8CH      ; 0120 _ ......D.
        db 0BBH, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH  ; 0128 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0130 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0138 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0140 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0148 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0150 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0158 _ ........

cursor.1826:                                            ; byte
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0160 _ *.......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0168 _ ........
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0170 _ **......
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0178 _ ........
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0180 _ *O*.....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0188 _ ........
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0190 _ *OO*....
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0198 _ ........
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 01A0 _ *OOO*...
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01A8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 01B0 _ *OOOO*..
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01B8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 01C0 _ *OOOOO*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01C8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 2AH       ; 01D0 _ *OOOOOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01D8 _ ........
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 01E0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01E8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 2AH       ; 01F0 _ *OOOO***
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 01F8 _ **......
        db 2AH, 4FH, 4FH, 2AH, 4FH, 2AH, 2EH, 2EH       ; 0200 _ *OO*O*..
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0208 _ ........
        db 2AH, 4FH, 2AH, 2EH, 2AH, 4FH, 2AH, 2EH       ; 0210 _ *O*.*O*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0218 _ ........
        db 2AH, 2AH, 2EH, 2EH, 2AH, 4FH, 2AH, 2EH       ; 0220 _ **..*O*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0228 _ ........
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 2AH       ; 0230 _ *....*O*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0238 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 2AH       ; 0240 _ .....*O*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0248 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2EH       ; 0250 _ ......*.
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0258 _ ........

closebtn.1913:                                          ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0260 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 0268 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0270 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0278 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0280 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0288 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0290 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0298 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 02A0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 02A8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 02B0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02B8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 02C0 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02C8 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 02D0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 02D8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 02E0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 02E8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 02F0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 02F8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0300 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0308 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0310 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0318 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0320 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 0328 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0330 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0338 _ @@@@@@@@

keyval:                                                 ; byte
        db 30H, 58H                                     ; 0340 _ 0X

?_243:  db 00H                                          ; 0342 _ .

?_244:  db 00H, 00H                                     ; 0343 _ ..



task_console_g:                                         ; dword
        resd    1                                       ; 0000

task_main:                                              ; dword
        resd    1                                       ; 0004

task_a: resd    1                                       ; 0008

sheet_control:                                          ; dword
        resd    1                                       ; 000C

back_sheet:                                             ; dword
        resd    1                                       ; 0010

mouse_sheet:                                            ; dword
        resd    1                                       ; 0014

timerinfo1.1759:                                        ; byte
        resb    28                                      ; 0018

timerbuf1.1762:                                         ; qword
        resq    1                                       ; 0034

timerinfo2.1760:                                        ; byte
        resb    28                                      ; 003C

timerbuf2.1763:                                         ; qword
        resq    1                                       ; 0058

timerinfo3.1761:                                        ; byte
        resb    28                                      ; 0060

timerbuf3.1764:                                         ; qword
        resq    4                                       ; 007C
        resb    4                                       ; 009C

screen_info:                                            ; qword
        resb    4                                       ; 00A0

?_245:  resw    1                                       ; 00A4

?_246:  resw    13                                      ; 00A6

mouse_cursor_buf:                                       ; byte
        resb    256                                     ; 00C0

back_buf: resd  1                                       ; 01C0

sheet_win:                                              ; dword
        resd    1                                       ; 01C4

mouse_x: resd   1                                       ; 01C8

mouse_y: resd   1                                       ; 01CC

key_shift:                                              ; dword
        resd    1                                       ; 01D0

caps_lock:                                              ; dword
        resd    1                                       ; 01D4

mouse_send_info:                                        ; oword
        resb    40                                      ; 01D8

keyinfo:                                                ; byte
        resb    32                                      ; 0200

keybuf:                                                 ; yword
        resb    32                                      ; 0220

mouseinfo:                                              ; byte
        resb    32                                      ; 0240

mousebuf:                                               ; byte
        resb    128                                     ; 0260

str.1386:                                               ; byte
        resb    1                                       ; 02E0

?_247:  resb    9                                       ; 02E1

?_248:  resb    22                                      ; 02EA

timer_control:                                          ; byte
        resd    2001                                    ; 0300

task_timer:                                             ; dword
        resd    1                                       ; 2244

task_control:                                           ; dword
        resd    1                                       ; 2248


