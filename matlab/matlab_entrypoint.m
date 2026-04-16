function matlab_entrypoint(varargin)

fcn = varargin{1};

if nargin>1
    feval(fcn,varargin{2:end});
else
    feval(fcn);
end

if isdeployed
    exit
end
