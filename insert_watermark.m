function embeddedImage = insert_watermark(originalImage, watermarkImage)
    % Function to insert the watermark image into the original image
    
    % Convert images to grayscale if they are not
    if size(originalImage, 3) == 3
        originalImageGray = rgb2gray(originalImage);
    else
        originalImageGray = originalImage;
    end
    
    if size(watermarkImage, 3) == 3
        watermarkImageGray = rgb2gray(watermarkImage);
    else
        watermarkImageGray = watermarkImage;
    end
    
    % Resize watermark image to fit the original image
    watermarkResized = imresize(watermarkImageGray, size(originalImageGray));
    
    % Binarize watermark image
    watermarkBinary = imbinarize(watermarkResized);
    
    % Insert watermark into the original image (LSB embedding)
    embeddedImage = bitset(originalImageGray, 1, watermarkBinary);
    
    % Save the watermarked image
    imwrite(embeddedImage, 'watermarked_image.jpg');
end
