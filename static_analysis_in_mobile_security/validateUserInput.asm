
native_task3/libtask4native.so:     file format elf64-x86-64


Disassembly of section .text:

0000000000000740 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base-0x70>:
     740:	48 8d 3d a9 19 00 00 	lea    rdi,[rip+0x19a9]        # 20f0 <__stack_chk_fail@plt+0x1010>
     747:	e9 44 09 00 00       	jmp    1090 <__cxa_finalize@plt>
     74c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
     750:	c3                   	ret
     751:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
     758:	0f 1f 84 00 00 00 00 
     75f:	00 
     760:	e9 eb ff ff ff       	jmp    750 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base-0x60>
     765:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
     76c:	00 00 00 00 
     770:	48 85 ff             	test   rdi,rdi
     773:	74 02                	je     777 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base-0x39>
     775:	ff e7                	jmp    rdi
     777:	c3                   	ret
     778:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
     77f:	00 
     780:	48 89 fe             	mov    rsi,rdi
     783:	48 8d 3d e6 ff ff ff 	lea    rdi,[rip+0xffffffffffffffe6]        # 770 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base-0x40>
     78a:	48 8d 15 5f 19 00 00 	lea    rdx,[rip+0x195f]        # 20f0 <__stack_chk_fail@plt+0x1010>
     791:	e9 0a 09 00 00       	jmp    10a0 <__cxa_atexit@plt>
     796:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
     79d:	00 00 00 
     7a0:	48 8d 0d 49 19 00 00 	lea    rcx,[rip+0x1949]        # 20f0 <__stack_chk_fail@plt+0x1010>
     7a7:	e9 04 09 00 00       	jmp    10b0 <__register_atfork@plt>
     7ac:	cc                   	int3
     7ad:	cc                   	int3
     7ae:	cc                   	int3
     7af:	cc                   	int3

