
cpptraced:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa          	endbr64 
    2004:	48 83 ec 08          	sub    $0x8,%rsp
    2008:	48 8b 05 e1 3f 00 00 	mov    0x3fe1(%rip),%rax        # 5ff0 <__gmon_start__@Base>
    200f:	48 85 c0             	test   %rax,%rax
    2012:	74 02                	je     2016 <_init+0x16>
    2014:	ff d0                	call   *%rax
    2016:	48 83 c4 08          	add    $0x8,%rsp
    201a:	c3                   	ret    

Disassembly of section .plt:

0000000000002020 <.plt>:
    2020:	ff 35 12 3f 00 00    	push   0x3f12(%rip)        # 5f38 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	f2 ff 25 13 3f 00 00 	bnd jmp *0x3f13(%rip)        # 5f40 <_GLOBAL_OFFSET_TABLE_+0x10>
    202d:	0f 1f 00             	nopl   (%rax)
    2030:	f3 0f 1e fa          	endbr64 
    2034:	68 00 00 00 00       	push   $0x0
    2039:	f2 e9 e1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    203f:	90                   	nop
    2040:	f3 0f 1e fa          	endbr64 
    2044:	68 01 00 00 00       	push   $0x1
    2049:	f2 e9 d1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    204f:	90                   	nop
    2050:	f3 0f 1e fa          	endbr64 
    2054:	68 02 00 00 00       	push   $0x2
    2059:	f2 e9 c1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    205f:	90                   	nop
    2060:	f3 0f 1e fa          	endbr64 
    2064:	68 03 00 00 00       	push   $0x3
    2069:	f2 e9 b1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    206f:	90                   	nop
    2070:	f3 0f 1e fa          	endbr64 
    2074:	68 04 00 00 00       	push   $0x4
    2079:	f2 e9 a1 ff ff ff    	bnd jmp 2020 <_init+0x20>
    207f:	90                   	nop
    2080:	f3 0f 1e fa          	endbr64 
    2084:	68 05 00 00 00       	push   $0x5
    2089:	f2 e9 91 ff ff ff    	bnd jmp 2020 <_init+0x20>
    208f:	90                   	nop
    2090:	f3 0f 1e fa          	endbr64 
    2094:	68 06 00 00 00       	push   $0x6
    2099:	f2 e9 81 ff ff ff    	bnd jmp 2020 <_init+0x20>
    209f:	90                   	nop
    20a0:	f3 0f 1e fa          	endbr64 
    20a4:	68 07 00 00 00       	push   $0x7
    20a9:	f2 e9 71 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20af:	90                   	nop
    20b0:	f3 0f 1e fa          	endbr64 
    20b4:	68 08 00 00 00       	push   $0x8
    20b9:	f2 e9 61 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20bf:	90                   	nop
    20c0:	f3 0f 1e fa          	endbr64 
    20c4:	68 09 00 00 00       	push   $0x9
    20c9:	f2 e9 51 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20cf:	90                   	nop
    20d0:	f3 0f 1e fa          	endbr64 
    20d4:	68 0a 00 00 00       	push   $0xa
    20d9:	f2 e9 41 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20df:	90                   	nop
    20e0:	f3 0f 1e fa          	endbr64 
    20e4:	68 0b 00 00 00       	push   $0xb
    20e9:	f2 e9 31 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20ef:	90                   	nop
    20f0:	f3 0f 1e fa          	endbr64 
    20f4:	68 0c 00 00 00       	push   $0xc
    20f9:	f2 e9 21 ff ff ff    	bnd jmp 2020 <_init+0x20>
    20ff:	90                   	nop
    2100:	f3 0f 1e fa          	endbr64 
    2104:	68 0d 00 00 00       	push   $0xd
    2109:	f2 e9 11 ff ff ff    	bnd jmp 2020 <_init+0x20>
    210f:	90                   	nop
    2110:	f3 0f 1e fa          	endbr64 
    2114:	68 0e 00 00 00       	push   $0xe
    2119:	f2 e9 01 ff ff ff    	bnd jmp 2020 <_init+0x20>
    211f:	90                   	nop
    2120:	f3 0f 1e fa          	endbr64 
    2124:	68 0f 00 00 00       	push   $0xf
    2129:	f2 e9 f1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    212f:	90                   	nop
    2130:	f3 0f 1e fa          	endbr64 
    2134:	68 10 00 00 00       	push   $0x10
    2139:	f2 e9 e1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    213f:	90                   	nop
    2140:	f3 0f 1e fa          	endbr64 
    2144:	68 11 00 00 00       	push   $0x11
    2149:	f2 e9 d1 fe ff ff    	bnd jmp 2020 <_init+0x20>
    214f:	90                   	nop

Disassembly of section .plt.got:

0000000000002150 <__cxa_finalize@plt>:
    2150:	f3 0f 1e fa          	endbr64 
    2154:	f2 ff 25 7d 3e 00 00 	bnd jmp *0x3e7d(%rip)        # 5fd8 <__cxa_finalize@GLIBC_2.2.5>
    215b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000002160 <printf@plt>:
    2160:	f3 0f 1e fa          	endbr64 
    2164:	f2 ff 25 dd 3d 00 00 	bnd jmp *0x3ddd(%rip)        # 5f48 <printf@GLIBC_2.2.5>
    216b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002170 <pthread_mutex_trylock@plt>:
    2170:	f3 0f 1e fa          	endbr64 
    2174:	f2 ff 25 d5 3d 00 00 	bnd jmp *0x3dd5(%rip)        # 5f50 <pthread_mutex_trylock@GLIBC_2.34>
    217b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002180 <strerror_r@plt>:
    2180:	f3 0f 1e fa          	endbr64 
    2184:	f2 ff 25 cd 3d 00 00 	bnd jmp *0x3dcd(%rip)        # 5f58 <strerror_r@GLIBC_2.2.5>
    218b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002190 <__cyg_profile_func_enter@plt>:
    2190:	f3 0f 1e fa          	endbr64 
    2194:	f2 ff 25 c5 3d 00 00 	bnd jmp *0x3dc5(%rip)        # 5f60 <__cyg_profile_func_enter@GLIBC_2.2.5>
    219b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021a0 <memset@plt>:
    21a0:	f3 0f 1e fa          	endbr64 
    21a4:	f2 ff 25 bd 3d 00 00 	bnd jmp *0x3dbd(%rip)        # 5f68 <memset@GLIBC_2.2.5>
    21ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021b0 <sleep@plt>:
    21b0:	f3 0f 1e fa          	endbr64 
    21b4:	f2 ff 25 b5 3d 00 00 	bnd jmp *0x3db5(%rip)        # 5f70 <sleep@GLIBC_2.2.5>
    21bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021c0 <pthread_mutex_unlock@plt>:
    21c0:	f3 0f 1e fa          	endbr64 
    21c4:	f2 ff 25 ad 3d 00 00 	bnd jmp *0x3dad(%rip)        # 5f78 <pthread_mutex_unlock@GLIBC_2.2.5>
    21cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021d0 <_Znwm@plt>:
    21d0:	f3 0f 1e fa          	endbr64 
    21d4:	f2 ff 25 a5 3d 00 00 	bnd jmp *0x3da5(%rip)        # 5f80 <_Znwm@GLIBCXX_3.4>
    21db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021e0 <_ZdlPvm@plt>:
    21e0:	f3 0f 1e fa          	endbr64 
    21e4:	f2 ff 25 9d 3d 00 00 	bnd jmp *0x3d9d(%rip)        # 5f88 <_ZdlPvm@CXXABI_1.3.9>
    21eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000021f0 <__stack_chk_fail@plt>:
    21f0:	f3 0f 1e fa          	endbr64 
    21f4:	f2 ff 25 95 3d 00 00 	bnd jmp *0x3d95(%rip)        # 5f90 <__stack_chk_fail@GLIBC_2.4>
    21fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002200 <exit@plt>:
    2200:	f3 0f 1e fa          	endbr64 
    2204:	f2 ff 25 8d 3d 00 00 	bnd jmp *0x3d8d(%rip)        # 5f98 <exit@GLIBC_2.2.5>
    220b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002210 <sigaction@plt>:
    2210:	f3 0f 1e fa          	endbr64 
    2214:	f2 ff 25 85 3d 00 00 	bnd jmp *0x3d85(%rip)        # 5fa0 <sigaction@GLIBC_2.2.5>
    221b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002220 <__cyg_profile_func_exit@plt>:
    2220:	f3 0f 1e fa          	endbr64 
    2224:	f2 ff 25 7d 3d 00 00 	bnd jmp *0x3d7d(%rip)        # 5fa8 <__cyg_profile_func_exit@GLIBC_2.2.5>
    222b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002230 <pthread_mutex_lock@plt>:
    2230:	f3 0f 1e fa          	endbr64 
    2234:	f2 ff 25 75 3d 00 00 	bnd jmp *0x3d75(%rip)        # 5fb0 <pthread_mutex_lock@GLIBC_2.2.5>
    223b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002240 <puts@plt>:
    2240:	f3 0f 1e fa          	endbr64 
    2244:	f2 ff 25 6d 3d 00 00 	bnd jmp *0x3d6d(%rip)        # 5fb8 <puts@GLIBC_2.2.5>
    224b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002250 <_Unwind_Resume@plt>:
    2250:	f3 0f 1e fa          	endbr64 
    2254:	f2 ff 25 65 3d 00 00 	bnd jmp *0x3d65(%rip)        # 5fc0 <_Unwind_Resume@GCC_3.0>
    225b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002260 <pthread_exit@plt>:
    2260:	f3 0f 1e fa          	endbr64 
    2264:	f2 ff 25 5d 3d 00 00 	bnd jmp *0x3d5d(%rip)        # 5fc8 <pthread_exit@GLIBC_2.2.5>
    226b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000002270 <pthread_create@plt>:
    2270:	f3 0f 1e fa          	endbr64 
    2274:	f2 ff 25 55 3d 00 00 	bnd jmp *0x3d55(%rip)        # 5fd0 <pthread_create@GLIBC_2.34>
    227b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000002280 <_start>:
    2280:	f3 0f 1e fa          	endbr64 
    2284:	31 ed                	xor    %ebp,%ebp
    2286:	49 89 d1             	mov    %rdx,%r9
    2289:	5e                   	pop    %rsi
    228a:	48 89 e2             	mov    %rsp,%rdx
    228d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    2291:	50                   	push   %rax
    2292:	54                   	push   %rsp
    2293:	45 31 c0             	xor    %r8d,%r8d
    2296:	31 c9                	xor    %ecx,%ecx
    2298:	48 8d 3d 52 0c 00 00 	lea    0xc52(%rip),%rdi        # 2ef1 <main>
    229f:	ff 15 3b 3d 00 00    	call   *0x3d3b(%rip)        # 5fe0 <__libc_start_main@GLIBC_2.34>
    22a5:	f4                   	hlt    
    22a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    22ad:	00 00 00 

