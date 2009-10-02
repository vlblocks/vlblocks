function ensuredir(path)
% ENSUREDIR  Make sure a directory exists.
%
%  ENSUREDIR(PATH) check for the existence of the directory
%  PATH and attempt to create it otherwise.

% AUTORIGHTS

if isempty(path) || exist(path, 'dir')
  return
end

[subpath, name, ext] = fileparts(path) ;
name = [name ext] ;

ensuredir(subpath) ;

if ~exist(path, 'dir')
  if ~isempty(subpath)
    mkdir(subpath, name) ;
  else
    mkdir(name) ;
  end
end

