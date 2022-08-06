%###########################################
% CPS 621 Winter2022
% Lab01 
% Name: Tusaif Azmat Student#: 500660278.
%###########################################


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part 1. Noise reduction by image averaging
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%1.1
I1 = imread("C:\Users\Zanara\Documents\Ryerson\Winter2022\CPS621\CPS621_winter2022\Labs\lab01\AdobeStock_01.jpeg");
figure, imshow(I1);
I2 = im2gray(I1);
figure, imshow(I2);

%1.2
N1 = imnoise(I2, 'gaussian');N2 = imnoise(I2, 'gaussian');N3 = imnoise(I2, 'gaussian');N4 = imnoise(I2, 'gaussian');
N5 = imnoise(I2, 'gaussian');N6 = imnoise(I2, 'gaussian');N7 = imnoise(I2, 'gaussian');N8 = imnoise(I2, 'gaussian');
N9 = imnoise(I2, 'gaussian');N10 = imnoise(I2, 'gaussian');N11 = imnoise(I2, 'gaussian');N12 = imnoise(I2, 'gaussian');
N13 = imnoise(I2, 'gaussian');N14 = imnoise(I2, 'gaussian');N15 = imnoise(I2, 'gaussian');N16 = imnoise(I2, 'gaussian');
N17 = imnoise(I2, 'gaussian');N18 = imnoise(I2, 'gaussian');N19 = imnoise(I2, 'gaussian');N20 = imnoise(I2, 'gaussian');
N21 = imnoise(I2, 'gaussian');N22 = imnoise(I2, 'gaussian');N23 = imnoise(I2, 'gaussian');N24 = imnoise(I2, 'gaussian');
N25 = imnoise(I2, 'gaussian');N26 = imnoise(I2, 'gaussian');N27 = imnoise(I2, 'gaussian');N28 = imnoise(I2, 'gaussian');
N29 = imnoise(I2, 'gaussian');N30 = imnoise(I2, 'gaussian');

%1.3
IA1 = (double(N1)+double(N30))/2;
IA1 = uint8(rescale(IA1, 0, 255));
figure, imshow(IA1);

IA2 = (double(N5)+double(N10)+double(N15)+double(N20)+double(N25))/5;
IA2 = uint8(rescale(IA2, 0, 255));
figure, imshow(IA2);

IA3 = (double(N2)+double(N3)+double(N4)+double(N6)+double(N7)+double(N8)+double(N9) ...
    +double(N11)+double(N12)+double(N13)+double(N14)+double(N16)+double(N18)+double(N19) ...
    +double(N21)+double(N22)+double(N23)+double(N26)+double(N27)+double(N28))/20;
IA3 = uint8(rescale(IA3, 0, 255));
figure, imshow(IA3);

IA4 = (double(N1)+double(N2)+double(N3)+double(N4)+double(N5)+double(N6)+double(N7)+double(N8)+double(N9)+double(N10) ...
    +double(N11)+double(N12)+double(N13)+double(N14)+double(N15)+double(N16)+double(N17)+double(N18)+double(N19) ...
    +double(N20)+double(N21)+double(N22)+double(N23)+double(N24)+double(N25)+double(N26)+double(N27)+double(N28) ...
    +double(N29)+double(N30))/30;
IA4 = uint8(rescale(IA4, 0, 255));
figure, imshow(IA4);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part 2. Power-law transformation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%2.2
T1 = imadjust(I2,[],[],0.3);
T2 = imadjust(I2,[],[],3);

figure, imshow(I2);

figure, imshow(T1);
figure, imshow(T2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part 3. Histogram equalization
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%3.2
imhist(I2);
imhist(T1);
imhist(T2);

%3.3
figure, imshow(I2);
figure, imshow(T1);
figure, imshow(T2);

HeI2 = histeq(I2);
HeT1 = histeq(T1);
HeT2 = histeq(T2);

figure, imshow(HeI2);
figure, imshow(HeT1);
figure, imshow(HeT2);

imhist(HeI2);
imhist(HeT1);
imhist(HeT2);
