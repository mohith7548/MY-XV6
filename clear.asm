
_clear:     file format elf32-i386


Disassembly of section .text:

00000000 <clear>:
#include "user.h"

// Print to the given fd. Only understands %d, %x, %p, %s.
void
clear()
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "\n");
   6:	68 e8 09 00 00       	push   $0x9e8
   b:	6a 01                	push   $0x1
   d:	e8 7e 06 00 00       	call   690 <printf>
  printf(1, "\n");
  12:	58                   	pop    %eax
  13:	5a                   	pop    %edx
  14:	68 e8 09 00 00       	push   $0x9e8
  19:	6a 01                	push   $0x1
  1b:	e8 70 06 00 00       	call   690 <printf>
  printf(1, "\n");
  20:	59                   	pop    %ecx
  21:	58                   	pop    %eax
  22:	68 e8 09 00 00       	push   $0x9e8
  27:	6a 01                	push   $0x1
  29:	e8 62 06 00 00       	call   690 <printf>
  printf(1, "\n");
  2e:	58                   	pop    %eax
  2f:	5a                   	pop    %edx
  30:	68 e8 09 00 00       	push   $0x9e8
  35:	6a 01                	push   $0x1
  37:	e8 54 06 00 00       	call   690 <printf>
  printf(1, "\n");
  3c:	59                   	pop    %ecx
  3d:	58                   	pop    %eax
  3e:	68 e8 09 00 00       	push   $0x9e8
  43:	6a 01                	push   $0x1
  45:	e8 46 06 00 00       	call   690 <printf>
  printf(1, "\n");
  4a:	58                   	pop    %eax
  4b:	5a                   	pop    %edx
  4c:	68 e8 09 00 00       	push   $0x9e8
  51:	6a 01                	push   $0x1
  53:	e8 38 06 00 00       	call   690 <printf>
  printf(1, "\n");
  58:	59                   	pop    %ecx
  59:	58                   	pop    %eax
  5a:	68 e8 09 00 00       	push   $0x9e8
  5f:	6a 01                	push   $0x1
  61:	e8 2a 06 00 00       	call   690 <printf>
  printf(1, "\n");
  66:	58                   	pop    %eax
  67:	5a                   	pop    %edx
  68:	68 e8 09 00 00       	push   $0x9e8
  6d:	6a 01                	push   $0x1
  6f:	e8 1c 06 00 00       	call   690 <printf>
  printf(1, "\n");
  74:	59                   	pop    %ecx
  75:	58                   	pop    %eax
  76:	68 e8 09 00 00       	push   $0x9e8
  7b:	6a 01                	push   $0x1
  7d:	e8 0e 06 00 00       	call   690 <printf>
  printf(1, "\n");
  82:	58                   	pop    %eax
  83:	5a                   	pop    %edx
  84:	68 e8 09 00 00       	push   $0x9e8
  89:	6a 01                	push   $0x1
  8b:	e8 00 06 00 00       	call   690 <printf>
  printf(1, "\n");
  90:	59                   	pop    %ecx
  91:	58                   	pop    %eax
  92:	68 e8 09 00 00       	push   $0x9e8
  97:	6a 01                	push   $0x1
  99:	e8 f2 05 00 00       	call   690 <printf>
  printf(1, "\n");
  9e:	58                   	pop    %eax
  9f:	5a                   	pop    %edx
  a0:	68 e8 09 00 00       	push   $0x9e8
  a5:	6a 01                	push   $0x1
  a7:	e8 e4 05 00 00       	call   690 <printf>
  printf(1, "\n");
  ac:	59                   	pop    %ecx
  ad:	58                   	pop    %eax
  ae:	68 e8 09 00 00       	push   $0x9e8
  b3:	6a 01                	push   $0x1
  b5:	e8 d6 05 00 00       	call   690 <printf>
  printf(1, "\n");
  ba:	58                   	pop    %eax
  bb:	5a                   	pop    %edx
  bc:	68 e8 09 00 00       	push   $0x9e8
  c1:	6a 01                	push   $0x1
  c3:	e8 c8 05 00 00       	call   690 <printf>
  printf(1, "\n");
  c8:	59                   	pop    %ecx
  c9:	58                   	pop    %eax
  ca:	68 e8 09 00 00       	push   $0x9e8
  cf:	6a 01                	push   $0x1
  d1:	e8 ba 05 00 00       	call   690 <printf>
  printf(1, "\n");
  d6:	58                   	pop    %eax
  d7:	5a                   	pop    %edx
  d8:	68 e8 09 00 00       	push   $0x9e8
  dd:	6a 01                	push   $0x1
  df:	e8 ac 05 00 00       	call   690 <printf>
  printf(1, "\n");
  e4:	59                   	pop    %ecx
  e5:	58                   	pop    %eax
  e6:	68 e8 09 00 00       	push   $0x9e8
  eb:	6a 01                	push   $0x1
  ed:	e8 9e 05 00 00       	call   690 <printf>
  printf(1, "\n");
  f2:	58                   	pop    %eax
  f3:	5a                   	pop    %edx
  f4:	68 e8 09 00 00       	push   $0x9e8
  f9:	6a 01                	push   $0x1
  fb:	e8 90 05 00 00       	call   690 <printf>
  printf(1, "\n");
 100:	59                   	pop    %ecx
 101:	58                   	pop    %eax
 102:	68 e8 09 00 00       	push   $0x9e8
 107:	6a 01                	push   $0x1
 109:	e8 82 05 00 00       	call   690 <printf>
  printf(1, "\n");
 10e:	58                   	pop    %eax
 10f:	5a                   	pop    %edx
 110:	68 e8 09 00 00       	push   $0x9e8
 115:	6a 01                	push   $0x1
 117:	e8 74 05 00 00       	call   690 <printf>
  printf(1, "\n");
 11c:	59                   	pop    %ecx
 11d:	58                   	pop    %eax
 11e:	68 e8 09 00 00       	push   $0x9e8
 123:	6a 01                	push   $0x1
 125:	e8 66 05 00 00       	call   690 <printf>
  printf(1, "\n");
 12a:	58                   	pop    %eax
 12b:	5a                   	pop    %edx
 12c:	68 e8 09 00 00       	push   $0x9e8
 131:	6a 01                	push   $0x1
 133:	e8 58 05 00 00       	call   690 <printf>
  printf(1, "\n");
 138:	59                   	pop    %ecx
 139:	58                   	pop    %eax
 13a:	68 e8 09 00 00       	push   $0x9e8
 13f:	6a 01                	push   $0x1
 141:	e8 4a 05 00 00       	call   690 <printf>
  printf(1, "\n");
 146:	58                   	pop    %eax
 147:	5a                   	pop    %edx
 148:	68 e8 09 00 00       	push   $0x9e8
 14d:	6a 01                	push   $0x1
 14f:	e8 3c 05 00 00       	call   690 <printf>
  printf(1, "\n");
 154:	59                   	pop    %ecx
 155:	58                   	pop    %eax
 156:	68 e8 09 00 00       	push   $0x9e8
 15b:	6a 01                	push   $0x1
 15d:	e8 2e 05 00 00       	call   690 <printf>
  printf(1, "\n");
 162:	58                   	pop    %eax
 163:	5a                   	pop    %edx
 164:	68 e8 09 00 00       	push   $0x9e8
 169:	6a 01                	push   $0x1
 16b:	e8 20 05 00 00       	call   690 <printf>
  printf(1, "\n");
 170:	59                   	pop    %ecx
 171:	58                   	pop    %eax
 172:	68 e8 09 00 00       	push   $0x9e8
 177:	6a 01                	push   $0x1
 179:	e8 12 05 00 00       	call   690 <printf>
  printf(1, "\n");
 17e:	58                   	pop    %eax
 17f:	5a                   	pop    %edx
 180:	68 e8 09 00 00       	push   $0x9e8
 185:	6a 01                	push   $0x1
 187:	e8 04 05 00 00       	call   690 <printf>
  printf(1, "\n");
 18c:	59                   	pop    %ecx
 18d:	58                   	pop    %eax
 18e:	68 e8 09 00 00       	push   $0x9e8
 193:	6a 01                	push   $0x1
 195:	e8 f6 04 00 00       	call   690 <printf>
  printf(1, "\n");
 19a:	58                   	pop    %eax
 19b:	5a                   	pop    %edx
 19c:	68 e8 09 00 00       	push   $0x9e8
 1a1:	6a 01                	push   $0x1
 1a3:	e8 e8 04 00 00       	call   690 <printf>
  printf(1, "\n");
 1a8:	59                   	pop    %ecx
 1a9:	58                   	pop    %eax
 1aa:	68 e8 09 00 00       	push   $0x9e8
 1af:	6a 01                	push   $0x1
 1b1:	e8 da 04 00 00       	call   690 <printf>
  printf(1, "\n");
 1b6:	58                   	pop    %eax
 1b7:	5a                   	pop    %edx
 1b8:	68 e8 09 00 00       	push   $0x9e8
 1bd:	6a 01                	push   $0x1
 1bf:	e8 cc 04 00 00       	call   690 <printf>
  printf(1, "\n");
 1c4:	59                   	pop    %ecx
 1c5:	58                   	pop    %eax
 1c6:	68 e8 09 00 00       	push   $0x9e8
 1cb:	6a 01                	push   $0x1
 1cd:	e8 be 04 00 00       	call   690 <printf>
  printf(1, "\n");
 1d2:	58                   	pop    %eax
 1d3:	5a                   	pop    %edx
 1d4:	68 e8 09 00 00       	push   $0x9e8
 1d9:	6a 01                	push   $0x1
 1db:	e8 b0 04 00 00       	call   690 <printf>
  printf(1, "\n");
 1e0:	59                   	pop    %ecx
 1e1:	58                   	pop    %eax
 1e2:	68 e8 09 00 00       	push   $0x9e8
 1e7:	6a 01                	push   $0x1
 1e9:	e8 a2 04 00 00       	call   690 <printf>
  printf(1, "\n");
 1ee:	58                   	pop    %eax
 1ef:	5a                   	pop    %edx
 1f0:	68 e8 09 00 00       	push   $0x9e8
 1f5:	6a 01                	push   $0x1
 1f7:	e8 94 04 00 00       	call   690 <printf>
  printf(1, "\n");
 1fc:	59                   	pop    %ecx
 1fd:	58                   	pop    %eax
 1fe:	68 e8 09 00 00       	push   $0x9e8
 203:	6a 01                	push   $0x1
 205:	e8 86 04 00 00       	call   690 <printf>
  printf(1, "\n");
 20a:	58                   	pop    %eax
 20b:	5a                   	pop    %edx
 20c:	68 e8 09 00 00       	push   $0x9e8
 211:	6a 01                	push   $0x1
 213:	e8 78 04 00 00       	call   690 <printf>
  printf(1, "\n");
 218:	59                   	pop    %ecx
 219:	58                   	pop    %eax
 21a:	68 e8 09 00 00       	push   $0x9e8
 21f:	6a 01                	push   $0x1
 221:	e8 6a 04 00 00       	call   690 <printf>
  printf(1, "\n");
 226:	58                   	pop    %eax
 227:	5a                   	pop    %edx
 228:	68 e8 09 00 00       	push   $0x9e8
 22d:	6a 01                	push   $0x1
 22f:	e8 5c 04 00 00       	call   690 <printf>
  printf(1, "\n");
 234:	59                   	pop    %ecx
 235:	58                   	pop    %eax
 236:	68 e8 09 00 00       	push   $0x9e8
 23b:	6a 01                	push   $0x1
 23d:	e8 4e 04 00 00       	call   690 <printf>
  printf(1, "\n");
 242:	58                   	pop    %eax
 243:	5a                   	pop    %edx
 244:	68 e8 09 00 00       	push   $0x9e8
 249:	6a 01                	push   $0x1
 24b:	e8 40 04 00 00       	call   690 <printf>
  printf(1, "\n");
 250:	59                   	pop    %ecx
 251:	58                   	pop    %eax
 252:	68 e8 09 00 00       	push   $0x9e8
 257:	6a 01                	push   $0x1
 259:	e8 32 04 00 00       	call   690 <printf>
  printf(1, "\n");
 25e:	58                   	pop    %eax
 25f:	5a                   	pop    %edx
 260:	68 e8 09 00 00       	push   $0x9e8
 265:	6a 01                	push   $0x1
 267:	e8 24 04 00 00       	call   690 <printf>
  printf(1, "\n");
 26c:	59                   	pop    %ecx
 26d:	58                   	pop    %eax
 26e:	68 e8 09 00 00       	push   $0x9e8
 273:	6a 01                	push   $0x1
 275:	e8 16 04 00 00       	call   690 <printf>
  printf(1, "\n");
 27a:	58                   	pop    %eax
 27b:	5a                   	pop    %edx
 27c:	68 e8 09 00 00       	push   $0x9e8
 281:	6a 01                	push   $0x1
 283:	e8 08 04 00 00       	call   690 <printf>
  printf(1, "\n");
 288:	59                   	pop    %ecx
 289:	58                   	pop    %eax
 28a:	68 e8 09 00 00       	push   $0x9e8
 28f:	6a 01                	push   $0x1
 291:	e8 fa 03 00 00       	call   690 <printf>
  printf(1, "\n");
 296:	58                   	pop    %eax
 297:	5a                   	pop    %edx
 298:	68 e8 09 00 00       	push   $0x9e8
 29d:	6a 01                	push   $0x1
 29f:	e8 ec 03 00 00       	call   690 <printf>
  printf(1, "\n");
 2a4:	59                   	pop    %ecx
 2a5:	58                   	pop    %eax
 2a6:	68 e8 09 00 00       	push   $0x9e8
 2ab:	6a 01                	push   $0x1
 2ad:	e8 de 03 00 00       	call   690 <printf>
  printf(1, "\n");
 2b2:	58                   	pop    %eax
 2b3:	5a                   	pop    %edx
 2b4:	68 e8 09 00 00       	push   $0x9e8
 2b9:	6a 01                	push   $0x1
 2bb:	e8 d0 03 00 00       	call   690 <printf>
  printf(1, "\n");
 2c0:	59                   	pop    %ecx
 2c1:	58                   	pop    %eax
 2c2:	68 e8 09 00 00       	push   $0x9e8
 2c7:	6a 01                	push   $0x1
 2c9:	e8 c2 03 00 00       	call   690 <printf>
  printf(1, "\n");
 2ce:	58                   	pop    %eax
 2cf:	5a                   	pop    %edx
 2d0:	68 e8 09 00 00       	push   $0x9e8
 2d5:	6a 01                	push   $0x1
 2d7:	e8 b4 03 00 00       	call   690 <printf>

  exit();
 2dc:	e8 61 02 00 00       	call   542 <exit>
 2e1:	66 90                	xchg   %ax,%ax
 2e3:	66 90                	xchg   %ax,%ax
 2e5:	66 90                	xchg   %ax,%ax
 2e7:	66 90                	xchg   %ax,%ax
 2e9:	66 90                	xchg   %ax,%ax
 2eb:	66 90                	xchg   %ax,%ax
 2ed:	66 90                	xchg   %ax,%ax
 2ef:	90                   	nop

000002f0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 45 08             	mov    0x8(%ebp),%eax
 2f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2fa:	89 c2                	mov    %eax,%edx
 2fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 300:	83 c1 01             	add    $0x1,%ecx
 303:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 307:	83 c2 01             	add    $0x1,%edx
 30a:	84 db                	test   %bl,%bl
 30c:	88 5a ff             	mov    %bl,-0x1(%edx)
 30f:	75 ef                	jne    300 <strcpy+0x10>
    ;
  return os;
}
 311:	5b                   	pop    %ebx
 312:	5d                   	pop    %ebp
 313:	c3                   	ret    
 314:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 31a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000320 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	53                   	push   %ebx
 324:	8b 55 08             	mov    0x8(%ebp),%edx
 327:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 32a:	0f b6 02             	movzbl (%edx),%eax
 32d:	0f b6 19             	movzbl (%ecx),%ebx
 330:	84 c0                	test   %al,%al
 332:	75 1c                	jne    350 <strcmp+0x30>
 334:	eb 2a                	jmp    360 <strcmp+0x40>
 336:	8d 76 00             	lea    0x0(%esi),%esi
 339:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 340:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 343:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 346:	83 c1 01             	add    $0x1,%ecx
 349:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 34c:	84 c0                	test   %al,%al
 34e:	74 10                	je     360 <strcmp+0x40>
 350:	38 d8                	cmp    %bl,%al
 352:	74 ec                	je     340 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 354:	29 d8                	sub    %ebx,%eax
}
 356:	5b                   	pop    %ebx
 357:	5d                   	pop    %ebp
 358:	c3                   	ret    
 359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 360:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 362:	29 d8                	sub    %ebx,%eax
}
 364:	5b                   	pop    %ebx
 365:	5d                   	pop    %ebp
 366:	c3                   	ret    
 367:	89 f6                	mov    %esi,%esi
 369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000370 <strlen>:

uint
strlen(const char *s)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 376:	80 39 00             	cmpb   $0x0,(%ecx)
 379:	74 15                	je     390 <strlen+0x20>
 37b:	31 d2                	xor    %edx,%edx
 37d:	8d 76 00             	lea    0x0(%esi),%esi
 380:	83 c2 01             	add    $0x1,%edx
 383:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 387:	89 d0                	mov    %edx,%eax
 389:	75 f5                	jne    380 <strlen+0x10>
    ;
  return n;
}
 38b:	5d                   	pop    %ebp
 38c:	c3                   	ret    
 38d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 390:	31 c0                	xor    %eax,%eax
}
 392:	5d                   	pop    %ebp
 393:	c3                   	ret    
 394:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 39a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000003a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 3ad:	89 d7                	mov    %edx,%edi
 3af:	fc                   	cld    
 3b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3b2:	89 d0                	mov    %edx,%eax
 3b4:	5f                   	pop    %edi
 3b5:	5d                   	pop    %ebp
 3b6:	c3                   	ret    
 3b7:	89 f6                	mov    %esi,%esi
 3b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003c0 <strchr>:

char*
strchr(const char *s, char c)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	53                   	push   %ebx
 3c4:	8b 45 08             	mov    0x8(%ebp),%eax
 3c7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 3ca:	0f b6 10             	movzbl (%eax),%edx
 3cd:	84 d2                	test   %dl,%dl
 3cf:	74 1d                	je     3ee <strchr+0x2e>
    if(*s == c)
 3d1:	38 d3                	cmp    %dl,%bl
 3d3:	89 d9                	mov    %ebx,%ecx
 3d5:	75 0d                	jne    3e4 <strchr+0x24>
 3d7:	eb 17                	jmp    3f0 <strchr+0x30>
 3d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3e0:	38 ca                	cmp    %cl,%dl
 3e2:	74 0c                	je     3f0 <strchr+0x30>
  for(; *s; s++)
 3e4:	83 c0 01             	add    $0x1,%eax
 3e7:	0f b6 10             	movzbl (%eax),%edx
 3ea:	84 d2                	test   %dl,%dl
 3ec:	75 f2                	jne    3e0 <strchr+0x20>
      return (char*)s;
  return 0;
 3ee:	31 c0                	xor    %eax,%eax
}
 3f0:	5b                   	pop    %ebx
 3f1:	5d                   	pop    %ebp
 3f2:	c3                   	ret    
 3f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000400 <gets>:

char*
gets(char *buf, int max)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
 404:	56                   	push   %esi
 405:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 406:	31 f6                	xor    %esi,%esi
 408:	89 f3                	mov    %esi,%ebx
{
 40a:	83 ec 1c             	sub    $0x1c,%esp
 40d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 410:	eb 2f                	jmp    441 <gets+0x41>
 412:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 418:	8d 45 e7             	lea    -0x19(%ebp),%eax
 41b:	83 ec 04             	sub    $0x4,%esp
 41e:	6a 01                	push   $0x1
 420:	50                   	push   %eax
 421:	6a 00                	push   $0x0
 423:	e8 32 01 00 00       	call   55a <read>
    if(cc < 1)
 428:	83 c4 10             	add    $0x10,%esp
 42b:	85 c0                	test   %eax,%eax
 42d:	7e 1c                	jle    44b <gets+0x4b>
      break;
    buf[i++] = c;
 42f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 433:	83 c7 01             	add    $0x1,%edi
 436:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 439:	3c 0a                	cmp    $0xa,%al
 43b:	74 23                	je     460 <gets+0x60>
 43d:	3c 0d                	cmp    $0xd,%al
 43f:	74 1f                	je     460 <gets+0x60>
  for(i=0; i+1 < max; ){
 441:	83 c3 01             	add    $0x1,%ebx
 444:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 447:	89 fe                	mov    %edi,%esi
 449:	7c cd                	jl     418 <gets+0x18>
 44b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 44d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 450:	c6 03 00             	movb   $0x0,(%ebx)
}
 453:	8d 65 f4             	lea    -0xc(%ebp),%esp
 456:	5b                   	pop    %ebx
 457:	5e                   	pop    %esi
 458:	5f                   	pop    %edi
 459:	5d                   	pop    %ebp
 45a:	c3                   	ret    
 45b:	90                   	nop
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 460:	8b 75 08             	mov    0x8(%ebp),%esi
 463:	8b 45 08             	mov    0x8(%ebp),%eax
 466:	01 de                	add    %ebx,%esi
 468:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 46a:	c6 03 00             	movb   $0x0,(%ebx)
}
 46d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 470:	5b                   	pop    %ebx
 471:	5e                   	pop    %esi
 472:	5f                   	pop    %edi
 473:	5d                   	pop    %ebp
 474:	c3                   	ret    
 475:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 479:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000480 <stat>:

int
stat(const char *n, struct stat *st)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	56                   	push   %esi
 484:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 485:	83 ec 08             	sub    $0x8,%esp
 488:	6a 00                	push   $0x0
 48a:	ff 75 08             	pushl  0x8(%ebp)
 48d:	e8 f0 00 00 00       	call   582 <open>
  if(fd < 0)
 492:	83 c4 10             	add    $0x10,%esp
 495:	85 c0                	test   %eax,%eax
 497:	78 27                	js     4c0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 499:	83 ec 08             	sub    $0x8,%esp
 49c:	ff 75 0c             	pushl  0xc(%ebp)
 49f:	89 c3                	mov    %eax,%ebx
 4a1:	50                   	push   %eax
 4a2:	e8 f3 00 00 00       	call   59a <fstat>
  close(fd);
 4a7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4aa:	89 c6                	mov    %eax,%esi
  close(fd);
 4ac:	e8 b9 00 00 00       	call   56a <close>
  return r;
 4b1:	83 c4 10             	add    $0x10,%esp
}
 4b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4b7:	89 f0                	mov    %esi,%eax
 4b9:	5b                   	pop    %ebx
 4ba:	5e                   	pop    %esi
 4bb:	5d                   	pop    %ebp
 4bc:	c3                   	ret    
 4bd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4c0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4c5:	eb ed                	jmp    4b4 <stat+0x34>
 4c7:	89 f6                	mov    %esi,%esi
 4c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004d0 <atoi>:

int
atoi(const char *s)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	53                   	push   %ebx
 4d4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4d7:	0f be 11             	movsbl (%ecx),%edx
 4da:	8d 42 d0             	lea    -0x30(%edx),%eax
 4dd:	3c 09                	cmp    $0x9,%al
  n = 0;
 4df:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 4e4:	77 1f                	ja     505 <atoi+0x35>
 4e6:	8d 76 00             	lea    0x0(%esi),%esi
 4e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 4f0:	8d 04 80             	lea    (%eax,%eax,4),%eax
 4f3:	83 c1 01             	add    $0x1,%ecx
 4f6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 4fa:	0f be 11             	movsbl (%ecx),%edx
 4fd:	8d 5a d0             	lea    -0x30(%edx),%ebx
 500:	80 fb 09             	cmp    $0x9,%bl
 503:	76 eb                	jbe    4f0 <atoi+0x20>
  return n;
}
 505:	5b                   	pop    %ebx
 506:	5d                   	pop    %ebp
 507:	c3                   	ret    
 508:	90                   	nop
 509:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000510 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	56                   	push   %esi
 514:	53                   	push   %ebx
 515:	8b 5d 10             	mov    0x10(%ebp),%ebx
 518:	8b 45 08             	mov    0x8(%ebp),%eax
 51b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 51e:	85 db                	test   %ebx,%ebx
 520:	7e 14                	jle    536 <memmove+0x26>
 522:	31 d2                	xor    %edx,%edx
 524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 528:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 52c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 52f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 532:	39 d3                	cmp    %edx,%ebx
 534:	75 f2                	jne    528 <memmove+0x18>
  return vdst;
}
 536:	5b                   	pop    %ebx
 537:	5e                   	pop    %esi
 538:	5d                   	pop    %ebp
 539:	c3                   	ret    

0000053a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 53a:	b8 01 00 00 00       	mov    $0x1,%eax
 53f:	cd 40                	int    $0x40
 541:	c3                   	ret    

00000542 <exit>:
SYSCALL(exit)
 542:	b8 02 00 00 00       	mov    $0x2,%eax
 547:	cd 40                	int    $0x40
 549:	c3                   	ret    

0000054a <wait>:
SYSCALL(wait)
 54a:	b8 03 00 00 00       	mov    $0x3,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    

00000552 <pipe>:
SYSCALL(pipe)
 552:	b8 04 00 00 00       	mov    $0x4,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    

0000055a <read>:
SYSCALL(read)
 55a:	b8 05 00 00 00       	mov    $0x5,%eax
 55f:	cd 40                	int    $0x40
 561:	c3                   	ret    

00000562 <write>:
SYSCALL(write)
 562:	b8 10 00 00 00       	mov    $0x10,%eax
 567:	cd 40                	int    $0x40
 569:	c3                   	ret    

0000056a <close>:
SYSCALL(close)
 56a:	b8 15 00 00 00       	mov    $0x15,%eax
 56f:	cd 40                	int    $0x40
 571:	c3                   	ret    

00000572 <kill>:
SYSCALL(kill)
 572:	b8 06 00 00 00       	mov    $0x6,%eax
 577:	cd 40                	int    $0x40
 579:	c3                   	ret    

0000057a <exec>:
SYSCALL(exec)
 57a:	b8 07 00 00 00       	mov    $0x7,%eax
 57f:	cd 40                	int    $0x40
 581:	c3                   	ret    

00000582 <open>:
SYSCALL(open)
 582:	b8 0f 00 00 00       	mov    $0xf,%eax
 587:	cd 40                	int    $0x40
 589:	c3                   	ret    

0000058a <mknod>:
SYSCALL(mknod)
 58a:	b8 11 00 00 00       	mov    $0x11,%eax
 58f:	cd 40                	int    $0x40
 591:	c3                   	ret    

00000592 <unlink>:
SYSCALL(unlink)
 592:	b8 12 00 00 00       	mov    $0x12,%eax
 597:	cd 40                	int    $0x40
 599:	c3                   	ret    

0000059a <fstat>:
SYSCALL(fstat)
 59a:	b8 08 00 00 00       	mov    $0x8,%eax
 59f:	cd 40                	int    $0x40
 5a1:	c3                   	ret    

000005a2 <link>:
SYSCALL(link)
 5a2:	b8 13 00 00 00       	mov    $0x13,%eax
 5a7:	cd 40                	int    $0x40
 5a9:	c3                   	ret    

000005aa <mkdir>:
SYSCALL(mkdir)
 5aa:	b8 14 00 00 00       	mov    $0x14,%eax
 5af:	cd 40                	int    $0x40
 5b1:	c3                   	ret    

000005b2 <chdir>:
SYSCALL(chdir)
 5b2:	b8 09 00 00 00       	mov    $0x9,%eax
 5b7:	cd 40                	int    $0x40
 5b9:	c3                   	ret    

000005ba <dup>:
SYSCALL(dup)
 5ba:	b8 0a 00 00 00       	mov    $0xa,%eax
 5bf:	cd 40                	int    $0x40
 5c1:	c3                   	ret    

000005c2 <getpid>:
SYSCALL(getpid)
 5c2:	b8 0b 00 00 00       	mov    $0xb,%eax
 5c7:	cd 40                	int    $0x40
 5c9:	c3                   	ret    

000005ca <sbrk>:
SYSCALL(sbrk)
 5ca:	b8 0c 00 00 00       	mov    $0xc,%eax
 5cf:	cd 40                	int    $0x40
 5d1:	c3                   	ret    

000005d2 <sleep>:
SYSCALL(sleep)
 5d2:	b8 0d 00 00 00       	mov    $0xd,%eax
 5d7:	cd 40                	int    $0x40
 5d9:	c3                   	ret    

000005da <uptime>:
SYSCALL(uptime)
 5da:	b8 0e 00 00 00       	mov    $0xe,%eax
 5df:	cd 40                	int    $0x40
 5e1:	c3                   	ret    

000005e2 <cps>:
SYSCALL(cps)
 5e2:	b8 16 00 00 00       	mov    $0x16,%eax
 5e7:	cd 40                	int    $0x40
 5e9:	c3                   	ret    
 5ea:	66 90                	xchg   %ax,%ax
 5ec:	66 90                	xchg   %ax,%ax
 5ee:	66 90                	xchg   %ax,%ax

000005f0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	56                   	push   %esi
 5f5:	53                   	push   %ebx
 5f6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 5f9:	85 d2                	test   %edx,%edx
{
 5fb:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 5fe:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 600:	79 76                	jns    678 <printint+0x88>
 602:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 606:	74 70                	je     678 <printint+0x88>
    x = -xx;
 608:	f7 d8                	neg    %eax
    neg = 1;
 60a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 611:	31 f6                	xor    %esi,%esi
 613:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 616:	eb 0a                	jmp    622 <printint+0x32>
 618:	90                   	nop
 619:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 620:	89 fe                	mov    %edi,%esi
 622:	31 d2                	xor    %edx,%edx
 624:	8d 7e 01             	lea    0x1(%esi),%edi
 627:	f7 f1                	div    %ecx
 629:	0f b6 92 f4 09 00 00 	movzbl 0x9f4(%edx),%edx
  }while((x /= base) != 0);
 630:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 632:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 635:	75 e9                	jne    620 <printint+0x30>
  if(neg)
 637:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 63a:	85 c0                	test   %eax,%eax
 63c:	74 08                	je     646 <printint+0x56>
    buf[i++] = '-';
 63e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 643:	8d 7e 02             	lea    0x2(%esi),%edi
 646:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 64a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 64d:	8d 76 00             	lea    0x0(%esi),%esi
 650:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 653:	83 ec 04             	sub    $0x4,%esp
 656:	83 ee 01             	sub    $0x1,%esi
 659:	6a 01                	push   $0x1
 65b:	53                   	push   %ebx
 65c:	57                   	push   %edi
 65d:	88 45 d7             	mov    %al,-0x29(%ebp)
 660:	e8 fd fe ff ff       	call   562 <write>

  while(--i >= 0)
 665:	83 c4 10             	add    $0x10,%esp
 668:	39 de                	cmp    %ebx,%esi
 66a:	75 e4                	jne    650 <printint+0x60>
    putc(fd, buf[i]);
}
 66c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 66f:	5b                   	pop    %ebx
 670:	5e                   	pop    %esi
 671:	5f                   	pop    %edi
 672:	5d                   	pop    %ebp
 673:	c3                   	ret    
 674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 678:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 67f:	eb 90                	jmp    611 <printint+0x21>
 681:	eb 0d                	jmp    690 <printf>
 683:	90                   	nop
 684:	90                   	nop
 685:	90                   	nop
 686:	90                   	nop
 687:	90                   	nop
 688:	90                   	nop
 689:	90                   	nop
 68a:	90                   	nop
 68b:	90                   	nop
 68c:	90                   	nop
 68d:	90                   	nop
 68e:	90                   	nop
 68f:	90                   	nop

00000690 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	56                   	push   %esi
 695:	53                   	push   %ebx
 696:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 699:	8b 75 0c             	mov    0xc(%ebp),%esi
 69c:	0f b6 1e             	movzbl (%esi),%ebx
 69f:	84 db                	test   %bl,%bl
 6a1:	0f 84 b3 00 00 00    	je     75a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 6a7:	8d 45 10             	lea    0x10(%ebp),%eax
 6aa:	83 c6 01             	add    $0x1,%esi
  state = 0;
 6ad:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 6af:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 6b2:	eb 2f                	jmp    6e3 <printf+0x53>
 6b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 6b8:	83 f8 25             	cmp    $0x25,%eax
 6bb:	0f 84 a7 00 00 00    	je     768 <printf+0xd8>
  write(fd, &c, 1);
 6c1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 6c4:	83 ec 04             	sub    $0x4,%esp
 6c7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 6ca:	6a 01                	push   $0x1
 6cc:	50                   	push   %eax
 6cd:	ff 75 08             	pushl  0x8(%ebp)
 6d0:	e8 8d fe ff ff       	call   562 <write>
 6d5:	83 c4 10             	add    $0x10,%esp
 6d8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 6db:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 6df:	84 db                	test   %bl,%bl
 6e1:	74 77                	je     75a <printf+0xca>
    if(state == 0){
 6e3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 6e5:	0f be cb             	movsbl %bl,%ecx
 6e8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 6eb:	74 cb                	je     6b8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 6ed:	83 ff 25             	cmp    $0x25,%edi
 6f0:	75 e6                	jne    6d8 <printf+0x48>
      if(c == 'd'){
 6f2:	83 f8 64             	cmp    $0x64,%eax
 6f5:	0f 84 05 01 00 00    	je     800 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 6fb:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 701:	83 f9 70             	cmp    $0x70,%ecx
 704:	74 72                	je     778 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 706:	83 f8 73             	cmp    $0x73,%eax
 709:	0f 84 99 00 00 00    	je     7a8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 70f:	83 f8 63             	cmp    $0x63,%eax
 712:	0f 84 08 01 00 00    	je     820 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 718:	83 f8 25             	cmp    $0x25,%eax
 71b:	0f 84 ef 00 00 00    	je     810 <printf+0x180>
  write(fd, &c, 1);
 721:	8d 45 e7             	lea    -0x19(%ebp),%eax
 724:	83 ec 04             	sub    $0x4,%esp
 727:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 72b:	6a 01                	push   $0x1
 72d:	50                   	push   %eax
 72e:	ff 75 08             	pushl  0x8(%ebp)
 731:	e8 2c fe ff ff       	call   562 <write>
 736:	83 c4 0c             	add    $0xc,%esp
 739:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 73c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 73f:	6a 01                	push   $0x1
 741:	50                   	push   %eax
 742:	ff 75 08             	pushl  0x8(%ebp)
 745:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 748:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 74a:	e8 13 fe ff ff       	call   562 <write>
  for(i = 0; fmt[i]; i++){
 74f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 753:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 756:	84 db                	test   %bl,%bl
 758:	75 89                	jne    6e3 <printf+0x53>
    }
  }
}
 75a:	8d 65 f4             	lea    -0xc(%ebp),%esp
 75d:	5b                   	pop    %ebx
 75e:	5e                   	pop    %esi
 75f:	5f                   	pop    %edi
 760:	5d                   	pop    %ebp
 761:	c3                   	ret    
 762:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 768:	bf 25 00 00 00       	mov    $0x25,%edi
 76d:	e9 66 ff ff ff       	jmp    6d8 <printf+0x48>
 772:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 778:	83 ec 0c             	sub    $0xc,%esp
 77b:	b9 10 00 00 00       	mov    $0x10,%ecx
 780:	6a 00                	push   $0x0
 782:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 785:	8b 45 08             	mov    0x8(%ebp),%eax
 788:	8b 17                	mov    (%edi),%edx
 78a:	e8 61 fe ff ff       	call   5f0 <printint>
        ap++;
 78f:	89 f8                	mov    %edi,%eax
 791:	83 c4 10             	add    $0x10,%esp
      state = 0;
 794:	31 ff                	xor    %edi,%edi
        ap++;
 796:	83 c0 04             	add    $0x4,%eax
 799:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 79c:	e9 37 ff ff ff       	jmp    6d8 <printf+0x48>
 7a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7a8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 7ab:	8b 08                	mov    (%eax),%ecx
        ap++;
 7ad:	83 c0 04             	add    $0x4,%eax
 7b0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 7b3:	85 c9                	test   %ecx,%ecx
 7b5:	0f 84 8e 00 00 00    	je     849 <printf+0x1b9>
        while(*s != 0){
 7bb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 7be:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 7c0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 7c2:	84 c0                	test   %al,%al
 7c4:	0f 84 0e ff ff ff    	je     6d8 <printf+0x48>
 7ca:	89 75 d0             	mov    %esi,-0x30(%ebp)
 7cd:	89 de                	mov    %ebx,%esi
 7cf:	8b 5d 08             	mov    0x8(%ebp),%ebx
 7d2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 7d5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7d8:	83 ec 04             	sub    $0x4,%esp
          s++;
 7db:	83 c6 01             	add    $0x1,%esi
 7de:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 7e1:	6a 01                	push   $0x1
 7e3:	57                   	push   %edi
 7e4:	53                   	push   %ebx
 7e5:	e8 78 fd ff ff       	call   562 <write>
        while(*s != 0){
 7ea:	0f b6 06             	movzbl (%esi),%eax
 7ed:	83 c4 10             	add    $0x10,%esp
 7f0:	84 c0                	test   %al,%al
 7f2:	75 e4                	jne    7d8 <printf+0x148>
 7f4:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 7f7:	31 ff                	xor    %edi,%edi
 7f9:	e9 da fe ff ff       	jmp    6d8 <printf+0x48>
 7fe:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 800:	83 ec 0c             	sub    $0xc,%esp
 803:	b9 0a 00 00 00       	mov    $0xa,%ecx
 808:	6a 01                	push   $0x1
 80a:	e9 73 ff ff ff       	jmp    782 <printf+0xf2>
 80f:	90                   	nop
  write(fd, &c, 1);
 810:	83 ec 04             	sub    $0x4,%esp
 813:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 816:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 819:	6a 01                	push   $0x1
 81b:	e9 21 ff ff ff       	jmp    741 <printf+0xb1>
        putc(fd, *ap);
 820:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 823:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 826:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 828:	6a 01                	push   $0x1
        ap++;
 82a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 82d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 830:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 833:	50                   	push   %eax
 834:	ff 75 08             	pushl  0x8(%ebp)
 837:	e8 26 fd ff ff       	call   562 <write>
        ap++;
 83c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 83f:	83 c4 10             	add    $0x10,%esp
      state = 0;
 842:	31 ff                	xor    %edi,%edi
 844:	e9 8f fe ff ff       	jmp    6d8 <printf+0x48>
          s = "(null)";
 849:	bb ea 09 00 00       	mov    $0x9ea,%ebx
        while(*s != 0){
 84e:	b8 28 00 00 00       	mov    $0x28,%eax
 853:	e9 72 ff ff ff       	jmp    7ca <printf+0x13a>
 858:	66 90                	xchg   %ax,%ax
 85a:	66 90                	xchg   %ax,%ax
 85c:	66 90                	xchg   %ax,%ax
 85e:	66 90                	xchg   %ax,%ax

00000860 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 860:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 861:	a1 90 0c 00 00       	mov    0xc90,%eax
{
 866:	89 e5                	mov    %esp,%ebp
 868:	57                   	push   %edi
 869:	56                   	push   %esi
 86a:	53                   	push   %ebx
 86b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 86e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 871:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 878:	39 c8                	cmp    %ecx,%eax
 87a:	8b 10                	mov    (%eax),%edx
 87c:	73 32                	jae    8b0 <free+0x50>
 87e:	39 d1                	cmp    %edx,%ecx
 880:	72 04                	jb     886 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 882:	39 d0                	cmp    %edx,%eax
 884:	72 32                	jb     8b8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 886:	8b 73 fc             	mov    -0x4(%ebx),%esi
 889:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 88c:	39 fa                	cmp    %edi,%edx
 88e:	74 30                	je     8c0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 890:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 893:	8b 50 04             	mov    0x4(%eax),%edx
 896:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 899:	39 f1                	cmp    %esi,%ecx
 89b:	74 3a                	je     8d7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 89d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 89f:	a3 90 0c 00 00       	mov    %eax,0xc90
}
 8a4:	5b                   	pop    %ebx
 8a5:	5e                   	pop    %esi
 8a6:	5f                   	pop    %edi
 8a7:	5d                   	pop    %ebp
 8a8:	c3                   	ret    
 8a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8b0:	39 d0                	cmp    %edx,%eax
 8b2:	72 04                	jb     8b8 <free+0x58>
 8b4:	39 d1                	cmp    %edx,%ecx
 8b6:	72 ce                	jb     886 <free+0x26>
{
 8b8:	89 d0                	mov    %edx,%eax
 8ba:	eb bc                	jmp    878 <free+0x18>
 8bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 8c0:	03 72 04             	add    0x4(%edx),%esi
 8c3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8c6:	8b 10                	mov    (%eax),%edx
 8c8:	8b 12                	mov    (%edx),%edx
 8ca:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 8cd:	8b 50 04             	mov    0x4(%eax),%edx
 8d0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 8d3:	39 f1                	cmp    %esi,%ecx
 8d5:	75 c6                	jne    89d <free+0x3d>
    p->s.size += bp->s.size;
 8d7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 8da:	a3 90 0c 00 00       	mov    %eax,0xc90
    p->s.size += bp->s.size;
 8df:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 8e2:	8b 53 f8             	mov    -0x8(%ebx),%edx
 8e5:	89 10                	mov    %edx,(%eax)
}
 8e7:	5b                   	pop    %ebx
 8e8:	5e                   	pop    %esi
 8e9:	5f                   	pop    %edi
 8ea:	5d                   	pop    %ebp
 8eb:	c3                   	ret    
 8ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8f0:	55                   	push   %ebp
 8f1:	89 e5                	mov    %esp,%ebp
 8f3:	57                   	push   %edi
 8f4:	56                   	push   %esi
 8f5:	53                   	push   %ebx
 8f6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8fc:	8b 15 90 0c 00 00    	mov    0xc90,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 902:	8d 78 07             	lea    0x7(%eax),%edi
 905:	c1 ef 03             	shr    $0x3,%edi
 908:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 90b:	85 d2                	test   %edx,%edx
 90d:	0f 84 9d 00 00 00    	je     9b0 <malloc+0xc0>
 913:	8b 02                	mov    (%edx),%eax
 915:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 918:	39 cf                	cmp    %ecx,%edi
 91a:	76 6c                	jbe    988 <malloc+0x98>
 91c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 922:	bb 00 10 00 00       	mov    $0x1000,%ebx
 927:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 92a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 931:	eb 0e                	jmp    941 <malloc+0x51>
 933:	90                   	nop
 934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 938:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 93a:	8b 48 04             	mov    0x4(%eax),%ecx
 93d:	39 f9                	cmp    %edi,%ecx
 93f:	73 47                	jae    988 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 941:	39 05 90 0c 00 00    	cmp    %eax,0xc90
 947:	89 c2                	mov    %eax,%edx
 949:	75 ed                	jne    938 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 94b:	83 ec 0c             	sub    $0xc,%esp
 94e:	56                   	push   %esi
 94f:	e8 76 fc ff ff       	call   5ca <sbrk>
  if(p == (char*)-1)
 954:	83 c4 10             	add    $0x10,%esp
 957:	83 f8 ff             	cmp    $0xffffffff,%eax
 95a:	74 1c                	je     978 <malloc+0x88>
  hp->s.size = nu;
 95c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 95f:	83 ec 0c             	sub    $0xc,%esp
 962:	83 c0 08             	add    $0x8,%eax
 965:	50                   	push   %eax
 966:	e8 f5 fe ff ff       	call   860 <free>
  return freep;
 96b:	8b 15 90 0c 00 00    	mov    0xc90,%edx
      if((p = morecore(nunits)) == 0)
 971:	83 c4 10             	add    $0x10,%esp
 974:	85 d2                	test   %edx,%edx
 976:	75 c0                	jne    938 <malloc+0x48>
        return 0;
  }
}
 978:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 97b:	31 c0                	xor    %eax,%eax
}
 97d:	5b                   	pop    %ebx
 97e:	5e                   	pop    %esi
 97f:	5f                   	pop    %edi
 980:	5d                   	pop    %ebp
 981:	c3                   	ret    
 982:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 988:	39 cf                	cmp    %ecx,%edi
 98a:	74 54                	je     9e0 <malloc+0xf0>
        p->s.size -= nunits;
 98c:	29 f9                	sub    %edi,%ecx
 98e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 991:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 994:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 997:	89 15 90 0c 00 00    	mov    %edx,0xc90
}
 99d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9a0:	83 c0 08             	add    $0x8,%eax
}
 9a3:	5b                   	pop    %ebx
 9a4:	5e                   	pop    %esi
 9a5:	5f                   	pop    %edi
 9a6:	5d                   	pop    %ebp
 9a7:	c3                   	ret    
 9a8:	90                   	nop
 9a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 9b0:	c7 05 90 0c 00 00 94 	movl   $0xc94,0xc90
 9b7:	0c 00 00 
 9ba:	c7 05 94 0c 00 00 94 	movl   $0xc94,0xc94
 9c1:	0c 00 00 
    base.s.size = 0;
 9c4:	b8 94 0c 00 00       	mov    $0xc94,%eax
 9c9:	c7 05 98 0c 00 00 00 	movl   $0x0,0xc98
 9d0:	00 00 00 
 9d3:	e9 44 ff ff ff       	jmp    91c <malloc+0x2c>
 9d8:	90                   	nop
 9d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 9e0:	8b 08                	mov    (%eax),%ecx
 9e2:	89 0a                	mov    %ecx,(%edx)
 9e4:	eb b1                	jmp    997 <malloc+0xa7>
