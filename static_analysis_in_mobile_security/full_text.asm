
native_task3/libtask4native.so:     file format elf64-x86-64


Disassembly of section .text:

0000000000000740 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base-0x70>:
     740:	48 8d 3d a9 19 00 00 	lea    0x19a9(%rip),%rdi        # 20f0 <__stack_chk_fail@plt+0x1010>
     747:	e9 44 09 00 00       	jmp    1090 <__cxa_finalize@plt>
     74c:	0f 1f 40 00          	nopl   0x0(%rax)
     750:	c3                   	ret
     751:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
     758:	0f 1f 84 00 00 00 00 
     75f:	00 
     760:	e9 eb ff ff ff       	jmp    750 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base-0x60>
     765:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
     76c:	00 00 00 00 
     770:	48 85 ff             	test   %rdi,%rdi
     773:	74 02                	je     777 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base-0x39>
     775:	ff e7                	jmp    *%rdi
     777:	c3                   	ret
     778:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
     77f:	00 
     780:	48 89 fe             	mov    %rdi,%rsi
     783:	48 8d 3d e6 ff ff ff 	lea    -0x1a(%rip),%rdi        # 770 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base-0x40>
     78a:	48 8d 15 5f 19 00 00 	lea    0x195f(%rip),%rdx        # 20f0 <__stack_chk_fail@plt+0x1010>
     791:	e9 0a 09 00 00       	jmp    10a0 <__cxa_atexit@plt>
     796:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
     79d:	00 00 00 
     7a0:	48 8d 0d 49 19 00 00 	lea    0x1949(%rip),%rcx        # 20f0 <__stack_chk_fail@plt+0x1010>
     7a7:	e9 04 09 00 00       	jmp    10b0 <__register_atfork@plt>
     7ac:	cc                   	int3
     7ad:	cc                   	int3
     7ae:	cc                   	int3
     7af:	cc                   	int3

