function writePcFileBis(filename, header, matrix)
% write the matrix as a .pc file
% this is slow: 9 seconds for a 60-second audio file, even if just 50 dimensions
% this version downsamples to only write a line every 20 ms

tic
[height, width] = size(matrix);
timestamps = 0.01:0.01:height/100;     % 0.01 second (10-millisecond) timestamps
%disp(size(matrix));       % display size of matrix
dimensionsToWrite = min(10, length(matrix(1,:)));
writeable  = horzcat(timestamps', matrix(:,1:dimensionsToWrite)); 
writeable  = writeable(2:2:end, :);    % downsample 


dlmwrite(filename, {header});
dlmwrite(filename, writeable, '-append', 'delimiter', '\t', 'precision', '%.4f');


% these lines are now obsolete, since dlmwrite is about 6 times faster
%msize = size(matrix);
%for line = 1:msize(1)
%   fprintf(outfd, '%d ', 10 * line); % a line every 10 milliseconds
%   for col = 1:msize(2)
%     fprintf(outfd, '%.2f ', matrix(line, col) );
%   end
%   fprintf(outfd, '\n');
%end 
%fclose(outfd);

fprintf('Time spend writing .pc file %s: ', filename);
toc                                                     



