%Set up webcam 
cam = webcam('USB Camera'); %Sometimes camera doesnt initialise properly, may need to be done manually.

%Take images of each face
disp('Side 1 - Press to Scan')
pause;
side1 = snapshot(cam);
disp('Side 2 - Press to Scan')
pause;
side2 = snapshot(cam);
disp('Side 3 - Press to Scan')
pause;
side3 = snapshot(cam);
disp('Side 4 - Press to Scan')
pause;
side4 = snapshot(cam);
disp('Side 5 - Press to Scan')
pause;
side5 = snapshot(cam);
disp('Side 6 - Press to Scan')
pause;
side6 = snapshot(cam);

%Store images into vector
cubeFace = {side1,side2,side3,side4,side5,side6};

%Parse images to block function, pass block values to colourFind to
%categorise
cubeColour = zeros(6,9);
for i=1:6
    %parse test values to referenceimages and store thresholds
    testRGB = scanLeft(cubeFace{i});
    colourThresh = refImages(testRGB);
    block1 = scanBlock1(cubeFace{i});
    colour1 = colourFind(block1,colourThresh);
    block2 = scanBlock2(cubeFace{i});
    colour2 = colourFind(block2,colourThresh);
    block3 = scanBlock3(cubeFace{i});
    colour3 = colourFind(block3,colourThresh);
    block4 = scanBlock4(cubeFace{i});
    colour4 = colourFind(block4,colourThresh);
    block5 = scanBlock5(cubeFace{i});
    colour5 = colourFind(block5,colourThresh);
    block6 = scanBlock6(cubeFace{i});
    colour6 = colourFind(block6,colourThresh);
    block7 = scanBlock7(cubeFace{i});
    colour7 = colourFind(block7,colourThresh);
    block8 = scanBlock8(cubeFace{i});
    colour8 = colourFind(block8,colourThresh);
    block9 = scanBlock9(cubeFace{i});
    colour9 = colourFind(block9,colourThresh);
    
    %Store a colours of face in each layer. The colour classification will
    %then be passed to solution program for soliving moves. 
    cubeColour(i,:) = [colour1,colour2,colour3,colour4,colour5,colour6,colour7,colour8,colour9];
    
    
    %translate to 3x3x6 as the program intakes this format
    cubeColour = sortrows(cubeColour,5);
    inputMatrix = zeros(3,3,6);
    
    %Store individual faces and reshape to 3x3
    face1 = reshape(cubeColour(1,:),[3,3]);
    face2 = reshape(cubeColour(2,:),[3,3]);
    face3 = reshape(cubeColour(3,:),[3,3]);
    face4 = reshape(cubeColour(4,:),[3,3]);
    face5 = reshape(cubeColour(5,:),[3,3]);
    face6 = reshape(cubeColour(6,:),[3,3]);
    
    %concatonate the faces to a 3x3x6
    inputMatrix = cat(3,face1,face2,face3,face4,face5,face6);
    
    %Parse 3x3x6 matrix of cube colours to soliving program
    solution = Solve45(inputMatrix);
    
    
end
