function z = corrupt(image, corr_rate)

imshow(image);

tot_px = numel(image);  %total # pixels in image
tot_corr_px = ceil(tot_px * corr_rate);   % # of corrupted pixels -- rounded up to nearest int

ind = randperm(tot_px, tot_corr_px);
[row, column] = ind2sub(size(image), ind);

%array of random shades to be assigned to coordinates
shade = randi(255, tot_corr_px, 1);


for i = 1: tot_corr_px
    image(row(i), column(i)) = shade(i);
end

%result is corrupted image
z = image;
