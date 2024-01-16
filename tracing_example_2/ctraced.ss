
ctraced:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 32 2f 00 00    	push   0x2f32(%rip)        # 3f58 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 33 2f 00 00 	bnd jmp *0x2f33(%rip)        # 3f60 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop

Disassembly of section .plt.got:

0000000000001110 <__cxa_finalize@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 dd 2e 00 00 	bnd jmp *0x2edd(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    111b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001120 <sigaction@plt>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	f2 ff 25 3d 2e 00 00 	bnd jmp *0x2e3d(%rip)        # 3f68 <sigaction@GLIBC_2.2.5>
    112b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001130 <__stack_chk_fail@plt>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	f2 ff 25 35 2e 00 00 	bnd jmp *0x2e35(%rip)        # 3f70 <__stack_chk_fail@GLIBC_2.4>
    113b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001140 <printf@plt>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	f2 ff 25 2d 2e 00 00 	bnd jmp *0x2e2d(%rip)        # 3f78 <printf@GLIBC_2.2.5>
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <memset@plt>:
    1150:	f3 0f 1e fa          	endbr64 
    1154:	f2 ff 25 25 2e 00 00 	bnd jmp *0x2e25(%rip)        # 3f80 <memset@GLIBC_2.2.5>
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <pthread_mutex_trylock@plt>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	f2 ff 25 1d 2e 00 00 	bnd jmp *0x2e1d(%rip)        # 3f88 <pthread_mutex_trylock@GLIBC_2.34>
    116b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001170 <strerror_r@plt>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	f2 ff 25 15 2e 00 00 	bnd jmp *0x2e15(%rip)        # 3f90 <strerror_r@GLIBC_2.2.5>
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001180 <pthread_mutex_unlock@plt>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	f2 ff 25 0d 2e 00 00 	bnd jmp *0x2e0d(%rip)        # 3f98 <pthread_mutex_unlock@GLIBC_2.2.5>
    118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001190 <pthread_exit@plt>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	f2 ff 25 05 2e 00 00 	bnd jmp *0x2e05(%rip)        # 3fa0 <pthread_exit@GLIBC_2.2.5>
    119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011a0 <__cyg_profile_func_exit@plt>:
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	f2 ff 25 fd 2d 00 00 	bnd jmp *0x2dfd(%rip)        # 3fa8 <__cyg_profile_func_exit@GLIBC_2.2.5>
    11ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011b0 <pthread_create@plt>:
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	f2 ff 25 f5 2d 00 00 	bnd jmp *0x2df5(%rip)        # 3fb0 <pthread_create@GLIBC_2.34>
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011c0 <__cyg_profile_func_enter@plt>:
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	f2 ff 25 ed 2d 00 00 	bnd jmp *0x2ded(%rip)        # 3fb8 <__cyg_profile_func_enter@GLIBC_2.2.5>
    11cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011d0 <exit@plt>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	f2 ff 25 e5 2d 00 00 	bnd jmp *0x2de5(%rip)        # 3fc0 <exit@GLIBC_2.2.5>
    11db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011e0 <sleep@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 dd 2d 00 00 	bnd jmp *0x2ddd(%rip)        # 3fc8 <sleep@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011f0 <pthread_mutex_lock@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 d5 2d 00 00 	bnd jmp *0x2dd5(%rip)        # 3fd0 <pthread_mutex_lock@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001200 <_start>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	31 ed                	xor    %ebp,%ebp
    1206:	49 89 d1             	mov    %rdx,%r9
    1209:	5e                   	pop    %rsi
    120a:	48 89 e2             	mov    %rsp,%rdx
    120d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1211:	50                   	push   %rax
    1212:	54                   	push   %rsp
    1213:	45 31 c0             	xor    %r8d,%r8d
    1216:	31 c9                	xor    %ecx,%ecx
    1218:	48 8d 3d 68 0a 00 00 	lea    0xa68(%rip),%rdi        # 1c87 <main>
    121f:	ff 15 b3 2d 00 00    	call   *0x2db3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1225:	f4                   	hlt    
    1226:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    122d:	00 00 00 

0000000000001230 <deregister_tm_clones>:
    1230:	48 8d 3d d9 2d 00 00 	lea    0x2dd9(%rip),%rdi        # 4010 <__TMC_END__>
    1237:	48 8d 05 d2 2d 00 00 	lea    0x2dd2(%rip),%rax        # 4010 <__TMC_END__>
    123e:	48 39 f8             	cmp    %rdi,%rax
    1241:	74 15                	je     1258 <deregister_tm_clones+0x28>
    1243:	48 8b 05 96 2d 00 00 	mov    0x2d96(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    124a:	48 85 c0             	test   %rax,%rax
    124d:	74 09                	je     1258 <deregister_tm_clones+0x28>
    124f:	ff e0                	jmp    *%rax
    1251:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1258:	c3                   	ret    
    1259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001260 <register_tm_clones>:
    1260:	48 8d 3d a9 2d 00 00 	lea    0x2da9(%rip),%rdi        # 4010 <__TMC_END__>
    1267:	48 8d 35 a2 2d 00 00 	lea    0x2da2(%rip),%rsi        # 4010 <__TMC_END__>
    126e:	48 29 fe             	sub    %rdi,%rsi
    1271:	48 89 f0             	mov    %rsi,%rax
    1274:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1278:	48 c1 f8 03          	sar    $0x3,%rax
    127c:	48 01 c6             	add    %rax,%rsi
    127f:	48 d1 fe             	sar    %rsi
    1282:	74 14                	je     1298 <register_tm_clones+0x38>
    1284:	48 8b 05 65 2d 00 00 	mov    0x2d65(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    128b:	48 85 c0             	test   %rax,%rax
    128e:	74 08                	je     1298 <register_tm_clones+0x38>
    1290:	ff e0                	jmp    *%rax
    1292:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1298:	c3                   	ret    
    1299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012a0 <__do_global_dtors_aux>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	80 3d 75 2d 00 00 00 	cmpb   $0x0,0x2d75(%rip)        # 4020 <completed.0>
    12ab:	75 2b                	jne    12d8 <__do_global_dtors_aux+0x38>
    12ad:	55                   	push   %rbp
    12ae:	48 83 3d 42 2d 00 00 	cmpq   $0x0,0x2d42(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12b5:	00 
    12b6:	48 89 e5             	mov    %rsp,%rbp
    12b9:	74 0c                	je     12c7 <__do_global_dtors_aux+0x27>
    12bb:	48 8b 3d 46 2d 00 00 	mov    0x2d46(%rip),%rdi        # 4008 <__dso_handle>
    12c2:	e8 49 fe ff ff       	call   1110 <__cxa_finalize@plt>
    12c7:	e8 64 ff ff ff       	call   1230 <deregister_tm_clones>
    12cc:	c6 05 4d 2d 00 00 01 	movb   $0x1,0x2d4d(%rip)        # 4020 <completed.0>
    12d3:	5d                   	pop    %rbp
    12d4:	c3                   	ret    
    12d5:	0f 1f 00             	nopl   (%rax)
    12d8:	c3                   	ret    
    12d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012e0 <frame_dummy>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	e9 77 ff ff ff       	jmp    1260 <register_tm_clones>

00000000000012e9 <f4>:

static int  _do_exit = 0;

void
f4(int id)
{
    12e9:	f3 0f 1e fa          	endbr64 
    12ed:	55                   	push   %rbp
    12ee:	48 89 e5             	mov    %rsp,%rbp
    12f1:	48 83 ec 10          	sub    $0x10,%rsp
    12f5:	89 7d fc             	mov    %edi,-0x4(%rbp)
    12f8:	48 8b 45 08          	mov    0x8(%rbp),%rax
    12fc:	48 89 c6             	mov    %rax,%rsi
    12ff:	48 8d 05 e3 ff ff ff 	lea    -0x1d(%rip),%rax        # 12e9 <f4>
    1306:	48 89 c7             	mov    %rax,%rdi
    1309:	e8 b2 fe ff ff       	call   11c0 <__cyg_profile_func_enter@plt>
    printf("%s %d\n", __FUNCTION__, id);
    130e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1311:	89 c2                	mov    %eax,%edx
    1313:	48 8d 05 b9 0d 00 00 	lea    0xdb9(%rip),%rax        # 20d3 <__FUNCTION__.3>
    131a:	48 89 c6             	mov    %rax,%rsi
    131d:	48 8d 05 e4 0c 00 00 	lea    0xce4(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1324:	48 89 c7             	mov    %rax,%rdi
    1327:	b8 00 00 00 00       	mov    $0x0,%eax
    132c:	e8 0f fe ff ff       	call   1140 <printf@plt>
    1331:	48 8b 45 08          	mov    0x8(%rbp),%rax
    1335:	48 89 c6             	mov    %rax,%rsi
    1338:	48 8d 05 aa ff ff ff 	lea    -0x56(%rip),%rax        # 12e9 <f4>
    133f:	48 89 c7             	mov    %rax,%rdi
    1342:	e8 59 fe ff ff       	call   11a0 <__cyg_profile_func_exit@plt>
}
    1347:	90                   	nop
    1348:	c9                   	leave  
    1349:	c3                   	ret    

000000000000134a <f3>:

static inline int 
f3(int id)
{
    134a:	f3 0f 1e fa          	endbr64 
    134e:	55                   	push   %rbp
    134f:	48 89 e5             	mov    %rsp,%rbp
    1352:	53                   	push   %rbx
    1353:	48 83 ec 18          	sub    $0x18,%rsp
    1357:	89 7d ec             	mov    %edi,-0x14(%rbp)
    135a:	48 8b 45 08          	mov    0x8(%rbp),%rax
    135e:	48 89 c6             	mov    %rax,%rsi
    1361:	48 8d 05 e2 ff ff ff 	lea    -0x1e(%rip),%rax        # 134a <f3>
    1368:	48 89 c7             	mov    %rax,%rdi
    136b:	e8 50 fe ff ff       	call   11c0 <__cyg_profile_func_enter@plt>
    printf("%s %d\n", __FUNCTION__, id);
    1370:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1373:	89 c2                	mov    %eax,%edx
    1375:	48 8d 05 5d 0d 00 00 	lea    0xd5d(%rip),%rax        # 20d9 <__FUNCTION__.1>
    137c:	48 89 c6             	mov    %rax,%rsi
    137f:	48 8d 05 82 0c 00 00 	lea    0xc82(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1386:	48 89 c7             	mov    %rax,%rdi
    1389:	b8 00 00 00 00       	mov    $0x0,%eax
    138e:	e8 ad fd ff ff       	call   1140 <printf@plt>
    f4(id);
    1393:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1396:	89 c7                	mov    %eax,%edi
    1398:	e8 4c ff ff ff       	call   12e9 <f4>
    return 80;
    139d:	bb 50 00 00 00       	mov    $0x50,%ebx
    13a2:	48 8b 45 08          	mov    0x8(%rbp),%rax
    13a6:	48 89 c6             	mov    %rax,%rsi
    13a9:	48 8d 05 9a ff ff ff 	lea    -0x66(%rip),%rax        # 134a <f3>
    13b0:	48 89 c7             	mov    %rax,%rdi
    13b3:	e8 e8 fd ff ff       	call   11a0 <__cyg_profile_func_exit@plt>
    13b8:	89 d8                	mov    %ebx,%eax
}
    13ba:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    13be:	c9                   	leave  
    13bf:	c3                   	ret    

00000000000013c0 <f2>:

int 
f2(int id)
{
    13c0:	f3 0f 1e fa          	endbr64 
    13c4:	55                   	push   %rbp
    13c5:	48 89 e5             	mov    %rsp,%rbp
    13c8:	53                   	push   %rbx
    13c9:	48 83 ec 18          	sub    $0x18,%rsp
    13cd:	89 7d ec             	mov    %edi,-0x14(%rbp)
    13d0:	48 8b 45 08          	mov    0x8(%rbp),%rax
    13d4:	48 89 c6             	mov    %rax,%rsi
    13d7:	48 8d 05 e2 ff ff ff 	lea    -0x1e(%rip),%rax        # 13c0 <f2>
    13de:	48 89 c7             	mov    %rax,%rdi
    13e1:	e8 da fd ff ff       	call   11c0 <__cyg_profile_func_enter@plt>
    printf("%s %d\n", __FUNCTION__, id);
    13e6:	8b 45 ec             	mov    -0x14(%rbp),%eax
    13e9:	89 c2                	mov    %eax,%edx
    13eb:	48 8d 05 e4 0c 00 00 	lea    0xce4(%rip),%rax        # 20d6 <__FUNCTION__.2>
    13f2:	48 89 c6             	mov    %rax,%rsi
    13f5:	48 8d 05 0c 0c 00 00 	lea    0xc0c(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    13fc:	48 89 c7             	mov    %rax,%rdi
    13ff:	b8 00 00 00 00       	mov    $0x0,%eax
    1404:	e8 37 fd ff ff       	call   1140 <printf@plt>
    f3(70+id);
    1409:	8b 45 ec             	mov    -0x14(%rbp),%eax
    140c:	83 c0 46             	add    $0x46,%eax
    140f:	89 c7                	mov    %eax,%edi
    1411:	e8 34 ff ff ff       	call   134a <f3>
    return 70;
    1416:	bb 46 00 00 00       	mov    $0x46,%ebx
    141b:	48 8b 45 08          	mov    0x8(%rbp),%rax
    141f:	48 89 c6             	mov    %rax,%rsi
    1422:	48 8d 05 97 ff ff ff 	lea    -0x69(%rip),%rax        # 13c0 <f2>
    1429:	48 89 c7             	mov    %rax,%rdi
    142c:	e8 6f fd ff ff       	call   11a0 <__cyg_profile_func_exit@plt>
    1431:	89 d8                	mov    %ebx,%eax
}
    1433:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1437:	c9                   	leave  
    1438:	c3                   	ret    

0000000000001439 <f1>:

static int 
f1(int id)
{
    1439:	f3 0f 1e fa          	endbr64 
    143d:	55                   	push   %rbp
    143e:	48 89 e5             	mov    %rsp,%rbp
    1441:	53                   	push   %rbx
    1442:	48 83 ec 18          	sub    $0x18,%rsp
    1446:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1449:	48 8b 45 08          	mov    0x8(%rbp),%rax
    144d:	48 89 c6             	mov    %rax,%rsi
    1450:	48 8d 05 e2 ff ff ff 	lea    -0x1e(%rip),%rax        # 1439 <f1>
    1457:	48 89 c7             	mov    %rax,%rdi
    145a:	e8 61 fd ff ff       	call   11c0 <__cyg_profile_func_enter@plt>
    printf("%s %d\n", __FUNCTION__, id);
    145f:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1462:	89 c2                	mov    %eax,%edx
    1464:	48 8d 05 71 0c 00 00 	lea    0xc71(%rip),%rax        # 20dc <__FUNCTION__.0>
    146b:	48 89 c6             	mov    %rax,%rsi
    146e:	48 8d 05 93 0b 00 00 	lea    0xb93(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    1475:	48 89 c7             	mov    %rax,%rdi
    1478:	b8 00 00 00 00       	mov    $0x0,%eax
    147d:	e8 be fc ff ff       	call   1140 <printf@plt>
    f2(60+id); 
    1482:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1485:	83 c0 3c             	add    $0x3c,%eax
    1488:	89 c7                	mov    %eax,%edi
    148a:	e8 31 ff ff ff       	call   13c0 <f2>
    return 60;
    148f:	bb 3c 00 00 00       	mov    $0x3c,%ebx
    1494:	48 8b 45 08          	mov    0x8(%rbp),%rax
    1498:	48 89 c6             	mov    %rax,%rsi
    149b:	48 8d 05 97 ff ff ff 	lea    -0x69(%rip),%rax        # 1439 <f1>
    14a2:	48 89 c7             	mov    %rax,%rdi
    14a5:	e8 f6 fc ff ff       	call   11a0 <__cyg_profile_func_exit@plt>
    14aa:	89 d8                	mov    %ebx,%eax
}
    14ac:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    14b0:	c9                   	leave  
    14b1:	c3                   	ret    

00000000000014b2 <wrap_strerror_r>:


static char *
wrap_strerror_r(int err, char *buf, int len)
{
    14b2:	f3 0f 1e fa          	endbr64 
    14b6:	55                   	push   %rbp
    14b7:	48 89 e5             	mov    %rsp,%rbp
    14ba:	53                   	push   %rbx
    14bb:	48 83 ec 28          	sub    $0x28,%rsp
    14bf:	89 7d dc             	mov    %edi,-0x24(%rbp)
    14c2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    14c6:	89 55 d8             	mov    %edx,-0x28(%rbp)
    14c9:	48 8b 45 08          	mov    0x8(%rbp),%rax
    14cd:	48 89 c6             	mov    %rax,%rsi
    14d0:	48 8d 05 db ff ff ff 	lea    -0x25(%rip),%rax        # 14b2 <wrap_strerror_r>
    14d7:	48 89 c7             	mov    %rax,%rdi
    14da:	e8 e1 fc ff ff       	call   11c0 <__cyg_profile_func_enter@plt>
    char *src = NULL;
    14df:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    14e6:	00 
    
    memset(buf, 0, len);
    14e7:	8b 45 d8             	mov    -0x28(%rbp),%eax
    14ea:	48 63 d0             	movslq %eax,%rdx
    14ed:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    14f1:	be 00 00 00 00       	mov    $0x0,%esi
    14f6:	48 89 c7             	mov    %rax,%rdi
    14f9:	e8 52 fc ff ff       	call   1150 <memset@plt>
    src = strerror_r(err, buf, len); 
    14fe:	8b 45 d8             	mov    -0x28(%rbp),%eax
    1501:	48 63 d0             	movslq %eax,%rdx
    1504:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    1508:	8b 45 dc             	mov    -0x24(%rbp),%eax
    150b:	48 89 ce             	mov    %rcx,%rsi
    150e:	89 c7                	mov    %eax,%edi
    1510:	e8 5b fc ff ff       	call   1170 <strerror_r@plt>
    1515:	48 89 45 e8          	mov    %rax,-0x18(%rbp)

    return src ? src : buf; 
    1519:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    151e:	74 06                	je     1526 <wrap_strerror_r+0x74>
    1520:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    1524:	eb 04                	jmp    152a <wrap_strerror_r+0x78>
    1526:	48 8b 5d d0          	mov    -0x30(%rbp),%rbx
    152a:	48 8b 45 08          	mov    0x8(%rbp),%rax
    152e:	48 89 c6             	mov    %rax,%rsi
    1531:	48 8d 05 7a ff ff ff 	lea    -0x86(%rip),%rax        # 14b2 <wrap_strerror_r>
    1538:	48 89 c7             	mov    %rax,%rdi
    153b:	e8 60 fc ff ff       	call   11a0 <__cyg_profile_func_exit@plt>
    1540:	48 89 d8             	mov    %rbx,%rax
}
    1543:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1547:	c9                   	leave  
    1548:	c3                   	ret    

0000000000001549 <thread1>:


void *
thread1(void *threadid)
{
    1549:	f3 0f 1e fa          	endbr64 
    154d:	55                   	push   %rbp
    154e:	48 89 e5             	mov    %rsp,%rbp
    1551:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
    1558:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
    155f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1566:	00 00 
    1568:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    156c:	31 c0                	xor    %eax,%eax
    156e:	48 8b 45 08          	mov    0x8(%rbp),%rax
    1572:	48 89 c6             	mov    %rax,%rsi
    1575:	48 8d 05 cd ff ff ff 	lea    -0x33(%rip),%rax        # 1549 <thread1>
    157c:	48 89 c7             	mov    %rax,%rdi
    157f:	e8 3c fc ff ff       	call   11c0 <__cyg_profile_func_enter@plt>
    int  tid = (int)(*(int*)threadid);
    1584:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    158b:	8b 00                	mov    (%rax),%eax
    158d:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%rbp)

    printf("Hello World! It's me, thread #%d!\n", tid);
    1593:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    1599:	89 c6                	mov    %eax,%esi
    159b:	48 8d 05 6e 0a 00 00 	lea    0xa6e(%rip),%rax        # 2010 <_IO_stdin_used+0x10>
    15a2:	48 89 c7             	mov    %rax,%rdi
    15a5:	b8 00 00 00 00       	mov    $0x0,%eax
    15aa:	e8 91 fb ff ff       	call   1140 <printf@plt>
 
    while (!_do_exit) {
    15af:	e9 eb 02 00 00       	jmp    189f <thread1+0x356>
        char errbuf[ERRBUF_LEN+1] = {0}; 
    15b4:	48 c7 85 f0 fe ff ff 	movq   $0x0,-0x110(%rbp)
    15bb:	00 00 00 00 
    15bf:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
    15c6:	00 00 00 00 
    15ca:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
    15d1:	00 00 00 00 
    15d5:	48 c7 85 08 ff ff ff 	movq   $0x0,-0xf8(%rbp)
    15dc:	00 00 00 00 
    15e0:	48 c7 85 10 ff ff ff 	movq   $0x0,-0xf0(%rbp)
    15e7:	00 00 00 00 
    15eb:	48 c7 85 18 ff ff ff 	movq   $0x0,-0xe8(%rbp)
    15f2:	00 00 00 00 
    15f6:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
    15fd:	00 00 00 00 
    1601:	48 c7 85 28 ff ff ff 	movq   $0x0,-0xd8(%rbp)
    1608:	00 00 00 00 
    160c:	48 c7 85 30 ff ff ff 	movq   $0x0,-0xd0(%rbp)
    1613:	00 00 00 00 
    1617:	48 c7 85 38 ff ff ff 	movq   $0x0,-0xc8(%rbp)
    161e:	00 00 00 00 
    1622:	48 c7 85 40 ff ff ff 	movq   $0x0,-0xc0(%rbp)
    1629:	00 00 00 00 
    162d:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
    1634:	00 00 00 00 
    1638:	48 c7 85 50 ff ff ff 	movq   $0x0,-0xb0(%rbp)
    163f:	00 00 00 00 
    1643:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
    164a:	00 00 00 00 
    164e:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
    1655:	00 00 00 00 
    1659:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    1660:	00 00 00 00 
    1664:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    166b:	00 00 00 00 
    166f:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    1676:	00 00 00 00 
    167a:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
    1681:	00 
    1682:	48 c7 45 88 00 00 00 	movq   $0x0,-0x78(%rbp)
    1689:	00 
    168a:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
    1691:	00 
    1692:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
    1699:	00 
    169a:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
    16a1:	00 
    16a2:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    16a9:	00 
    16aa:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    16b1:	00 
    16b2:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    16b9:	00 
    16ba:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    16c1:	00 
    16c2:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    16c9:	00 
    16ca:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    16d1:	00 
    16d2:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    16d9:	00 
    16da:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    16e1:	00 
    16e2:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    16e9:	00 
        int  mrc; 

        sleep(1);
    16ea:	bf 01 00 00 00       	mov    $0x1,%edi
    16ef:	e8 ec fa ff ff       	call   11e0 <sleep@plt>
        printf("T#%d!\n", tid);
    16f4:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    16fa:	89 c6                	mov    %eax,%esi
    16fc:	48 8d 05 30 09 00 00 	lea    0x930(%rip),%rax        # 2033 <_IO_stdin_used+0x33>
    1703:	48 89 c7             	mov    %rax,%rdi
    1706:	b8 00 00 00 00       	mov    $0x0,%eax
    170b:	e8 30 fa ff ff       	call   1140 <printf@plt>

        mrc = pthread_mutex_lock(&mutex2);
    1710:	48 8d 05 69 29 00 00 	lea    0x2969(%rip),%rax        # 4080 <mutex2>
    1717:	48 89 c7             	mov    %rax,%rdi
    171a:	e8 d1 fa ff ff       	call   11f0 <pthread_mutex_lock@plt>
    171f:	89 85 ec fe ff ff    	mov    %eax,-0x114(%rbp)
        if (mrc == 0) {
    1725:	83 bd ec fe ff ff 00 	cmpl   $0x0,-0x114(%rbp)
    172c:	0f 85 6d 01 00 00    	jne    189f <thread1+0x356>
            printf("T#%d+M2 (%s)\n", tid, 
    1732:	48 8d 8d f0 fe ff ff 	lea    -0x110(%rbp),%rcx
    1739:	8b 85 ec fe ff ff    	mov    -0x114(%rbp),%eax
    173f:	ba ff 00 00 00       	mov    $0xff,%edx
    1744:	48 89 ce             	mov    %rcx,%rsi
    1747:	89 c7                	mov    %eax,%edi
    1749:	e8 64 fd ff ff       	call   14b2 <wrap_strerror_r>
    174e:	48 89 c2             	mov    %rax,%rdx
    1751:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    1757:	89 c6                	mov    %eax,%esi
    1759:	48 8d 05 da 08 00 00 	lea    0x8da(%rip),%rax        # 203a <_IO_stdin_used+0x3a>
    1760:	48 89 c7             	mov    %rax,%rdi
    1763:	b8 00 00 00 00       	mov    $0x0,%eax
    1768:	e8 d3 f9 ff ff       	call   1140 <printf@plt>
                    wrap_strerror_r(mrc, errbuf, ERRBUF_LEN));
            sleep(2); 
    176d:	bf 02 00 00 00       	mov    $0x2,%edi
    1772:	e8 69 fa ff ff       	call   11e0 <sleep@plt>

            if (mrc == 0) {
    1777:	83 bd ec fe ff ff 00 	cmpl   $0x0,-0x114(%rbp)
    177e:	0f 85 cb 00 00 00    	jne    184f <thread1+0x306>
                mrc = pthread_mutex_lock(&mutex1);
    1784:	48 8d 05 b5 28 00 00 	lea    0x28b5(%rip),%rax        # 4040 <mutex1>
    178b:	48 89 c7             	mov    %rax,%rdi
    178e:	e8 5d fa ff ff       	call   11f0 <pthread_mutex_lock@plt>
    1793:	89 85 ec fe ff ff    	mov    %eax,-0x114(%rbp)
                printf("T#%d+M1 (%s)\n", tid, 
    1799:	48 8d 8d f0 fe ff ff 	lea    -0x110(%rbp),%rcx
    17a0:	8b 85 ec fe ff ff    	mov    -0x114(%rbp),%eax
    17a6:	ba ff 00 00 00       	mov    $0xff,%edx
    17ab:	48 89 ce             	mov    %rcx,%rsi
    17ae:	89 c7                	mov    %eax,%edi
    17b0:	e8 fd fc ff ff       	call   14b2 <wrap_strerror_r>
    17b5:	48 89 c2             	mov    %rax,%rdx
    17b8:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    17be:	89 c6                	mov    %eax,%esi
    17c0:	48 8d 05 81 08 00 00 	lea    0x881(%rip),%rax        # 2048 <_IO_stdin_used+0x48>
    17c7:	48 89 c7             	mov    %rax,%rdi
    17ca:	b8 00 00 00 00       	mov    $0x0,%eax
    17cf:	e8 6c f9 ff ff       	call   1140 <printf@plt>
                        wrap_strerror_r(mrc, errbuf, ERRBUF_LEN));
                sleep(1);
    17d4:	bf 01 00 00 00       	mov    $0x1,%edi
    17d9:	e8 02 fa ff ff       	call   11e0 <sleep@plt>

                sleep(1); /*Work :)*/
    17de:	bf 01 00 00 00       	mov    $0x1,%edi
    17e3:	e8 f8 f9 ff ff       	call   11e0 <sleep@plt>
                f1(tid);
    17e8:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    17ee:	89 c7                	mov    %eax,%edi
    17f0:	e8 44 fc ff ff       	call   1439 <f1>

                mrc = pthread_mutex_unlock(&mutex1);
    17f5:	48 8d 05 44 28 00 00 	lea    0x2844(%rip),%rax        # 4040 <mutex1>
    17fc:	48 89 c7             	mov    %rax,%rdi
    17ff:	e8 7c f9 ff ff       	call   1180 <pthread_mutex_unlock@plt>
    1804:	89 85 ec fe ff ff    	mov    %eax,-0x114(%rbp)
                printf("T#%d-M1 (%s)\n", tid, 
    180a:	48 8d 8d f0 fe ff ff 	lea    -0x110(%rbp),%rcx
    1811:	8b 85 ec fe ff ff    	mov    -0x114(%rbp),%eax
    1817:	ba ff 00 00 00       	mov    $0xff,%edx
    181c:	48 89 ce             	mov    %rcx,%rsi
    181f:	89 c7                	mov    %eax,%edi
    1821:	e8 8c fc ff ff       	call   14b2 <wrap_strerror_r>
    1826:	48 89 c2             	mov    %rax,%rdx
    1829:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    182f:	89 c6                	mov    %eax,%esi
    1831:	48 8d 05 1e 08 00 00 	lea    0x81e(%rip),%rax        # 2056 <_IO_stdin_used+0x56>
    1838:	48 89 c7             	mov    %rax,%rdi
    183b:	b8 00 00 00 00       	mov    $0x0,%eax
    1840:	e8 fb f8 ff ff       	call   1140 <printf@plt>
                        wrap_strerror_r(mrc, errbuf, ERRBUF_LEN));
                sleep(1);
    1845:	bf 01 00 00 00       	mov    $0x1,%edi
    184a:	e8 91 f9 ff ff       	call   11e0 <sleep@plt>
            }

            mrc = pthread_mutex_unlock(&mutex2);
    184f:	48 8d 05 2a 28 00 00 	lea    0x282a(%rip),%rax        # 4080 <mutex2>
    1856:	48 89 c7             	mov    %rax,%rdi
    1859:	e8 22 f9 ff ff       	call   1180 <pthread_mutex_unlock@plt>
    185e:	89 85 ec fe ff ff    	mov    %eax,-0x114(%rbp)
            printf("T#%d-M2 (%s)\n", tid, 
    1864:	48 8d 8d f0 fe ff ff 	lea    -0x110(%rbp),%rcx
    186b:	8b 85 ec fe ff ff    	mov    -0x114(%rbp),%eax
    1871:	ba ff 00 00 00       	mov    $0xff,%edx
    1876:	48 89 ce             	mov    %rcx,%rsi
    1879:	89 c7                	mov    %eax,%edi
    187b:	e8 32 fc ff ff       	call   14b2 <wrap_strerror_r>
    1880:	48 89 c2             	mov    %rax,%rdx
    1883:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    1889:	89 c6                	mov    %eax,%esi
    188b:	48 8d 05 d2 07 00 00 	lea    0x7d2(%rip),%rax        # 2064 <_IO_stdin_used+0x64>
    1892:	48 89 c7             	mov    %rax,%rdi
    1895:	b8 00 00 00 00       	mov    $0x0,%eax
    189a:	e8 a1 f8 ff ff       	call   1140 <printf@plt>
    while (!_do_exit) {
    189f:	8b 05 43 28 00 00    	mov    0x2843(%rip),%eax        # 40e8 <_do_exit>
    18a5:	85 c0                	test   %eax,%eax
    18a7:	0f 84 07 fd ff ff    	je     15b4 <thread1+0x6b>
                    wrap_strerror_r(mrc, errbuf, ERRBUF_LEN));
        }
    }

    pthread_exit(NULL);
    18ad:	bf 00 00 00 00       	mov    $0x0,%edi
    18b2:	e8 d9 f8 ff ff       	call   1190 <pthread_exit@plt>

00000000000018b7 <thread2>:
}

void *
thread2(void *threadid)
{
    18b7:	f3 0f 1e fa          	endbr64 
    18bb:	55                   	push   %rbp
    18bc:	48 89 e5             	mov    %rsp,%rbp
    18bf:	48 83 ec 20          	sub    $0x20,%rsp
    18c3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    18c7:	48 8b 45 08          	mov    0x8(%rbp),%rax
    18cb:	48 89 c6             	mov    %rax,%rsi
    18ce:	48 8d 05 e2 ff ff ff 	lea    -0x1e(%rip),%rax        # 18b7 <thread2>
    18d5:	48 89 c7             	mov    %rax,%rdi
    18d8:	e8 e3 f8 ff ff       	call   11c0 <__cyg_profile_func_enter@plt>
    int  tid = (int)(*(int*)threadid);
    18dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    18e1:	8b 00                	mov    (%rax),%eax
    18e3:	89 45 fc             	mov    %eax,-0x4(%rbp)
    printf("Hello World! It's me, thread #%d!\n", tid);
    18e6:	8b 45 fc             	mov    -0x4(%rbp),%eax
    18e9:	89 c6                	mov    %eax,%esi
    18eb:	48 8d 05 1e 07 00 00 	lea    0x71e(%rip),%rax        # 2010 <_IO_stdin_used+0x10>
    18f2:	48 89 c7             	mov    %rax,%rdi
    18f5:	b8 00 00 00 00       	mov    $0x0,%eax
    18fa:	e8 41 f8 ff ff       	call   1140 <printf@plt>
 
    while (!_do_exit) {
    18ff:	eb 2d                	jmp    192e <thread2+0x77>
        printf("T#%d!\n", tid);
    1901:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1904:	89 c6                	mov    %eax,%esi
    1906:	48 8d 05 26 07 00 00 	lea    0x726(%rip),%rax        # 2033 <_IO_stdin_used+0x33>
    190d:	48 89 c7             	mov    %rax,%rdi
    1910:	b8 00 00 00 00       	mov    $0x0,%eax
    1915:	e8 26 f8 ff ff       	call   1140 <printf@plt>
        sleep(1); /*Work :)*/
    191a:	bf 01 00 00 00       	mov    $0x1,%edi
    191f:	e8 bc f8 ff ff       	call   11e0 <sleep@plt>
        f1(tid);
    1924:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1927:	89 c7                	mov    %eax,%edi
    1929:	e8 0b fb ff ff       	call   1439 <f1>
    while (!_do_exit) {
    192e:	8b 05 b4 27 00 00    	mov    0x27b4(%rip),%eax        # 40e8 <_do_exit>
    1934:	85 c0                	test   %eax,%eax
    1936:	74 c9                	je     1901 <thread2+0x4a>
    }

    pthread_exit(NULL);
    1938:	bf 00 00 00 00       	mov    $0x0,%edi
    193d:	e8 4e f8 ff ff       	call   1190 <pthread_exit@plt>

0000000000001942 <thread3>:
}

void *
thread3(void *threadid)
{
    1942:	f3 0f 1e fa          	endbr64 
    1946:	55                   	push   %rbp
    1947:	48 89 e5             	mov    %rsp,%rbp
    194a:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
    1951:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
    1958:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    195f:	00 00 
    1961:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1965:	31 c0                	xor    %eax,%eax
    1967:	48 8b 45 08          	mov    0x8(%rbp),%rax
    196b:	48 89 c6             	mov    %rax,%rsi
    196e:	48 8d 05 cd ff ff ff 	lea    -0x33(%rip),%rax        # 1942 <thread3>
    1975:	48 89 c7             	mov    %rax,%rdi
    1978:	e8 43 f8 ff ff       	call   11c0 <__cyg_profile_func_enter@plt>
    int  tid = (int)(*(int*)threadid);
    197d:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    1984:	8b 00                	mov    (%rax),%eax
    1986:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%rbp)
    printf("Hello World! It's me, thread #%d!\n", tid);
    198c:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    1992:	89 c6                	mov    %eax,%esi
    1994:	48 8d 05 75 06 00 00 	lea    0x675(%rip),%rax        # 2010 <_IO_stdin_used+0x10>
    199b:	48 89 c7             	mov    %rax,%rdi
    199e:	b8 00 00 00 00       	mov    $0x0,%eax
    19a3:	e8 98 f7 ff ff       	call   1140 <printf@plt>
 
    while (!_do_exit) {
    19a8:	e9 c9 01 00 00       	jmp    1b76 <thread3+0x234>
        int mrc;
        char errbuf[ERRBUF_LEN+1] = {0}; 
    19ad:	48 c7 85 f0 fe ff ff 	movq   $0x0,-0x110(%rbp)
    19b4:	00 00 00 00 
    19b8:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
    19bf:	00 00 00 00 
    19c3:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
    19ca:	00 00 00 00 
    19ce:	48 c7 85 08 ff ff ff 	movq   $0x0,-0xf8(%rbp)
    19d5:	00 00 00 00 
    19d9:	48 c7 85 10 ff ff ff 	movq   $0x0,-0xf0(%rbp)
    19e0:	00 00 00 00 
    19e4:	48 c7 85 18 ff ff ff 	movq   $0x0,-0xe8(%rbp)
    19eb:	00 00 00 00 
    19ef:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
    19f6:	00 00 00 00 
    19fa:	48 c7 85 28 ff ff ff 	movq   $0x0,-0xd8(%rbp)
    1a01:	00 00 00 00 
    1a05:	48 c7 85 30 ff ff ff 	movq   $0x0,-0xd0(%rbp)
    1a0c:	00 00 00 00 
    1a10:	48 c7 85 38 ff ff ff 	movq   $0x0,-0xc8(%rbp)
    1a17:	00 00 00 00 
    1a1b:	48 c7 85 40 ff ff ff 	movq   $0x0,-0xc0(%rbp)
    1a22:	00 00 00 00 
    1a26:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
    1a2d:	00 00 00 00 
    1a31:	48 c7 85 50 ff ff ff 	movq   $0x0,-0xb0(%rbp)
    1a38:	00 00 00 00 
    1a3c:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
    1a43:	00 00 00 00 
    1a47:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
    1a4e:	00 00 00 00 
    1a52:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    1a59:	00 00 00 00 
    1a5d:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    1a64:	00 00 00 00 
    1a68:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    1a6f:	00 00 00 00 
    1a73:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
    1a7a:	00 
    1a7b:	48 c7 45 88 00 00 00 	movq   $0x0,-0x78(%rbp)
    1a82:	00 
    1a83:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
    1a8a:	00 
    1a8b:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
    1a92:	00 
    1a93:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
    1a9a:	00 
    1a9b:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    1aa2:	00 
    1aa3:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    1aaa:	00 
    1aab:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    1ab2:	00 
    1ab3:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    1aba:	00 
    1abb:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    1ac2:	00 
    1ac3:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    1aca:	00 
    1acb:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    1ad2:	00 
    1ad3:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    1ada:	00 
    1adb:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1ae2:	00 

        sleep(1);
    1ae3:	bf 01 00 00 00       	mov    $0x1,%edi
    1ae8:	e8 f3 f6 ff ff       	call   11e0 <sleep@plt>
        printf("T#%d!\n", tid);
    1aed:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    1af3:	89 c6                	mov    %eax,%esi
    1af5:	48 8d 05 37 05 00 00 	lea    0x537(%rip),%rax        # 2033 <_IO_stdin_used+0x33>
    1afc:	48 89 c7             	mov    %rax,%rdi
    1aff:	b8 00 00 00 00       	mov    $0x0,%eax
    1b04:	e8 37 f6 ff ff       	call   1140 <printf@plt>

        mrc = pthread_mutex_trylock(&mutex3); /*<-- PTHREAD_MUTEX_ERRORCHECK*/
    1b09:	48 8d 05 b0 25 00 00 	lea    0x25b0(%rip),%rax        # 40c0 <mutex3>
    1b10:	48 89 c7             	mov    %rax,%rdi
    1b13:	e8 48 f6 ff ff       	call   1160 <pthread_mutex_trylock@plt>
    1b18:	89 85 ec fe ff ff    	mov    %eax,-0x114(%rbp)
        printf("T#%d+M3=%d (%s)\n", tid, mrc, 
    1b1e:	48 8d 8d f0 fe ff ff 	lea    -0x110(%rbp),%rcx
    1b25:	8b 85 ec fe ff ff    	mov    -0x114(%rbp),%eax
    1b2b:	ba ff 00 00 00       	mov    $0xff,%edx
    1b30:	48 89 ce             	mov    %rcx,%rsi
    1b33:	89 c7                	mov    %eax,%edi
    1b35:	e8 78 f9 ff ff       	call   14b2 <wrap_strerror_r>
    1b3a:	48 89 c1             	mov    %rax,%rcx
    1b3d:	8b 95 ec fe ff ff    	mov    -0x114(%rbp),%edx
    1b43:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    1b49:	89 c6                	mov    %eax,%esi
    1b4b:	48 8d 05 20 05 00 00 	lea    0x520(%rip),%rax        # 2072 <_IO_stdin_used+0x72>
    1b52:	48 89 c7             	mov    %rax,%rdi
    1b55:	b8 00 00 00 00       	mov    $0x0,%eax
    1b5a:	e8 e1 f5 ff ff       	call   1140 <printf@plt>
                wrap_strerror_r(mrc, errbuf, ERRBUF_LEN)); 
        sleep(2);
    1b5f:	bf 02 00 00 00       	mov    $0x2,%edi
    1b64:	e8 77 f6 ff ff       	call   11e0 <sleep@plt>
        
        f1(tid); 
    1b69:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    1b6f:	89 c7                	mov    %eax,%edi
    1b71:	e8 c3 f8 ff ff       	call   1439 <f1>
    while (!_do_exit) {
    1b76:	8b 05 6c 25 00 00    	mov    0x256c(%rip),%eax        # 40e8 <_do_exit>
    1b7c:	85 c0                	test   %eax,%eax
    1b7e:	0f 84 29 fe ff ff    	je     19ad <thread3+0x6b>
    }

    pthread_exit(NULL);
    1b84:	bf 00 00 00 00       	mov    $0x0,%edi
    1b89:	e8 02 f6 ff ff       	call   1190 <pthread_exit@plt>

0000000000001b8e <sigexit>:
}


static void 
sigexit(int signo)
{
    1b8e:	f3 0f 1e fa          	endbr64 
    1b92:	55                   	push   %rbp
    1b93:	48 89 e5             	mov    %rsp,%rbp
    1b96:	48 83 ec 10          	sub    $0x10,%rsp
    1b9a:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1b9d:	48 8b 45 08          	mov    0x8(%rbp),%rax
    1ba1:	48 89 c6             	mov    %rax,%rsi
    1ba4:	48 8d 05 e3 ff ff ff 	lea    -0x1d(%rip),%rax        # 1b8e <sigexit>
    1bab:	48 89 c7             	mov    %rax,%rdi
    1bae:	e8 0d f6 ff ff       	call   11c0 <__cyg_profile_func_enter@plt>
    _do_exit = 1;
    1bb3:	c7 05 2b 25 00 00 01 	movl   $0x1,0x252b(%rip)        # 40e8 <_do_exit>
    1bba:	00 00 00 
    1bbd:	48 8b 45 08          	mov    0x8(%rbp),%rax
    1bc1:	48 89 c6             	mov    %rax,%rsi
    1bc4:	48 8d 05 c3 ff ff ff 	lea    -0x3d(%rip),%rax        # 1b8e <sigexit>
    1bcb:	48 89 c7             	mov    %rax,%rdi
    1bce:	e8 cd f5 ff ff       	call   11a0 <__cyg_profile_func_exit@plt>
}
    1bd3:	90                   	nop
    1bd4:	c9                   	leave  
    1bd5:	c3                   	ret    

0000000000001bd6 <set_signal>:

static void 
set_signal(int signo, void (*handler)(int))
{
    1bd6:	f3 0f 1e fa          	endbr64 
    1bda:	55                   	push   %rbp
    1bdb:	48 89 e5             	mov    %rsp,%rbp
    1bde:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
    1be5:	89 bd 5c ff ff ff    	mov    %edi,-0xa4(%rbp)
    1beb:	48 89 b5 50 ff ff ff 	mov    %rsi,-0xb0(%rbp)
    1bf2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1bf9:	00 00 
    1bfb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1bff:	31 c0                	xor    %eax,%eax
    1c01:	48 8b 45 08          	mov    0x8(%rbp),%rax
    1c05:	48 89 c6             	mov    %rax,%rsi
    1c08:	48 8d 05 c7 ff ff ff 	lea    -0x39(%rip),%rax        # 1bd6 <set_signal>
    1c0f:	48 89 c7             	mov    %rax,%rdi
    1c12:	e8 a9 f5 ff ff       	call   11c0 <__cyg_profile_func_enter@plt>
    struct sigaction sa;

    memset(&sa, 0, sizeof(sa));
    1c17:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    1c1e:	ba 98 00 00 00       	mov    $0x98,%edx
    1c23:	be 00 00 00 00       	mov    $0x0,%esi
    1c28:	48 89 c7             	mov    %rax,%rdi
    1c2b:	e8 20 f5 ff ff       	call   1150 <memset@plt>
    sa.sa_handler = (void (*)(int))handler;
    1c30:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    1c37:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    sigaction(signo, &sa, NULL);
    1c3e:	48 8d 8d 60 ff ff ff 	lea    -0xa0(%rbp),%rcx
    1c45:	8b 85 5c ff ff ff    	mov    -0xa4(%rbp),%eax
    1c4b:	ba 00 00 00 00       	mov    $0x0,%edx
    1c50:	48 89 ce             	mov    %rcx,%rsi
    1c53:	89 c7                	mov    %eax,%edi
    1c55:	e8 c6 f4 ff ff       	call   1120 <sigaction@plt>
    1c5a:	48 8b 45 08          	mov    0x8(%rbp),%rax
    1c5e:	48 89 c6             	mov    %rax,%rsi
    1c61:	48 8d 05 6e ff ff ff 	lea    -0x92(%rip),%rax        # 1bd6 <set_signal>
    1c68:	48 89 c7             	mov    %rax,%rdi
    1c6b:	e8 30 f5 ff ff       	call   11a0 <__cyg_profile_func_exit@plt>
}
    1c70:	90                   	nop
    1c71:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1c75:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1c7c:	00 00 
    1c7e:	74 05                	je     1c85 <set_signal+0xaf>
    1c80:	e8 ab f4 ff ff       	call   1130 <__stack_chk_fail@plt>
    1c85:	c9                   	leave  
    1c86:	c3                   	ret    

0000000000001c87 <main>:


int
main(int argc, char *argv[])
{
    1c87:	f3 0f 1e fa          	endbr64 
    1c8b:	55                   	push   %rbp
    1c8c:	48 89 e5             	mov    %rsp,%rbp
    1c8f:	53                   	push   %rbx
    1c90:	48 83 ec 78          	sub    $0x78,%rsp
    1c94:	89 7d 8c             	mov    %edi,-0x74(%rbp)
    1c97:	48 89 75 80          	mov    %rsi,-0x80(%rbp)
    1c9b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ca2:	00 00 
    1ca4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1ca8:	31 c0                	xor    %eax,%eax
    1caa:	48 8b 45 08          	mov    0x8(%rbp),%rax
    1cae:	48 89 c6             	mov    %rax,%rsi
    1cb1:	48 8d 05 cf ff ff ff 	lea    -0x31(%rip),%rax        # 1c87 <main>
    1cb8:	48 89 c7             	mov    %rax,%rdi
    1cbb:	e8 00 f5 ff ff       	call   11c0 <__cyg_profile_func_enter@plt>
    #define NUM_THREADS (3) 
    typedef void *(*pthread_func)(void*); 

    pthread_t    threads[NUM_THREADS] = {0};
    1cc0:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    1cc7:	00 
    1cc8:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    1ccf:	00 
    1cd0:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    1cd7:	00 
    pthread_func funcs[NUM_THREADS] = {thread1, thread2, thread3};
    1cd8:	48 8d 05 6a f8 ff ff 	lea    -0x796(%rip),%rax        # 1549 <thread1>
    1cdf:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1ce3:	48 8d 05 cd fb ff ff 	lea    -0x433(%rip),%rax        # 18b7 <thread2>
    1cea:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    1cee:	48 8d 05 4d fc ff ff 	lea    -0x3b3(%rip),%rax        # 1942 <thread3>
    1cf5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	int          ids[NUM_THREADS] = {1,2,3};
    1cf9:	c7 45 a4 01 00 00 00 	movl   $0x1,-0x5c(%rbp)
    1d00:	c7 45 a8 02 00 00 00 	movl   $0x2,-0x58(%rbp)
    1d07:	c7 45 ac 03 00 00 00 	movl   $0x3,-0x54(%rbp)
    int          rc, i;

    set_signal(SIGINT,  sigexit);
    1d0e:	48 8d 05 79 fe ff ff 	lea    -0x187(%rip),%rax        # 1b8e <sigexit>
    1d15:	48 89 c6             	mov    %rax,%rsi
    1d18:	bf 02 00 00 00       	mov    $0x2,%edi
    1d1d:	e8 b4 fe ff ff       	call   1bd6 <set_signal>
    set_signal(SIGQUIT, sigexit);
    1d22:	48 8d 05 65 fe ff ff 	lea    -0x19b(%rip),%rax        # 1b8e <sigexit>
    1d29:	48 89 c6             	mov    %rax,%rsi
    1d2c:	bf 03 00 00 00       	mov    $0x3,%edi
    1d31:	e8 a0 fe ff ff       	call   1bd6 <set_signal>
    
    printf("%s: main(argc=%d)\n", argv[0], argc);
    1d36:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1d3a:	48 8b 00             	mov    (%rax),%rax
    1d3d:	8b 55 8c             	mov    -0x74(%rbp),%edx
    1d40:	48 89 c6             	mov    %rax,%rsi
    1d43:	48 8d 05 39 03 00 00 	lea    0x339(%rip),%rax        # 2083 <_IO_stdin_used+0x83>
    1d4a:	48 89 c7             	mov    %rax,%rdi
    1d4d:	b8 00 00 00 00       	mov    $0x0,%eax
    1d52:	e8 e9 f3 ff ff       	call   1140 <printf@plt>
    
    for (i=0; i<NUM_THREADS; i++) {
    1d57:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
    1d5e:	eb 6c                	jmp    1dcc <main+0x145>
        rc = pthread_create(&threads[i], NULL, funcs[i], (void*)(&ids[i]));
    1d60:	48 8d 55 a4          	lea    -0x5c(%rbp),%rdx
    1d64:	8b 45 9c             	mov    -0x64(%rbp),%eax
    1d67:	48 98                	cltq   
    1d69:	48 c1 e0 02          	shl    $0x2,%rax
    1d6d:	48 01 c2             	add    %rax,%rdx
    1d70:	8b 45 9c             	mov    -0x64(%rbp),%eax
    1d73:	48 98                	cltq   
    1d75:	48 8b 44 c5 d0       	mov    -0x30(%rbp,%rax,8),%rax
    1d7a:	48 8d 75 b0          	lea    -0x50(%rbp),%rsi
    1d7e:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
    1d81:	48 63 c9             	movslq %ecx,%rcx
    1d84:	48 c1 e1 03          	shl    $0x3,%rcx
    1d88:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    1d8c:	48 89 d1             	mov    %rdx,%rcx
    1d8f:	48 89 c2             	mov    %rax,%rdx
    1d92:	be 00 00 00 00       	mov    $0x0,%esi
    1d97:	e8 14 f4 ff ff       	call   11b0 <pthread_create@plt>
    1d9c:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if (rc) {
    1d9f:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
    1da3:	74 23                	je     1dc8 <main+0x141>
            printf("Error: return code from pthread_create() is %d\n", rc);
    1da5:	8b 45 a0             	mov    -0x60(%rbp),%eax
    1da8:	89 c6                	mov    %eax,%esi
    1daa:	48 8d 05 e7 02 00 00 	lea    0x2e7(%rip),%rax        # 2098 <_IO_stdin_used+0x98>
    1db1:	48 89 c7             	mov    %rax,%rdi
    1db4:	b8 00 00 00 00       	mov    $0x0,%eax
    1db9:	e8 82 f3 ff ff       	call   1140 <printf@plt>
            exit(EXIT_FAILURE);
    1dbe:	bf 01 00 00 00       	mov    $0x1,%edi
    1dc3:	e8 08 f4 ff ff       	call   11d0 <exit@plt>
    for (i=0; i<NUM_THREADS; i++) {
    1dc8:	83 45 9c 01          	addl   $0x1,-0x64(%rbp)
    1dcc:	83 7d 9c 02          	cmpl   $0x2,-0x64(%rbp)
    1dd0:	7e 8e                	jle    1d60 <main+0xd9>
        }
    }

    while (!_do_exit) 
    1dd2:	eb 0a                	jmp    1dde <main+0x157>
        sleep(1); 
    1dd4:	bf 01 00 00 00       	mov    $0x1,%edi
    1dd9:	e8 02 f4 ff ff       	call   11e0 <sleep@plt>
    while (!_do_exit) 
    1dde:	8b 05 04 23 00 00    	mov    0x2304(%rip),%eax        # 40e8 <_do_exit>
    1de4:	85 c0                	test   %eax,%eax
    1de6:	74 ec                	je     1dd4 <main+0x14d>
        
    printf("%s: done.\n", argv[0]);
    1de8:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    1dec:	48 8b 00             	mov    (%rax),%rax
    1def:	48 89 c6             	mov    %rax,%rsi
    1df2:	48 8d 05 cf 02 00 00 	lea    0x2cf(%rip),%rax        # 20c8 <_IO_stdin_used+0xc8>
    1df9:	48 89 c7             	mov    %rax,%rdi
    1dfc:	b8 00 00 00 00       	mov    $0x0,%eax
    1e01:	e8 3a f3 ff ff       	call   1140 <printf@plt>
    return EXIT_SUCCESS;
    1e06:	bb 00 00 00 00       	mov    $0x0,%ebx
    1e0b:	48 8b 45 08          	mov    0x8(%rbp),%rax
    1e0f:	48 89 c6             	mov    %rax,%rsi
    1e12:	48 8d 05 6e fe ff ff 	lea    -0x192(%rip),%rax        # 1c87 <main>
    1e19:	48 89 c7             	mov    %rax,%rdi
    1e1c:	e8 7f f3 ff ff       	call   11a0 <__cyg_profile_func_exit@plt>
}
    1e21:	89 d8                	mov    %ebx,%eax
    1e23:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1e27:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1e2e:	00 00 
    1e30:	74 05                	je     1e37 <main+0x1b0>
    1e32:	e8 f9 f2 ff ff       	call   1130 <__stack_chk_fail@plt>
    1e37:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1e3b:	c9                   	leave  
    1e3c:	c3                   	ret    

Disassembly of section .fini:

0000000000001e40 <_fini>:
    1e40:	f3 0f 1e fa          	endbr64 
    1e44:	48 83 ec 08          	sub    $0x8,%rsp
    1e48:	48 83 c4 08          	add    $0x8,%rsp
    1e4c:	c3                   	ret    