00000000000022b0 <deregister_tm_clones>:
    22b0:	48 8d 3d 61 3d 00 00 	lea    0x3d61(%rip),%rdi        # 6018 <__TMC_END__>
    22b7:	48 8d 05 5a 3d 00 00 	lea    0x3d5a(%rip),%rax        # 6018 <__TMC_END__>
    22be:	48 39 f8             	cmp    %rdi,%rax
    22c1:	74 15                	je     22d8 <deregister_tm_clones+0x28>
    22c3:	48 8b 05 1e 3d 00 00 	mov    0x3d1e(%rip),%rax        # 5fe8 <_ITM_deregisterTMCloneTable@Base>
    22ca:	48 85 c0             	test   %rax,%rax
    22cd:	74 09                	je     22d8 <deregister_tm_clones+0x28>
    22cf:	ff e0                	jmp    *%rax
    22d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    22d8:	c3                   	ret    
    22d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000022e0 <register_tm_clones>:
    22e0:	48 8d 3d 31 3d 00 00 	lea    0x3d31(%rip),%rdi        # 6018 <__TMC_END__>
    22e7:	48 8d 35 2a 3d 00 00 	lea    0x3d2a(%rip),%rsi        # 6018 <__TMC_END__>
    22ee:	48 29 fe             	sub    %rdi,%rsi
    22f1:	48 89 f0             	mov    %rsi,%rax
    22f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    22f8:	48 c1 f8 03          	sar    $0x3,%rax
    22fc:	48 01 c6             	add    %rax,%rsi
    22ff:	48 d1 fe             	sar    %rsi
    2302:	74 14                	je     2318 <register_tm_clones+0x38>
    2304:	48 8b 05 ed 3c 00 00 	mov    0x3ced(%rip),%rax        # 5ff8 <_ITM_registerTMCloneTable@Base>
    230b:	48 85 c0             	test   %rax,%rax
    230e:	74 08                	je     2318 <register_tm_clones+0x38>
    2310:	ff e0                	jmp    *%rax
    2312:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2318:	c3                   	ret    
    2319:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002320 <__do_global_dtors_aux>:
    2320:	f3 0f 1e fa          	endbr64 
    2324:	80 3d f5 3c 00 00 00 	cmpb   $0x0,0x3cf5(%rip)        # 6020 <completed.0>
    232b:	75 2b                	jne    2358 <__do_global_dtors_aux+0x38>
    232d:	55                   	push   %rbp
    232e:	48 83 3d a2 3c 00 00 	cmpq   $0x0,0x3ca2(%rip)        # 5fd8 <__cxa_finalize@GLIBC_2.2.5>
    2335:	00 
    2336:	48 89 e5             	mov    %rsp,%rbp
    2339:	74 0c                	je     2347 <__do_global_dtors_aux+0x27>
    233b:	48 8b 3d c6 3c 00 00 	mov    0x3cc6(%rip),%rdi        # 6008 <__dso_handle>
    2342:	e8 09 fe ff ff       	call   2150 <__cxa_finalize@plt>
    2347:	e8 64 ff ff ff       	call   22b0 <deregister_tm_clones>
    234c:	c6 05 cd 3c 00 00 01 	movb   $0x1,0x3ccd(%rip)        # 6020 <completed.0>
    2353:	5d                   	pop    %rbp
    2354:	c3                   	ret    
    2355:	0f 1f 00             	nopl   (%rax)
    2358:	c3                   	ret    
    2359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002360 <frame_dummy>:
    2360:	f3 0f 1e fa          	endbr64 
    2364:	e9 77 ff ff ff       	jmp    22e0 <register_tm_clones>

0000000000002369 <_ZL2f3i>:
static int  _do_exit = 0;


static inline int 
f3(int id)
{
    2369:	f3 0f 1e fa          	endbr64 
    236d:	55                   	push   %rbp
    236e:	48 89 e5             	mov    %rsp,%rbp
    2371:	53                   	push   %rbx
    2372:	48 83 ec 18          	sub    $0x18,%rsp
    2376:	89 7d ec             	mov    %edi,-0x14(%rbp)
    2379:	48 8b 45 08          	mov    0x8(%rbp),%rax
    237d:	48 89 c6             	mov    %rax,%rsi
    2380:	48 8d 05 e2 ff ff ff 	lea    -0x1e(%rip),%rax        # 2369 <_ZL2f3i>
    2387:	48 89 c7             	mov    %rax,%rdi
    238a:	e8 01 fe ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    printf("%s %d\n", __FUNCTION__, id);
    238f:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2392:	89 c2                	mov    %eax,%edx
    2394:	48 8d 05 6d 1c 00 00 	lea    0x1c6d(%rip),%rax        # 4008 <_IO_stdin_used+0x8>
    239b:	48 89 c6             	mov    %rax,%rsi
    239e:	48 8d 05 66 1c 00 00 	lea    0x1c66(%rip),%rax        # 400b <_IO_stdin_used+0xb>
    23a5:	48 89 c7             	mov    %rax,%rdi
    23a8:	b8 00 00 00 00       	mov    $0x0,%eax
    23ad:	e8 ae fd ff ff       	call   2160 <printf@plt>
    return 80;
    23b2:	bb 50 00 00 00       	mov    $0x50,%ebx
    23b7:	48 8b 45 08          	mov    0x8(%rbp),%rax
    23bb:	48 89 c6             	mov    %rax,%rsi
    23be:	48 8d 05 a4 ff ff ff 	lea    -0x5c(%rip),%rax        # 2369 <_ZL2f3i>
    23c5:	48 89 c7             	mov    %rax,%rdi
    23c8:	e8 53 fe ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    23cd:	89 d8                	mov    %ebx,%eax
    23cf:	eb 28                	jmp    23f9 <_ZL2f3i+0x90>
    23d1:	f3 0f 1e fa          	endbr64 
    23d5:	48 89 c3             	mov    %rax,%rbx
    23d8:	48 8b 45 08          	mov    0x8(%rbp),%rax
    23dc:	48 89 c6             	mov    %rax,%rsi
    23df:	48 8d 05 83 ff ff ff 	lea    -0x7d(%rip),%rax        # 2369 <_ZL2f3i>
    23e6:	48 89 c7             	mov    %rax,%rdi
    23e9:	e8 32 fe ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    23ee:	48 89 d8             	mov    %rbx,%rax
    23f1:	48 89 c7             	mov    %rax,%rdi
    23f4:	e8 57 fe ff ff       	call   2250 <_Unwind_Resume@plt>
}
    23f9:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    23fd:	c9                   	leave  
    23fe:	c3                   	ret    

00000000000023ff <_Z2f2i>:

int 
f2(int id)
{
    23ff:	f3 0f 1e fa          	endbr64 
    2403:	55                   	push   %rbp
    2404:	48 89 e5             	mov    %rsp,%rbp
    2407:	53                   	push   %rbx
    2408:	48 83 ec 18          	sub    $0x18,%rsp
    240c:	89 7d ec             	mov    %edi,-0x14(%rbp)
    240f:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2413:	48 89 c6             	mov    %rax,%rsi
    2416:	48 8d 05 e2 ff ff ff 	lea    -0x1e(%rip),%rax        # 23ff <_Z2f2i>
    241d:	48 89 c7             	mov    %rax,%rdi
    2420:	e8 6b fd ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    printf("%s %d\n", __FUNCTION__, id);
    2425:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2428:	89 c2                	mov    %eax,%edx
    242a:	48 8d 05 e1 1b 00 00 	lea    0x1be1(%rip),%rax        # 4012 <_IO_stdin_used+0x12>
    2431:	48 89 c6             	mov    %rax,%rsi
    2434:	48 8d 05 d0 1b 00 00 	lea    0x1bd0(%rip),%rax        # 400b <_IO_stdin_used+0xb>
    243b:	48 89 c7             	mov    %rax,%rdi
    243e:	b8 00 00 00 00       	mov    $0x0,%eax
    2443:	e8 18 fd ff ff       	call   2160 <printf@plt>
    f3(70+id);
    2448:	8b 45 ec             	mov    -0x14(%rbp),%eax
    244b:	83 c0 46             	add    $0x46,%eax
    244e:	89 c7                	mov    %eax,%edi
    2450:	e8 14 ff ff ff       	call   2369 <_ZL2f3i>
    return 70;
    2455:	bb 46 00 00 00       	mov    $0x46,%ebx
    245a:	48 8b 45 08          	mov    0x8(%rbp),%rax
    245e:	48 89 c6             	mov    %rax,%rsi
    2461:	48 8d 05 97 ff ff ff 	lea    -0x69(%rip),%rax        # 23ff <_Z2f2i>
    2468:	48 89 c7             	mov    %rax,%rdi
    246b:	e8 b0 fd ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    2470:	89 d8                	mov    %ebx,%eax
    2472:	eb 28                	jmp    249c <_Z2f2i+0x9d>
    2474:	f3 0f 1e fa          	endbr64 
    2478:	48 89 c3             	mov    %rax,%rbx
    247b:	48 8b 45 08          	mov    0x8(%rbp),%rax
    247f:	48 89 c6             	mov    %rax,%rsi
    2482:	48 8d 05 76 ff ff ff 	lea    -0x8a(%rip),%rax        # 23ff <_Z2f2i>
    2489:	48 89 c7             	mov    %rax,%rdi
    248c:	e8 8f fd ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    2491:	48 89 d8             	mov    %rbx,%rax
    2494:	48 89 c7             	mov    %rax,%rdi
    2497:	e8 b4 fd ff ff       	call   2250 <_Unwind_Resume@plt>
}
    249c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    24a0:	c9                   	leave  
    24a1:	c3                   	ret    

00000000000024a2 <_ZL2f1i>:

static int 
f1(int id)
{
    24a2:	f3 0f 1e fa          	endbr64 
    24a6:	55                   	push   %rbp
    24a7:	48 89 e5             	mov    %rsp,%rbp
    24aa:	53                   	push   %rbx
    24ab:	48 83 ec 18          	sub    $0x18,%rsp
    24af:	89 7d ec             	mov    %edi,-0x14(%rbp)
    24b2:	48 8b 45 08          	mov    0x8(%rbp),%rax
    24b6:	48 89 c6             	mov    %rax,%rsi
    24b9:	48 8d 05 e2 ff ff ff 	lea    -0x1e(%rip),%rax        # 24a2 <_ZL2f1i>
    24c0:	48 89 c7             	mov    %rax,%rdi
    24c3:	e8 c8 fc ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    printf("%s %d\n", __FUNCTION__, id);
    24c8:	8b 45 ec             	mov    -0x14(%rbp),%eax
    24cb:	89 c2                	mov    %eax,%edx
    24cd:	48 8d 05 41 1b 00 00 	lea    0x1b41(%rip),%rax        # 4015 <_IO_stdin_used+0x15>
    24d4:	48 89 c6             	mov    %rax,%rsi
    24d7:	48 8d 05 2d 1b 00 00 	lea    0x1b2d(%rip),%rax        # 400b <_IO_stdin_used+0xb>
    24de:	48 89 c7             	mov    %rax,%rdi
    24e1:	b8 00 00 00 00       	mov    $0x0,%eax
    24e6:	e8 75 fc ff ff       	call   2160 <printf@plt>
    f2(60+id); 
    24eb:	8b 45 ec             	mov    -0x14(%rbp),%eax
    24ee:	83 c0 3c             	add    $0x3c,%eax
    24f1:	89 c7                	mov    %eax,%edi
    24f3:	e8 07 ff ff ff       	call   23ff <_Z2f2i>
    return 60;
    24f8:	bb 3c 00 00 00       	mov    $0x3c,%ebx
    24fd:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2501:	48 89 c6             	mov    %rax,%rsi
    2504:	48 8d 05 97 ff ff ff 	lea    -0x69(%rip),%rax        # 24a2 <_ZL2f1i>
    250b:	48 89 c7             	mov    %rax,%rdi
    250e:	e8 0d fd ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    2513:	89 d8                	mov    %ebx,%eax
    2515:	eb 28                	jmp    253f <_ZL2f1i+0x9d>
    2517:	f3 0f 1e fa          	endbr64 
    251b:	48 89 c3             	mov    %rax,%rbx
    251e:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2522:	48 89 c6             	mov    %rax,%rsi
    2525:	48 8d 05 76 ff ff ff 	lea    -0x8a(%rip),%rax        # 24a2 <_ZL2f1i>
    252c:	48 89 c7             	mov    %rax,%rdi
    252f:	e8 ec fc ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    2534:	48 89 d8             	mov    %rbx,%rax
    2537:	48 89 c7             	mov    %rax,%rdi
    253a:	e8 11 fd ff ff       	call   2250 <_Unwind_Resume@plt>
}
    253f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    2543:	c9                   	leave  
    2544:	c3                   	ret    

