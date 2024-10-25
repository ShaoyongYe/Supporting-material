clc
echo on
figure(1)   %Evolution results of different initial states
[T,XY] = ode45(@func,[0,1],[0.1,0.1,0.1])
plot(T,XY(:,1),'m-*',T,XY(:,2),'b-+',T,XY(:,3),'c-^','linewidth',1.5)
hold on
[T,XY] = ode45(@func,[0,1],[0.3,0.3,0.3])
plot(T,XY(:,1),'m-*',T,XY(:,2),'b-+',T,XY(:,3),'c-^','linewidth',1.5)
hold on
[T,XY] = ode45(@func,[0,1],[0.5,0.5,0.5])
plot(T,XY(:,1),'m-*',T,XY(:,2),'b-+',T,XY(:,3),'c-^','linewidth',1.5)
hold on
[T,XY] = ode45(@func,[0,1],[0.7,0.7,0.7])
plot(T,XY(:,1),'m-*',T,XY(:,2),'b-+',T,XY(:,3),'c-^','linewidth',1.5)
hold on
[T,XY] = ode45(@func,[0,1],[0.9,0.9,0.9])
plot(T,XY(:,1),'m-*',T,XY(:,2),'b-+',T,XY(:,3),'c-^','linewidth',1.5)
hold on
set(gca,'FontName','Times New Roman','FontSize',15)
xlabel('Time *100','FontSize',20)
ylabel('Proportion','FontSize',20)
ylim([0,1])
legend('Higher Efficiency Groups','Low Efficiency Groups','Local Government Groups')
print figure1.jpg -djpeg -r600


