function varargout = sin_function_modification(varargin)
% SIN_FUNCTION_MODIFICATION MATLAB code for sin_function_modification.fig
%      SIN_FUNCTION_MODIFICATION, by itself, creates a new SIN_FUNCTION_MODIFICATION or raises the existing
%      singleton*.
%
%      H = SIN_FUNCTION_MODIFICATION returns the handle to a new SIN_FUNCTION_MODIFICATION or the handle to
%      the existing singleton*.
%
%      SIN_FUNCTION_MODIFICATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIN_FUNCTION_MODIFICATION.M with the given input arguments.
%
%      SIN_FUNCTION_MODIFICATION('Property','Value',...) creates a new SIN_FUNCTION_MODIFICATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sin_function_modification_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sin_function_modification_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sin_function_modification

% Last Modified by GUIDE v2.5 07-Nov-2022 13:21:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sin_function_modification_OpeningFcn, ...
                   'gui_OutputFcn',  @sin_function_modification_OutputFcn, ...
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

s1pos = 0;
s2pos = 0;
% --- Executes just before sin_function_modification is made visible.
function sin_function_modification_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sin_function_modification (see VARARGIN)

% Choose default command line output for sin_function_modification
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sin_function_modification wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = sin_function_modification_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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

s1pos = get(handles.slider1, 'value');
s2pos = get(handles.slider2, 'value');
x = 0: 0.01: 70;
plot(handles.axes1, (s2pos).*sin(s1pos*x));
ylim([-1 1]);
set(handles.text5, 'string', s2pos);
set(handles.text1, 'string', s1pos);



% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
