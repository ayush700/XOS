integer main ()
{
   integer status;
   integer fd;
   string word;
   integer i;
   integer n;
   
   integer ctr;
   ctr=0;
   fd = Open("newfile.dat");
   while (status == 0) do
      status=Read(fd,word);
      if ( word == "") then
      break;
      endif;
      
   endwhile;
   status=Seek(fd,-2);
   while (status!=-1) do
      
      status=Read(fd,word);
      status=Seek(fd,-2);
      if(word!="") then
      print(word);
      endif;
      
   endwhile;
   
   status = Close(fd);
return 0;   
}

