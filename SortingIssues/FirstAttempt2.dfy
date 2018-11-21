// Sorting: 
//        Pre/Post Condition Issues - An investigation 
//                                      -- Stephanie McIntyre
// Based on examples in class 

// First Attempt 2 at specifying requirements for sorting array A in incrementing order
// We want our Hoare triple of (|Pre-Condition|) Code (|Post-Condition|) to hold iff A is properly sorted.

method sort(A: array<int>, n: int)
modifies A; requires n==A.Length;
/* Pre-Condition */   requires n>=0;            
/* Post-Condition */  ensures forall i,j:: 0<=i<=j<n ==> A[i]<=A[j];                    //This states that A is sorted.
                      ensures forall i:: exists k:: 0<=i<n && 0<=k<n && A[i]==old(A[k]) //Everything in A was in our old A

//Can we write code that does not sort A that still satisfies the requirements? 
//Consider the following program:
{
  //I am not going to code this one up, but consider the case when we have duplicates
  // A: [1|2|3|3]
  // Run some code...
  // A: [1|1|2|3]
  //Now, A is sorted, and everything in our modified A is in our old A, but it is not the same A...
  //We need to specify that this new A is like the old A, just re-arranged...
}
