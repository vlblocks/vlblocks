function version = bkver(bk)
% BKVER  Extracts block version
%
%   VERSION = BKVER(BK) extracts the version from the block BK. The
%   version is the portion of the block TAG after the '@' symbol.
%   BKVER(TAG) does the same thing, but operates directly on the tag
%   TAG.
%
%   See also BKTAG().

% AUTORIGHTS

tag     = bktag(bk) ;
t       = regexp(tag, '^\w*@(.*)$', 'tokens') ;
version = t{1}{1} ;
