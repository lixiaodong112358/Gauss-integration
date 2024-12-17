clc
clear
close
vertices=[0,0;1,0;2,1;1,1;]';
Gauss_point_number=9;
[Gauss_coefficient_reference_2D,Gauss_point_reference_2D]=generate_Gauss_reference_rectangle(Gauss_point_number);
[Gauss_weight_local_2D,Gauss_nodes_local_2D]=generate_Gauss_local_quadrilateral(Gauss_coefficient_reference_2D,Gauss_point_reference_2D,vertices)
int_value=0;
%%
for i=1:Gauss_point_number
   int_value=Gauss_weight_local_2D(i)*f(Gauss_nodes_local_2D(i,1),Gauss_nodes_local_2D(i,2))+int_value;
    
    
end