00000000000007b0 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base>:
     7b0:	55                   	push   %rbp
     7b1:	48 89 e5             	mov    %rsp,%rbp
     7b4:	48 81 ec b0 02 00 00 	sub    $0x2b0,%rsp
     7bb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     7c2:	00 00 
     7c4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
     7c8:	48 89 bd 40 fe ff ff 	mov    %rdi,-0x1c0(%rbp)
     7cf:	48 89 b5 38 fe ff ff 	mov    %rsi,-0x1c8(%rbp)
     7d6:	48 89 95 30 fe ff ff 	mov    %rdx,-0x1d0(%rbp)
     7dd:	48 8b bd 40 fe ff ff 	mov    -0x1c0(%rbp),%rdi
     7e4:	48 8b b5 30 fe ff ff 	mov    -0x1d0(%rbp),%rsi
     7eb:	31 c0                	xor    %eax,%eax
     7ed:	89 c2                	mov    %eax,%edx
     7ef:	e8 cc 08 00 00       	call   10c0 <_ZN7_JNIEnv17GetStringUTFCharsEP8_jstringPh@plt>
     7f4:	48 89 85 28 fe ff ff 	mov    %rax,-0x1d8(%rbp)
     7fb:	48 83 bd 28 fe ff ff 	cmpq   $0x0,-0x1d8(%rbp)
     802:	00 
     803:	0f 85 0c 00 00 00    	jne    815 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x65>
     809:	c6 85 4f fe ff ff 00 	movb   $0x0,-0x1b1(%rbp)
     810:	e9 85 07 00 00       	jmp    f9a <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7ea>
     815:	c7 85 24 fe ff ff 00 	movl   $0x0,-0x1dc(%rbp)
     81c:	00 00 00 
     81f:	48 8b 85 28 fe ff ff 	mov    -0x1d8(%rbp),%rax
     826:	48 63 8d 24 fe ff ff 	movslq -0x1dc(%rbp),%rcx
     82d:	0f be 04 08          	movsbl (%rax,%rcx,1),%eax
     831:	83 f8 00             	cmp    $0x0,%eax
     834:	0f 84 14 00 00 00    	je     84e <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x9e>
     83a:	8b 85 24 fe ff ff    	mov    -0x1dc(%rbp),%eax
     840:	83 c0 01             	add    $0x1,%eax
     843:	89 85 24 fe ff ff    	mov    %eax,-0x1dc(%rbp)
     849:	e9 d1 ff ff ff       	jmp    81f <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x6f>
     84e:	83 bd 24 fe ff ff 34 	cmpl   $0x34,-0x1dc(%rbp)
     855:	0f 84 26 00 00 00    	je     881 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0xd1>
     85b:	48 8b bd 40 fe ff ff 	mov    -0x1c0(%rbp),%rdi
     862:	48 8b b5 30 fe ff ff 	mov    -0x1d0(%rbp),%rsi
     869:	48 8b 95 28 fe ff ff 	mov    -0x1d8(%rbp),%rdx
     870:	e8 5b 08 00 00       	call   10d0 <_ZN7_JNIEnv21ReleaseStringUTFCharsEP8_jstringPKc@plt>
     875:	c6 85 4f fe ff ff 00 	movb   $0x0,-0x1b1(%rbp)
     87c:	e9 19 07 00 00       	jmp    f9a <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7ea>
     881:	c7 85 20 fe ff ff 00 	movl   $0x0,-0x1e0(%rbp)
     888:	00 00 00 
     88b:	83 bd 20 fe ff ff 34 	cmpl   $0x34,-0x1e0(%rbp)
     892:	0f 8d 3d 00 00 00    	jge    8d5 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x125>
     898:	48 8b 85 28 fe ff ff 	mov    -0x1d8(%rbp),%rax
     89f:	48 63 8d 20 fe ff ff 	movslq -0x1e0(%rbp),%rcx
     8a6:	0f be 3c 08          	movsbl (%rax,%rcx,1),%edi
     8aa:	e8 b1 07 00 00       	call   1060 <_ZN7_JNIEnv21ReleaseStringUTFCharsEP8_jstringPKc@@Base+0x40>
     8af:	48 89 c1             	mov    %rax,%rcx
     8b2:	48 63 85 20 fe ff ff 	movslq -0x1e0(%rbp),%rax
     8b9:	48 89 8c c5 50 fe ff 	mov    %rcx,-0x1b0(%rbp,%rax,8)
     8c0:	ff 
     8c1:	8b 85 20 fe ff ff    	mov    -0x1e0(%rbp),%eax
     8c7:	83 c0 01             	add    $0x1,%eax
     8ca:	89 85 20 fe ff ff    	mov    %eax,-0x1e0(%rbp)
     8d0:	e9 b6 ff ff ff       	jmp    88b <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0xdb>
     8d5:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
     8dc:	48 8b 8d 58 fe ff ff 	mov    -0x1a8(%rbp),%rcx
     8e3:	48 0f af 8d 50 fe ff 	imul   -0x1b0(%rbp),%rcx
     8ea:	ff 
     8eb:	48 01 c8             	add    %rcx,%rax
     8ee:	48 05 cd 2b 2a 00    	add    $0x2a2bcd,%rax
     8f4:	48 69 c0 54 20 00 00 	imul   $0x2054,%rax,%rax
     8fb:	48 89 85 18 fe ff ff 	mov    %rax,-0x1e8(%rbp)
     902:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
     909:	48 8b 8d 70 fe ff ff 	mov    -0x190(%rbp),%rcx
     910:	48 0f af 8d 68 fe ff 	imul   -0x198(%rbp),%rcx
     917:	ff 
     918:	48 2b 8d 78 fe ff ff 	sub    -0x188(%rbp),%rcx
     91f:	48 69 c9 3f 03 00 00 	imul   $0x33f,%rcx,%rcx
     926:	48 01 c8             	add    %rcx,%rax
     929:	48 2d c1 00 00 00    	sub    $0xc1,%rax
     92f:	b9 02 00 00 00       	mov    $0x2,%ecx
     934:	48 99                	cqto
     936:	48 f7 f9             	idiv   %rcx
     939:	48 89 85 10 fe ff ff 	mov    %rax,-0x1f0(%rbp)
     940:	48 8b 85 58 fe ff ff 	mov    -0x1a8(%rbp),%rax
     947:	48 69 8d 98 fe ff ff 	imul   $0xef,-0x168(%rbp),%rcx
     94e:	ef 00 00 00 
     952:	48 01 c8             	add    %rcx,%rax
     955:	48 89 85 60 fd ff ff 	mov    %rax,-0x2a0(%rbp)
     95c:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
     963:	48 8b 8d 88 fe ff ff 	mov    -0x178(%rbp),%rcx
     96a:	48 03 8d 80 fe ff ff 	add    -0x180(%rbp),%rcx
     971:	48 0f af c1          	imul   %rcx,%rax
     975:	b9 01 07 01 00       	mov    $0x10701,%ecx
     97a:	48 99                	cqto
     97c:	48 f7 f9             	idiv   %rcx
     97f:	48 8b 85 60 fd ff ff 	mov    -0x2a0(%rbp),%rax
     986:	48 01 d0             	add    %rdx,%rax
     989:	48 89 85 08 fe ff ff 	mov    %rax,-0x1f8(%rbp)
     990:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
     997:	48 8b 8d b0 fe ff ff 	mov    -0x150(%rbp),%rcx
     99e:	48 8b 95 a8 fe ff ff 	mov    -0x158(%rbp),%rdx
     9a5:	48 0f af 95 a0 fe ff 	imul   -0x160(%rbp),%rdx
     9ac:	ff 
     9ad:	48 01 d1             	add    %rdx,%rcx
     9b0:	48 2b 8d b8 fe ff ff 	sub    -0x148(%rbp),%rcx
     9b7:	48 6b c9 07          	imul   $0x7,%rcx,%rcx
     9bb:	48 01 c8             	add    %rcx,%rax
     9be:	48 05 1f 06 00 00    	add    $0x61f,%rax
     9c4:	48 89 85 00 fe ff ff 	mov    %rax,-0x200(%rbp)
     9cb:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
     9d2:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
     9d9:	48 03 8d d0 fe ff ff 	add    -0x130(%rbp),%rcx
     9e0:	48 2b 8d d8 fe ff ff 	sub    -0x128(%rbp),%rcx
     9e7:	48 8b 95 c8 fe ff ff 	mov    -0x138(%rbp),%rdx
     9ee:	48 03 95 c0 fe ff ff 	add    -0x140(%rbp),%rdx
     9f5:	48 0f af ca          	imul   %rdx,%rcx
     9f9:	48 01 c8             	add    %rcx,%rax
     9fc:	48 05 89 64 01 00    	add    $0x16489,%rax
     a02:	48 89 85 f8 fd ff ff 	mov    %rax,-0x208(%rbp)
     a09:	48 8b 85 98 fe ff ff 	mov    -0x168(%rbp),%rax
     a10:	48 0f af 85 70 fe ff 	imul   -0x190(%rbp),%rax
     a17:	ff 
     a18:	48 6b 8d f0 fe ff ff 	imul   $0x3,-0x110(%rbp),%rcx
     a1f:	03 
     a20:	48 0f af 8d e8 fe ff 	imul   -0x118(%rbp),%rcx
     a27:	ff 
     a28:	48 01 c8             	add    %rcx,%rax
     a2b:	48 2d a5 a7 00 00    	sub    $0xa7a5,%rax
     a31:	48 89 85 f0 fd ff ff 	mov    %rax,-0x210(%rbp)
     a38:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
     a3f:	48 8b 8d 88 fe ff ff 	mov    -0x178(%rbp),%rcx
     a46:	48 0f af 8d 68 fe ff 	imul   -0x198(%rbp),%rcx
     a4d:	ff 
     a4e:	48 01 c8             	add    %rcx,%rax
     a51:	48 2b 85 58 fe ff ff 	sub    -0x1a8(%rbp),%rax
     a58:	48 6b c0 03          	imul   $0x3,%rax,%rax
     a5c:	48 89 85 e8 fd ff ff 	mov    %rax,-0x218(%rbp)
     a63:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
     a6a:	48 8b 8d 60 fe ff ff 	mov    -0x1a0(%rbp),%rcx
     a71:	48 8b 95 c8 fe ff ff 	mov    -0x138(%rbp),%rdx
     a78:	48 03 95 50 fe ff ff 	add    -0x1b0(%rbp),%rdx
     a7f:	48 0f af ca          	imul   %rdx,%rcx
     a83:	48 01 c8             	add    %rcx,%rax
     a86:	48 69 c0 95 03 00 00 	imul   $0x395,%rax,%rax
     a8d:	b9 7d 5b 00 00       	mov    $0x5b7d,%ecx
     a92:	48 99                	cqto
     a94:	48 f7 f9             	idiv   %rcx
     a97:	48 89 95 e0 fd ff ff 	mov    %rdx,-0x220(%rbp)
     a9e:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
     aa5:	48 8b 8d a8 fe ff ff 	mov    -0x158(%rbp),%rcx
     aac:	48 0f af 8d 78 fe ff 	imul   -0x188(%rbp),%rcx
     ab3:	ff 
     ab4:	48 01 c8             	add    %rcx,%rax
     ab7:	48 2b 85 e8 fe ff ff 	sub    -0x118(%rbp),%rax
     abe:	48 6b c0 06          	imul   $0x6,%rax,%rax
     ac2:	48 89 85 d8 fd ff ff 	mov    %rax,-0x228(%rbp)
     ac9:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
     ad0:	48 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%rcx
     ad7:	48 0f af 8d 98 fe ff 	imul   -0x168(%rbp),%rcx
     ade:	ff 
     adf:	48 01 c8             	add    %rcx,%rax
     ae2:	48 03 85 f0 fe ff ff 	add    -0x110(%rbp),%rax
     ae9:	b9 05 00 00 00       	mov    $0x5,%ecx
     aee:	48 99                	cqto
     af0:	48 f7 f9             	idiv   %rcx
     af3:	48 89 85 d0 fd ff ff 	mov    %rax,-0x230(%rbp)
     afa:	48 8b 85 50 fe ff ff 	mov    -0x1b0(%rbp),%rax
     b01:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
     b08:	48 03 8d 88 fe ff ff 	add    -0x178(%rbp),%rcx
     b0f:	48 8b 95 b0 fe ff ff 	mov    -0x150(%rbp),%rdx
     b16:	48 2b 95 58 fe ff ff 	sub    -0x1a8(%rbp),%rdx
     b1d:	48 0f af ca          	imul   %rdx,%rcx
     b21:	48 01 c8             	add    %rcx,%rax
     b24:	b9 45 6a 01 00       	mov    $0x16a45,%ecx
     b29:	48 99                	cqto
     b2b:	48 f7 f9             	idiv   %rcx
     b2e:	48 89 95 c8 fd ff ff 	mov    %rdx,-0x238(%rbp)
     b35:	48 83 bd c8 fd ff ff 	cmpq   $0x0,-0x238(%rbp)
     b3c:	00 
     b3d:	0f 8d 14 00 00 00    	jge    b57 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x3a7>
     b43:	48 8b 85 c8 fd ff ff 	mov    -0x238(%rbp),%rax
     b4a:	48 05 45 6a 01 00    	add    $0x16a45,%rax
     b50:	48 89 85 c8 fd ff ff 	mov    %rax,-0x238(%rbp)
     b57:	48 8b 85 c8 fd ff ff 	mov    -0x238(%rbp),%rax
     b5e:	48 89 85 c0 fd ff ff 	mov    %rax,-0x240(%rbp)
     b65:	48 8b 85 70 fe ff ff 	mov    -0x190(%rbp),%rax
     b6c:	48 03 85 78 fe ff ff 	add    -0x188(%rbp),%rax
     b73:	48 03 85 b8 fe ff ff 	add    -0x148(%rbp),%rax
     b7a:	48 2b 85 e8 fe ff ff 	sub    -0x118(%rbp),%rax
     b81:	48 69 c0 89 00 00 00 	imul   $0x89,%rax,%rax
     b88:	b9 42 1c 00 00       	mov    $0x1c42,%ecx
     b8d:	48 99                	cqto
     b8f:	48 f7 f9             	idiv   %rcx
     b92:	48 89 95 b8 fd ff ff 	mov    %rdx,-0x248(%rbp)
     b99:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
     ba0:	48 8b 8d 98 fe ff ff 	mov    -0x168(%rbp),%rcx
     ba7:	48 8b 95 d0 fe ff ff 	mov    -0x130(%rbp),%rdx
     bae:	48 0f af 95 d8 fe ff 	imul   -0x128(%rbp),%rdx
     bb5:	ff 
     bb6:	48 01 d1             	add    %rdx,%rcx
     bb9:	48 6b c9 47          	imul   $0x47,%rcx,%rcx
     bbd:	48 01 c8             	add    %rcx,%rax
     bc0:	b9 c5 39 00 00       	mov    $0x39c5,%ecx
     bc5:	48 99                	cqto
     bc7:	48 f7 f9             	idiv   %rcx
     bca:	48 89 95 b0 fd ff ff 	mov    %rdx,-0x250(%rbp)
     bd1:	48 8b 85 68 fe ff ff 	mov    -0x198(%rbp),%rax
     bd8:	48 03 85 b0 fe ff ff 	add    -0x150(%rbp),%rax
     bdf:	48 8b 8d c8 fe ff ff 	mov    -0x138(%rbp),%rcx
     be6:	48 0f af 8d 90 fe ff 	imul   -0x170(%rbp),%rcx
     bed:	ff 
     bee:	48 01 c8             	add    %rcx,%rax
     bf1:	48 2b 85 e0 fe ff ff 	sub    -0x120(%rbp),%rax
     bf8:	48 69 c0 8f 03 00 00 	imul   $0x38f,%rax,%rax
     bff:	48 89 85 a8 fd ff ff 	mov    %rax,-0x258(%rbp)
     c06:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
     c0d:	48 8b 8d 50 fe ff ff 	mov    -0x1b0(%rbp),%rcx
     c14:	48 0f af 8d f0 fe ff 	imul   -0x110(%rbp),%rcx
     c1b:	ff 
     c1c:	48 01 c8             	add    %rcx,%rax
     c1f:	48 8b 8d a8 fe ff ff 	mov    -0x158(%rbp),%rcx
     c26:	48 0f af 8d 88 fe ff 	imul   -0x178(%rbp),%rcx
     c2d:	ff 
     c2e:	48 29 c8             	sub    %rcx,%rax
     c31:	48 89 85 a0 fd ff ff 	mov    %rax,-0x260(%rbp)
     c38:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
     c3f:	48 8b 8d 00 ff ff ff 	mov    -0x100(%rbp),%rcx
     c46:	48 0f af 8d 08 ff ff 	imul   -0xf8(%rbp),%rcx
     c4d:	ff 
     c4e:	48 01 c8             	add    %rcx,%rax
     c51:	48 2b 85 10 ff ff ff 	sub    -0xf0(%rbp),%rax
     c58:	48 03 85 18 ff ff ff 	add    -0xe8(%rbp),%rax
     c5f:	48 89 85 98 fd ff ff 	mov    %rax,-0x268(%rbp)
     c66:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
     c6d:	48 03 85 28 ff ff ff 	add    -0xd8(%rbp),%rax
     c74:	48 6b c0 07          	imul   $0x7,%rax,%rax
     c78:	48 6b 8d 30 ff ff ff 	imul   $0x3,-0xd0(%rbp),%rcx
     c7f:	03 
     c80:	48 29 c8             	sub    %rcx,%rax
     c83:	48 03 85 38 ff ff ff 	add    -0xc8(%rbp),%rax
     c8a:	48 89 85 90 fd ff ff 	mov    %rax,-0x270(%rbp)
     c91:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
     c98:	48 0f af 85 48 ff ff 	imul   -0xb8(%rbp),%rax
     c9f:	ff 
     ca0:	48 03 85 50 ff ff ff 	add    -0xb0(%rbp),%rax
     ca7:	48 2b 85 58 ff ff ff 	sub    -0xa8(%rbp),%rax
     cae:	48 6b 8d 60 ff ff ff 	imul   $0x5,-0xa0(%rbp),%rcx
     cb5:	05 
     cb6:	48 01 c8             	add    %rcx,%rax
     cb9:	48 89 85 88 fd ff ff 	mov    %rax,-0x278(%rbp)
     cc0:	48 8b 85 68 ff ff ff 	mov    -0x98(%rbp),%rax
     cc7:	48 03 85 70 ff ff ff 	add    -0x90(%rbp),%rax
     cce:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
     cd5:	48 0f af 4d 80       	imul   -0x80(%rbp),%rcx
     cda:	48 29 c8             	sub    %rcx,%rax
     cdd:	b9 39 30 00 00       	mov    $0x3039,%ecx
     ce2:	48 99                	cqto
     ce4:	48 f7 f9             	idiv   %rcx
     ce7:	48 89 95 80 fd ff ff 	mov    %rdx,-0x280(%rbp)
     cee:	48 83 bd 80 fd ff ff 	cmpq   $0x0,-0x280(%rbp)
     cf5:	00 
     cf6:	0f 8d 14 00 00 00    	jge    d10 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x560>
     cfc:	48 8b 85 80 fd ff ff 	mov    -0x280(%rbp),%rax
     d03:	48 05 39 30 00 00    	add    $0x3039,%rax
     d09:	48 89 85 80 fd ff ff 	mov    %rax,-0x280(%rbp)
     d10:	48 8b 85 80 fd ff ff 	mov    -0x280(%rbp),%rax
     d17:	48 89 85 78 fd ff ff 	mov    %rax,-0x288(%rbp)
     d1e:	48 c7 85 70 fd ff ff 	movq   $0x0,-0x290(%rbp)
     d25:	00 00 00 00 
     d29:	c7 85 6c fd ff ff 27 	movl   $0x27,-0x294(%rbp)
     d30:	00 00 00 
     d33:	83 bd 6c fd ff ff 34 	cmpl   $0x34,-0x294(%rbp)
     d3a:	0f 8d 31 00 00 00    	jge    d71 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x5c1>
     d40:	48 63 85 6c fd ff ff 	movslq -0x294(%rbp),%rax
     d47:	48 8b 84 c5 50 fe ff 	mov    -0x1b0(%rbp,%rax,8),%rax
     d4e:	ff 
     d4f:	48 03 85 70 fd ff ff 	add    -0x290(%rbp),%rax
     d56:	48 89 85 70 fd ff ff 	mov    %rax,-0x290(%rbp)
     d5d:	8b 85 6c fd ff ff    	mov    -0x294(%rbp),%eax
     d63:	83 c0 01             	add    $0x1,%eax
     d66:	89 85 6c fd ff ff    	mov    %eax,-0x294(%rbp)
     d6c:	e9 c2 ff ff ff       	jmp    d33 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x583>
     d71:	31 c0                	xor    %eax,%eax
     d73:	48 b9 14 67 bd 56 05 	movabs $0x556bd6714,%rcx
     d7a:	00 00 00 
     d7d:	48 39 8d 18 fe ff ff 	cmp    %rcx,-0x1e8(%rbp)
     d84:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     d8a:	0f 85 d6 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     d90:	31 c0                	xor    %eax,%eax
     d92:	48 81 bd 10 fe ff ff 	cmpq   $0x2c3886,-0x1f0(%rbp)
     d99:	86 38 2c 00 
     d9d:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     da3:	0f 85 bd 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     da9:	31 c0                	xor    %eax,%eax
     dab:	48 81 bd 08 fe ff ff 	cmpq   $0x85df,-0x1f8(%rbp)
     db2:	df 85 00 00 
     db6:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     dbc:	0f 85 a4 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     dc2:	31 c0                	xor    %eax,%eax
     dc4:	48 81 bd 00 fe ff ff 	cmpq   $0x84fc,-0x200(%rbp)
     dcb:	fc 84 00 00 
     dcf:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     dd5:	0f 85 8b 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     ddb:	31 c0                	xor    %eax,%eax
     ddd:	48 81 bd f8 fd ff ff 	cmpq   $0x1a1b5,-0x208(%rbp)
     de4:	b5 a1 01 00 
     de8:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     dee:	0f 85 72 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     df4:	31 c0                	xor    %eax,%eax
     df6:	48 81 bd f0 fd ff ff 	cmpq   $0xffffffffffffaa77,-0x210(%rbp)
     dfd:	77 aa ff ff 
     e01:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     e07:	0f 85 59 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     e0d:	31 c0                	xor    %eax,%eax
     e0f:	48 81 bd e8 fd ff ff 	cmpq   $0x4f86,-0x218(%rbp)
     e16:	86 4f 00 00 
     e1a:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     e20:	0f 85 40 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     e26:	31 c0                	xor    %eax,%eax
     e28:	48 81 bd e0 fd ff ff 	cmpq   $0x2a13,-0x220(%rbp)
     e2f:	13 2a 00 00 
     e33:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     e39:	0f 85 27 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     e3f:	31 c0                	xor    %eax,%eax
     e41:	48 81 bd d8 fd ff ff 	cmpq   $0x7da0,-0x228(%rbp)
     e48:	a0 7d 00 00 
     e4c:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     e52:	0f 85 0e 01 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     e58:	31 c0                	xor    %eax,%eax
     e5a:	48 81 bd d0 fd ff ff 	cmpq   $0x493,-0x230(%rbp)
     e61:	93 04 00 00 
     e65:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     e6b:	0f 85 f5 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     e71:	31 c0                	xor    %eax,%eax
     e73:	48 81 bd c0 fd ff ff 	cmpq   $0x167e6,-0x240(%rbp)
     e7a:	e6 67 01 00 
     e7e:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     e84:	0f 85 dc 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     e8a:	31 c0                	xor    %eax,%eax
     e8c:	48 81 bd b8 fd ff ff 	cmpq   $0x18d4,-0x248(%rbp)
     e93:	d4 18 00 00 
     e97:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     e9d:	0f 85 c3 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     ea3:	31 c0                	xor    %eax,%eax
     ea5:	48 81 bd b0 fd ff ff 	cmpq   $0xe68,-0x250(%rbp)
     eac:	68 0e 00 00 
     eb0:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     eb6:	0f 85 aa 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     ebc:	31 c0                	xor    %eax,%eax
     ebe:	48 81 bd a8 fd ff ff 	cmpq   $0x7e8d70,-0x258(%rbp)
     ec5:	70 8d 7e 00 
     ec9:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     ecf:	0f 85 91 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     ed5:	31 c0                	xor    %eax,%eax
     ed7:	48 81 bd a0 fd ff ff 	cmpq   $0xfffffffffffff98c,-0x260(%rbp)
     ede:	8c f9 ff ff 
     ee2:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     ee8:	0f 85 78 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     eee:	31 c0                	xor    %eax,%eax
     ef0:	48 81 bd 98 fd ff ff 	cmpq   $0x1527,-0x268(%rbp)
     ef7:	27 15 00 00 
     efb:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     f01:	0f 85 5f 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     f07:	31 c0                	xor    %eax,%eax
     f09:	48 81 bd 90 fd ff ff 	cmpq   $0x401,-0x270(%rbp)
     f10:	01 04 00 00 
     f14:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     f1a:	0f 85 46 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     f20:	31 c0                	xor    %eax,%eax
     f22:	48 81 bd 88 fd ff ff 	cmpq   $0x2ba5,-0x278(%rbp)
     f29:	a5 2b 00 00 
     f2d:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     f33:	0f 85 2d 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     f39:	31 c0                	xor    %eax,%eax
     f3b:	48 81 bd 78 fd ff ff 	cmpq   $0xdc5,-0x288(%rbp)
     f42:	c5 0d 00 00 
     f46:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     f4c:	0f 85 14 00 00 00    	jne    f66 <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x7b6>
     f52:	48 81 bd 70 fd ff ff 	cmpq   $0x4af,-0x290(%rbp)
     f59:	af 04 00 00 
     f5d:	0f 94 c0             	sete   %al
     f60:	88 85 5f fd ff ff    	mov    %al,-0x2a1(%rbp)
     f66:	8a 85 5f fd ff ff    	mov    -0x2a1(%rbp),%al
     f6c:	24 01                	and    $0x1,%al
     f6e:	88 85 6b fd ff ff    	mov    %al,-0x295(%rbp)
     f74:	48 8b bd 40 fe ff ff 	mov    -0x1c0(%rbp),%rdi
     f7b:	48 8b b5 30 fe ff ff 	mov    -0x1d0(%rbp),%rsi
     f82:	48 8b 95 28 fe ff ff 	mov    -0x1d8(%rbp),%rdx
     f89:	e8 42 01 00 00       	call   10d0 <_ZN7_JNIEnv21ReleaseStringUTFCharsEP8_jstringPKc@plt>
     f8e:	8a 85 6b fd ff ff    	mov    -0x295(%rbp),%al
     f94:	88 85 4f fe ff ff    	mov    %al,-0x1b1(%rbp)
     f9a:	8a 85 4f fe ff ff    	mov    -0x1b1(%rbp),%al
     fa0:	88 85 5e fd ff ff    	mov    %al,-0x2a2(%rbp)
     fa6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
     fad:	00 00 
     faf:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
     fb3:	48 39 c8             	cmp    %rcx,%rax
     fb6:	0f 85 12 00 00 00    	jne    fce <Java_com_holberton_task4_MainActivity_validateUserInput@@Base+0x81e>
     fbc:	8a 85 5e fd ff ff    	mov    -0x2a2(%rbp),%al
     fc2:	0f b6 c0             	movzbl %al,%eax
     fc5:	48 81 c4 b0 02 00 00 	add    $0x2b0,%rsp
     fcc:	5d                   	pop    %rbp
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
     fe0:	55                   	push   %rbp
     fe1:	48 89 e5             	mov    %rsp,%rbp
     fe4:	48 83 ec 20          	sub    $0x20,%rsp
     fe8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
     fec:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
     ff0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
     ff4:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
     ff8:	48 8b 07             	mov    (%rdi),%rax
     ffb:	48 8b 80 48 05 00 00 	mov    0x548(%rax),%rax
    1002:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    1006:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    100a:	ff d0                	call   *%rax
    100c:	48 83 c4 20          	add    $0x20,%rsp
    1010:	5d                   	pop    %rbp
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
    1020:	55                   	push   %rbp
    1021:	48 89 e5             	mov    %rsp,%rbp
    1024:	48 83 ec 20          	sub    $0x20,%rsp
    1028:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    102c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1030:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1034:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
    1038:	48 8b 07             	mov    (%rdi),%rax
    103b:	48 8b 80 50 05 00 00 	mov    0x550(%rax),%rax
    1042:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    1046:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    104a:	ff d0                	call   *%rax
    104c:	48 83 c4 20          	add    $0x20,%rsp
    1050:	5d                   	pop    %rbp
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
    1060:	55                   	push   %rbp
    1061:	48 89 e5             	mov    %rsp,%rbp
    1064:	40 88 f8             	mov    %dil,%al
    1067:	88 45 ff             	mov    %al,-0x1(%rbp)
    106a:	48 0f be 45 ff       	movsbq -0x1(%rbp),%rax
    106f:	5d                   	pop    %rbp
    1070:	c3                   	ret
    1071:	cc                   	int3
    1072:	cc                   	int3
    1073:	cc                   	int3
