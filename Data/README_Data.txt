Image files contained in this folder:
-----------------------------------------
mCherry_nuc--This stack contains the mCherry-Htb2 images. 
YFP_cyt--This stack contains the Hog1-GFP images.
YFP_cyt_RB50--This stack contains the images from YFP_cyt processed using rolling ball 
subtraction with a radius of 50 pixels.

YFP_cyt_RB50 and mCherry_nuc were used with step1_analyzeImage.bsh and step2_analyzeResult.bsh
to extract individual cell parameters including max Hog1-GFP intensity, nuclear Hog1-GFP intensity, and 
and cytoplasmic Hog1-GFP intensity used to analyze Hog1 localization throughout the timecourse.


Additional Files:
------------------
Metric_NucCytRatio--Contains data to be imported into Matlab to plot the Hog1-GFP nuclear/cytoplasmic 
ratio over the timecourse of the experiment.

Metric_MaximumIntensity--Contains data to be imported into Matlab to plot the maximum Hog1-GFP
intensity over the timecourse of the experiment.


