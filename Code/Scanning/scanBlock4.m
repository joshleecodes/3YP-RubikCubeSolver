function [ output_RGB ] = scanBlock4( input_img )
%This function takes an image and output an average of RGB values for
%the block in position 4.
%   The image if first cropped to only show the desired block face. The
%   cropped image is then split into its three colour channels(RGB). An
%   average (mean) intensity of each colour channel is found and then
%   stored within the output vector. 

img = input_img; %rename for ease 
img = imcrop(img,[400, 500, 450-400, 550-500]); %crops image to only show desired block
rValues = reshape(img(:,:,1),[],1); %Store the red intensity of each pixel in vector
gValues = reshape(img(:,:,2),[],1); %Store the green intensity of each pixel in vector
bValues = reshape(img(:,:,3),[],1); %Store the blue intensity of each pixel in vector
rAverage = mean(rValues); %Calculate mean of red intensities 
gAverage = mean(gValues); %Calculate mean of green intensities 
bAverage = mean(bValues); %Calculate mean of blue intensities 
output_RGB = [rAverage, gAverage, bAverage]; %store all 3 intensity means into returned vector.

end