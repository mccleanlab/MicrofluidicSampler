%%
close all; clear all;

%% Read in the data
ds_max=spreadsheetDatastore('Metric_MaximumIntensity.xlsx');
ds_ratio=spreadsheetDatastore('Metric_NucCytRatio.xlsx');

ds_max.ReadSize='sheet';
ds_ratio.ReadSize='sheet';

dummy=read(ds_max);
MaxData=read(ds_max);
MaxData=MaxData{:,:};

dummy=read(ds_ratio);
RatData=read(ds_ratio);
RatData=RatData{:,:};

%% Plot all data together (all stage positions)
%Plot boxplots for the average of all frames
figure
boxplot(MaxData(:,2), MaxData(:,5),'PlotStyle','compact','Colors','b');
xticks(0:5:35)
xticklabels(0:2*5:2*35)
title('Hog1 Localization (Max Metric, All Positions)')
ylim([50 200])
xlabel('Time (min)', 'Fontsize', 12)
ylabel('Hog1-GFP Localization (max intensity, a.u.)')


figure
boxplot(RatData(:,2), RatData(:,5),'PlotStyle','compact','Colors','k');
xticks(0:5:35)
xticklabels(0:2*5:2*35)
title('Hog1 Localization (Ratio Metric, All Positions)')
ylim([0.8 1.6])
xlabel('Time (min)', 'Fontsize', 12)
ylabel('Hog1-GFP Localization (nuc/cyt)')

%% Plot by circle vs straight
%Plot boxplots for the average of all frames in the circle vs the straight

%Plot the straight positions for the Max Intensity Data
figure
[I,J]=find(MaxData(:,4)>2);
boxplot(MaxData(I,2), MaxData(I,5),'PlotStyle','compact','Colors','b');
xticks(0:5:35)
xticklabels(0:2*5:2*35)
title('Hog1 Localization (Max Metric, Straight Channel)')
ylim([50 200])
xlabel('Time (min)', 'Fontsize', 12)
ylabel('Hog1-GFP Localization (max intensity, a.u.)')

%Plot the circle positions for the Max Intensity Data
figure
[I,J]=find(MaxData(:,4)<3);
boxplot(MaxData(I,2), MaxData(I,5),'PlotStyle','compact','Colors','b')
xticks(0:5:35)
xticklabels(0:2*5:2*35)
title('Hog1 Localization (Max Metric, Circular Positions)')
ylim([50 200])
xlabel('Time (min)', 'Fontsize', 12)
ylabel('Hog1-GFP Localization (max intensity, a.u.)')

%Plot the straight positions for the Ratio Data
figure
[I,J]=find(RatData(:,4)>2);
boxplot(RatData(I,2), RatData(I,5),'PlotStyle','compact','Colors','k');
xticks(0:5:35)
xticklabels(0:2*5:2*35)
title('Hog1 Localization (Ratio Metric, Straight Positions)')
ylim([0.8 1.6])
xlabel('Time (min)', 'Fontsize', 12)
ylabel('Hog1-GFP Localization (nuc/cyt)')

%Plot the circle positions for the Ratio Data
figure
[I,J]=find(RatData(:,4)<3);
boxplot(RatData(I,2), RatData(I,5),'PlotStyle','compact','Colors','k')
xticks(0:5:35)
xticklabels(0:2*5:2*35)
title('Hog1 Localization (Ratio Metric, Circular Positions)')
ylim([0.8 1.6])
xlabel('Time (min)', 'Fontsize', 12)
ylabel('Hog1-GFP Localization (nuc/cyt)')


return



