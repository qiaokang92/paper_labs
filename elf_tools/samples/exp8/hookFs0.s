
src/hook_in_src/hookFs.o:     file format elf32-i386


Disassembly of section .text:

00000000 <init_hookFs>:
   0:	55                   	push   ebp
   1:	89 e5                	mov    ebp,esp
   3:	83 ec 14             	sub    esp,0x14
   6:	53                   	push   ebx
   7:	83 ec 0c             	sub    esp,0xc
   a:	68 04 04 00 00       	push   0x404
   f:	e8 fc ff ff ff       	call   10 <init_hookFs+0x10>
  14:	83 c4 10             	add    esp,0x10
  17:	89 c3                	mov    ebx,eax
  19:	83 ec 0c             	sub    esp,0xc
  1c:	68 04 04 00 00       	push   0x404
  21:	e8 fc ff ff ff       	call   22 <init_hookFs+0x22>
  26:	83 c4 10             	add    esp,0x10
  29:	a3 00 00 00 00       	mov    ds:0x0,eax
  2e:	83 ec 08             	sub    esp,0x8
  31:	89 98 00 04 00 00    	mov    DWORD PTR [eax+0x400],ebx
  37:	8d 45 fe             	lea    eax,[ebp-0x2]
  3a:	c6 45 fe 2f          	mov    BYTE PTR [ebp-0x2],0x2f
  3e:	c6 40 01 00          	mov    BYTE PTR [eax+0x1],0x0
  42:	50                   	push   eax
  43:	53                   	push   ebx
  44:	e8 fc ff ff ff       	call   45 <init_hookFs+0x45>
  49:	c7 83 00 04 00 00 00 	mov    DWORD PTR [ebx+0x400],0x0
  50:	00 00 00 
  53:	b8 01 00 00 00       	mov    eax,0x1
  58:	8b 5d e8             	mov    ebx,DWORD PTR [ebp-0x18]
  5b:	89 ec                	mov    esp,ebp
  5d:	5d                   	pop    ebp
  5e:	c3                   	ret    
  5f:	90                   	nop

