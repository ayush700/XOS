integer main ()
{
integer status;
integer fd1;
integer fd2;
integer i;
integer fd3;
string num;
integer wstatus;
status = Create ("Odd.dat");
fd1 = Open("Odd.dat");
   i=50;
   while ( i < 101 ) do
      if (i%2!=0) then
      status=Write(fd1,i);
      endif;
      i=i+1;
   endwhile;
   i=0;
status = Close (fd1);
status = Create ("even.dat");
fd2 = Open("even.dat");
   i=50;
   while ( i < 101 ) do
      if (i%2==0) then
      status=Write(fd1,i);
      endif;
      i=i+1;
   endwhile;
status = Close (fd2);
i=0;
status=Create("merge6.dat");
fd3=Open("merge6.dat");
fd1 = Open("Odd.dat");
fd2 = Open("even.dat");
while ( status != -1 ) do
   status=Read(fd1,num);
    if (num != "") then
      wstatus=Write(fd3,num);   
    endif;
   status=Read(fd2,num);
      if (num != "") then
      wstatus=Write(fd3,num);
      endif;
   i=i+1;
endwhile; 
status=Close(fd3);
status=Close(fd2);
status=Close(fd1);
status=Delete("merge.dat");
status=Delete("merge2.dat");
status=Delete("merge3.dat");
status=Delete("merge4.dat");
status=Delete("merge5.dat");
status=Delete("merge6.dat");












return 0;
}
