%Function M-file:contra_substitute.m
%複素数からｄＢとθにかえる



function data_dB_t = contra_substitute2(data )

if data < eps
    disp('データ不足です（contra_substitute.m）');
end

data_dB_t(:,:,:,1) = mag2db(abs(data(:,:,:)));
data_dB_t(:,:,:,2) = angle(data(:,:,:)) * 180 / pi; %３６０度で返す

%end function