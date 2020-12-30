
map:     file format elf64-x86-64
map
architecture: i386:x86-64, flags 0x00000150:
HAS_SYMS, DYNAMIC, D_PAGED
start address 0x0000000000000580

Program Header:
    PHDR off    0x0000000000000040 vaddr 0x0000000000000040 paddr 0x0000000000000040 align 2**3
         filesz 0x00000000000001f8 memsz 0x00000000000001f8 flags r--
  INTERP off    0x0000000000000238 vaddr 0x0000000000000238 paddr 0x0000000000000238 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**21
         filesz 0x0000000000000908 memsz 0x0000000000000908 flags r-x
    LOAD off    0x0000000000000db0 vaddr 0x0000000000200db0 paddr 0x0000000000200db0 align 2**21
         filesz 0x0000000000000264 memsz 0x0000000000000270 flags rw-
 DYNAMIC off    0x0000000000000dc0 vaddr 0x0000000000200dc0 paddr 0x0000000000200dc0 align 2**3
         filesz 0x00000000000001f0 memsz 0x00000000000001f0 flags rw-
    NOTE off    0x0000000000000254 vaddr 0x0000000000000254 paddr 0x0000000000000254 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
EH_FRAME off    0x0000000000000798 vaddr 0x0000000000000798 paddr 0x0000000000000798 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr 0x0000000000000000 align 2**4
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x0000000000000db0 vaddr 0x0000000000200db0 paddr 0x0000000000200db0 align 2**0
         filesz 0x0000000000000250 memsz 0x0000000000000250 flags r--

Dynamic Section:
  NEEDED               libc.so.6
  INIT                 0x0000000000000528
  FINI                 0x0000000000000784
  INIT_ARRAY           0x0000000000200db0
  INIT_ARRAYSZ         0x0000000000000008
  FINI_ARRAY           0x0000000000200db8
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x0000000000000298
  STRTAB               0x0000000000000378
  SYMTAB               0x00000000000002b8
  STRSZ                0x000000000000008b
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  PLTGOT               0x0000000000200fb0
  PLTRELSZ             0x0000000000000030
  PLTREL               0x0000000000000007
  JMPREL               0x00000000000004f8
  RELA                 0x0000000000000438
  RELASZ               0x00000000000000c0
  RELAENT              0x0000000000000018
  FLAGS                0x0000000000000008
  FLAGS_1              0x0000000008000001
  VERNEED              0x0000000000000418
  VERNEEDNUM           0x0000000000000001
  VERSYM               0x0000000000000404
  RELACOUNT            0x0000000000000003

Version References:
  required from libc.so.6:
    0x09691a75 0x00 02 GLIBC_2.2.5

Sections:
Idx Name          Size      VMA               LMA               File off  Algn
  0 .interp       0000001c  0000000000000238  0000000000000238  00000238  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .note.ABI-tag 00000020  0000000000000254  0000000000000254  00000254  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .note.gnu.build-id 00000024  0000000000000274  0000000000000274  00000274  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .gnu.hash     0000001c  0000000000000298  0000000000000298  00000298  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .dynsym       000000c0  00000000000002b8  00000000000002b8  000002b8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  5 .dynstr       0000008b  0000000000000378  0000000000000378  00000378  2**0
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  6 .gnu.version  00000010  0000000000000404  0000000000000404  00000404  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  7 .gnu.version_r 00000020  0000000000000418  0000000000000418  00000418  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  8 .rela.dyn     000000c0  0000000000000438  0000000000000438  00000438  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  9 .rela.plt     00000030  00000000000004f8  00000000000004f8  000004f8  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 10 .init         00000017  0000000000000528  0000000000000528  00000528  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 11 .plt          00000030  0000000000000540  0000000000000540  00000540  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 12 .plt.got      00000008  0000000000000570  0000000000000570  00000570  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 13 .text         00000202  0000000000000580  0000000000000580  00000580  2**4
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 14 .fini         00000009  0000000000000784  0000000000000784  00000784  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 15 .rodata       00000008  0000000000000790  0000000000000790  00000790  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 16 .eh_frame_hdr 00000044  0000000000000798  0000000000000798  00000798  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 17 .eh_frame     00000128  00000000000007e0  00000000000007e0  000007e0  2**3
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
 18 .init_array   00000008  0000000000200db0  0000000000200db0  00000db0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 19 .fini_array   00000008  0000000000200db8  0000000000200db8  00000db8  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 20 .dynamic      000001f0  0000000000200dc0  0000000000200dc0  00000dc0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 21 .got          00000050  0000000000200fb0  0000000000200fb0  00000fb0  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 22 .data         00000014  0000000000201000  0000000000201000  00001000  2**3
                  CONTENTS, ALLOC, LOAD, DATA
 23 .bss          0000000c  0000000000201014  0000000000201014  00001014  2**2
                  ALLOC
 24 .comment      00000029  0000000000000000  0000000000000000  00001014  2**0
                  CONTENTS, READONLY
 25 .debug_aranges 00000060  0000000000000000  0000000000000000  0000103d  2**0
                  CONTENTS, READONLY, DEBUGGING
 26 .debug_info   000006ea  0000000000000000  0000000000000000  0000109d  2**0
                  CONTENTS, READONLY, DEBUGGING
 27 .debug_abbrev 0000023a  0000000000000000  0000000000000000  00001787  2**0
                  CONTENTS, READONLY, DEBUGGING
 28 .debug_line   000001ad  0000000000000000  0000000000000000  000019c1  2**0
                  CONTENTS, READONLY, DEBUGGING
 29 .debug_str    000002c2  0000000000000000  0000000000000000  00001b6e  2**0
                  CONTENTS, READONLY, DEBUGGING
