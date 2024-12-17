function [Gauss_coefficient_local_2D,Gauss_point_local_2D]=generate_Gauss_local_quadrilateral(Gauss_coefficient_reference_2D,Gauss_point_reference_2D,vertices_rectangle)
%%对于四边形 生成局部高斯节点
%%2021 12 25 李晓东
x1=vertices_rectangle(1,1);
y1=vertices_rectangle(2,1);
x2=vertices_rectangle(1,2);
y2=vertices_rectangle(2,2);
x3=vertices_rectangle(1,3);
y3=vertices_rectangle(2,3);
x4=vertices_rectangle(1,4);
y4=vertices_rectangle(2,4);

s=Gauss_point_reference_2D(:,1);
t=Gauss_point_reference_2D(:,2);

%%计算雅可比矩阵的行列式绝对值
Jacobi=x4*(y1-s*(y1-y2)+t*y2-y3-t*y3)+x3*(-t*y1+s*(y1-y2)-y2+y4+t*y4)+x2*((-1+t)*y1+(1+s)*y3-(s+t)*y4)+x1*(y2-t*y2+t*y3-y4+s*(-y3+y4));
Jacobi=abs(Jacobi'/8);

Gauss_coefficient_local_2D=Gauss_coefficient_reference_2D.*Jacobi;


Gauss_point_local_2D(:,1)=((1-s).*(1-t)*x1+(1+s).*(1-t)*x2+(1+s).*(1+t)*x3+(1-s).*(1+t)*x4)/4;
Gauss_point_local_2D(:,2)=((1-s).*(1-t)*y1+(1+s).*(1-t)*y2+(1+s).*(1+t)*y3+(1-s).*(1+t)*y4)/4;


end