00000000000007b0 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base>:
     7b0:	55                   	push   rbp
     7b1:	48 89 e5             	mov    rbp,rsp
     7b4:	48 81 ec b0 02 00 00 	sub    rsp,0x2b0
     7bb:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     7c2:	00 00 
     7c4:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
     7c8:	48 89 bd 40 fe ff ff 	mov    QWORD PTR [rbp-0x1c0],rdi
     7cf:	48 89 b5 38 fe ff ff 	mov    QWORD PTR [rbp-0x1c8],rsi
     7d6:	48 89 95 30 fe ff ff 	mov    QWORD PTR [rbp-0x1d0],rdx
     7dd:	48 8b bd 40 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1c0]
     7e4:	48 8b b5 30 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x1d0]
     7eb:	31 c0                	xor    eax,eax
     7ed:	89 c2                	mov    edx,eax
     7ef:	e8 cc 08 00 00       	call   10c0 <_ZN7_JNIEnv17GetStringUTFCharsEP8_jstringPh@plt>
     7f4:	48 89 85 28 fe ff ff 	mov    QWORD PTR [rbp-0x1d8],rax
     7fb:	48 83 bd 28 fe ff ff 	cmp    QWORD PTR [rbp-0x1d8],0x0
     802:	00 
     803:	0f 85 0c 00 00 00    	jne    815 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x65>
     809:	c6 85 4f fe ff ff 00 	mov    BYTE PTR [rbp-0x1b1],0x0
     810:	e9 85 07 00 00       	jmp    f9a <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7ea>
     815:	c7 85 24 fe ff ff 00 	mov    DWORD PTR [rbp-0x1dc],0x0
     81c:	00 00 00 
     81f:	48 8b 85 28 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1d8]
     826:	48 63 8d 24 fe ff ff 	movsxd rcx,DWORD PTR [rbp-0x1dc]
     82d:	0f be 04 08          	movsx  eax,BYTE PTR [rax+rcx*1]
     831:	83 f8 00             	cmp    eax,0x0
     834:	0f 84 14 00 00 00    	je     84e <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x9e>
     83a:	8b 85 24 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1dc]
     840:	83 c0 01             	add    eax,0x1
     843:	89 85 24 fe ff ff    	mov    DWORD PTR [rbp-0x1dc],eax
     849:	e9 d1 ff ff ff       	jmp    81f <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x6f>
     84e:	83 bd 24 fe ff ff 34 	cmp    DWORD PTR [rbp-0x1dc],0x34
     855:	0f 84 26 00 00 00    	je     881 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0xd1>
     85b:	48 8b bd 40 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1c0]
     862:	48 8b b5 30 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x1d0]
     869:	48 8b 95 28 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x1d8]
     870:	e8 5b 08 00 00       	call   10d0 <_ZN7_JNIEnv21ReleaseStringUTFCharsEP8_jstringPKc@plt>
     875:	c6 85 4f fe ff ff 00 	mov    BYTE PTR [rbp-0x1b1],0x0
     87c:	e9 19 07 00 00       	jmp    f9a <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7ea>
     881:	c7 85 20 fe ff ff 00 	mov    DWORD PTR [rbp-0x1e0],0x0
     888:	00 00 00 
     88b:	83 bd 20 fe ff ff 34 	cmp    DWORD PTR [rbp-0x1e0],0x34
     892:	0f 8d 3d 00 00 00    	jge    8d5 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x125>
     898:	48 8b 85 28 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1d8]
     89f:	48 63 8d 20 fe ff ff 	movsxd rcx,DWORD PTR [rbp-0x1e0]
     8a6:	0f be 3c 08          	movsx  edi,BYTE PTR [rax+rcx*1]
     8aa:	e8 b1 07 00 00       	call   1060 <_ZN7_JNIEnv21ReleaseStringUTFCharsEP8_jstringPKc@@Base+0x40>
     8af:	48 89 c1             	mov    rcx,rax
     8b2:	48 63 85 20 fe ff ff 	movsxd rax,DWORD PTR [rbp-0x1e0]
     8b9:	48 89 8c c5 50 fe ff 	mov    QWORD PTR [rbp+rax*8-0x1b0],rcx
     8c0:	ff 
     8c1:	8b 85 20 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1e0]
     8c7:	83 c0 01             	add    eax,0x1
     8ca:	89 85 20 fe ff ff    	mov    DWORD PTR [rbp-0x1e0],eax
     8d0:	e9 b6 ff ff ff       	jmp    88b <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0xdb>
     8d5:	48 8b 85 60 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1a0]
     8dc:	48 8b 8d 58 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x1a8]
     8e3:	48 0f af 8d 50 fe ff 	imul   rcx,QWORD PTR [rbp-0x1b0]
     8ea:	ff 
     8eb:	48 01 c8             	add    rax,rcx
     8ee:	48 05 cd 2b 2a 00    	add    rax,0x2a2bcd
     8f4:	48 69 c0 54 20 00 00 	imul   rax,rax,0x2054
     8fb:	48 89 85 18 fe ff ff 	mov    QWORD PTR [rbp-0x1e8],rax
     902:	48 8b 85 50 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1b0]
     909:	48 8b 8d 70 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x190]
     910:	48 0f af 8d 68 fe ff 	imul   rcx,QWORD PTR [rbp-0x198]
     917:	ff 
     918:	48 2b 8d 78 fe ff ff 	sub    rcx,QWORD PTR [rbp-0x188]
     91f:	48 69 c9 3f 03 00 00 	imul   rcx,rcx,0x33f
     926:	48 01 c8             	add    rax,rcx
     929:	48 2d c1 00 00 00    	sub    rax,0xc1
     92f:	b9 02 00 00 00       	mov    ecx,0x2
     934:	48 99                	cqo
     936:	48 f7 f9             	idiv   rcx
     939:	48 89 85 10 fe ff ff 	mov    QWORD PTR [rbp-0x1f0],rax
     940:	48 8b 85 58 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1a8]
     947:	48 69 8d 98 fe ff ff 	imul   rcx,QWORD PTR [rbp-0x168],0xef
     94e:	ef 00 00 00 
     952:	48 01 c8             	add    rax,rcx
     955:	48 89 85 60 fd ff ff 	mov    QWORD PTR [rbp-0x2a0],rax
     95c:	48 8b 85 90 fe ff ff 	mov    rax,QWORD PTR [rbp-0x170]
     963:	48 8b 8d 88 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x178]
     96a:	48 03 8d 80 fe ff ff 	add    rcx,QWORD PTR [rbp-0x180]
     971:	48 0f af c1          	imul   rax,rcx
     975:	b9 01 07 01 00       	mov    ecx,0x10701
     97a:	48 99                	cqo
     97c:	48 f7 f9             	idiv   rcx
     97f:	48 8b 85 60 fd ff ff 	mov    rax,QWORD PTR [rbp-0x2a0]
     986:	48 01 d0             	add    rax,rdx
     989:	48 89 85 08 fe ff ff 	mov    QWORD PTR [rbp-0x1f8],rax
     990:	48 8b 85 60 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1a0]
     997:	48 8b 8d b0 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x150]
     99e:	48 8b 95 a8 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x158]
     9a5:	48 0f af 95 a0 fe ff 	imul   rdx,QWORD PTR [rbp-0x160]
     9ac:	ff 
     9ad:	48 01 d1             	add    rcx,rdx
     9b0:	48 2b 8d b8 fe ff ff 	sub    rcx,QWORD PTR [rbp-0x148]
     9b7:	48 6b c9 07          	imul   rcx,rcx,0x7
     9bb:	48 01 c8             	add    rax,rcx
     9be:	48 05 1f 06 00 00    	add    rax,0x61f
     9c4:	48 89 85 00 fe ff ff 	mov    QWORD PTR [rbp-0x200],rax
     9cb:	48 8b 85 78 fe ff ff 	mov    rax,QWORD PTR [rbp-0x188]
     9d2:	48 8b 8d e0 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x120]
     9d9:	48 03 8d d0 fe ff ff 	add    rcx,QWORD PTR [rbp-0x130]
     9e0:	48 2b 8d d8 fe ff ff 	sub    rcx,QWORD PTR [rbp-0x128]
     9e7:	48 8b 95 c8 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x138]
     9ee:	48 03 95 c0 fe ff ff 	add    rdx,QWORD PTR [rbp-0x140]
     9f5:	48 0f af ca          	imul   rcx,rdx
     9f9:	48 01 c8             	add    rax,rcx
     9fc:	48 05 89 64 01 00    	add    rax,0x16489
     a02:	48 89 85 f8 fd ff ff 	mov    QWORD PTR [rbp-0x208],rax
     a09:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
     a10:	48 0f af 85 70 fe ff 	imul   rax,QWORD PTR [rbp-0x190]
     a17:	ff 
     a18:	48 6b 8d f0 fe ff ff 	imul   rcx,QWORD PTR [rbp-0x110],0x3
     a1f:	03 
     a20:	48 0f af 8d e8 fe ff 	imul   rcx,QWORD PTR [rbp-0x118]
     a27:	ff 
     a28:	48 01 c8             	add    rax,rcx
     a2b:	48 2d a5 a7 00 00    	sub    rax,0xa7a5
     a31:	48 89 85 f0 fd ff ff 	mov    QWORD PTR [rbp-0x210],rax
     a38:	48 8b 85 a0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x160]
     a3f:	48 8b 8d 88 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x178]
     a46:	48 0f af 8d 68 fe ff 	imul   rcx,QWORD PTR [rbp-0x198]
     a4d:	ff 
     a4e:	48 01 c8             	add    rax,rcx
     a51:	48 2b 85 58 fe ff ff 	sub    rax,QWORD PTR [rbp-0x1a8]
     a58:	48 6b c0 03          	imul   rax,rax,0x3
     a5c:	48 89 85 e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],rax
     a63:	48 8b 85 c0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x140]
     a6a:	48 8b 8d 60 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x1a0]
     a71:	48 8b 95 c8 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x138]
     a78:	48 03 95 50 fe ff ff 	add    rdx,QWORD PTR [rbp-0x1b0]
     a7f:	48 0f af ca          	imul   rcx,rdx
     a83:	48 01 c8             	add    rax,rcx
     a86:	48 69 c0 95 03 00 00 	imul   rax,rax,0x395
     a8d:	b9 7d 5b 00 00       	mov    ecx,0x5b7d
     a92:	48 99                	cqo
     a94:	48 f7 f9             	idiv   rcx
     a97:	48 89 95 e0 fd ff ff 	mov    QWORD PTR [rbp-0x220],rdx
     a9e:	48 8b 85 90 fe ff ff 	mov    rax,QWORD PTR [rbp-0x170]
     aa5:	48 8b 8d a8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x158]
     aac:	48 0f af 8d 78 fe ff 	imul   rcx,QWORD PTR [rbp-0x188]
     ab3:	ff 
     ab4:	48 01 c8             	add    rax,rcx
     ab7:	48 2b 85 e8 fe ff ff 	sub    rax,QWORD PTR [rbp-0x118]
     abe:	48 6b c0 06          	imul   rax,rax,0x6
     ac2:	48 89 85 d8 fd ff ff 	mov    QWORD PTR [rbp-0x228],rax
     ac9:	48 8b 85 68 fe ff ff 	mov    rax,QWORD PTR [rbp-0x198]
     ad0:	48 8b 8d 80 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x180]
     ad7:	48 0f af 8d 98 fe ff 	imul   rcx,QWORD PTR [rbp-0x168]
     ade:	ff 
     adf:	48 01 c8             	add    rax,rcx
     ae2:	48 03 85 f0 fe ff ff 	add    rax,QWORD PTR [rbp-0x110]
     ae9:	b9 05 00 00 00       	mov    ecx,0x5
     aee:	48 99                	cqo
     af0:	48 f7 f9             	idiv   rcx
     af3:	48 89 85 d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],rax
     afa:	48 8b 85 50 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1b0]
     b01:	48 8b 8d e0 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x120]
     b08:	48 03 8d 88 fe ff ff 	add    rcx,QWORD PTR [rbp-0x178]
     b0f:	48 8b 95 b0 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x150]
     b16:	48 2b 95 58 fe ff ff 	sub    rdx,QWORD PTR [rbp-0x1a8]
     b1d:	48 0f af ca          	imul   rcx,rdx
     b21:	48 01 c8             	add    rax,rcx
     b24:	b9 45 6a 01 00       	mov    ecx,0x16a45
     b29:	48 99                	cqo
     b2b:	48 f7 f9             	idiv   rcx
     b2e:	48 89 95 c8 fd ff ff 	mov    QWORD PTR [rbp-0x238],rdx
     b35:	48 83 bd c8 fd ff ff 	cmp    QWORD PTR [rbp-0x238],0x0
     b3c:	00 
     b3d:	0f 8d 14 00 00 00    	jge    b57 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x3a7>
     b43:	48 8b 85 c8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x238]
     b4a:	48 05 45 6a 01 00    	add    rax,0x16a45
     b50:	48 89 85 c8 fd ff ff 	mov    QWORD PTR [rbp-0x238],rax
     b57:	48 8b 85 c8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x238]
     b5e:	48 89 85 c0 fd ff ff 	mov    QWORD PTR [rbp-0x240],rax
     b65:	48 8b 85 70 fe ff ff 	mov    rax,QWORD PTR [rbp-0x190]
     b6c:	48 03 85 78 fe ff ff 	add    rax,QWORD PTR [rbp-0x188]
     b73:	48 03 85 b8 fe ff ff 	add    rax,QWORD PTR [rbp-0x148]
     b7a:	48 2b 85 e8 fe ff ff 	sub    rax,QWORD PTR [rbp-0x118]
     b81:	48 69 c0 89 00 00 00 	imul   rax,rax,0x89
     b88:	b9 42 1c 00 00       	mov    ecx,0x1c42
     b8d:	48 99                	cqo
     b8f:	48 f7 f9             	idiv   rcx
     b92:	48 89 95 b8 fd ff ff 	mov    QWORD PTR [rbp-0x248],rdx
     b99:	48 8b 85 60 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1a0]
     ba0:	48 8b 8d 98 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x168]
     ba7:	48 8b 95 d0 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x130]
     bae:	48 0f af 95 d8 fe ff 	imul   rdx,QWORD PTR [rbp-0x128]
     bb5:	ff 
     bb6:	48 01 d1             	add    rcx,rdx
     bb9:	48 6b c9 47          	imul   rcx,rcx,0x47
     bbd:	48 01 c8             	add    rax,rcx
     bc0:	b9 c5 39 00 00       	mov    ecx,0x39c5
     bc5:	48 99                	cqo
     bc7:	48 f7 f9             	idiv   rcx
     bca:	48 89 95 b0 fd ff ff 	mov    QWORD PTR [rbp-0x250],rdx
     bd1:	48 8b 85 68 fe ff ff 	mov    rax,QWORD PTR [rbp-0x198]
     bd8:	48 03 85 b0 fe ff ff 	add    rax,QWORD PTR [rbp-0x150]
     bdf:	48 8b 8d c8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x138]
     be6:	48 0f af 8d 90 fe ff 	imul   rcx,QWORD PTR [rbp-0x170]
     bed:	ff 
     bee:	48 01 c8             	add    rax,rcx
     bf1:	48 2b 85 e0 fe ff ff 	sub    rax,QWORD PTR [rbp-0x120]
     bf8:	48 69 c0 8f 03 00 00 	imul   rax,rax,0x38f
     bff:	48 89 85 a8 fd ff ff 	mov    QWORD PTR [rbp-0x258],rax
     c06:	48 8b 85 c0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x140]
     c0d:	48 8b 8d 50 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x1b0]
     c14:	48 0f af 8d f0 fe ff 	imul   rcx,QWORD PTR [rbp-0x110]
     c1b:	ff 
     c1c:	48 01 c8             	add    rax,rcx
     c1f:	48 8b 8d a8 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x158]
     c26:	48 0f af 8d 88 fe ff 	imul   rcx,QWORD PTR [rbp-0x178]
     c2d:	ff 
     c2e:	48 29 c8             	sub    rax,rcx
     c31:	48 89 85 a0 fd ff ff 	mov    QWORD PTR [rbp-0x260],rax
     c38:	48 8b 85 f8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x108]
     c3f:	48 8b 8d 00 ff ff ff 	mov    rcx,QWORD PTR [rbp-0x100]
     c46:	48 0f af 8d 08 ff ff 	imul   rcx,QWORD PTR [rbp-0xf8]
     c4d:	ff 
     c4e:	48 01 c8             	add    rax,rcx
     c51:	48 2b 85 10 ff ff ff 	sub    rax,QWORD PTR [rbp-0xf0]
     c58:	48 03 85 18 ff ff ff 	add    rax,QWORD PTR [rbp-0xe8]
     c5f:	48 89 85 98 fd ff ff 	mov    QWORD PTR [rbp-0x268],rax
     c66:	48 8b 85 20 ff ff ff 	mov    rax,QWORD PTR [rbp-0xe0]
     c6d:	48 03 85 28 ff ff ff 	add    rax,QWORD PTR [rbp-0xd8]
     c74:	48 6b c0 07          	imul   rax,rax,0x7
     c78:	48 6b 8d 30 ff ff ff 	imul   rcx,QWORD PTR [rbp-0xd0],0x3
     c7f:	03 
     c80:	48 29 c8             	sub    rax,rcx
     c83:	48 03 85 38 ff ff ff 	add    rax,QWORD PTR [rbp-0xc8]
     c8a:	48 89 85 90 fd ff ff 	mov    QWORD PTR [rbp-0x270],rax
     c91:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
     c98:	48 0f af 85 48 ff ff 	imul   rax,QWORD PTR [rbp-0xb8]
     c9f:	ff 
     ca0:	48 03 85 50 ff ff ff 	add    rax,QWORD PTR [rbp-0xb0]
     ca7:	48 2b 85 58 ff ff ff 	sub    rax,QWORD PTR [rbp-0xa8]
     cae:	48 6b 8d 60 ff ff ff 	imul   rcx,QWORD PTR [rbp-0xa0],0x5
     cb5:	05 
     cb6:	48 01 c8             	add    rax,rcx
     cb9:	48 89 85 88 fd ff ff 	mov    QWORD PTR [rbp-0x278],rax
     cc0:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
     cc7:	48 03 85 70 ff ff ff 	add    rax,QWORD PTR [rbp-0x90]
     cce:	48 8b 8d 78 ff ff ff 	mov    rcx,QWORD PTR [rbp-0x88]
     cd5:	48 0f af 4d 80       	imul   rcx,QWORD PTR [rbp-0x80]
     cda:	48 29 c8             	sub    rax,rcx
     cdd:	b9 39 30 00 00       	mov    ecx,0x3039
     ce2:	48 99                	cqo
     ce4:	48 f7 f9             	idiv   rcx
     ce7:	48 89 95 80 fd ff ff 	mov    QWORD PTR [rbp-0x280],rdx
     cee:	48 83 bd 80 fd ff ff 	cmp    QWORD PTR [rbp-0x280],0x0
     cf5:	00 
     cf6:	0f 8d 14 00 00 00    	jge    d10 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x560>
     cfc:	48 8b 85 80 fd ff ff 	mov    rax,QWORD PTR [rbp-0x280]
     d03:	48 05 39 30 00 00    	add    rax,0x3039
     d09:	48 89 85 80 fd ff ff 	mov    QWORD PTR [rbp-0x280],rax
     d10:	48 8b 85 80 fd ff ff 	mov    rax,QWORD PTR [rbp-0x280]
     d17:	48 89 85 78 fd ff ff 	mov    QWORD PTR [rbp-0x288],rax
     d1e:	48 c7 85 70 fd ff ff 	mov    QWORD PTR [rbp-0x290],0x0
     d25:	00 00 00 00 
     d29:	c7 85 6c fd ff ff 27 	mov    DWORD PTR [rbp-0x294],0x27
     d30:	00 00 00 
     d33:	83 bd 6c fd ff ff 34 	cmp    DWORD PTR [rbp-0x294],0x34
     d3a:	0f 8d 31 00 00 00    	jge    d71 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x5c1>
     d40:	48 63 85 6c fd ff ff 	movsxd rax,DWORD PTR [rbp-0x294]
     d47:	48 8b 84 c5 50 fe ff 	mov    rax,QWORD PTR [rbp+rax*8-0x1b0]
     d4e:	ff 
     d4f:	48 03 85 70 fd ff ff 	add    rax,QWORD PTR [rbp-0x290]
     d56:	48 89 85 70 fd ff ff 	mov    QWORD PTR [rbp-0x290],rax
     d5d:	8b 85 6c fd ff ff    	mov    eax,DWORD PTR [rbp-0x294]
     d63:	83 c0 01             	add    eax,0x1
     d66:	89 85 6c fd ff ff    	mov    DWORD PTR [rbp-0x294],eax
     d6c:	e9 c2 ff ff ff       	jmp    d33 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x583>
     d71:	31 c0                	xor    eax,eax
     d73:	48 b9 14 67 bd 56 05 	movabs rcx,0x556bd6714
     d7a:	00 00 00 
     d7d:	48 39 8d 18 fe ff ff 	cmp    QWORD PTR [rbp-0x1e8],rcx
     d84:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     d8a:	0f 85 d6 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     d90:	31 c0                	xor    eax,eax
     d92:	48 81 bd 10 fe ff ff 	cmp    QWORD PTR [rbp-0x1f0],0x2c3886
     d99:	86 38 2c 00 
     d9d:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     da3:	0f 85 bd 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     da9:	31 c0                	xor    eax,eax
     dab:	48 81 bd 08 fe ff ff 	cmp    QWORD PTR [rbp-0x1f8],0x85df
     db2:	df 85 00 00 
     db6:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     dbc:	0f 85 a4 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     dc2:	31 c0                	xor    eax,eax
     dc4:	48 81 bd 00 fe ff ff 	cmp    QWORD PTR [rbp-0x200],0x84fc
     dcb:	fc 84 00 00 
     dcf:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     dd5:	0f 85 8b 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     ddb:	31 c0                	xor    eax,eax
     ddd:	48 81 bd f8 fd ff ff 	cmp    QWORD PTR [rbp-0x208],0x1a1b5
     de4:	b5 a1 01 00 
     de8:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     dee:	0f 85 72 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     df4:	31 c0                	xor    eax,eax
     df6:	48 81 bd f0 fd ff ff 	cmp    QWORD PTR [rbp-0x210],0xffffffffffffaa77
     dfd:	77 aa ff ff 
     e01:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     e07:	0f 85 59 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     e0d:	31 c0                	xor    eax,eax
     e0f:	48 81 bd e8 fd ff ff 	cmp    QWORD PTR [rbp-0x218],0x4f86
     e16:	86 4f 00 00 
     e1a:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     e20:	0f 85 40 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     e26:	31 c0                	xor    eax,eax
     e28:	48 81 bd e0 fd ff ff 	cmp    QWORD PTR [rbp-0x220],0x2a13
     e2f:	13 2a 00 00 
     e33:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     e39:	0f 85 27 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     e3f:	31 c0                	xor    eax,eax
     e41:	48 81 bd d8 fd ff ff 	cmp    QWORD PTR [rbp-0x228],0x7da0
     e48:	a0 7d 00 00 
     e4c:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     e52:	0f 85 0e 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     e58:	31 c0                	xor    eax,eax
     e5a:	48 81 bd d0 fd ff ff 	cmp    QWORD PTR [rbp-0x230],0x493
     e61:	93 04 00 00 
     e65:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     e6b:	0f 85 f5 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     e71:	31 c0                	xor    eax,eax
     e73:	48 81 bd c0 fd ff ff 	cmp    QWORD PTR [rbp-0x240],0x167e6
     e7a:	e6 67 01 00 
     e7e:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     e84:	0f 85 dc 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     e8a:	31 c0                	xor    eax,eax
     e8c:	48 81 bd b8 fd ff ff 	cmp    QWORD PTR [rbp-0x248],0x18d4
     e93:	d4 18 00 00 
     e97:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     e9d:	0f 85 c3 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     ea3:	31 c0                	xor    eax,eax
     ea5:	48 81 bd b0 fd ff ff 	cmp    QWORD PTR [rbp-0x250],0xe68
     eac:	68 0e 00 00 
     eb0:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     eb6:	0f 85 aa 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     ebc:	31 c0                	xor    eax,eax
     ebe:	48 81 bd a8 fd ff ff 	cmp    QWORD PTR [rbp-0x258],0x7e8d70
     ec5:	70 8d 7e 00 
     ec9:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     ecf:	0f 85 91 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     ed5:	31 c0                	xor    eax,eax
     ed7:	48 81 bd a0 fd ff ff 	cmp    QWORD PTR [rbp-0x260],0xfffffffffffff98c
     ede:	8c f9 ff ff 
     ee2:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     ee8:	0f 85 78 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     eee:	31 c0                	xor    eax,eax
     ef0:	48 81 bd 98 fd ff ff 	cmp    QWORD PTR [rbp-0x268],0x1527
     ef7:	27 15 00 00 
     efb:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     f01:	0f 85 5f 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     f07:	31 c0                	xor    eax,eax
     f09:	48 81 bd 90 fd ff ff 	cmp    QWORD PTR [rbp-0x270],0x401
     f10:	01 04 00 00 
     f14:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     f1a:	0f 85 46 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     f20:	31 c0                	xor    eax,eax
     f22:	48 81 bd 88 fd ff ff 	cmp    QWORD PTR [rbp-0x278],0x2ba5
     f29:	a5 2b 00 00 
     f2d:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     f33:	0f 85 2d 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     f39:	31 c0                	xor    eax,eax
     f3b:	48 81 bd 78 fd ff ff 	cmp    QWORD PTR [rbp-0x288],0xdc5
     f42:	c5 0d 00 00 
     f46:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     f4c:	0f 85 14 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     f52:	48 81 bd 70 fd ff ff 	cmp    QWORD PTR [rbp-0x290],0x4af
     f59:	af 04 00 00 
     f5d:	0f 94 c0             	sete   al
     f60:	88 85 5f fd ff ff    	mov    BYTE PTR [rbp-0x2a1],al
     f66:	8a 85 5f fd ff ff    	mov    al,BYTE PTR [rbp-0x2a1]
     f6c:	24 01                	and    al,0x1
     f6e:	88 85 6b fd ff ff    	mov    BYTE PTR [rbp-0x295],al
     f74:	48 8b bd 40 fe ff ff 	mov    rdi,QWORD PTR [rbp-0x1c0]
     f7b:	48 8b b5 30 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x1d0]
     f82:	48 8b 95 28 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x1d8]
     f89:	e8 42 01 00 00       	call   10d0 <_ZN7_JNIEnv21ReleaseStringUTFCharsEP8_jstringPKc@plt>
     f8e:	8a 85 6b fd ff ff    	mov    al,BYTE PTR [rbp-0x295]
     f94:	88 85 4f fe ff ff    	mov    BYTE PTR [rbp-0x1b1],al
     f9a:	8a 85 4f fe ff ff    	mov    al,BYTE PTR [rbp-0x1b1]
     fa0:	88 85 5e fd ff ff    	mov    BYTE PTR [rbp-0x2a2],al
     fa6:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
     fad:	00 00 
     faf:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
     fb3:	48 39 c8             	cmp    rax,rcx
     fb6:	0f 85 12 00 00 00    	jne    fce <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x81e>
     fbc:	8a 85 5e fd ff ff    	mov    al,BYTE PTR [rbp-0x2a2]
     fc2:	0f b6 c0             	movzx  eax,al
     fc5:	48 81 c4 b0 02 00 00 	add    rsp,0x2b0
     fcc:	5d                   	pop    rbp
     fcd:	c3                   	ret
     fce:	e8 0d 01 00 00       	call   10e0 <__stack_chk_fail@plt>
     fd3:	cc                   	int3
     fd4:	cc                   	int3
     fd5:	cc                   	int3
     fd6:	cc                   	int3
     fd7:	cc                   	int3
     fd8:	cc                   	int3
     fd9:	cc                   	int3
     fda:	cc                   	int3
     fdb:	cc                   	int3
     fdc:	cc                   	int3
     fdd:	cc                   	int3
     fde:	cc                   	int3
     fdf:	cc                   	int3

