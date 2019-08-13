pname2 = 'C:\Users\rajagoan\Documents\MATLAB\phase 1 and 2 ecgs with parameters\';

tachofiles2 = dir(strcat(pname2,'*.mat'));

anz2 = length(tachofiles2);
fs = 500;
markers = round([-32 26 206] * (fs/500));

fid = fopen('header.txt','w');
%fprintf(fid,['ID   ' 'Std(0)/Sup(1)' 'L(2)/R(3)  ' '              L1      ' 'L2   ' '   L3	' 'avR	' 'avL	' 'avF	' 'v1    ' '  v2  ' '   v3   ' '    v4 ' '     v5 ' '     v6 ' '     A1 ' '     A2 ' '     A3 \n\n'].');
for fileCT = 1:1:anz2
    
    filename2 = tachofiles2(fileCT).name;
    file2 = strcat(pname2,filename2);
    [pathstr, name2, ext2] = fileparts(file2);
    %load(filename2);
    filename2 = '80103_L_Stand_Read.txt';
    fid = fopen(filename2,'r');
    info = textscan(fid,'%s %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f','HeaderLines', 14); %to get all tabular info, works
    fclose(fid);
    for d=1:16
        info{d}(47:54,:) = []; % deleting some rows not needed for the text file
    end
    for e=1:16
        info{e}(54,:) = []; 
        info{e}(55,:) = [];
    end
    info{1} = strrep(info{1},':',''); %deletes instances of semicolon
    info{1} = strrep(info{1},'''','P'); %replaces instances of prime symbol ' with a P to represent prime
    
    C_split=strsplit(filename2,'_'); % splits filename into segments based on presence of '_'
%     C_second = strsplit(C_split{2},'\'); % further splits the second segment of previous split 
    
%     for i=1:m
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
        longheader = ['ID' ' ' 'Position' ' ' 'Side'];
%         dlmwrite('header.txt',longheader,'-append')
        header = [];
        for p = 1:55
            position = info{1}(p,:);
            for l=1:12
                if l == 1
                    lead = 'I';
                end
                if l == 2
                    lead = 'II';
                end
                if l == 3
                    lead = 'V1';
                end
                if l == 4
                    lead = 'V2';
                end
                if l == 5
                    lead = 'V3';
                end
                if l == 6
                    lead = 'V4';
                end
                if l == 7
                    lead = 'V5';
                end
                if l == 8
                    lead = 'V6';
                end
                if l == 9
                    lead = 'III';
                end
                if l == 10
                    lead = 'aVR';
                end
                if l == 11
                    lead = 'aVL';
                end
                if l == 12
                    lead = 'avF';
                end
                header = [header ' ' position lead];
            end % end of inner for loop for leads 
        end % end of outer for loop for counting position number
        dlmwrite('header.txt',[longheader header],'-append', 'delimiter', '')
%         dlmwrite('info.txt',[str2double(C_split{1}) details j together(i,:)], '-append')
%       dlmwrite('results2.txt', ' ', 'newline','pc', '-append')
        
%     end
    

end

fid = fclose(fid);

% filename = 'C:\Users\rajagoan\Documents\MATLAB\phase 1 and 2 rhythm ecgs\Mat_files\822_R_Supine.mat';
% load(filename);
% twelve = ECG12Lead;
% filename = 'C:\Users\rajagoan\Documents\MATLAB\phase 1 and 2 rhythm ecgs\ThreeLead_files\822_R_Supine_ThreeLead.mat';
% load(filename);
% three = ECG3Lead;
% together = [twelve three];
