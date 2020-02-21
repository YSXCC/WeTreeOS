;定义多行宏，%macro  宏的命名  参数个数
;%1表示第一个参数段基址   %2表示第二个参数段界限    %3表示第三个参数属性值
;初始化段描述符
%macro Descriptor 3                             
    dw    %2  &  0FFFFh                         ;段界限1
    dw    %1  &  0FFFFh                         ;段基址1
    db   (%1 >> 16) & 0FFh                      ;段基址2
    dw   ((%2 >> 8) & 0F00h) | (%3 & 0F0FFh)    ;属性1 + 段界限2 + 属性2
    db   (%1 >> 24) & 0FFh                      ;段基址3
%endmacro


DA_32       EQU	 4000h	; 32 位段                           0100 0000 0000 0000
DA_C	      EQU	   98h	; 存在内存的只执行代码段属性值                   1001 1000
DA_DRW	    EQU	   92h	; 存在内存的可读写数据段属性值                   1001 0010
DA_DRWA     EQU	   93h	; 存在内存的已访问可读写数据段属性值              1001 0011
DA_LIMIT_4K EQU	 8000h	; 粒度大小为4k的段                   1000 0000 0000 0000
DA_386IGate EQU    8Eh  ; 中断调用门                                  1000 1110

;%1表示第一个参数段选择码   %2表示第二个参数段偏移    %3表示第三个参数空闲区    %4表示第四个参数属性值
;初始化中断描述符
%macro Gate 4
  dw  (%2 & 0FFFFh)
  dw  %1
  dw  (%3 & 1Fh) | ((%4 << 8) & 0FF00h)
  dw  ((%2>>16) & 0FFFFh)
%endmacro