function grid = board2Grid(board,tick,cross)
    [rows,cols] = size(board);
    grid = ones(100*rows,100*cols);
    grid(1,:)=0;
    grid(:,1)=0;
    for i=1:rows
        grid((i*100),:)=0;
    end
    for i=1:cols
        grid(:,i*100)=0;
    end
    for i=1:rows
        for j=1:cols
            if board(i,j)==1
                grid = place_in_grid(i,j,1,grid,tick,cross);
            else if board(i,j)==2
                    grid = place_in_grid(i,j,2,grid,tick,cross);
                end
            end
        end
    end
                
    
