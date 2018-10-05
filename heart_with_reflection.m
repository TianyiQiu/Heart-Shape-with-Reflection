% how to draw 'Heart with Shadow'
[x,y,z]=meshgrid(linspace(-1.3,1.3));
s=(x.^2 + (9/4)*y.^2 + z.^2 - 1).^3 - x.^2.*z.^3 - (1/9)*y.^2.*z.^3;
isosurface(x+0.6,y+0.6,z+0.6,s+0.6,0.6)
axis equal
camlight
lighting gouraud
text(-1,-2,-2,'Heart with Shadow by Tianyi, 10/3/2018','FontSize', 12,'color','k')
hold;

[a,b,c]=meshgrid(linspace(-1.3,1.3));
s=(a.^2 + (9/4)*b.^2 + c.^2 - 1).^3 - a.^2.*c.^3 - (1/9)*b.^2.*c.^3;
isosurface(-x+0.2,-y-0.6,-z-0.6,-s-0.6,-0.6)
axis equal
colormap([0.98,0.6,0.7])
camlight
lighting gouraud

view(-20,34)
