function [Gauss_coefficient_local_rectangle,Gauss_point_local_rectangle]=generate_Gauss_local_rectangle(Gauss_coefficient_reference_rectangle,Gauss_point_reference_rectangle,vertices_rectangle)

x1=vertices_rectangle(1,1);
y1=vertices_rectangle(2,1);
x2=vertices_rectangle(1,2);
y2=vertices_rectangle(2,2);
x3=vertices_rectangle(1,3);
y3=vertices_rectangle(2,3);
x4=vertices_rectangle(1,4);
y4=vertices_rectangle(2,4);
if abs(y2-y1)>1e-3&&abs(x3-x2)>1e-3
    warning='注意，这可能不是矩形!'
end
h1=x2-x1;
h2=y4-y1;
Jacobi=abs(h1*h2/4);
Gauss_coefficient_local_rectangle=Gauss_coefficient_reference_rectangle*Jacobi;
Gauss_point_local_rectangle(:,1)=h1/2*Gauss_point_reference_rectangle(:,1)+x1+h1/2;
Gauss_point_local_rectangle(:,2)=h2/2*Gauss_point_reference_rectangle(:,2)+y1+h2/2;
end