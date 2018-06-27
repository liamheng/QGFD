# Quaternion-generic-Fourier-descriptor (QGFD)
This repository provides code of Quaternion generic Fourier descriptor (QGFD) for color object recognition.

Quaternion toolbox for Matlab is necessary to use this package. It is available from Sangwine's personal page,  http://privatewww.essex.ac.uk/~sjs/.

1. GFD_main.m is to show the calculation of generic Fourier descriptor for an image.
2. QGFD_main.m is to show the calculation of calculate quaternion generic Fourier descriptor for an image.
3. qgfd.m, input a color image and output the feature of QGFD.
4. center.m and imc2q.m are subfunctions for the calution of QFGD.

Details of QGFD refer to Li H, Liu Z, Huang Y, et al. Quaternion generic Fourier descriptor for color object recognition[J]. Pattern Recognition, 2015, 48(12): 3895-3903.

<img alt="scratch" src="qgfd.png" width='500'>  
<sub><b>Figure 1: </b> The main idea of QGFD. (a) an example image, (b) Fourier spectra distributions of (a), (c) image(a) rotated by 90◦, (d) Fourier spectra distributions of (c), (e) the polar image of (a), (f) Fourier spectra distributions of (e), (g) the polar image of (c), (h) Fourier spectra distributions of (g).</sub> 
