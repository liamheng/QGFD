%calculate Quaternion Left generic Fourier descriptor(QGFD)
function fd=qgfd(input)
pcimg=imc2p(input);%Polar coordinates

qt_pcimg = convert(quaternion(pcimg(:,:,1), ...
                       pcimg(:,:,2), ...
                       pcimg(:,:,3)), 'double') ./ 256;

mu = unit(quaternion(1,1,1)); 
fpcimg  =  qfft2(qt_pcimg, mu, 'L') ; % This is F subscript L in the paper.

%%%%%%%%%%%%%%
fd=abs(fpcimg(:));
end


