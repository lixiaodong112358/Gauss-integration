function [Gauss_coefficient_reference_rectangle,Gauss_point_reference_rectangle]=generate_Gauss_reference_rectangle(Gauss_point_number)
%%%������[-1,1] *[-1,1]�ο����ε�Ԫ�ϵĸ�˹�ڵ㣬��˹�ڵ�����4��9��16��
if Gauss_point_number==4
     Gauss_coefficient_reference_rectangle=[1,1,1,1];
     Gauss_point_reference_rectangle=[-0.577350269189626,-0.577350269189626;-0.577350269189626,0.577350269189626;0.577350269189626,-0.577350269189626;0.577350269189626,0.577350269189626];
elseif Gauss_point_number==9
     Gauss_coefficient_reference_rectangle=[0.308641975802469,0.308641975802469,0.493827161506173,0.308641975802469,0.308641975802469,0.493827161506173,0.493827161506173,0.493827161506173,0.790123458765432];
     Gauss_point_reference_rectangle=[0.774596669200000,0.774596669200000;0.774596669200000,-0.774596669200000;0.774596669200000,0;-0.774596669200000,0.774596669200000;-0.774596669200000,-0.774596669200000;-0.774596669200000,0;0,0.774596669200000;0,-0.774596669200000;0,0];
elseif Gauss_point_number==16  
     Gauss_coefficient_reference_rectangle=[0.121002993259545,0.121002993259545,0.226851851840455,0.226851851840455,0.121002993259545,0.121002993259545,0.226851851840455,0.226851851840455,0.226851851840455,0.226851851840455,0.425293303059545,0.425293303059545,0.226851851840455,0.226851851840455,0.425293303059545,0.425293303059545];
     Gauss_point_reference_rectangle=[0.861136311600000,0.861136311600000;0.861136311600000,-0.861136311600000;0.861136311600000,0.339981043600000;0.861136311600000,-0.339981043600000;-0.861136311600000,0.861136311600000;-0.861136311600000,-0.861136311600000;-0.861136311600000,0.339981043600000;-0.861136311600000,-0.339981043600000;0.339981043600000,0.861136311600000;0.339981043600000,-0.861136311600000;0.339981043600000,0.339981043600000;0.339981043600000,-0.339981043600000;-0.339981043600000,0.861136311600000;-0.339981043600000,-0.861136311600000;-0.339981043600000,0.339981043600000;-0.339981043600000,-0.339981043600000];
else
     warning='��˹�ڵ����������Ŀǰֻ֧��4��9��16��'
end