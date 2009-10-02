function I = imresizesafe(varargin)
% IMRESIZESAFE A safe version of IMRESIZE
%
%   Uses IMRESIZE_OLD if it exists, otherwise defaults to IMRESIZE

% AUTORIGHTS

if exist('imresize_old')
    I = imresize_old(varargin{:});
else
    I = imresize(varargin{:});
end
