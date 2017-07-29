%Polar coordinates
function pcimg=imc2p(img,rmax,angle)

   if nargin < 1
      error('Please specify an image!');
   end
  
%    img = double(img);
   [rows,cols,repeat] = size(img);
   yc = round(rows/2);
   xc = round(cols/2);
   
   if exist('radius','var') == 0
      rmax = min(round(rows/2),round(cols/2))-1;
   end
  
   if exist('angle','var') == 0
      angle = 360;
   end
 
   pcimg = [];
   for k=1:repeat
       i = 1;
       for r=0:rmax
           j = 1;
           for a=0:2*pi/angle:2*pi-2*pi/angle
               pcimg(i,j,k) = img(yc+round(r*sin(a)),xc+round(r*cos(a)));
               j = j + 1;
           end
           i = i + 1;
       end
   end
end