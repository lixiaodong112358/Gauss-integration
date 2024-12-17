function result=generate_Gauss_line(function_name,vertices,Gauss_type)
%%%�����άƽ��������ֱ������ĸ�˹����
%%function_name:����������
%%Vertices:��������
%%Gauss_type����˹�ڵ���Ŀ
%%2021/5/26;
%%

x1=vertices(1,1);
x2=vertices(1,2);
y1=vertices(2,1);
y2=vertices(2,2);
%%
[Gauss_coefficient_reference_1D,Gauss_point_reference_1D]=generate_Gauss_reference_1D(Gauss_type);
Gpn=length(Gauss_coefficient_reference_1D);

if x1==x2
    %%%��ֱֱ��
    a=min(y1,y2);  %%��������
    b=max(y1,y2);  %%��������
    [Gauss_coefficient_local_1D,Gauss_point_local_1D]=generate_Gauss_local_1D(Gauss_coefficient_reference_1D,Gauss_point_reference_1D,a,b);
    int_value=0;
    for i=1:Gpn
       int_value=int_value+Gauss_coefficient_local_1D(i)*feval(function_name,x1,Gauss_point_local_1D(i));
    end
elseif y1==y2
    a=min(x1,x2);  %%��������
    b=max(x1,x2);  %%��������
    [Gauss_coefficient_local_1D,Gauss_point_local_1D]=generate_Gauss_local_1D(Gauss_coefficient_reference_1D,Gauss_point_reference_1D,a,b);
    int_value=0;
    for i=1:Gpn
        int_value=int_value+Gauss_coefficient_local_1D(i)*feval(function_name,y1,Gauss_point_local_1D(i));
    end
else
    a=min(x1,x2);  %%��������
    b=max(x1,x2);  %%��������
    [Gauss_coefficient_local_1D,Gauss_point_local_1D]=generate_Gauss_local_1D(Gauss_coefficient_reference_1D,Gauss_point_reference_1D,a,b);

    slope=(y2-y1)/(x2-x1);
    J=sqrt(1+slope^2);

    int_value=0;
    for i=1:Gpn
        xi=Gauss_point_local_1D(i);
        yi=slope*(xi-x1)+y1;
        Ai=Gauss_coefficient_local_1D(i);
        int_value=int_value+Ai*J*feval(function_name,xi,yi);
    end
end
   result=int_value; 

% end