function path = blocks_root
% BLOCKS_ROOT  Get the blocks package root directory
%  PATH = BLOCKS_ROOT() returns the root directory of the Blocks
%  package.

[a,b,c] = fileparts(which('blocks_root')) ;
path = a ;


