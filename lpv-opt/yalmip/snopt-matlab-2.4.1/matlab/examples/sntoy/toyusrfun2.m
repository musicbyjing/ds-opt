function [F,G] = toyusrfun2(x)
%        [F,G] = toyusrfun2(x)
% returns dense G.

F  = [ 3*x(1)   +  (x(1)   + x(2) + x(3))^2 + 5*x(4);
       4*x(2)   + 2*x(3);
         x(1)   +   x(2)^2 + x(3)^2;
         x(2)^4 +   x(3)^4 + x(4) ];

J = [ 1,  1,  2*(x(1)+x(2)+x(3)) + 3;
      1,  2,  2*(x(1)+x(2)+x(3));
      1,  3,  2*(x(1)+x(2)+x(3));
      1,  4,  5;
      2,  2,  4;
      2,  3,  2;
      3,  1,  1;
      3,  2,  2*x(2);
      3,  3,  2*x(3);
      4,  2,  4*x(2)^3;
      4,  3,  4*x(3)^3;
      4,  4,  1 ];

iGfun = J(:,1); jGvar = J(:,2); G = J(:,3);
G = sparse(iGfun,jGvar,G);
G = full(G);
