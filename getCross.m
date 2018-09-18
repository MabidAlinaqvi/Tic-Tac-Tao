function cross = getCross()
img = imread('cross.png');
cross = ones(98,98);
for i=1:98
    for j=1:98
        if img(i,j)==0
            cross(i,j)=0;
        end
    end
end
