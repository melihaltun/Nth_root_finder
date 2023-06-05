# Nth_root_finder
Finds the n_th root of a rational or complex number using Newton's method:


Matlab / Octave implementation of a root finding algorithm using Newton's method.
Given a number x and an a root n, the code returns the nth root of the given number. Both the number and the root can be fractional and/or negative.

A negative root inverts the base. For instance -7th root of 128 is 1/2 since (1/2)^-7 = 2^7 = 128

The code can handle complex numbers and even powers of negative numbers as well, unlike Matlab's built-in nthroot function:

![image](https://github.com/melihaltun/Nth_root_finder/assets/40482921/a3e5462c-2ad9-4c7c-ae1e-22d18c258d60)

![image](https://github.com/melihaltun/Nth_root_finder/assets/40482921/f18601fb-b62e-46a6-9818-168b66e33dd4)


Additional examples:

\>\>findRoot(-128,7)

ans =

   -2.0000
   
\>\>findRoot(128,-7)

ans =

   0.5000


\>\>5^2.357

ans =

   44.4091


\>\> findRoot(ans,2.357)

ans =

    5.0000


findRoot(-1,2)

ans =

       6.12323399573677e-17 +                     1i
       

findRoot(-1,4)

ans =

          0.707106781186548 +     0.707106781186547i
          

findRoot(-81,4)

ans =

           2.12132034355967 +      2.12132034355967i


findRoot(-27,3)

ans =

    -3
