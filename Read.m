function [ out ] = Read( in )
    %Write writes a sudoku to a text file as an array
    
    fid = fopen(in, 'r');
    out = fscanf(fid, '%i', [9,9])';
    fclose(fid);
end
