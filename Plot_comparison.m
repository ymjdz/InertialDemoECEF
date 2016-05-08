function Plot_comparison(profile1,profile2)
%Plot in_profile and out_profile together for comparison
%   此处显示详细说明

fig = figure;
[R_N1,R_E2] = Radii_of_curvature(profile1(1,2));
[R_N2,R_E2] = Radii_of_curvature(profile2(1,2));

subplot(3,1,1)
plot(profile1(:,1),((profile1(:,2) - profile1(1,2)) * (R_N1 + profile1(1,4))),...
    'LineWidth',1.5);
hold on
plot(profile2(:,1),((profile2(:,2) - profile2(1,2)) * (R_N2 + profile2(1,4))),...
    'LineWidth',1.5);
title('North displacement, m');
legend('in','out')

subplot(3,1,2)
plot(profile1(:,1),((profile1(:,3) - profile1(1,3)) * (R_N1 + profile1(1,4)) *...
    cos(profile1(1,2))),'LineWidth',1.5);
hold on
plot(profile2(:,1),((profile2(:,3) - profile2(1,3)) * (R_N2 + profile2(1,4)) *...
    cos(profile2(1,2))),'LineWidth',1.5);
title('East displacement, m');
legend('in','out')

subplot(3,1,3)
plot(profile1(:,1),(profile1(1,4) - profile1(:,4)),'LineWidth',1.5);
hold on
plot(profile2(:,1),(profile2(1,4) - profile2(:,4)),'LineWidth',1.5);
title('Down displacement, m');
legend('in','out')

end

