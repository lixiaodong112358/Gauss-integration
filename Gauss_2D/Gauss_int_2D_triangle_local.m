function result=Gauss_int_2D_triangle_local(vertices_triangle,function_name,Gauss_type)
%%%%��������������������ĳ�������ĸ�˹����ֵ
%%%%2021/5/8��������
[Gauss_point_reference_triangle,Gauss_coefficient_reference_triangle]=generate_Gauss_reference_triangle(Gauss_type);
[Gauss_coefficient_local_triangle,Gauss_point_local_triangle]=generate_Gauss_local_triangle(Gauss_coefficient_reference_triangle,Gauss_point_reference_triangle,vertices_triangle);
GPN=0;
for i=1:Gauss_type
       GPN=GPN+feval( function_name,Gauss_point_local_triangle(i,1),Gauss_point_local_triangle(i,2) )*Gauss_coefficient_local_triangle(i);
end
result=GPN;
end