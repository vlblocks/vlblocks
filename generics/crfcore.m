function [labels Eafter E] = crfcore(segclass, unary, pairwise, labelcost);
% CRFCORE A simple wrapper around GCMex
%
%   [LABELS Eafter E] = CRFCORE(SEGCLASS, UNARY, PAIRWISE, LABELCOST)
%   is a simple wrapper around GCMEX(). It converts UNARY and
%   LABELCOST to single if they are not already.

% AUTORIGHTS

[labels E Eafter] = GCMex(segclass, single(unary), pairwise, single(labelcost));