0000000000002545 <_ZL15wrap_strerror_riPci>:



static char *
wrap_strerror_r(int err, char *buf, int len)
{
    2545:	f3 0f 1e fa          	endbr64 
    2549:	55                   	push   %rbp
    254a:	48 89 e5             	mov    %rsp,%rbp
    254d:	53                   	push   %rbx
    254e:	48 83 ec 28          	sub    $0x28,%rsp
    2552:	89 7d dc             	mov    %edi,-0x24(%rbp)
    2555:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    2559:	89 55 d8             	mov    %edx,-0x28(%rbp)
    255c:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2560:	48 89 c6             	mov    %rax,%rsi
    2563:	48 8d 05 db ff ff ff 	lea    -0x25(%rip),%rax        # 2545 <_ZL15wrap_strerror_riPci>
    256a:	48 89 c7             	mov    %rax,%rdi
    256d:	e8 1e fc ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    char *src = NULL;
    2572:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    2579:	00 
    
    memset(buf, 0, len);
    257a:	8b 45 d8             	mov    -0x28(%rbp),%eax
    257d:	48 63 d0             	movslq %eax,%rdx
    2580:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2584:	be 00 00 00 00       	mov    $0x0,%esi
    2589:	48 89 c7             	mov    %rax,%rdi
    258c:	e8 0f fc ff ff       	call   21a0 <memset@plt>
    src = strerror_r(err, buf, len); 
    2591:	8b 45 d8             	mov    -0x28(%rbp),%eax
    2594:	48 63 d0             	movslq %eax,%rdx
    2597:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    259b:	8b 45 dc             	mov    -0x24(%rbp),%eax
    259e:	48 89 ce             	mov    %rcx,%rsi
    25a1:	89 c7                	mov    %eax,%edi
    25a3:	e8 d8 fb ff ff       	call   2180 <strerror_r@plt>
    25a8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)

    return src ? src : buf; 
    25ac:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    25b1:	74 06                	je     25b9 <_ZL15wrap_strerror_riPci+0x74>
    25b3:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
    25b7:	eb 04                	jmp    25bd <_ZL15wrap_strerror_riPci+0x78>
    25b9:	48 8b 5d d0          	mov    -0x30(%rbp),%rbx
    25bd:	48 8b 45 08          	mov    0x8(%rbp),%rax
    25c1:	48 89 c6             	mov    %rax,%rsi
    25c4:	48 8d 05 7a ff ff ff 	lea    -0x86(%rip),%rax        # 2545 <_ZL15wrap_strerror_riPci>
    25cb:	48 89 c7             	mov    %rax,%rdi
    25ce:	e8 4d fc ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    25d3:	48 89 d8             	mov    %rbx,%rax
}
    25d6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    25da:	c9                   	leave  
    25db:	c3                   	ret    

00000000000025dc <_Z7thread1Pv>:


void *
thread1(void *threadid)
{
    25dc:	f3 0f 1e fa          	endbr64 
    25e0:	55                   	push   %rbp
    25e1:	48 89 e5             	mov    %rsp,%rbp
    25e4:	41 54                	push   %r12
    25e6:	53                   	push   %rbx
    25e7:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
    25ee:	48 89 bd c8 fe ff ff 	mov    %rdi,-0x138(%rbp)
    25f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    25fc:	00 00 
    25fe:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2602:	31 c0                	xor    %eax,%eax
    2604:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2608:	48 89 c6             	mov    %rax,%rsi
    260b:	48 8d 05 ca ff ff ff 	lea    -0x36(%rip),%rax        # 25dc <_Z7thread1Pv>
    2612:	48 89 c7             	mov    %rax,%rdi
    2615:	e8 76 fb ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    int   tid = (int)(*(int*)threadid);
    261a:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
    2621:	8b 00                	mov    (%rax),%eax
    2623:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%rbp)
    B     *pB = new D(tid); 
    2629:	bf 10 00 00 00       	mov    $0x10,%edi
    262e:	e8 9d fb ff ff       	call   21d0 <_Znwm@plt>
    2633:	48 89 c3             	mov    %rax,%rbx
    2636:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    263c:	89 c6                	mov    %eax,%esi
    263e:	48 89 df             	mov    %rbx,%rdi
    2641:	e8 f2 0c 00 00       	call   3338 <_ZN1DC1Ei>
    2646:	48 89 9d d8 fe ff ff 	mov    %rbx,-0x128(%rbp)

    printf("Hello World! It's me, thread #%d!\n", tid);
    264d:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    2653:	89 c6                	mov    %eax,%esi
    2655:	48 8d 05 fc 19 00 00 	lea    0x19fc(%rip),%rax        # 4058 <_IO_stdin_used+0x58>
    265c:	48 89 c7             	mov    %rax,%rdi
    265f:	b8 00 00 00 00       	mov    $0x0,%eax
    2664:	e8 f7 fa ff ff       	call   2160 <printf@plt>
 
    while (!_do_exit) {
    2669:	e9 0b 03 00 00       	jmp    2979 <_Z7thread1Pv+0x39d>
        char errbuf[ERRBUF_LEN+1] = {0}; 
    266e:	48 c7 85 e0 fe ff ff 	movq   $0x0,-0x120(%rbp)
    2675:	00 00 00 00 
    2679:	48 c7 85 e8 fe ff ff 	movq   $0x0,-0x118(%rbp)
    2680:	00 00 00 00 
    2684:	48 c7 85 f0 fe ff ff 	movq   $0x0,-0x110(%rbp)
    268b:	00 00 00 00 
    268f:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
    2696:	00 00 00 00 
    269a:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
    26a1:	00 00 00 00 
    26a5:	48 c7 85 08 ff ff ff 	movq   $0x0,-0xf8(%rbp)
    26ac:	00 00 00 00 
    26b0:	48 c7 85 10 ff ff ff 	movq   $0x0,-0xf0(%rbp)
    26b7:	00 00 00 00 
    26bb:	48 c7 85 18 ff ff ff 	movq   $0x0,-0xe8(%rbp)
    26c2:	00 00 00 00 
    26c6:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
    26cd:	00 00 00 00 
    26d1:	48 c7 85 28 ff ff ff 	movq   $0x0,-0xd8(%rbp)
    26d8:	00 00 00 00 
    26dc:	48 c7 85 30 ff ff ff 	movq   $0x0,-0xd0(%rbp)
    26e3:	00 00 00 00 
    26e7:	48 c7 85 38 ff ff ff 	movq   $0x0,-0xc8(%rbp)
    26ee:	00 00 00 00 
    26f2:	48 c7 85 40 ff ff ff 	movq   $0x0,-0xc0(%rbp)
    26f9:	00 00 00 00 
    26fd:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
    2704:	00 00 00 00 
    2708:	48 c7 85 50 ff ff ff 	movq   $0x0,-0xb0(%rbp)
    270f:	00 00 00 00 
    2713:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
    271a:	00 00 00 00 
    271e:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
    2725:	00 00 00 00 
    2729:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    2730:	00 00 00 00 
    2734:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    273b:	00 00 00 00 
    273f:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    2746:	00 00 00 00 
    274a:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
    2751:	00 
    2752:	48 c7 45 88 00 00 00 	movq   $0x0,-0x78(%rbp)
    2759:	00 
    275a:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
    2761:	00 
    2762:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
    2769:	00 
    276a:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
    2771:	00 
    2772:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    2779:	00 
    277a:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    2781:	00 
    2782:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    2789:	00 
    278a:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    2791:	00 
    2792:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    2799:	00 
    279a:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    27a1:	00 
    27a2:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    27a9:	00 
        int  mrc; 

        sleep(1);
    27aa:	bf 01 00 00 00       	mov    $0x1,%edi
    27af:	e8 fc f9 ff ff       	call   21b0 <sleep@plt>
        printf("T#%d!\n", tid);
    27b4:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    27ba:	89 c6                	mov    %eax,%esi
    27bc:	48 8d 05 b8 18 00 00 	lea    0x18b8(%rip),%rax        # 407b <_IO_stdin_used+0x7b>
    27c3:	48 89 c7             	mov    %rax,%rdi
    27c6:	b8 00 00 00 00       	mov    $0x0,%eax
    27cb:	e8 90 f9 ff ff       	call   2160 <printf@plt>

        mrc = pthread_mutex_lock(&mutex2);
    27d0:	48 8d 05 a9 38 00 00 	lea    0x38a9(%rip),%rax        # 6080 <_ZL6mutex2>
    27d7:	48 89 c7             	mov    %rax,%rdi
    27da:	e8 51 fa ff ff       	call   2230 <pthread_mutex_lock@plt>
    27df:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%rbp)
        if (mrc == 0) {
    27e5:	83 bd d4 fe ff ff 00 	cmpl   $0x0,-0x12c(%rbp)
    27ec:	0f 85 87 01 00 00    	jne    2979 <_Z7thread1Pv+0x39d>
            printf("T#%d+M2 (%s)\n", tid, 
    27f2:	48 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%rcx
    27f9:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
    27ff:	ba ff 00 00 00       	mov    $0xff,%edx
    2804:	48 89 ce             	mov    %rcx,%rsi
    2807:	89 c7                	mov    %eax,%edi
    2809:	e8 37 fd ff ff       	call   2545 <_ZL15wrap_strerror_riPci>
    280e:	48 89 c2             	mov    %rax,%rdx
    2811:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    2817:	89 c6                	mov    %eax,%esi
    2819:	48 8d 05 62 18 00 00 	lea    0x1862(%rip),%rax        # 4082 <_IO_stdin_used+0x82>
    2820:	48 89 c7             	mov    %rax,%rdi
    2823:	b8 00 00 00 00       	mov    $0x0,%eax
    2828:	e8 33 f9 ff ff       	call   2160 <printf@plt>
                    wrap_strerror_r(mrc, errbuf, ERRBUF_LEN));
            sleep(2); 
    282d:	bf 02 00 00 00       	mov    $0x2,%edi
    2832:	e8 79 f9 ff ff       	call   21b0 <sleep@plt>

            if (mrc == 0) {
    2837:	83 bd d4 fe ff ff 00 	cmpl   $0x0,-0x12c(%rbp)
    283e:	0f 85 e5 00 00 00    	jne    2929 <_Z7thread1Pv+0x34d>
                mrc = pthread_mutex_lock(&mutex1);
    2844:	48 8d 05 f5 37 00 00 	lea    0x37f5(%rip),%rax        # 6040 <_ZL6mutex1>
    284b:	48 89 c7             	mov    %rax,%rdi
    284e:	e8 dd f9 ff ff       	call   2230 <pthread_mutex_lock@plt>
    2853:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%rbp)
                printf("T#%d+M1 (%s)\n", tid, 
    2859:	48 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%rcx
    2860:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
    2866:	ba ff 00 00 00       	mov    $0xff,%edx
    286b:	48 89 ce             	mov    %rcx,%rsi
    286e:	89 c7                	mov    %eax,%edi
    2870:	e8 d0 fc ff ff       	call   2545 <_ZL15wrap_strerror_riPci>
    2875:	48 89 c2             	mov    %rax,%rdx
    2878:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    287e:	89 c6                	mov    %eax,%esi
    2880:	48 8d 05 09 18 00 00 	lea    0x1809(%rip),%rax        # 4090 <_IO_stdin_used+0x90>
    2887:	48 89 c7             	mov    %rax,%rdi
    288a:	b8 00 00 00 00       	mov    $0x0,%eax
    288f:	e8 cc f8 ff ff       	call   2160 <printf@plt>
                        wrap_strerror_r(mrc, errbuf, ERRBUF_LEN));
                sleep(1);
    2894:	bf 01 00 00 00       	mov    $0x1,%edi
    2899:	e8 12 f9 ff ff       	call   21b0 <sleep@plt>

                pB->m1(1, 2); 
    289e:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    28a5:	48 8b 00             	mov    (%rax),%rax
    28a8:	48 83 c0 10          	add    $0x10,%rax
    28ac:	48 8b 08             	mov    (%rax),%rcx
    28af:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    28b6:	ba 02 00 00 00       	mov    $0x2,%edx
    28bb:	be 01 00 00 00       	mov    $0x1,%esi
    28c0:	48 89 c7             	mov    %rax,%rdi
    28c3:	ff d1                	call   *%rcx
                sleep(1); /*Work :)*/
    28c5:	bf 01 00 00 00       	mov    $0x1,%edi
    28ca:	e8 e1 f8 ff ff       	call   21b0 <sleep@plt>

                mrc = pthread_mutex_unlock(&mutex1);
    28cf:	48 8d 05 6a 37 00 00 	lea    0x376a(%rip),%rax        # 6040 <_ZL6mutex1>
    28d6:	48 89 c7             	mov    %rax,%rdi
    28d9:	e8 e2 f8 ff ff       	call   21c0 <pthread_mutex_unlock@plt>
    28de:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%rbp)
                printf("T#%d-M1 (%s)\n", tid, 
    28e4:	48 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%rcx
    28eb:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
    28f1:	ba ff 00 00 00       	mov    $0xff,%edx
    28f6:	48 89 ce             	mov    %rcx,%rsi
    28f9:	89 c7                	mov    %eax,%edi
    28fb:	e8 45 fc ff ff       	call   2545 <_ZL15wrap_strerror_riPci>
    2900:	48 89 c2             	mov    %rax,%rdx
    2903:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    2909:	89 c6                	mov    %eax,%esi
    290b:	48 8d 05 8c 17 00 00 	lea    0x178c(%rip),%rax        # 409e <_IO_stdin_used+0x9e>
    2912:	48 89 c7             	mov    %rax,%rdi
    2915:	b8 00 00 00 00       	mov    $0x0,%eax
    291a:	e8 41 f8 ff ff       	call   2160 <printf@plt>
                        wrap_strerror_r(mrc, errbuf, ERRBUF_LEN));
                sleep(1);
    291f:	bf 01 00 00 00       	mov    $0x1,%edi
    2924:	e8 87 f8 ff ff       	call   21b0 <sleep@plt>
            }

            mrc = pthread_mutex_unlock(&mutex2);
    2929:	48 8d 05 50 37 00 00 	lea    0x3750(%rip),%rax        # 6080 <_ZL6mutex2>
    2930:	48 89 c7             	mov    %rax,%rdi
    2933:	e8 88 f8 ff ff       	call   21c0 <pthread_mutex_unlock@plt>
    2938:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%rbp)
            printf("T#%d-M2 (%s)\n", tid, 
    293e:	48 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%rcx
    2945:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
    294b:	ba ff 00 00 00       	mov    $0xff,%edx
    2950:	48 89 ce             	mov    %rcx,%rsi
    2953:	89 c7                	mov    %eax,%edi
    2955:	e8 eb fb ff ff       	call   2545 <_ZL15wrap_strerror_riPci>
    295a:	48 89 c2             	mov    %rax,%rdx
    295d:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    2963:	89 c6                	mov    %eax,%esi
    2965:	48 8d 05 40 17 00 00 	lea    0x1740(%rip),%rax        # 40ac <_IO_stdin_used+0xac>
    296c:	48 89 c7             	mov    %rax,%rdi
    296f:	b8 00 00 00 00       	mov    $0x0,%eax
    2974:	e8 e7 f7 ff ff       	call   2160 <printf@plt>
    while (!_do_exit) {
    2979:	8b 05 69 37 00 00    	mov    0x3769(%rip),%eax        # 60e8 <_ZL8_do_exit>
    297f:	85 c0                	test   %eax,%eax
    2981:	0f 84 e7 fc ff ff    	je     266e <_Z7thread1Pv+0x92>
                    wrap_strerror_r(mrc, errbuf, ERRBUF_LEN));
        }
    }

    delete pB; 
    2987:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    298e:	48 85 c0             	test   %rax,%rax
    2991:	74 0f                	je     29a2 <_Z7thread1Pv+0x3c6>
    2993:	48 8b 10             	mov    (%rax),%rdx
    2996:	48 83 c2 08          	add    $0x8,%rdx
    299a:	48 8b 12             	mov    (%rdx),%rdx
    299d:	48 89 c7             	mov    %rax,%rdi
    29a0:	ff d2                	call   *%rdx
    pthread_exit(NULL);
    29a2:	bf 00 00 00 00       	mov    $0x0,%edi
    29a7:	e8 b4 f8 ff ff       	call   2260 <pthread_exit@plt>
    29ac:	f3 0f 1e fa          	endbr64 
    B     *pB = new D(tid); 
    29b0:	49 89 c4             	mov    %rax,%r12
    29b3:	be 10 00 00 00       	mov    $0x10,%esi
    29b8:	48 89 df             	mov    %rbx,%rdi
    29bb:	e8 20 f8 ff ff       	call   21e0 <_ZdlPvm@plt>
    29c0:	4c 89 e3             	mov    %r12,%rbx
    29c3:	eb 07                	jmp    29cc <_Z7thread1Pv+0x3f0>
    29c5:	f3 0f 1e fa          	endbr64 
    29c9:	48 89 c3             	mov    %rax,%rbx
    29cc:	48 8b 45 08          	mov    0x8(%rbp),%rax
    29d0:	48 89 c6             	mov    %rax,%rsi
    29d3:	48 8d 05 02 fc ff ff 	lea    -0x3fe(%rip),%rax        # 25dc <_Z7thread1Pv>
    29da:	48 89 c7             	mov    %rax,%rdi
    29dd:	e8 3e f8 ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    29e2:	48 89 d8             	mov    %rbx,%rax
    29e5:	48 89 c7             	mov    %rax,%rdi
    29e8:	e8 63 f8 ff ff       	call   2250 <_Unwind_Resume@plt>

