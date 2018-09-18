function draw = isdraw(board)
[row,col]=size(board);
draw = 1;
for i=1:row
    for j=1:col
        if board(i,j)==0
            draw=0;
            return
        end
    end
end