00000060 <read_ebp>:
  60:	55                   	push   ebp
  61:	89 e5                	mov    ebp,esp
  63:	89 e8                	mov    eax,ebp
  65:	89 ec                	mov    esp,ebp
  67:	5d                   	pop    ebp
  68:	c3                   	ret    
  69:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00000070 <pathcmp>:
  70:	55                   	push   ebp
  71:	89 e5                	mov    ebp,esp
  73:	83 ec 0c             	sub    esp,0xc
  76:	57                   	push   edi
  77:	31 ff                	xor    edi,edi
  79:	56                   	push   esi
  7a:	8b 75 0c             	mov    esi,DWORD PTR [ebp+0xc]
  7d:	53                   	push   ebx
  7e:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  81:	83 ec 0c             	sub    esp,0xc
  84:	53                   	push   ebx
  85:	e8 fc ff ff ff       	call   86 <pathcmp+0x16>
  8a:	83 c4 10             	add    esp,0x10
  8d:	80 7c 18 ff 2f       	cmp    BYTE PTR [eax+ebx*1-0x1],0x2f
  92:	74 2e                	je     c2 <pathcmp+0x52>
  94:	83 ec 0c             	sub    esp,0xc
  97:	53                   	push   ebx
  98:	e8 fc ff ff ff       	call   99 <pathcmp+0x29>
  9d:	83 c4 10             	add    esp,0x10
  a0:	83 ec 0c             	sub    esp,0xc
  a3:	c6 04 18 2f          	mov    BYTE PTR [eax+ebx*1],0x2f
  a7:	53                   	push   ebx
  a8:	e8 fc ff ff ff       	call   a9 <pathcmp+0x39>
  ad:	c6 44 18 01 00       	mov    BYTE PTR [eax+ebx*1+0x1],0x0
  b2:	eb 0e                	jmp    c2 <pathcmp+0x52>
  b4:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
  ba:	8d bf 00 00 00 00    	lea    edi,[edi+0x0]
  c0:	43                   	inc    ebx
  c1:	46                   	inc    esi
  c2:	80 3b 00             	cmp    BYTE PTR [ebx],0x0
  c5:	74 0e                	je     d5 <pathcmp+0x65>
  c7:	31 d2                	xor    edx,edx
  c9:	8a 13                	mov    dl,BYTE PTR [ebx]
  cb:	31 c0                	xor    eax,eax
  cd:	8a 06                	mov    al,BYTE PTR [esi]
  cf:	89 d7                	mov    edi,edx
  d1:	29 c7                	sub    edi,eax
  d3:	74 eb                	je     c0 <pathcmp+0x50>
  d5:	85 ff                	test   edi,edi
  d7:	79 07                	jns    e0 <pathcmp+0x70>
  d9:	83 c8 ff             	or     eax,0xffffffff
  dc:	eb 14                	jmp    f2 <pathcmp+0x82>
  de:	89 f6                	mov    esi,esi
  e0:	83 ff 00             	cmp    edi,0x0
  e3:	7e 0b                	jle    f0 <pathcmp+0x80>
  e5:	b8 01 00 00 00       	mov    eax,0x1
  ea:	eb 06                	jmp    f2 <pathcmp+0x82>
  ec:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
  f0:	31 c0                	xor    eax,eax
  f2:	8d 65 e8             	lea    esp,[ebp-0x18]
  f5:	5b                   	pop    ebx
  f6:	5e                   	pop    esi
  f7:	5f                   	pop    edi
  f8:	89 ec                	mov    esp,ebp
  fa:	5d                   	pop    ebp
  fb:	c3                   	ret    
  fc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00000100 <traverse>:
 100:	55                   	push   ebp
 101:	89 e5                	mov    ebp,esp
 103:	81 ec ac 04 00 00    	sub    esp,0x4ac
 109:	8d 85 66 fb ff ff    	lea    eax,[ebp-0x49a]
 10f:	c6 45 fc 25          	mov    BYTE PTR [ebp-0x4],0x25
 113:	57                   	push   edi
 114:	8b 7d 0c             	mov    edi,DWORD PTR [ebp+0xc]
 117:	56                   	push   esi
 118:	89 85 5c fb ff ff    	mov    DWORD PTR [ebp-0x4a4],eax
 11e:	53                   	push   ebx
 11f:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
 122:	c6 45 fd 73          	mov    BYTE PTR [ebp-0x3],0x73
 126:	c6 45 fe 00          	mov    BYTE PTR [ebp-0x2],0x0
 12a:	c6 85 66 fb ff ff 09 	mov    BYTE PTR [ebp-0x49a],0x9
 131:	85 db                	test   ebx,ebx
 133:	c6 40 01 00          	mov    BYTE PTR [eax+0x1],0x0
 137:	c6 45 f8 0d          	mov    BYTE PTR [ebp-0x8],0xd
 13b:	c6 45 f9 0a          	mov    BYTE PTR [ebp-0x7],0xa
 13f:	c6 45 fa 00          	mov    BYTE PTR [ebp-0x6],0x0
 143:	0f 84 f5 00 00 00    	je     23e <traverse+0x13e>
 149:	8d 45 b8             	lea    eax,[ebp-0x48]
 14c:	8d b5 68 fb ff ff    	lea    esi,[ebp-0x498]
 152:	89 85 60 fb ff ff    	mov    DWORD PTR [ebp-0x4a0],eax
 158:	90                   	nop
 159:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
 160:	83 ec 08             	sub    esp,0x8
 163:	53                   	push   ebx
 164:	57                   	push   edi
 165:	e8 fc ff ff ff       	call   166 <traverse+0x66>
 16a:	83 c4 10             	add    esp,0x10
 16d:	85 c0                	test   eax,eax
 16f:	74 15                	je     186 <traverse+0x86>
 171:	83 ec 08             	sub    esp,0x8
 174:	57                   	push   edi
 175:	53                   	push   ebx
 176:	e8 fc ff ff ff       	call   177 <traverse+0x77>
 17b:	83 c4 10             	add    esp,0x10
 17e:	85 c0                	test   eax,eax
 180:	0f 85 aa 00 00 00    	jne    230 <traverse+0x130>
 186:	83 ec 04             	sub    esp,0x4
 189:	8b 85 60 fb ff ff    	mov    eax,DWORD PTR [ebp-0x4a0]
 18f:	6a 40                	push   0x40
 191:	6a 00                	push   0x0
 193:	50                   	push   eax
 194:	e8 fc ff ff ff       	call   195 <traverse+0x95>
 199:	83 c4 10             	add    esp,0x10
 19c:	83 ec 04             	sub    esp,0x4
 19f:	68 50 04 00 00       	push   0x450
 1a4:	6a 00                	push   0x0
 1a6:	56                   	push   esi
 1a7:	e8 fc ff ff ff       	call   1a8 <traverse+0xa8>
 1ac:	83 c4 10             	add    esp,0x10
 1af:	8b 45 10             	mov    eax,DWORD PTR [ebp+0x10]
 1b2:	83 ec 08             	sub    esp,0x8
 1b5:	50                   	push   eax
 1b6:	56                   	push   esi
 1b7:	e8 fc ff ff ff       	call   1b8 <traverse+0xb8>
 1bc:	83 c4 10             	add    esp,0x10
 1bf:	8b 85 5c fb ff ff    	mov    eax,DWORD PTR [ebp-0x4a4]
 1c5:	83 ec 08             	sub    esp,0x8
 1c8:	50                   	push   eax
 1c9:	56                   	push   esi
 1ca:	e8 fc ff ff ff       	call   1cb <traverse+0xcb>
 1cf:	83 c4 10             	add    esp,0x10
 1d2:	83 ec 08             	sub    esp,0x8
 1d5:	57                   	push   edi
 1d6:	56                   	push   esi
 1d7:	e8 fc ff ff ff       	call   1d8 <traverse+0xd8>
 1dc:	83 c4 10             	add    esp,0x10
 1df:	8d 85 66 fb ff ff    	lea    eax,[ebp-0x49a]
 1e5:	83 ec 08             	sub    esp,0x8
 1e8:	50                   	push   eax
 1e9:	56                   	push   esi
 1ea:	e8 fc ff ff ff       	call   1eb <traverse+0xeb>
 1ef:	83 c4 10             	add    esp,0x10
 1f2:	8b 85 60 fb ff ff    	mov    eax,DWORD PTR [ebp-0x4a0]
 1f8:	83 ec 08             	sub    esp,0x8
 1fb:	50                   	push   eax
 1fc:	56                   	push   esi
 1fd:	e8 fc ff ff ff       	call   1fe <traverse+0xfe>
 202:	83 c4 10             	add    esp,0x10
 205:	8d 45 f8             	lea    eax,[ebp-0x8]
 208:	83 ec 08             	sub    esp,0x8
 20b:	50                   	push   eax
 20c:	56                   	push   esi
 20d:	e8 fc ff ff ff       	call   20e <traverse+0x10e>
 212:	83 c4 10             	add    esp,0x10
 215:	8d 45 fc             	lea    eax,[ebp-0x4]
 218:	83 ec 08             	sub    esp,0x8
 21b:	56                   	push   esi
 21c:	50                   	push   eax
 21d:	e8 fc ff ff ff       	call   21e <traverse+0x11e>
 222:	eb 1a                	jmp    23e <traverse+0x13e>
 224:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 22a:	8d bf 00 00 00 00    	lea    edi,[edi+0x0]
 230:	8b 9b 00 04 00 00    	mov    ebx,DWORD PTR [ebx+0x400]
 236:	85 db                	test   ebx,ebx
 238:	0f 85 22 ff ff ff    	jne    160 <traverse+0x60>
 23e:	8d a5 48 fb ff ff    	lea    esp,[ebp-0x4b8]
 244:	5b                   	pop    ebx
 245:	5e                   	pop    esi
 246:	5f                   	pop    edi
 247:	89 ec                	mov    esp,ebp
 249:	5d                   	pop    ebp
 24a:	c3                   	ret    
 24b:	4e                   	dec    esi
 24c:	4f                   	dec    edi
 24d:	54                   	push   esp
 24e:	49                   	dec    ecx
 24f:	46                   	inc    esi
 250:	59                   	pop    ecx
 251:	20 4e 4f             	and    BYTE PTR [esi+0x4f],cl
 254:	54                   	push   esp
 255:	20 49 4e             	and    BYTE PTR [ecx+0x4e],cl
 258:	49                   	dec    ecx
 259:	54                   	push   esp
 25a:	2e 0a 00             	or     al,BYTE PTR cs:[eax]
 25d:	5f                   	pop    edi
 25e:	5f                   	pop    edi
 25f:	68 6f 6f 6b 5f       	push   0x5f6b6f6f
 264:	64 6f                	outs   dx,DWORD PTR fs:[esi]
 266:	73 46                	jae    2ae <__hook_dosFsOpen+0x3e>
 268:	73 4f                	jae    2b9 <__hook_dosFsOpen+0x49>
 26a:	70 65                	jo     2d1 <__hook_dosFsOpen+0x61>
 26c:	6e                   	outs   dx,BYTE PTR ds:[esi]
 26d:	00 89 f6 55 a1 00    	add    BYTE PTR [ecx+0xa155f6],cl

