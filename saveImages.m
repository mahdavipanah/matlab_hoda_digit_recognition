mkdir images;
mkdir images/0;
mkdir images/1;
mkdir images/2;
mkdir images/3;
mkdir images/4;
mkdir images/5;
mkdir images/6;
mkdir images/7;
mkdir images/8;
mkdir images/9;

n = 1;
while n <= 60000
    imwrite(imresize(Data{n}, [maxWidth maxHeight]), ['./images/' num2str(labels(n)) '/' num2str(n) '.png']);
    n = n + 1;
end