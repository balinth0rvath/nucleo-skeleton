volatile int a = 0;
static volatile int b = 7;
const volatile char arr[128];


int foo(int* arg)
{
	a++;
	b++;
}

int main()
{
 int c=5;
	int a=1;
 char ch='a';
 char *ptr;
 ptr = &ch;
	a = a + 1;	
	for(c=53;c<55;c++)
	{
		foo(&a);
		a=a+c;
	}
}
