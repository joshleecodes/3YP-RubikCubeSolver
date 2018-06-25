function [ output_RGB ] = scanBlock1( input_img )
%This function takes an image and output an average of RGB values for
%the block in position 1.
%   The image if first cropped to only show the desired block face. The
%   cropped image is then split into its three colour channels(RGB). An
%   average (mean) intensity of each colour channel is found and then
%   stored within the output vector. 

img = input_img; %rename for ease 
img = imcrop(img,[400, 250, 450-400, 300-250]); %crops image to only show desired block
rValues = img(:,:,1); %Store the red intensity of each pixel in vector
gValues = img(:,:,2); %Store the green intensity of each pixel in vector
bValues = img(:,:,3); %Store the blue intensity of each pixel in vector
rAverage = mean(mean(rValues)); %Calculate mean of red intensities 
gAverage = mean(mean(gValues)); %Calculate mean of green intensities 
bAverage = mean(mean(bValues)); %Calculate mean of blue intensities 
output_RGB = [rAverage, gAverage, bAverage]; %store all 3 intensity means into returned vector.

end

