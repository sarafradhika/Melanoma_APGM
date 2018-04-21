clc
clear all
close all

ds = datastore('ToRead.xlsx')
T = read(ds)

save data.mat

% One row for each gene, one column for each experiment
[r,c] = size(T);

% Pulling data for gene expression values
t = table2array(T(1:r,4:c));
t = t';

% Pulling data for names of genes (nodes)
genes = table2array(T(:,2));

fileID = fopen('genes.txt','w');
fprintf(fileID,'%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f \n',t);
fclose(fileID);

type genes.txt

R = dlmread('genes.txt')