img = imread('C:\Users\okeohane01\Downloads\checker.tif');   %original image
org = imread('C:\Users\okeohane01\Downloads\checker.tif');    %image to be corrupted

c = input('Corruption Rate (decimal): ');

[rows, columns] = size(img);
fprintf('Rows: %d\n', rows);
fprintf('Columns: %d\n', columns);

%display original
figure, imshow(org);
%display corrupted using function
figure, imshow(corrupt(img, c));
