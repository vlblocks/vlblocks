function c = find_cat(db, name)
% FIND_CAT Find a category in the database
%
%   C = FIND_CAT(DB, NAME) finds the category id of the database
%   category named NAME.

% AUTORIGHTS

name = lower(name) ;

for c = 1:length(db.cat_names)
  if strcmp(name, lower(db.cat_names(c)))
    break ;
  end
end

if ~ strcmp(name, lower(db.cat_names(c)))
  error(sprintf('Could not find requested category %s', name)) ;
end
