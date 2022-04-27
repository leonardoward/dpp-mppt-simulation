%clear
close all
%------------------------------------------------------
% Reading data from simout
%------------------------------------------------------
PString = simout(:,1);
VString = simout(:,2);
IString = simout(:,3);
Vpv1 = simout(:,4);
Vpv2 = simout(:,5);
Ipv1 = simout(:,6);
Ipv2 = simout(:,7);
Idpp1 = simout(:,10);
Idpp2 = simout(:,11);
%------------------------------------------------------
% Plots
%------------------------------------------------------

%PString[W] vs VString[V]
fig = figure();
plot(VString, PString);
xlabel("Voltage [V]");
ylabel("Power [W]");
axis(gca,[0,100,0,250]);
title("PString[W] vs VString[V]");
saveas(fig,"PV.jpg")
grid;

%IString[I] vs VString[V]
fig = figure();
plot(VString, IString);
xlabel("Voltage [V]");
ylabel("Current [A]");
axis(gca,[0,100,0,6]);
title("IString[I] vs VString[V]");
saveas(fig,"IV.jpg")
grid;

%I_PV[I] vs VString[V]
%fig = figure();
%plot(VString, Ipv1, VString, Ipv2);
%xlabel("Voltage [V]");
%ylabel("Current [A]");
%axis(gca,[0,100,0,6]);
%title("I_P_V[I] vs VString[V]");
%legend("I_P_V_1", "I_P_V_2", "I_P_V_3");
%grid;

%P_PV[W] vs VString[V]
%fig = figure();
%plot(VString, VString.*Ipv1, VString, VString.*Ipv2);
%xlabel("Voltage [V]");
%ylabel("Power [W]");
%axis(gca,[0,100,0,350]);
%title("P_P_V[W] vs VString[V]");
%legend("P_P_V_1", "P_P_V_2", "P_P_V_3");
%grid;

