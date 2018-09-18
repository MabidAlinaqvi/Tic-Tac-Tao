rows = 3;
cols = 3;
turn = 1;
tick = imread('tick.png');
cross = imread('cross.png');
board = initializeBoard(rows, cols);
win = 0;
draw = 0;
 grid = board2Grid(board,tick,cross);
 imshow(grid);
while ~win && ~draw
    check = 0;
    while check == 0
        [colY,rowX] = ginput(1);
        x = ceil(rowX/100);
        y = ceil(colY/100);
        check = islegal(x,y,rowX,colY,board);
        if ~check
            msgbox(strcat('wrong input for player_',num2str(turn)));
        end
    end
    board = grid2Board(x,y,board,turn);
    win = evaluate(board,turn);
    draw = isdraw(board);
    turn = changeTurn(turn);
    grid = board2Grid(board,tick,cross);
    imshow(grid);
end
if win
    turn = changeTurn(turn);
    msgbox(strcat('The player_',num2str(turn),' have won the game!'));
elseif draw
    msgbox('The game has been drawn');
end
close

    
