valDigitData = imageDatastore('./images/', 'IncludeSubfolders', true, 'FileExtensions', '.png', 'LabelSource', 'foldernames');


layers = [
    imageInputLayer([62 51 1])
    convolution2dLayer(3,16,'Padding',1)
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    convolution2dLayer(3,32,'Padding',1)
    batchNormalizationLayer
    reluLayer
    maxPooling2dLayer(2,'Stride',2)
    convolution2dLayer(3,64,'Padding',1)
    batchNormalizationLayer
    reluLayer
    fullyConnectedLayer(10)
    softmaxLayer
    classificationLayer
 ];

options = trainingOptions('sgdm',...
    'MaxEpochs',1, ...
    'Verbose',false,...
    'Plots','training-progress');

net = trainNetwork(valDigitData, layers, options);

classify(net, imread('./images/0/13.png'));