00000270 <__hook_dosFsOpen>:
 270:	55                   	push   ebp
 271:	a1 00 00 00 00       	mov    eax,ds:0x0
 276:	89 e5                	mov    ebp,esp
 278:	81 ec 10 04 00 00    	sub    esp,0x410
 27e:	85 c0                	test   eax,eax
 280:	56                   	push   esi
 281:	53                   	push   ebx
 282:	75 1c                	jne    2a0 <__hook_dosFsOpen+0x30>
 284:	83 ec 0c             	sub    esp,0xc
 287:	68 4b 02 00 00       	push   0x24b
 28c:	e8 fc ff ff ff       	call   28d <__hook_dosFsOpen+0x1d>
 291:	eb 56                	jmp    2e9 <__hook_dosFsOpen+0x79>
 293:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 299:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]
 2a0:	8b b0 00 04 00 00    	mov    esi,DWORD PTR [eax+0x400]
 2a6:	85 f6                	test   esi,esi
 2a8:	74 3f                	je     2e9 <__hook_dosFsOpen+0x79>
 2aa:	83 ec 04             	sub    esp,0x4
 2ad:	8d 9d 00 fc ff ff    	lea    ebx,[ebp-0x400]
 2b3:	68 00 04 00 00       	push   0x400
 2b8:	6a 00                	push   0x0
 2ba:	53                   	push   ebx
 2bb:	e8 fc ff ff ff       	call   2bc <__hook_dosFsOpen+0x4c>
 2c0:	83 c4 10             	add    esp,0x10
 2c3:	e8 fc ff ff ff       	call   2c4 <__hook_dosFsOpen+0x54>
 2c8:	83 ec 08             	sub    esp,0x8
 2cb:	8b 00                	mov    eax,DWORD PTR [eax]
 2cd:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
 2d0:	52                   	push   edx
 2d1:	53                   	push   ebx
 2d2:	e8 fc ff ff ff       	call   2d3 <__hook_dosFsOpen+0x63>
 2d7:	83 c4 10             	add    esp,0x10
 2da:	83 ec 04             	sub    esp,0x4
 2dd:	68 5d 02 00 00       	push   0x25d
 2e2:	53                   	push   ebx
 2e3:	56                   	push   esi
 2e4:	e8 fc ff ff ff       	call   2e5 <__hook_dosFsOpen+0x75>
 2e9:	8d a5 e8 fb ff ff    	lea    esp,[ebp-0x418]
 2ef:	5b                   	pop    ebx
 2f0:	5e                   	pop    esi
 2f1:	89 ec                	mov    esp,ebp
 2f3:	5d                   	pop    ebp
 2f4:	c3                   	ret    
 2f5:	5f                   	pop    edi
 2f6:	5f                   	pop    edi
 2f7:	68 6f 6f 6b 5f       	push   0x5f6b6f6f
 2fc:	64 6f                	outs   dx,DWORD PTR fs:[esi]
 2fe:	73 46                	jae    346 <__hook_dosFsCreate+0x36>
 300:	73 43                	jae    345 <__hook_dosFsCreate+0x35>
 302:	72 65                	jb     369 <__hook_dosFsCreate+0x59>
 304:	61                   	popa   
 305:	74 65                	je     36c <__hook_dosFsCreate+0x5c>
 307:	00 90 8d b4 26 00    	add    BYTE PTR [eax+0x26b48d],dl
 30d:	00 00                	add    BYTE PTR [eax],al
	...

