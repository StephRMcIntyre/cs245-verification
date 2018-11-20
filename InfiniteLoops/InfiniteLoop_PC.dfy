// InfiniteLoop_PC -- Stephanie McIntyre
// Based on examples in class 

/* This method is satisfied under Partial Correctness, but NOT Total Correctness
   Do you know why? */
   
method InfiniteLoop_PC()
  /*Pre-Condition*/  requires true;
  /*Post-Condition*/ ensures true; 
{
  var x := 0;
  while(true)
  {
    x := x+1;
  }
}
