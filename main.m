% Laboratory expirement 3 
clc
close all

% Investigation sliding mode in relay system 
%Part 1
%Model description 
jmod=input('Enter model number of Part1 jmod='); 
if jmod == 10
    % xos - Output of plant
    % xs0- Initial pertubation
    % Wp(s)=k0/(T*s+1)-Plant transfer function 
    % Wcn(s)=kp+kd*N*s/(s+N)-Transfer function of PID controller
    % N=100 - Number of steps
    % Parameters a,b of nonlinear element
    k0=3;
    T=0.3;
    xs0=0.1; % |xs0| < k0*b Initial pertubation
    g=0.0; % 0.2; 0.8; % Input signal
    a=0.05; % 0.1
    b=1;
    % Parameters of PID controller
    kp=3; kd=1; % Slope of switch line -kp/kd kd=-1
    % Call Simulink model 
    open('NonLinMod10.mdl');
    sim('NonLinMod10');  
    disp('Examine Simulink close in model results. Then press any key')
    pause
end

if jmod == 9
    % xos - Output of plant 
    % xs0- Initial pertubation
    % Wp(s)=k0/(T^2*s^2+2*T*ksi*s+1) - Plant transfer function
    % Wcn1(s)=kp - Transfer function of PID controller in direct line
    % Wcn2(s)=kd*N*s/(s+N)-Transfer function of PID controller in feedback
    % N=100 - Number of steps
    % Parameters a,b of nonlinear element
    k0=2;
    T=0.2; ksi=0.4;
    xs0=0.5; %|xs0| < k0*b Inintial pertubation
    g=0; % 0.2; 0.8; % Input signal
    a=0.05; % 0.5; 1.2
    b=1;
    % Parameters of PID controller
    kp=10; kd=5; % Slope of switch line -kp/kd % kd=-5
    % Call Simulink model 
    open('NonLinMod9.mdl');
    sim('NonLinMod9');  
    disp('Examine Simulink close in model results. Then press any key')
    pause    
end

if jmod == 8
   %xos - Plant state space vector
   %xs0- Initial pertubation 
   %A,B,C - Plant matrixes
   %K - Feedback matrix
   % Parameters a,b of nonlinear element
   A=[0 1; -1 -0.4]; %[0 1; 1 0.4] 
   B=[3; 0];
   C=[1 0]; D=0;
   xs0=[0.7; 0]; %[0.5; 0], [0.2; 0]; Initial pertubation
   g=0; % 0.2; 0.8; 1.5 Input signal
   a=0.02; % 0.02 0.4; 
   b=1;
   % Feedback parameters
   K=[0.8 0.2]; % [0.8; 0.9]
   open('NonLinMod8.mdl');
   sim('NonLinMod8');  
   disp('Examine Simulink close in model results. Then press any key')
   pause
end

if jmod == 7
    % xos - Output of plant
    % xs0- íInitial pertubation
    % Wp(s)=k0(T1*s+1)/(T^2*s^2+2*T*ksi*s+1) - Plant transfer function
    % Wcn1(s)=kp - Transfer function of PID controller in direct line
    % Wcn2(s)=kd*N*s/(s+N)-Transfer function of PID controller in feedback
    % N=100 - Number of steps
    % Parameters a,b of nonlinear element
    k0=4;
    T=0.8; ksi=0.2;
    T1=0.3;
    xs0=1.5; %|xs0| < k0*b Initial pertubation
    g=0.0; % 0.2; 0.8; Input signal
    a=0.05; % 0.5; 1.2
    b=1;
    % Parameters of PID controller
    kp=3; kd=2; % Slope of switch line -kp/kd % kd=-2
    % Call Simulink model 
    open('NonLinMod7.mdl');
    sim('NonLinMod7');  
    disp('Examine Simulink close in model results. Then press any key')
    pause        
end

if jmod == 6
    % xos - Output of plant
    % xs0- Inintial pertubation
    % Wp(s)=k0*(T1*s+1)/(T*s+1)^2 - Plant transfer function
    % Wcn(s)=kp+kd*N*s/(s+N)-Transfer function of PID controller in direct line
    % N=100 - Number of steps
    % Parameters a,b of nonlinear element
    k0=3;
    T=0.2;
    T1=0.1;
    xs0=0.5; % |xs0| < k0*b Initial pertubation
    g=0; % 0.2; 0.8; Input signal
    a=0.05; % a=0.05; 0.1; 0.5
    b=1;
    % Parameters of PID controller
    kp=4; kd=3; % Slope of switch line -kp/kd kd=-1
    % Call Simulink model 
    open('NonLinMod6.mdl');
    sim('NonLinMod6');  
    disp('Examine Simulink close in model results. Then press any key')
    pause    