00000310 <__hook_dosFsCreate>:
 310:	55                   	push   ebp
 311:	a1 00 00 00 00       	mov    eax,ds:0x0
 316:	89 e5                	mov    ebp,esp
 318:	81 ec 10 04 00 00    	sub    esp,0x410
 31e:	85 c0                	test   eax,eax
 320:	56                   	push   esi
 321:	53                   	push   ebx
 322:	74 49                	je     36d <__hook_dosFsCreate+0x5d>
 324:	8b b0 00 04 00 00    	mov    esi,DWORD PTR [eax+0x400]
 32a:	85 f6                	test   esi,esi
 32c:	74 3f                	je     36d <__hook_dosFsCreate+0x5d>
 32e:	83 ec 04             	sub    esp,0x4
 331:	8d 9d 00 fc ff ff    	lea    ebx,[ebp-0x400]
 337:	68 00 04 00 00       	push   0x400
 33c:	6a 00                	push   0x0
 33e:	53                   	push   ebx
 33f:	e8 fc ff ff ff       	call   340 <__hook_dosFsCreate+0x30>
 344:	83 c4 10             	add    esp,0x10
 347:	e8 fc ff ff ff       	call   348 <__hook_dosFsCreate+0x38>
 34c:	83 ec 08             	sub    esp,0x8
 34f:	8b 00                	mov    eax,DWORD PTR [eax]
 351:	8b 50 10             	mov    edx,DWORD PTR [eax+0x10]
 354:	52                   	push   edx
 355:	53                   	push   ebx
 356:	e8 fc ff ff ff       	call   357 <__hook_dosFsCreate+0x47>
 35b:	83 c4 10             	add    esp,0x10
 35e:	83 ec 04             	sub    esp,0x4
 361:	68 f5 02 00 00       	push   0x2f5
 366:	53                   	push   ebx
 367:	56                   	push   esi
 368:	e8 fc ff ff ff       	call   369 <__hook_dosFsCreate+0x59>
 36d:	8d a5 e8 fb ff ff    	lea    esp,[ebp-0x418]
 373:	5b                   	pop    ebx
 374:	5e                   	pop    esi
 375:	89 ec                	mov    esp,ebp
 377:	5d                   	pop    ebp
 378:	c3                   	ret    
 379:	5f                   	pop    edi
 37a:	5f                   	pop    edi
 37b:	68 6f 6f 6b 5f       	push   0x5f6b6f6f
 380:	64 6f                	outs   dx,DWORD PTR fs:[esi]
 382:	73 46                	jae    3ca <__hook_dosFsRead+0x3a>
 384:	73 52                	jae    3d8 <__hook_dosFsRead+0x48>
 386:	65                   	gs
 387:	61                   	popa   
 388:	64 00 8d b6 00 00 00 	add    BYTE PTR fs:[ebp+0xb6],cl
	...

