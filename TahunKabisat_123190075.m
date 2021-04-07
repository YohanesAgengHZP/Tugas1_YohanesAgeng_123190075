function varargout = TahunKabisat_123190075(varargin)
% TAHUNKABISAT_123190075 MATLAB code for TahunKabisat_123190075.fig
%      TAHUNKABISAT_123190075, by itself, creates a new TAHUNKABISAT_123190075 or raises the existing
%      singleton*.
%
%      H = TAHUNKABISAT_123190075 returns the handle to a new TAHUNKABISAT_123190075 or the handle to
%      the existing singleton*.
%
%      TAHUNKABISAT_123190075('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TAHUNKABISAT_123190075.M with the given input arguments.
%
%      TAHUNKABISAT_123190075('Property','Value',...) creates a new TAHUNKABISAT_123190075 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TahunKabisat_123190075_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TahunKabisat_123190075_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TahunKabisat_123190075

% Last Modified by GUIDE v2.5 07-Apr-2021 07:21:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TahunKabisat_123190075_OpeningFcn, ...
                   'gui_OutputFcn',  @TahunKabisat_123190075_OutputFcn, ...
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


% --- Executes just before TahunKabisat_123190075 is made visible.
function TahunKabisat_123190075_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TahunKabisat_123190075 (see VARARGIN)

% Choose default command line output for TahunKabisat_123190075
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TahunKabisat_123190075 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TahunKabisat_123190075_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function tahun_Callback(hObject, eventdata, handles)
% hObject    handle to tahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tahun as text
%        str2double(get(hObject,'String')) returns contents of tahun as a double
tahun = str2double(get(hObject, 'String'));
if isnan(tahun)
    set(hObject, 'String', '');
    errordig('tahun harus diisi dengan angka !!','Ada yang salah ?');
elseif (tahun <= 0)
    set(hObject, 'String', '');
    errordlg('tahun tidak boleh nol !!','Ada yang salah ?');
elseif isempty(tahun)  
    errordlg('Panjang tidak boleh kosong !!','Ada yang salah ?');
else
end


% --- Executes during object creation, after setting all properties.
function tahun_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tahun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tmbl_cek.
function tmbl_cek_Callback(hObject, eventdata, handles)
% hObject    handle to tmbl_cek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tahun = get(handles.tahun, 'string');
tahun = str2double(tahun);
if mod(tahun,400) == 0
    hasil= 'Tahun Kabisat';
elseif mod(tahun,100) == 0
    hasil = 'Bukan Tahun Kabisat';
elseif mod(tahun,4) == 0
    hasil = 'Tahun Kabisat';
else 
    hasil = 'Bukan Tahun Kabisat';
end
set(handles.hasil, 'String', hasil)




function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
