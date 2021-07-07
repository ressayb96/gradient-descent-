x0 = [-0.5;0] ;
rho = 0.01;
eps = 0.00001 ;
err = 1000;
k = 0;

while(err>eps)
    
grad = -[-2*x0(1)-400*x0(1)^3+400*x0(1)*x0(2)+2 ; 200*(x0(1)^2-x0(2))];

F=@(rh)((1-(x0(1)-rh*grad(1)))^2+100*((x0(1)-rh*grad(1))^2-(x0(2)-rh*grad(2)))^2);
[rh,Fval] = fminsearch(F,rho) ;
X = x0-rh*grad;
err = norm(X-x0);

x0 = X ;

end



 