SYMBOL TABLE:
0000000000000238 l    d  .interp	0000000000000000              .interp
0000000000000254 l    d  .note.ABI-tag	0000000000000000              .note.ABI-tag
0000000000000274 l    d  .note.gnu.build-id	0000000000000000              .note.gnu.build-id
0000000000000298 l    d  .gnu.hash	0000000000000000              .gnu.hash
00000000000002b8 l    d  .dynsym	0000000000000000              .dynsym
0000000000000378 l    d  .dynstr	0000000000000000              .dynstr
0000000000000404 l    d  .gnu.version	0000000000000000              .gnu.version
0000000000000418 l    d  .gnu.version_r	0000000000000000              .gnu.version_r
0000000000000438 l    d  .rela.dyn	0000000000000000              .rela.dyn
00000000000004f8 l    d  .rela.plt	0000000000000000              .rela.plt
0000000000000528 l    d  .init	0000000000000000              .init
0000000000000540 l    d  .plt	0000000000000000              .plt
0000000000000570 l    d  .plt.got	0000000000000000              .plt.got
0000000000000580 l    d  .text	0000000000000000              .text
0000000000000784 l    d  .fini	0000000000000000              .fini
0000000000000790 l    d  .rodata	0000000000000000              .rodata
0000000000000798 l    d  .eh_frame_hdr	0000000000000000              .eh_frame_hdr
00000000000007e0 l    d  .eh_frame	0000000000000000              .eh_frame
0000000000200db0 l    d  .init_array	0000000000000000              .init_array
0000000000200db8 l    d  .fini_array	0000000000000000              .fini_array
0000000000200dc0 l    d  .dynamic	0000000000000000              .dynamic
0000000000200fb0 l    d  .got	0000000000000000              .got
0000000000201000 l    d  .data	0000000000000000              .data
0000000000201014 l    d  .bss	0000000000000000              .bss
0000000000000000 l    d  .comment	0000000000000000              .comment
0000000000000000 l    d  .debug_aranges	0000000000000000              .debug_aranges
0000000000000000 l    d  .debug_info	0000000000000000              .debug_info
0000000000000000 l    d  .debug_abbrev	0000000000000000              .debug_abbrev
0000000000000000 l    d  .debug_line	0000000000000000              .debug_line
0000000000000000 l    d  .debug_str	0000000000000000              .debug_str
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
00000000000005b0 l     F .text	0000000000000000              deregister_tm_clones
00000000000005f0 l     F .text	0000000000000000              register_tm_clones
0000000000000640 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000201014 l     O .bss	0000000000000001              completed.7698
0000000000200db8 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
0000000000000680 l     F .text	0000000000000000              frame_dummy
0000000000200db0 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              map.c
0000000000000000 l    df *ABS*	0000000000000000              recurse.c
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
0000000000000904 l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000000000 l    df *ABS*	0000000000000000              
0000000000200db8 l       .init_array	0000000000000000              __init_array_end
0000000000200dc0 l     O .dynamic	0000000000000000              _DYNAMIC
0000000000200db0 l       .init_array	0000000000000000              __init_array_start
0000000000000798 l       .eh_frame_hdr	0000000000000000              __GNU_EH_FRAME_HDR
0000000000200fb0 l     O .got	0000000000000000              _GLOBAL_OFFSET_TABLE_
0000000000000780 g     F .text	0000000000000002              __libc_csu_fini
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000201000  w      .data	0000000000000000              data_start
0000000000201014 g       .data	0000000000000000              _edata
0000000000000784 g     F .fini	0000000000000000              _fini
0000000000000000       F *UND*	0000000000000000              printf@@GLIBC_2.2.5
00000000000006cd g     F .text	0000000000000043              recur
0000000000201010 g     O .data	0000000000000004              stuff
0000000000000000       F *UND*	0000000000000000              __libc_start_main@@GLIBC_2.2.5
0000000000201000 g       .data	0000000000000000              __data_start
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000201008 g     O .data	0000000000000000              .hidden __dso_handle
0000000000000790 g     O .rodata	0000000000000004              _IO_stdin_used
0000000000000710 g     F .text	0000000000000065              __libc_csu_init
0000000000000000       F *UND*	0000000000000000              malloc@@GLIBC_2.2.5
0000000000201018 g     O .bss	0000000000000004              foo
0000000000201020 g       .bss	0000000000000000              _end
0000000000000580 g     F .text	000000000000002b              _start
0000000000201014 g       .bss	0000000000000000              __bss_start
000000000000068a g     F .text	0000000000000043              main
0000000000201018 g     O .data	0000000000000000              .hidden __TMC_END__
0000000000000000  w      *UND*	0000000000000000              _ITM_registerTMCloneTable
0000000000000000  w    F *UND*	0000000000000000              __cxa_finalize@@GLIBC_2.2.5
0000000000000528 g     F .init	0000000000000000              _init



