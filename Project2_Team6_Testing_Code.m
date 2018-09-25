%========For Prediction===========%
close all, clear all, clc;
data=xlsread('project2_time series data_students.xlsx'); % Given data
y_train = data(1:275)'; % y in rows for training
x_train  = 1:275; % x for training

subplot(2,1,1)
plot(data,'b');
legend('Given data');
xlabel('Time');
ylabel('y values');
hold on;
subplot(2,1,2)
plot(y_train,'r');
legend('training data');
xlabel('Time');
ylabel('y values');

y_train=con2seq(y_train);% y train to sequential (create arays)

%x=con2seq(y_train');
% NAR (USING NTS TOOLBOX)
net=narnet(1:25,4);% 25 delay and 4 Hidden Neurons
net.trainFcn='trainlm';% Training using Levenberg- Marquadt Algorithm
[Xs,Xi,Ai,Ts] = preparets(net,{},{},y_train);

net.divideParam.trainRatio = 75/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 10/100;
net.trainParam.max_fail = 100;
net.trainParam.min_grad=1e-5;
net.trainParam.show=5;
net.trainParam.lr=0.9;
net.trainParam.epochs=5000;
net.trainParam.goal=1e-8;

i=0;                %(8 iterations)
for i= 1:8
    net = train(net,Xs,Ts,Xi,Ai);
end

view(net)

[netc,xic,aic] = closeloop(net,Xi,Ai);
[y2,xfc,afc] = netc(cell(0,30),xic,aic);% Predict 30 values 
y2=cell2mat(y2);% change Cell Array to dataset
y2=y2';
predictdata=y2;
%newdata=append(data,predictdata);

figure(3)
% subplot(2,1,1);
xlabel('Timesteps in years');
ylabel('Value');
plot(276:305,y2,'g')
hold on;
plot(1:275,data,'r')
legend('Predicted data','Actual Data');
%========For Prediction===========%















