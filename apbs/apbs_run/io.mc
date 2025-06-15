##############################################################################
# MC-shell I/O capture file.
# Creation Date and Time:  Sun Jun 15 03:09:48 2025

##############################################################################
Hello world from PE 0
Vnm_tstart: starting timer 26 (APBS WALL CLOCK)..
NOsh_parseInput:  Starting file parsing...
NOsh: Parsing READ section
NOsh: Storing molecule 0 path 3OY1.pqr
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
Valist_readPQR: Counted 6003 atoms
Valist_getStatistics:  Max atom coordinate:  (6.396, 44.436, 10.199)
Valist_getStatistics:  Min atom coordinate:  (-38.541, -13.328, -61.487)
Valist_getStatistics:  Molecule center:  (-16.0725, 15.554, -25.644)
NOsh_setupCalcMGAUTO(/home/runner/work/apbs/apbs/src/generic/nosh.c, 1868):  coarse grid center = -16.0725 15.554 -25.644
NOsh_setupCalcMGAUTO(/home/runner/work/apbs/apbs/src/generic/nosh.c, 1873):  fine grid center = -16.0725 15.554 -25.644
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1885):  Coarse grid spacing = 1.25, 1.25, 1.25
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1887):  Fine grid spacing = 0.625, 0.625, 0.625
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1889):  Displacement between fine and coarse grids = 0, 0, 0
NOsh:  2 levels of focusing with 0.5, 0.5, 0.5 reductions
NOsh_setupMGAUTO:  Resetting boundary flags
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1983):  starting mesh repositioning.
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1985):  coarse mesh center = -16.0725 15.554 -25.644
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1990):  coarse mesh upper corner = 23.9275 55.554 14.356
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 1995):  coarse mesh lower corner = -56.0725 -24.446 -65.644
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 2000):  initial fine mesh upper corner = 3.9275 35.554 -5.644
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 2005):  initial fine mesh lower corner = -36.0725 -4.446 -45.644
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 2066):  final fine mesh upper corner = 3.9275 35.554 -5.644
NOsh_setupCalcMGAUTO (/home/runner/work/apbs/apbs/src/generic/nosh.c, 2071):  final fine mesh lower corner = -36.0725 -4.446 -45.644
NOsh_setupMGAUTO:  Resetting boundary flags
NOsh_setupCalc:  Mapping ELEC statement 0 (1) to calculation 1 (2)
Vnm_tstart: starting timer 27 (Setup timer)..
Setting up PBE object...
Vpbe_ctor2:  solute radius = 43.4133
Vpbe_ctor2:  solute dimensions = 47.518 x 59.764 x 73.89
Vpbe_ctor2:  solute charge = 3.05311e-14
Vpbe_ctor2:  bulk ionic strength = 0
Vpbe_ctor2:  xkappa = 0
Vpbe_ctor2:  Debye length = 0
Vpbe_ctor2:  zkappa2 = 0
Vpbe_ctor2:  zmagic = 7042.98
Vpbe_ctor2:  Constructing Vclist with 75 x 75 x 75 table
Vclist_ctor2:  Using 75 x 75 x 75 hash table
Vclist_ctor2:  automatic domain setup.
Vclist_ctor2:  Using 1.9 max radius
Vclist_setupGrid:  Grid lengths = (56.013, 68.84, 82.762)
Vclist_setupGrid:  Grid lower corner = (-44.079, -18.866, -67.025)
Vclist_assignAtoms:  Have 3864192 atom entries
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
Vacc_SASA: Time elapsed: 0.006597
Vpmg_fillco:  done filling coefficient arrays
Vpmg_fillco:  filling boundary arrays
Vpmg_fillco:  done filling boundary arrays
Vnm_tstop: stopping timer 27 (Setup timer).  CPU TIME = 8.008200e-02
Vnm_tstart: starting timer 28 (Solver timer)..
Vnm_tstart: starting timer 30 (Vmgdrv2: fine problem setup)..
Vbuildops: Fine: (065, 065, 065)
Vbuildops: Operator stencil (lev, numdia) = (1, 4)
Vnm_tstop: stopping timer 30 (Vmgdrv2: fine problem setup).  CPU TIME = 8.411000e-03
Vnm_tstart: starting timer 30 (Vmgdrv2: coarse problem setup)..
Vbuildops: Galer: (033, 033, 033)
Vbuildops: Galer: (017, 017, 017)
Vbuildops: Galer: (009, 009, 009)
Vbuildops: Galer: (005, 005, 005)
Vnm_tstop: stopping timer 30 (Vmgdrv2: coarse problem setup).  CPU TIME = 1.651000e-02
Vnm_tstart: starting timer 30 (Vmgdrv2: solve)..
Vnm_tstop: stopping timer 40 (MG iteration).  CPU TIME = 1.342990e-01
Vprtstp: iteration = 0
Vprtstp: relative residual = 1.000000e+00
Vprtstp: contraction number = 1.000000e+00
Vprtstp: iteration = 1
Vprtstp: relative residual = 6.673948e-02
Vprtstp: contraction number = 6.673948e-02
Vprtstp: iteration = 2
Vprtstp: relative residual = 8.691282e-03
Vprtstp: contraction number = 1.302270e-01
Vprtstp: iteration = 3
Vprtstp: relative residual = 1.270552e-03
Vprtstp: contraction number = 1.461869e-01
Vprtstp: iteration = 4
Vprtstp: relative residual = 2.034802e-04
Vprtstp: contraction number = 1.601510e-01
Vprtstp: iteration = 5
Vprtstp: relative residual = 3.535435e-05
Vprtstp: contraction number = 1.737483e-01
Vprtstp: iteration = 6
Vprtstp: relative residual = 6.571906e-06
Vprtstp: contraction number = 1.858868e-01
Vprtstp: iteration = 7
Vprtstp: relative residual = 1.290861e-06
Vprtstp: contraction number = 1.964212e-01
Vprtstp: iteration = 8
Vprtstp: relative residual = 2.661564e-07
Vprtstp: contraction number = 2.061851e-01
Vnm_tstop: stopping timer 30 (Vmgdrv2: solve).  CPU TIME = 6.438100e-02
Vnm_tstop: stopping timer 28 (Solver timer).  CPU TIME = 9.324000e-02
Vpmg_setPart:  lower corner = (-56.0725, -24.446, -65.644)
Vpmg_setPart:  upper corner = (23.9275, 55.554, 14.356)
Vpmg_setPart:  actual minima = (-56.0725, -24.446, -65.644)
Vpmg_setPart:  actual maxima = (23.9275, 55.554, 14.356)
Vpmg_setPart:  bflag[FRONT] = 0
Vpmg_setPart:  bflag[BACK] = 0
Vpmg_setPart:  bflag[LEFT] = 0
Vpmg_setPart:  bflag[RIGHT] = 0
Vpmg_setPart:  bflag[UP] = 0
Vpmg_setPart:  bflag[DOWN] = 0
Vnm_tstart: starting timer 29 (Energy timer)..
Vpmg_energy:  calculating only q-phi energy
Vpmg_qfEnergyVolume:  Calculating energy
Vpmg_energy:  qfEnergy = 2.930145432716E+04 kT
Vnm_tstop: stopping timer 29 (Energy timer).  CPU TIME = 3.100000e-04
Vnm_tstart: starting timer 30 (Force timer)..
Vnm_tstop: stopping timer 30 (Force timer).  CPU TIME = 2.000000e-06
Vnm_tstart: starting timer 27 (Setup timer)..
Setting up PBE object...
Vpbe_ctor2:  solute radius = 43.4133
Vpbe_ctor2:  solute dimensions = 47.518 x 59.764 x 73.89
Vpbe_ctor2:  solute charge = 3.05311e-14
Vpbe_ctor2:  bulk ionic strength = 0
Vpbe_ctor2:  xkappa = 0
Vpbe_ctor2:  Debye length = 0
Vpbe_ctor2:  zkappa2 = 0
Vpbe_ctor2:  zmagic = 7042.98
Vpbe_ctor2:  Constructing Vclist with 75 x 75 x 75 table
Vclist_ctor2:  Using 75 x 75 x 75 hash table
Vclist_ctor2:  automatic domain setup.
Vclist_ctor2:  Using 1.9 max radius
Vclist_setupGrid:  Grid lengths = (56.013, 68.84, 82.762)
Vclist_setupGrid:  Grid lower corner = (-44.079, -18.866, -67.025)
Vclist_assignAtoms:  Have 3864192 atom entries
Vacc_storeParms:  Surf. density = 0.03
Vacc_storeParms:  Max area = 191.134
Vacc_storeParms:  Using 4-point reference sphere
Setting up PDE object...
Vpmp_ctor2:  Using meth = 2, mgsolv = 1
Setting PDE center to local center...
Vpmg_ctor2:  Filling boundary with old solution!
VPMG::focusFillBound -- New mesh mins = -36.0725, -4.446, -45.644
VPMG::focusFillBound -- New mesh maxs = 3.9275, 35.554, -5.644
VPMG::focusFillBound -- Old mesh mins = -56.0725, -24.446, -65.644
VPMG::focusFillBound -- Old mesh maxs = 23.9275, 55.554, 14.356
VPMG::extEnergy:  energy flag = 1
Vpmg_setPart:  lower corner = (-36.0725, -4.446, -45.644)
Vpmg_setPart:  upper corner = (3.9275, 35.554, -5.644)
Vpmg_setPart:  actual minima = (-56.0725, -24.446, -65.644)
Vpmg_setPart:  actual maxima = (23.9275, 55.554, 14.356)
Vpmg_setPart:  bflag[FRONT] = 0
Vpmg_setPart:  bflag[BACK] = 0
Vpmg_setPart:  bflag[LEFT] = 0
Vpmg_setPart:  bflag[RIGHT] = 0
Vpmg_setPart:  bflag[UP] = 0
Vpmg_setPart:  bflag[DOWN] = 0
VPMG::extEnergy:   Finding extEnergy dimensions...
VPMG::extEnergy    Disj part lower corner = (-36.0725, -4.446, -45.644)
VPMG::extEnergy    Disj part upper corner = (3.9275, 35.554, -5.644)
VPMG::extEnergy    Old lower corner = (-56.0725, -24.446, -65.644)
VPMG::extEnergy    Old upper corner = (23.9275, 55.554, 14.356)
Vpmg_qmEnergy:  Zero energy for zero ionic strength!
VPMG::extEnergy: extQmEnergy = 0 kT
Vpmg_qfEnergyVolume:  Calculating energy
VPMG::extEnergy: extQfEnergy = 10948.1 kT
VPMG::extEnergy: extDiEnergy = 5503.66 kT
Vpmg_fillco:  filling in source term.
fillcoCharge:  Calling fillcoChargeSpline2...
Vpmg_fillco:  filling in source term.
Vpmg_fillco:  marking ion and solvent accessibility.
fillcoCoef:  Calling fillcoCoefMol...
Vacc_SASA: Time elapsed: 0.004490
Vpmg_fillco:  done filling coefficient arrays
Vnm_tstop: stopping timer 27 (Setup timer).  CPU TIME = 1.011660e-01
Vnm_tstart: starting timer 28 (Solver timer)..
Vnm_tstart: starting timer 30 (Vmgdrv2: fine problem setup)..
Vbuildops: Fine: (065, 065, 065)
Vbuildops: Operator stencil (lev, numdia) = (1, 4)
Vnm_tstop: stopping timer 30 (Vmgdrv2: fine problem setup).  CPU TIME = 8.474000e-03
Vnm_tstart: starting timer 30 (Vmgdrv2: coarse problem setup)..
Vbuildops: Galer: (033, 033, 033)
Vbuildops: Galer: (017, 017, 017)
Vbuildops: Galer: (009, 009, 009)
Vbuildops: Galer: (005, 005, 005)
Vnm_tstop: stopping timer 30 (Vmgdrv2: coarse problem setup).  CPU TIME = 1.659100e-02
Vnm_tstart: starting timer 30 (Vmgdrv2: solve)..
Vnm_tstop: stopping timer 40 (MG iteration).  CPU TIME = 3.303190e-01
Vprtstp: iteration = 0
Vprtstp: relative residual = 1.000000e+00
Vprtstp: contraction number = 1.000000e+00
Vprtstp: iteration = 1
Vprtstp: relative residual = 7.130403e-02
Vprtstp: contraction number = 7.130403e-02
Vprtstp: iteration = 2
Vprtstp: relative residual = 7.547606e-03
Vprtstp: contraction number = 1.058510e-01
Vprtstp: iteration = 3
Vprtstp: relative residual = 9.794975e-04
Vprtstp: contraction number = 1.297759e-01
Vprtstp: iteration = 4
Vprtstp: relative residual = 1.516235e-04
Vprtstp: contraction number = 1.547972e-01
Vprtstp: iteration = 5
Vprtstp: relative residual = 2.614224e-05
Vprtstp: contraction number = 1.724155e-01
Vprtstp: iteration = 6
Vprtstp: relative residual = 4.632312e-06
Vprtstp: contraction number = 1.771965e-01
Vprtstp: iteration = 7
Vprtstp: relative residual = 8.250042e-07
Vprtstp: contraction number = 1.780977e-01
Vnm_tstop: stopping timer 30 (Vmgdrv2: solve).  CPU TIME = 5.670200e-02
Vnm_tstop: stopping timer 28 (Solver timer).  CPU TIME = 8.569400e-02
Vpmg_setPart:  lower corner = (-36.0725, -4.446, -45.644)
Vpmg_setPart:  upper corner = (3.9275, 35.554, -5.644)
Vpmg_setPart:  actual minima = (-36.0725, -4.446, -45.644)
Vpmg_setPart:  actual maxima = (3.9275, 35.554, -5.644)
Vpmg_setPart:  bflag[FRONT] = 0
Vpmg_setPart:  bflag[BACK] = 0
Vpmg_setPart:  bflag[LEFT] = 0
Vpmg_setPart:  bflag[RIGHT] = 0
Vpmg_setPart:  bflag[UP] = 0
Vpmg_setPart:  bflag[DOWN] = 0
Vnm_tstart: starting timer 29 (Energy timer)..
Vpmg_energy:  calculating only q-phi energy
Vpmg_qfEnergyVolume:  Calculating energy
Vpmg_energy:  qfEnergy = 1.128084178559E+05 kT
Vnm_tstop: stopping timer 29 (Energy timer).  CPU TIME = 2.930000e-04
Vnm_tstart: starting timer 30 (Force timer)..
Vnm_tstop: stopping timer 30 (Force timer).  CPU TIME = 4.000000e-06
Vgrid_writeDX:  Opening virtual socket...
Vgrid_writeDX:  Writing to virtual socket...
Vgrid_writeDX:  Writing comments for ASC format.
Vnm_tstop: stopping timer 26 (APBS WALL CLOCK).  CPU TIME = 4.638310e-01
##############################################################################
# MC-shell I/O capture file.
# Creation Date and Time:  Sun Jun 15 03:09:49 2025

##############################################################################
Vgrid_readDX:  Grid dimensions 65 x 65 x 65 grid
Vgrid_readDX:  Grid origin = (-36.0725, -4.446, -45.644)
Vgrid_readDX:  Grid spacings = (0.625, 0.625, 0.625)
Vgrid_readDX:  allocating 65 x 65 x 65 doubles for storage
