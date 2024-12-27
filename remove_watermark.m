function restoredImage = remove_watermark(embeddedImage)
    % Function to remove the watermark by resetting the LSB
    
    % Remove the watermark (revert to approximate original image)
    restoredImage = bitset(embeddedImage, 1, 0);
    
    % Save the restored image
    imwrite(restoredImage, 'restored_image.jpg');
end
