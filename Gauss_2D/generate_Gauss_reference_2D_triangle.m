function result=generate_Gauss_reference_2D_triangle(Gauss_type)
%%%%����һά��˹�ڵ�͸�˹Ȩ�أ����������βο���Ԫ�ĸ�˹�ڵ��˹Ȩ��
%%%%2021/5/8��������
[Gauss_weight,Gauss_nodes]=generate_Gauss_reference_1D(Gauss_type);
vector=zeros(Gauss_type*Gauss_type,3);
k=1;
for i=1:Gauss_type
   for j=1:Gauss_type
       vector(k,1)=(1+Gauss_nodes(j))/2;
       vector(k,2)=(1-Gauss_nodes(j))*(1+Gauss_nodes(i))/4;
       vector(k,3)=(1-Gauss_nodes(j))/8*Gauss_weight(j)*Gauss_weight(i);
       k=k+1;
   end
end
result=vector;
end