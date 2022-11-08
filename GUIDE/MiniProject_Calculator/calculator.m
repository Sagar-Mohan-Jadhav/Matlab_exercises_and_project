function varargout = calculator(varargin)
% CALCULATOR MATLAB code for calculator.fig
%      CALCULATOR, by itself, creates a new CALCULATOR or raises the existing
%      singleton*.
%
%      H = CALCULATOR returns the handle to a new CALCULATOR or the handle to
%      the existing singleton*.
%
%      CALCULATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULATOR.M with the given input arguments.
%
%      CALCULATOR('Property','Value',...) creates a new CALCULATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculator

% Last Modified by GUIDE v2.5 08-Nov-2022 23:45:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculator_OpeningFcn, ...
                   'gui_OutputFcn',  @calculator_OutputFcn, ...
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


% --- Executes just before calculator is made visible.
function calculator_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculator (see VARARGIN)

% Choose default command line output for calculator
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculator_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(~, ~, ~)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, ~, ~)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in seven.
function seven_Callback(~, ~, handles)
% hObject    handle to seven (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '7');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in four.
function four_Callback(~, ~, handles)
% hObject    handle to four (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '4');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in one.
function one_Callback(~, ~, handles)
% hObject    handle to one (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '1');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in point.
function point_Callback(~, ~, handles)
% hObject    handle to point (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '.');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in eight.
function eight_Callback(~, ~, handles)
% hObject    handle to eight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '8');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in five.
function five_Callback(~, ~, handles)
% hObject    handle to five (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '5');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in two.
function two_Callback(~, ~, handles)
% hObject    handle to two (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '2');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in zero.
function zero_Callback(~, ~, handles)
% hObject    handle to zero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '0');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in nine.
function nine_Callback(~, ~, handles)
% hObject    handle to nine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '9');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in six.
function six_Callback(~, ~, handles)
% hObject    handle to six (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '6');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in three.
function three_Callback(~, ~, handles)
% hObject    handle to three (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '3');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in equal.
function equal_Callback(~, ~, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
split_value = strsplit(old_value, ["+", "-", "x", "/"]);
if sum(ismember(['+', '-', 'x', '/'], old_value)) == 1
    num1 = str2double(cell2mat(split_value(1)));
    num2 = str2double(cell2mat(split_value(2)));
    if ismember('+', old_value)
        set(handles.edit1, 'string', num1 + num2)
    elseif ismember('-', old_value)
        set(handles.edit1, 'string', num1 - num2)
    elseif ismember('x', old_value)
        set(handles.edit1, 'string', num1*num2)
    elseif ismember('/', old_value)
        set(handles.edit1, 'string', num1/num2)
    end
else
    set(handles.edit1, 'string', old_value)
end


% --- Executes on button press in division.
function division_Callback(~, ~, handles)
% hObject    handle to division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '/');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in multiplication.
function multiplication_Callback(~, ~, handles)
% hObject    handle to multiplication (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, 'x');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in minus.
function minus_Callback(~, ~, handles)
% hObject    handle to minus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = strcat(old_value, '-');
set(handles.edit1, 'string', new_value);


% --- Executes on button press in plus.
function plus_Callback(~, ~, handles)
% hObject    handle to plus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
old_value = get(handles.edit1, 'string');
if old_value == "NaN"
    no_out = "";
    set(handles.edit1, 'string', no_out);
end
old_value = get(handles.edit1, 'string');
new_value = string(old_value) + "+";
set(handles.edit1, 'string', new_value);


% --- Executes on button press in clear.
function clear_Callback(~, ~, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
new_value = "";
set(handles.edit1, 'string', new_value);