00000000000029ed <_Z7thread2Pv>:
}

void *
thread2(void *threadid)
{
    29ed:	f3 0f 1e fa          	endbr64 
    29f1:	55                   	push   %rbp
    29f2:	48 89 e5             	mov    %rsp,%rbp
    29f5:	41 54                	push   %r12
    29f7:	53                   	push   %rbx
    29f8:	48 83 ec 20          	sub    $0x20,%rsp
    29fc:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2a00:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2a04:	48 89 c6             	mov    %rax,%rsi
    2a07:	48 8d 05 df ff ff ff 	lea    -0x21(%rip),%rax        # 29ed <_Z7thread2Pv>
    2a0e:	48 89 c7             	mov    %rax,%rdi
    2a11:	e8 7a f7 ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    int   tid = (int)(*(int*)threadid);
    2a16:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2a1a:	8b 00                	mov    (%rax),%eax
    2a1c:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    B     *pB = new D(tid); 
    2a1f:	bf 10 00 00 00       	mov    $0x10,%edi
    2a24:	e8 a7 f7 ff ff       	call   21d0 <_Znwm@plt>
    2a29:	48 89 c3             	mov    %rax,%rbx
    2a2c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    2a2f:	89 c6                	mov    %eax,%esi
    2a31:	48 89 df             	mov    %rbx,%rdi
    2a34:	e8 ff 08 00 00       	call   3338 <_ZN1DC1Ei>
    2a39:	48 89 5d e8          	mov    %rbx,-0x18(%rbp)
    
    printf("Hello World! It's me, thread #%d!\n", tid);
    2a3d:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    2a40:	89 c6                	mov    %eax,%esi
    2a42:	48 8d 05 0f 16 00 00 	lea    0x160f(%rip),%rax        # 4058 <_IO_stdin_used+0x58>
    2a49:	48 89 c7             	mov    %rax,%rdi
    2a4c:	b8 00 00 00 00       	mov    $0x0,%eax
    2a51:	e8 0a f7 ff ff       	call   2160 <printf@plt>
 
    while (!_do_exit) {
    2a56:	eb 44                	jmp    2a9c <_Z7thread2Pv+0xaf>
    
        printf("T#%d!\n", tid);
    2a58:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    2a5b:	89 c6                	mov    %eax,%esi
    2a5d:	48 8d 05 17 16 00 00 	lea    0x1617(%rip),%rax        # 407b <_IO_stdin_used+0x7b>
    2a64:	48 89 c7             	mov    %rax,%rdi
    2a67:	b8 00 00 00 00       	mov    $0x0,%eax
    2a6c:	e8 ef f6 ff ff       	call   2160 <printf@plt>
        sleep(1); /*Work :)*/
    2a71:	bf 01 00 00 00       	mov    $0x1,%edi
    2a76:	e8 35 f7 ff ff       	call   21b0 <sleep@plt>
        pB->m1(3, 4); 
    2a7b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2a7f:	48 8b 00             	mov    (%rax),%rax
    2a82:	48 83 c0 10          	add    $0x10,%rax
    2a86:	48 8b 08             	mov    (%rax),%rcx
    2a89:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2a8d:	ba 04 00 00 00       	mov    $0x4,%edx
    2a92:	be 03 00 00 00       	mov    $0x3,%esi
    2a97:	48 89 c7             	mov    %rax,%rdi
    2a9a:	ff d1                	call   *%rcx
    while (!_do_exit) {
    2a9c:	8b 05 46 36 00 00    	mov    0x3646(%rip),%eax        # 60e8 <_ZL8_do_exit>
    2aa2:	85 c0                	test   %eax,%eax
    2aa4:	74 b2                	je     2a58 <_Z7thread2Pv+0x6b>
        
    }

    delete pB; 
    2aa6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2aaa:	48 85 c0             	test   %rax,%rax
    2aad:	74 0f                	je     2abe <_Z7thread2Pv+0xd1>
    2aaf:	48 8b 10             	mov    (%rax),%rdx
    2ab2:	48 83 c2 08          	add    $0x8,%rdx
    2ab6:	48 8b 12             	mov    (%rdx),%rdx
    2ab9:	48 89 c7             	mov    %rax,%rdi
    2abc:	ff d2                	call   *%rdx
    pthread_exit(NULL);
    2abe:	bf 00 00 00 00       	mov    $0x0,%edi
    2ac3:	e8 98 f7 ff ff       	call   2260 <pthread_exit@plt>
    2ac8:	f3 0f 1e fa          	endbr64 
    B     *pB = new D(tid); 
    2acc:	49 89 c4             	mov    %rax,%r12
    2acf:	be 10 00 00 00       	mov    $0x10,%esi
    2ad4:	48 89 df             	mov    %rbx,%rdi
    2ad7:	e8 04 f7 ff ff       	call   21e0 <_ZdlPvm@plt>
    2adc:	4c 89 e3             	mov    %r12,%rbx
    2adf:	eb 07                	jmp    2ae8 <_Z7thread2Pv+0xfb>
    2ae1:	f3 0f 1e fa          	endbr64 
    2ae5:	48 89 c3             	mov    %rax,%rbx
    2ae8:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2aec:	48 89 c6             	mov    %rax,%rsi
    2aef:	48 8d 05 f7 fe ff ff 	lea    -0x109(%rip),%rax        # 29ed <_Z7thread2Pv>
    2af6:	48 89 c7             	mov    %rax,%rdi
    2af9:	e8 22 f7 ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    2afe:	48 89 d8             	mov    %rbx,%rax
    2b01:	48 89 c7             	mov    %rax,%rdi
    2b04:	e8 47 f7 ff ff       	call   2250 <_Unwind_Resume@plt>

0000000000002b09 <_Z7thread3Pv>:
}

void *
thread3(void *threadid)
{
    2b09:	f3 0f 1e fa          	endbr64 
    2b0d:	55                   	push   %rbp
    2b0e:	48 89 e5             	mov    %rsp,%rbp
    2b11:	41 54                	push   %r12
    2b13:	53                   	push   %rbx
    2b14:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
    2b1b:	48 89 bd c8 fe ff ff 	mov    %rdi,-0x138(%rbp)
    2b22:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2b29:	00 00 
    2b2b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2b2f:	31 c0                	xor    %eax,%eax
    2b31:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2b35:	48 89 c6             	mov    %rax,%rsi
    2b38:	48 8d 05 ca ff ff ff 	lea    -0x36(%rip),%rax        # 2b09 <_Z7thread3Pv>
    2b3f:	48 89 c7             	mov    %rax,%rdi
    2b42:	e8 49 f6 ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    int    tid = (int)(*(int*)threadid);
    2b47:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
    2b4e:	8b 00                	mov    (%rax),%eax
    2b50:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%rbp)
    B      *pB = new D(tid); 
    2b56:	bf 10 00 00 00       	mov    $0x10,%edi
    2b5b:	e8 70 f6 ff ff       	call   21d0 <_Znwm@plt>
    2b60:	48 89 c3             	mov    %rax,%rbx
    2b63:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    2b69:	89 c6                	mov    %eax,%esi
    2b6b:	48 89 df             	mov    %rbx,%rdi
    2b6e:	e8 c5 07 00 00       	call   3338 <_ZN1DC1Ei>
    2b73:	48 89 9d d8 fe ff ff 	mov    %rbx,-0x128(%rbp)
    
    printf("Hello World! It's me, thread #%d!\n", tid);
    2b7a:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    2b80:	89 c6                	mov    %eax,%esi
    2b82:	48 8d 05 cf 14 00 00 	lea    0x14cf(%rip),%rax        # 4058 <_IO_stdin_used+0x58>
    2b89:	48 89 c7             	mov    %rax,%rdi
    2b8c:	b8 00 00 00 00       	mov    $0x0,%eax
    2b91:	e8 ca f5 ff ff       	call   2160 <printf@plt>
 
    while (!_do_exit) {
    2b96:	e9 e9 01 00 00       	jmp    2d84 <_Z7thread3Pv+0x27b>
        int mrc;
        char errbuf[ERRBUF_LEN+1] = {0}; 
    2b9b:	48 c7 85 e0 fe ff ff 	movq   $0x0,-0x120(%rbp)
    2ba2:	00 00 00 00 
    2ba6:	48 c7 85 e8 fe ff ff 	movq   $0x0,-0x118(%rbp)
    2bad:	00 00 00 00 
    2bb1:	48 c7 85 f0 fe ff ff 	movq   $0x0,-0x110(%rbp)
    2bb8:	00 00 00 00 
    2bbc:	48 c7 85 f8 fe ff ff 	movq   $0x0,-0x108(%rbp)
    2bc3:	00 00 00 00 
    2bc7:	48 c7 85 00 ff ff ff 	movq   $0x0,-0x100(%rbp)
    2bce:	00 00 00 00 
    2bd2:	48 c7 85 08 ff ff ff 	movq   $0x0,-0xf8(%rbp)
    2bd9:	00 00 00 00 
    2bdd:	48 c7 85 10 ff ff ff 	movq   $0x0,-0xf0(%rbp)
    2be4:	00 00 00 00 
    2be8:	48 c7 85 18 ff ff ff 	movq   $0x0,-0xe8(%rbp)
    2bef:	00 00 00 00 
    2bf3:	48 c7 85 20 ff ff ff 	movq   $0x0,-0xe0(%rbp)
    2bfa:	00 00 00 00 
    2bfe:	48 c7 85 28 ff ff ff 	movq   $0x0,-0xd8(%rbp)
    2c05:	00 00 00 00 
    2c09:	48 c7 85 30 ff ff ff 	movq   $0x0,-0xd0(%rbp)
    2c10:	00 00 00 00 
    2c14:	48 c7 85 38 ff ff ff 	movq   $0x0,-0xc8(%rbp)
    2c1b:	00 00 00 00 
    2c1f:	48 c7 85 40 ff ff ff 	movq   $0x0,-0xc0(%rbp)
    2c26:	00 00 00 00 
    2c2a:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
    2c31:	00 00 00 00 
    2c35:	48 c7 85 50 ff ff ff 	movq   $0x0,-0xb0(%rbp)
    2c3c:	00 00 00 00 
    2c40:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
    2c47:	00 00 00 00 
    2c4b:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
    2c52:	00 00 00 00 
    2c56:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
    2c5d:	00 00 00 00 
    2c61:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
    2c68:	00 00 00 00 
    2c6c:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
    2c73:	00 00 00 00 
    2c77:	48 c7 45 80 00 00 00 	movq   $0x0,-0x80(%rbp)
    2c7e:	00 
    2c7f:	48 c7 45 88 00 00 00 	movq   $0x0,-0x78(%rbp)
    2c86:	00 
    2c87:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
    2c8e:	00 
    2c8f:	48 c7 45 98 00 00 00 	movq   $0x0,-0x68(%rbp)
    2c96:	00 
    2c97:	48 c7 45 a0 00 00 00 	movq   $0x0,-0x60(%rbp)
    2c9e:	00 
    2c9f:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    2ca6:	00 
    2ca7:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    2cae:	00 
    2caf:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    2cb6:	00 
    2cb7:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    2cbe:	00 
    2cbf:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    2cc6:	00 
    2cc7:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    2cce:	00 
    2ccf:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    2cd6:	00 

        sleep(1);
    2cd7:	bf 01 00 00 00       	mov    $0x1,%edi
    2cdc:	e8 cf f4 ff ff       	call   21b0 <sleep@plt>
        printf("T#%d!\n", tid);
    2ce1:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    2ce7:	89 c6                	mov    %eax,%esi
    2ce9:	48 8d 05 8b 13 00 00 	lea    0x138b(%rip),%rax        # 407b <_IO_stdin_used+0x7b>
    2cf0:	48 89 c7             	mov    %rax,%rdi
    2cf3:	b8 00 00 00 00       	mov    $0x0,%eax
    2cf8:	e8 63 f4 ff ff       	call   2160 <printf@plt>

        mrc = pthread_mutex_trylock(&mutex3); /*<-- PTHREAD_MUTEX_ERRORCHECK*/
    2cfd:	48 8d 05 bc 33 00 00 	lea    0x33bc(%rip),%rax        # 60c0 <_ZL6mutex3>
    2d04:	48 89 c7             	mov    %rax,%rdi
    2d07:	e8 64 f4 ff ff       	call   2170 <pthread_mutex_trylock@plt>
    2d0c:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%rbp)
        printf("T#%d+M3=%d (%s)\n", tid, mrc, 
    2d12:	48 8d 8d e0 fe ff ff 	lea    -0x120(%rbp),%rcx
    2d19:	8b 85 d4 fe ff ff    	mov    -0x12c(%rbp),%eax
    2d1f:	ba ff 00 00 00       	mov    $0xff,%edx
    2d24:	48 89 ce             	mov    %rcx,%rsi
    2d27:	89 c7                	mov    %eax,%edi
    2d29:	e8 17 f8 ff ff       	call   2545 <_ZL15wrap_strerror_riPci>
    2d2e:	48 89 c1             	mov    %rax,%rcx
    2d31:	8b 95 d4 fe ff ff    	mov    -0x12c(%rbp),%edx
    2d37:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    2d3d:	89 c6                	mov    %eax,%esi
    2d3f:	48 8d 05 74 13 00 00 	lea    0x1374(%rip),%rax        # 40ba <_IO_stdin_used+0xba>
    2d46:	48 89 c7             	mov    %rax,%rdi
    2d49:	b8 00 00 00 00       	mov    $0x0,%eax
    2d4e:	e8 0d f4 ff ff       	call   2160 <printf@plt>
                wrap_strerror_r(mrc, errbuf, ERRBUF_LEN)); 
        sleep(2); 
    2d53:	bf 02 00 00 00       	mov    $0x2,%edi
    2d58:	e8 53 f4 ff ff       	call   21b0 <sleep@plt>
        
        pB->m1(5, 6); 
    2d5d:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    2d64:	48 8b 00             	mov    (%rax),%rax
    2d67:	48 83 c0 10          	add    $0x10,%rax
    2d6b:	48 8b 08             	mov    (%rax),%rcx
    2d6e:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    2d75:	ba 06 00 00 00       	mov    $0x6,%edx
    2d7a:	be 05 00 00 00       	mov    $0x5,%esi
    2d7f:	48 89 c7             	mov    %rax,%rdi
    2d82:	ff d1                	call   *%rcx
    while (!_do_exit) {
    2d84:	8b 05 5e 33 00 00    	mov    0x335e(%rip),%eax        # 60e8 <_ZL8_do_exit>
    2d8a:	85 c0                	test   %eax,%eax
    2d8c:	0f 84 09 fe ff ff    	je     2b9b <_Z7thread3Pv+0x92>
    }

    delete pB; 
    2d92:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
    2d99:	48 85 c0             	test   %rax,%rax
    2d9c:	74 0f                	je     2dad <_Z7thread3Pv+0x2a4>
    2d9e:	48 8b 10             	mov    (%rax),%rdx
    2da1:	48 83 c2 08          	add    $0x8,%rdx
    2da5:	48 8b 12             	mov    (%rdx),%rdx
    2da8:	48 89 c7             	mov    %rax,%rdi
    2dab:	ff d2                	call   *%rdx
    pthread_exit(NULL);
    2dad:	bf 00 00 00 00       	mov    $0x0,%edi
    2db2:	e8 a9 f4 ff ff       	call   2260 <pthread_exit@plt>
    2db7:	f3 0f 1e fa          	endbr64 
    B      *pB = new D(tid); 
    2dbb:	49 89 c4             	mov    %rax,%r12
    2dbe:	be 10 00 00 00       	mov    $0x10,%esi
    2dc3:	48 89 df             	mov    %rbx,%rdi
    2dc6:	e8 15 f4 ff ff       	call   21e0 <_ZdlPvm@plt>
    2dcb:	4c 89 e3             	mov    %r12,%rbx
    2dce:	eb 07                	jmp    2dd7 <_Z7thread3Pv+0x2ce>
    2dd0:	f3 0f 1e fa          	endbr64 
    2dd4:	48 89 c3             	mov    %rax,%rbx
    2dd7:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2ddb:	48 89 c6             	mov    %rax,%rsi
    2dde:	48 8d 05 24 fd ff ff 	lea    -0x2dc(%rip),%rax        # 2b09 <_Z7thread3Pv>
    2de5:	48 89 c7             	mov    %rax,%rdi
    2de8:	e8 33 f4 ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    2ded:	48 89 d8             	mov    %rbx,%rax
    2df0:	48 89 c7             	mov    %rax,%rdi
    2df3:	e8 58 f4 ff ff       	call   2250 <_Unwind_Resume@plt>

0000000000002df8 <_ZL7sigexiti>:
}


