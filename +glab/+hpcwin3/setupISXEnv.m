function [] = setupISXEnv(isxPath)
%SETUPISXENV Configure the MATLAB environment for use of the Inscopix API

defaultIsxPath = 'C:\Program Files\Inscopix\Data Processing\';
if ~exist('isxPath', 'var')
    isxPath = [];
end
if isempty(isxPath)
    isxPath = defaultIsxPath;
end

addpath(isxPath);
end

