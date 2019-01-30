n = 1;
maxWidth = -1;
maxHeight = -1;

while n <= 60000
    if size(Data{n}, 1) > maxWidth
        maxWidth = size(Data{n}, 1);
    end
    
    if size(Data{n}, 2) > maxHeight
        maxHeight = size(Data{n}, 1);
    end
    
    n = n + 1;
end