static void 
sigexit(int signo)
{
    2df8:	f3 0f 1e fa          	endbr64 
    2dfc:	55                   	push   %rbp
    2dfd:	48 89 e5             	mov    %rsp,%rbp
    2e00:	48 83 ec 10          	sub    $0x10,%rsp
    2e04:	89 7d fc             	mov    %edi,-0x4(%rbp)
    2e07:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2e0b:	48 89 c6             	mov    %rax,%rsi
    2e0e:	48 8d 05 e3 ff ff ff 	lea    -0x1d(%rip),%rax        # 2df8 <_ZL7sigexiti>
    2e15:	48 89 c7             	mov    %rax,%rdi
    2e18:	e8 73 f3 ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    _do_exit = 1;
    2e1d:	c7 05 c1 32 00 00 01 	movl   $0x1,0x32c1(%rip)        # 60e8 <_ZL8_do_exit>
    2e24:	00 00 00 
    2e27:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2e2b:	48 89 c6             	mov    %rax,%rsi
    2e2e:	48 8d 05 c3 ff ff ff 	lea    -0x3d(%rip),%rax        # 2df8 <_ZL7sigexiti>
    2e35:	48 89 c7             	mov    %rax,%rdi
    2e38:	e8 e3 f3 ff ff       	call   2220 <__cyg_profile_func_exit@plt>
}
    2e3d:	90                   	nop
    2e3e:	c9                   	leave  
    2e3f:	c3                   	ret    

