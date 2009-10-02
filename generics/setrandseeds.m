function setrandseeds(seed)
% SETRANDSEEDS  Set all random seeds at once
%  SETRANDSEED(SEED) seeds with SEED all random number
%  generators. These are:
%   
%  - RANDN STATE
%  - RAND STATE
%  - RAND TWISTER
%  - TWISTER (VLFeat random number generator)
%
%  It also make RAND TWISTER the current generator for RAND.

% AUTORIGHTS

randn('state',   seed) ;
rand('state',    seed) ;
rand('twister',  seed) ;
vl_twister('state', seed) ;