00000390 <__hook_dosFsRead>:
 390:	55                   	push   ebp
 391:	a1 00 00 00 00       	mov    eax,ds:0x0
 396:	89 e5                	mov    ebp,esp
 398:	81 ec 0c 04 00 00    	sub    esp,0x40c
 39e:	85 c0                	test   eax,eax
 3a0:	57                   	push   edi
 3a1:	56                   	push   esi
 3a2:	53                   	push   ebx
 3a3:	74 62                	je     407 <__hook_dosFsRead+0x77>
 3a5:	8b b8 00 04 00 00    	mov    edi,DWORD PTR [eax+0x400]
 3ab:	85 ff                	test   edi,edi
 3ad:	74 58                	je     407 <__hook_dosFsRead+0x77>
 3af:	83 ec 04             	sub    esp,0x4
 3b2:	8d b5 00 fc ff ff    	lea    esi,[ebp-0x400]
 3b8:	68 00 04 00 00       	push   0x400
 3bd:	6a 00                	push   0x0
 3bf:	56                   	push   esi
 3c0:	e8 fc ff ff ff       	call   3c1 <__hook_dosFsRead+0x31>
 3c5:	83 c4 10             	add    esp,0x10
 3c8:	e8 fc ff ff ff       	call   3c9 <__hook_dosFsRead+0x39>
 3cd:	e8 fc ff ff ff       	call   3ce <__hook_dosFsRead+0x3e>
 3d2:	83 ec 0c             	sub    esp,0xc
 3d5:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
 3d8:	53                   	push   ebx
 3d9:	e8 fc ff ff ff       	call   3da <__hook_dosFsRead+0x4a>
 3de:	8b 03                	mov    eax,DWORD PTR [ebx]
 3e0:	83 c4 10             	add    esp,0x10
 3e3:	83 ec 08             	sub    esp,0x8
 3e6:	8b 40 78             	mov    eax,DWORD PTR [eax+0x78]
 3e9:	05 f0 00 00 00       	add    eax,0xf0
 3ee:	50                   	push   eax
 3ef:	56                   	push   esi
 3f0:	e8 fc ff ff ff       	call   3f1 <__hook_dosFsRead+0x61>
 3f5:	83 c4 10             	add    esp,0x10
 3f8:	83 ec 04             	sub    esp,0x4
 3fb:	68 79 03 00 00       	push   0x379
 400:	56                   	push   esi
 401:	57                   	push   edi
 402:	e8 fc ff ff ff       	call   403 <__hook_dosFsRead+0x73>
 407:	8d a5 e8 fb ff ff    	lea    esp,[ebp-0x418]
 40d:	5b                   	pop    ebx
 40e:	5e                   	pop    esi
 40f:	5f                   	pop    edi
 410:	89 ec                	mov    esp,ebp
 412:	5d                   	pop    ebp
 413:	c3                   	ret    
 414:	5f                   	pop    edi
 415:	5f                   	pop    edi
 416:	68 6f 6f 6b 5f       	push   0x5f6b6f6f
 41b:	64 6f                	outs   dx,DWORD PTR fs:[esi]
 41d:	73 46                	jae    465 <__hook_dosFsWrite+0x35>
 41f:	73 57                	jae    478 <__hook_dosFsWrite+0x48>
 421:	72 69                	jb     48c <__hook_dosFsWrite+0x5c>
 423:	74 65                	je     48a <__hook_dosFsWrite+0x5a>
 425:	00 8d 76 00 8d bc    	add    BYTE PTR [ebp-0x4372ff8a],cl
 42b:	27                   	daa    
 42c:	00 00                	add    BYTE PTR [eax],al
	...