0000000000002e40 <_ZL10set_signaliPFviE>:

static void 
set_signal(int signo, void (*handler)(int))
{
    2e40:	f3 0f 1e fa          	endbr64 
    2e44:	55                   	push   %rbp
    2e45:	48 89 e5             	mov    %rsp,%rbp
    2e48:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
    2e4f:	89 bd 5c ff ff ff    	mov    %edi,-0xa4(%rbp)
    2e55:	48 89 b5 50 ff ff ff 	mov    %rsi,-0xb0(%rbp)
    2e5c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2e63:	00 00 
    2e65:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2e69:	31 c0                	xor    %eax,%eax
    2e6b:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2e6f:	48 89 c6             	mov    %rax,%rsi
    2e72:	48 8d 05 c7 ff ff ff 	lea    -0x39(%rip),%rax        # 2e40 <_ZL10set_signaliPFviE>
    2e79:	48 89 c7             	mov    %rax,%rdi
    2e7c:	e8 0f f3 ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    struct sigaction sa;

    memset(&sa, 0, sizeof(sa));
    2e81:	48 8d 85 60 ff ff ff 	lea    -0xa0(%rbp),%rax
    2e88:	ba 98 00 00 00       	mov    $0x98,%edx
    2e8d:	be 00 00 00 00       	mov    $0x0,%esi
    2e92:	48 89 c7             	mov    %rax,%rdi
    2e95:	e8 06 f3 ff ff       	call   21a0 <memset@plt>
    sa.sa_handler = (void (*)(int))handler;
    2e9a:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
    2ea1:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
    sigaction(signo, &sa, NULL);
    2ea8:	48 8d 8d 60 ff ff ff 	lea    -0xa0(%rbp),%rcx
    2eaf:	8b 85 5c ff ff ff    	mov    -0xa4(%rbp),%eax
    2eb5:	ba 00 00 00 00       	mov    $0x0,%edx
    2eba:	48 89 ce             	mov    %rcx,%rsi
    2ebd:	89 c7                	mov    %eax,%edi
    2ebf:	e8 4c f3 ff ff       	call   2210 <sigaction@plt>
    2ec4:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2ec8:	48 89 c6             	mov    %rax,%rsi
    2ecb:	48 8d 05 6e ff ff ff 	lea    -0x92(%rip),%rax        # 2e40 <_ZL10set_signaliPFviE>
    2ed2:	48 89 c7             	mov    %rax,%rdi
    2ed5:	e8 46 f3 ff ff       	call   2220 <__cyg_profile_func_exit@plt>
}
    2eda:	90                   	nop
    2edb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2edf:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2ee6:	00 00 
    2ee8:	74 05                	je     2eef <_ZL10set_signaliPFviE+0xaf>
    2eea:	e8 01 f3 ff ff       	call   21f0 <__stack_chk_fail@plt>
    2eef:	c9                   	leave  
    2ef0:	c3                   	ret    

0000000000002ef1 <main>:


int
main(int argc, char *argv[])
{
    2ef1:	f3 0f 1e fa          	endbr64 
    2ef5:	55                   	push   %rbp
    2ef6:	48 89 e5             	mov    %rsp,%rbp
    2ef9:	53                   	push   %rbx
    2efa:	48 83 ec 78          	sub    $0x78,%rsp
    2efe:	89 7d 8c             	mov    %edi,-0x74(%rbp)
    2f01:	48 89 75 80          	mov    %rsi,-0x80(%rbp)
    2f05:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2f0c:	00 00 
    2f0e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2f12:	31 c0                	xor    %eax,%eax
    2f14:	48 8b 45 08          	mov    0x8(%rbp),%rax
    2f18:	48 89 c6             	mov    %rax,%rsi
    2f1b:	48 8d 05 cf ff ff ff 	lea    -0x31(%rip),%rax        # 2ef1 <main>
    2f22:	48 89 c7             	mov    %rax,%rdi
    2f25:	e8 66 f2 ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    #define NUM_THREADS (3) 
    typedef void *(*pthread_func)(void*); 

    pthread_t    threads[NUM_THREADS] = {0};
    2f2a:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    2f31:	00 
    2f32:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    2f39:	00 
    2f3a:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    2f41:	00 
    pthread_func funcs[NUM_THREADS] = {thread1, thread2, thread3};
    2f42:	48 8d 05 93 f6 ff ff 	lea    -0x96d(%rip),%rax        # 25dc <_Z7thread1Pv>
    2f49:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    2f4d:	48 8d 05 99 fa ff ff 	lea    -0x567(%rip),%rax        # 29ed <_Z7thread2Pv>
    2f54:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    2f58:	48 8d 05 aa fb ff ff 	lea    -0x456(%rip),%rax        # 2b09 <_Z7thread3Pv>
    2f5f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	int          ids[NUM_THREADS] = {1,2,3};
    2f63:	c7 45 a4 01 00 00 00 	movl   $0x1,-0x5c(%rbp)
    2f6a:	c7 45 a8 02 00 00 00 	movl   $0x2,-0x58(%rbp)
    2f71:	c7 45 ac 03 00 00 00 	movl   $0x3,-0x54(%rbp)
    int          rc, i;

    set_signal(SIGINT,  sigexit);
    2f78:	48 8d 05 79 fe ff ff 	lea    -0x187(%rip),%rax        # 2df8 <_ZL7sigexiti>
    2f7f:	48 89 c6             	mov    %rax,%rsi
    2f82:	bf 02 00 00 00       	mov    $0x2,%edi
    2f87:	e8 b4 fe ff ff       	call   2e40 <_ZL10set_signaliPFviE>
    set_signal(SIGQUIT, sigexit);
    2f8c:	48 8d 05 65 fe ff ff 	lea    -0x19b(%rip),%rax        # 2df8 <_ZL7sigexiti>
    2f93:	48 89 c6             	mov    %rax,%rsi
    2f96:	bf 03 00 00 00       	mov    $0x3,%edi
    2f9b:	e8 a0 fe ff ff       	call   2e40 <_ZL10set_signaliPFviE>
    
    printf("%s: main(argc=%d)\n", argv[0], argc);
    2fa0:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    2fa4:	48 8b 00             	mov    (%rax),%rax
    2fa7:	8b 55 8c             	mov    -0x74(%rbp),%edx
    2faa:	48 89 c6             	mov    %rax,%rsi
    2fad:	48 8d 05 17 11 00 00 	lea    0x1117(%rip),%rax        # 40cb <_IO_stdin_used+0xcb>
    2fb4:	48 89 c7             	mov    %rax,%rdi
    2fb7:	b8 00 00 00 00       	mov    $0x0,%eax
    2fbc:	e8 9f f1 ff ff       	call   2160 <printf@plt>
    
    for (i=0; i<NUM_THREADS; i++) {
    2fc1:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%rbp)
    2fc8:	eb 6c                	jmp    3036 <main+0x145>
        rc = pthread_create(&threads[i], NULL, funcs[i], (void*)(&ids[i]));
    2fca:	48 8d 55 a4          	lea    -0x5c(%rbp),%rdx
    2fce:	8b 45 9c             	mov    -0x64(%rbp),%eax
    2fd1:	48 98                	cltq   
    2fd3:	48 c1 e0 02          	shl    $0x2,%rax
    2fd7:	48 01 c2             	add    %rax,%rdx
    2fda:	8b 45 9c             	mov    -0x64(%rbp),%eax
    2fdd:	48 98                	cltq   
    2fdf:	48 8b 44 c5 d0       	mov    -0x30(%rbp,%rax,8),%rax
    2fe4:	48 8d 75 b0          	lea    -0x50(%rbp),%rsi
    2fe8:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
    2feb:	48 63 c9             	movslq %ecx,%rcx
    2fee:	48 c1 e1 03          	shl    $0x3,%rcx
    2ff2:	48 8d 3c 0e          	lea    (%rsi,%rcx,1),%rdi
    2ff6:	48 89 d1             	mov    %rdx,%rcx
    2ff9:	48 89 c2             	mov    %rax,%rdx
    2ffc:	be 00 00 00 00       	mov    $0x0,%esi
    3001:	e8 6a f2 ff ff       	call   2270 <pthread_create@plt>
    3006:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if (rc) {
    3009:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
    300d:	74 23                	je     3032 <main+0x141>
            printf("Error: return code from pthread_create() is %d\n", rc);
    300f:	8b 45 a0             	mov    -0x60(%rbp),%eax
    3012:	89 c6                	mov    %eax,%esi
    3014:	48 8d 05 c5 10 00 00 	lea    0x10c5(%rip),%rax        # 40e0 <_IO_stdin_used+0xe0>
    301b:	48 89 c7             	mov    %rax,%rdi
    301e:	b8 00 00 00 00       	mov    $0x0,%eax
    3023:	e8 38 f1 ff ff       	call   2160 <printf@plt>
            exit(EXIT_FAILURE);
    3028:	bf 01 00 00 00       	mov    $0x1,%edi
    302d:	e8 ce f1 ff ff       	call   2200 <exit@plt>
    for (i=0; i<NUM_THREADS; i++) {
    3032:	83 45 9c 01          	addl   $0x1,-0x64(%rbp)
    3036:	83 7d 9c 02          	cmpl   $0x2,-0x64(%rbp)
    303a:	7e 8e                	jle    2fca <main+0xd9>
        }
    }

    while (!_do_exit) 
    303c:	eb 0a                	jmp    3048 <main+0x157>
        sleep(1); 
    303e:	bf 01 00 00 00       	mov    $0x1,%edi
    3043:	e8 68 f1 ff ff       	call   21b0 <sleep@plt>
    while (!_do_exit) 
    3048:	8b 05 9a 30 00 00    	mov    0x309a(%rip),%eax        # 60e8 <_ZL8_do_exit>
    304e:	85 c0                	test   %eax,%eax
    3050:	74 ec                	je     303e <main+0x14d>
        
    printf("%s: done.\n", argv[0]);
    3052:	48 8b 45 80          	mov    -0x80(%rbp),%rax
    3056:	48 8b 00             	mov    (%rax),%rax
    3059:	48 89 c6             	mov    %rax,%rsi
    305c:	48 8d 05 ad 10 00 00 	lea    0x10ad(%rip),%rax        # 4110 <_IO_stdin_used+0x110>
    3063:	48 89 c7             	mov    %rax,%rdi
    3066:	b8 00 00 00 00       	mov    $0x0,%eax
    306b:	e8 f0 f0 ff ff       	call   2160 <printf@plt>
    return EXIT_SUCCESS;
    3070:	bb 00 00 00 00       	mov    $0x0,%ebx
    3075:	48 8b 45 08          	mov    0x8(%rbp),%rax
    3079:	48 89 c6             	mov    %rax,%rsi
    307c:	48 8d 05 6e fe ff ff 	lea    -0x192(%rip),%rax        # 2ef1 <main>
    3083:	48 89 c7             	mov    %rax,%rdi
    3086:	e8 95 f1 ff ff       	call   2220 <__cyg_profile_func_exit@plt>
}
    308b:	89 d8                	mov    %ebx,%eax
    308d:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    3091:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3098:	00 00 
    309a:	74 2f                	je     30cb <main+0x1da>
    309c:	eb 28                	jmp    30c6 <main+0x1d5>
    309e:	f3 0f 1e fa          	endbr64 
    30a2:	48 89 c3             	mov    %rax,%rbx
    30a5:	48 8b 45 08          	mov    0x8(%rbp),%rax
    30a9:	48 89 c6             	mov    %rax,%rsi
    30ac:	48 8d 05 3e fe ff ff 	lea    -0x1c2(%rip),%rax        # 2ef1 <main>
    30b3:	48 89 c7             	mov    %rax,%rdi
    30b6:	e8 65 f1 ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    30bb:	48 89 d8             	mov    %rbx,%rax
    30be:	48 89 c7             	mov    %rax,%rdi
    30c1:	e8 8a f1 ff ff       	call   2250 <_Unwind_Resume@plt>
    30c6:	e8 25 f1 ff ff       	call   21f0 <__stack_chk_fail@plt>
    30cb:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    30cf:	c9                   	leave  
    30d0:	c3                   	ret    
    30d1:	90                   	nop