Disassembly of section .init:

0000000000000528 <_init>:
 528:	48 83 ec 08          	sub    $0x8,%rsp
 52c:	48 8b 05 b5 0a 20 00 	mov    0x200ab5(%rip),%rax        # 200fe8 <__gmon_start__>
 533:	48 85 c0             	test   %rax,%rax
 536:	74 02                	je     53a <_init+0x12>
 538:	ff d0                	callq  *%rax
 53a:	48 83 c4 08          	add    $0x8,%rsp
 53e:	c3                   	retq   

Disassembly of section .plt:

0000000000000540 <.plt>:
 540:	ff 35 72 0a 20 00    	pushq  0x200a72(%rip)        # 200fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
 546:	ff 25 74 0a 20 00    	jmpq   *0x200a74(%rip)        # 200fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
 54c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000550 <printf@plt>:
 550:	ff 25 72 0a 20 00    	jmpq   *0x200a72(%rip)        # 200fc8 <printf@GLIBC_2.2.5>
 556:	68 00 00 00 00       	pushq  $0x0
 55b:	e9 e0 ff ff ff       	jmpq   540 <.plt>

0000000000000560 <malloc@plt>:
 560:	ff 25 6a 0a 20 00    	jmpq   *0x200a6a(%rip)        # 200fd0 <malloc@GLIBC_2.2.5>
 566:	68 01 00 00 00       	pushq  $0x1
 56b:	e9 d0 ff ff ff       	jmpq   540 <.plt>

Disassembly of section .plt.got:

0000000000000570 <__cxa_finalize@plt>:
 570:	ff 25 82 0a 20 00    	jmpq   *0x200a82(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 576:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000580 <_start>:
 580:	31 ed                	xor    %ebp,%ebp
 582:	49 89 d1             	mov    %rdx,%r9
 585:	5e                   	pop    %rsi
 586:	48 89 e2             	mov    %rsp,%rdx
 589:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 58d:	50                   	push   %rax
 58e:	54                   	push   %rsp
 58f:	4c 8d 05 ea 01 00 00 	lea    0x1ea(%rip),%r8        # 780 <__libc_csu_fini>
 596:	48 8d 0d 73 01 00 00 	lea    0x173(%rip),%rcx        # 710 <__libc_csu_init>
 59d:	48 8d 3d e6 00 00 00 	lea    0xe6(%rip),%rdi        # 68a <main>
 5a4:	ff 15 36 0a 20 00    	callq  *0x200a36(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 5aa:	f4                   	hlt    
 5ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000005b0 <deregister_tm_clones>:
 5b0:	48 8d 3d 61 0a 20 00 	lea    0x200a61(%rip),%rdi        # 201018 <__TMC_END__>
 5b7:	55                   	push   %rbp
 5b8:	48 8d 05 59 0a 20 00 	lea    0x200a59(%rip),%rax        # 201018 <__TMC_END__>
 5bf:	48 39 f8             	cmp    %rdi,%rax
 5c2:	48 89 e5             	mov    %rsp,%rbp
 5c5:	74 19                	je     5e0 <deregister_tm_clones+0x30>
 5c7:	48 8b 05 0a 0a 20 00 	mov    0x200a0a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 5ce:	48 85 c0             	test   %rax,%rax
 5d1:	74 0d                	je     5e0 <deregister_tm_clones+0x30>
 5d3:	5d                   	pop    %rbp
 5d4:	ff e0                	jmpq   *%rax
 5d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5dd:	00 00 00 
 5e0:	5d                   	pop    %rbp
 5e1:	c3                   	retq   
 5e2:	0f 1f 40 00          	nopl   0x0(%rax)
 5e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5ed:	00 00 00 

00000000000005f0 <register_tm_clones>:
 5f0:	48 8d 3d 21 0a 20 00 	lea    0x200a21(%rip),%rdi        # 201018 <__TMC_END__>
 5f7:	48 8d 35 1a 0a 20 00 	lea    0x200a1a(%rip),%rsi        # 201018 <__TMC_END__>
 5fe:	55                   	push   %rbp
 5ff:	48 29 fe             	sub    %rdi,%rsi
 602:	48 89 e5             	mov    %rsp,%rbp
 605:	48 c1 fe 03          	sar    $0x3,%rsi
 609:	48 89 f0             	mov    %rsi,%rax
 60c:	48 c1 e8 3f          	shr    $0x3f,%rax
 610:	48 01 c6             	add    %rax,%rsi
 613:	48 d1 fe             	sar    %rsi
 616:	74 18                	je     630 <register_tm_clones+0x40>
 618:	48 8b 05 d1 09 20 00 	mov    0x2009d1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 61f:	48 85 c0             	test   %rax,%rax
 622:	74 0c                	je     630 <register_tm_clones+0x40>
 624:	5d                   	pop    %rbp
 625:	ff e0                	jmpq   *%rax
 627:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 62e:	00 00 
 630:	5d                   	pop    %rbp
 631:	c3                   	retq   
 632:	0f 1f 40 00          	nopl   0x0(%rax)
 636:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 63d:	00 00 00 

0000000000000640 <__do_global_dtors_aux>:
 640:	80 3d cd 09 20 00 00 	cmpb   $0x0,0x2009cd(%rip)        # 201014 <_edata>
 647:	75 2f                	jne    678 <__do_global_dtors_aux+0x38>
 649:	48 83 3d a7 09 20 00 	cmpq   $0x0,0x2009a7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 650:	00 
 651:	55                   	push   %rbp
 652:	48 89 e5             	mov    %rsp,%rbp
 655:	74 0c                	je     663 <__do_global_dtors_aux+0x23>
 657:	48 8b 3d aa 09 20 00 	mov    0x2009aa(%rip),%rdi        # 201008 <__dso_handle>
 65e:	e8 0d ff ff ff       	callq  570 <__cxa_finalize@plt>
 663:	e8 48 ff ff ff       	callq  5b0 <deregister_tm_clones>
 668:	c6 05 a5 09 20 00 01 	movb   $0x1,0x2009a5(%rip)        # 201014 <_edata>
 66f:	5d                   	pop    %rbp
 670:	c3                   	retq   
 671:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 678:	f3 c3                	repz retq 
 67a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000680 <frame_dummy>:
 680:	55                   	push   %rbp
 681:	48 89 e5             	mov    %rsp,%rbp
 684:	5d                   	pop    %rbp
 685:	e9 66 ff ff ff       	jmpq   5f0 <register_tm_clones>

000000000000068a <main>:
 68a:	55                   	push   %rbp
 68b:	48 89 e5             	mov    %rsp,%rbp
 68e:	48 83 ec 30          	sub    $0x30,%rsp
 692:	89 7d dc             	mov    %edi,-0x24(%rbp)
 695:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
 699:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
 6a0:	bf 64 00 00 00       	mov    $0x64,%edi
 6a5:	e8 b6 fe ff ff       	callq  560 <malloc@plt>
 6aa:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
 6ae:	bf 64 00 00 00       	mov    $0x64,%edi
 6b3:	e8 a8 fe ff ff       	callq  560 <malloc@plt>
 6b8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 6bc:	bf 03 00 00 00       	mov    $0x3,%edi
 6c1:	e8 07 00 00 00       	callq  6cd <recur>
 6c6:	b8 00 00 00 00       	mov    $0x0,%eax
 6cb:	c9                   	leaveq 
 6cc:	c3                   	retq   

00000000000006cd <recur>:
 6cd:	55                   	push   %rbp
 6ce:	48 89 e5             	mov    %rsp,%rbp
 6d1:	48 83 ec 20          	sub    $0x20,%rsp
 6d5:	89 7d ec             	mov    %edi,-0x14(%rbp)
 6d8:	8b 45 ec             	mov    -0x14(%rbp),%eax
 6db:	89 45 fc             	mov    %eax,-0x4(%rbp)
 6de:	8b 45 ec             	mov    -0x14(%rbp),%eax
 6e1:	89 c6                	mov    %eax,%esi
 6e3:	48 8d 3d aa 00 00 00 	lea    0xaa(%rip),%rdi        # 794 <_IO_stdin_used+0x4>
 6ea:	b8 00 00 00 00       	mov    $0x0,%eax
 6ef:	e8 5c fe ff ff       	callq  550 <printf@plt>
 6f4:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
 6f8:	7e 0f                	jle    709 <recur+0x3c>
 6fa:	8b 45 ec             	mov    -0x14(%rbp),%eax
 6fd:	83 e8 01             	sub    $0x1,%eax
 700:	89 c7                	mov    %eax,%edi
 702:	e8 c6 ff ff ff       	callq  6cd <recur>
 707:	eb 05                	jmp    70e <recur+0x41>
 709:	b8 00 00 00 00       	mov    $0x0,%eax
 70e:	c9                   	leaveq 
 70f:	c3                   	retq   

0000000000000710 <__libc_csu_init>:
 710:	41 57                	push   %r15
 712:	41 56                	push   %r14
 714:	49 89 d7             	mov    %rdx,%r15
 717:	41 55                	push   %r13
 719:	41 54                	push   %r12
 71b:	4c 8d 25 8e 06 20 00 	lea    0x20068e(%rip),%r12        # 200db0 <__frame_dummy_init_array_entry>
 722:	55                   	push   %rbp
 723:	48 8d 2d 8e 06 20 00 	lea    0x20068e(%rip),%rbp        # 200db8 <__init_array_end>
 72a:	53                   	push   %rbx
 72b:	41 89 fd             	mov    %edi,%r13d
 72e:	49 89 f6             	mov    %rsi,%r14
 731:	4c 29 e5             	sub    %r12,%rbp
 734:	48 83 ec 08          	sub    $0x8,%rsp
 738:	48 c1 fd 03          	sar    $0x3,%rbp
 73c:	e8 e7 fd ff ff       	callq  528 <_init>
 741:	48 85 ed             	test   %rbp,%rbp
 744:	74 20                	je     766 <__libc_csu_init+0x56>
 746:	31 db                	xor    %ebx,%ebx
 748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 74f:	00 
 750:	4c 89 fa             	mov    %r15,%rdx
 753:	4c 89 f6             	mov    %r14,%rsi
 756:	44 89 ef             	mov    %r13d,%edi
 759:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 75d:	48 83 c3 01          	add    $0x1,%rbx
 761:	48 39 dd             	cmp    %rbx,%rbp
 764:	75 ea                	jne    750 <__libc_csu_init+0x40>
 766:	48 83 c4 08          	add    $0x8,%rsp
 76a:	5b                   	pop    %rbx
 76b:	5d                   	pop    %rbp
 76c:	41 5c                	pop    %r12
 76e:	41 5d                	pop    %r13
 770:	41 5e                	pop    %r14
 772:	41 5f                	pop    %r15
 774:	c3                   	retq   
 775:	90                   	nop
 776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 77d:	00 00 00 

0000000000000780 <__libc_csu_fini>:
 780:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000784 <_fini>:
 784:	48 83 ec 08          	sub    $0x8,%rsp
 788:	48 83 c4 08          	add    $0x8,%rsp
 78c:	c3                   	retq   
