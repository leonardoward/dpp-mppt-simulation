%clear
close all
test = 0;   % 0 for Single Input, 1 for multiple Inputs
doPlot = 1; % 1 to plot
%------------------------------------------------------
% Reading data from simout
%------------------------------------------------------
if test == 0 % Single Inputs
    SI_PString = simout(:,1);
    SI_VString = simout(:,2);
    SI_IString = simout(:,3);
    SI_Vpv1 = simout(:,4);
    SI_Vpv2 = simout(:,5);
    SI_Ipv1 = simout(:,6);
    SI_Ipv2 = simout(:,7);
    SI_Idpp1 = simout(:,10);
    SI_Idpp2 = simout(:,11);
elseif test == 1  % Multiple Inputs
    MI_PString = simout(:,1);
    MI_VString = simout(:,2);
    MI_IString = simout(:,3);
    MI_Vpv1 = simout(:,4);
    MI_Vpv2 = simout(:,5);
    MI_Ipv1 = simout(:,6);
    MI_Ipv2 = simout(:,7);
    MI_Idpp1 = simout(:,10);
    MI_Idpp2 = simout(:,11);
end
%------------------------------------------------------
% Plots
%------------------------------------------------------
if doPlot == 1
    %PString[W] vs VString[V]
    fig = figure();
    plot(SI_VString, SI_PString, MI_VString, MI_PString);
    xlabel("Voltage [V]");
    ylabel("Power [W]");
    axis(gca,[0,100,0,410]);
    legend("Single Input", "Multiple Inputs");
    title("PString[W] vs VString[V]");
    grid;
    saveas(fig,"PV_single_vs_multiple_inputs.jpg")
    
    %IString[I] vs VString[V]
    fig = figure();
    plot(SI_VString, SI_IString, MI_VString, MI_IString);
    xlabel("Voltage [V]");
    ylabel("Current [A]");
    axis(gca,[0,100,0,6]);
    legend("Single Input", "Multiple Inputs");
    title("IString[I] vs VString[V]");
    grid;
    saveas(fig,"IV_single_vs_multiple_inputs.jpg")  
end
