clc
clear all
close all

load data.mat

% One row for each gene, one column for each experiment
[r,c] = size(T);

% Pulling data for gene expression values
t = table2array(T(1:r,4:c));

% Pulling data for names of genes (nodes)
genes = table2array(T(:,2));

% Initializing variables
[R,C] = size(t);
I = zeros(R,C);
Centroids = zeros(R,2);

for i = 1 : R
    
    % Checking all samples for gene_i and seeing at what threshold a gene is 'ON' or 'OFF'
    [idx,centroid] = kmeans(t(i,:)',2,'Start','uniform'); % 73,58,53,27,24,21,18,11
    I(i,:) = idx';
    Centroids(i,:) = centroid';
    
    disp('Centroid:')
    disp(centroid)
    disp([I(i,:);t(i,:)])
    
end

% Binarization of gene expression values
for i = 1 : R
    for j = 1 : C
        if Centroids(i,1) > Centroids(i,2)
            if I(i,j) == 1
                I(i,j) = 0;
            end
        end
        if Centroids(i,1) < Centroids(i,2)
            if I(i,j) == 2
                I(i,j) = 0;
            end
        end
    end
end

for i = 1 : R
    for j = 1 : C
        if Centroids(i,1) > Centroids(i,2)
            if I(i,j) == 2
                I(i,j) = 1;
            end
        end
    end
end

%Rows for genes, Columns for samples
fileID = fopen('expressions.txt','w');
%77 genes and 51 columns/experiments
fprintf(fileID,'%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d \n',I);
fclose(fileID);

type expressions.txt

R = dlmread('expressions.txt')
