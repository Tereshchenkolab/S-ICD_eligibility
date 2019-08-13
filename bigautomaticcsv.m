pname2='C:\Users\rajagoan\Documents\MATLAB\phase 1 and 2 rhythm ecgs\ForText_files\';

tachofiles2 = dir(strcat(pname2,'*.mat'));

anz2=length(tachofiles2);
fs=500;
markers = round([-32 26 206] * (fs/500));

fid = fopen('results2.txt','w');
%fprintf(fid,['ID   ' 'Std(0)/Sup(1)' 'L(2)/R(3)  ' '              L1      ' 'L2   ' '   L3	' 'avR	' 'avL	' 'avF	' 'v1    ' '  v2  ' '   v3   ' '    v4 ' '     v5 ' '     v6 ' '     A1 ' '     A2 ' '     A3 \n\n'].');
j = 1;
for fileCT=((anz2/2)+1):1:anz2
    
    filename2=tachofiles2(fileCT).name;
    file2=strcat(pname2,filename2);
    [pathstr, name2, ext2] = fileparts(file2);
    load(filename2);
    twelve = ECG12Lead;
    three = ECG3Lead;
    together = [twelve three];
    [m,n] = size(together);
    
    C_split=strsplit(filename2,'_'); % splits filename into segments based on presence of '_'
%     C_second = strsplit(C_split{2},'\'); % further splits the second segment of previous split 
    
    for i=1:m
        if(contains(C_split{3},'Supine'))
            % add accordingly to txt file
            pos = 1;
%           dlmwrite('results2.txt','1','-append')
        end
    
        if(contains(C_split{3},'Stand'))
            pos = 0;
            % add accordingly to txt file
%           dlmwrite('results2.txt','0','-append')
        end

        if(contains(C_split{2},'L'))
            side = 2;
            % add accordingly to txt file
%           dlmwrite('results2.txt','2','-append')
        end
    
        if(contains(C_split{2},'R'))
            side = 3;
            % add accordingly to txt file
%           dlmwrite('results2.txt','3','-append')
        end
    
        details = [pos side];
%         dlmwrite('results2.txt',C_split{1},'delimiter','','-append')
%         dlmwrite('results2.txt',details,'-append')
%     dlmwrite('results2.txt', ' ', 'delimiter', '\t', '-append')
    
%     dlmwrite('results2.txt', ' ', 'delimiter', '\t', '-append')
%     
%         dlmwrite('results2.txt',[num2str(j) ' '],'-append')
    
        dlmwrite('results2.txt',[str2double(C_split{1}) details j together(i,:)], '-append')
%       dlmwrite('results2.txt', ' ', 'newline','pc', '-append')
        
        j=j+1;
            if j==5000
                j=1;
            end
    end
    

end

fid = fclose(fid);

% filename = 'C:\Users\rajagoan\Documents\MATLAB\phase 1 and 2 rhythm ecgs\Mat_files\822_R_Supine.mat';
% load(filename);
% twelve = ECG12Lead;
% filename = 'C:\Users\rajagoan\Documents\MATLAB\phase 1 and 2 rhythm ecgs\ThreeLead_files\822_R_Supine_ThreeLead.mat';
% load(filename);
% three = ECG3Lead;
% together = [twelve three];
