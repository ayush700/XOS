integer main()
{
integer n;
integer fd;
integer i;
integer status;
read (n);

status=Create ("newfile.dat");
fd=Open("newfile.dat");
i=1;
while ( i <= n ) do
        status=Write(fd,i);
      i=i+1;
   endwhile;
   i=i+1;
status=Close(fd);   
return 0;
}


