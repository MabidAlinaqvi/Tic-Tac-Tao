function win = evaluate(board,turn)
    [row,col] = size(board);
    for i=1:row
        win = 1;
        for j=1:col
            if board(i,j)~=turn
                win=0;
                break
            end
        end
        if win==1
            return
        end
    end
    for i=1:row
        win = 1;
        for j=1:col
            if board(j,i)~=turn
                win=0;
                break
            end
        end
        if win==1
            return
        end
    end
    win = 1;
    for i=1:row
       if board(i,i)~=turn
           win = 0;
           break
        end
     end
     if win==1
            return
     end
     win = 1;
     for i=1:row
        if board(i,row-i+1)~=turn
            win = 0;
            break
        end
     end
     if win==1
         return
     end
    
