function result=Gauss_int_2D(function_name,Gauss_type)
%%%%计算在标准三角形上面某个函数的高斯积分值、
%%%%2021/5/8，李晓东
[Gauss_weight,Gauss_nodes]=generate_Gauss_reference_1D(Gauss_type);
GPN=0;
for i=1:Gauss_type
   for j=1:Gauss_type
       k1=(1+Gauss_nodes(j))/2;
       k2=(1-Gauss_nodes(j))*(1+Gauss_nodes(i))/4;
       k3=(1-Gauss_nodes(j))/8;
       GPN=GPN+feval(function_name,k1,k2)*k3*Gauss_weight(j)*Gauss_weight(i);
   end
end
result=GPN;
end