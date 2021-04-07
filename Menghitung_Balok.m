function varargout = Menghitung_Balok(varargin)
% MENGHITUNG_BALOK MATLAB code for Menghitung_Balok.fig
%      MENGHITUNG_BALOK, by itself, creates a new MENGHITUNG_BALOK or raises the existing
%      singleton*.
%
%      H = MENGHITUNG_BALOK returns the handle to a new MENGHITUNG_BALOK or the handle to
%      the existing singleton*.
%
%      MENGHITUNG_BALOK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENGHITUNG_BALOK.M with the given input arguments.
%
%      MENGHITUNG_BALOK('Property','Value',...) creates a new MENGHITUNG_BALOK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Menghitung_Balok_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Menghitung_Balok_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Menghitung_Balok

% Last Modified by GUIDE v2.5 07-Apr-2021 06:45:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Menghitung_Balok_OpeningFcn, ...
                   'gui_OutputFcn',  @Menghitung_Balok_OutputFcn, ...
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


% --- Executes just before Menghitung_Balok is made visible.
function Menghitung_Balok_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Menghitung_Balok (see VARARGIN)

% Choose default command line output for Menghitung_Balok
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Menghitung_Balok wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Menghitung_Balok_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in tmbl_reset.
function tmbl_reset_Callback(hObject, eventdata, handles)
% hObject    handle to tmbl_reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)\
selection=questdlg(['Anda yakin ingin mereset semua data ini',' ?'],...
    ['bertanya' '' '...'],...
    'Ya','Batal','Ya');
if strcmp(selection,'Batal')
    return
end
set(handles.Hasil_teks, 'String', '');
set(handles.Hasil, 'String', '');
set(handles.panjang, 'String', '');
set(handles.lebar, 'String', '');
set(handles.tinggi, 'String', '');
set(handles.lebar, 'Enable', 'off');
set(handles.tinggi, 'Enable', 'off');
set(handles.Volumebalok, 'Enable', 'off');
set(handles.Luasbalok, 'Enable', 'off');
set(handles.Volumebalok, 'Value', 0);
set(handles.Luasbalok, 'Value', 0);


% --- Executes on button press in tmbl_keluar.
function tmbl_keluar_Callback(hObject, eventdata, handles)
% hObject    handle to tmbl_keluar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selection=questdlg(['Anda Yakin Ingin Menutup Aplikasi',' ?'],...
    ['bertanya' '' '...'],...
    'Ya','Batal','Ya');
if strcmp(selection,'Batal')
    return
end
close;

% --------Kode untuk validasi data (reset)
function initialize_gui(fig_handle, handles, isreset)
if isfield(handles, 'metricdata') && ~isreset
    return;
end
guidata(handles. LuasVolumeBalok, handles);



function panjang_Callback(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of panjang as text
%        str2double(get(hObject,'String')) returns contents of panjang as a double
panjang = str2double(get(hObject, 'String'));
if isnan(panjang)
    set(handles.lebar,'Enable','off');
    set(hObject, 'String', '');
    errordig('Panjang harus diisi dengan angka !!','Ada yang salah ?');
elseif (panjang <= 0)
    set(handles.lebar,'Enable','off');
    set(hObject, 'String', '');errordlg('Panjang tidak boleh nol !!','Ada yang salah ?');
elseif isempty(panjang)
    set(handles.lebar,'Enable','off');  
    errordlg('Panjang tidak boleh kosong !!','Ada yang salah ?');
else
    set(handles.lebar,'Enable','on');
end

% --- Executes during object creation, after setting all properties.
function panjang_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lebar_Callback(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lebar as text
%        str2double(get(hObject,'String')) returns contents of lebar as a double
lebar = str2double(get(hObject, 'String'));
if isnan(lebar)
    set(handles.tinggi,'Enable','off');  
    set(hObject, 'String', '');
    errordlg('Lebar harus diisi dengan angka !!','Ada yang salah ?');
elseif (lebar <= 0)
    set(handles.tinggi,'Enable','off');  
    set(hObject, 'String', '');
    errordlg('Lebar tidak boleh nol !!','Ada yang salah ?')
elseif isempty(lebar)
    set(handles.tinggi,'Enable','off');  
    errordlg('Lebar tidak boleh kosong !!','Ada yang salah ?');
else
    set(handles.tinggi,'Enable','on');
end

% --- Executes during object creation, after setting all properties.
function lebar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tinggi_Callback(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tinggi as text
%        str2double(get(hObject,'String')) returns contents of tinggi as a double
tinggi = str2double(get(hObject, 'String'));
if isnan(tinggi)
    set(handles.Volumebalok,'Enable','off'); 
    set(handles.Luasbalok,'Enable','off'); 
    set(hObject, 'String', '');
    errordlg('Tinggi harus diisi dengan angka !!','Ada yang salah ?');
elseif (tinggi <= 0)
    set(handles.Volumebalok,'Enable','off'); 
    set(handles.Luasbalok,'Enable','off'); 
    set(hObject, 'String', '');
    errordlg('Tinggi tidak boleh nol !!','Ada yang salah ?');
elseif isempty(tinggi)
    set(handles.Volumebalok,'Enable','off'); 
    set(handles.Luasbalok,'Enable','off');   
    errordlg('Tinggi tidak boleh kosong !!','Ada yang salah ?');
else
    set(handles.Volumebalok,'Enable','on'); 
    set(handles.Luasbalok,'Enable','on');
end


% --- Executes during object creation, after setting all properties.
function tinggi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in panel_pilih.
function panel_pilih_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in panel_pilih 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p=str2num(get(handles.panjang, 'String'));
l=str2num(get(handles.lebar, 'String'));
t=str2num(get(handles.tinggi, 'String'));
luas=2*((p*l)+(p*t)+(l*t));
volume=p*l*t;
if (hObject == handles.Volumebalok)
    set(handles.hasil_teks, 'String', 'Volume Balok');
    set(handles.Hasil, 'String', volume);
else
    set(handles.hasil_teks, 'String', 'Luas Balok');
    set(handles.Hasil, 'String', luas);
end