00000430 <__hook_dosFsWrite>:
 430:	55                   	push   ebp
 431:	a1 00 00 00 00       	mov    eax,ds:0x0
 436:	89 e5                	mov    ebp,esp
 438:	81 ec 0c 04 00 00    	sub    esp,0x40c
 43e:	85 c0                	test   eax,eax
 440:	57                   	push   edi
 441:	56                   	push   esi
 442:	53                   	push   ebx
 443:	74 62                	je     4a7 <__hook_dosFsWrite+0x77>
 445:	8b b8 00 04 00 00    	mov    edi,DWORD PTR [eax+0x400]
 44b:	85 ff                	test   edi,edi
 44d:	74 58                	je     4a7 <__hook_dosFsWrite+0x77>
 44f:	83 ec 04             	sub    esp,0x4
 452:	8d b5 00 fc ff ff    	lea    esi,[ebp-0x400]
 458:	68 00 04 00 00       	push   0x400
 45d:	6a 00                	push   0x0
 45f:	56                   	push   esi
 460:	e8 fc ff ff ff       	call   461 <__hook_dosFsWrite+0x31>
 465:	83 c4 10             	add    esp,0x10
 468:	e8 fc ff ff ff       	call   469 <__hook_dosFsWrite+0x39>
 46d:	e8 fc ff ff ff       	call   46e <__hook_dosFsWrite+0x3e>
 472:	83 ec 0c             	sub    esp,0xc
 475:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
 478:	53                   	push   ebx
 479:	e8 fc ff ff ff       	call   47a <__hook_dosFsWrite+0x4a>
 47e:	8b 03                	mov    eax,DWORD PTR [ebx]
 480:	83 c4 10             	add    esp,0x10
 483:	83 ec 08             	sub    esp,0x8
 486:	8b 40 78             	mov    eax,DWORD PTR [eax+0x78]
 489:	05 f0 00 00 00       	add    eax,0xf0
 48e:	50                   	push   eax
 48f:	56                   	push   esi
 490:	e8 fc ff ff ff       	call   491 <__hook_dosFsWrite+0x61>
 495:	83 c4 10             	add    esp,0x10
 498:	83 ec 04             	sub    esp,0x4
 49b:	68 14 04 00 00       	push   0x414
 4a0:	56                   	push   esi
 4a1:	57                   	push   edi
 4a2:	e8 fc ff ff ff       	call   4a3 <__hook_dosFsWrite+0x73>
 4a7:	8d a5 e8 fb ff ff    	lea    esp,[ebp-0x418]
 4ad:	5b                   	pop    ebx
 4ae:	5e                   	pop    esi
 4af:	5f                   	pop    edi
 4b0:	89 ec                	mov    esp,ebp
 4b2:	5d                   	pop    ebp
 4b3:	c3                   	ret    
 4b4:	5f                   	pop    edi
 4b5:	5f                   	pop    edi
 4b6:	68 6f 6f 6b 5f       	push   0x5f6b6f6f
 4bb:	64 6f                	outs   dx,DWORD PTR fs:[esi]
 4bd:	73 46                	jae    505 <__hook_dosFsClose+0x35>
 4bf:	73 43                	jae    504 <__hook_dosFsClose+0x34>
 4c1:	6c                   	ins    BYTE PTR es:[edi],dx
 4c2:	6f                   	outs   dx,DWORD PTR ds:[esi]
 4c3:	73 65                	jae    52a <__hook_dosFsClose+0x5a>
 4c5:	00 8d 76 00 8d bc    	add    BYTE PTR [ebp-0x4372ff8a],cl
 4cb:	27                   	daa    
 4cc:	00 00                	add    BYTE PTR [eax],al
	...

