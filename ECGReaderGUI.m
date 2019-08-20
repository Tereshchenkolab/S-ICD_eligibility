function varargout = ECGReaderGUI(varargin)
% ECGREADERGUI MATLAB code for ECGReaderGUI.fig
%      ECGREADERGUI, by itself, creates a new ECGREADERGUI or raises the existing
%      singleton*.
%
%      H = ECGREADERGUI returns the handle to a new ECGREADERGUI or the handle to
%      the existing singleton*.
%
%      ECGREADERGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ECGREADERGUI.M with the given input arguments.
%
%      ECGREADERGUI('Property','Value',...) creates a new ECGREADERGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ECGReaderGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ECGReaderGUI_ via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ECGReaderGUI

% Last Modified by GUIDE v2.5 19-Aug-2019 18:26:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ECGReaderGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @ECGReaderGUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ECGReaderGUI is made visible.
function ECGReaderGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ECGReaderGUI (see VARARGIN)

% Choose default command line output for ECGReaderGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ECGReaderGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
set(handles.slider1,'visible','off')
set(handles.slider2,'visible','off')
set(handles.text3,'visible','off')
set(handles.text4,'visible','off')

set(handles.slider3,'visible','off')
set(handles.slider4,'visible','off')
set(handles.text6,'visible','off')
set(handles.text7,'visible','off')

set(handles.slider5,'visible','off')
set(handles.slider6,'visible','off')
set(handles.text8,'visible','off')
set(handles.text9,'visible','off')

set(handles.slider7,'visible','off')
set(handles.slider8,'visible','off')
set(handles.text10,'visible','off')
set(handles.text11,'visible','off')

set(handles.slider9,'visible','off')
set(handles.slider10,'visible','off')
set(handles.text12,'visible','off')
set(handles.text13,'visible','off')

set(handles.slider11,'visible','off')
set(handles.slider12,'visible','off')
set(handles.text14,'visible','off')
set(handles.text15,'visible','off')

set(handles.slider13,'visible','off')
set(handles.slider14,'visible','off')
set(handles.text16,'visible','off')
set(handles.text17,'visible','off')

set(handles.pushbutton16,'visible','off')
set(handles.pushbutton18,'visible','off')
set(handles.pushbutton19,'visible','off')
set(handles.pushbutton20,'visible','off')
set(handles.pushbutton21,'visible','off')


