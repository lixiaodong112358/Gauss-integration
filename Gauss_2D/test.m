clc
clear
close
%%%��˹�ڵ������Ҫȡ�ñȽ϶ࣻ
Gauss_type=16
vertices=[0,0;1,0;1/2,1;]';
function_name='f';
y=Gauss_int_2D_triangle_local(vertices,function_name,Gauss_type)