000004d0 <__hook_dosFsClose>:
 4d0:	55                   	push   ebp
 4d1:	a1 00 00 00 00       	mov    eax,ds:0x0
 4d6:	89 e5                	mov    ebp,esp
 4d8:	81 ec 0c 04 00 00    	sub    esp,0x40c
 4de:	85 c0                	test   eax,eax
 4e0:	57                   	push   edi
 4e1:	56                   	push   esi
 4e2:	53                   	push   ebx
 4e3:	74 5f                	je     544 <__hook_dosFsClose+0x74>
 4e5:	8b b8 00 04 00 00    	mov    edi,DWORD PTR [eax+0x400]
 4eb:	85 ff                	test   edi,edi
 4ed:	74 55                	je     544 <__hook_dosFsClose+0x74>
 4ef:	83 ec 04             	sub    esp,0x4
 4f2:	8d b5 00 fc ff ff    	lea    esi,[ebp-0x400]
 4f8:	68 00 04 00 00       	push   0x400
 4fd:	6a 00                	push   0x0
 4ff:	56                   	push   esi
 500:	e8 fc ff ff ff       	call   501 <__hook_dosFsClose+0x31>
 505:	83 c4 10             	add    esp,0x10
 508:	e8 fc ff ff ff       	call   509 <__hook_dosFsClose+0x39>
 50d:	83 ec 0c             	sub    esp,0xc
 510:	8b 00                	mov    eax,DWORD PTR [eax]
 512:	8b 58 08             	mov    ebx,DWORD PTR [eax+0x8]
 515:	53                   	push   ebx
 516:	e8 fc ff ff ff       	call   517 <__hook_dosFsClose+0x47>
 51b:	8b 03                	mov    eax,DWORD PTR [ebx]
 51d:	83 c4 10             	add    esp,0x10
 520:	83 ec 08             	sub    esp,0x8
 523:	8b 40 78             	mov    eax,DWORD PTR [eax+0x78]
 526:	05 f0 00 00 00       	add    eax,0xf0
 52b:	50                   	push   eax
 52c:	56                   	push   esi
 52d:	e8 fc ff ff ff       	call   52e <__hook_dosFsClose+0x5e>
 532:	83 c4 10             	add    esp,0x10
 535:	83 ec 04             	sub    esp,0x4
 538:	68 b4 04 00 00       	push   0x4b4
 53d:	56                   	push   esi
 53e:	57                   	push   edi
 53f:	e8 fc ff ff ff       	call   540 <__hook_dosFsClose+0x70>
 544:	8d a5 e8 fb ff ff    	lea    esp,[ebp-0x418]
 54a:	5b                   	pop    ebx
 54b:	5e                   	pop    esi
 54c:	5f                   	pop    edi
 54d:	89 ec                	mov    esp,ebp
 54f:	5d                   	pop    ebp
 550:	c3                   	ret    
 551:	5f                   	pop    edi
 552:	5f                   	pop    edi
 553:	68 6f 6f 6b 5f       	push   0x5f6b6f6f
 558:	64 6f                	outs   dx,DWORD PTR fs:[esi]
 55a:	73 46                	jae    5a2 <__hook_dosFsDelete+0x32>
 55c:	73 44                	jae    5a2 <__hook_dosFsDelete+0x32>
 55e:	65                   	gs
 55f:	6c                   	ins    BYTE PTR es:[edi],dx
 560:	65                   	gs
 561:	74 65                	je     5c8 <__hook_dosFsDelete+0x58>
 563:	00 8d b6 00 00 00    	add    BYTE PTR [ebp+0xb6],cl
 569:	00 8d bf 00 00 00    	add    BYTE PTR [ebp+0xbf],cl
	...

