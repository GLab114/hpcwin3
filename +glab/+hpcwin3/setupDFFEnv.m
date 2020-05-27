function [] = setupDFFEnv(varargin)
%SETUPDFFENV Configure the MATLAB environment to run the DF/F pipeline

%%
defaultNWorkers = 12;
defaultIsxPath = [];

p = inputParser();
addParameter(p, 'nWorkers', defaultNWorkers, ...
    @(x)(x >= 0) && (floor(x) == x));
addParameter(p, 'isxPath', defaultIsxPath ...
    );
parse(p, varargin{:});

nWorkers = p.Results.nWorkers;
isxPath = p.Results.isxPath;

%%
if nWorkers > 0
    currPool = gcp('nocreate');
    if ~isempty(currPool)
        delete(currPool);
    end
    parpool(nWorkers);
end

glab.hpcwin3.setupISXEnv(isxPath);

end

