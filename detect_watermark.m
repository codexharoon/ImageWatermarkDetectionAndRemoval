function extractedWatermark = detect_watermark(embeddedImage)
    % Initialize an empty RGB watermark image (black by default)
    extractedWatermark = zeros(size(embeddedImage), 'uint8');
    
    % Extract the watermark from each channel (R, G, B)
    for channel = 1:3
        % Extract the least significant bit (LSB) from each channel
        extractedWatermark(:,:,channel) = bitget(embeddedImage(:,:,channel), 1) * 255;
    end
    
    % Return the extracted RGB watermark
end