00000000000030d2 <_ZN1BC1Ev>:
    B() {printf("B::B()\n");}
    30d2:	f3 0f 1e fa          	endbr64 
    30d6:	55                   	push   %rbp
    30d7:	48 89 e5             	mov    %rsp,%rbp
    30da:	53                   	push   %rbx
    30db:	48 83 ec 18          	sub    $0x18,%rsp
    30df:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    30e3:	48 8b 45 08          	mov    0x8(%rbp),%rax
    30e7:	48 89 c6             	mov    %rax,%rsi
    30ea:	48 8d 05 e1 ff ff ff 	lea    -0x1f(%rip),%rax        # 30d2 <_ZN1BC1Ev>
    30f1:	48 89 c7             	mov    %rax,%rdi
    30f4:	e8 97 f0 ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    30f9:	48 8d 15 d8 2b 00 00 	lea    0x2bd8(%rip),%rdx        # 5cd8 <_ZTV1B+0x10>
    3100:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3104:	48 89 10             	mov    %rdx,(%rax)
    3107:	48 8d 05 0a 0f 00 00 	lea    0xf0a(%rip),%rax        # 4018 <_IO_stdin_used+0x18>
    310e:	48 89 c7             	mov    %rax,%rdi
    3111:	e8 2a f1 ff ff       	call   2240 <puts@plt>
    3116:	48 8b 45 08          	mov    0x8(%rbp),%rax
    311a:	48 89 c6             	mov    %rax,%rsi
    311d:	48 8d 05 ae ff ff ff 	lea    -0x52(%rip),%rax        # 30d2 <_ZN1BC1Ev>
    3124:	48 89 c7             	mov    %rax,%rdi
    3127:	e8 f4 f0 ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    312c:	eb 28                	jmp    3156 <_ZN1BC1Ev+0x84>
    312e:	f3 0f 1e fa          	endbr64 
    3132:	48 89 c3             	mov    %rax,%rbx
    3135:	48 8b 45 08          	mov    0x8(%rbp),%rax
    3139:	48 89 c6             	mov    %rax,%rsi
    313c:	48 8d 05 8f ff ff ff 	lea    -0x71(%rip),%rax        # 30d2 <_ZN1BC1Ev>
    3143:	48 89 c7             	mov    %rax,%rdi
    3146:	e8 d5 f0 ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    314b:	48 89 d8             	mov    %rbx,%rax
    314e:	48 89 c7             	mov    %rax,%rdi
    3151:	e8 fa f0 ff ff       	call   2250 <_Unwind_Resume@plt>
    3156:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    315a:	c9                   	leave  
    315b:	c3                   	ret    

000000000000315c <_ZN1BD1Ev>:
    virtual ~B() {printf("B::~B()\n");}
    315c:	f3 0f 1e fa          	endbr64 
    3160:	55                   	push   %rbp
    3161:	48 89 e5             	mov    %rsp,%rbp
    3164:	48 83 ec 10          	sub    $0x10,%rsp
    3168:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    316c:	48 8b 45 08          	mov    0x8(%rbp),%rax
    3170:	48 89 c6             	mov    %rax,%rsi
    3173:	48 8d 05 e2 ff ff ff 	lea    -0x1e(%rip),%rax        # 315c <_ZN1BD1Ev>
    317a:	48 89 c7             	mov    %rax,%rdi
    317d:	e8 0e f0 ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    3182:	48 8d 15 4f 2b 00 00 	lea    0x2b4f(%rip),%rdx        # 5cd8 <_ZTV1B+0x10>
    3189:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    318d:	48 89 10             	mov    %rdx,(%rax)
    3190:	48 8d 05 88 0e 00 00 	lea    0xe88(%rip),%rax        # 401f <_IO_stdin_used+0x1f>
    3197:	48 89 c7             	mov    %rax,%rdi
    319a:	e8 a1 f0 ff ff       	call   2240 <puts@plt>
    319f:	48 8b 45 08          	mov    0x8(%rbp),%rax
    31a3:	48 89 c6             	mov    %rax,%rsi
    31a6:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 315c <_ZN1BD1Ev>
    31ad:	48 89 c7             	mov    %rax,%rdi
    31b0:	e8 6b f0 ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    31b5:	90                   	nop
    31b6:	c9                   	leave  
    31b7:	c3                   	ret    

00000000000031b8 <_ZN1BD0Ev>:
    31b8:	f3 0f 1e fa          	endbr64 
    31bc:	55                   	push   %rbp
    31bd:	48 89 e5             	mov    %rsp,%rbp
    31c0:	48 83 ec 10          	sub    $0x10,%rsp
    31c4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    31c8:	48 8b 45 08          	mov    0x8(%rbp),%rax
    31cc:	48 89 c6             	mov    %rax,%rsi
    31cf:	48 8d 05 e2 ff ff ff 	lea    -0x1e(%rip),%rax        # 31b8 <_ZN1BD0Ev>
    31d6:	48 89 c7             	mov    %rax,%rdi
    31d9:	e8 b2 ef ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    31de:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    31e2:	48 89 c7             	mov    %rax,%rdi
    31e5:	e8 72 ff ff ff       	call   315c <_ZN1BD1Ev>
    31ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    31ee:	be 10 00 00 00       	mov    $0x10,%esi
    31f3:	48 89 c7             	mov    %rax,%rdi
    31f6:	e8 e5 ef ff ff       	call   21e0 <_ZdlPvm@plt>
    31fb:	48 8b 45 08          	mov    0x8(%rbp),%rax
    31ff:	48 89 c6             	mov    %rax,%rsi
    3202:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 31b8 <_ZN1BD0Ev>
    3209:	48 89 c7             	mov    %rax,%rdi
    320c:	e8 0f f0 ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    3211:	c9                   	leave  
    3212:	c3                   	ret    
    3213:	90                   	nop

0000000000003214 <_ZN1B2m1Eii>:
    virtual int m1(int i, int j) {printf("B::m1()\n"); f1(i); return 20;}
    3214:	f3 0f 1e fa          	endbr64 
    3218:	55                   	push   %rbp
    3219:	48 89 e5             	mov    %rsp,%rbp
    321c:	53                   	push   %rbx
    321d:	48 83 ec 18          	sub    $0x18,%rsp
    3221:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3225:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    3228:	89 55 e0             	mov    %edx,-0x20(%rbp)
    322b:	48 8b 45 08          	mov    0x8(%rbp),%rax
    322f:	48 89 c6             	mov    %rax,%rsi
    3232:	48 8d 05 db ff ff ff 	lea    -0x25(%rip),%rax        # 3214 <_ZN1B2m1Eii>
    3239:	48 89 c7             	mov    %rax,%rdi
    323c:	e8 4f ef ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    3241:	48 8d 05 df 0d 00 00 	lea    0xddf(%rip),%rax        # 4027 <_IO_stdin_used+0x27>
    3248:	48 89 c7             	mov    %rax,%rdi
    324b:	e8 f0 ef ff ff       	call   2240 <puts@plt>
    3250:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    3253:	89 c7                	mov    %eax,%edi
    3255:	e8 48 f2 ff ff       	call   24a2 <_ZL2f1i>
    325a:	bb 14 00 00 00       	mov    $0x14,%ebx
    325f:	48 8b 45 08          	mov    0x8(%rbp),%rax
    3263:	48 89 c6             	mov    %rax,%rsi
    3266:	48 8d 05 a7 ff ff ff 	lea    -0x59(%rip),%rax        # 3214 <_ZN1B2m1Eii>
    326d:	48 89 c7             	mov    %rax,%rdi
    3270:	e8 ab ef ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    3275:	89 d8                	mov    %ebx,%eax
    3277:	eb 28                	jmp    32a1 <_ZN1B2m1Eii+0x8d>
    3279:	f3 0f 1e fa          	endbr64 
    327d:	48 89 c3             	mov    %rax,%rbx
    3280:	48 8b 45 08          	mov    0x8(%rbp),%rax
    3284:	48 89 c6             	mov    %rax,%rsi
    3287:	48 8d 05 86 ff ff ff 	lea    -0x7a(%rip),%rax        # 3214 <_ZN1B2m1Eii>
    328e:	48 89 c7             	mov    %rax,%rdi
    3291:	e8 8a ef ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    3296:	48 89 d8             	mov    %rbx,%rax
    3299:	48 89 c7             	mov    %rax,%rdi
    329c:	e8 af ef ff ff       	call   2250 <_Unwind_Resume@plt>
    32a1:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    32a5:	c9                   	leave  
    32a6:	c3                   	ret    
    32a7:	90                   	nop