0000000000000fe0 <_ZN7_JNIEnv17GetStringUTFCharsEP8_jstringPh@@Base>:
     fe0:	55                   	push   rbp
     fe1:	48 89 e5             	mov    rbp,rsp
     fe4:	48 83 ec 20          	sub    rsp,0x20
     fe8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
     fec:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
     ff0:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
     ff4:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
     ff8:	48 8b 07             	mov    rax,QWORD PTR [rdi]
     ffb:	48 8b 80 48 05 00 00 	mov    rax,QWORD PTR [rax+0x548]
    1002:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
    1006:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    100a:	ff d0                	call   rax
    100c:	48 83 c4 20          	add    rsp,0x20
    1010:	5d                   	pop    rbp
    1011:	c3                   	ret
    1012:	cc                   	int3
    1013:	cc                   	int3
    1014:	cc                   	int3
    1015:	cc                   	int3
    1016:	cc                   	int3
    1017:	cc                   	int3
    1018:	cc                   	int3
    1019:	cc                   	int3
    101a:	cc                   	int3
    101b:	cc                   	int3
    101c:	cc                   	int3
    101d:	cc                   	int3
    101e:	cc                   	int3
    101f:	cc                   	int3

0000000000001020 <_ZN7_JNIEnv21ReleaseStringUTFCharsEP8_jstringPKc@@Base>:
    1020:	55                   	push   rbp
    1021:	48 89 e5             	mov    rbp,rsp
    1024:	48 83 ec 20          	sub    rsp,0x20
    1028:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    102c:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    1030:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
    1034:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
    1038:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    103b:	48 8b 80 50 05 00 00 	mov    rax,QWORD PTR [rax+0x550]
    1042:	48 8b 75 f0          	mov    rsi,QWORD PTR [rbp-0x10]
    1046:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    104a:	ff d0                	call   rax
    104c:	48 83 c4 20          	add    rsp,0x20
    1050:	5d                   	pop    rbp
    1051:	c3                   	ret
    1052:	cc                   	int3
    1053:	cc                   	int3
    1054:	cc                   	int3
    1055:	cc                   	int3
    1056:	cc                   	int3
    1057:	cc                   	int3
    1058:	cc                   	int3
    1059:	cc                   	int3
    105a:	cc                   	int3
    105b:	cc                   	int3
    105c:	cc                   	int3
    105d:	cc                   	int3
    105e:	cc                   	int3
    105f:	cc                   	int3
    1060:	55                   	push   rbp
    1061:	48 89 e5             	mov    rbp,rsp
    1064:	40 88 f8             	mov    al,dil
    1067:	88 45 ff             	mov    BYTE PTR [rbp-0x1],al
    106a:	48 0f be 45 ff       	movsx  rax,BYTE PTR [rbp-0x1]
    106f:	5d                   	pop    rbp
    1070:	c3                   	ret
    1071:	cc                   	int3
    1072:	cc                   	int3
    1073:	cc                   	int3

Disassembly of section .plt:
