
_editor:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
//标记是否更改过
int changed = 0;
int auto_show = 1;

int main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	57                   	push   %edi
       e:	56                   	push   %esi
       f:	53                   	push   %ebx
      10:	51                   	push   %ecx
      11:	81 ec 18 05 00 00    	sub    $0x518,%esp
	//setProgramStatus(EDITOR);
	if (argc == 1)
      17:	83 39 01             	cmpl   $0x1,(%ecx)
{
      1a:	8b 41 04             	mov    0x4(%ecx),%eax
      1d:	89 85 dc fa ff ff    	mov    %eax,-0x524(%ebp)
	if (argc == 1)
      23:	0f 84 36 05 00 00    	je     55f <main+0x55f>
		//setProgramStatus(SHELL);
		exit();
	}
	//存放文件内容
	
	char *text[MAX_LINE_NUMBER] = {};
      29:	31 db                	xor    %ebx,%ebx
      2b:	8d bd e8 fb ff ff    	lea    -0x418(%ebp),%edi
	text[0] = malloc(MAX_LINE_LENGTH);
      31:	83 ec 0c             	sub    $0xc,%esp
	char *text[MAX_LINE_NUMBER] = {};
      34:	89 d8                	mov    %ebx,%eax
      36:	b9 00 01 00 00       	mov    $0x100,%ecx
      3b:	f3 ab                	rep stos %eax,%es:(%edi)
	text[0] = malloc(MAX_LINE_LENGTH);
      3d:	68 00 01 00 00       	push   $0x100
      42:	e8 f9 14 00 00       	call   1540 <malloc>
	memset(text[0], 0, MAX_LINE_LENGTH);
      47:	83 c4 0c             	add    $0xc,%esp
	text[0] = malloc(MAX_LINE_LENGTH);
      4a:	89 85 e8 fb ff ff    	mov    %eax,-0x418(%ebp)
	memset(text[0], 0, MAX_LINE_LENGTH);
      50:	68 00 01 00 00       	push   $0x100
      55:	6a 00                	push   $0x0
      57:	50                   	push   %eax
      58:	e8 83 0f 00 00       	call   fe0 <memset>
	//存储当前最大的行号，从0开始。即若line_number == x，则从text[0]到text[x]可用
	int line_number = 0;
	//尝试打开文件
	int fd = open(argv[1], O_RDONLY);
      5d:	58                   	pop    %eax
      5e:	8b 85 dc fa ff ff    	mov    -0x524(%ebp),%eax
      64:	5a                   	pop    %edx
      65:	6a 00                	push   $0x0
      67:	ff 70 04             	pushl  0x4(%eax)
      6a:	e8 53 11 00 00       	call   11c2 <open>
	//如果文件存在，则打开并读取里面的内容
	if (fd != -1)
      6f:	83 c4 10             	add    $0x10,%esp
      72:	83 f8 ff             	cmp    $0xffffffff,%eax
	int fd = open(argv[1], O_RDONLY);
      75:	89 85 d8 fa ff ff    	mov    %eax,-0x528(%ebp)
	if (fd != -1)
      7b:	0f 84 d0 00 00 00    	je     151 <main+0x151>
	{
		printf(1, "file exist\n");
      81:	50                   	push   %eax
      82:	50                   	push   %eax
		char buf[BUF_SIZE] = {};
      83:	8d bd e8 fa ff ff    	lea    -0x518(%ebp),%edi
		printf(1, "file exist\n");
      89:	68 1b 19 00 00       	push   $0x191b
      8e:	6a 01                	push   $0x1
      90:	e8 4b 12 00 00       	call   12e0 <printf>
		char buf[BUF_SIZE] = {};
      95:	b9 40 00 00 00       	mov    $0x40,%ecx
      9a:	89 d8                	mov    %ebx,%eax
		int len = 0;
		while ((len = read(fd, buf, BUF_SIZE)) > 0)
      9c:	83 c4 10             	add    $0x10,%esp
		char buf[BUF_SIZE] = {};
      9f:	f3 ab                	rep stos %eax,%es:(%edi)
	int line_number = 0;
      a1:	31 ff                	xor    %edi,%edi
      a3:	90                   	nop
      a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		while ((len = read(fd, buf, BUF_SIZE)) > 0)
      a8:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
      ae:	83 ec 04             	sub    $0x4,%esp
      b1:	68 00 01 00 00       	push   $0x100
      b6:	50                   	push   %eax
      b7:	ff b5 d8 fa ff ff    	pushl  -0x528(%ebp)
      bd:	e8 d8 10 00 00       	call   119a <read>
      c2:	83 c4 10             	add    $0x10,%esp
      c5:	85 c0                	test   %eax,%eax
      c7:	89 c6                	mov    %eax,%esi
      c9:	0f 8e e0 00 00 00    	jle    1af <main+0x1af>
						line_number++;
						text[line_number] = malloc(MAX_LINE_LENGTH);
						memset(text[line_number], 0, MAX_LINE_LENGTH);
					}
				}
				if (is_full == 1 || i >= len - 1)
      cf:	8d 46 ff             	lea    -0x1(%esi),%eax
			int next = 0;
      d2:	31 d2                	xor    %edx,%edx
				if (is_full == 1 || i >= len - 1)
      d4:	89 85 e0 fa ff ff    	mov    %eax,-0x520(%ebp)
      da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
				for (i = next; i < len && buf[i] != '\n'; i++)
      e0:	80 bc 15 e8 fa ff ff 	cmpb   $0xa,-0x518(%ebp,%edx,1)
      e7:	0a 
      e8:	89 d3                	mov    %edx,%ebx
      ea:	75 0e                	jne    fa <main+0xfa>
      ec:	eb 41                	jmp    12f <main+0x12f>
      ee:	66 90                	xchg   %ax,%ax
      f0:	80 bc 1d e8 fa ff ff 	cmpb   $0xa,-0x518(%ebp,%ebx,1)
      f7:	0a 
      f8:	74 6e                	je     168 <main+0x168>
      fa:	83 c3 01             	add    $0x1,%ebx
      fd:	39 de                	cmp    %ebx,%esi
      ff:	75 ef                	jne    f0 <main+0xf0>
				strcat_n(text[line_number], buf+next, i-next);
     101:	8b 84 bd e8 fb ff ff 	mov    -0x418(%ebp,%edi,4),%eax
}

//拼接src的前n个字符到dest
char* strcat_n(char* dest, char* src, int len)
{
	if (len <= 0)
     108:	89 f1                	mov    %esi,%ecx
     10a:	29 d1                	sub    %edx,%ecx
				strcat_n(text[line_number], buf+next, i-next);
     10c:	89 85 e4 fa ff ff    	mov    %eax,-0x51c(%ebp)
	if (len <= 0)
     112:	74 94                	je     a8 <main+0xa8>
				strcat_n(text[line_number], buf+next, i-next);
     114:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
     11a:	01 c2                	add    %eax,%edx
     11c:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
     122:	e8 59 05 00 00       	call   680 <strcat_n.part.0>
				if (i < len && buf[i] == '\n')
     127:	39 de                	cmp    %ebx,%esi
     129:	0f 8e 79 ff ff ff    	jle    a8 <main+0xa8>
     12f:	80 bc 1d e8 fa ff ff 	cmpb   $0xa,-0x518(%ebp,%ebx,1)
     136:	0a 
     137:	74 42                	je     17b <main+0x17b>
				if (is_full == 1 || i >= len - 1)
     139:	39 9d e0 fa ff ff    	cmp    %ebx,-0x520(%ebp)
     13f:	0f 8e 63 ff ff ff    	jle    a8 <main+0xa8>
					next = i + 1;
     145:	8d 53 01             	lea    0x1(%ebx),%edx
				for (i = next; i < len && buf[i] != '\n'; i++)
     148:	39 d6                	cmp    %edx,%esi
     14a:	7f 94                	jg     e0 <main+0xe0>
     14c:	e9 57 ff ff ff       	jmp    a8 <main+0xa8>
		printf(1,"File do not exist\n");
     151:	57                   	push   %edi
     152:	57                   	push   %edi
     153:	68 27 19 00 00       	push   $0x1927
     158:	6a 01                	push   $0x1
     15a:	e8 81 11 00 00       	call   12e0 <printf>
		exit();
     15f:	e8 1e 10 00 00       	call   1182 <exit>
     164:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
				strcat_n(text[line_number], buf+next, i-next);
     168:	8b 84 bd e8 fb ff ff 	mov    -0x418(%ebp,%edi,4),%eax
	if (len <= 0)
     16f:	89 d9                	mov    %ebx,%ecx
     171:	29 d1                	sub    %edx,%ecx
				strcat_n(text[line_number], buf+next, i-next);
     173:	89 85 e4 fa ff ff    	mov    %eax,-0x51c(%ebp)
	if (len <= 0)
     179:	75 99                	jne    114 <main+0x114>
					if (line_number >= MAX_LINE_NUMBER - 1)
     17b:	81 ff fe 00 00 00    	cmp    $0xfe,%edi
     181:	7f 2c                	jg     1af <main+0x1af>
						text[line_number] = malloc(MAX_LINE_LENGTH);
     183:	83 ec 0c             	sub    $0xc,%esp
						line_number++;
     186:	83 c7 01             	add    $0x1,%edi
						text[line_number] = malloc(MAX_LINE_LENGTH);
     189:	68 00 01 00 00       	push   $0x100
     18e:	e8 ad 13 00 00       	call   1540 <malloc>
						memset(text[line_number], 0, MAX_LINE_LENGTH);
     193:	83 c4 0c             	add    $0xc,%esp
						text[line_number] = malloc(MAX_LINE_LENGTH);
     196:	89 84 bd e8 fb ff ff 	mov    %eax,-0x418(%ebp,%edi,4)
						memset(text[line_number], 0, MAX_LINE_LENGTH);
     19d:	68 00 01 00 00       	push   $0x100
     1a2:	6a 00                	push   $0x0
     1a4:	50                   	push   %eax
     1a5:	e8 36 0e 00 00       	call   fe0 <memset>
     1aa:	83 c4 10             	add    $0x10,%esp
     1ad:	eb 8a                	jmp    139 <main+0x139>
		close(fd);
     1af:	83 ec 0c             	sub    $0xc,%esp
     1b2:	ff b5 d8 fa ff ff    	pushl  -0x528(%ebp)
     1b8:	89 bd e4 fa ff ff    	mov    %edi,-0x51c(%ebp)
	char input[MAX_LINE_LENGTH] = {};
     1be:	8d bd e8 fa ff ff    	lea    -0x518(%ebp),%edi
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     1c4:	8d 9d ec fa ff ff    	lea    -0x514(%ebp),%ebx
		close(fd);
     1ca:	e8 db 0f 00 00       	call   11aa <close>
	show_text(text);
     1cf:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     1d5:	89 04 24             	mov    %eax,(%esp)
     1d8:	e8 33 05 00 00       	call   710 <show_text>
	com_help(text);
     1dd:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     1e3:	89 04 24             	mov    %eax,(%esp)
     1e6:	e8 95 0a 00 00       	call   c80 <com_help>
	char input[MAX_LINE_LENGTH] = {};
     1eb:	b9 40 00 00 00       	mov    $0x40,%ecx
     1f0:	31 c0                	xor    %eax,%eax
     1f2:	83 c4 10             	add    $0x10,%esp
     1f5:	f3 ab                	rep stos %eax,%es:(%edi)
     1f7:	89 f6                	mov    %esi,%esi
     1f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
		printf(1, "\nplease input command:\n");
     200:	83 ec 08             	sub    $0x8,%esp
     203:	68 3a 19 00 00       	push   $0x193a
     208:	6a 01                	push   $0x1
     20a:	e8 d1 10 00 00       	call   12e0 <printf>
		memset(input, 0, MAX_LINE_LENGTH);
     20f:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
     215:	83 c4 0c             	add    $0xc,%esp
     218:	68 00 01 00 00       	push   $0x100
     21d:	6a 00                	push   $0x0
     21f:	50                   	push   %eax
     220:	e8 bb 0d 00 00       	call   fe0 <memset>
		gets(input, MAX_LINE_LENGTH);
     225:	59                   	pop    %ecx
     226:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
     22c:	5e                   	pop    %esi
     22d:	68 00 01 00 00       	push   $0x100
     232:	50                   	push   %eax
		int j = 0;
     233:	31 f6                	xor    %esi,%esi
		gets(input, MAX_LINE_LENGTH);
     235:	e8 06 0e 00 00       	call   1040 <gets>
		int len = strlen(input);
     23a:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
     240:	89 04 24             	mov    %eax,(%esp)
     243:	e8 68 0d 00 00       	call   fb0 <strlen>
		input[len-1] = '\0';
     248:	83 c4 10             	add    $0x10,%esp
     24b:	c6 84 05 e7 fa ff ff 	movb   $0x0,-0x519(%ebp,%eax,1)
     252:	00 
			if (input[j] == ' ')
     253:	0f b6 84 35 e8 fa ff 	movzbl -0x518(%ebp,%esi,1),%eax
     25a:	ff 
     25b:	83 c6 01             	add    $0x1,%esi
     25e:	3c 20                	cmp    $0x20,%al
     260:	74 0a                	je     26c <main+0x26c>
		for (; j < 8; j++)
     262:	83 fe 08             	cmp    $0x8,%esi
     265:	75 ec                	jne    253 <main+0x253>
		int pos = MAX_LINE_LENGTH - 1;
     267:	be ff 00 00 00       	mov    $0xff,%esi
		if (input[0] == 'i' && input[1] == 'n' && input[2] == 's')
     26c:	0f b6 85 e8 fa ff ff 	movzbl -0x518(%ebp),%eax
     273:	3c 69                	cmp    $0x69,%al
     275:	0f 84 f5 00 00 00    	je     370 <main+0x370>
		else if (input[0] == 'm' && input[1] == 'o' && input[2] == 'd')
     27b:	3c 6d                	cmp    $0x6d,%al
     27d:	0f 85 6d 01 00 00    	jne    3f0 <main+0x3f0>
     283:	80 bd e9 fa ff ff 6f 	cmpb   $0x6f,-0x517(%ebp)
     28a:	0f 84 70 02 00 00    	je     500 <main+0x500>
		else if (strcmp(input, "show") == 0)
     290:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
     296:	83 ec 08             	sub    $0x8,%esp
     299:	68 64 19 00 00       	push   $0x1964
     29e:	50                   	push   %eax
     29f:	e8 bc 0c 00 00       	call   f60 <strcmp>
     2a4:	83 c4 10             	add    $0x10,%esp
     2a7:	85 c0                	test   %eax,%eax
     2a9:	0f 84 c1 01 00 00    	je     470 <main+0x470>
		else if (strcmp(input, "hide") == 0)
     2af:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
     2b5:	83 ec 08             	sub    $0x8,%esp
     2b8:	68 69 19 00 00       	push   $0x1969
     2bd:	50                   	push   %eax
     2be:	e8 9d 0c 00 00       	call   f60 <strcmp>
     2c3:	83 c4 10             	add    $0x10,%esp
     2c6:	85 c0                	test   %eax,%eax
     2c8:	0f 84 ca 01 00 00    	je     498 <main+0x498>
		else if (strcmp(input, "help") == 0)
     2ce:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
     2d4:	83 ec 08             	sub    $0x8,%esp
     2d7:	68 6e 19 00 00       	push   $0x196e
     2dc:	50                   	push   %eax
     2dd:	e8 7e 0c 00 00       	call   f60 <strcmp>
     2e2:	83 c4 10             	add    $0x10,%esp
     2e5:	85 c0                	test   %eax,%eax
     2e7:	0f 84 f3 01 00 00    	je     4e0 <main+0x4e0>
		else if (strcmp(input, "save") == 0 || strcmp(input, "CTRL+S\n") == 0)
     2ed:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
     2f3:	83 ec 08             	sub    $0x8,%esp
     2f6:	68 73 19 00 00       	push   $0x1973
     2fb:	50                   	push   %eax
     2fc:	e8 5f 0c 00 00       	call   f60 <strcmp>
     301:	83 c4 10             	add    $0x10,%esp
     304:	85 c0                	test   %eax,%eax
     306:	0f 84 b4 01 00 00    	je     4c0 <main+0x4c0>
     30c:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
     312:	83 ec 08             	sub    $0x8,%esp
     315:	68 78 19 00 00       	push   $0x1978
     31a:	50                   	push   %eax
     31b:	e8 40 0c 00 00       	call   f60 <strcmp>
     320:	83 c4 10             	add    $0x10,%esp
     323:	85 c0                	test   %eax,%eax
     325:	0f 84 95 01 00 00    	je     4c0 <main+0x4c0>
		else if (strcmp(input, "exit") == 0)
     32b:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
     331:	83 ec 08             	sub    $0x8,%esp
     334:	68 80 19 00 00       	push   $0x1980
     339:	50                   	push   %eax
     33a:	e8 21 0c 00 00       	call   f60 <strcmp>
     33f:	83 c4 10             	add    $0x10,%esp
     342:	85 c0                	test   %eax,%eax
     344:	0f 84 fe 01 00 00    	je     548 <main+0x548>
			printf(1, "invalid command.\n");
     34a:	83 ec 08             	sub    $0x8,%esp
     34d:	68 52 19 00 00       	push   $0x1952
     352:	6a 01                	push   $0x1
     354:	e8 87 0f 00 00       	call   12e0 <printf>
			com_help(text);
     359:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     35f:	89 04 24             	mov    %eax,(%esp)
     362:	e8 19 09 00 00       	call   c80 <com_help>
     367:	83 c4 10             	add    $0x10,%esp
     36a:	e9 91 fe ff ff       	jmp    200 <main+0x200>
     36f:	90                   	nop
		if (input[0] == 'i' && input[1] == 'n' && input[2] == 's')
     370:	80 bd e9 fa ff ff 6e 	cmpb   $0x6e,-0x517(%ebp)
     377:	0f 85 13 ff ff ff    	jne    290 <main+0x290>
     37d:	80 bd ea fa ff ff 73 	cmpb   $0x73,-0x516(%ebp)
     384:	0f 85 06 ff ff ff    	jne    290 <main+0x290>
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     38a:	0f b6 85 eb fa ff ff 	movzbl -0x515(%ebp),%eax
     391:	3c 2d                	cmp    $0x2d,%al
     393:	0f 84 f2 01 00 00    	je     58b <main+0x58b>
			else if(input[3] == ' '||input[3] == '\0')
     399:	a8 df                	test   $0xdf,%al
     39b:	75 ad                	jne    34a <main+0x34a>
				com_ins(text, line_number+1, &input[pos]);
     39d:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
     3a3:	57                   	push   %edi
     3a4:	01 c6                	add    %eax,%esi
     3a6:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
     3ac:	56                   	push   %esi
     3ad:	83 c0 01             	add    $0x1,%eax
     3b0:	50                   	push   %eax
     3b1:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     3b7:	50                   	push   %eax
     3b8:	e8 b3 04 00 00       	call   870 <com_ins>
     3bd:	83 c4 10             	add    $0x10,%esp
}

//获取当前最大的行号，从0开始，即return x表示text[0]到text[x]可用
int get_line_number(char *text[])
{
	int i = 0;
     3c0:	31 c0                	xor    %eax,%eax
     3c2:	eb 12                	jmp    3d6 <main+0x3d6>
     3c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	for (; i < MAX_LINE_NUMBER; i++)
     3c8:	83 c0 01             	add    $0x1,%eax
     3cb:	3d 00 01 00 00       	cmp    $0x100,%eax
     3d0:	0f 84 8c 02 00 00    	je     662 <main+0x662>
		if (text[i] == NULL)
     3d6:	8b b4 85 e8 fb ff ff 	mov    -0x418(%ebp,%eax,4),%esi
     3dd:	85 f6                	test   %esi,%esi
     3df:	75 e7                	jne    3c8 <main+0x3c8>
			return i - 1;
     3e1:	83 e8 01             	sub    $0x1,%eax
     3e4:	89 85 e4 fa ff ff    	mov    %eax,-0x51c(%ebp)
     3ea:	e9 11 fe ff ff       	jmp    200 <main+0x200>
     3ef:	90                   	nop
		else if (input[0] == 'd' && input[1] == 'e' && input[2] == 'l')
     3f0:	3c 64                	cmp    $0x64,%al
     3f2:	0f 85 98 fe ff ff    	jne    290 <main+0x290>
     3f8:	80 bd e9 fa ff ff 65 	cmpb   $0x65,-0x517(%ebp)
     3ff:	0f 85 8b fe ff ff    	jne    290 <main+0x290>
     405:	80 bd ea fa ff ff 6c 	cmpb   $0x6c,-0x516(%ebp)
     40c:	0f 85 7e fe ff ff    	jne    290 <main+0x290>
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     412:	0f b6 85 eb fa ff ff 	movzbl -0x515(%ebp),%eax
     419:	3c 2d                	cmp    $0x2d,%al
     41b:	0f 84 86 01 00 00    	je     5a7 <main+0x5a7>
			else if(input[3]=='\0')
     421:	84 c0                	test   %al,%al
     423:	0f 85 21 ff ff ff    	jne    34a <main+0x34a>
				com_del(text, line_number + 1);
     429:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
     42f:	51                   	push   %ecx
     430:	51                   	push   %ecx
     431:	83 c0 01             	add    $0x1,%eax
     434:	50                   	push   %eax
     435:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     43b:	50                   	push   %eax
     43c:	e8 1f 07 00 00       	call   b60 <com_del>
     441:	83 c4 10             	add    $0x10,%esp
	int i = 0;
     444:	31 c0                	xor    %eax,%eax
     446:	eb 16                	jmp    45e <main+0x45e>
     448:	90                   	nop
     449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
	for (; i < MAX_LINE_NUMBER; i++)
     450:	83 c0 01             	add    $0x1,%eax
     453:	3d 00 01 00 00       	cmp    $0x100,%eax
     458:	0f 84 04 02 00 00    	je     662 <main+0x662>
		if (text[i] == NULL)
     45e:	8b 94 85 e8 fb ff ff 	mov    -0x418(%ebp,%eax,4),%edx
     465:	85 d2                	test   %edx,%edx
     467:	75 e7                	jne    450 <main+0x450>
     469:	e9 73 ff ff ff       	jmp    3e1 <main+0x3e1>
     46e:	66 90                	xchg   %ax,%ax
			printf(1, "enable show current contents after text changed.\n");
     470:	83 ec 08             	sub    $0x8,%esp
			auto_show = 1;
     473:	c7 05 4c 1e 00 00 01 	movl   $0x1,0x1e4c
     47a:	00 00 00 
			printf(1, "enable show current contents after text changed.\n");
     47d:	68 a0 17 00 00       	push   $0x17a0
     482:	6a 01                	push   $0x1
     484:	e8 57 0e 00 00       	call   12e0 <printf>
     489:	83 c4 10             	add    $0x10,%esp
     48c:	e9 6f fd ff ff       	jmp    200 <main+0x200>
     491:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
			printf(1, "disable show current contents after text changed.\n");
     498:	83 ec 08             	sub    $0x8,%esp
			auto_show = 0;
     49b:	c7 05 4c 1e 00 00 00 	movl   $0x0,0x1e4c
     4a2:	00 00 00 
			printf(1, "disable show current contents after text changed.\n");
     4a5:	68 d4 17 00 00       	push   $0x17d4
     4aa:	6a 01                	push   $0x1
     4ac:	e8 2f 0e 00 00       	call   12e0 <printf>
     4b1:	83 c4 10             	add    $0x10,%esp
     4b4:	e9 47 fd ff ff       	jmp    200 <main+0x200>
     4b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
			com_save(text, argv[1]);
     4c0:	8b 85 dc fa ff ff    	mov    -0x524(%ebp),%eax
     4c6:	83 ec 08             	sub    $0x8,%esp
     4c9:	ff 70 04             	pushl  0x4(%eax)
     4cc:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     4d2:	50                   	push   %eax
     4d3:	e8 68 08 00 00       	call   d40 <com_save>
     4d8:	83 c4 10             	add    $0x10,%esp
     4db:	e9 20 fd ff ff       	jmp    200 <main+0x200>
			com_help(text);
     4e0:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     4e6:	83 ec 0c             	sub    $0xc,%esp
     4e9:	50                   	push   %eax
     4ea:	e8 91 07 00 00       	call   c80 <com_help>
     4ef:	83 c4 10             	add    $0x10,%esp
     4f2:	e9 09 fd ff ff       	jmp    200 <main+0x200>
     4f7:	89 f6                	mov    %esi,%esi
     4f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
		else if (input[0] == 'm' && input[1] == 'o' && input[2] == 'd')
     500:	80 bd ea fa ff ff 64 	cmpb   $0x64,-0x516(%ebp)
     507:	0f 85 83 fd ff ff    	jne    290 <main+0x290>
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     50d:	0f b6 85 eb fa ff ff 	movzbl -0x515(%ebp),%eax
     514:	3c 2d                	cmp    $0x2d,%al
     516:	74 5a                	je     572 <main+0x572>
			else if(input[3] == ' '||input[3] == '\0')
     518:	a8 df                	test   $0xdf,%al
     51a:	0f 85 2a fe ff ff    	jne    34a <main+0x34a>
				com_mod(text, line_number + 1, &input[pos]);
     520:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
     526:	51                   	push   %ecx
     527:	01 c6                	add    %eax,%esi
     529:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
     52f:	56                   	push   %esi
     530:	83 c0 01             	add    $0x1,%eax
     533:	50                   	push   %eax
     534:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     53a:	50                   	push   %eax
     53b:	e8 00 05 00 00       	call   a40 <com_mod>
     540:	83 c4 10             	add    $0x10,%esp
     543:	e9 b8 fc ff ff       	jmp    200 <main+0x200>
			com_exit(text, argv[1]);
     548:	50                   	push   %eax
     549:	50                   	push   %eax
     54a:	8b 85 dc fa ff ff    	mov    -0x524(%ebp),%eax
     550:	ff 70 04             	pushl  0x4(%eax)
     553:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     559:	50                   	push   %eax
     55a:	e8 d1 08 00 00       	call   e30 <com_exit>
		printf(1, "please input the command as [editor file_name]\n");
     55f:	51                   	push   %ecx
     560:	51                   	push   %ecx
     561:	68 70 17 00 00       	push   $0x1770
     566:	6a 01                	push   $0x1
     568:	e8 73 0d 00 00       	call   12e0 <printf>
		exit();
     56d:	e8 10 0c 00 00       	call   1182 <exit>
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     572:	83 ec 0c             	sub    $0xc,%esp
     575:	53                   	push   %ebx
     576:	e8 75 02 00 00       	call   7f0 <stringtonumber>
     57b:	83 c4 10             	add    $0x10,%esp
     57e:	85 c0                	test   %eax,%eax
     580:	79 41                	jns    5c3 <main+0x5c3>
     582:	0f b6 85 eb fa ff ff 	movzbl -0x515(%ebp),%eax
     589:	eb 8d                	jmp    518 <main+0x518>
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     58b:	83 ec 0c             	sub    $0xc,%esp
     58e:	53                   	push   %ebx
     58f:	e8 5c 02 00 00       	call   7f0 <stringtonumber>
     594:	83 c4 10             	add    $0x10,%esp
     597:	85 c0                	test   %eax,%eax
     599:	79 7f                	jns    61a <main+0x61a>
     59b:	0f b6 85 eb fa ff ff 	movzbl -0x515(%ebp),%eax
     5a2:	e9 f2 fd ff ff       	jmp    399 <main+0x399>
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     5a7:	83 ec 0c             	sub    $0xc,%esp
     5aa:	53                   	push   %ebx
     5ab:	e8 40 02 00 00       	call   7f0 <stringtonumber>
     5b0:	83 c4 10             	add    $0x10,%esp
     5b3:	85 c0                	test   %eax,%eax
     5b5:	79 26                	jns    5dd <main+0x5dd>
     5b7:	0f b6 85 eb fa ff ff 	movzbl -0x515(%ebp),%eax
     5be:	e9 5e fe ff ff       	jmp    421 <main+0x421>
				com_mod(text, atoi(&input[4]), &input[pos]);
     5c3:	83 ec 0c             	sub    $0xc,%esp
     5c6:	53                   	push   %ebx
     5c7:	e8 44 0b 00 00       	call   1110 <atoi>
     5cc:	8d 8d e8 fa ff ff    	lea    -0x518(%ebp),%ecx
     5d2:	83 c4 0c             	add    $0xc,%esp
     5d5:	01 ce                	add    %ecx,%esi
     5d7:	56                   	push   %esi
     5d8:	e9 56 ff ff ff       	jmp    533 <main+0x533>
				com_del(text, atoi(&input[4]));
     5dd:	83 ec 0c             	sub    $0xc,%esp
     5e0:	53                   	push   %ebx
     5e1:	e8 2a 0b 00 00       	call   1110 <atoi>
     5e6:	5f                   	pop    %edi
     5e7:	5a                   	pop    %edx
     5e8:	50                   	push   %eax
     5e9:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     5ef:	50                   	push   %eax
     5f0:	e8 6b 05 00 00       	call   b60 <com_del>
     5f5:	83 c4 10             	add    $0x10,%esp
	int i = 0;
     5f8:	31 c0                	xor    %eax,%eax
     5fa:	eb 0e                	jmp    60a <main+0x60a>
     5fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	for (; i < MAX_LINE_NUMBER; i++)
     600:	83 c0 01             	add    $0x1,%eax
     603:	3d 00 01 00 00       	cmp    $0x100,%eax
     608:	74 58                	je     662 <main+0x662>
		if (text[i] == NULL)
     60a:	8b b4 85 e8 fb ff ff 	mov    -0x418(%ebp,%eax,4),%esi
     611:	85 f6                	test   %esi,%esi
     613:	75 eb                	jne    600 <main+0x600>
     615:	e9 c7 fd ff ff       	jmp    3e1 <main+0x3e1>
				com_ins(text, stringtonumber(&input[4]), &input[pos]);
     61a:	83 ec 0c             	sub    $0xc,%esp
     61d:	53                   	push   %ebx
     61e:	e8 cd 01 00 00       	call   7f0 <stringtonumber>
     623:	8d 8d e8 fa ff ff    	lea    -0x518(%ebp),%ecx
     629:	83 c4 0c             	add    $0xc,%esp
     62c:	01 ce                	add    %ecx,%esi
     62e:	56                   	push   %esi
     62f:	50                   	push   %eax
     630:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     636:	50                   	push   %eax
     637:	e8 34 02 00 00       	call   870 <com_ins>
     63c:	83 c4 10             	add    $0x10,%esp
	int i = 0;
     63f:	31 c0                	xor    %eax,%eax
     641:	eb 0f                	jmp    652 <main+0x652>
     643:	90                   	nop
     644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	for (; i < MAX_LINE_NUMBER; i++)
     648:	83 c0 01             	add    $0x1,%eax
     64b:	3d 00 01 00 00       	cmp    $0x100,%eax
     650:	74 10                	je     662 <main+0x662>
		if (text[i] == NULL)
     652:	8b 94 85 e8 fb ff ff 	mov    -0x418(%ebp,%eax,4),%edx
     659:	85 d2                	test   %edx,%edx
     65b:	75 eb                	jne    648 <main+0x648>
     65d:	e9 7f fd ff ff       	jmp    3e1 <main+0x3e1>
	return i - 1;
     662:	c7 85 e4 fa ff ff ff 	movl   $0xff,-0x51c(%ebp)
     669:	00 00 00 
     66c:	e9 8f fb ff ff       	jmp    200 <main+0x200>
     671:	66 90                	xchg   %ax,%ax
     673:	66 90                	xchg   %ax,%ax
     675:	66 90                	xchg   %ax,%ax
     677:	66 90                	xchg   %ax,%ax
     679:	66 90                	xchg   %ax,%ax
     67b:	66 90                	xchg   %ax,%ax
     67d:	66 90                	xchg   %ax,%ax
     67f:	90                   	nop

00000680 <strcat_n.part.0>:
char* strcat_n(char* dest, char* src, int len)
     680:	55                   	push   %ebp
     681:	89 e5                	mov    %esp,%ebp
     683:	57                   	push   %edi
     684:	56                   	push   %esi
     685:	53                   	push   %ebx
     686:	89 ce                	mov    %ecx,%esi
     688:	89 c7                	mov    %eax,%edi
     68a:	83 ec 28             	sub    $0x28,%esp
     68d:	89 55 e4             	mov    %edx,-0x1c(%ebp)
	int pos = strlen(dest);
     690:	50                   	push   %eax
     691:	e8 1a 09 00 00       	call   fb0 <strlen>
	if (len + pos >= MAX_LINE_LENGTH)
     696:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
     699:	83 c4 10             	add    $0x10,%esp
     69c:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
     6a2:	7f 29                	jg     6cd <strcat_n.part.0+0x4d>
	for (; i < len; i++)
     6a4:	85 f6                	test   %esi,%esi
     6a6:	7e 21                	jle    6c9 <strcat_n.part.0+0x49>
     6a8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
	int i = 0;
     6ab:	31 db                	xor    %ebx,%ebx
     6ad:	01 f8                	add    %edi,%eax
     6af:	89 4d e0             	mov    %ecx,-0x20(%ebp)
     6b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		dest[i+pos] = src[i];
     6b8:	0f b6 0c 1a          	movzbl (%edx,%ebx,1),%ecx
     6bc:	88 0c 18             	mov    %cl,(%eax,%ebx,1)
	for (; i < len; i++)
     6bf:	83 c3 01             	add    $0x1,%ebx
     6c2:	39 de                	cmp    %ebx,%esi
     6c4:	75 f2                	jne    6b8 <strcat_n.part.0+0x38>
     6c6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
	dest[len+pos] = '\0';
     6c9:	c6 04 0f 00          	movb   $0x0,(%edi,%ecx,1)
}
     6cd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6d0:	5b                   	pop    %ebx
     6d1:	5e                   	pop    %esi
     6d2:	5f                   	pop    %edi
     6d3:	5d                   	pop    %ebp
     6d4:	c3                   	ret    
     6d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     6d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006e0 <strcat_n>:
{
     6e0:	55                   	push   %ebp
     6e1:	89 e5                	mov    %esp,%ebp
     6e3:	53                   	push   %ebx
     6e4:	83 ec 04             	sub    $0x4,%esp
     6e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     6ea:	8b 5d 08             	mov    0x8(%ebp),%ebx
	if (len <= 0)
     6ed:	85 c9                	test   %ecx,%ecx
     6ef:	7e 0a                	jle    6fb <strcat_n+0x1b>
     6f1:	8b 55 0c             	mov    0xc(%ebp),%edx
     6f4:	89 d8                	mov    %ebx,%eax
     6f6:	e8 85 ff ff ff       	call   680 <strcat_n.part.0>
}
     6fb:	83 c4 04             	add    $0x4,%esp
     6fe:	89 d8                	mov    %ebx,%eax
     700:	5b                   	pop    %ebx
     701:	5d                   	pop    %ebp
     702:	c3                   	ret    
     703:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     709:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000710 <show_text>:
{
     710:	55                   	push   %ebp
     711:	89 e5                	mov    %esp,%ebp
     713:	57                   	push   %edi
     714:	56                   	push   %esi
     715:	53                   	push   %ebx
     716:	83 ec 14             	sub    $0x14,%esp
     719:	8b 7d 08             	mov    0x8(%ebp),%edi
	printf(1, "****************************************\n");
     71c:	68 38 16 00 00       	push   $0x1638
     721:	6a 01                	push   $0x1
     723:	e8 b8 0b 00 00       	call   12e0 <printf>
	printf(1, "the contents of the file are:\n");
     728:	58                   	pop    %eax
     729:	5a                   	pop    %edx
     72a:	68 64 16 00 00       	push   $0x1664
     72f:	6a 01                	push   $0x1
     731:	e8 aa 0b 00 00       	call   12e0 <printf>
	for (; text[j] != NULL; j++)
     736:	8b 07                	mov    (%edi),%eax
     738:	83 c4 10             	add    $0x10,%esp
     73b:	85 c0                	test   %eax,%eax
     73d:	74 5b                	je     79a <show_text+0x8a>
	int j = 0;
     73f:	31 db                	xor    %ebx,%ebx
		printf(1, "%d%d%d:%s\n", (j+1)/100, ((j+1)%100)/10, (j+1)%10, text[j]);
     741:	be cd cc cc cc       	mov    $0xcccccccd,%esi
     746:	8d 76 00             	lea    0x0(%esi),%esi
     749:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     750:	83 ec 08             	sub    $0x8,%esp
     753:	83 c3 01             	add    $0x1,%ebx
     756:	50                   	push   %eax
     757:	89 d8                	mov    %ebx,%eax
     759:	89 d9                	mov    %ebx,%ecx
     75b:	f7 e6                	mul    %esi
     75d:	c1 ea 03             	shr    $0x3,%edx
     760:	8d 04 92             	lea    (%edx,%edx,4),%eax
     763:	01 c0                	add    %eax,%eax
     765:	29 c1                	sub    %eax,%ecx
     767:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
     76c:	f7 e3                	mul    %ebx
     76e:	51                   	push   %ecx
     76f:	89 d1                	mov    %edx,%ecx
     771:	89 da                	mov    %ebx,%edx
     773:	c1 e9 05             	shr    $0x5,%ecx
     776:	6b c1 64             	imul   $0x64,%ecx,%eax
     779:	29 c2                	sub    %eax,%edx
     77b:	89 d0                	mov    %edx,%eax
     77d:	f7 e6                	mul    %esi
     77f:	c1 ea 03             	shr    $0x3,%edx
     782:	52                   	push   %edx
     783:	51                   	push   %ecx
     784:	68 08 18 00 00       	push   $0x1808
     789:	6a 01                	push   $0x1
     78b:	e8 50 0b 00 00       	call   12e0 <printf>
	for (; text[j] != NULL; j++)
     790:	8b 04 9f             	mov    (%edi,%ebx,4),%eax
     793:	83 c4 20             	add    $0x20,%esp
     796:	85 c0                	test   %eax,%eax
     798:	75 b6                	jne    750 <show_text+0x40>
}
     79a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     79d:	5b                   	pop    %ebx
     79e:	5e                   	pop    %esi
     79f:	5f                   	pop    %edi
     7a0:	5d                   	pop    %ebp
     7a1:	c3                   	ret    
     7a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     7a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000007b0 <get_line_number>:
{
     7b0:	55                   	push   %ebp
	int i = 0;
     7b1:	31 c0                	xor    %eax,%eax
{
     7b3:	89 e5                	mov    %esp,%ebp
     7b5:	8b 55 08             	mov    0x8(%ebp),%edx
     7b8:	eb 10                	jmp    7ca <get_line_number+0x1a>
     7ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	for (; i < MAX_LINE_NUMBER; i++)
     7c0:	83 c0 01             	add    $0x1,%eax
     7c3:	3d 00 01 00 00       	cmp    $0x100,%eax
     7c8:	74 16                	je     7e0 <get_line_number+0x30>
		if (text[i] == NULL)
     7ca:	8b 0c 82             	mov    (%edx,%eax,4),%ecx
     7cd:	85 c9                	test   %ecx,%ecx
     7cf:	75 ef                	jne    7c0 <get_line_number+0x10>
			return i - 1;
     7d1:	83 e8 01             	sub    $0x1,%eax
}
     7d4:	5d                   	pop    %ebp
     7d5:	c3                   	ret    
     7d6:	8d 76 00             	lea    0x0(%esi),%esi
     7d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	return i - 1;
     7e0:	b8 ff 00 00 00       	mov    $0xff,%eax
}
     7e5:	5d                   	pop    %ebp
     7e6:	c3                   	ret    
     7e7:	89 f6                	mov    %esi,%esi
     7e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000007f0 <stringtonumber>:

int stringtonumber(char* src)
{
     7f0:	55                   	push   %ebp
     7f1:	89 e5                	mov    %esp,%ebp
     7f3:	57                   	push   %edi
     7f4:	56                   	push   %esi
     7f5:	53                   	push   %ebx
     7f6:	83 ec 18             	sub    $0x18,%esp
     7f9:	8b 5d 08             	mov    0x8(%ebp),%ebx
	int number = 0; 
	int i=0;
	int pos = strlen(src);
     7fc:	53                   	push   %ebx
     7fd:	e8 ae 07 00 00       	call   fb0 <strlen>
	for(;i<pos;i++)
     802:	83 c4 10             	add    $0x10,%esp
     805:	85 c0                	test   %eax,%eax
     807:	7e 57                	jle    860 <stringtonumber+0x70>
	{
		if(src[i]==' ') break;
     809:	0f be 13             	movsbl (%ebx),%edx
     80c:	80 fa 20             	cmp    $0x20,%dl
     80f:	74 4f                	je     860 <stringtonumber+0x70>
		if(src[i]>57||src[i]<48) return -1;
     811:	8d 4a d0             	lea    -0x30(%edx),%ecx
     814:	80 f9 09             	cmp    $0x9,%cl
     817:	77 37                	ja     850 <stringtonumber+0x60>
     819:	8d 3c 03             	lea    (%ebx,%eax,1),%edi
     81c:	8d 4b 01             	lea    0x1(%ebx),%ecx
	int number = 0; 
     81f:	31 c0                	xor    %eax,%eax
     821:	eb 1a                	jmp    83d <stringtonumber+0x4d>
     823:	90                   	nop
     824:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		if(src[i]==' ') break;
     828:	0f be 11             	movsbl (%ecx),%edx
     82b:	80 fa 20             	cmp    $0x20,%dl
     82e:	74 18                	je     848 <stringtonumber+0x58>
		if(src[i]>57||src[i]<48) return -1;
     830:	8d 72 d0             	lea    -0x30(%edx),%esi
     833:	83 c1 01             	add    $0x1,%ecx
     836:	89 f3                	mov    %esi,%ebx
     838:	80 fb 09             	cmp    $0x9,%bl
     83b:	77 13                	ja     850 <stringtonumber+0x60>
		number=10*number+(src[i]-48);
     83d:	8d 04 80             	lea    (%eax,%eax,4),%eax
	for(;i<pos;i++)
     840:	39 f9                	cmp    %edi,%ecx
		number=10*number+(src[i]-48);
     842:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
	for(;i<pos;i++)
     846:	75 e0                	jne    828 <stringtonumber+0x38>
	}
	return number;
}
     848:	8d 65 f4             	lea    -0xc(%ebp),%esp
     84b:	5b                   	pop    %ebx
     84c:	5e                   	pop    %esi
     84d:	5f                   	pop    %edi
     84e:	5d                   	pop    %ebp
     84f:	c3                   	ret    
     850:	8d 65 f4             	lea    -0xc(%ebp),%esp
		if(src[i]>57||src[i]<48) return -1;
     853:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
     858:	5b                   	pop    %ebx
     859:	5e                   	pop    %esi
     85a:	5f                   	pop    %edi
     85b:	5d                   	pop    %ebp
     85c:	c3                   	ret    
     85d:	8d 76 00             	lea    0x0(%esi),%esi
	int number = 0; 
     860:	31 c0                	xor    %eax,%eax
     862:	eb e4                	jmp    848 <stringtonumber+0x58>
     864:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     86a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000870 <com_ins>:

//插入命令，n为用户输入的行号，从1开始
//extra:输入命令时接着的信息，代表待插入的文本
void com_ins(char *text[], int n, char *extra)
{
     870:	55                   	push   %ebp
     871:	89 e5                	mov    %esp,%ebp
     873:	57                   	push   %edi
     874:	56                   	push   %esi
     875:	53                   	push   %ebx
     876:	81 ec 0c 01 00 00    	sub    $0x10c,%esp
	if (n < 0 || n > get_line_number(text) + 1)
     87c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
     87f:	8b 75 08             	mov    0x8(%ebp),%esi
	if (n < 0 || n > get_line_number(text) + 1)
     882:	85 c9                	test   %ecx,%ecx
     884:	78 20                	js     8a6 <com_ins+0x36>
	int i = 0;
     886:	31 c0                	xor    %eax,%eax
     888:	eb 10                	jmp    89a <com_ins+0x2a>
     88a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	for (; i < MAX_LINE_NUMBER; i++)
     890:	83 c0 01             	add    $0x1,%eax
     893:	3d 00 01 00 00       	cmp    $0x100,%eax
     898:	74 07                	je     8a1 <com_ins+0x31>
		if (text[i] == NULL)
     89a:	8b 14 86             	mov    (%esi,%eax,4),%edx
     89d:	85 d2                	test   %edx,%edx
     89f:	75 ef                	jne    890 <com_ins+0x20>
	if (n < 0 || n > get_line_number(text) + 1)
     8a1:	39 45 0c             	cmp    %eax,0xc(%ebp)
     8a4:	7e 1a                	jle    8c0 <com_ins+0x50>
	{
		printf(1, "invalid line number\n");
     8a6:	83 ec 08             	sub    $0x8,%esp
     8a9:	68 13 18 00 00       	push   $0x1813
     8ae:	6a 01                	push   $0x1
     8b0:	e8 2b 0a 00 00       	call   12e0 <printf>
		return;
     8b5:	83 c4 10             	add    $0x10,%esp
	memset(text[n], 0, MAX_LINE_LENGTH);
	strcpy(text[n], input);
	changed = 1;
	if (auto_show == 1)
		show_text(text);
}
     8b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8bb:	5b                   	pop    %ebx
     8bc:	5e                   	pop    %esi
     8bd:	5f                   	pop    %edi
     8be:	5d                   	pop    %ebp
     8bf:	c3                   	ret    
	char input[MAX_LINE_LENGTH] = {};
     8c0:	8d bd e8 fe ff ff    	lea    -0x118(%ebp),%edi
     8c6:	31 c0                	xor    %eax,%eax
     8c8:	b9 40 00 00 00       	mov    $0x40,%ecx
     8cd:	f3 ab                	rep stos %eax,%es:(%edi)
	if (*extra == '\0')
     8cf:	8b 45 10             	mov    0x10(%ebp),%eax
     8d2:	80 38 00             	cmpb   $0x0,(%eax)
     8d5:	0f 84 85 00 00 00    	je     960 <com_ins+0xf0>
		strcpy(input, extra);
     8db:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     8e1:	83 ec 08             	sub    $0x8,%esp
     8e4:	ff 75 10             	pushl  0x10(%ebp)
     8e7:	50                   	push   %eax
     8e8:	e8 43 06 00 00       	call   f30 <strcpy>
     8ed:	83 c4 10             	add    $0x10,%esp
	for (; i > n; i--)
     8f0:	81 7d 0c fe 00 00 00 	cmpl   $0xfe,0xc(%ebp)
     8f7:	0f 8f a3 00 00 00    	jg     9a0 <com_ins+0x130>
     8fd:	8b 45 0c             	mov    0xc(%ebp),%eax
     900:	8d 9e fc 03 00 00    	lea    0x3fc(%esi),%ebx
     906:	8d 3c 86             	lea    (%esi,%eax,4),%edi
     909:	eb 2b                	jmp    936 <com_ins+0xc6>
     90b:	90                   	nop
     90c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
			memset(text[i], 0, MAX_LINE_LENGTH);
     910:	83 ec 04             	sub    $0x4,%esp
     913:	68 00 01 00 00       	push   $0x100
     918:	6a 00                	push   $0x0
     91a:	50                   	push   %eax
     91b:	e8 c0 06 00 00       	call   fe0 <memset>
			strcpy(text[i], text[i-1]);
     920:	58                   	pop    %eax
     921:	5a                   	pop    %edx
     922:	ff 73 fc             	pushl  -0x4(%ebx)
     925:	ff 33                	pushl  (%ebx)
     927:	e8 04 06 00 00       	call   f30 <strcpy>
     92c:	83 c4 10             	add    $0x10,%esp
     92f:	83 eb 04             	sub    $0x4,%ebx
	for (; i > n; i--)
     932:	39 df                	cmp    %ebx,%edi
     934:	74 6a                	je     9a0 <com_ins+0x130>
		if (text[i-1] == NULL)
     936:	8b 4b fc             	mov    -0x4(%ebx),%ecx
     939:	85 c9                	test   %ecx,%ecx
     93b:	74 f2                	je     92f <com_ins+0xbf>
		else if (text[i] == NULL && text[i-1] != NULL)
     93d:	8b 03                	mov    (%ebx),%eax
     93f:	85 c0                	test   %eax,%eax
     941:	75 cd                	jne    910 <com_ins+0xa0>
			text[i] = malloc(MAX_LINE_LENGTH);
     943:	83 ec 0c             	sub    $0xc,%esp
     946:	68 00 01 00 00       	push   $0x100
     94b:	e8 f0 0b 00 00       	call   1540 <malloc>
			memset(text[i], 0, MAX_LINE_LENGTH);
     950:	83 c4 0c             	add    $0xc,%esp
			text[i] = malloc(MAX_LINE_LENGTH);
     953:	89 03                	mov    %eax,(%ebx)
     955:	eb bc                	jmp    913 <com_ins+0xa3>
     957:	89 f6                	mov    %esi,%esi
     959:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
		printf(1, "please input content:\n");
     960:	83 ec 08             	sub    $0x8,%esp
     963:	68 28 18 00 00       	push   $0x1828
     968:	6a 01                	push   $0x1
     96a:	e8 71 09 00 00       	call   12e0 <printf>
		gets(input, MAX_LINE_LENGTH);
     96f:	5b                   	pop    %ebx
     970:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     976:	5f                   	pop    %edi
     977:	68 00 01 00 00       	push   $0x100
     97c:	50                   	push   %eax
     97d:	e8 be 06 00 00       	call   1040 <gets>
		input[strlen(input)-1] = '\0';
     982:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     988:	89 04 24             	mov    %eax,(%esp)
     98b:	e8 20 06 00 00       	call   fb0 <strlen>
     990:	83 c4 10             	add    $0x10,%esp
     993:	c6 84 05 e7 fe ff ff 	movb   $0x0,-0x119(%ebp,%eax,1)
     99a:	00 
     99b:	e9 50 ff ff ff       	jmp    8f0 <com_ins+0x80>
	if (text[n] == NULL)
     9a0:	8b 45 0c             	mov    0xc(%ebp),%eax
     9a3:	8d 1c 85 00 00 00 00 	lea    0x0(,%eax,4),%ebx
     9aa:	8d 3c 1e             	lea    (%esi,%ebx,1),%edi
     9ad:	8b 07                	mov    (%edi),%eax
     9af:	85 c0                	test   %eax,%eax
     9b1:	74 4d                	je     a00 <com_ins+0x190>
	memset(text[n], 0, MAX_LINE_LENGTH);
     9b3:	83 ec 04             	sub    $0x4,%esp
     9b6:	68 00 01 00 00       	push   $0x100
     9bb:	6a 00                	push   $0x0
     9bd:	50                   	push   %eax
     9be:	e8 1d 06 00 00       	call   fe0 <memset>
	strcpy(text[n], input);
     9c3:	58                   	pop    %eax
     9c4:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     9ca:	5a                   	pop    %edx
     9cb:	50                   	push   %eax
     9cc:	ff 37                	pushl  (%edi)
			strcpy(text[n-1], input);
     9ce:	e8 5d 05 00 00       	call   f30 <strcpy>
			if (auto_show == 1)
     9d3:	83 c4 10             	add    $0x10,%esp
     9d6:	83 3d 4c 1e 00 00 01 	cmpl   $0x1,0x1e4c
			changed = 1;
     9dd:	c7 05 50 1e 00 00 01 	movl   $0x1,0x1e50
     9e4:	00 00 00 
			if (auto_show == 1)
     9e7:	0f 85 cb fe ff ff    	jne    8b8 <com_ins+0x48>
				show_text(text);
     9ed:	83 ec 0c             	sub    $0xc,%esp
     9f0:	56                   	push   %esi
     9f1:	e8 1a fd ff ff       	call   710 <show_text>
     9f6:	83 c4 10             	add    $0x10,%esp
     9f9:	e9 ba fe ff ff       	jmp    8b8 <com_ins+0x48>
     9fe:	66 90                	xchg   %ax,%ax
		text[n] = malloc(MAX_LINE_LENGTH);
     a00:	83 ec 0c             	sub    $0xc,%esp
		if (text[n-1][0] == '\0')
     a03:	8d 5c 1e fc          	lea    -0x4(%esi,%ebx,1),%ebx
		text[n] = malloc(MAX_LINE_LENGTH);
     a07:	68 00 01 00 00       	push   $0x100
     a0c:	e8 2f 0b 00 00       	call   1540 <malloc>
     a11:	89 07                	mov    %eax,(%edi)
		if (text[n-1][0] == '\0')
     a13:	8b 0b                	mov    (%ebx),%ecx
     a15:	83 c4 10             	add    $0x10,%esp
     a18:	80 39 00             	cmpb   $0x0,(%ecx)
     a1b:	75 96                	jne    9b3 <com_ins+0x143>
			memset(text[n], 0, MAX_LINE_LENGTH);
     a1d:	83 ec 04             	sub    $0x4,%esp
     a20:	68 00 01 00 00       	push   $0x100
     a25:	6a 00                	push   $0x0
     a27:	50                   	push   %eax
     a28:	e8 b3 05 00 00       	call   fe0 <memset>
			strcpy(text[n-1], input);
     a2d:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     a33:	59                   	pop    %ecx
     a34:	5f                   	pop    %edi
     a35:	50                   	push   %eax
     a36:	ff 33                	pushl  (%ebx)
     a38:	eb 94                	jmp    9ce <com_ins+0x15e>
     a3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000a40 <com_mod>:

//修改命令，n为用户输入的行号，从1开始
//extra:输入命令时接着的信息，代表待修改成的文本
void com_mod(char *text[], int n, char *extra)
{
     a40:	55                   	push   %ebp
     a41:	89 e5                	mov    %esp,%ebp
     a43:	57                   	push   %edi
     a44:	56                   	push   %esi
     a45:	53                   	push   %ebx
     a46:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
     a4c:	8b 55 0c             	mov    0xc(%ebp),%edx
     a4f:	8b 5d 08             	mov    0x8(%ebp),%ebx
	if (n <= 0 || n > get_line_number(text) + 1)
     a52:	85 d2                	test   %edx,%edx
     a54:	0f 8e be 00 00 00    	jle    b18 <com_mod+0xd8>
	int i = 0;
     a5a:	31 c0                	xor    %eax,%eax
     a5c:	eb 0c                	jmp    a6a <com_mod+0x2a>
     a5e:	66 90                	xchg   %ax,%ax
	for (; i < MAX_LINE_NUMBER; i++)
     a60:	83 c0 01             	add    $0x1,%eax
     a63:	3d 00 01 00 00       	cmp    $0x100,%eax
     a68:	74 07                	je     a71 <com_mod+0x31>
		if (text[i] == NULL)
     a6a:	8b 0c 83             	mov    (%ebx,%eax,4),%ecx
     a6d:	85 c9                	test   %ecx,%ecx
     a6f:	75 ef                	jne    a60 <com_mod+0x20>
	if (n <= 0 || n > get_line_number(text) + 1)
     a71:	39 c2                	cmp    %eax,%edx
     a73:	0f 8f 9f 00 00 00    	jg     b18 <com_mod+0xd8>
	{
		printf(1, "invalid line number\n");
		return;
	}
	char input[MAX_LINE_LENGTH] = {};
     a79:	8d b5 e8 fe ff ff    	lea    -0x118(%ebp),%esi
     a7f:	31 c0                	xor    %eax,%eax
     a81:	b9 40 00 00 00       	mov    $0x40,%ecx
     a86:	89 f7                	mov    %esi,%edi
     a88:	f3 ab                	rep stos %eax,%es:(%edi)
	if (*extra == '\0')
     a8a:	8b 45 10             	mov    0x10(%ebp),%eax
     a8d:	80 38 00             	cmpb   $0x0,(%eax)
     a90:	0f 85 a2 00 00 00    	jne    b38 <com_mod+0xf8>
	{
		printf(1, "please input content:\n");
     a96:	83 ec 08             	sub    $0x8,%esp
     a99:	89 95 e4 fe ff ff    	mov    %edx,-0x11c(%ebp)
     a9f:	68 28 18 00 00       	push   $0x1828
     aa4:	6a 01                	push   $0x1
     aa6:	e8 35 08 00 00       	call   12e0 <printf>
		gets(input, MAX_LINE_LENGTH);
     aab:	59                   	pop    %ecx
     aac:	5f                   	pop    %edi
     aad:	68 00 01 00 00       	push   $0x100
     ab2:	56                   	push   %esi
     ab3:	e8 88 05 00 00       	call   1040 <gets>
		input[strlen(input)-1] = '\0';
     ab8:	89 34 24             	mov    %esi,(%esp)
     abb:	e8 f0 04 00 00       	call   fb0 <strlen>
     ac0:	8b 95 e4 fe ff ff    	mov    -0x11c(%ebp),%edx
     ac6:	c6 84 05 e7 fe ff ff 	movb   $0x0,-0x119(%ebp,%eax,1)
     acd:	00 
     ace:	83 c4 10             	add    $0x10,%esp
	}
	else
		strcpy(input, extra);
	memset(text[n-1], 0, MAX_LINE_LENGTH);
     ad1:	8d 7c 93 fc          	lea    -0x4(%ebx,%edx,4),%edi
     ad5:	83 ec 04             	sub    $0x4,%esp
     ad8:	68 00 01 00 00       	push   $0x100
     add:	6a 00                	push   $0x0
     adf:	ff 37                	pushl  (%edi)
     ae1:	e8 fa 04 00 00       	call   fe0 <memset>
	strcpy(text[n-1], input);
     ae6:	58                   	pop    %eax
     ae7:	5a                   	pop    %edx
     ae8:	56                   	push   %esi
     ae9:	ff 37                	pushl  (%edi)
     aeb:	e8 40 04 00 00       	call   f30 <strcpy>
	changed = 1;
	if (auto_show == 1)
     af0:	83 c4 10             	add    $0x10,%esp
     af3:	83 3d 4c 1e 00 00 01 	cmpl   $0x1,0x1e4c
	changed = 1;
     afa:	c7 05 50 1e 00 00 01 	movl   $0x1,0x1e50
     b01:	00 00 00 
	if (auto_show == 1)
     b04:	75 24                	jne    b2a <com_mod+0xea>
		show_text(text);
     b06:	83 ec 0c             	sub    $0xc,%esp
     b09:	53                   	push   %ebx
     b0a:	e8 01 fc ff ff       	call   710 <show_text>
     b0f:	83 c4 10             	add    $0x10,%esp
     b12:	eb 16                	jmp    b2a <com_mod+0xea>
     b14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		printf(1, "invalid line number\n");
     b18:	83 ec 08             	sub    $0x8,%esp
     b1b:	68 13 18 00 00       	push   $0x1813
     b20:	6a 01                	push   $0x1
     b22:	e8 b9 07 00 00       	call   12e0 <printf>
     b27:	83 c4 10             	add    $0x10,%esp
}
     b2a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b2d:	5b                   	pop    %ebx
     b2e:	5e                   	pop    %esi
     b2f:	5f                   	pop    %edi
     b30:	5d                   	pop    %ebp
     b31:	c3                   	ret    
     b32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		strcpy(input, extra);
     b38:	83 ec 08             	sub    $0x8,%esp
     b3b:	ff 75 10             	pushl  0x10(%ebp)
     b3e:	89 95 e4 fe ff ff    	mov    %edx,-0x11c(%ebp)
     b44:	56                   	push   %esi
     b45:	e8 e6 03 00 00       	call   f30 <strcpy>
     b4a:	83 c4 10             	add    $0x10,%esp
     b4d:	8b 95 e4 fe ff ff    	mov    -0x11c(%ebp),%edx
     b53:	e9 79 ff ff ff       	jmp    ad1 <com_mod+0x91>
     b58:	90                   	nop
     b59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000b60 <com_del>:

//删除命令，n为用户输入的行号，从1开始
void com_del(char *text[], int n)
{
     b60:	55                   	push   %ebp
     b61:	89 e5                	mov    %esp,%ebp
     b63:	57                   	push   %edi
     b64:	56                   	push   %esi
     b65:	53                   	push   %ebx
     b66:	83 ec 1c             	sub    $0x1c,%esp
     b69:	8b 7d 0c             	mov    0xc(%ebp),%edi
     b6c:	8b 5d 08             	mov    0x8(%ebp),%ebx
	if (n <= 0 || n > get_line_number(text) + 1)
     b6f:	85 ff                	test   %edi,%edi
     b71:	7e 22                	jle    b95 <com_del+0x35>
	int i = 0;
     b73:	31 c0                	xor    %eax,%eax
     b75:	eb 13                	jmp    b8a <com_del+0x2a>
     b77:	89 f6                	mov    %esi,%esi
     b79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (; i < MAX_LINE_NUMBER; i++)
     b80:	83 c0 01             	add    $0x1,%eax
     b83:	3d 00 01 00 00       	cmp    $0x100,%eax
     b88:	74 07                	je     b91 <com_del+0x31>
		if (text[i] == NULL)
     b8a:	8b 14 83             	mov    (%ebx,%eax,4),%edx
     b8d:	85 d2                	test   %edx,%edx
     b8f:	75 ef                	jne    b80 <com_del+0x20>
	if (n <= 0 || n > get_line_number(text) + 1)
     b91:	39 c7                	cmp    %eax,%edi
     b93:	7e 1b                	jle    bb0 <com_del+0x50>
	{
		printf(1, "invalid line number\n");
     b95:	c7 45 0c 13 18 00 00 	movl   $0x1813,0xc(%ebp)
     b9c:	c7 45 08 01 00 00 00 	movl   $0x1,0x8(%ebp)
		text[i] = 0;
	}
	changed = 1;
	if (auto_show == 1)
		show_text(text);
}
     ba3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ba6:	5b                   	pop    %ebx
     ba7:	5e                   	pop    %esi
     ba8:	5f                   	pop    %edi
     ba9:	5d                   	pop    %ebp
		printf(1, "invalid line number\n");
     baa:	e9 31 07 00 00       	jmp    12e0 <printf>
     baf:	90                   	nop
	memset(text[n-1], 0, MAX_LINE_LENGTH);
     bb0:	8d 87 ff ff ff 3f    	lea    0x3fffffff(%edi),%eax
     bb6:	83 ec 04             	sub    $0x4,%esp
	int i = n - 1;
     bb9:	8d 77 ff             	lea    -0x1(%edi),%esi
	memset(text[n-1], 0, MAX_LINE_LENGTH);
     bbc:	68 00 01 00 00       	push   $0x100
     bc1:	6a 00                	push   $0x0
     bc3:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
     bca:	ff 34 83             	pushl  (%ebx,%eax,4)
     bcd:	89 55 e4             	mov    %edx,-0x1c(%ebp)
     bd0:	e8 0b 04 00 00       	call   fe0 <memset>
	for (; text[i+1] != NULL; i++)
     bd5:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     bd8:	83 c4 10             	add    $0x10,%esp
     bdb:	8d 4c 13 04          	lea    0x4(%ebx,%edx,1),%ecx
     bdf:	8b 01                	mov    (%ecx),%eax
     be1:	85 c0                	test   %eax,%eax
     be3:	0f 84 84 00 00 00    	je     c6d <com_del+0x10d>
     be9:	c1 e7 02             	shl    $0x2,%edi
     bec:	8d 54 13 08          	lea    0x8(%ebx,%edx,1),%edx
     bf0:	29 f9                	sub    %edi,%ecx
     bf2:	89 cf                	mov    %ecx,%edi
     bf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		strcpy(text[i], text[i+1]);
     bf8:	83 ec 08             	sub    $0x8,%esp
     bfb:	89 55 e4             	mov    %edx,-0x1c(%ebp)
     bfe:	50                   	push   %eax
     bff:	ff 72 f8             	pushl  -0x8(%edx)
     c02:	e8 29 03 00 00       	call   f30 <strcpy>
		memset(text[i+1], 0, MAX_LINE_LENGTH);
     c07:	83 c4 0c             	add    $0xc,%esp
     c0a:	68 00 01 00 00       	push   $0x100
     c0f:	6a 00                	push   $0x0
     c11:	ff 74 b7 04          	pushl  0x4(%edi,%esi,4)
	for (; text[i+1] != NULL; i++)
     c15:	83 c6 01             	add    $0x1,%esi
		memset(text[i+1], 0, MAX_LINE_LENGTH);
     c18:	e8 c3 03 00 00       	call   fe0 <memset>
     c1d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
	for (; text[i+1] != NULL; i++)
     c20:	83 c4 10             	add    $0x10,%esp
     c23:	83 c2 04             	add    $0x4,%edx
     c26:	8b 42 fc             	mov    -0x4(%edx),%eax
     c29:	85 c0                	test   %eax,%eax
     c2b:	75 cb                	jne    bf8 <com_del+0x98>
		free(text[i]);
     c2d:	8d 34 b3             	lea    (%ebx,%esi,4),%esi
     c30:	83 ec 0c             	sub    $0xc,%esp
     c33:	ff 36                	pushl  (%esi)
     c35:	e8 76 08 00 00       	call   14b0 <free>
		text[i] = 0;
     c3a:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
     c40:	83 c4 10             	add    $0x10,%esp
	if (auto_show == 1)
     c43:	83 3d 4c 1e 00 00 01 	cmpl   $0x1,0x1e4c
	changed = 1;
     c4a:	c7 05 50 1e 00 00 01 	movl   $0x1,0x1e50
     c51:	00 00 00 
	if (auto_show == 1)
     c54:	74 08                	je     c5e <com_del+0xfe>
}
     c56:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c59:	5b                   	pop    %ebx
     c5a:	5e                   	pop    %esi
     c5b:	5f                   	pop    %edi
     c5c:	5d                   	pop    %ebp
     c5d:	c3                   	ret    
		show_text(text);
     c5e:	89 5d 08             	mov    %ebx,0x8(%ebp)
}
     c61:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c64:	5b                   	pop    %ebx
     c65:	5e                   	pop    %esi
     c66:	5f                   	pop    %edi
     c67:	5d                   	pop    %ebp
		show_text(text);
     c68:	e9 a3 fa ff ff       	jmp    710 <show_text>
	if (i != 0)
     c6d:	85 f6                	test   %esi,%esi
     c6f:	74 d2                	je     c43 <com_del+0xe3>
     c71:	eb ba                	jmp    c2d <com_del+0xcd>
     c73:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c80 <com_help>:

void com_help(char *text[])
{
     c80:	55                   	push   %ebp
     c81:	89 e5                	mov    %esp,%ebp
     c83:	83 ec 10             	sub    $0x10,%esp
	printf(1, "****************************************\n");
     c86:	68 38 16 00 00       	push   $0x1638
     c8b:	6a 01                	push   $0x1
     c8d:	e8 4e 06 00 00       	call   12e0 <printf>
	printf(1, "instructions for use:\n");
     c92:	58                   	pop    %eax
     c93:	5a                   	pop    %edx
     c94:	68 3f 18 00 00       	push   $0x183f
     c99:	6a 01                	push   $0x1
     c9b:	e8 40 06 00 00       	call   12e0 <printf>
	printf(1, "ins-n, insert a line after line n\n");
     ca0:	59                   	pop    %ecx
     ca1:	58                   	pop    %eax
     ca2:	68 84 16 00 00       	push   $0x1684
     ca7:	6a 01                	push   $0x1
     ca9:	e8 32 06 00 00       	call   12e0 <printf>
	printf(1, "mod-n, modify line n\n");
     cae:	58                   	pop    %eax
     caf:	5a                   	pop    %edx
     cb0:	68 56 18 00 00       	push   $0x1856
     cb5:	6a 01                	push   $0x1
     cb7:	e8 24 06 00 00       	call   12e0 <printf>
	printf(1, "del-n, delete line n\n");
     cbc:	59                   	pop    %ecx
     cbd:	58                   	pop    %eax
     cbe:	68 6c 18 00 00       	push   $0x186c
     cc3:	6a 01                	push   $0x1
     cc5:	e8 16 06 00 00       	call   12e0 <printf>
	printf(1, "ins, insert a line after the last line\n");
     cca:	58                   	pop    %eax
     ccb:	5a                   	pop    %edx
     ccc:	68 a8 16 00 00       	push   $0x16a8
     cd1:	6a 01                	push   $0x1
     cd3:	e8 08 06 00 00       	call   12e0 <printf>
	printf(1, "mod, modify the last line\n");
     cd8:	59                   	pop    %ecx
     cd9:	58                   	pop    %eax
     cda:	68 82 18 00 00       	push   $0x1882
     cdf:	6a 01                	push   $0x1
     ce1:	e8 fa 05 00 00       	call   12e0 <printf>
	printf(1, "del, delete the last line\n");
     ce6:	58                   	pop    %eax
     ce7:	5a                   	pop    %edx
     ce8:	68 9d 18 00 00       	push   $0x189d
     ced:	6a 01                	push   $0x1
     cef:	e8 ec 05 00 00       	call   12e0 <printf>
	printf(1, "show, enable show current contents after executing a command.\n");
     cf4:	59                   	pop    %ecx
     cf5:	58                   	pop    %eax
     cf6:	68 d0 16 00 00       	push   $0x16d0
     cfb:	6a 01                	push   $0x1
     cfd:	e8 de 05 00 00       	call   12e0 <printf>
	printf(1, "hide, disable show current contents after executing a command.\n");
     d02:	58                   	pop    %eax
     d03:	5a                   	pop    %edx
     d04:	68 10 17 00 00       	push   $0x1710
     d09:	6a 01                	push   $0x1
     d0b:	e8 d0 05 00 00       	call   12e0 <printf>
	printf(1, "save, save the file\n");
     d10:	59                   	pop    %ecx
     d11:	58                   	pop    %eax
     d12:	68 b8 18 00 00       	push   $0x18b8
     d17:	6a 01                	push   $0x1
     d19:	e8 c2 05 00 00       	call   12e0 <printf>
	printf(1, "exit, exit editor\n");
     d1e:	58                   	pop    %eax
     d1f:	5a                   	pop    %edx
     d20:	68 cd 18 00 00       	push   $0x18cd
     d25:	6a 01                	push   $0x1
     d27:	e8 b4 05 00 00       	call   12e0 <printf>
}
     d2c:	83 c4 10             	add    $0x10,%esp
     d2f:	c9                   	leave  
     d30:	c3                   	ret    
     d31:	eb 0d                	jmp    d40 <com_save>
     d33:	90                   	nop
     d34:	90                   	nop
     d35:	90                   	nop
     d36:	90                   	nop
     d37:	90                   	nop
     d38:	90                   	nop
     d39:	90                   	nop
     d3a:	90                   	nop
     d3b:	90                   	nop
     d3c:	90                   	nop
     d3d:	90                   	nop
     d3e:	90                   	nop
     d3f:	90                   	nop

00000d40 <com_save>:

void com_save(char *text[], char *path)
{
     d40:	55                   	push   %ebp
     d41:	89 e5                	mov    %esp,%ebp
     d43:	57                   	push   %edi
     d44:	56                   	push   %esi
     d45:	53                   	push   %ebx
     d46:	83 ec 18             	sub    $0x18,%esp
     d49:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     d4c:	8b 7d 08             	mov    0x8(%ebp),%edi
	//删除旧有文件
	unlink(path);
     d4f:	53                   	push   %ebx
     d50:	e8 7d 04 00 00       	call   11d2 <unlink>
	//新建文件并打开
	int fd = open(path, O_WRONLY|O_CREATE);
     d55:	58                   	pop    %eax
     d56:	5a                   	pop    %edx
     d57:	68 01 02 00 00       	push   $0x201
     d5c:	53                   	push   %ebx
     d5d:	e8 60 04 00 00       	call   11c2 <open>
	if (fd == -1)
     d62:	83 c4 10             	add    $0x10,%esp
     d65:	83 f8 ff             	cmp    $0xffffffff,%eax
     d68:	0f 84 a1 00 00 00    	je     e0f <com_save+0xcf>
     d6e:	89 c6                	mov    %eax,%esi
	{
		printf(1, "save failed, file can't open:\n");
		//setProgramStatus(SHELL);
		exit();
	}
	if (text[0] == NULL)
     d70:	8b 07                	mov    (%edi),%eax
     d72:	85 c0                	test   %eax,%eax
     d74:	0f 84 86 00 00 00    	je     e00 <com_save+0xc0>
	{
		close(fd);
		return;
	}
	//写数据
	write(fd, text[0], strlen(text[0]));
     d7a:	83 ec 0c             	sub    $0xc,%esp
	int i = 1;
	for (; text[i] != NULL; i++)
     d7d:	8d 5f 04             	lea    0x4(%edi),%ebx
	write(fd, text[0], strlen(text[0]));
     d80:	50                   	push   %eax
     d81:	e8 2a 02 00 00       	call   fb0 <strlen>
     d86:	83 c4 0c             	add    $0xc,%esp
     d89:	50                   	push   %eax
     d8a:	ff 37                	pushl  (%edi)
     d8c:	56                   	push   %esi
     d8d:	e8 10 04 00 00       	call   11a2 <write>
	for (; text[i] != NULL; i++)
     d92:	8b 47 04             	mov    0x4(%edi),%eax
     d95:	83 c4 10             	add    $0x10,%esp
     d98:	85 c0                	test   %eax,%eax
     d9a:	74 34                	je     dd0 <com_save+0x90>
     d9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	{
		printf(fd, "\n");
     da0:	83 ec 08             	sub    $0x8,%esp
     da3:	83 c3 04             	add    $0x4,%ebx
     da6:	68 62 19 00 00       	push   $0x1962
     dab:	56                   	push   %esi
     dac:	e8 2f 05 00 00       	call   12e0 <printf>
		write(fd, text[i], strlen(text[i]));
     db1:	59                   	pop    %ecx
     db2:	ff 73 fc             	pushl  -0x4(%ebx)
     db5:	e8 f6 01 00 00       	call   fb0 <strlen>
     dba:	83 c4 0c             	add    $0xc,%esp
     dbd:	50                   	push   %eax
     dbe:	ff 73 fc             	pushl  -0x4(%ebx)
     dc1:	56                   	push   %esi
     dc2:	e8 db 03 00 00       	call   11a2 <write>
	for (; text[i] != NULL; i++)
     dc7:	8b 3b                	mov    (%ebx),%edi
     dc9:	83 c4 10             	add    $0x10,%esp
     dcc:	85 ff                	test   %edi,%edi
     dce:	75 d0                	jne    da0 <com_save+0x60>
	}
	close(fd);
     dd0:	83 ec 0c             	sub    $0xc,%esp
     dd3:	56                   	push   %esi
     dd4:	e8 d1 03 00 00       	call   11aa <close>
	printf(1, "saved successfully\n");
     dd9:	58                   	pop    %eax
     dda:	5a                   	pop    %edx
     ddb:	68 e0 18 00 00       	push   $0x18e0
     de0:	6a 01                	push   $0x1
     de2:	e8 f9 04 00 00       	call   12e0 <printf>
	changed = 0;
     de7:	c7 05 50 1e 00 00 00 	movl   $0x0,0x1e50
     dee:	00 00 00 
	return;
     df1:	83 c4 10             	add    $0x10,%esp
}
     df4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     df7:	5b                   	pop    %ebx
     df8:	5e                   	pop    %esi
     df9:	5f                   	pop    %edi
     dfa:	5d                   	pop    %ebp
     dfb:	c3                   	ret    
     dfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		close(fd);
     e00:	89 75 08             	mov    %esi,0x8(%ebp)
}
     e03:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e06:	5b                   	pop    %ebx
     e07:	5e                   	pop    %esi
     e08:	5f                   	pop    %edi
     e09:	5d                   	pop    %ebp
		close(fd);
     e0a:	e9 9b 03 00 00       	jmp    11aa <close>
		printf(1, "save failed, file can't open:\n");
     e0f:	50                   	push   %eax
     e10:	50                   	push   %eax
     e11:	68 50 17 00 00       	push   $0x1750
     e16:	6a 01                	push   $0x1
     e18:	e8 c3 04 00 00       	call   12e0 <printf>
		exit();
     e1d:	e8 60 03 00 00       	call   1182 <exit>
     e22:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000e30 <com_exit>:

void com_exit(char *text[], char *path)
{
     e30:	55                   	push   %ebp
     e31:	89 e5                	mov    %esp,%ebp
     e33:	57                   	push   %edi
     e34:	56                   	push   %esi
     e35:	53                   	push   %ebx
     e36:	81 ec 0c 01 00 00    	sub    $0x10c,%esp
	//询问是否保存
	while (changed == 1)
     e3c:	83 3d 50 1e 00 00 01 	cmpl   $0x1,0x1e50
{
     e43:	8b 75 08             	mov    0x8(%ebp),%esi
	while (changed == 1)
     e46:	0f 85 ae 00 00 00    	jne    efa <com_exit+0xca>
     e4c:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     e52:	89 c3                	mov    %eax,%ebx
     e54:	89 c6                	mov    %eax,%esi
     e56:	eb 22                	jmp    e7a <com_exit+0x4a>
     e58:	90                   	nop
     e59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		printf(1, "save the file? y/n\n");
		char input[MAX_LINE_LENGTH] = {};
		gets(input, MAX_LINE_LENGTH);
		input[strlen(input)-1] = '\0';
		if (strcmp(input, "y") == 0)
			com_save(text, path);
     e60:	83 ec 08             	sub    $0x8,%esp
     e63:	ff 75 0c             	pushl  0xc(%ebp)
     e66:	ff 75 08             	pushl  0x8(%ebp)
     e69:	e8 d2 fe ff ff       	call   d40 <com_save>
     e6e:	83 c4 10             	add    $0x10,%esp
	while (changed == 1)
     e71:	83 3d 50 1e 00 00 01 	cmpl   $0x1,0x1e50
     e78:	75 7d                	jne    ef7 <com_exit+0xc7>
		printf(1, "save the file? y/n\n");
     e7a:	83 ec 08             	sub    $0x8,%esp
		char input[MAX_LINE_LENGTH] = {};
     e7d:	89 f7                	mov    %esi,%edi
		gets(input, MAX_LINE_LENGTH);
     e7f:	89 de                	mov    %ebx,%esi
		printf(1, "save the file? y/n\n");
     e81:	68 f4 18 00 00       	push   $0x18f4
     e86:	6a 01                	push   $0x1
     e88:	e8 53 04 00 00       	call   12e0 <printf>
		char input[MAX_LINE_LENGTH] = {};
     e8d:	31 c0                	xor    %eax,%eax
     e8f:	b9 40 00 00 00       	mov    $0x40,%ecx
     e94:	f3 ab                	rep stos %eax,%es:(%edi)
		gets(input, MAX_LINE_LENGTH);
     e96:	58                   	pop    %eax
     e97:	5a                   	pop    %edx
     e98:	68 00 01 00 00       	push   $0x100
     e9d:	53                   	push   %ebx
     e9e:	e8 9d 01 00 00       	call   1040 <gets>
		input[strlen(input)-1] = '\0';
     ea3:	89 1c 24             	mov    %ebx,(%esp)
     ea6:	e8 05 01 00 00       	call   fb0 <strlen>
		if (strcmp(input, "y") == 0)
     eab:	59                   	pop    %ecx
     eac:	5f                   	pop    %edi
     ead:	68 08 19 00 00       	push   $0x1908
     eb2:	53                   	push   %ebx
		input[strlen(input)-1] = '\0';
     eb3:	c6 84 05 e7 fe ff ff 	movb   $0x0,-0x119(%ebp,%eax,1)
     eba:	00 
		if (strcmp(input, "y") == 0)
     ebb:	e8 a0 00 00 00       	call   f60 <strcmp>
     ec0:	83 c4 10             	add    $0x10,%esp
     ec3:	85 c0                	test   %eax,%eax
     ec5:	74 99                	je     e60 <com_exit+0x30>
		else if(strcmp(input, "n") == 0)
     ec7:	83 ec 08             	sub    $0x8,%esp
     eca:	68 0a 19 00 00       	push   $0x190a
     ecf:	53                   	push   %ebx
     ed0:	e8 8b 00 00 00       	call   f60 <strcmp>
     ed5:	83 c4 10             	add    $0x10,%esp
     ed8:	85 c0                	test   %eax,%eax
     eda:	74 1b                	je     ef7 <com_exit+0xc7>
			break;
		else
		printf(2, "wrong answer?\n");
     edc:	83 ec 08             	sub    $0x8,%esp
     edf:	68 0c 19 00 00       	push   $0x190c
     ee4:	6a 02                	push   $0x2
     ee6:	e8 f5 03 00 00       	call   12e0 <printf>
     eeb:	83 c4 10             	add    $0x10,%esp
	while (changed == 1)
     eee:	83 3d 50 1e 00 00 01 	cmpl   $0x1,0x1e50
     ef5:	74 83                	je     e7a <com_exit+0x4a>
     ef7:	8b 75 08             	mov    0x8(%ebp),%esi
	}
	//释放内存
	int i = 0;
	for (; text[i] != NULL; i++)
     efa:	8b 06                	mov    (%esi),%eax
     efc:	85 c0                	test   %eax,%eax
     efe:	74 1c                	je     f1c <com_exit+0xec>
	{
		free(text[i]);
     f00:	83 ec 0c             	sub    $0xc,%esp
     f03:	83 c6 04             	add    $0x4,%esi
     f06:	50                   	push   %eax
     f07:	e8 a4 05 00 00       	call   14b0 <free>
		text[i] = 0;
     f0c:	c7 46 fc 00 00 00 00 	movl   $0x0,-0x4(%esi)
	for (; text[i] != NULL; i++)
     f13:	8b 06                	mov    (%esi),%eax
     f15:	83 c4 10             	add    $0x10,%esp
     f18:	85 c0                	test   %eax,%eax
     f1a:	75 e4                	jne    f00 <com_exit+0xd0>
	}
	//退出
	//setProgramStatus(SHELL);
	exit();
     f1c:	e8 61 02 00 00       	call   1182 <exit>
     f21:	66 90                	xchg   %ax,%ax
     f23:	66 90                	xchg   %ax,%ax
     f25:	66 90                	xchg   %ax,%ax
     f27:	66 90                	xchg   %ax,%ax
     f29:	66 90                	xchg   %ax,%ax
     f2b:	66 90                	xchg   %ax,%ax
     f2d:	66 90                	xchg   %ax,%ax
     f2f:	90                   	nop

00000f30 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     f30:	55                   	push   %ebp
     f31:	89 e5                	mov    %esp,%ebp
     f33:	53                   	push   %ebx
     f34:	8b 45 08             	mov    0x8(%ebp),%eax
     f37:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     f3a:	89 c2                	mov    %eax,%edx
     f3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     f40:	83 c1 01             	add    $0x1,%ecx
     f43:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     f47:	83 c2 01             	add    $0x1,%edx
     f4a:	84 db                	test   %bl,%bl
     f4c:	88 5a ff             	mov    %bl,-0x1(%edx)
     f4f:	75 ef                	jne    f40 <strcpy+0x10>
    ;
  return os;
}
     f51:	5b                   	pop    %ebx
     f52:	5d                   	pop    %ebp
     f53:	c3                   	ret    
     f54:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     f5a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000f60 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     f60:	55                   	push   %ebp
     f61:	89 e5                	mov    %esp,%ebp
     f63:	53                   	push   %ebx
     f64:	8b 55 08             	mov    0x8(%ebp),%edx
     f67:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     f6a:	0f b6 02             	movzbl (%edx),%eax
     f6d:	0f b6 19             	movzbl (%ecx),%ebx
     f70:	84 c0                	test   %al,%al
     f72:	75 1c                	jne    f90 <strcmp+0x30>
     f74:	eb 2a                	jmp    fa0 <strcmp+0x40>
     f76:	8d 76 00             	lea    0x0(%esi),%esi
     f79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     f80:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     f83:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     f86:	83 c1 01             	add    $0x1,%ecx
     f89:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
     f8c:	84 c0                	test   %al,%al
     f8e:	74 10                	je     fa0 <strcmp+0x40>
     f90:	38 d8                	cmp    %bl,%al
     f92:	74 ec                	je     f80 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
     f94:	29 d8                	sub    %ebx,%eax
}
     f96:	5b                   	pop    %ebx
     f97:	5d                   	pop    %ebp
     f98:	c3                   	ret    
     f99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     fa0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     fa2:	29 d8                	sub    %ebx,%eax
}
     fa4:	5b                   	pop    %ebx
     fa5:	5d                   	pop    %ebp
     fa6:	c3                   	ret    
     fa7:	89 f6                	mov    %esi,%esi
     fa9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000fb0 <strlen>:

uint
strlen(const char *s)
{
     fb0:	55                   	push   %ebp
     fb1:	89 e5                	mov    %esp,%ebp
     fb3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     fb6:	80 39 00             	cmpb   $0x0,(%ecx)
     fb9:	74 15                	je     fd0 <strlen+0x20>
     fbb:	31 d2                	xor    %edx,%edx
     fbd:	8d 76 00             	lea    0x0(%esi),%esi
     fc0:	83 c2 01             	add    $0x1,%edx
     fc3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     fc7:	89 d0                	mov    %edx,%eax
     fc9:	75 f5                	jne    fc0 <strlen+0x10>
    ;
  return n;
}
     fcb:	5d                   	pop    %ebp
     fcc:	c3                   	ret    
     fcd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
     fd0:	31 c0                	xor    %eax,%eax
}
     fd2:	5d                   	pop    %ebp
     fd3:	c3                   	ret    
     fd4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     fda:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000fe0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     fe0:	55                   	push   %ebp
     fe1:	89 e5                	mov    %esp,%ebp
     fe3:	57                   	push   %edi
     fe4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     fe7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     fea:	8b 45 0c             	mov    0xc(%ebp),%eax
     fed:	89 d7                	mov    %edx,%edi
     fef:	fc                   	cld    
     ff0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     ff2:	89 d0                	mov    %edx,%eax
     ff4:	5f                   	pop    %edi
     ff5:	5d                   	pop    %ebp
     ff6:	c3                   	ret    
     ff7:	89 f6                	mov    %esi,%esi
     ff9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001000 <strchr>:

char*
strchr(const char *s, char c)
{
    1000:	55                   	push   %ebp
    1001:	89 e5                	mov    %esp,%ebp
    1003:	53                   	push   %ebx
    1004:	8b 45 08             	mov    0x8(%ebp),%eax
    1007:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    100a:	0f b6 10             	movzbl (%eax),%edx
    100d:	84 d2                	test   %dl,%dl
    100f:	74 1d                	je     102e <strchr+0x2e>
    if(*s == c)
    1011:	38 d3                	cmp    %dl,%bl
    1013:	89 d9                	mov    %ebx,%ecx
    1015:	75 0d                	jne    1024 <strchr+0x24>
    1017:	eb 17                	jmp    1030 <strchr+0x30>
    1019:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1020:	38 ca                	cmp    %cl,%dl
    1022:	74 0c                	je     1030 <strchr+0x30>
  for(; *s; s++)
    1024:	83 c0 01             	add    $0x1,%eax
    1027:	0f b6 10             	movzbl (%eax),%edx
    102a:	84 d2                	test   %dl,%dl
    102c:	75 f2                	jne    1020 <strchr+0x20>
      return (char*)s;
  return 0;
    102e:	31 c0                	xor    %eax,%eax
}
    1030:	5b                   	pop    %ebx
    1031:	5d                   	pop    %ebp
    1032:	c3                   	ret    
    1033:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1039:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001040 <gets>:

char*
gets(char *buf, int max)
{
    1040:	55                   	push   %ebp
    1041:	89 e5                	mov    %esp,%ebp
    1043:	57                   	push   %edi
    1044:	56                   	push   %esi
    1045:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1046:	31 f6                	xor    %esi,%esi
    1048:	89 f3                	mov    %esi,%ebx
{
    104a:	83 ec 1c             	sub    $0x1c,%esp
    104d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1050:	eb 2f                	jmp    1081 <gets+0x41>
    1052:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1058:	8d 45 e7             	lea    -0x19(%ebp),%eax
    105b:	83 ec 04             	sub    $0x4,%esp
    105e:	6a 01                	push   $0x1
    1060:	50                   	push   %eax
    1061:	6a 00                	push   $0x0
    1063:	e8 32 01 00 00       	call   119a <read>
    if(cc < 1)
    1068:	83 c4 10             	add    $0x10,%esp
    106b:	85 c0                	test   %eax,%eax
    106d:	7e 1c                	jle    108b <gets+0x4b>
      break;
    buf[i++] = c;
    106f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1073:	83 c7 01             	add    $0x1,%edi
    1076:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1079:	3c 0a                	cmp    $0xa,%al
    107b:	74 23                	je     10a0 <gets+0x60>
    107d:	3c 0d                	cmp    $0xd,%al
    107f:	74 1f                	je     10a0 <gets+0x60>
  for(i=0; i+1 < max; ){
    1081:	83 c3 01             	add    $0x1,%ebx
    1084:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1087:	89 fe                	mov    %edi,%esi
    1089:	7c cd                	jl     1058 <gets+0x18>
    108b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    108d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1090:	c6 03 00             	movb   $0x0,(%ebx)
}
    1093:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1096:	5b                   	pop    %ebx
    1097:	5e                   	pop    %esi
    1098:	5f                   	pop    %edi
    1099:	5d                   	pop    %ebp
    109a:	c3                   	ret    
    109b:	90                   	nop
    109c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10a0:	8b 75 08             	mov    0x8(%ebp),%esi
    10a3:	8b 45 08             	mov    0x8(%ebp),%eax
    10a6:	01 de                	add    %ebx,%esi
    10a8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    10aa:	c6 03 00             	movb   $0x0,(%ebx)
}
    10ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
    10b0:	5b                   	pop    %ebx
    10b1:	5e                   	pop    %esi
    10b2:	5f                   	pop    %edi
    10b3:	5d                   	pop    %ebp
    10b4:	c3                   	ret    
    10b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000010c0 <stat>:

int
stat(const char *n, struct stat *st)
{
    10c0:	55                   	push   %ebp
    10c1:	89 e5                	mov    %esp,%ebp
    10c3:	56                   	push   %esi
    10c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    10c5:	83 ec 08             	sub    $0x8,%esp
    10c8:	6a 00                	push   $0x0
    10ca:	ff 75 08             	pushl  0x8(%ebp)
    10cd:	e8 f0 00 00 00       	call   11c2 <open>
  if(fd < 0)
    10d2:	83 c4 10             	add    $0x10,%esp
    10d5:	85 c0                	test   %eax,%eax
    10d7:	78 27                	js     1100 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    10d9:	83 ec 08             	sub    $0x8,%esp
    10dc:	ff 75 0c             	pushl  0xc(%ebp)
    10df:	89 c3                	mov    %eax,%ebx
    10e1:	50                   	push   %eax
    10e2:	e8 f3 00 00 00       	call   11da <fstat>
  close(fd);
    10e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    10ea:	89 c6                	mov    %eax,%esi
  close(fd);
    10ec:	e8 b9 00 00 00       	call   11aa <close>
  return r;
    10f1:	83 c4 10             	add    $0x10,%esp
}
    10f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    10f7:	89 f0                	mov    %esi,%eax
    10f9:	5b                   	pop    %ebx
    10fa:	5e                   	pop    %esi
    10fb:	5d                   	pop    %ebp
    10fc:	c3                   	ret    
    10fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    1100:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1105:	eb ed                	jmp    10f4 <stat+0x34>
    1107:	89 f6                	mov    %esi,%esi
    1109:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001110 <atoi>:

int
atoi(const char *s)
{
    1110:	55                   	push   %ebp
    1111:	89 e5                	mov    %esp,%ebp
    1113:	53                   	push   %ebx
    1114:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1117:	0f be 11             	movsbl (%ecx),%edx
    111a:	8d 42 d0             	lea    -0x30(%edx),%eax
    111d:	3c 09                	cmp    $0x9,%al
  n = 0;
    111f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1124:	77 1f                	ja     1145 <atoi+0x35>
    1126:	8d 76 00             	lea    0x0(%esi),%esi
    1129:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1130:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1133:	83 c1 01             	add    $0x1,%ecx
    1136:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    113a:	0f be 11             	movsbl (%ecx),%edx
    113d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1140:	80 fb 09             	cmp    $0x9,%bl
    1143:	76 eb                	jbe    1130 <atoi+0x20>
  return n;
}
    1145:	5b                   	pop    %ebx
    1146:	5d                   	pop    %ebp
    1147:	c3                   	ret    
    1148:	90                   	nop
    1149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001150 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1150:	55                   	push   %ebp
    1151:	89 e5                	mov    %esp,%ebp
    1153:	56                   	push   %esi
    1154:	53                   	push   %ebx
    1155:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1158:	8b 45 08             	mov    0x8(%ebp),%eax
    115b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    115e:	85 db                	test   %ebx,%ebx
    1160:	7e 14                	jle    1176 <memmove+0x26>
    1162:	31 d2                	xor    %edx,%edx
    1164:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1168:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    116c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    116f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    1172:	39 d3                	cmp    %edx,%ebx
    1174:	75 f2                	jne    1168 <memmove+0x18>
  return vdst;
}
    1176:	5b                   	pop    %ebx
    1177:	5e                   	pop    %esi
    1178:	5d                   	pop    %ebp
    1179:	c3                   	ret    

0000117a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    117a:	b8 01 00 00 00       	mov    $0x1,%eax
    117f:	cd 40                	int    $0x40
    1181:	c3                   	ret    

00001182 <exit>:
SYSCALL(exit)
    1182:	b8 02 00 00 00       	mov    $0x2,%eax
    1187:	cd 40                	int    $0x40
    1189:	c3                   	ret    

0000118a <wait>:
SYSCALL(wait)
    118a:	b8 03 00 00 00       	mov    $0x3,%eax
    118f:	cd 40                	int    $0x40
    1191:	c3                   	ret    

00001192 <pipe>:
SYSCALL(pipe)
    1192:	b8 04 00 00 00       	mov    $0x4,%eax
    1197:	cd 40                	int    $0x40
    1199:	c3                   	ret    

0000119a <read>:
SYSCALL(read)
    119a:	b8 05 00 00 00       	mov    $0x5,%eax
    119f:	cd 40                	int    $0x40
    11a1:	c3                   	ret    

000011a2 <write>:
SYSCALL(write)
    11a2:	b8 10 00 00 00       	mov    $0x10,%eax
    11a7:	cd 40                	int    $0x40
    11a9:	c3                   	ret    

000011aa <close>:
SYSCALL(close)
    11aa:	b8 15 00 00 00       	mov    $0x15,%eax
    11af:	cd 40                	int    $0x40
    11b1:	c3                   	ret    

000011b2 <kill>:
SYSCALL(kill)
    11b2:	b8 06 00 00 00       	mov    $0x6,%eax
    11b7:	cd 40                	int    $0x40
    11b9:	c3                   	ret    

000011ba <exec>:
SYSCALL(exec)
    11ba:	b8 07 00 00 00       	mov    $0x7,%eax
    11bf:	cd 40                	int    $0x40
    11c1:	c3                   	ret    

000011c2 <open>:
SYSCALL(open)
    11c2:	b8 0f 00 00 00       	mov    $0xf,%eax
    11c7:	cd 40                	int    $0x40
    11c9:	c3                   	ret    

000011ca <mknod>:
SYSCALL(mknod)
    11ca:	b8 11 00 00 00       	mov    $0x11,%eax
    11cf:	cd 40                	int    $0x40
    11d1:	c3                   	ret    

000011d2 <unlink>:
SYSCALL(unlink)
    11d2:	b8 12 00 00 00       	mov    $0x12,%eax
    11d7:	cd 40                	int    $0x40
    11d9:	c3                   	ret    

000011da <fstat>:
SYSCALL(fstat)
    11da:	b8 08 00 00 00       	mov    $0x8,%eax
    11df:	cd 40                	int    $0x40
    11e1:	c3                   	ret    

000011e2 <link>:
SYSCALL(link)
    11e2:	b8 13 00 00 00       	mov    $0x13,%eax
    11e7:	cd 40                	int    $0x40
    11e9:	c3                   	ret    

000011ea <mkdir>:
SYSCALL(mkdir)
    11ea:	b8 14 00 00 00       	mov    $0x14,%eax
    11ef:	cd 40                	int    $0x40
    11f1:	c3                   	ret    

000011f2 <chdir>:
SYSCALL(chdir)
    11f2:	b8 09 00 00 00       	mov    $0x9,%eax
    11f7:	cd 40                	int    $0x40
    11f9:	c3                   	ret    

000011fa <dup>:
SYSCALL(dup)
    11fa:	b8 0a 00 00 00       	mov    $0xa,%eax
    11ff:	cd 40                	int    $0x40
    1201:	c3                   	ret    

00001202 <getpid>:
SYSCALL(getpid)
    1202:	b8 0b 00 00 00       	mov    $0xb,%eax
    1207:	cd 40                	int    $0x40
    1209:	c3                   	ret    

0000120a <sbrk>:
SYSCALL(sbrk)
    120a:	b8 0c 00 00 00       	mov    $0xc,%eax
    120f:	cd 40                	int    $0x40
    1211:	c3                   	ret    

00001212 <sleep>:
SYSCALL(sleep)
    1212:	b8 0d 00 00 00       	mov    $0xd,%eax
    1217:	cd 40                	int    $0x40
    1219:	c3                   	ret    

0000121a <uptime>:
SYSCALL(uptime)
    121a:	b8 0e 00 00 00       	mov    $0xe,%eax
    121f:	cd 40                	int    $0x40
    1221:	c3                   	ret    

00001222 <cps>:
SYSCALL(cps)
    1222:	b8 16 00 00 00       	mov    $0x16,%eax
    1227:	cd 40                	int    $0x40
    1229:	c3                   	ret    

0000122a <shutdown>:
SYSCALL(shutdown)
    122a:	b8 17 00 00 00       	mov    $0x17,%eax
    122f:	cd 40                	int    $0x40
    1231:	c3                   	ret    

00001232 <chpr>:
SYSCALL(chpr)
    1232:	b8 18 00 00 00       	mov    $0x18,%eax
    1237:	cd 40                	int    $0x40
    1239:	c3                   	ret    
    123a:	66 90                	xchg   %ax,%ax
    123c:	66 90                	xchg   %ax,%ax
    123e:	66 90                	xchg   %ax,%ax

00001240 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1240:	55                   	push   %ebp
    1241:	89 e5                	mov    %esp,%ebp
    1243:	57                   	push   %edi
    1244:	56                   	push   %esi
    1245:	53                   	push   %ebx
    1246:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1249:	85 d2                	test   %edx,%edx
{
    124b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    124e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    1250:	79 76                	jns    12c8 <printint+0x88>
    1252:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    1256:	74 70                	je     12c8 <printint+0x88>
    x = -xx;
    1258:	f7 d8                	neg    %eax
    neg = 1;
    125a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1261:	31 f6                	xor    %esi,%esi
    1263:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    1266:	eb 0a                	jmp    1272 <printint+0x32>
    1268:	90                   	nop
    1269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    1270:	89 fe                	mov    %edi,%esi
    1272:	31 d2                	xor    %edx,%edx
    1274:	8d 7e 01             	lea    0x1(%esi),%edi
    1277:	f7 f1                	div    %ecx
    1279:	0f b6 92 8c 19 00 00 	movzbl 0x198c(%edx),%edx
  }while((x /= base) != 0);
    1280:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    1282:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    1285:	75 e9                	jne    1270 <printint+0x30>
  if(neg)
    1287:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    128a:	85 c0                	test   %eax,%eax
    128c:	74 08                	je     1296 <printint+0x56>
    buf[i++] = '-';
    128e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    1293:	8d 7e 02             	lea    0x2(%esi),%edi
    1296:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    129a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    129d:	8d 76 00             	lea    0x0(%esi),%esi
    12a0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    12a3:	83 ec 04             	sub    $0x4,%esp
    12a6:	83 ee 01             	sub    $0x1,%esi
    12a9:	6a 01                	push   $0x1
    12ab:	53                   	push   %ebx
    12ac:	57                   	push   %edi
    12ad:	88 45 d7             	mov    %al,-0x29(%ebp)
    12b0:	e8 ed fe ff ff       	call   11a2 <write>

  while(--i >= 0)
    12b5:	83 c4 10             	add    $0x10,%esp
    12b8:	39 de                	cmp    %ebx,%esi
    12ba:	75 e4                	jne    12a0 <printint+0x60>
    putc(fd, buf[i]);
}
    12bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12bf:	5b                   	pop    %ebx
    12c0:	5e                   	pop    %esi
    12c1:	5f                   	pop    %edi
    12c2:	5d                   	pop    %ebp
    12c3:	c3                   	ret    
    12c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    12c8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    12cf:	eb 90                	jmp    1261 <printint+0x21>
    12d1:	eb 0d                	jmp    12e0 <printf>
    12d3:	90                   	nop
    12d4:	90                   	nop
    12d5:	90                   	nop
    12d6:	90                   	nop
    12d7:	90                   	nop
    12d8:	90                   	nop
    12d9:	90                   	nop
    12da:	90                   	nop
    12db:	90                   	nop
    12dc:	90                   	nop
    12dd:	90                   	nop
    12de:	90                   	nop
    12df:	90                   	nop

000012e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    12e0:	55                   	push   %ebp
    12e1:	89 e5                	mov    %esp,%ebp
    12e3:	57                   	push   %edi
    12e4:	56                   	push   %esi
    12e5:	53                   	push   %ebx
    12e6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    12e9:	8b 75 0c             	mov    0xc(%ebp),%esi
    12ec:	0f b6 1e             	movzbl (%esi),%ebx
    12ef:	84 db                	test   %bl,%bl
    12f1:	0f 84 b3 00 00 00    	je     13aa <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    12f7:	8d 45 10             	lea    0x10(%ebp),%eax
    12fa:	83 c6 01             	add    $0x1,%esi
  state = 0;
    12fd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    12ff:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1302:	eb 2f                	jmp    1333 <printf+0x53>
    1304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1308:	83 f8 25             	cmp    $0x25,%eax
    130b:	0f 84 a7 00 00 00    	je     13b8 <printf+0xd8>
  write(fd, &c, 1);
    1311:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1314:	83 ec 04             	sub    $0x4,%esp
    1317:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    131a:	6a 01                	push   $0x1
    131c:	50                   	push   %eax
    131d:	ff 75 08             	pushl  0x8(%ebp)
    1320:	e8 7d fe ff ff       	call   11a2 <write>
    1325:	83 c4 10             	add    $0x10,%esp
    1328:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    132b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    132f:	84 db                	test   %bl,%bl
    1331:	74 77                	je     13aa <printf+0xca>
    if(state == 0){
    1333:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    1335:	0f be cb             	movsbl %bl,%ecx
    1338:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    133b:	74 cb                	je     1308 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    133d:	83 ff 25             	cmp    $0x25,%edi
    1340:	75 e6                	jne    1328 <printf+0x48>
      if(c == 'd'){
    1342:	83 f8 64             	cmp    $0x64,%eax
    1345:	0f 84 05 01 00 00    	je     1450 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    134b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1351:	83 f9 70             	cmp    $0x70,%ecx
    1354:	74 72                	je     13c8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1356:	83 f8 73             	cmp    $0x73,%eax
    1359:	0f 84 99 00 00 00    	je     13f8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    135f:	83 f8 63             	cmp    $0x63,%eax
    1362:	0f 84 08 01 00 00    	je     1470 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1368:	83 f8 25             	cmp    $0x25,%eax
    136b:	0f 84 ef 00 00 00    	je     1460 <printf+0x180>
  write(fd, &c, 1);
    1371:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1374:	83 ec 04             	sub    $0x4,%esp
    1377:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    137b:	6a 01                	push   $0x1
    137d:	50                   	push   %eax
    137e:	ff 75 08             	pushl  0x8(%ebp)
    1381:	e8 1c fe ff ff       	call   11a2 <write>
    1386:	83 c4 0c             	add    $0xc,%esp
    1389:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    138c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    138f:	6a 01                	push   $0x1
    1391:	50                   	push   %eax
    1392:	ff 75 08             	pushl  0x8(%ebp)
    1395:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1398:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    139a:	e8 03 fe ff ff       	call   11a2 <write>
  for(i = 0; fmt[i]; i++){
    139f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    13a3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    13a6:	84 db                	test   %bl,%bl
    13a8:	75 89                	jne    1333 <printf+0x53>
    }
  }
}
    13aa:	8d 65 f4             	lea    -0xc(%ebp),%esp
    13ad:	5b                   	pop    %ebx
    13ae:	5e                   	pop    %esi
    13af:	5f                   	pop    %edi
    13b0:	5d                   	pop    %ebp
    13b1:	c3                   	ret    
    13b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    13b8:	bf 25 00 00 00       	mov    $0x25,%edi
    13bd:	e9 66 ff ff ff       	jmp    1328 <printf+0x48>
    13c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    13c8:	83 ec 0c             	sub    $0xc,%esp
    13cb:	b9 10 00 00 00       	mov    $0x10,%ecx
    13d0:	6a 00                	push   $0x0
    13d2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    13d5:	8b 45 08             	mov    0x8(%ebp),%eax
    13d8:	8b 17                	mov    (%edi),%edx
    13da:	e8 61 fe ff ff       	call   1240 <printint>
        ap++;
    13df:	89 f8                	mov    %edi,%eax
    13e1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    13e4:	31 ff                	xor    %edi,%edi
        ap++;
    13e6:	83 c0 04             	add    $0x4,%eax
    13e9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    13ec:	e9 37 ff ff ff       	jmp    1328 <printf+0x48>
    13f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    13f8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    13fb:	8b 08                	mov    (%eax),%ecx
        ap++;
    13fd:	83 c0 04             	add    $0x4,%eax
    1400:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    1403:	85 c9                	test   %ecx,%ecx
    1405:	0f 84 8e 00 00 00    	je     1499 <printf+0x1b9>
        while(*s != 0){
    140b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    140e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    1410:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    1412:	84 c0                	test   %al,%al
    1414:	0f 84 0e ff ff ff    	je     1328 <printf+0x48>
    141a:	89 75 d0             	mov    %esi,-0x30(%ebp)
    141d:	89 de                	mov    %ebx,%esi
    141f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1422:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    1425:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1428:	83 ec 04             	sub    $0x4,%esp
          s++;
    142b:	83 c6 01             	add    $0x1,%esi
    142e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1431:	6a 01                	push   $0x1
    1433:	57                   	push   %edi
    1434:	53                   	push   %ebx
    1435:	e8 68 fd ff ff       	call   11a2 <write>
        while(*s != 0){
    143a:	0f b6 06             	movzbl (%esi),%eax
    143d:	83 c4 10             	add    $0x10,%esp
    1440:	84 c0                	test   %al,%al
    1442:	75 e4                	jne    1428 <printf+0x148>
    1444:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1447:	31 ff                	xor    %edi,%edi
    1449:	e9 da fe ff ff       	jmp    1328 <printf+0x48>
    144e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1450:	83 ec 0c             	sub    $0xc,%esp
    1453:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1458:	6a 01                	push   $0x1
    145a:	e9 73 ff ff ff       	jmp    13d2 <printf+0xf2>
    145f:	90                   	nop
  write(fd, &c, 1);
    1460:	83 ec 04             	sub    $0x4,%esp
    1463:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1466:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1469:	6a 01                	push   $0x1
    146b:	e9 21 ff ff ff       	jmp    1391 <printf+0xb1>
        putc(fd, *ap);
    1470:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    1473:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1476:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1478:	6a 01                	push   $0x1
        ap++;
    147a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    147d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1480:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1483:	50                   	push   %eax
    1484:	ff 75 08             	pushl  0x8(%ebp)
    1487:	e8 16 fd ff ff       	call   11a2 <write>
        ap++;
    148c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    148f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1492:	31 ff                	xor    %edi,%edi
    1494:	e9 8f fe ff ff       	jmp    1328 <printf+0x48>
          s = "(null)";
    1499:	bb 85 19 00 00       	mov    $0x1985,%ebx
        while(*s != 0){
    149e:	b8 28 00 00 00       	mov    $0x28,%eax
    14a3:	e9 72 ff ff ff       	jmp    141a <printf+0x13a>
    14a8:	66 90                	xchg   %ax,%ax
    14aa:	66 90                	xchg   %ax,%ax
    14ac:	66 90                	xchg   %ax,%ax
    14ae:	66 90                	xchg   %ax,%ax

000014b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    14b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    14b1:	a1 54 1e 00 00       	mov    0x1e54,%eax
{
    14b6:	89 e5                	mov    %esp,%ebp
    14b8:	57                   	push   %edi
    14b9:	56                   	push   %esi
    14ba:	53                   	push   %ebx
    14bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    14be:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    14c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    14c8:	39 c8                	cmp    %ecx,%eax
    14ca:	8b 10                	mov    (%eax),%edx
    14cc:	73 32                	jae    1500 <free+0x50>
    14ce:	39 d1                	cmp    %edx,%ecx
    14d0:	72 04                	jb     14d6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    14d2:	39 d0                	cmp    %edx,%eax
    14d4:	72 32                	jb     1508 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    14d6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    14d9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    14dc:	39 fa                	cmp    %edi,%edx
    14de:	74 30                	je     1510 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    14e0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    14e3:	8b 50 04             	mov    0x4(%eax),%edx
    14e6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    14e9:	39 f1                	cmp    %esi,%ecx
    14eb:	74 3a                	je     1527 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    14ed:	89 08                	mov    %ecx,(%eax)
  freep = p;
    14ef:	a3 54 1e 00 00       	mov    %eax,0x1e54
}
    14f4:	5b                   	pop    %ebx
    14f5:	5e                   	pop    %esi
    14f6:	5f                   	pop    %edi
    14f7:	5d                   	pop    %ebp
    14f8:	c3                   	ret    
    14f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1500:	39 d0                	cmp    %edx,%eax
    1502:	72 04                	jb     1508 <free+0x58>
    1504:	39 d1                	cmp    %edx,%ecx
    1506:	72 ce                	jb     14d6 <free+0x26>
{
    1508:	89 d0                	mov    %edx,%eax
    150a:	eb bc                	jmp    14c8 <free+0x18>
    150c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    1510:	03 72 04             	add    0x4(%edx),%esi
    1513:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1516:	8b 10                	mov    (%eax),%edx
    1518:	8b 12                	mov    (%edx),%edx
    151a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    151d:	8b 50 04             	mov    0x4(%eax),%edx
    1520:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1523:	39 f1                	cmp    %esi,%ecx
    1525:	75 c6                	jne    14ed <free+0x3d>
    p->s.size += bp->s.size;
    1527:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    152a:	a3 54 1e 00 00       	mov    %eax,0x1e54
    p->s.size += bp->s.size;
    152f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1532:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1535:	89 10                	mov    %edx,(%eax)
}
    1537:	5b                   	pop    %ebx
    1538:	5e                   	pop    %esi
    1539:	5f                   	pop    %edi
    153a:	5d                   	pop    %ebp
    153b:	c3                   	ret    
    153c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001540 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1540:	55                   	push   %ebp
    1541:	89 e5                	mov    %esp,%ebp
    1543:	57                   	push   %edi
    1544:	56                   	push   %esi
    1545:	53                   	push   %ebx
    1546:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1549:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    154c:	8b 15 54 1e 00 00    	mov    0x1e54,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1552:	8d 78 07             	lea    0x7(%eax),%edi
    1555:	c1 ef 03             	shr    $0x3,%edi
    1558:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    155b:	85 d2                	test   %edx,%edx
    155d:	0f 84 9d 00 00 00    	je     1600 <malloc+0xc0>
    1563:	8b 02                	mov    (%edx),%eax
    1565:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1568:	39 cf                	cmp    %ecx,%edi
    156a:	76 6c                	jbe    15d8 <malloc+0x98>
    156c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1572:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1577:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    157a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1581:	eb 0e                	jmp    1591 <malloc+0x51>
    1583:	90                   	nop
    1584:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1588:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    158a:	8b 48 04             	mov    0x4(%eax),%ecx
    158d:	39 f9                	cmp    %edi,%ecx
    158f:	73 47                	jae    15d8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1591:	39 05 54 1e 00 00    	cmp    %eax,0x1e54
    1597:	89 c2                	mov    %eax,%edx
    1599:	75 ed                	jne    1588 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    159b:	83 ec 0c             	sub    $0xc,%esp
    159e:	56                   	push   %esi
    159f:	e8 66 fc ff ff       	call   120a <sbrk>
  if(p == (char*)-1)
    15a4:	83 c4 10             	add    $0x10,%esp
    15a7:	83 f8 ff             	cmp    $0xffffffff,%eax
    15aa:	74 1c                	je     15c8 <malloc+0x88>
  hp->s.size = nu;
    15ac:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    15af:	83 ec 0c             	sub    $0xc,%esp
    15b2:	83 c0 08             	add    $0x8,%eax
    15b5:	50                   	push   %eax
    15b6:	e8 f5 fe ff ff       	call   14b0 <free>
  return freep;
    15bb:	8b 15 54 1e 00 00    	mov    0x1e54,%edx
      if((p = morecore(nunits)) == 0)
    15c1:	83 c4 10             	add    $0x10,%esp
    15c4:	85 d2                	test   %edx,%edx
    15c6:	75 c0                	jne    1588 <malloc+0x48>
        return 0;
  }
}
    15c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    15cb:	31 c0                	xor    %eax,%eax
}
    15cd:	5b                   	pop    %ebx
    15ce:	5e                   	pop    %esi
    15cf:	5f                   	pop    %edi
    15d0:	5d                   	pop    %ebp
    15d1:	c3                   	ret    
    15d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    15d8:	39 cf                	cmp    %ecx,%edi
    15da:	74 54                	je     1630 <malloc+0xf0>
        p->s.size -= nunits;
    15dc:	29 f9                	sub    %edi,%ecx
    15de:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    15e1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    15e4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    15e7:	89 15 54 1e 00 00    	mov    %edx,0x1e54
}
    15ed:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    15f0:	83 c0 08             	add    $0x8,%eax
}
    15f3:	5b                   	pop    %ebx
    15f4:	5e                   	pop    %esi
    15f5:	5f                   	pop    %edi
    15f6:	5d                   	pop    %ebp
    15f7:	c3                   	ret    
    15f8:	90                   	nop
    15f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    1600:	c7 05 54 1e 00 00 58 	movl   $0x1e58,0x1e54
    1607:	1e 00 00 
    160a:	c7 05 58 1e 00 00 58 	movl   $0x1e58,0x1e58
    1611:	1e 00 00 
    base.s.size = 0;
    1614:	b8 58 1e 00 00       	mov    $0x1e58,%eax
    1619:	c7 05 5c 1e 00 00 00 	movl   $0x0,0x1e5c
    1620:	00 00 00 
    1623:	e9 44 ff ff ff       	jmp    156c <malloc+0x2c>
    1628:	90                   	nop
    1629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1630:	8b 08                	mov    (%eax),%ecx
    1632:	89 0a                	mov    %ecx,(%edx)
    1634:	eb b1                	jmp    15e7 <malloc+0xa7>
