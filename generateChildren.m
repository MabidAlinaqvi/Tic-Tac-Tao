function children = generateChildren(board,turn)
[row,col] = size(board);
[r,c] = find(board == 0);
NoOfChildren = size(r,1);
children = zeros(row,col,NoOfChildren);
for i=1:NoOfChildren
    childBoard = children(:,:,i);
    childBoard(r(i),c(i))=turn;
    children(:,:,i) = childBoard;
end
    
    