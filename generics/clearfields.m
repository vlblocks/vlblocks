function S = clearfields(ST, fields)
% CLEARFIELDS Clear the specified fields from a structure
%
%   S = CLEARFIELDS(ST, FIELDS) clears the fields listed in the cell
%   array of strings FIELDS from the structure ST. Returns a modified
%   structure S without the fields, if they existed.

% AUTORIGHTS

S = ST;
for f = 1:length(fields)
    if isfield(S, fields{f}), S = rmfield(S, fields{f}); end
end
