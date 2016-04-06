#include<stdio.h>

#include<math.h>

#include<conio.h>

#include<windows.h>

#include<stdlib.h>

#include<string.h>

//定义信息链表的结点结构
struct node
{
      
    struct node *next;
};


typedef struct node NODE;

double principal=0,mount=0;

int year=0;

int n=1;

double rate;

void way(int bj,double S[3]);

 void meu()
 {
printf("|----------------------------------------|\n");

printf("|          0.清屏                        |\n");

printf("|          1.复利计算                    |\n");

printf("|          2.单利计算                    |\n");
	
printf("|          3.计算本金                    |\n");

printf("|          4.年限计算                    |\n");

printf("|          5.利率估算                    |\n");

printf("|          6.等额定投                    |\n");

printf("|          7.等额还款                    |\n");

printf("|          8.投资组合                    |\n");

printf("|          9.记录保存                    |\n");

printf("|----------------------------------------|\n");
 } 

void danli(){

		printf("请输入的本金：");

p:scanf("%lf",&principal);

  if(principal<=0){

printf("请输入大于0的本金\n");

goto  p;
  }

else

{
printf("请输入年限：");

o:scanf("%d",&year);

if(year<=0||year>100){

printf("请输入合法的年限(1--100)\n");
goto o;
}
  else
  {
	  printf("请输入年利率：");

    scanf("%lf",&rate);

    mount=principal+principal*rate*year;

    printf("本息为：%.2lf\n",mount);


  }

}


}

void fuli(){

 

p:printf("请输入本金：");

    scanf("%lf",&principal);

	 if(principal<=0){

printf("请输入大于0的本金\n");

goto  p;
	 }
else
{
    printf("请输入年限：");

o: scanf("%d",&year);
	if(year<=0||year>100){

printf("请输入合法的年限(1--100)\n");
goto o;
}
  else
  {

    printf("请输入年利率：");

    scanf("%lf",&rate);

    printf("请输入年复利次数:");

    scanf("%d",&n);

    rate=pow((1+rate/n),n)-1;

    mount=principal*pow((1+rate),year);

    printf("本息为：%.2lf\n",mount);

}

}

}

void principaljisuan(){

    printf("请输入期望的收益：");

    scanf("%lf",&mount);  

o:printf("请输入年限：");

    scanf("%d",&year);
		if(year<=0||year>100){

printf("请输入合法的年限(1--100)\n");
goto o;
}
  else
  {

    printf("请输入年利率：");

    scanf("%lf",&rate);

    printf("请输入年复利次数:");

    scanf("%d",&n);

    rate=pow((1+rate/n),n)-1;

    principal=mount/pow((1+rate),year);

    printf("输出所需本金为：%.2lf\n",principal);

 

}

}
void time()
{
    int flat=0;
    
    printf("请输入本利和:"); 

    scanf("%lf",&mount); 

    printf("请输入年回报率:");
	
    scanf("%lf",&rate);
	
p:printf("请输入本金:"); 

    scanf("%lf",&principal);

	 if(principal<=0){

printf("请输入大于0的本金\n");

goto  p;
	 }
else
{
    for(n=1;n<100;n++)    //穷举法求100年满足的计息期数
    {
        if((principal*(pow((1+rate),n)))>=mount)
        {
            printf("计息期数:%d\n\n",n);

            flat=1;

            break;

        }
    }
    if(flat==0)

        printf("在100年内没有符合计息期数!\n\n");
    
}

}
void lilv()
{
    
    printf("请输入本利和:"); 

    scanf("%lf",&mount); 

    printf("请输入复利次数（年）:"); 

    scanf("%d",&year); 

p:printf("请输入本金:");
  
    scanf("%lf",&principal);

	 if(principal<=0){
printf("请输入大于0的本金\n");

goto  p;
	 }
else
{
    rate=pow(mount/principal, 1.0/year)-1;

    printf("年利率为:%lf\n",rate);
}
}
void yearmount()//计算年金终值
 {
  int n;
p:printf("存入本金:");

     scanf("%lf",&principal);

	  if(principal<=0){

printf("请输入大于0的本金\n");

goto  p;
	 }
else
{
    printf("存入年限:");

o:scanf("%d",&year);

		if(year<=0||year>100){

printf("请输入合法的年限(1--100)\n");

goto o;
}
  else
  {

     printf("年利率:");

     scanf("%lf",&rate);

     printf("\t\t1:按年投资\n\t\t2:按月投资\n");

 A:printf("请选择你要的功能<1|2>:");

   scanf("%d",&n);

   if(n==1)
   {
       mount=principal*(pow(1+rate,year)-1)/rate;
      
   }
   else if(n==2)
   {
       mount=principal*12*(1+rate)*(pow(1+rate,year)-1)/rate;
   }
   else
   {
       printf("输入有误!请重新输入\n");
       goto A;

   }
   printf("%d年后的总产值:%.4lf\n",year,mount);
  
 }
}
}
 void huankuan()
 {

     printf("贷款金额:");

     scanf("%lf",&mount);

     printf("贷款年限:");

     scanf("%d",&year);

    printf("年利率:");

     scanf("%lf",&rate);

     principal=mount*rate/(12*(1-rate)*(pow(1-rate,year)-1));

    printf("贷款%.4lf每月需要还款%.4lf\n",mount,principal);
 }

 void touzi()//计算哪种投资方式的利益最大
 {
    int bj=0;
	double temp;
	double S[3];
	printf("\t请输入存储金额:");
	while(scanf("%lf",&principal)!=1||principal<=0)

    {

        printf("\t输入错误!!!\n\n\t*请重新输入存储金额:"); 

        getchar();   

    }   

	printf("\t请输入年利率:");
	  while(scanf("%lf",&rate)!=1||rate<=0)

    {

        printf("\t输入错误!!!\n\n\t*请重新输入利率:"); 

        getchar();    

    }   
    printf("\t请输入t投资时间(年):");
	while(scanf("%d",&year)!=1||year<=0||year>100)

    {

       printf("\t输入错误!!!\n\n\t*请重新输入投资时间(年):"); 

       getchar();  

    }
	S[0]=principal*pow((1+rate),n);//复利
	way(0,S);
	S[1]=principal*12*(pow(1+rate,year)-1)/rate;//等额月投
    way(1,S);
	S[2]=principal*(1+rate*year);//单利
	way(2,S);
	temp=S[0];
	for(int j=1;j<4;j++)
	{
		if(S[j]>temp)
		{
			temp=S[j];
			bj=j;
		}
	}
	printf("\t推荐:\n");
	
	way(bj,S);
 }
 void way(int bj,double S[3])//判断哪种投资方式的利益最大
 {
	 switch (bj)
	 {
	 case 0:printf("\t选择复利投资,本利和为%.2lf\n",S[0]);break;
	 case 1:printf("\t选择等额月投资,本利和为%.2lf\n",S[1]);break;
	 case 2:printf("\t选择等单利投资,本利和为%.2lf\n",S[2]);break;
	 }
 }