00000570 <__hook_dosFsDelete>:
 570:	55                   	push   ebp
 571:	a1 00 00 00 00       	mov    eax,ds:0x0
 576:	89 e5                	mov    ebp,esp
 578:	81 ec 10 04 00 00    	sub    esp,0x410
 57e:	85 c0                	test   eax,eax
 580:	56                   	push   esi
 581:	53                   	push   ebx
 582:	74 4c                	je     5d0 <__hook_dosFsDelete+0x60>
 584:	8b b0 00 04 00 00    	mov    esi,DWORD PTR [eax+0x400]
 58a:	85 f6                	test   esi,esi
 58c:	74 42                	je     5d0 <__hook_dosFsDelete+0x60>
 58e:	83 ec 04             	sub    esp,0x4
 591:	8d 9d 00 fc ff ff    	lea    ebx,[ebp-0x400]
 597:	68 00 04 00 00       	push   0x400
 59c:	6a 00                	push   0x0
 59e:	53                   	push   ebx
 59f:	e8 fc ff ff ff       	call   5a0 <__hook_dosFsDelete+0x30>
 5a4:	83 c4 10             	add    esp,0x10
 5a7:	e8 fc ff ff ff       	call   5a8 <__hook_dosFsDelete+0x38>
 5ac:	e8 fc ff ff ff       	call   5ad <__hook_dosFsDelete+0x3d>
 5b1:	83 ec 08             	sub    esp,0x8
 5b4:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
 5b7:	52                   	push   edx
 5b8:	53                   	push   ebx
 5b9:	e8 fc ff ff ff       	call   5ba <__hook_dosFsDelete+0x4a>
 5be:	83 c4 10             	add    esp,0x10
 5c1:	83 ec 04             	sub    esp,0x4
 5c4:	68 51 05 00 00       	push   0x551
 5c9:	53                   	push   ebx
 5ca:	56                   	push   esi
 5cb:	e8 fc ff ff ff       	call   5cc <__hook_dosFsDelete+0x5c>
 5d0:	8d a5 e8 fb ff ff    	lea    esp,[ebp-0x418]
 5d6:	5b                   	pop    ebx
 5d7:	5e                   	pop    esi
 5d8:	89 ec                	mov    esp,ebp
 5da:	5d                   	pop    ebp
 5db:	c3                   	ret    
