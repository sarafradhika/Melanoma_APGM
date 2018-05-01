# Melanoma_APGM
Modeling cell survival pathways in Melanoma using Bayesian Networks


The excel file 'GPL570-59999.xlsx' contains the data required for the semantics of the experiment. 

The actual data is obtained from the NCBI database with the GEO Accession Viewer from the Series GSE31534 at the following link : https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE31534.

The relevant data is stored in the file 'ToRead.xlsx' excel file. 

This is read using MATLAB using the program 'read_data.m' and saved in the 'data.mat' file. 

The data is binarized using the program in 'binarize_data.m' with the use of k-means clustering and the binarized data is exported as a text file 'expressions.txt' and used further.

The structure and parameter learning as well as the inference is performed using Python 'Project_Learning.ipynb'. The structure is validated and the data for plotting is exported to MATLAB using 'Project_Validation.ipynb'.

Finally, 'plot_graph.m' uses the files 'a_list.mat','a_list_new.mat' and 'a_list_truth.mat' to plot the three network graphs.
