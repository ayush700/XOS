integer main ()
{
integer status;
integer fd1;
integer fd2;
integer i;
status=Create("odd.dat");
print (status);
status=Create("even.dat");
print (status);
fd1=Open("odd.dat");
while (i<50) then
   if (i%2!=0) then
   status=Write(fd1,i);
   endif;
   i=i+1;
endwhile;
return 0;
}
