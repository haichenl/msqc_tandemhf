function solvehf(obj,eps,maxIter,minIter)

% eps: tolerance for the HF convergence
if (nargin < 2)
    eps = 1.0e-10;
end
if (nargin < 3)
    maxIter = 50000;
end
if (nargin < 4)
    minIter = 6;
end

% tic
[obj.orb,obj.Eorb,obj.Ehf,obj.Eelec] = obj.hf(eps,maxIter,minIter);
% toc

end

