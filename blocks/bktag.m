function tag = bktag(bk)
% BKTAG  Extract tag from a block or a tag
%
%   TAG = BKTAG(TAG) simply returns the tag, unmodified
%
%   TAG = BKTAG(BK) returns the tag for a block.
%
%   See also: BKVER()

% AUTORIGHTS


if isstr(bk),
  tag = bk ;
  return ;
end

tag = bk.tag ;
