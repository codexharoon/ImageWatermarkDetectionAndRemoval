clc;
clear;

% Read the original and watermark images
% originalImage = imread('/MATLAB Drive/New Folder/b.jpg');
% watermarkImage = imread('/MATLAB Drive/New Folder/c.jpg');

% Insert the watermark into the original image
embeddedImage = insert_watermark(originalImage, watermarkImage);

% Detect the watermark from the embedded image
extractedWatermark = detect_watermark(embeddedImage);

% Remove the watermark from the embedded image
restoredImage = remove_watermark(embeddedImage);

% Display the results
figure;
subplot(2, 2, 1); imshow(originalImage); title('Original Image');
subplot(2, 2, 2); imshow(embeddedImage); title('Watermarked Image');
subplot(2, 2, 3); imshow(extractedWatermark, []); title('Extracted Watermark');
subplot(2, 2, 4); imshow(restoredImage, []); title('Restored Image');
