decl
integer status;

enddecl
integer main()
{
 //Create,Open,Close,Write,Seek,Delete,Read
   //status=Create("myfile.dat"); // 0 indicates succes
   //print(status);               //-1 indicates failure
   status=Open("myfile.dat");   //-1 indicates failure
   print(status);
   //status= Write //(status,"Hello");                             //0-7 is the file decriptor
//   status=Seek(0,23); Seek(t,0,23) 
//   print (status);
//   status= Write (0,"Hello");                             //0-7 is the file decriptor
   string b ;
   status = Read(0,b);
   print (b);
   status=Close(0);        //0 indicates success
   print(status);               //-1 indicates failures
   status=Delete("myfile.dat"); // 0 indicates succes
   print(status);                // -1 indicates failure
   return 0;
}


