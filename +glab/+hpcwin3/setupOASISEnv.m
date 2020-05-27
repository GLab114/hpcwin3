function [] = setupOASISEnv(oasisPath)
%SETUPOASISENV Summary of this function goes here
%   Detailed explanation goes here

defaultOASISPath = 'Y:\code\OASIS_matlab-master';
if ~exist('oasisPath', 'var')
    oasisPath = [];
end
if isempty(oasisPath)
    oasisPath = defaultOASISPath;
end

addpath(oasisPath);
oasis_setup();
end

