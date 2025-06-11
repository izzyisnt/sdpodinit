##############################################################################
# MC-shell I/O capture file.
# Creation Date and Time:  Tue Jun 10 22:24:29 2025

##############################################################################
Hello world from PE 0
Vnm_tstart: starting timer 26 (APBS WALL CLOCK)..
NOsh_parseInput:  Starting file parsing...
NOsh: Parsing READ section
NOsh: Storing molecule 0 path 1MBN.pqr
NOsh: Done parsing READ section
NOsh: Done parsing READ section (nmol=1, ndiel=0, nkappa=0, ncharge=0, npot=0)
NOsh: Parsing ELEC section
NOsh_parseMG: Parsing parameters for MG calculation
NOsh_parseMG:  Parsing dime...
PBEparm_parseToken:  trying dime...
MGparm_parseToken:  trying dime...
NOsh_parseMG:  Parsing cglen...
PBEparm_parseToken:  trying cglen...
MGparm_parseToken:  trying cglen...
NOsh_parseMG:  Parsing fglen...
PBEparm_parseToken:  trying fglen...
MGparm_parseToken:  trying fglen...
NOsh_parseMG:  Parsing cgcent...
PBEparm_parseToken:  trying cgcent...
MGparm_parseToken:  trying cgcent...
NOsh_parseMG:  Parsing fgcent...
PBEparm_parseToken:  trying fgcent...
MGparm_parseToken:  trying fgcent...
NOsh_parseMG:  Parsing mol...
PBEparm_parseToken:  trying mol...
NOsh_parseMG:  Parsing lpbe...
PBEparm_parseToken:  trying lpbe...
NOsh: parsed lpbe
NOsh_parseMG:  Parsing bcfl...
PBEparm_parseToken:  trying bcfl...
NOsh_parseMG:  Parsing pdie...
PBEparm_parseToken:  trying pdie...
NOsh_parseMG:  Parsing sdie...
PBEparm_parseToken:  trying sdie...
NOsh_parseMG:  Parsing srad...
PBEparm_parseToken:  trying srad...
NOsh_parseMG:  Parsing swin...
PBEparm_parseToken:  trying swin...
NOsh_parseMG:  Parsing srfm...
PBEparm_parseToken:  trying srfm...
NOsh_parseMG:  Parsing chgm...
PBEparm_parseToken:  trying chgm...
MGparm_parseToken:  trying chgm...
NOsh_parseMG:  Parsing sdens...
PBEparm_parseToken:  trying sdens...
NOsh_parseMG:  Parsing temp...
PBEparm_parseToken:  trying temp...
NOsh_parseMG:  Parsing calcenergy...
PBEparm_parseToken:  trying calcenergy...
NOsh_parseMG:  Parsing calcforce...
PBEparm_parseToken:  trying calcforce...
NOsh_parseMG:  Parsing write...
PBEparm_parseToken:  trying write...
NOsh_parseMG:  Parsing end...
MGparm_check:  checking MGparm object of type 1.
NOsh:  nlev = 5, dime = (65, 65, 65)
NOsh: Done parsing ELEC section (nelec = 1)
NOsh: Done parsing file (got QUIT)
Valist_readPQR: Counted 2459 atoms
Valist_getStatistics:  Max atom coordinate:  (36.175, 41.173, 28.855)
Valist_getStatistics:  Min atom coordinate:  (-7.786, 0.824, -11.1)
Valist_getStatistics:  Molecule center:  (14.1945, 20.9985, 8.8775)
NOsh_setupCalcMGAUTO(/home/runner/work/apbs/apbs/src/generic/nosh.c, 1868):  coarse grid center = 14.1945 20.9985 8.8775
NOsh_setupCalcMGAUTO(/home/runner/work/apbs/apbs/src/generic/nosh.c, 1873):  fine grid center = 14.1945 20.9985 8.8775
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1885):  Coarse grid spacing = 1.25, 1.25, 1.25
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1887):  Fine grid spacing = 0.625, 0.625, 0.625
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1889):  Displacement between fine and coarse grids = 0, 0, 0
NOsh:  2 levels of focusing with 0.5, 0.5, 0.5 reductions
NOsh_setupMGAUTO:  Resetting boundary flags
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1983):  starting mesh repositioning.
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1985):  coarse mesh center = 14.1945 20.9985 8.8775
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1990):  coarse mesh upper corner = 54.1945 60.9985 48.8775
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1995):  coarse mesh lower corner = -25.8055 -19.0015 -31.1225
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 2000):  initial fine mesh upper corner = 34.1945 40.9985 28.8775
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 2005):  initial fine mesh lower corner = -5.8055 0.9985 -11.1225
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 2066):  final fine mesh upper corner = 34.1945 40.9985 28.8775
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 2071):  final fine mesh lower corner = -5.8055 0.9985 -11.1225
NOsh_setupMGAUTO:  Resetting boundary flags
NOsh_setupCalc:  Mapping ELEC statement 0 (1) to calculation 1 (2)
Vnm_tstart: starting timer 27 (Setup timer)..
Setting up PBE object...
Vpbe_ctor2:  solute radius = 26.2503
Vpbe_ctor2:  solute dimensions = 46.7 x 42.9 x 42.355
Vpbe_ctor2:  solute charge = 2
Vpbe_ctor2:  bulk ionic strength = 0
Vpbe_ctor2:  xkappa = 0
Vpbe_ctor2:  Debye length = 0
Vpbe_ctor2:  zkappa2 = 0
Vpbe_ctor2:  zmagic = 7042.98
Vpbe_ctor2:  Constructing Vclist with 75 x 75 x 75 table
Vclist_ctor2:  Using 75 x 75 x 75 hash table
Vclist_ctor2:  automatic domain setup.
Vclist_ctor2:  Using 1.9 max radius
Vclist_setupGrid:  Grid lengths = (55.037, 51.425, 51.031)
Vclist_setupGrid:  Grid lower corner = (-13.324, -4.714, -16.638)
Vclist_assignAtoms:  Have 2952045 atom entries
Vacc_storeParms:  Surf. density = 0.03
Vacc_storeParms:  Max area = 191.134
Vacc_storeParms:  Using 4-point reference sphere
Setting up PDE object...
Vpmp_ctor2:  Using meth = 2, mgsolv = 1
Setting PDE center to local center...
Vpmg_fillco:  filling in source term.
fillcoCharge:  Calling fillcoChargeSpline2...
Vpmg_fillco:  filling in source term.
Vpmg_fillco:  marking ion and solvent accessibility.
fillcoCoef:  Calling fillcoCoefMol...
Vacc_SASA: Time elapsed: 0.002493
Vpmg_fillco:  done filling coefficient arrays
Vpmg_fillco:  filling boundary arrays
Vpmg_fillco:  done filling boundary arrays
Vnm_tstop: stopping timer 27 (Setup timer).  CPU TIME = 6.196100e-02
Vnm_tstart: starting timer 28 (Solver timer)..
Vnm_tstart: starting timer 30 (Vmgdrv2: fine problem setup)..
Vbuildops: Fine: (065, 065, 065)
Vbuildops: Operator stencil (lev, numdia) = (1, 4)
Vnm_tstop: stopping timer 30 (Vmgdrv2: fine problem setup).  CPU TIME = 8.323000e-03
Vnm_tstart: starting timer 30 (Vmgdrv2: coarse problem setup)..
Vbuildops: Galer: (033, 033, 033)
Vbuildops: Galer: (017, 017, 017)
Vbuildops: Galer: (009, 009, 009)
Vbuildops: Galer: (005, 005, 005)
Vnm_tstop: stopping timer 30 (Vmgdrv2: coarse problem setup).  CPU TIME = 1.688300e-02
Vnm_tstart: starting timer 30 (Vmgdrv2: solve)..
Vnm_tstop: stopping timer 40 (MG iteration).  CPU TIME = 1.044330e-01
Vprtstp: iteration = 0
Vprtstp: relative residual = 1.000000e+00
Vprtstp: contraction number = 1.000000e+00
Vprtstp: iteration = 1
Vprtstp: relative residual = 9.002308e-02
Vprtstp: contraction number = 9.002308e-02
Vprtstp: iteration = 2
Vprtstp: relative residual = 1.194398e-02
Vprtstp: contraction number = 1.326768e-01
Vprtstp: iteration = 3
Vprtstp: relative residual = 1.734395e-03
Vprtstp: contraction number = 1.452109e-01
Vprtstp: iteration = 4
Vprtstp: relative residual = 2.728666e-04
Vprtstp: contraction number = 1.573267e-01
Vprtstp: iteration = 5
Vprtstp: relative residual = 4.632280e-05
Vprtstp: contraction number = 1.697635e-01
Vprtstp: iteration = 6
Vprtstp: relative residual = 8.459141e-06
Vprtstp: contraction number = 1.826129e-01
Vprtstp: iteration = 7
Vprtstp: relative residual = 1.655090e-06
Vprtstp: contraction number = 1.956570e-01
Vprtstp: iteration = 8
Vprtstp: relative residual = 3.443793e-07
Vprtstp: contraction number = 2.080729e-01
Vnm_tstop: stopping timer 30 (Vmgdrv2: solve).  CPU TIME = 6.407500e-02
Vnm_tstop: stopping timer 28 (Solver timer).  CPU TIME = 9.311500e-02
Vpmg_setPart:  lower corner = (-25.8055, -19.0015, -31.1225)
Vpmg_setPart:  upper corner = (54.1945, 60.9985, 48.8775)
Vpmg_setPart:  actual minima = (-25.8055, -19.0015, -31.1225)
Vpmg_setPart:  actual maxima = (54.1945, 60.9985, 48.8775)
Vpmg_setPart:  bflag[FRONT] = 0
Vpmg_setPart:  bflag[BACK] = 0
Vpmg_setPart:  bflag[LEFT] = 0
Vpmg_setPart:  bflag[RIGHT] = 0
Vpmg_setPart:  bflag[UP] = 0
Vpmg_setPart:  bflag[DOWN] = 0
Vnm_tstart: starting timer 29 (Energy timer)..
Vpmg_energy:  calculating only q-phi energy
Vpmg_qfEnergyVolume:  Calculating energy
Vpmg_energy:  qfEnergy = 1.153251809988E+04 kT
Vnm_tstop: stopping timer 29 (Energy timer).  CPU TIME = 3.570000e-04
Vnm_tstart: starting timer 30 (Force timer)..
Vnm_tstop: stopping timer 30 (Force timer).  CPU TIME = 5.000000e-06
Vnm_tstart: starting timer 27 (Setup timer)..
Setting up PBE object...
Vpbe_ctor2:  solute radius = 26.2503
Vpbe_ctor2:  solute dimensions = 46.7 x 42.9 x 42.355
Vpbe_ctor2:  solute charge = 2
Vpbe_ctor2:  bulk ionic strength = 0
Vpbe_ctor2:  xkappa = 0
Vpbe_ctor2:  Debye length = 0
Vpbe_ctor2:  zkappa2 = 0
Vpbe_ctor2:  zmagic = 7042.98
Vpbe_ctor2:  Constructing Vclist with 75 x 75 x 75 table
Vclist_ctor2:  Using 75 x 75 x 75 hash table
Vclist_ctor2:  automatic domain setup.
Vclist_ctor2:  Using 1.9 max radius
Vclist_setupGrid:  Grid lengths = (55.037, 51.425, 51.031)
Vclist_setupGrid:  Grid lower corner = (-13.324, -4.714, -16.638)
Vclist_assignAtoms:  Have 2952045 atom entries
Vacc_storeParms:  Surf. density = 0.03
Vacc_storeParms:  Max area = 191.134
Vacc_storeParms:  Using 4-point reference sphere
Setting up PDE object...
Vpmp_ctor2:  Using meth = 2, mgsolv = 1
Setting PDE center to local center...
Vpmg_ctor2:  Filling boundary with old solution!
VPMG::focusFillBound -- New mesh mins = -5.8055, 0.9985, -11.1225
VPMG::focusFillBound -- New mesh maxs = 34.1945, 40.9985, 28.8775
VPMG::focusFillBound -- Old mesh mins = -25.8055, -19.0015, -31.1225
VPMG::focusFillBound -- Old mesh maxs = 54.1945, 60.9985, 48.8775
VPMG::extEnergy:  energy flag = 1
Vpmg_setPart:  lower corner = (-5.8055, 0.9985, -11.1225)
Vpmg_setPart:  upper corner = (34.1945, 40.9985, 28.8775)
Vpmg_setPart:  actual minima = (-25.8055, -19.0015, -31.1225)
Vpmg_setPart:  actual maxima = (54.1945, 60.9985, 48.8775)
Vpmg_setPart:  bflag[FRONT] = 0
Vpmg_setPart:  bflag[BACK] = 0
Vpmg_setPart:  bflag[LEFT] = 0
Vpmg_setPart:  bflag[RIGHT] = 0
Vpmg_setPart:  bflag[UP] = 0
Vpmg_setPart:  bflag[DOWN] = 0
VPMG::extEnergy:   Finding extEnergy dimensions...
VPMG::extEnergy    Disj part lower corner = (-5.8055, 0.9985, -11.1225)
VPMG::extEnergy    Disj part upper corner = (34.1945, 40.9985, 28.8775)
VPMG::extEnergy    Old lower corner = (-25.8055, -19.0015, -31.1225)
VPMG::extEnergy    Old upper corner = (54.1945, 60.9985, 48.8775)
Vpmg_qmEnergy:  Zero energy for zero ionic strength!
VPMG::extEnergy: extQmEnergy = 0 kT
Vpmg_qfEnergyVolume:  Calculating energy
VPMG::extEnergy: extQfEnergy = 128.22 kT
VPMG::extEnergy: extDiEnergy = 92.4409 kT
Vpmg_fillco:  filling in source term.
fillcoCharge:  Calling fillcoChargeSpline2...
Vpmg_fillco:  filling in source term.
Vpmg_fillco:  marking ion and solvent accessibility.
fillcoCoef:  Calling fillcoCoefMol...
Vacc_SASA: Time elapsed: 0.001736
Vpmg_fillco:  done filling coefficient arrays
Vnm_tstop: stopping timer 27 (Setup timer).  CPU TIME = 7.754600e-02
Vnm_tstart: starting timer 28 (Solver timer)..
Vnm_tstart: starting timer 30 (Vmgdrv2: fine problem setup)..
Vbuildops: Fine: (065, 065, 065)
Vbuildops: Operator stencil (lev, numdia) = (1, 4)
Vnm_tstop: stopping timer 30 (Vmgdrv2: fine problem setup).  CPU TIME = 8.256000e-03
Vnm_tstart: starting timer 30 (Vmgdrv2: coarse problem setup)..
Vbuildops: Galer: (033, 033, 033)
Vbuildops: Galer: (017, 017, 017)
Vbuildops: Galer: (009, 009, 009)
Vbuildops: Galer: (005, 005, 005)
Vnm_tstop: stopping timer 30 (Vmgdrv2: coarse problem setup).  CPU TIME = 1.649600e-02
Vnm_tstart: starting timer 30 (Vmgdrv2: solve)..
Vnm_tstop: stopping timer 40 (MG iteration).  CPU TIME = 2.760900e-01
Vprtstp: iteration = 0
Vprtstp: relative residual = 1.000000e+00
Vprtstp: contraction number = 1.000000e+00
Vprtstp: iteration = 1
Vprtstp: relative residual = 8.966291e-02
Vprtstp: contraction number = 8.966291e-02
Vprtstp: iteration = 2
Vprtstp: relative residual = 1.150331e-02
Vprtstp: contraction number = 1.282951e-01
Vprtstp: iteration = 3
Vprtstp: relative residual = 1.785465e-03
Vprtstp: contraction number = 1.552131e-01
Vprtstp: iteration = 4
Vprtstp: relative residual = 3.180800e-04
Vprtstp: contraction number = 1.781497e-01
Vprtstp: iteration = 5
Vprtstp: relative residual = 6.173075e-05
Vprtstp: contraction number = 1.940730e-01
Vprtstp: iteration = 6
Vprtstp: relative residual = 1.258204e-05
Vprtstp: contraction number = 2.038213e-01
Vprtstp: iteration = 7
Vprtstp: relative residual = 2.632540e-06
Vprtstp: contraction number = 2.092299e-01
Vprtstp: iteration = 8
Vprtstp: relative residual = 5.597514e-07
Vprtstp: contraction number = 2.126279e-01
Vnm_tstop: stopping timer 30 (Vmgdrv2: solve).  CPU TIME = 6.498800e-02
Vnm_tstop: stopping timer 28 (Solver timer).  CPU TIME = 9.350700e-02
Vpmg_setPart:  lower corner = (-5.8055, 0.9985, -11.1225)
Vpmg_setPart:  upper corner = (34.1945, 40.9985, 28.8775)
Vpmg_setPart:  actual minima = (-5.8055, 0.9985, -11.1225)
Vpmg_setPart:  actual maxima = (34.1945, 40.9985, 28.8775)
Vpmg_setPart:  bflag[FRONT] = 0
Vpmg_setPart:  bflag[BACK] = 0
Vpmg_setPart:  bflag[LEFT] = 0
Vpmg_setPart:  bflag[RIGHT] = 0
Vpmg_setPart:  bflag[UP] = 0
Vpmg_setPart:  bflag[DOWN] = 0
Vnm_tstart: starting timer 29 (Energy timer)..
Vpmg_energy:  calculating only q-phi energy
Vpmg_qfEnergyVolume:  Calculating energy
Vpmg_energy:  qfEnergy = 5.767956589134E+04 kT
Vnm_tstop: stopping timer 29 (Energy timer).  CPU TIME = 3.170000e-04
Vnm_tstart: starting timer 30 (Force timer)..
Vnm_tstop: stopping timer 30 (Force timer).  CPU TIME = 4.000000e-06
Vgrid_writeDX:  Opening virtual socket...
Vgrid_writeDX:  Writing to virtual socket...
Vgrid_writeDX:  Writing comments for ASC format.
Vnm_tstop: stopping timer 26 (APBS WALL CLOCK).  CPU TIME = 4.158930e-01
##############################################################################
# MC-shell I/O capture file.
# Creation Date and Time:  Tue Jun 10 22:24:30 2025

