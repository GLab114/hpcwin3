function env = setupPCAICAEnv(varargin)
%SETUPPCAICAENV Configure the MATLAB environment to run the PCA-ICA pipeline

%%
defaultUseParallel = true;
defaultNWorkers = 12;
defaultMaxBytes = [];
defaultISXPath = [];
defaultBBNNLSPath = [];
defaultOASISPath = [];

p = inputParser();
addParameter(p, 'useParallel', defaultUseParallel, ...
    @(x)isscalar(x) && islogical(x));
addParameter(p, 'nWorkers', defaultNWorkers, ...
    @(x)(x > 0) && (floor(x) == x));
addParameter(p, 'maxBytes', defaultMaxBytes ...
    );
addParameter(p, 'isxPath', defaultISXPath ...
    );
addParameter(p, 'bbnnlsPath', defaultBBNNLSPath ...
    );
addParameter(p, 'oasisPath', defaultOASISPath ...
    );
parse(p, varargin{:});

useParallel = p.Results.useParallel;
nWorkers = p.Results.nWorkers;
maxBytes = p.Results.maxBytes;
isxPath = p.Results.isxPath;
bbnnlsPath = p.Results.bbnnlsPath;
oasisPath = p.Results.oasisPath;

%%
env = glab.parenv.start( ...
    'useParallel', useParallel, ...
    'nWorkers', nWorkers, ...
    'maxBytes', maxBytes ...
);
glab.hpcwin3.setupISXEnv(isxPath);
glab.hpcwin3.setupBBNNLSEnv(bbnnlsPath);
glab.hpcwin3.setupOASISEnv(oasisPath);

end

