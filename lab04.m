%###########################################
% CPS 621 Winter2022
% Lab04 
% Name: Tusaif Azmat Student#: 500660278.
%###########################################

% Part 2: Extract the audio track of the video using matlab functions
[y,Fs] = audioread(['C:\Users\Zanara\Documents\Ryerson\Winter2022\CPS621\' ...
    'CPS621_winter2022\Labs\lab04\Marshmello_Video_1080p.mp4']);
y = y/max(abs(y(:))); %normalize range between -1 to +1
audiowrite('Marshmello_audio_wav.wav',y,Fs);
audiowrite('Marshmello_audio_mp4.mp4',y,Fs);
clear;

% Part 3: Get info on the downloaded video
video_name = ['C:\Users\Zanara\Documents\Ryerson\Winter2022\CPS621\' ...
    'CPS621_winter2022\Labs\lab04\Marshmello_Video_1080p.mp4'];
video = VideoReader(video_name);
fprintf("Name: %s \n", video_name);
fprintf("The video's Frame Rate: %0.2f \n", video.FrameRate);
fprintf("The video's Number of Frames: %d \n", video.NumFrames);
fprintf("The video's Width: %d \n", video.Width);
fprintf("The video's Height: %d \n", video.Height);
fprintf("The video's Duration: %0.3f seconds\n", video.Duration);
clear;

% Part 4: Read each frame of the video and resize each frame to ½ width and ½ height 
video = VideoReader(['C:\Users\Zanara\Documents\Ryerson\Winter2022\CPS621\' ...
    'CPS621_winter2022\Labs\lab04\Marshmello_Video_1080p.mp4']);
i = 1;
directory = './';
mkdir(directory,'images')
while hasFrame(video)
img = imresize(readFrame(video), 0.5);
filename = [sprintf('%05d',i) '.jpg'];
fullname = fullfile(directory,'images',filename);
imwrite(img,fullname)
i = i+1;
end
clear;

% Part 5: Generate two new videos from the resized frames from Part 4
% A) all resized frames with doubled framerate, 'uncompressed AVI' format
video = VideoReader(['C:\Users\Zanara\Documents\Ryerson\Winter2022\CPS621\' ...
    'CPS621_winter2022\Labs\lab04\Marshmello_Video_1080p.mp4']);
directory = '.\';
imageNames = dir(fullfile(directory,'images','*.jpg'));
imageNames = {imageNames.name};
result = VideoWriter(fullfile(directory,'Marshmello_Video_540P_double_framerate_avi.avi'));
result.FrameRate = 2 * video.FrameRate;
open(result)
for i = 1:length(imageNames)
img = imread(fullfile(directory,'images',imageNames{i}));
writeVideo(result,img)
end
close(result)
clear;
video_name = 'Marshmello_Video_540P_double_framerate_avi.avi';
video = VideoReader(video_name);
fprintf("Name: %s \n", video_name);
fprintf("The video's Frame Rate: %0.2f \n", video.FrameRate);
fprintf("The video's Number of Frames: %d \n", video.NumFrames);
fprintf("The video's Width: %d \n", video.Width);
fprintf("The video's Height: %d \n", video.Height);
fprintf("The video's Duration: %0.3f seconds\n", video.Duration);
clear;

% B) all resized odd frames only, 'uncompressed AVI' format
video = VideoReader(['C:\Users\Zanara\Documents\Ryerson\Winter2022\CPS621\' ...
    'CPS621_winter2022\Labs\lab04\Marshmello_Video_1080p.mp4']);
directory = '.\';
imageNames = dir(fullfile(directory,'images','*.jpg'));
imageNames = {imageNames.name};
result = VideoWriter(fullfile(directory,'Marshmello_Video_540P_odd_frames_avi.avi'));
result.FrameRate = video.FrameRate;
open(result)
for i = 1:length(imageNames)
if (rem(i, 2) ~= 0) %checks if odd then proceed
img = imread(fullfile(directory,'images',imageNames{i}));
writeVideo(result,img)
end
end
close(result)
clear;
video_name = 'Marshmello_Video_540P_odd_frames_avi.avi';
video = VideoReader(video_name);
fprintf("Name: %s \n", video_name);
fprintf("The video's Frame Rate: %0.2f \n", video.FrameRate);
fprintf("The video's Number of Frames: %d \n", video.NumFrames);
fprintf("The video's Width: %d \n", video.Width);
fprintf("The video's Height: %d \n", video.Height);
fprintf("The video's Duration: %0.3f seconds\n", video.Duration);
clear;

%Part 6: Repeat Part 5 but save videos using ‘MPEG-4’ compressed format.
%A) all resized frames with doubled framerate, ‘MPEG-4’ compressed format
video = VideoReader(['C:\Users\Zanara\Documents\Ryerson\Winter2022\CPS621\' ...
    'CPS621_winter2022\Labs\lab04\Marshmello_Video_1080p.mp4']);
directory = '.\';
imageNames = dir(fullfile(directory,'images','*.jpg'));
imageNames = {imageNames.name};
result = VideoWriter(fullfile(directory,'Marshmello_video_2x.mp4'), 'MPEG-4');
result.FrameRate = 2 * video.FrameRate;
open(result);
for i = 1:length(imageNames)
img = imread(fullfile(directory,'images',imageNames{i}));
writeVideo(result,img)
end
close(result)
clear;
video_name = 'Marshmello_video_2x.mp4';
video = VideoReader(video_name);
fprintf("Name: %s \n", video_name);
fprintf("The video's Frame Rate: %0.2f \n", video.FrameRate);
fprintf("The video's Number of Frames: %d \n", video.NumFrames);
fprintf("The video's Width: %d \n", video.Width);
fprintf("The video's Height: %d \n", video.Height);
fprintf("The video's Duration: %0.3f seconds\n", video.Duration);
clear;

%Part B) (1) odd frames only, %MPEG-4’ compressed format
video = VideoReader(['C:\Users\Zanara\Documents\Ryerson\Winter2022\CPS621\' ...
    'CPS621_winter2022\Labs\lab04\Marshmello_Video_1080p.mp4']);
directory = '.\';
imageNames = dir(fullfile(directory,'images','*.jpg'));
imageNames = {imageNames.name};
result = VideoWriter(fullfile(directory,'Marshmello_video_odd.mp4'), 'MPEG-4');
result.FrameRate = video.FrameRate;
open(result)
for i = 1:length(imageNames)
if (rem(i, 2) ~= 0) %checks if odd then proceed
img = imread(fullfile(directory,'images',imageNames{i}));
writeVideo(result,img)
end
end
close(result);
clear;
video_name = 'Marshmello_video_odd.mp4';
video = VideoReader(video_name);
fprintf("Name: %s \n", video_name);
fprintf("The video's Frame Rate: %0.2f \n", video.FrameRate);
fprintf("The video's Number of Frames: %d \n", video.NumFrames);
fprintf("The video's Width: %d \n", video.Width);
fprintf("The video's Height: %d \n", video.Height);
fprintf("The video's Duration: %0.3f seconds\n", video.Duration);
clear;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