//*保存信息
void Save(NODE *head)
{
    FILE *fp ; 
    NODE *p;
    int count=0,flag=1 ;
    fp=fopen("d:\\employee.txt","wb");//指针方式打开二进制文件 //
    printf("文件已保存!\n");
    if(fp==NULL)
    {
        printf("文件打不开!");
        return ;
    }
    p=head->next ;
    while(p)
    {
        if(fwrite(p,sizeof(NODE),1,fp)==1)
        {
            p=p->next ;
            count++;
        }
        else
        {
            flag=0 ;
            break ;
        }
    }
   fprintf(fp,"%d",mount);
    fclose(fp);
}

 main(){

    FILE *fp;
	int k;
	char ch1;
 	NODE *head,*p,*q;
	k=1;
	head=(NODE *)malloc(sizeof(NODE));//申请结点
	head->next=NULL;//初始化
	q=head;
	fp=fopen("d:\\employee.txt","ab+");//以只写的方式，打开二进制文件
	if(fp==NULL)
	{
		printf("打不开文件!");
	}
	 while(!feof(fp))
    {
           p=(NODE*)malloc(sizeof(NODE));
        if(fread(p,sizeof(NODE),1,fp)==1)/*从指定磁盘文件读取记录*/
        {
            p->next=NULL;
            q->next=p ;/*构造链表*/
            q=p ;

        }
		
    }
 fprintf(fp,"%d",mount);
    fclose(fp);//关闭文件
    
     while(1){
    int num=0;
meu();

printf("请输入选择：");

scanf("%d",&num);
if(num==0) 
	  {
		  printf("\n该文件信息已经变化!请问是否保存它?(y/n)  ");
			getchar();
            scanf("%c",&ch1);
            if(ch1=='y'||ch1=='Y')
            {
	            Save(head);
            }
            printf("\n欢迎再次复利计算系统!\n");
            break;
        }

switch(num){
	case 0:
		num=0;system("cls");/*清屏*/
		break;

case 1:

    fuli(); 

    break;

case 2:

   danli();

    break;

case 3:

    principaljisuan();

break;
 case 4:

     time();
            
 break;

 case 5:

   lilv();

    break;
case 6:

   yearmount();

    break;

    case 7:

   huankuan();

    break;
case 8:

   touzi();

    break;
	case 9:

Save(head);

	break;
    
}
getch();
 }
 }

