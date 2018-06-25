function [ colour ] = colourFind( input_RGB, colourThresh )
%colourFind Takes intensity values of a block + a colour chart and returns a colour
%classification
%   Detailed explanation goes here


%Find colour with least distance from RGB values
[Distance,Index] = pdist2(colourThresh,input_RGB,'euclidean','Smallest',1);

%Store index of least distance value to return
colour = Index;

end

