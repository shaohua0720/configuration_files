M = 128;
name = strcat(int2str(M),'QAM_Gray.mod');
fileID = fopen(name,'w+');
fprintf(fileID,"# %d-QAM Gay Mapping export from MATLAB\n", M);
A = qammod(0:M-1,M,'PlotConstellation',true); % gray mapping
for i = 1:length(A)
    fprintf(fileID,"%d %d\n", real(A(i)),imag(A(i)));
end
fclose(fileID);