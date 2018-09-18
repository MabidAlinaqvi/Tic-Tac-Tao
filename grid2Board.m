function board = grid2Board(x,y,current_board,turn)
board = current_board;
board(x,y)=turn;