00000000000032a8 <_ZN1B2m2Ei>:
    virtual int m2(int i) {printf("B::m2()\n"); f1(i); return 21;}
    32a8:	f3 0f 1e fa          	endbr64 
    32ac:	55                   	push   %rbp
    32ad:	48 89 e5             	mov    %rsp,%rbp
    32b0:	53                   	push   %rbx
    32b1:	48 83 ec 18          	sub    $0x18,%rsp
    32b5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    32b9:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    32bc:	48 8b 45 08          	mov    0x8(%rbp),%rax
    32c0:	48 89 c6             	mov    %rax,%rsi
    32c3:	48 8d 05 de ff ff ff 	lea    -0x22(%rip),%rax        # 32a8 <_ZN1B2m2Ei>
    32ca:	48 89 c7             	mov    %rax,%rdi
    32cd:	e8 be ee ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    32d2:	48 8d 05 56 0d 00 00 	lea    0xd56(%rip),%rax        # 402f <_IO_stdin_used+0x2f>
    32d9:	48 89 c7             	mov    %rax,%rdi
    32dc:	e8 5f ef ff ff       	call   2240 <puts@plt>
    32e1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    32e4:	89 c7                	mov    %eax,%edi
    32e6:	e8 b7 f1 ff ff       	call   24a2 <_ZL2f1i>
    32eb:	bb 15 00 00 00       	mov    $0x15,%ebx
    32f0:	48 8b 45 08          	mov    0x8(%rbp),%rax
    32f4:	48 89 c6             	mov    %rax,%rsi
    32f7:	48 8d 05 aa ff ff ff 	lea    -0x56(%rip),%rax        # 32a8 <_ZN1B2m2Ei>
    32fe:	48 89 c7             	mov    %rax,%rdi
    3301:	e8 1a ef ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    3306:	89 d8                	mov    %ebx,%eax
    3308:	eb 28                	jmp    3332 <_ZN1B2m2Ei+0x8a>
    330a:	f3 0f 1e fa          	endbr64 
    330e:	48 89 c3             	mov    %rax,%rbx
    3311:	48 8b 45 08          	mov    0x8(%rbp),%rax
    3315:	48 89 c6             	mov    %rax,%rsi
    3318:	48 8d 05 89 ff ff ff 	lea    -0x77(%rip),%rax        # 32a8 <_ZN1B2m2Ei>
    331f:	48 89 c7             	mov    %rax,%rdi
    3322:	e8 f9 ee ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    3327:	48 89 d8             	mov    %rbx,%rax
    332a:	48 89 c7             	mov    %rax,%rdi
    332d:	e8 1e ef ff ff       	call   2250 <_Unwind_Resume@plt>
    3332:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    3336:	c9                   	leave  
    3337:	c3                   	ret    

0000000000003338 <_ZN1DC1Ei>:
    D(int i) {printf("D::D(int=%d)\n", _id);}
    3338:	f3 0f 1e fa          	endbr64 
    333c:	55                   	push   %rbp
    333d:	48 89 e5             	mov    %rsp,%rbp
    3340:	53                   	push   %rbx
    3341:	48 83 ec 18          	sub    $0x18,%rsp
    3345:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3349:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    334c:	48 8b 45 08          	mov    0x8(%rbp),%rax
    3350:	48 89 c6             	mov    %rax,%rsi
    3353:	48 8d 05 de ff ff ff 	lea    -0x22(%rip),%rax        # 3338 <_ZN1DC1Ei>
    335a:	48 89 c7             	mov    %rax,%rdi
    335d:	e8 2e ee ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    3362:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3366:	48 89 c7             	mov    %rax,%rdi
    3369:	e8 64 fd ff ff       	call   30d2 <_ZN1BC1Ev>
    336e:	48 8d 15 33 29 00 00 	lea    0x2933(%rip),%rdx        # 5ca8 <_ZTV1D+0x10>
    3375:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3379:	48 89 10             	mov    %rdx,(%rax)
    337c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3380:	8b 40 08             	mov    0x8(%rax),%eax
    3383:	89 c6                	mov    %eax,%esi
    3385:	48 8d 05 ab 0c 00 00 	lea    0xcab(%rip),%rax        # 4037 <_IO_stdin_used+0x37>
    338c:	48 89 c7             	mov    %rax,%rdi
    338f:	b8 00 00 00 00       	mov    $0x0,%eax
    3394:	e8 c7 ed ff ff       	call   2160 <printf@plt>
    3399:	48 8b 45 08          	mov    0x8(%rbp),%rax
    339d:	48 89 c6             	mov    %rax,%rsi
    33a0:	48 8d 05 91 ff ff ff 	lea    -0x6f(%rip),%rax        # 3338 <_ZN1DC1Ei>
    33a7:	48 89 c7             	mov    %rax,%rdi
    33aa:	e8 71 ee ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    33af:	eb 3d                	jmp    33ee <_ZN1DC1Ei+0xb6>
    33b1:	f3 0f 1e fa          	endbr64 
    33b5:	48 89 c3             	mov    %rax,%rbx
    33b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    33bc:	48 89 c7             	mov    %rax,%rdi
    33bf:	e8 98 fd ff ff       	call   315c <_ZN1BD1Ev>
    33c4:	eb 07                	jmp    33cd <_ZN1DC1Ei+0x95>
    33c6:	f3 0f 1e fa          	endbr64 
    33ca:	48 89 c3             	mov    %rax,%rbx
    33cd:	48 8b 45 08          	mov    0x8(%rbp),%rax
    33d1:	48 89 c6             	mov    %rax,%rsi
    33d4:	48 8d 05 5d ff ff ff 	lea    -0xa3(%rip),%rax        # 3338 <_ZN1DC1Ei>
    33db:	48 89 c7             	mov    %rax,%rdi
    33de:	e8 3d ee ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    33e3:	48 89 d8             	mov    %rbx,%rax
    33e6:	48 89 c7             	mov    %rax,%rdi
    33e9:	e8 62 ee ff ff       	call   2250 <_Unwind_Resume@plt>
    33ee:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    33f2:	c9                   	leave  
    33f3:	c3                   	ret    

00000000000033f4 <_ZN1DD1Ev>:
    virtual ~D() {printf("D::~D()\n");}
    33f4:	f3 0f 1e fa          	endbr64 
    33f8:	55                   	push   %rbp
    33f9:	48 89 e5             	mov    %rsp,%rbp
    33fc:	48 83 ec 10          	sub    $0x10,%rsp
    3400:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    3404:	48 8b 45 08          	mov    0x8(%rbp),%rax
    3408:	48 89 c6             	mov    %rax,%rsi
    340b:	48 8d 05 e2 ff ff ff 	lea    -0x1e(%rip),%rax        # 33f4 <_ZN1DD1Ev>
    3412:	48 89 c7             	mov    %rax,%rdi
    3415:	e8 76 ed ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    341a:	48 8d 15 87 28 00 00 	lea    0x2887(%rip),%rdx        # 5ca8 <_ZTV1D+0x10>
    3421:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3425:	48 89 10             	mov    %rdx,(%rax)
    3428:	48 8d 05 16 0c 00 00 	lea    0xc16(%rip),%rax        # 4045 <_IO_stdin_used+0x45>
    342f:	48 89 c7             	mov    %rax,%rdi
    3432:	e8 09 ee ff ff       	call   2240 <puts@plt>
    3437:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    343b:	48 89 c7             	mov    %rax,%rdi
    343e:	e8 19 fd ff ff       	call   315c <_ZN1BD1Ev>
    3443:	48 8b 45 08          	mov    0x8(%rbp),%rax
    3447:	48 89 c6             	mov    %rax,%rsi
    344a:	48 8d 05 a3 ff ff ff 	lea    -0x5d(%rip),%rax        # 33f4 <_ZN1DD1Ev>
    3451:	48 89 c7             	mov    %rax,%rdi
    3454:	e8 c7 ed ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    3459:	90                   	nop
    345a:	c9                   	leave  
    345b:	c3                   	ret    

000000000000345c <_ZN1DD0Ev>:
    345c:	f3 0f 1e fa          	endbr64 
    3460:	55                   	push   %rbp
    3461:	48 89 e5             	mov    %rsp,%rbp
    3464:	48 83 ec 10          	sub    $0x10,%rsp
    3468:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    346c:	48 8b 45 08          	mov    0x8(%rbp),%rax
    3470:	48 89 c6             	mov    %rax,%rsi
    3473:	48 8d 05 e2 ff ff ff 	lea    -0x1e(%rip),%rax        # 345c <_ZN1DD0Ev>
    347a:	48 89 c7             	mov    %rax,%rdi
    347d:	e8 0e ed ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    3482:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3486:	48 89 c7             	mov    %rax,%rdi
    3489:	e8 66 ff ff ff       	call   33f4 <_ZN1DD1Ev>
    348e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3492:	be 10 00 00 00       	mov    $0x10,%esi
    3497:	48 89 c7             	mov    %rax,%rdi
    349a:	e8 41 ed ff ff       	call   21e0 <_ZdlPvm@plt>
    349f:	48 8b 45 08          	mov    0x8(%rbp),%rax
    34a3:	48 89 c6             	mov    %rax,%rsi
    34a6:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 345c <_ZN1DD0Ev>
    34ad:	48 89 c7             	mov    %rax,%rdi
    34b0:	e8 6b ed ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    34b5:	c9                   	leave  
    34b6:	c3                   	ret    
    34b7:	90                   	nop

00000000000034b8 <_ZN1D2m1Eii>:
    virtual int m1(int i, int j) {printf("D::m1()\n"); m2(j+10); return 30;}
    34b8:	f3 0f 1e fa          	endbr64 
    34bc:	55                   	push   %rbp
    34bd:	48 89 e5             	mov    %rsp,%rbp
    34c0:	53                   	push   %rbx
    34c1:	48 83 ec 18          	sub    $0x18,%rsp
    34c5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    34c9:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    34cc:	89 55 e0             	mov    %edx,-0x20(%rbp)
    34cf:	48 8b 45 08          	mov    0x8(%rbp),%rax
    34d3:	48 89 c6             	mov    %rax,%rsi
    34d6:	48 8d 05 db ff ff ff 	lea    -0x25(%rip),%rax        # 34b8 <_ZN1D2m1Eii>
    34dd:	48 89 c7             	mov    %rax,%rdi
    34e0:	e8 ab ec ff ff       	call   2190 <__cyg_profile_func_enter@plt>
    34e5:	48 8d 05 61 0b 00 00 	lea    0xb61(%rip),%rax        # 404d <_IO_stdin_used+0x4d>
    34ec:	48 89 c7             	mov    %rax,%rdi
    34ef:	e8 4c ed ff ff       	call   2240 <puts@plt>
    34f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    34f8:	48 8b 00             	mov    (%rax),%rax
    34fb:	48 83 c0 18          	add    $0x18,%rax
    34ff:	48 8b 10             	mov    (%rax),%rdx
    3502:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3506:	8b 4d e0             	mov    -0x20(%rbp),%ecx
    3509:	83 c1 0a             	add    $0xa,%ecx
    350c:	89 ce                	mov    %ecx,%esi
    350e:	48 89 c7             	mov    %rax,%rdi
    3511:	ff d2                	call   *%rdx
    3513:	bb 1e 00 00 00       	mov    $0x1e,%ebx
    3518:	48 8b 45 08          	mov    0x8(%rbp),%rax
    351c:	48 89 c6             	mov    %rax,%rsi
    351f:	48 8d 05 92 ff ff ff 	lea    -0x6e(%rip),%rax        # 34b8 <_ZN1D2m1Eii>
    3526:	48 89 c7             	mov    %rax,%rdi
    3529:	e8 f2 ec ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    352e:	89 d8                	mov    %ebx,%eax
    3530:	eb 28                	jmp    355a <_ZN1D2m1Eii+0xa2>
    3532:	f3 0f 1e fa          	endbr64 
    3536:	48 89 c3             	mov    %rax,%rbx
    3539:	48 8b 45 08          	mov    0x8(%rbp),%rax
    353d:	48 89 c6             	mov    %rax,%rsi
    3540:	48 8d 05 71 ff ff ff 	lea    -0x8f(%rip),%rax        # 34b8 <_ZN1D2m1Eii>
    3547:	48 89 c7             	mov    %rax,%rdi
    354a:	e8 d1 ec ff ff       	call   2220 <__cyg_profile_func_exit@plt>
    354f:	48 89 d8             	mov    %rbx,%rax
    3552:	48 89 c7             	mov    %rax,%rdi
    3555:	e8 f6 ec ff ff       	call   2250 <_Unwind_Resume@plt>
    355a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    355e:	c9                   	leave  
    355f:	c3                   	ret    

Disassembly of section .fini:

0000000000003560 <_fini>:
    3560:	f3 0f 1e fa          	endbr64 
    3564:	48 83 ec 08          	sub    $0x8,%rsp
    3568:	48 83 c4 08          	add    $0x8,%rsp
    356c:	c3                   	ret    