end

if jmod == 5
   %xos - Plant state space vector
   %xs0- Initial perturbation 
   %A,B,C - Plant matrixes
   %K - Feedback matixes
   % Parameters a,b of nonlinear element
   A=[0 1;-5 -3]; %[0 1; -1 -0.4] 
   B=[2; 0];
   C=[1 0]; D=0;
   xs0=[0.9; 0]; %[0.3; 0], [0.2; 0]; Initial perturbation
   g=0.0; % 0.2; 0.8; % Input signal
   a=0.03; % 0.03 0.3; 0.5
   b=1;
   % Feedback parameters
   K=[8 2]; % [0.5; 0.2]
   open('NonLinMod5.mdl');
   sim('NonLinMod5');  
   disp('Examine Simulink close in model results. Then press any key')
   pause    
end

if jmod == 4
    % xos - Output of plant
    % xs0- Initial perturbation
    % Wp(s)=k0/(T^2*s^2+2*T*ksi*s+1) - Plant transfer function
    % Wcn1(s)=kp - Transfer function of PID controller in direct line
    % Wcn2(s)=kd*N*s/(s+N)-Transfer function of PID controller in feedback
    % N=100 - Number of steps
    % Parameters a,b of nonlinear element
    k0=5;
    T=0.1; ksi=0.6;
    xs0=1.8; %|xs0| < k0*b Initial perturbation
    g=0; % 0.2; 0.8; Input signal
    a=0.03; % 0.03; 0.3; 1.1
    b=1;
    % Parameters of PID controller
    kp=5; kd=2; % Slope of switcn line -kp/kd % kd=-5
    % Call Simulink model 
    open('NonLinMod4.mdl');
    sim('NonLinMod4');  
    disp('Examine Simulink close in model results. Then press any key')
    pause    
end

if jmod == 3
   %xos - Plant state space vector
   %xs0- Initial pertubation 
   %A,B,C - Plant matrixes
   %K - Feedback matrix
   % Parameters a,b of nonlinear element
   A=[-1 1;-2 -3]; %[-1 1; -4 -0.4] 
   B=[2; 0];
   C=[1 0]; D=0;
   xs0=[1.7; 0]; %[0.8; 0], [0.2; 0];
   g=0; % 0.2; 0.8; 1.5
   a=0.05; % 0.05 0.4; 
   b=1;
   % Feedback parameters
   K=[1 0.5]; % [0.35; 0.2]
   open('NonLinMod5.mdl');
   sim('NonLinMod5');  
   disp('Examine Simulink close in model results. Then press any key')
   pause   
end

if jmod == 2
   %xos - Plant state space vector
   %xs0- Initial perturbation 
   %A,B,C - Plant matrixes
   %K - Feedback matrix
   % Parameters a,b of nonlinear element
   A=[-2 1; -2 -0.9]; %[0 2; -2 -0.8] 
   B=[1; 0];
   C=[1 0]; D=0;
   xs0=[0.9; 0]; %[0.6; 0], [0.1; 0]; Initial perturbation
   g=0.0; % 0.2; 0.8; Input signal
   a=0.01; % 0.01 0.3; 0.9
   b=1;
   % Feedback parameters
   K=[1.8 0.3]; % [0.9; 0.9]
   open('NonLinMod2.mdl');
   sim('NonLinMod2');  
   disp('Examine Simulink close in model results. Then press any key')
   pause    
end

if jmod == 1
   %xos - Plant state space vector
   %xs0- Inintial pertubation 
   %A,B,C - Plant matrixes
   %K - Feedback matrix
   % Parameters a,b of nonlinear element
   A=[-3 1;-8 -9]; %[-1 1; -2 -1.4] 
   B=[0.5; 0];
   C=[1 0]; D=0;
   xs0=[1.9; 0]; %[0.3; 0], [0.2; 0]; Initial perturbation
   g=0.8; % 0.2; 0.8; Input signal 
   a=0.01; % 0.01 0.5; 0.8
   b=1;
   % Feedback parameters
   K=[9 4]; % [1.5; 1.2]
   open('NonLinMod1.mdl');
   sim('NonLinMod1');  
   disp('Examine Simulink close in model results. Then press any key')
   pause    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% end Part 1



