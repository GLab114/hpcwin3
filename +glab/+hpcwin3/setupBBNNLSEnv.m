function [] = setupBBNNLSEnv(bbnnlsPath)
%SETUPBBNNLSENV Configure the MATLAB environment for use of the 3rd-party BBNLS tool

defaultBBNNLSPath = 'Y:\code\bbnnls';
if ~exist('bbnnlsPath', 'var')
    bbnnlsPath = [];
end
if isempty(bbnnlsPath)
    bbnnlsPath = defaultBBNNLSPath;
end

addpath(bbnnlsPath);
end