##############################################################################
Vgrid_readDX:  Grid dimensions 65 x 65 x 65 grid
Vgrid_readDX:  Grid origin = (-5.8055, 0.9985, -11.1225)
Vgrid_readDX:  Grid spacings = (0.625, 0.625, 0.625)
Vgrid_readDX:  allocating 65 x 65 x 65 doubles for storage
##############################################################################
# MC-shell I/O capture file.
# Creation Date and Time:  Wed Jun 11 00:37:01 2025

##############################################################################
Hello world from PE 0
Vnm_tstart: starting timer 26 (APBS WALL CLOCK)..
NOsh_parseInput:  Starting file parsing...
NOsh: Parsing READ section
NOsh: Storing molecule 0 path 1MBN.pqr
NOsh: Done parsing READ section
NOsh: Done parsing READ section (nmol=1, ndiel=0, nkappa=0, ncharge=0, npot=0)
NOsh: Parsing ELEC section
NOsh_parseMG: Parsing parameters for MG calculation
NOsh_parseMG:  Parsing dime...
PBEparm_parseToken:  trying dime...
MGparm_parseToken:  trying dime...
NOsh_parseMG:  Parsing cglen...
PBEparm_parseToken:  trying cglen...
MGparm_parseToken:  trying cglen...
NOsh_parseMG:  Parsing fglen...
PBEparm_parseToken:  trying fglen...
MGparm_parseToken:  trying fglen...
NOsh_parseMG:  Parsing cgcent...
PBEparm_parseToken:  trying cgcent...
MGparm_parseToken:  trying cgcent...
NOsh_parseMG:  Parsing fgcent...
PBEparm_parseToken:  trying fgcent...
MGparm_parseToken:  trying fgcent...
NOsh_parseMG:  Parsing mol...
PBEparm_parseToken:  trying mol...
NOsh_parseMG:  Parsing lpbe...
PBEparm_parseToken:  trying lpbe...
NOsh: parsed lpbe
NOsh_parseMG:  Parsing bcfl...
PBEparm_parseToken:  trying bcfl...
NOsh_parseMG:  Parsing pdie...
PBEparm_parseToken:  trying pdie...
NOsh_parseMG:  Parsing sdie...
PBEparm_parseToken:  trying sdie...
NOsh_parseMG:  Parsing srad...
PBEparm_parseToken:  trying srad...
NOsh_parseMG:  Parsing swin...
PBEparm_parseToken:  trying swin...
NOsh_parseMG:  Parsing srfm...
PBEparm_parseToken:  trying srfm...
NOsh_parseMG:  Parsing chgm...
PBEparm_parseToken:  trying chgm...
MGparm_parseToken:  trying chgm...
NOsh_parseMG:  Parsing sdens...
PBEparm_parseToken:  trying sdens...
NOsh_parseMG:  Parsing temp...
PBEparm_parseToken:  trying temp...
NOsh_parseMG:  Parsing calcenergy...
PBEparm_parseToken:  trying calcenergy...
NOsh_parseMG:  Parsing calcforce...
PBEparm_parseToken:  trying calcforce...
NOsh_parseMG:  Parsing write...
PBEparm_parseToken:  trying write...
NOsh_parseMG:  Parsing end...
MGparm_check:  checking MGparm object of type 1.
NOsh:  nlev = 5, dime = (65, 65, 65)
NOsh: Done parsing ELEC section (nelec = 1)
NOsh: Done parsing file (got QUIT)
Valist_readPQR: Counted 2459 atoms
Valist_getStatistics:  Max atom coordinate:  (36.175, 41.173, 28.855)
Valist_getStatistics:  Min atom coordinate:  (-7.786, 0.824, -11.1)
Valist_getStatistics:  Molecule center:  (14.1945, 20.9985, 8.8775)
NOsh_setupCalcMGAUTO(/home/runner/work/apbs/apbs/src/generic/nosh.c, 1868):  coarse grid center = 14.1945 20.9985 8.8775
NOsh_setupCalcMGAUTO(/home/runner/work/apbs/apbs/src/generic/nosh.c, 1873):  fine grid center = 14.1945 20.9985 8.8775
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1885):  Coarse grid spacing = 1.25, 1.25, 1.25
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1887):  Fine grid spacing = 0.625, 0.625, 0.625
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1889):  Displacement between fine and coarse grids = 0, 0, 0
NOsh:  2 levels of focusing with 0.5, 0.5, 0.5 reductions
NOsh_setupMGAUTO:  Resetting boundary flags
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1983):  starting mesh repositioning.
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1985):  coarse mesh center = 14.1945 20.9985 8.8775
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1990):  coarse mesh upper corner = 54.1945 60.9985 48.8775
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1995):  coarse mesh lower corner = -25.8055 -19.0015 -31.1225
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 2000):  initial fine mesh upper corner = 34.1945 40.9985 28.8775
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 2005):  initial fine mesh lower corner = -5.8055 0.9985 -11.1225
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 2066):  final fine mesh upper corner = 34.1945 40.9985 28.8775
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 2071):  final fine mesh lower corner = -5.8055 0.9985 -11.1225
NOsh_setupMGAUTO:  Resetting boundary flags
NOsh_setupCalc:  Mapping ELEC statement 0 (1) to calculation 1 (2)
Vnm_tstart: starting timer 27 (Setup timer)..
Setting up PBE object...
Vpbe_ctor2:  solute radius = 26.2503
Vpbe_ctor2:  solute dimensions = 46.7 x 42.9 x 42.355
Vpbe_ctor2:  solute charge = 2
Vpbe_ctor2:  bulk ionic strength = 0
Vpbe_ctor2:  xkappa = 0
Vpbe_ctor2:  Debye length = 0
Vpbe_ctor2:  zkappa2 = 0
Vpbe_ctor2:  zmagic = 7042.98
Vpbe_ctor2:  Constructing Vclist with 75 x 75 x 75 table
Vclist_ctor2:  Using 75 x 75 x 75 hash table
Vclist_ctor2:  automatic domain setup.
Vclist_ctor2:  Using 1.9 max radius
Vclist_setupGrid:  Grid lengths = (55.037, 51.425, 51.031)
Vclist_setupGrid:  Grid lower corner = (-13.324, -4.714, -16.638)
Vclist_assignAtoms:  Have 2952045 atom entries
Vacc_storeParms:  Surf. density = 0.03
Vacc_storeParms:  Max area = 191.134
Vacc_storeParms:  Using 4-point reference sphere
Setting up PDE object...
Vpmp_ctor2:  Using meth = 2, mgsolv = 1
Setting PDE center to local center...
Vpmg_fillco:  filling in source term.
fillcoCharge:  Calling fillcoChargeSpline2...
Vpmg_fillco:  filling in source term.
Vpmg_fillco:  marking ion and solvent accessibility.
fillcoCoef:  Calling fillcoCoefMol...
Vacc_SASA: Time elapsed: 0.002510
Vpmg_fillco:  done filling coefficient arrays
Vpmg_fillco:  filling boundary arrays
Vpmg_fillco:  done filling boundary arrays
Vnm_tstop: stopping timer 27 (Setup timer).  CPU TIME = 6.070500e-02
Vnm_tstart: starting timer 28 (Solver timer)..
Vnm_tstart: starting timer 30 (Vmgdrv2: fine problem setup)..
Vbuildops: Fine: (065, 065, 065)
Vbuildops: Operator stencil (lev, numdia) = (1, 4)
Vnm_tstop: stopping timer 30 (Vmgdrv2: fine problem setup).  CPU TIME = 8.514000e-03
Vnm_tstart: starting timer 30 (Vmgdrv2: coarse problem setup)..
Vbuildops: Galer: (033, 033, 033)
Vbuildops: Galer: (017, 017, 017)
Vbuildops: Galer: (009, 009, 009)
Vbuildops: Galer: (005, 005, 005)
Vnm_tstop: stopping timer 30 (Vmgdrv2: coarse problem setup).  CPU TIME = 1.699200e-02
Vnm_tstart: starting timer 30 (Vmgdrv2: solve)..
Vnm_tstop: stopping timer 40 (MG iteration).  CPU TIME = 1.033050e-01
Vprtstp: iteration = 0
Vprtstp: relative residual = 1.000000e+00
Vprtstp: contraction number = 1.000000e+00
Vprtstp: iteration = 1
Vprtstp: relative residual = 9.002308e-02
Vprtstp: contraction number = 9.002308e-02
Vprtstp: iteration = 2
Vprtstp: relative residual = 1.194398e-02
Vprtstp: contraction number = 1.326768e-01
Vprtstp: iteration = 3
Vprtstp: relative residual = 1.734395e-03
Vprtstp: contraction number = 1.452109e-01
Vprtstp: iteration = 4
Vprtstp: relative residual = 2.728666e-04
Vprtstp: contraction number = 1.573267e-01
Vprtstp: iteration = 5
Vprtstp: relative residual = 4.632280e-05
Vprtstp: contraction number = 1.697635e-01
Vprtstp: iteration = 6
Vprtstp: relative residual = 8.459141e-06
Vprtstp: contraction number = 1.826129e-01
Vprtstp: iteration = 7
Vprtstp: relative residual = 1.655090e-06
Vprtstp: contraction number = 1.956570e-01
Vprtstp: iteration = 8
Vprtstp: relative residual = 3.443793e-07
Vprtstp: contraction number = 2.080729e-01
Vnm_tstop: stopping timer 30 (Vmgdrv2: solve).  CPU TIME = 6.426000e-02
Vnm_tstop: stopping timer 28 (Solver timer).  CPU TIME = 9.375100e-02
Vpmg_setPart:  lower corner = (-25.8055, -19.0015, -31.1225)
Vpmg_setPart:  upper corner = (54.1945, 60.9985, 48.8775)
Vpmg_setPart:  actual minima = (-25.8055, -19.0015, -31.1225)
Vpmg_setPart:  actual maxima = (54.1945, 60.9985, 48.8775)
Vpmg_setPart:  bflag[FRONT] = 0
Vpmg_setPart:  bflag[BACK] = 0
Vpmg_setPart:  bflag[LEFT] = 0
Vpmg_setPart:  bflag[RIGHT] = 0
Vpmg_setPart:  bflag[UP] = 0
Vpmg_setPart:  bflag[DOWN] = 0
Vnm_tstart: starting timer 29 (Energy timer)..
Vpmg_energy:  calculating only q-phi energy
Vpmg_qfEnergyVolume:  Calculating energy
Vpmg_energy:  qfEnergy = 1.153251809988E+04 kT
Vnm_tstop: stopping timer 29 (Energy timer).  CPU TIME = 3.150000e-04
Vnm_tstart: starting timer 30 (Force timer)..
Vnm_tstop: stopping timer 30 (Force timer).  CPU TIME = 3.000000e-06
Vnm_tstart: starting timer 27 (Setup timer)..
Setting up PBE object...
Vpbe_ctor2:  solute radius = 26.2503
Vpbe_ctor2:  solute dimensions = 46.7 x 42.9 x 42.355
Vpbe_ctor2:  solute charge = 2
Vpbe_ctor2:  bulk ionic strength = 0
Vpbe_ctor2:  xkappa = 0
Vpbe_ctor2:  Debye length = 0
Vpbe_ctor2:  zkappa2 = 0
Vpbe_ctor2:  zmagic = 7042.98
Vpbe_ctor2:  Constructing Vclist with 75 x 75 x 75 table
Vclist_ctor2:  Using 75 x 75 x 75 hash table
Vclist_ctor2:  automatic domain setup.
Vclist_ctor2:  Using 1.9 max radius
Vclist_setupGrid:  Grid lengths = (55.037, 51.425, 51.031)
Vclist_setupGrid:  Grid lower corner = (-13.324, -4.714, -16.638)
Vclist_assignAtoms:  Have 2952045 atom entries
Vacc_storeParms:  Surf. density = 0.03
Vacc_storeParms:  Max area = 191.134
Vacc_storeParms:  Using 4-point reference sphere
Setting up PDE object...
Vpmp_ctor2:  Using meth = 2, mgsolv = 1
Setting PDE center to local center...
Vpmg_ctor2:  Filling boundary with old solution!
VPMG::focusFillBound -- New mesh mins = -5.8055, 0.9985, -11.1225
VPMG::focusFillBound -- New mesh maxs = 34.1945, 40.9985, 28.8775
VPMG::focusFillBound -- Old mesh mins = -25.8055, -19.0015, -31.1225
VPMG::focusFillBound -- Old mesh maxs = 54.1945, 60.9985, 48.8775
VPMG::extEnergy:  energy flag = 1
Vpmg_setPart:  lower corner = (-5.8055, 0.9985, -11.1225)
Vpmg_setPart:  upper corner = (34.1945, 40.9985, 28.8775)
Vpmg_setPart:  actual minima = (-25.8055, -19.0015, -31.1225)
Vpmg_setPart:  actual maxima = (54.1945, 60.9985, 48.8775)
Vpmg_setPart:  bflag[FRONT] = 0
Vpmg_setPart:  bflag[BACK] = 0
Vpmg_setPart:  bflag[LEFT] = 0
Vpmg_setPart:  bflag[RIGHT] = 0
Vpmg_setPart:  bflag[UP] = 0
Vpmg_setPart:  bflag[DOWN] = 0
VPMG::extEnergy:   Finding extEnergy dimensions...
VPMG::extEnergy    Disj part lower corner = (-5.8055, 0.9985, -11.1225)
VPMG::extEnergy    Disj part upper corner = (34.1945, 40.9985, 28.8775)
VPMG::extEnergy    Old lower corner = (-25.8055, -19.0015, -31.1225)
VPMG::extEnergy    Old upper corner = (54.1945, 60.9985, 48.8775)
Vpmg_qmEnergy:  Zero energy for zero ionic strength!
VPMG::extEnergy: extQmEnergy = 0 kT
Vpmg_qfEnergyVolume:  Calculating energy
VPMG::extEnergy: extQfEnergy = 128.22 kT
VPMG::extEnergy: extDiEnergy = 92.4409 kT
Vpmg_fillco:  filling in source term.
fillcoCharge:  Calling fillcoChargeSpline2...
Vpmg_fillco:  filling in source term.
Vpmg_fillco:  marking ion and solvent accessibility.
fillcoCoef:  Calling fillcoCoefMol...
Vacc_SASA: Time elapsed: 0.001879
Vpmg_fillco:  done filling coefficient arrays
Vnm_tstop: stopping timer 27 (Setup timer).  CPU TIME = 8.420800e-02
Vnm_tstart: starting timer 28 (Solver timer)..
Vnm_tstart: starting timer 30 (Vmgdrv2: fine problem setup)..
Vbuildops: Fine: (065, 065, 065)
Vbuildops: Operator stencil (lev, numdia) = (1, 4)
Vnm_tstop: stopping timer 30 (Vmgdrv2: fine problem setup).  CPU TIME = 8.568000e-03
Vnm_tstart: starting timer 30 (Vmgdrv2: coarse problem setup)..
Vbuildops: Galer: (033, 033, 033)
Vbuildops: Galer: (017, 017, 017)
Vbuildops: Galer: (009, 009, 009)
Vbuildops: Galer: (005, 005, 005)
Vnm_tstop: stopping timer 30 (Vmgdrv2: coarse problem setup).  CPU TIME = 1.673100e-02
Vnm_tstart: starting timer 30 (Vmgdrv2: solve)..
Vnm_tstop: stopping timer 40 (MG iteration).  CPU TIME = 2.827690e-01
Vprtstp: iteration = 0
Vprtstp: relative residual = 1.000000e+00
Vprtstp: contraction number = 1.000000e+00
Vprtstp: iteration = 1
Vprtstp: relative residual = 8.966291e-02
Vprtstp: contraction number = 8.966291e-02
Vprtstp: iteration = 2
Vprtstp: relative residual = 1.150331e-02
Vprtstp: contraction number = 1.282951e-01
Vprtstp: iteration = 3
Vprtstp: relative residual = 1.785465e-03
Vprtstp: contraction number = 1.552131e-01
Vprtstp: iteration = 4
Vprtstp: relative residual = 3.180800e-04
Vprtstp: contraction number = 1.781497e-01
Vprtstp: iteration = 5
Vprtstp: relative residual = 6.173075e-05
Vprtstp: contraction number = 1.940730e-01
Vprtstp: iteration = 6
Vprtstp: relative residual = 1.258204e-05
Vprtstp: contraction number = 2.038213e-01
Vprtstp: iteration = 7
Vprtstp: relative residual = 2.632540e-06
Vprtstp: contraction number = 2.092299e-01
Vprtstp: iteration = 8
Vprtstp: relative residual = 5.597514e-07
Vprtstp: contraction number = 2.126279e-01
Vnm_tstop: stopping timer 30 (Vmgdrv2: solve).  CPU TIME = 6.503300e-02
Vnm_tstop: stopping timer 28 (Solver timer).  CPU TIME = 9.425800e-02
Vpmg_setPart:  lower corner = (-5.8055, 0.9985, -11.1225)
Vpmg_setPart:  upper corner = (34.1945, 40.9985, 28.8775)
Vpmg_setPart:  actual minima = (-5.8055, 0.9985, -11.1225)
Vpmg_setPart:  actual maxima = (34.1945, 40.9985, 28.8775)
Vpmg_setPart:  bflag[FRONT] = 0
Vpmg_setPart:  bflag[BACK] = 0
Vpmg_setPart:  bflag[LEFT] = 0
Vpmg_setPart:  bflag[RIGHT] = 0
Vpmg_setPart:  bflag[UP] = 0
Vpmg_setPart:  bflag[DOWN] = 0
Vnm_tstart: starting timer 29 (Energy timer)..
Vpmg_energy:  calculating only q-phi energy
Vpmg_qfEnergyVolume:  Calculating energy
Vpmg_energy:  qfEnergy = 5.767956589134E+04 kT
Vnm_tstop: stopping timer 29 (Energy timer).  CPU TIME = 3.080000e-04
Vnm_tstart: starting timer 30 (Force timer)..
Vnm_tstop: stopping timer 30 (Force timer).  CPU TIME = 2.000000e-06
Vgrid_writeDX:  Opening virtual socket...
Vgrid_writeDX:  Writing to virtual socket...
Vgrid_writeDX:  Writing comments for ASC format.
Vnm_tstop: stopping timer 26 (APBS WALL CLOCK).  CPU TIME = 4.230080e-01
