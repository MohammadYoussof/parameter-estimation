clf;
clc;
delete('Lorenz.avi');
% Solution
[t1,x1] = ode45('g',[0 30],[1;2;3]);
[t2,x2] = ode45('g2',[0 30],[1;2;3]);
[C,h] = size(x2);
ang = 0;
for j = 1:C p1(j,:)= x1(j,:); p2(j,:)= x2(j,:); % Plot plot3(p1(:,1),p1(:,2),p1(:,3),'k', p2(:,1),p2(:,2),p2(:,3),'r') hold on plot3(p1(1,1),p1(1,2),p1(1,3),'ko','mark­erfacecolor','k') plot3(p2(1,1),p2(1,2),p2(1,3),'rd','mark­erfacecolor','r') plot3(p1(j,1),p1(j,2),p1(j,3),'ko','mark­erfacecolor','k') plot3(p2(j,1),p2(j,2),p2(j,3),'rd','mark­erfacecolor','r') hold off axis([-20 20 -40 40 0 50]) axis off set(gca,'color','none') % Rotation camorbit(ang,0,[p1(1,1),p1(1,2),p1(1,3)]­) ang = ang + (360/C); % Record set(gcf, 'units','normalized','outerposition',[0 0 1 1]) F(j)= getframe(gcf);
end
%Creates AVI of Movie need FFDS otherwise it won't work (to run movie replace with this code "movie(F)")
movie2avi(F, 'Lorenz.avi','compression','FFDS');
clf;
close;
disp('Done');