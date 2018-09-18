function grid = place_in_grid(x,y,turn,current_grid,tick,cross)
grid = current_grid;
if turn==1
    symbol=tick;
else
    symbol=cross;
end
for i=1:98
    for j=1:98
        grid((x-1)*100+i+1,(y-1)*100+j+1) = symbol(i,j);
    end
end
        
