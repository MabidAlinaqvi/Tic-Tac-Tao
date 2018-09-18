function islegal = islegal(x,y, row, col,board)
    islegal = 0;
    if row<0 || col < 0 || row>300 || col>300 || row == 100 || row == 200 || row == 300 || col == 100 || col == 200 || col == 300 || board(x,y)~=0
        islegal = 0;
    else
        islegal = 1;
    end