% --- Outputs from this function are returned to the command line.
function varargout = ECGReaderGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%PathName='/home/perezald/Desktop/AHA_grant_data/BIDMC_GEHCO_ECGs/Mat_files/';
%FileName='30000101.mat';
[filename,PathName,FilterIndex] = uigetfile ({'*.mat'});
[pathstr, name0, ext] = fileparts(filename); 
load(filename) = filename;
handles.filename = filename;
% ECG12Lead=ECG3Lead;
% %Remove DC
%     ECG12Lead_RDC=NaN(length(ECG12Lead(:,1)),3);
%     for i=1:3
%         ECG12Lead_RDC(:,i)=ECG12Lead(:,i)-mean(ECG12Lead(:,i));
%     end
% 
%     %Remove baseline
%     ECG12Lead_bwr=[];
%     ECG12Lead_bwr=NaN(length(ECG12Lead_RDC(:,1)),3);
%     for i=1:3
%         temp=[]; temp_b=[];
%         temp = ECG12Lead_RDC(:,i);
%         temp_b = bw(temp', fs*.5, 'md');
%         ECG12Lead_bwr(1:length(temp),i) = temp-temp_b';
%     end
% plot(ECG12Lead_bwr(:,1)/1000)
% ECG = ECG12Lead_bwr(:,1)/1000;
% handles.ECG = ECG;
% axis([0 5000 -3 3])

h = name0;
handles.h1 = h;

c=3;
handles.c3 = c;

cla reset;

guidata(hObject,handles);

  if isfield(handles,'c3') 
set(handles.pushbutton16,'visible','off')
set(handles.pushbutton18,'visible','off')
set(handles.pushbutton19,'visible','off')
set(handles.pushbutton20,'visible','off')
set(handles.pushbutton21,'visible','off')
 end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=1;
handles.a1 = a;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 EG = handles.ECG;
 x= (1:length(EG));
plot(x,EG)
axis([0 5000 -3 3])

x = 150:230;
y = -0.65*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 0.65*ones(1,81);
patch(x,y,'y');
x = ones(1,65)+150;
y = 0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+150;
y = -0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+230;
y = 0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+230;
y = -0.01*(1:65);
patch(x,y,'y');

x = 230:270;
y = -0.3*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.3*ones(1,41);
patch(x,y,'y');
x = ones(1,300)+230;
y = 0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+230;
y = -0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+270;
y = 0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+270;
y = -0.001*(1:300);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.2;
x = 900*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'y', 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.5,.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.5,-.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

set(handles.slider3,'visible','on')
set(handles.slider4,'visible','on')
set(handles.text6,'visible','on')
set(handles.text7,'visible','on')

 if isfield(handles,'a7') 
set(handles.slider1,'visible','off')
set(handles.slider2,'visible','off')
set(handles.text3,'visible','off')
set(handles.text4,'visible','off')
 end

 if isfield(handles,'a2') 
set(handles.slider5,'visible','off')
set(handles.slider6,'visible','off')
set(handles.text8,'visible','off')
set(handles.text9,'visible','off')
 end

   if isfield(handles,'a3') 
set(handles.slider7,'visible','off')
set(handles.slider8,'visible','off')
set(handles.text10,'visible','off')
set(handles.text11,'visible','off')
   end

   if isfield(handles,'a4') 
set(handles.slider9,'visible','off')
set(handles.slider10,'visible','off')
set(handles.text12,'visible','off')
set(handles.text13,'visible','off')
   end

   if isfield(handles,'a5') 
set(handles.slider11,'visible','off')
set(handles.slider12,'visible','off')
set(handles.text14,'visible','off')
set(handles.text15,'visible','off')
   end

   if isfield(handles,'a6') 
set(handles.slider13,'visible','off')
set(handles.slider14,'visible','off')
set(handles.text16,'visible','off')
set(handles.text17,'visible','off')
   end


% x2Center = 1.0;
% y2Center = 0;
% x2Radius = 0.9;
% y2Radius = 0.2;
% theta = -pi/2 : 0.01 : pi/2;
% x2 = x2Radius * cos(theta) + x2Center;
% y2 = y2Radius * sin(theta) + y2Center;
% hCurve = plot(x2, y2, 'LineWidth', 1);
% axis image;
% grid off;
% hCurve.Color = 'k';
% fill(x2,y2,'y', 'FaceAlpha',.32);

% patch('vertices', [.4, -.65; .4, .65; .8, .65; .8, -.65], ...
%           'FaceColor', 'y', ...
%           'FaceAlpha', 0.32)
% patch('vertices', [.8, -.3; .8, .3; 1.0, .3; 1.0, -.3], ...
%           'FaceColor', 'y', ...
%           'FaceAlpha', 0.32)
% axis([0 12 -2.9 2.9])
% set(gca,'YTick',[])
% line([.4,.8],[.5,.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
% line([.4,.8],[-.5,-.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
% text(.46, -.9, 'A')
% 
% line([0,2.33],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
% set(gca, 'visible', 'off')



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% hold on

a=2;
handles.a2 = a;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 EG = handles.ECG;
 x= (1:length(EG));
plot(x,EG)
axis([0 5000 -3 3])

x = 150:230;
y = -0.8*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 0.8*ones(1,81);
patch(x,y,'y');
x = ones(1,80)+150;
y = 0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+150;
y = -0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+230;
y = 0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+230;
y = -0.01*(1:80);
patch(x,y,'y');

x = 230:270;
y = -0.35*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.35*ones(1,41);
patch(x,y,'y');
x = ones(1,350)+230;
y = 0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+230;
y = -0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+270;
y = 0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+270;
y = -0.001*(1:350);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.25;
x = 720*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,[0.9290 0.6940 0.1250], 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.6,.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.6,-.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

set(handles.slider5,'visible','on')
set(handles.slider6,'visible','on')
set(handles.text8,'visible','on')
set(handles.text9,'visible','on')

if isfield(handles,'a7') 
set(handles.slider1,'visible','off')
set(handles.slider2,'visible','off')
set(handles.text3,'visible','off')
set(handles.text4,'visible','off')
end

if isfield(handles,'a1') 
set(handles.slider3,'visible','off')
set(handles.slider4,'visible','off')
set(handles.text6,'visible','off')
set(handles.text7,'visible','off')
end

if isfield(handles,'a3') 
set(handles.slider7,'visible','off')
set(handles.slider8,'visible','off')
set(handles.text10,'visible','off')
set(handles.text11,'visible','off')
end

if isfield(handles,'a4') 
set(handles.slider9,'visible','off')
set(handles.slider10,'visible','off')
set(handles.text12,'visible','off')
set(handles.text13,'visible','off')
end

if isfield(handles,'a5') 
set(handles.slider11,'visible','off')
set(handles.slider12,'visible','off')
set(handles.text14,'visible','off')
set(handles.text15,'visible','off')
end

if isfield(handles,'a6') 
set(handles.slider13,'visible','off')
set(handles.slider14,'visible','off')
set(handles.text16,'visible','off')
set(handles.text17,'visible','off')
end


% hold on
% x3Center = 1.0;
% y3Center = 0;
% x3Radius = 0.9;
% y3Radius = 0.25;
% theta = -pi/2 : 0.01 : pi/2;
% x3 = x3Radius * cos(theta) + x3Center;
% y3 = y3Radius * sin(theta) + y3Center;
% hCurve = plot(x3, y3, 'LineWidth', 1);
% axis image;
% grid off;
% hCurve.Color = 'k';
% fill(x3,y3,[0.9290 0.6940 0.1250], 'FaceAlpha',.32);
% 
% patch('vertices', [.4, -.8; .4, .8; .8, .8; .8, -.8], ...
%           'faces', [1, 2, 3, 4], ...
%           'FaceColor', [0.9290 0.6940 0.1250], ...
%           'FaceAlpha', 0.32)
% patch('vertices', [.8, -.35; .8, .35; 1.0, .35; 1.0, -.35], ...
%           'faces', [1, 2, 3, 4], ...
%           'FaceColor', [0.9290 0.6940 0.1250], ...
%           'FaceAlpha', 0.32)
% axis([0 12 -2.9 2.9])
% set(gca,'YTick',[])
% line([.4,.8],[.6,.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
% line([.4,.8],[-.6,-.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
% text(.46, -1.05, 'B')
% 
% line([0,2.33],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
% set(gca, 'visible', 'off');



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a=3;
handles.a3 = a;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 EG = handles.ECG;
 x= (1:length(EG));
plot(x,EG)
axis([0 5000 -3 3])

% hold on
x = 150:230;
y = -1.0*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 1.0*ones(1,81);
patch(x,y,'y');
x = ones(1,100)+150;
y = 0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+150;
y = -0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+230;
y = 0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+230;
y = -0.01*(1:100);
patch(x,y,'y');

x = 230:270;
y = -0.45*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.45*ones(1,41);
patch(x,y,'y');
x = ones(1,450)+230;
y = 0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+230;
y = -0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+270;
y = 0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+270;
y = -0.001*(1:450);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.35;
x = (514.286)*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'g', 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.75,.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.75,-.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

set(handles.slider7,'visible','on')
set(handles.slider8,'visible','on')
set(handles.text10,'visible','on')
set(handles.text11,'visible','on')

if isfield(handles,'a7') 
set(handles.slider1,'visible','off')
set(handles.slider2,'visible','off')
set(handles.text3,'visible','off')
set(handles.text4,'visible','off')
end

if isfield(handles,'a1') 
set(handles.slider3,'visible','off')
set(handles.slider4,'visible','off')
set(handles.text6,'visible','off')
set(handles.text7,'visible','off')
end

if isfield(handles,'a2') 
set(handles.slider5,'visible','off')
set(handles.slider6,'visible','off')
set(handles.text8,'visible','off')
set(handles.text9,'visible','off')
end

if isfield(handles,'a4') 
set(handles.slider9,'visible','off')
set(handles.slider10,'visible','off')
set(handles.text12,'visible','off')
set(handles.text13,'visible','off')
end

if isfield(handles,'a5') 
set(handles.slider11,'visible','off')
set(handles.slider12,'visible','off')
set(handles.text14,'visible','off')
set(handles.text15,'visible','off')
end

if isfield(handles,'a6') 
set(handles.slider13,'visible','off')
set(handles.slider14,'visible','off')
set(handles.text16,'visible','off')
set(handles.text17,'visible','off')
end


% hold on
% x4Center = 1.0;
% y4Center = 0;
% x4Radius = 0.9;
% y4Radius = 0.35;
% theta = -pi/2 : 0.01 : pi/2;
% x4 = x4Radius * cos(theta) + x4Center;
% y4 = y4Radius * sin(theta) + y4Center;
% hCurve = plot(x4, y4, 'LineWidth', 1);
% axis image;
% grid off;
% hCurve.Color = 'k';
% fill(x4,y4,'g', 'FaceAlpha',.32);
% 
% patch('vertices', [.4, -1.0; .4, 1.0; .8, 1.0; .8, -1.0], ...
%           'faces', [1, 2, 3, 4], ...
%           'FaceColor', 'g', ...
%           'FaceAlpha', 0.32)
% patch('vertices', [.8, -.45; .8, .45; 1.0, .45; 1.0, -.45], ...
%           'faces', [1, 2, 3, 4], ...
%           'FaceColor', 'g', ...
%           'FaceAlpha', 0.32)
% axis([0 12 -2.9 2.9])
% set(gca,'YTick',[])
% line([.4,.8],[.75,.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
% line([.4,.8],[-.75,-.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
% text(.46, -1.25, 'C')
% 
% line([0,2.33],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
% set(gca, 'visible', 'off');


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a=4;
handles.a4 = a
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 EG = handles.ECG;
 x= (1:length(EG));
plot(x,EG)
axis([0 5000 -3 3])

% hold on
x = 150:230;
y = -1.25*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 1.25*ones(1,81);
patch(x,y,'y');
x = ones(1,125)+150;
y = 0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+150;
y = -0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+230;
y = 0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+230;
y = -0.01*(1:125);
patch(x,y,'y');

x = 230:270;
y = -0.55*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.55*ones(1,41);
patch(x,y,'y');
x = ones(1,550)+230;
y = 0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+230;
y = -0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+270;
y = 0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+270;
y = -0.001*(1:550);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.4;
x = 450*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,[0.3010 0.7450 0.9330], 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.95,.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.95,-.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

set(handles.slider9,'visible','on')
set(handles.slider10,'visible','on')
set(handles.text12,'visible','on')
set(handles.text13,'visible','on')

if isfield(handles,'a7') 
set(handles.slider1,'visible','off')
set(handles.slider2,'visible','off')
set(handles.text3,'visible','off')
set(handles.text4,'visible','off')
end

if isfield(handles,'a1') 
set(handles.slider3,'visible','off')
set(handles.slider4,'visible','off')
set(handles.text6,'visible','off')
set(handles.text7,'visible','off')
end

if isfield(handles,'a2') 
set(handles.slider5,'visible','off')
set(handles.slider6,'visible','off')
set(handles.text8,'visible','off')
set(handles.text9,'visible','off')
end

if isfield(handles,'a3') 
set(handles.slider7,'visible','off')
set(handles.slider8,'visible','off')
set(handles.text10,'visible','off')
set(handles.text11,'visible','off')
end

if isfield(handles,'a5') 
set(handles.slider11,'visible','off')
set(handles.slider12,'visible','off')
set(handles.text14,'visible','off')
set(handles.text15,'visible','off')
end

if isfield(handles,'a6') 
set(handles.slider13,'visible','off')
set(handles.slider14,'visible','off')
set(handles.text16,'visible','off')
set(handles.text17,'visible','off')
end


% hold on
% x5Center = 1.0;
% y5Center = 0;
% x5Radius = 0.9;
% y5Radius = 0.4;
% theta = -pi/2 : 0.01 : pi/2;
% x5 = x5Radius * cos(theta) + x5Center;
% y5 = y5Radius * sin(theta) + y5Center;
% hCurve = plot(x5, y5, 'LineWidth', 1);
% axis image;
% grid off;
% hCurve.Color = 'k';
% fill(x5,y5,[0.3010 0.7450 0.9330], 'FaceAlpha',.32);
% 
% patch('vertices', [.4, -1.25; .4, 1.25; .8, 1.25; .8, -1.25], ...
%           'faces', [1, 2, 3, 4], ...
%           'FaceColor', [0.3010 0.7450 0.9330], ...
%           'FaceAlpha', 0.32)
% patch('vertices', [.8, -.55; .8, .55; 1.0, .55; 1.0, -.55], ...
%           'faces', [1, 2, 3, 4], ...
%           'FaceColor', [0.3010 0.7450 0.9330], ...
%           'FaceAlpha', 0.32)
% axis([0 12 -2.9 2.9])
% set(gca,'YTick',[])
% line([.4,.8],[.95,.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
% line([.4,.8],[-.95,-.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
% text(.46, -1.52, 'D')
% 
% line([0,2.33],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
% set(gca, 'visible', 'off');



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a=5;
handles.a5 = a
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 EG = handles.ECG;
 x= (1:length(EG));
plot(x,EG)
axis([0 5000 -3 3])

% hold on
x = 150:230;
y = -1.5*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 1.5*ones(1,81);
patch(x,y,'y');
x = ones(1,150)+150;
y = 0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+150;
y = -0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+230;
y = 0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+230;
y = -0.01*(1:150);
patch(x,y,'y');

x = 230:270;
y = -0.65*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.65*ones(1,41);
patch(x,y,'y');
x = ones(1,650)+230;
y = 0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+230;
y = -0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+270;
y = 0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+270;
y = -0.001*(1:650);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.5;
x = 360*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'b', 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[1.2,1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-1.2,-1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

set(handles.slider11,'visible','on')
set(handles.slider12,'visible','on')
set(handles.text14,'visible','on')
set(handles.text15,'visible','on')

if isfield(handles,'a7') 
set(handles.slider1,'visible','off')
set(handles.slider2,'visible','off')
set(handles.text3,'visible','off')
set(handles.text4,'visible','off')
end

if isfield(handles,'a1') 
set(handles.slider3,'visible','off')
set(handles.slider4,'visible','off')
set(handles.text6,'visible','off')
set(handles.text7,'visible','off')
end

if isfield(handles,'a2') 
set(handles.slider5,'visible','off')
set(handles.slider6,'visible','off')
set(handles.text8,'visible','off')
set(handles.text9,'visible','off')
end

if isfield(handles,'a3') 
set(handles.slider7,'visible','off')
set(handles.slider8,'visible','off')
set(handles.text10,'visible','off')
set(handles.text11,'visible','off')
end

if isfield(handles,'a4') 
set(handles.slider9,'visible','off')
set(handles.slider10,'visible','off')
set(handles.text12,'visible','off')
set(handles.text13,'visible','off')
end

if isfield(handles,'a6') 
set(handles.slider13,'visible','off')
set(handles.slider14,'visible','off')
set(handles.text16,'visible','off')
set(handles.text17,'visible','off')
end



% hold on
% x6Center = 1.0;
% y6Center = 0;
% x6Radius = 0.9;
% y6Radius = 0.5;
% theta = -pi/2 : 0.01 : pi/2;
% x6 = x6Radius * cos(theta) + x6Center;
% y6 = y6Radius * sin(theta) + y6Center;
% hCurve = plot(x6, y6, 'LineWidth', 1);
% axis image;
% grid off;
% hCurve.Color = 'k';
% fill(x6,y6,'b', 'FaceAlpha',.32);
% 
% patch('vertices', [.4, -1.5; .4, 1.5; .8, 1.5; .8, -1.5], ...
%           'faces', [1, 2, 3, 4], ...
%           'FaceColor', 'b', ...
%           'FaceAlpha', 0.32)
% patch('vertices', [.8, -.65; .8, .65; 1.0, .65; 1.0, -.65], ...
%           'faces', [1, 2, 3, 4], ...
%           'FaceColor', 'b', ...
%           'FaceAlpha', 0.32)
% axis([0 12 -2.9 2.9])
% set(gca,'YTick',[])
% line([.4,.8],[1.2,1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
% line([.4,.8],[-1.2,-1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
% text(.46, -1.77, 'E')
% 
% line([0,2.33],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
% set(gca, 'visible', 'off');


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a=6;
handles.a6 = a
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 EG = handles.ECG;
 x= (1:length(EG));
plot(x,EG)
axis([0 5000 -3 3])

% hold on
x = 150:230;
y = -1.75*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 1.75*ones(1,81);
patch(x,y,'y');
x = ones(1,175)+150;
y = 0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+150;
y = -0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+230;
y = 0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+230;
y = -0.01*(1:175);
patch(x,y,'y');

x = 230:270;
y = -0.8*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.8*ones(1,41);
patch(x,y,'y');
x = ones(1,800)+230;
y = 0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+230;
y = -0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+270;
y = 0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+270;
y = -0.001*(1:800);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.55;
x = (327.273)*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'m', 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[1.45,1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-1.45,-1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')


set(handles.slider13,'visible','on')
set(handles.slider14,'visible','on')
set(handles.text16,'visible','on')
set(handles.text17,'visible','on')

if isfield(handles,'a7') 
set(handles.slider1,'visible','off')
set(handles.slider2,'visible','off')
set(handles.text3,'visible','off')
set(handles.text4,'visible','off')
end

if isfield(handles,'a1') 
set(handles.slider3,'visible','off')
set(handles.slider4,'visible','off')
set(handles.text6,'visible','off')
set(handles.text7,'visible','off')
end

if isfield(handles,'a2')
set(handles.slider5,'visible','off')
set(handles.slider6,'visible','off')
set(handles.text8,'visible','off')
set(handles.text9,'visible','off')
end

if isfield(handles,'a3') 
set(handles.slider7,'visible','off')
set(handles.slider8,'visible','off')
set(handles.text10,'visible','off')
set(handles.text11,'visible','off')
end

if isfield(handles,'a4') 
set(handles.slider9,'visible','off')
set(handles.slider10,'visible','off')
set(handles.text12,'visible','off')
set(handles.text13,'visible','off')
end

if isfield(handles,'a5') 
set(handles.slider11,'visible','off')
set(handles.slider12,'visible','off')
set(handles.text14,'visible','off')
set(handles.text15,'visible','off')
end


% hold on
% x1Center = 1.0;
% y1Center = 0;
% x1Radius = 0.9;
% y1Radius = 0.55;
% theta = -pi/2 : 0.01 : pi/2;
% x1 = x1Radius * cos(theta) + x1Center;
% y1 = y1Radius * sin(theta) + y1Center;
% hCurve = plot(x1, y1, 'LineWidth', 1);
% axis image;
% grid off;
% hCurve.Color = 'k';
% fill(x1,y1,'m', 'FaceAlpha',.32);
% 
% patch('vertices', [.4, -1.75; .4, 1.75; .8, 1.75; .8, -1.75], ...
%           'faces', [1, 2, 3, 4], ...
%           'FaceColor', 'm', ...
%           'FaceAlpha', 0.32)
% patch('vertices', [.8, -.8; .8, .8; 1.0, .8; 1.0, -.8], ...
%           'faces', [1, 2, 3, 4], ...
%           'FaceColor', 'm', ...
%           'FaceAlpha', 0.32)
% axis([0 12 -2.9 2.9])
% set(gca,'YTick',[])
% line([.4,.8],[1.45,1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
% line([.4,.8],[-1.45,-1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
% text(.46, -2.02, 'F')
% 
% line([0,2.33],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
% set(gca, 'visible', 'off');


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Clear command window
clc;

%Clear the figure from screen
delete(handles.figure1);


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla reset;


a=8;
handles.a8 = a

guidata(hObject,handles);

 if isfield(handles,'a8')
set(handles.slider1,'visible','off')
set(handles.slider2,'visible','off')
set(handles.text3,'visible','off')
set(handles.text4,'visible','off')

set(handles.slider3,'visible','off')
set(handles.slider4,'visible','off')
set(handles.text6,'visible','off')
set(handles.text7,'visible','off')

set(handles.slider5,'visible','off')
set(handles.slider6,'visible','off')
set(handles.text8,'visible','off')
set(handles.text9,'visible','off')

set(handles.slider7,'visible','off')
set(handles.slider8,'visible','off')
set(handles.text10,'visible','off')
set(handles.text11,'visible','off')

set(handles.slider9,'visible','off')
set(handles.slider10,'visible','off')
set(handles.text12,'visible','off')
set(handles.text13,'visible','off')

set(handles.slider11,'visible','off')
set(handles.slider12,'visible','off')
set(handles.text14,'visible','off')
set(handles.text15,'visible','off')

set(handles.slider13,'visible','off')
set(handles.slider14,'visible','off')
set(handles.text16,'visible','off')
set(handles.text17,'visible','off')

set(handles.pushbutton16,'visible','off')
set(handles.pushbutton18,'visible','off')
set(handles.pushbutton19,'visible','off')
set(handles.pushbutton20,'visible','off')
set(handles.pushbutton21,'visible','off')
 end

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);

set(handles.text3,'String',num2str(sliderVal));

sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);
handles.sVal=sliderVal;
set(handles.text3,'String',num2str(sliderVal));
sliderVal1 = get(handles.slider2, 'Value');
handles.aVal=sliderVal1;
ECG = get(handles.pushbutton1, 'Value');


 guidata(hObject,handles);
 
 if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;     
plot(x,EG2)
axis([0 5000 -3 3])
 end


if isfield(handles,'a7')
hold on
x = 150:230;
y = -0.65*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 0.65*ones(1,81);
patch(x,y,'y');
x = ones(1,65)+150;
y = 0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+150;
y = -0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+230;
y = 0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+230;
y = -0.01*(1:65);
patch(x,y,'y');

x = 230:270;
y = -0.3*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.3*ones(1,41);
patch(x,y,'y');
x = ones(1,300)+230;
y = 0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+230;
y = -0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+270;
y = 0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+270;
y = -0.001*(1:300);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.2;
x = 900*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'y', 'FaceAlpha',.32)
line([150,750],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.5,.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.5,-.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 750:830;
y = -0.8*ones(1,81);
patch(x,y,'y');
x = 750:830;
y = 0.8*ones(1,81);
patch(x,y,'y');
x = ones(1,80)+750;
y = 0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+750;
y = -0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+830;
y = 0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+830;
y = -0.01*(1:80);
patch(x,y,'y');

x = 830:870;
y = -0.35*ones(1,41);
patch(x,y,'y');
x = 830:870;
y = 0.35*ones(1,41);
patch(x,y,'y');
x = ones(1,350)+830;
y = 0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+830;
y = -0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+870;
y = 0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+870;
y = -0.001*(1:350);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.25;
x = 720*(r*cos(t))+870;
y = r*sin(t);
patch(x, y,[0.9290 0.6940 0.1250], 'FaceAlpha',.32)
line([750,1350],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([750,830],[.6,.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([750,830],[-.6,-.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 1350:1430;
y = -1.0*ones(1,81);
patch(x,y,'y');
x = 1350:1430;
y = 1.0*ones(1,81);
patch(x,y,'y');
x = ones(1,100)+1350;
y = 0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+1350;
y = -0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+1430;
y = 0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+1430;
y = -0.01*(1:100);
patch(x,y,'y');

x = 1430:1470;
y = -0.45*ones(1,41);
patch(x,y,'y');
x = 1430:1470;
y = 0.45*ones(1,41);
patch(x,y,'y');
x = ones(1,450)+1430;
y = 0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+1430;
y = -0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+1470;
y = 0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+1470;
y = -0.001*(1:450);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.35;
x = (514.286)*(r*cos(t))+1470;
y = r*sin(t);
patch(x, y,'g', 'FaceAlpha',.32)
line([1350,1950],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([1350,1430],[.75,.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([1350,1430],[-.75,-.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 1950:2030;
y = -1.25*ones(1,81);
patch(x,y,'y');
x = 1950:2030;
y = 1.25*ones(1,81);
patch(x,y,'y');
x = ones(1,125)+1950;
y = 0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+1950;
y = -0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+2030;
y = 0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+2030;
y = -0.01*(1:125);
patch(x,y,'y');

x = 2030:2070;
y = -0.55*ones(1,41);
patch(x,y,'y');
x = 2030:2070;
y = 0.55*ones(1,41);
patch(x,y,'y');
x = ones(1,550)+2030;
y = 0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+2030;
y = -0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+2070;
y = 0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+2070;
y = -0.001*(1:550);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.4;
x = 450*(r*cos(t))+2070;
y = r*sin(t);
patch(x, y,[0.3010 0.7450 0.9330], 'FaceAlpha',.32)
line([1950,2550],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([1950,2030],[.95,.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([1950,2030],[-.95,-.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 2550:2630;
y = -1.5*ones(1,81);
patch(x,y,'y');
x = 2550:2630;
y = 1.5*ones(1,81);
patch(x,y,'y');
x = ones(1,150)+2550;
y = 0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+2550;
y = -0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+2630;
y = 0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+2630;
y = -0.01*(1:150);
patch(x,y,'y');

x = 2630:2670;
y = -0.65*ones(1,41);
patch(x,y,'y');
x = 2630:2670;
y = 0.65*ones(1,41);
patch(x,y,'y');
x = ones(1,650)+2630;
y = 0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+2630;
y = -0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+2670;
y = 0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+2670;
y = -0.001*(1:650);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.5;
x = 360*(r*cos(t))+2670;
y = r*sin(t);
patch(x, y,'b', 'FaceAlpha',.32)
line([2550,3150],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([2550,2630],[1.2,1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([2550,2630],[-1.2,-1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 3150:3230;
y = -1.75*ones(1,81);
patch(x,y,'y');
x = 3150:3230;
y = 1.75*ones(1,81);
patch(x,y,'y');
x = ones(1,175)+3150;
y = 0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+3150;
y = -0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+3230;
y = 0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+3230;
y = -0.01*(1:175);
patch(x,y,'y');

x = 3230:3270;
y = -0.8*ones(1,41);
patch(x,y,'y');
x = 3230:3270;
y = 0.8*ones(1,41);
patch(x,y,'y');
x = ones(1,800)+3230;
y = 0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+3230;
y = -0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+3270;
y = 0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+3270;
y = -0.001*(1:800);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.55;
x = (327.273)*(r*cos(t))+3270;
y = r*sin(t);
patch(x, y,'m', 'FaceAlpha',.32)
line([3150,3750],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([3150,3230],[1.45,1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([3150,3230],[-1.45,-1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end


% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal1',sliderVal1);

set(handles.text4,'String',num2str(sliderVal1));

sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal1);
handles.aVal=sliderVal1;
set(handles.text4,'String',num2str(sliderVal1));
sliderVal = get(handles.slider1, 'Value');
handles.sVal=sliderVal;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;
plot(x,EG2)
axis([0 5000 -3 3])
 end


if isfield(handles,'a7')
hold on
x = 150:230;
y = -0.65*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 0.65*ones(1,81);
patch(x,y,'y');
x = ones(1,65)+150;
y = 0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+150;
y = -0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+230;
y = 0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+230;
y = -0.01*(1:65);
patch(x,y,'y');

x = 230:270;
y = -0.3*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.3*ones(1,41);
patch(x,y,'y');
x = ones(1,300)+230;
y = 0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+230;
y = -0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+270;
y = 0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+270;
y = -0.001*(1:300);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.2;
x = 900*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'y', 'FaceAlpha',.32)
line([150,750],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.5,.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.5,-.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 750:830;
y = -0.8*ones(1,81);
patch(x,y,'y');
x = 750:830;
y = 0.8*ones(1,81);
patch(x,y,'y');
x = ones(1,80)+750;
y = 0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+750;
y = -0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+830;
y = 0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+830;
y = -0.01*(1:80);
patch(x,y,'y');

x = 830:870;
y = -0.35*ones(1,41);
patch(x,y,'y');
x = 830:870;
y = 0.35*ones(1,41);
patch(x,y,'y');
x = ones(1,350)+830;
y = 0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+830;
y = -0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+870;
y = 0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+870;
y = -0.001*(1:350);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.25;
x = 720*(r*cos(t))+870;
y = r*sin(t);
patch(x, y,[0.9290 0.6940 0.1250], 'FaceAlpha',.32)
line([750,1350],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([750,830],[.6,.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([750,830],[-.6,-.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 1350:1430;
y = -1.0*ones(1,81);
patch(x,y,'y');
x = 1350:1430;
y = 1.0*ones(1,81);
patch(x,y,'y');
x = ones(1,100)+1350;
y = 0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+1350;
y = -0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+1430;
y = 0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+1430;
y = -0.01*(1:100);
patch(x,y,'y');

x = 1430:1470;
y = -0.45*ones(1,41);
patch(x,y,'y');
x = 1430:1470;
y = 0.45*ones(1,41);
patch(x,y,'y');
x = ones(1,450)+1430;
y = 0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+1430;
y = -0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+1470;
y = 0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+1470;
y = -0.001*(1:450);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.35;
x = (514.286)*(r*cos(t))+1470;
y = r*sin(t);
patch(x, y,'g', 'FaceAlpha',.32)
line([1350,1950],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([1350,1430],[.75,.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([1350,1430],[-.75,-.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 1950:2030;
y = -1.25*ones(1,81);
patch(x,y,'y');
x = 1950:2030;
y = 1.25*ones(1,81);
patch(x,y,'y');
x = ones(1,125)+1950;
y = 0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+1950;
y = -0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+2030;
y = 0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+2030;
y = -0.01*(1:125);
patch(x,y,'y');

x = 2030:2070;
y = -0.55*ones(1,41);
patch(x,y,'y');
x = 2030:2070;
y = 0.55*ones(1,41);
patch(x,y,'y');
x = ones(1,550)+2030;
y = 0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+2030;
y = -0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+2070;
y = 0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+2070;
y = -0.001*(1:550);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.4;
x = 450*(r*cos(t))+2070;
y = r*sin(t);
patch(x, y,[0.3010 0.7450 0.9330], 'FaceAlpha',.32)
line([1950,2550],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([1950,2030],[.95,.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([1950,2030],[-.95,-.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 2550:2630;
y = -1.5*ones(1,81);
patch(x,y,'y');
x = 2550:2630;
y = 1.5*ones(1,81);
patch(x,y,'y');
x = ones(1,150)+2550;
y = 0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+2550;
y = -0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+2630;
y = 0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+2630;
y = -0.01*(1:150);
patch(x,y,'y');

x = 2630:2670;
y = -0.65*ones(1,41);
patch(x,y,'y');
x = 2630:2670;
y = 0.65*ones(1,41);
patch(x,y,'y');
x = ones(1,650)+2630;
y = 0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+2630;
y = -0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+2670;
y = 0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+2670;
y = -0.001*(1:650);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.5;
x = 360*(r*cos(t))+2670;
y = r*sin(t);
patch(x, y,'b', 'FaceAlpha',.32)
line([2550,3150],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([2550,2630],[1.2,1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([2550,2630],[-1.2,-1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 3150:3230;
y = -1.75*ones(1,81);
patch(x,y,'y');
x = 3150:3230;
y = 1.75*ones(1,81);
patch(x,y,'y');
x = ones(1,175)+3150;
y = 0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+3150;
y = -0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+3230;
y = 0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+3230;
y = -0.01*(1:175);
patch(x,y,'y');

x = 3230:3270;
y = -0.8*ones(1,41);
patch(x,y,'y');
x = 3230:3270;
y = 0.8*ones(1,41);
patch(x,y,'y');
x = ones(1,800)+3230;
y = 0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+3230;
y = -0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+3270;
y = 0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+3270;
y = -0.001*(1:800);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.55;
x = (327.273)*(r*cos(t))+3270;
y = r*sin(t);
patch(x, y,'m', 'FaceAlpha',.32)
line([3150,3750],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([3150,3230],[1.45,1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([3150,3230],[-1.45,-1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end

 




% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

a=7;
handles.a7 = a;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 EG = handles.ECG;
 x= (1:length(EG));
plot(x,EG)
axis([0 5000 -3 3])

x = 150:230;
y = -0.65*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 0.65*ones(1,81);
patch(x,y,'y');
x = ones(1,65)+150;
y = 0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+150;
y = -0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+230;
y = 0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+230;
y = -0.01*(1:65);
patch(x,y,'y');

x = 230:270;
y = -0.3*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.3*ones(1,41);
patch(x,y,'y');
x = ones(1,300)+230;
y = 0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+230;
y = -0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+270;
y = 0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+270;
y = -0.001*(1:300);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.2;
x = 900*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'y', 'FaceAlpha',.32)
line([150,750],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.5,.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.5,-.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 750:830;
y = -0.8*ones(1,81);
patch(x,y,'y');
x = 750:830;
y = 0.8*ones(1,81);
patch(x,y,'y');
x = ones(1,80)+750;
y = 0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+750;
y = -0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+830;
y = 0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+830;
y = -0.01*(1:80);
patch(x,y,'y');

x = 830:870;
y = -0.35*ones(1,41);
patch(x,y,'y');
x = 830:870;
y = 0.35*ones(1,41);
patch(x,y,'y');
x = ones(1,350)+830;
y = 0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+830;
y = -0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+870;
y = 0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+870;
y = -0.001*(1:350);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.25;
x = 720*(r*cos(t))+870;
y = r*sin(t);
patch(x, y,[0.9290 0.6940 0.1250], 'FaceAlpha',.32)
line([750,1350],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([750,830],[.6,.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([750,830],[-.6,-.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 1350:1430;
y = -1.0*ones(1,81);
patch(x,y,'y');
x = 1350:1430;
y = 1.0*ones(1,81);
patch(x,y,'y');
x = ones(1,100)+1350;
y = 0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+1350;
y = -0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+1430;
y = 0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+1430;
y = -0.01*(1:100);
patch(x,y,'y');

x = 1430:1470;
y = -0.45*ones(1,41);
patch(x,y,'y');
x = 1430:1470;
y = 0.45*ones(1,41);
patch(x,y,'y');
x = ones(1,450)+1430;
y = 0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+1430;
y = -0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+1470;
y = 0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+1470;
y = -0.001*(1:450);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.35;
x = (514.286)*(r*cos(t))+1470;
y = r*sin(t);
patch(x, y,'g', 'FaceAlpha',.32)
line([1350,1950],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([1350,1430],[.75,.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([1350,1430],[-.75,-.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 1950:2030;
y = -1.25*ones(1,81);
patch(x,y,'y');
x = 1950:2030;
y = 1.25*ones(1,81);
patch(x,y,'y');
x = ones(1,125)+1950;
y = 0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+1950;
y = -0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+2030;
y = 0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+2030;
y = -0.01*(1:125);
patch(x,y,'y');

x = 2030:2070;
y = -0.55*ones(1,41);
patch(x,y,'y');
x = 2030:2070;
y = 0.55*ones(1,41);
patch(x,y,'y');
x = ones(1,550)+2030;
y = 0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+2030;
y = -0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+2070;
y = 0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+2070;
y = -0.001*(1:550);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.4;
x = 450*(r*cos(t))+2070;
y = r*sin(t);
patch(x, y,[0.3010 0.7450 0.9330], 'FaceAlpha',.32)
line([1950,2550],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([1950,2030],[.95,.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([1950,2030],[-.95,-.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 2550:2630;
y = -1.5*ones(1,81);
patch(x,y,'y');
x = 2550:2630;
y = 1.5*ones(1,81);
patch(x,y,'y');
x = ones(1,150)+2550;
y = 0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+2550;
y = -0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+2630;
y = 0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+2630;
y = -0.01*(1:150);
patch(x,y,'y');

x = 2630:2670;
y = -0.65*ones(1,41);
patch(x,y,'y');
x = 2630:2670;
y = 0.65*ones(1,41);
patch(x,y,'y');
x = ones(1,650)+2630;
y = 0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+2630;
y = -0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+2670;
y = 0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+2670;
y = -0.001*(1:650);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.5;
x = 360*(r*cos(t))+2670;
y = r*sin(t);
patch(x, y,'b', 'FaceAlpha',.32)
line([2550,3150],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([2550,2630],[1.2,1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([2550,2630],[-1.2,-1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

x = 3150:3230;
y = -1.75*ones(1,81);
patch(x,y,'y');
x = 3150:3230;
y = 1.75*ones(1,81);
patch(x,y,'y');
x = ones(1,175)+3150;
y = 0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+3150;
y = -0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+3230;
y = 0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+3230;
y = -0.01*(1:175);
patch(x,y,'y');

x = 3230:3270;
y = -0.8*ones(1,41);
patch(x,y,'y');
x = 3230:3270;
y = 0.8*ones(1,41);
patch(x,y,'y');
x = ones(1,800)+3230;
y = 0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+3230;
y = -0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+3270;
y = 0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+3270;
y = -0.001*(1:800);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.55;
x = (327.273)*(r*cos(t))+3270;
y = r*sin(t);
patch(x, y,'m', 'FaceAlpha',.32)
line([3150,3750],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([3150,3230],[1.45,1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([3150,3230],[-1.45,-1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')

set(handles.slider1,'visible','on')
set(handles.slider2,'visible','on')
set(handles.text3,'visible','on')
set(handles.text4,'visible','on')

if isfield(handles,'a1') 
set(handles.slider3,'visible','off')
set(handles.slider4,'visible','off')
set(handles.text6,'visible','off')
set(handles.text7,'visible','off')
end

if isfield(handles,'a2') 
set(handles.slider5,'visible','off')
set(handles.slider6,'visible','off')
set(handles.text8,'visible','off')
set(handles.text9,'visible','off')
end

if isfield(handles,'a3') 
set(handles.slider7,'visible','off')
set(handles.slider8,'visible','off')
set(handles.text10,'visible','off')
set(handles.text11,'visible','off')
end

if isfield(handles,'a4') 
set(handles.slider9,'visible','off')
set(handles.slider10,'visible','off')
set(handles.text12,'visible','off')
set(handles.text13,'visible','off')
end

if isfield(handles,'a5') 
set(handles.slider11,'visible','off')
set(handles.slider12,'visible','off')
set(handles.text14,'visible','off')
set(handles.text15,'visible','off')
end

if isfield(handles,'a6') 
set(handles.slider13,'visible','off')
set(handles.slider14,'visible','off')
set(handles.text16,'visible','off')
set(handles.text17,'visible','off')
end

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dd='Pass';
gg='N/A';
handles.c1 = dd;
handles.reason=gg;

 guidata(hObject,handles);


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d='High S-wave';
handles.reason = d;

 guidata(hObject,handles);

% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d='Low QRS complex';
handles.reason = d;

 guidata(hObject,handles);

% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d='High P-value';
handles.reason = d;

 guidata(hObject,handles);

% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d='High R-wave';
handles.reason = d;

 guidata(hObject,handles);

% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
d='High T value';
handles.reason = d;

 guidata(hObject,handles);

% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);

set(handles.text6,'String',num2str(sliderVal));

sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);
handles.sVal=sliderVal;
set(handles.text6,'String',num2str(sliderVal));
sliderVal1 = get(handles.slider4, 'Value');
handles.aVal=sliderVal1;
ECG = get(handles.pushbutton1, 'Value');


 guidata(hObject,handles);
 
  if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;     
plot(x,EG2)
axis([0 5000 -3 3])
 end

if isfield(handles,'a1')
hold on
x = 150:230;
y = -0.65*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 0.65*ones(1,81);
patch(x,y,'y');
x = ones(1,65)+150;
y = 0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+150;
y = -0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+230;
y = 0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+230;
y = -0.01*(1:65);
patch(x,y,'y');

x = 230:270;
y = -0.3*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.3*ones(1,41);
patch(x,y,'y');
x = ones(1,300)+230;
y = 0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+230;
y = -0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+270;
y = 0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+270;
y = -0.001*(1:300);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.2;
x = 900*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'y', 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.5,.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.5,-.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal1',sliderVal1);

set(handles.text7,'String',num2str(sliderVal1));

sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal1);
handles.aVal=sliderVal1;
set(handles.text7,'String',num2str(sliderVal1));
sliderVal = get(handles.slider3, 'Value');
handles.sVal=sliderVal;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;
plot(x,EG2)
axis([0 5000 -3 3])
 end

if isfield(handles,'a1')
hold on
x = 150:230;
y = -0.65*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 0.65*ones(1,81);
patch(x,y,'y');
x = ones(1,65)+150;
y = 0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+150;
y = -0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+230;
y = 0.01*(1:65);
patch(x,y,'y');
x = ones(1,65)+230;
y = -0.01*(1:65);
patch(x,y,'y');

x = 230:270;
y = -0.3*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.3*ones(1,41);
patch(x,y,'y');
x = ones(1,300)+230;
y = 0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+230;
y = -0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+270;
y = 0.001*(1:300);
patch(x,y,'y');
x = ones(1,300)+270;
y = -0.001*(1:300);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.2;
x = 900*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'y', 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.5,.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.5,-.5], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);

set(handles.text8,'String',num2str(sliderVal));

sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);
handles.sVal=sliderVal;
set(handles.text8,'String',num2str(sliderVal));
sliderVal1 = get(handles.slider6, 'Value');
handles.aVal=sliderVal1;
ECG = get(handles.pushbutton1, 'Value');


 guidata(hObject,handles);
 
  if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;     
plot(x,EG2)
axis([0 5000 -3 3])
 end

if isfield(handles,'a2')
hold on
x = 150:230;
y = -0.8*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 0.8*ones(1,81);
patch(x,y,'y');
x = ones(1,80)+150;
y = 0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+150;
y = -0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+230;
y = 0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+230;
y = -0.01*(1:80);
patch(x,y,'y');

x = 230:270;
y = -0.35*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.35*ones(1,41);
patch(x,y,'y');
x = ones(1,350)+230;
y = 0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+230;
y = -0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+270;
y = 0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+270;
y = -0.001*(1:350);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.25;
x = 720*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,[0.9290 0.6940 0.1250], 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.6,.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.6,-.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal1',sliderVal1);

set(handles.text9,'String',num2str(sliderVal1));

sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal1);
handles.aVal=sliderVal1;
set(handles.text9,'String',num2str(sliderVal1));
sliderVal = get(handles.slider5, 'Value');
handles.sVal=sliderVal;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;
plot(x,EG2)
axis([0 5000 -3 3])
 end

if isfield(handles,'a2')
hold on
x = 150:230;
y = -0.8*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 0.8*ones(1,81);
patch(x,y,'y');
x = ones(1,80)+150;
y = 0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+150;
y = -0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+230;
y = 0.01*(1:80);
patch(x,y,'y');
x = ones(1,80)+230;
y = -0.01*(1:80);
patch(x,y,'y');

x = 230:270;
y = -0.35*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.35*ones(1,41);
patch(x,y,'y');
x = ones(1,350)+230;
y = 0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+230;
y = -0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+270;
y = 0.001*(1:350);
patch(x,y,'y');
x = ones(1,350)+270;
y = -0.001*(1:350);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.25;
x = 720*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,[0.9290 0.6940 0.1250], 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.6,.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.6,-.6], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end

% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);

set(handles.text10,'String',num2str(sliderVal));

sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);
handles.sVal=sliderVal;
set(handles.text10,'String',num2str(sliderVal));
sliderVal1 = get(handles.slider8, 'Value');
handles.aVal=sliderVal1;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
  if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;     
plot(x,EG2)
axis([0 5000 -3 3])
  end
 
if isfield(handles,'a3')
hold on
x = 150:230;
y = -1.0*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 1.0*ones(1,81);
patch(x,y,'y');
x = ones(1,100)+150;
y = 0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+150;
y = -0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+230;
y = 0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+230;
y = -0.01*(1:100);
patch(x,y,'y');

x = 230:270;
y = -0.45*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.45*ones(1,41);
patch(x,y,'y');
x = ones(1,450)+230;
y = 0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+230;
y = -0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+270;
y = 0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+270;
y = -0.001*(1:450);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.35;
x = (514.286)*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'g', 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.75,.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.75,-.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal1',sliderVal1);

set(handles.text11,'String',num2str(sliderVal1));

sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal1);
handles.aVal=sliderVal1;
set(handles.text11,'String',num2str(sliderVal1));
sliderVal = get(handles.slider7, 'Value');
handles.sVal=sliderVal;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;
plot(x,EG2)
axis([0 5000 -3 3])
 end

if isfield(handles,'a3')
hold on
x = 150:230;
y = -1.0*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 1.0*ones(1,81);
patch(x,y,'y');
x = ones(1,100)+150;
y = 0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+150;
y = -0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+230;
y = 0.01*(1:100);
patch(x,y,'y');
x = ones(1,100)+230;
y = -0.01*(1:100);
patch(x,y,'y');

x = 230:270;
y = -0.45*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.45*ones(1,41);
patch(x,y,'y');
x = ones(1,450)+230;
y = 0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+230;
y = -0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+270;
y = 0.001*(1:450);
patch(x,y,'y');
x = ones(1,450)+270;
y = -0.001*(1:450);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.35;
x = (514.286)*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'g', 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.75,.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.75,-.75], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);

set(handles.text12,'String',num2str(sliderVal));

sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);
handles.sVal=sliderVal;
set(handles.text12,'String',num2str(sliderVal));
sliderVal1 = get(handles.slider10, 'Value');
handles.aVal=sliderVal1;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
  if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;     
plot(x,EG2)
axis([0 5000 -3 3])
  end

if isfield(handles,'a4')
hold on
x = 150:230;
y = -1.25*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 1.25*ones(1,81);
patch(x,y,'y');
x = ones(1,125)+150;
y = 0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+150;
y = -0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+230;
y = 0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+230;
y = -0.01*(1:125);
patch(x,y,'y');

x = 230:270;
y = -0.55*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.55*ones(1,41);
patch(x,y,'y');
x = ones(1,550)+230;
y = 0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+230;
y = -0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+270;
y = 0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+270;
y = -0.001*(1:550);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.4;
x = 450*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,[0.3010 0.7450 0.9330], 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.95,.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.95,-.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider10_Callback(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal1',sliderVal1);

set(handles.text13,'String',num2str(sliderVal1));

sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal1);
handles.aVal=sliderVal1;
set(handles.text13,'String',num2str(sliderVal1));
sliderVal = get(handles.slider9, 'Value');
handles.sVal=sliderVal;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;
plot(x,EG2)
axis([0 5000 -3 3])
 end

if isfield(handles,'a4')
hold on
x = 150:230;
y = -1.25*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 1.25*ones(1,81);
patch(x,y,'y');
x = ones(1,125)+150;
y = 0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+150;
y = -0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+230;
y = 0.01*(1:125);
patch(x,y,'y');
x = ones(1,125)+230;
y = -0.01*(1:125);
patch(x,y,'y');

x = 230:270;
y = -0.55*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.55*ones(1,41);
patch(x,y,'y');
x = ones(1,550)+230;
y = 0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+230;
y = -0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+270;
y = 0.001*(1:550);
patch(x,y,'y');
x = ones(1,550)+270;
y = -0.001*(1:550);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.4;
x = 450*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,[0.3010 0.7450 0.9330], 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[.95,.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-.95,-.95], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end


% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider11_Callback(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);

set(handles.text14,'String',num2str(sliderVal));

sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);
handles.sVal=sliderVal;
set(handles.text14,'String',num2str(sliderVal));
sliderVal1 = get(handles.slider12, 'Value');
handles.aVal=sliderVal1;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
  if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;     
plot(x,EG2)
axis([0 5000 -3 3])
  end

if isfield(handles,'a5')
hold on
x = 150:230;
y = -1.5*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 1.5*ones(1,81);
patch(x,y,'y');
x = ones(1,150)+150;
y = 0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+150;
y = -0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+230;
y = 0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+230;
y = -0.01*(1:150);
patch(x,y,'y');

x = 230:270;
y = -0.65*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.65*ones(1,41);
patch(x,y,'y');
x = ones(1,650)+230;
y = 0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+230;
y = -0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+270;
y = 0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+270;
y = -0.001*(1:650);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.5;
x = 360*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'b', 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[1.2,1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-1.2,-1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end



% --- Executes during object creation, after setting all properties.
function slider11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider12_Callback(hObject, eventdata, handles)
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal1',sliderVal1);

set(handles.text15,'String',num2str(sliderVal1));

sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal1);
handles.aVal=sliderVal1;
set(handles.text15,'String',num2str(sliderVal1));
sliderVal = get(handles.slider11, 'Value');
handles.sVal=sliderVal;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;
plot(x,EG2)
axis([0 5000 -3 3])
 end


if isfield(handles,'a5')
hold on
x = 150:230;
y = -1.5*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 1.5*ones(1,81);
patch(x,y,'y');
x = ones(1,150)+150;
y = 0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+150;
y = -0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+230;
y = 0.01*(1:150);
patch(x,y,'y');
x = ones(1,150)+230;
y = -0.01*(1:150);
patch(x,y,'y');

x = 230:270;
y = -0.65*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.65*ones(1,41);
patch(x,y,'y');
x = ones(1,650)+230;
y = 0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+230;
y = -0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+270;
y = 0.001*(1:650);
patch(x,y,'y');
x = ones(1,650)+270;
y = -0.001*(1:650);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.5;
x = 360*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'b', 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[1.2,1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-1.2,-1.2], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end


% --- Executes during object creation, after setting all properties.
function slider12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider13_Callback(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);

set(handles.text16,'String',num2str(sliderVal));

sliderVal = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal);
handles.sVal=sliderVal;
set(handles.text16,'String',num2str(sliderVal));
sliderVal1 = get(handles.slider14, 'Value');
handles.aVal=sliderVal1;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
  if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;     
plot(x,EG2)
axis([0 5000 -3 3])
  end

if isfield(handles,'a6')
hold on
x = 150:230;
y = -1.75*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 1.75*ones(1,81);
patch(x,y,'y');
x = ones(1,175)+150;
y = 0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+150;
y = -0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+230;
y = 0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+230;
y = -0.01*(1:175);
patch(x,y,'y');

x = 230:270;
y = -0.8*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.8*ones(1,41);
patch(x,y,'y');
x = ones(1,800)+230;
y = 0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+230;
y = -0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+270;
y = 0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+270;
y = -0.001*(1:800);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.55;
x = (327.273)*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'m', 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[1.45,1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-1.45,-1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end


% --- Executes during object creation, after setting all properties.
function slider13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider14_Callback(hObject, eventdata, handles)
% hObject    handle to slider14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal1',sliderVal1);

set(handles.text17,'String',num2str(sliderVal1));

sliderVal1 = get(hObject, 'Value');
assignin('base','sliderVal',sliderVal1);
handles.aVal=sliderVal1;
set(handles.text17,'String',num2str(sliderVal1));
sliderVal = get(handles.slider13, 'Value');
handles.sVal=sliderVal;
ECG = get(handles.pushbutton1, 'Value');

 guidata(hObject,handles);
 
 if isfield(handles,'sVal') 
     EG = handles.ECG;
     Val = handles.sVal;
     EG2 = EG + Val;
     x= (1:length(EG))+handles.aVal;
plot(x,EG2)
axis([0 5000 -3 3])
 end


if isfield(handles,'a6')
hold on
x = 150:230;
y = -1.75*ones(1,81);
patch(x,y,'y');
x = 150:230;
y = 1.75*ones(1,81);
patch(x,y,'y');
x = ones(1,175)+150;
y = 0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+150;
y = -0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+230;
y = 0.01*(1:175);
patch(x,y,'y');
x = ones(1,175)+230;
y = -0.01*(1:175);
patch(x,y,'y');

x = 230:270;
y = -0.8*ones(1,41);
patch(x,y,'y');
x = 230:270;
y = 0.8*ones(1,41);
patch(x,y,'y');
x = ones(1,800)+230;
y = 0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+230;
y = -0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+270;
y = 0.001*(1:800);
patch(x,y,'y');
x = ones(1,800)+270;
y = -0.001*(1:800);
patch(x,y,'y');

t = linspace(-pi/2, pi/2);
r = 0.55;
x = (327.273)*(r*cos(t))+270;
y = r*sin(t);
patch(x, y,'m', 'FaceAlpha',.32)
line([150,600],[0,0], 'LineStyle', '-', 'LineWidth', .2, 'color', 'k')
line([150,230],[1.45,1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
line([150,230],[-1.45,-1.45], 'LineStyle', ':', 'LineWidth', 1.5, 'color', 'k')
hold off
end


% --- Executes during object creation, after setting all properties.
function slider14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

imageData = screencapture(gca,[]);
handles.imageData=imageData;

 guidata(hObject,handles);

%  imwrite(imageData, 'image.jpg');

 if isfield(handles,'h1')
 b=handles.h1;
ll=handles.lead;
%  display(b);
 imwrite(imageData,strcat(b,'_lead_no_',ll,'.jpg')); 
 end
 
 


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ccc='Fail';
handles.c1 = ccc;

 guidata(hObject,handles);
 
  if isfield(handles,'c1') 
set(handles.pushbutton16,'visible','on')
set(handles.pushbutton18,'visible','on')
set(handles.pushbutton19,'visible','on')
set(handles.pushbutton20,'visible','on')
set(handles.pushbutton21,'visible','on')
 end


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

A=handles.h1;
D=handles.c1;
C=handles.reason;
B=handles.lead;
%display(B);
% end

 
 
fid=fopen('S-ICD_Eligibility.txt','a+');
%fprintf(fid, [ '  ' header1 '               ' header2 '         ' header3 '         ' header4 '\n'],1);
% fclose(fid);
% fid=fopen('test5.txt','a+');
fprintf(fid, '%10s %7s %20s %19s \n',A,B,D,C);
fclose(fid); 


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c=1;
vv='1';
handles.c4 = c;
handles.lead=vv;
load(handles.filename);
ECG12Lead=ECG3Lead;
%Remove DC
    ECG12Lead_RDC=NaN(length(ECG12Lead(:,1)),3);
    for i=1:3
        ECG12Lead_RDC(:,i)=ECG12Lead(:,i)-mean(ECG12Lead(:,i));
    end

    %Remove baseline
    ECG12Lead_bwr=[];
    ECG12Lead_bwr=NaN(length(ECG12Lead_RDC(:,1)),3);
    for i=1:3
        temp=[]; temp_b=[];
        temp = ECG12Lead_RDC(:,i);
        temp_b = bw(temp', fs*.5, 'md');
        ECG12Lead_bwr(1:length(temp),i) = temp-temp_b';
    end
plot(ECG12Lead_bwr(:,1)/1000)
ECG = ECG12Lead_bwr(:,1)/1000;
handles.ECG = ECG;
axis([0 5000 -3 3])

 guidata(hObject,handles);
 
  if isfield(handles,'c4') 
set(handles.pushbutton16,'visible','off')
set(handles.pushbutton18,'visible','off')
set(handles.pushbutton19,'visible','off')
set(handles.pushbutton20,'visible','off')
set(handles.pushbutton21,'visible','off')
end
 
   if isfield(handles,'c4') 
set(handles.pushbutton16,'visible','off')
set(handles.pushbutton18,'visible','off')
set(handles.pushbutton19,'visible','off')
set(handles.pushbutton20,'visible','off')
set(handles.pushbutton21,'visible','off')
 end

% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c=2;
vv='2';
handles.c5 = c;
handles.lead=vv;
load(handles.filename);
ECG12Lead=ECG3Lead;
%Remove DC
    ECG12Lead_RDC=NaN(length(ECG12Lead(:,2)),3);
    for i=1:3
        ECG12Lead_RDC(:,i)=ECG12Lead(:,i)-mean(ECG12Lead(:,i));
    end

    %Remove baseline
    ECG12Lead_bwr=[];
    ECG12Lead_bwr=NaN(length(ECG12Lead_RDC(:,2)),3);
    for i=1:3
        temp=[]; temp_b=[];
        temp = ECG12Lead_RDC(:,i);
        temp_b = bw(temp', fs*.5, 'md');
        ECG12Lead_bwr(1:length(temp),i) = temp-temp_b';
    end
plot(ECG12Lead_bwr(:,2)/1000)
ECG = ECG12Lead_bwr(:,2)/1000;
handles.ECG = ECG;
axis([0 5000 -3 3])


 guidata(hObject,handles);
 
  if isfield(handles,'c5') 
set(handles.pushbutton16,'visible','off')
set(handles.pushbutton18,'visible','off')
set(handles.pushbutton19,'visible','off')
set(handles.pushbutton20,'visible','off')
set(handles.pushbutton21,'visible','off')
end
 
   if isfield(handles,'c5') 
set(handles.pushbutton16,'visible','off')
set(handles.pushbutton18,'visible','off')
set(handles.pushbutton19,'visible','off')
set(handles.pushbutton20,'visible','off')
set(handles.pushbutton21,'visible','off')
 end

% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
c=3;
vv='3';
handles.c6 = c;
handles.lead=vv;
load(handles.filename);
ECG12Lead=ECG3Lead;
%Remove DC
    ECG12Lead_RDC=NaN(length(ECG12Lead(:,3)),3);
    for i=1:3
        ECG12Lead_RDC(:,i)=ECG12Lead(:,i)-mean(ECG12Lead(:,i));
    end

    %Remove baseline
    ECG12Lead_bwr=[];
    ECG12Lead_bwr=NaN(length(ECG12Lead_RDC(:,3)),3);
    for i=1:3
        temp=[]; temp_b=[];
        temp = ECG12Lead_RDC(:,i);
        temp_b = bw(temp', fs*.5, 'md');
        ECG12Lead_bwr(1:length(temp),i) = temp-temp_b';
    end
plot(ECG12Lead_bwr(:,3)/1000)
ECG = ECG12Lead_bwr(:,3)/1000;
handles.ECG = ECG;
axis([0 5000 -3 3])

 guidata(hObject,handles);
 
  if isfield(handles,'c6') 
set(handles.pushbutton16,'visible','off')
set(handles.pushbutton18,'visible','off')
set(handles.pushbutton19,'visible','off')
set(handles.pushbutton20,'visible','off')
set(handles.pushbutton21,'visible','off')
end
 
   if isfield(handles,'c6') 
set(handles.pushbutton16,'visible','off')
set(handles.pushbutton18,'visible','off')
set(handles.pushbutton19,'visible','off')
set(handles.pushbutton20,'visible','off')
set(handles.pushbutton21,'visible','off')
 end


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
header1 = 'ID&Position';
 header2='Lead No';
 header3='Pass/Fail'; 
 header4='Reason';
fid=fopen('S-ICD_Eligibility.txt','w');
fprintf(fid, [ '  ' header1 '               ' header2 '           ' header3 '            ' header4 '\n'],1);
fclose(fid);
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
