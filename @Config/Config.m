classdef Config < handle
    %UNTITLED3 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        title;
        basisSet;
        method;
        charge;
        spin;
        opt;
        calcEn;
        timeOut;
        zmat;
        useCache;  % load/save data, not used in comparing configs
        silent;    % disp() update messages if false
        dosVisible % enables the visibilty of dos running
    end
    
    methods
        function config = Config()
            %  templateFile = name of template file, in dataPathIn
            %               [defaults to 'template.txt']
            %  basisSet = basis set keyword (Gaussian format)
            %               [defaults to 'STO-3G']
            %  method = Method that you want to use
            %              [defults to hf]
            %  charge = charge on the fragment
            %             [defaults to 0]
            %  spin   = spin (multiplicity) of the fragment,
            %             using Gaussian convention
            %             [defaults to 1]
            config.title = 'template';
            config.basisSet = 'STO-3G';
            config.method   = 'hf';
            config.charge   = 0;
            config.spin     = 1;
            config.opt      = 0;
            config.calcEn   = 1;
            config.timeOut  = -1;
            config.zmat = ZMatrix();
            config.useCache = true; 
            config.silent   = false;
            config.dosVisible = [];
        end
        
        function bool = compare( config, testConfig )
            bool = 0;
            try
                if ~strcmp( config.title, testConfig.title )
                    return
                elseif ~strcmp( config.basisSet, testConfig.basisSet )
                    return
                elseif ~strcmp( config.method, testConfig.method )
                    return
                elseif (config.charge ~= testConfig.charge)
                    return
                elseif (config.spin ~= testConfig.spin)
                    return
                elseif (config.opt ~= testConfig.opt)
                    return
                elseif (config.calcEn ~= testConfig.calcEn)
                    return
                elseif (config.timeOut ~= testConfig.timeOut)
                    return
                elseif ~config.zmat.compare_ZMatrices( testConfig.zmat )
                    return
                else
                   bool = 1;
                end
            catch exception
                exception.stack
            end 
        end
    end
    
end

