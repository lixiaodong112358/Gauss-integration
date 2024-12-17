function [Gauss_weight,Gauss_nodes]=generate_Gauss_reference_1D( Gauss_type)

switch Gauss_type
    case 1
        Ai=2;
        xi=0;
    case 2
        Ai=[1, 1];
        xi=[-1/sqrt(3),  1/sqrt(3)];        
    case 3
        Ai=[0.555555556,   0.555555556,    0.88888889];
        xi=[0.7745966692, -0.7745966692,  0];
    case 4 
        Ai=[0.3478548451,0.3478548451,0.6521451549,0.6521451549];
        xi=[0.8611363116,-0.8611363116,0.3399810436,-0.3399810436];            
end
Gauss_weight=Ai;
Gauss_nodes=xi;
end