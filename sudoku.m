function out = sudoku(G)
    M = mysudoku(G, 1);
    if M == G
        out = [];
    else
        out = M;
    end
    return;
end