pname2='C:\Users\rajagoan\Documents\MATLAB\80103_L_Stand\Reviewed\Mat_files\';

tachofiles = dir(strcat(pname2,'*.mat'));

% Reviewed_folder = strcat(pname2,'TestTransform\');
% if (exist(Reviewed_folder) == 0)
%     mkdir (Reviewed_folder);
% end

% images_folder = [pname2 'images\'];
% if (exist(images_folder) == 0)
%     mkdir(images_folder);
% end
% 
Mfile_folder = [pname2 'Test_Mat_files\'];
if (exist(Mfile_folder) == 0)
    mkdir (Mfile_folder);
end

anz=length(tachofiles);
fs=500;
markers = round([-32 26 206] * (fs/500));

for fileCT=1:1:anz
    
  close all;
R_temp=[];
R_12L=[];
ECG12Lead=[];
R_temp_2=[];
diff_R_temp=[];
med_R=[];
leng_R=[];
ax=[];
%try
    filename=tachofiles(fileCT).name
    file=strcat(pname2,filename);
    [pathstr, name0, ext] = fileparts(file);
    
coeff1 = [7.54 1.29 -3.43 8.1 -4.99 3.75 0.09 -0.15 -0.01 0.2 -0.07 0.7];

coeff2 = [5.67 0.82 7.11 6.77 3.15 -3.03 0.33 0.26 0.25 -0.04 0.39 -0.0003]; 
    
coeff3 = [5.09 2.67 -6.55 1.67 -11.33 -1.37 0.25 0.29 0.02 0.08 -0.04 0.02];

transformed_ECG = [];
A2 = 0;
   
%% Read TXT files


% fid=fopen(file,'r');
% 
% d12ECG=textscan(fid,'%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f','HeaderLines', 6);
% 
% fclose(fid);
load(file);


% for ii=1:12
% ECG12Lead(:,ii)=d12ECG{ii};
% end

% ECG3Lead = [];
% 
% for ii=1:3
%     ECG3Lead(:,ii)=ECG12Lead(ii+12);
% end

% transform into first lead
for j=1:5000
    for i=1:12
        A2 = (ECG12Lead(j,i)*coeff1(i)) + A2;
    end
    transformed_ECG(j,1) = A2;
    A2 = 0;
end

% transform into second lead
for j=1:5000
    for i=1:12
        A2 = (ECG12Lead(j,i)*coeff2(i)) + A2;
    end
    transformed_ECG(j,2) = A2;
    A2 = 0;
end

% transform into third lead
for j=1:5000
    for i=1:12
        A2 = (ECG12Lead(j,i)*coeff3(i)) + A2;
    end
    transformed_ECG(j,3) = A2;
    A2 = 0;
end

save_mat_f(strcat(Mfile_folder,name0,'_transformed.mat'),fs,transformed_ECG);


%     %Remove DC
%     ECG12Lead_RDC=NaN(length(ECG12Lead(:,1)),12);
%     for i=1:12
%         ECG12Lead_RDC(:,i)=ECG12Lead(:,i)-mean(ECG12Lead(:,i));
%     end
% 
%     %Remove baseline
%     ECG12Lead_bwr=[];
%     ECG12Lead_bwr=NaN(length(ECG12Lead_RDC(:,1)),12);
%     for i=1:12
%         temp=[]; temp_b=[];
%         temp = ECG12Lead_RDC(:,i);
%         temp_b = bw(temp', fs*.5, 'md');
%         ECG12Lead_bwr(1:length(temp),i) = temp-temp_b';
%     end

% figure
% plot(ECG3Lead(:,1))
% hold on
% legend('Recorded')
% plot(transformed_ECG(:,1))
% legend('Recorded', 'Transformed')
% title('Lead 1')
% figure
% plot(ECG3Lead(:,2))
% hold on
% legend('Recorded')
% plot(transformed_ECG(:,2))
% legend('Recorded', 'Transformed')
% title('Lead 2')
% figure
% plot(ECG3Lead(:,3))
% hold on
% legend('Recorded')
% plot(transformed_ECG(:,3))
% legend('Recorded', 'Transformed')
% title('Lead 3')

%save_mat_f(strcat(Mfile_folder,name0,'.mat'),R_12L,fs,ECG12Lead,ECG12Lead_RDC,ECG12Lead_bwr);

	
% movefile(file,Reviewed_folder);
close all;	
        
end


function save_mat_f(filename,fs,transformed_ECG)
    save(filename,'fs','transformed_ECG');
end