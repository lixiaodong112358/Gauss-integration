clc
clear
close
%%%
%%���ű����ڸ���һά��˹�ڵ����� [-1,1]*[-1,1]����ĸ�˹�ڵ�
Gauss_type=4;
[Gauss_weight,Gauss_nodes]=generate_Gauss_reference_1D( Gauss_type);
%%
 Gauss_nodes_ref_rec=[];
 Gauss_weight_ref_rec=[];
for i=1:Gauss_type
    for j=1:Gauss_type
        Gauss_nodes_ref_rec=[Gauss_nodes_ref_rec;Gauss_nodes(i),Gauss_nodes(j);];
        Gauss_weight_ref_rec=[Gauss_weight_ref_rec,Gauss_weight(i)*Gauss_weight(j)];
    end
end