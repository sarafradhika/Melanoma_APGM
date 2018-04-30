clc
close all
clear all



%% Load the data from the original Excel file to get the names of the genes

load data.mat

genes = table2array(T(:,2));

%% Load and plot the data from the entire network that was learnt

load a_list.mat

A = adj;
G = digraph(adj,genes,'OmitSelfLoops');
figure
plot(G)

%% Load and plot the data from the entire network after marginalization

load a_list_new.mat

A = adj;
G = digraph(adj,genes,'OmitSelfLoops');
figure
plot(G)

%% Load and plot the data of the reference truth

load a_list_truth.mat

A = adj;
G = digraph(adj,genes,'OmitSelfLoops');
figure
plot(G)

genes_re = {'AKT1'
'BAD'
'BID'
'BRAF'
'CASP8AP2'
'CDC25B'
'CDK4'
'CDK7'
'CHEK1'
'EGF'
'EGFR'
'FAS'
'GRB2'
'IGF1'
'IGF1R'
'IGF2R'
'IRS1'
'IRS2'
'MAP2K1'
'MAP2K4'
'MAP2K7'
'MAP3K1'
'MAP3K5'
'MAPK1'
'MAPK3'
'MAPK8'
'MDM2'
'MITF'
'MTOR'
'NRAS'
'PDPK1'
'PIK3CA'
'PIK3CB'
'PIP4K2A'
'PIP5K1B'
'PTEN'
'RIPK1'
'sos1'
'STAT1'
'STAT3'
'TNF'
'TNFRSF10A'
'TP53'
'XIAP'
'ABL1'
'CCNA2'
'CCNB1'
'CCNB2'
'CCND3'
'CDC16'
'CDC37'
'CDK2'
'CDKN2C'
'CEBPD'
'CEBPZ'
'CTNNB1'
'ETS1'
'FOXM1'
'FOXO3'
'GABARAP'
'HDAC2'
'HDAC3'
'HSF2'
'JKAMP'
'MCM2'
'NCOR2'
'NMI'
'PCNA'
'PIAS1'
'RB1'
'RBL2'
'RELA'
'SKP2'
'SP1'
'SP100'
'STAT6'
'TCEA1'};