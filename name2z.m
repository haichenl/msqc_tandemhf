function z = name2z(name)
z = 0;
atom_list = ...
       {'H',                                                                                 'He',...
        'Li','Be',                                                  'B', 'C', 'N', 'O', 'F', 'Ne',...
        'Na','Mg',                                                  'Al','Si','P', 'S', 'Cl','Ar',...
        'K', 'Ca','Sc','Ti','V', 'Cr','Mn','Fe','Co','Ni','Cu','Zn','Ga','Ge','As','Se','Br','Kr',...
        'Rb','Sr','Y', 'Zr','Nb','Mo','Tc','Ru','Rh','Pd','Ag','Cd','In','Sn','Sb','Te','I', 'Xe'};
for i=1:length(atom_list)
    if(strcmpi(name, atom_list{i}))
        z = i;
        return;
    end
end
end