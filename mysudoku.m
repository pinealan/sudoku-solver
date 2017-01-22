function out = mysudoku(G, N)
    % SUDOKUSOLVER Solves a given solvable sudoku puzzle
    %   Usage: Prepare a sudoku puzzle in the form of 9x9 matrix, using 0
    %   as the empty entries. N must be 1.
    %
    %   Takes in a 9x9 matrix, calling it G, as the entry of sudoku
    %   puzzle. The program then solves it recursively throught exhaustion.

    % Checks if the input is of correct dimensions
    if or (( size(G, 1) ~= 9 ), ( size(G, 2) ~= 9 ))
        out = [ ];
        return;
    end
    
    if N == 82
        out = G;
    elseif G(N) == 0
        for k = 1:10
            if k == 10;
                G(N) = 0;
                out = G;
                return;
            end
            G(N) = k;
            if checked == true
                out = mysudoku(G, N + 1);
                if (sum(sum(out == 0)) == 0)
                    break;
                end
            end
        end
    else
        out = mysudoku(G, N + 1);
        return;
    end
    
    function logical = checked
        m = ceil(N / 9);            % m-th col
        n = N - (m - 1) * 9;        % n-th row
        if (sum(k == G(n, :)) == 1)
            if (sum(k == G(:, m)) == 1)
                ii = 3 * floor((n - 1) / 3);
                jj = 3 * floor((m - 1) / 3);
                subgrid = G((ii + 1):(ii + 3), (jj + 1):(jj + 3));
                if (sum(sum(k == subgrid)) == 1)
                    logical = true;
                    return;
                end
            end
         end
         logical = false;
         return;
    end
end