function bk = bkplug(bk, input, tag)
% BKPLUG Connect an input to a block
%
%   BK = BKPLUG(BK, INPUT, TAG) plugs the block TAG to the input slot
%   INPUT of block BK. Notice that TAG is a block TAG, while BK is a
%   block configuration.
%
%  See also BKINIT(), BKBEGIN(), BKEND().

% AUTORIGHTS

found = 0;
for i = 1:length(bk.inputs)
  if strcmp(bk.inputs{i}, input)
    found = 1;
    break;
  end
end
if ~found, bk.inputs{end+1} = input; end

bk.(input).tag = tag ;
bk.(input).timestamp = 0 ;
