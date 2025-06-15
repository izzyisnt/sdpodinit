##############################################################################
# MC-shell I/O capture file.
# Creation Date and Time:  Sat Jun 14 20:06:28 2025

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
Valist_getStatistics:  Max atom coordinate:  (6.396, 44.357, 10.16)
Valist_getStatistics:  Min atom coordinate:  (-38.541, -13.216, -61.487)
Valist_getStatistics:  Molecule center:  (-16.0725, 15.5705, -25.6635)
NOsh_setupCalcMGAUTO(/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 1868):  coarse grid center = -16.0725 15.5705 -25.6635
NOsh_setupCalcMGAUTO(/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 1873):  fine grid center = -16.0725 15.5705 -25.6635
NOsh_setupCalcMGAUTO (/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 1885):  Coarse grid spacing = 1.25, 1.25, 1.25
NOsh_setupCalcMGAUTO (/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 1887):  Fine grid spacing = 0.625, 0.625, 0.625
NOsh_setupCalcMGAUTO (/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 1889):  Displacement between fine and coarse grids = 0, 0, 0
NOsh:  2 levels of focusing with 0.5, 0.5, 0.5 reductions
NOsh_setupMGAUTO:  Resetting boundary flags
NOsh_setupCalcMGAUTO (/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 1983):  starting mesh repositioning.
NOsh_setupCalcMGAUTO (/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 1985):  coarse mesh center = -16.0725 15.5705 -25.6635
NOsh_setupCalcMGAUTO (/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 1990):  coarse mesh upper corner = 23.9275 55.5705 14.3365
NOsh_setupCalcMGAUTO (/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 1995):  coarse mesh lower corner = -56.0725 -24.4295 -65.6635
NOsh_setupCalcMGAUTO (/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 2000):  initial fine mesh upper corner = 3.9275 35.5705 -5.6635
NOsh_setupCalcMGAUTO (/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 2005):  initial fine mesh lower corner = -36.0725 -4.4295 -45.6635
NOsh_setupCalcMGAUTO (/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 2066):  final fine mesh upper corner = 3.9275 35.5705 -5.6635
NOsh_setupCalcMGAUTO (/tmp/apbs-20241017-11524-77jxzr/src/generic/nosh.c, 2071):  final fine mesh lower corner = -36.0725 -4.4295 -45.6635
NOsh_setupMGAUTO:  Resetting boundary flags
NOsh_setupCalc:  Mapping ELEC statement 0 (1) to calculation 1 (2)
Vnm_tstart: starting timer 27 (Setup timer)..
Setting up PBE object...
Vpbe_ctor2:  solute radius = 43.4388
Vpbe_ctor2:  solute dimensions = 47.518 x 59.675 x 73.877
Vpbe_ctor2:  solute charge = 2.87548e-14
Vpbe_ctor2:  bulk ionic strength = 0
Vpbe_ctor2:  xkappa = 0
Vpbe_ctor2:  Debye length = 0
Vpbe_ctor2:  zkappa2 = 0
Vpbe_ctor2:  zmagic = 7042.98
Vpbe_ctor2:  Constructing Vclist with 75 x 75 x 75 table
Vclist_ctor2:  Using 75 x 75 x 75 hash table
Vclist_ctor2:  automatic domain setup.
Vclist_ctor2:  Using 1.9 max radius
Vclist_setupGrid:  Grid lengths = (56.013, 68.649, 82.723)
Vclist_setupGrid:  Grid lower corner = (-44.079, -18.754, -67.025)
Vclist_assignAtoms:  Have 3871827 atom entries
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
Vacc_SASA: Time elapsed: 0.011125
Vpmg_fillco:  done filling coefficient arrays
Vpmg_fillco:  filling boundary arrays
Vpmg_fillco:  done filling boundary arrays
Vnm_tstop: stopping timer 27 (Setup timer).  CPU TIME = 1.349890e-01
Vnm_tstart: starting timer 28 (Solver timer)..
Vnm_tstart: starting timer 30 (Vmgdrv2: fine problem setup)..
Vbuildops: Fine: (065, 065, 065)
Vbuildops: Operator stencil (lev, numdia) = (1, 4)
Vnm_tstop: stopping timer 30 (Vmgdrv2: fine problem setup).  CPU TIME = 1.277700e-02
Vnm_tstart: starting timer 30 (Vmgdrv2: coarse problem setup)..
Vbuildops: Galer: (033, 033, 033)
Vbuildops: Galer: (017, 017, 017)
Vbuildops: Galer: (009, 009, 009)
Vbuildops: Galer: (005, 005, 005)
Vnm_tstop: stopping timer 30 (Vmgdrv2: coarse problem setup).  CPU TIME = 4.066600e-02
Vnm_tstart: starting timer 30 (Vmgdrv2: solve)..
Vnm_tstop: stopping timer 40 (MG iteration).  CPU TIME = 2.516710e-01
Vprtstp: iteration = 0
Vprtstp: relative residual = 1.000000e+00
Vprtstp: contraction number = 1.000000e+00
Vprtstp: iteration = 1
Vprtstp: relative residual = 6.665199e-02
Vprtstp: contraction number = 6.665199e-02
Vprtstp: iteration = 2
Vprtstp: relative residual = 8.646605e-03
Vprtstp: contraction number = 1.297276e-01
Vprtstp: iteration = 3
Vprtstp: relative residual = 1.252006e-03
Vprtstp: contraction number = 1.447974e-01
Vprtstp: iteration = 4
Vprtstp: relative residual = 1.978576e-04
Vprtstp: contraction number = 1.580325e-01
Vprtstp: iteration = 5
Vprtstp: relative residual = 3.381268e-05
Vprtstp: contraction number = 1.708940e-01
Vprtstp: iteration = 6
Vprtstp: relative residual = 6.190505e-06
Vprtstp: contraction number = 1.830824e-01
Vprtstp: iteration = 7
Vprtstp: relative residual = 1.201623e-06
Vprtstp: contraction number = 1.941075e-01
Vprtstp: iteration = 8
Vprtstp: relative residual = 2.454798e-07
Vprtstp: contraction number = 2.042902e-01
Vnm_tstop: stopping timer 30 (Vmgdrv2: solve).  CPU TIME = 2.077790e-01
Vnm_tstop: stopping timer 28 (Solver timer).  CPU TIME = 2.679780e-01
Vpmg_setPart:  lower corner = (-56.0725, -24.4295, -65.6635)
Vpmg_setPart:  upper corner = (23.9275, 55.5705, 14.3365)
Vpmg_setPart:  actual minima = (-56.0725, -24.4295, -65.6635)
Vpmg_setPart:  actual maxima = (23.9275, 55.5705, 14.3365)
Vpmg_setPart:  bflag[FRONT] = 0
Vpmg_setPart:  bflag[BACK] = 0
Vpmg_setPart:  bflag[LEFT] = 0
Vpmg_setPart:  bflag[RIGHT] = 0
Vpmg_setPart:  bflag[UP] = 0
Vpmg_setPart:  bflag[DOWN] = 0
Vnm_tstart: starting timer 29 (Energy timer)..
Vpmg_energy:  calculating only q-phi energy
Vpmg_qfEnergyVolume:  Calculating energy
Vpmg_energy:  qfEnergy = 2.937845741494E+04 kT
Vnm_tstop: stopping timer 29 (Energy timer).  CPU TIME = 8.890000e-04
Vnm_tstart: starting timer 30 (Force timer)..
Vnm_tstop: stopping timer 30 (Force timer).  CPU TIME = 8.500000e-05
Vnm_tstart: starting timer 27 (Setup timer)..
Setting up PBE object...
Vpbe_ctor2:  solute radius = 43.4388
Vpbe_ctor2:  solute dimensions = 47.518 x 59.675 x 73.877
Vpbe_ctor2:  solute charge = 2.87548e-14
Vpbe_ctor2:  bulk ionic strength = 0
Vpbe_ctor2:  xkappa = 0
Vpbe_ctor2:  Debye length = 0
Vpbe_ctor2:  zkappa2 = 0
Vpbe_ctor2:  zmagic = 7042.98
Vpbe_ctor2:  Constructing Vclist with 75 x 75 x 75 table
Vclist_ctor2:  Using 75 x 75 x 75 hash table
Vclist_ctor2:  automatic domain setup.
Vclist_ctor2:  Using 1.9 max radius
Vclist_setupGrid:  Grid lengths = (56.013, 68.649, 82.723)
Vclist_setupGrid:  Grid lower corner = (-44.079, -18.754, -67.025)
Vclist_assignAtoms:  Have 3871827 atom entries
Vacc_storeParms:  Surf. density = 0.03
Vacc_storeParms:  Max area = 191.134
Vacc_storeParms:  Using 4-point reference sphere
Setting up PDE object...
Vpmp_ctor2:  Using meth = 2, mgsolv = 1
Setting PDE center to local center...
Vpmg_ctor2:  Filling boundary with old solution!
VPMG::focusFillBound -- New mesh mins = -36.0725, -4.4295, -45.6635
VPMG::focusFillBound -- New mesh maxs = 3.9275, 35.5705, -5.6635
VPMG::focusFillBound -- Old mesh mins = -56.0725, -24.4295, -65.6635
VPMG::focusFillBound -- Old mesh maxs = 23.9275, 55.5705, 14.3365
VPMG::extEnergy:  energy flag = 1
Vpmg_setPart:  lower corner = (-36.0725, -4.4295, -45.6635)
Vpmg_setPart:  upper corner = (3.9275, 35.5705, -5.6635)
Vpmg_setPart:  actual minima = (-56.0725, -24.4295, -65.6635)
Vpmg_setPart:  actual maxima = (23.9275, 55.5705, 14.3365)
Vpmg_setPart:  bflag[FRONT] = 0
Vpmg_setPart:  bflag[BACK] = 0
Vpmg_setPart:  bflag[LEFT] = 0
Vpmg_setPart:  bflag[RIGHT] = 0
Vpmg_setPart:  bflag[UP] = 0
Vpmg_setPart:  bflag[DOWN] = 0
VPMG::extEnergy:   Finding extEnergy dimensions...
VPMG::extEnergy    Disj part lower corner = (-36.0725, -4.4295, -45.6635)
VPMG::extEnergy    Disj part upper corner = (3.9275, 35.5705, -5.6635)
VPMG::extEnergy    Old lower corner = (-56.0725, -24.4295, -65.6635)
VPMG::extEnergy    Old upper corner = (23.9275, 55.5705, 14.3365)
Vpmg_qmEnergy:  Zero energy for zero ionic strength!
VPMG::extEnergy: extQmEnergy = 0 kT
Vpmg_qfEnergyVolume:  Calculating energy
VPMG::extEnergy: extQfEnergy = 10967.3 kT
VPMG::extEnergy: extDiEnergy = 5514.71 kT
Vpmg_fillco:  filling in source term.
fillcoCharge:  Calling fillcoChargeSpline2...
Vpmg_fillco:  filling in source term.
Vpmg_fillco:  marking ion and solvent accessibility.
fillcoCoef:  Calling fillcoCoefMol...
Vacc_SASA: Time elapsed: 0.011364
Vpmg_fillco:  done filling coefficient arrays
Vnm_tstop: stopping timer 27 (Setup timer).  CPU TIME = 1.740410e-01
Vnm_tstart: starting timer 28 (Solver timer)..
Vnm_tstart: starting timer 30 (Vmgdrv2: fine problem setup)..
Vbuildops: Fine: (065, 065, 065)
Vbuildops: Operator stencil (lev, numdia) = (1, 4)
Vnm_tstop: stopping timer 30 (Vmgdrv2: fine problem setup).  CPU TIME = 1.270000e-02
Vnm_tstart: starting timer 30 (Vmgdrv2: coarse problem setup)..
Vbuildops: Galer: (033, 033, 033)
Vbuildops: Galer: (017, 017, 017)
Vbuildops: Galer: (009, 009, 009)
Vbuildops: Galer: (005, 005, 005)
Vnm_tstop: stopping timer 30 (Vmgdrv2: coarse problem setup).  CPU TIME = 3.533800e-02
Vnm_tstart: starting timer 30 (Vmgdrv2: solve)..
Vnm_tstop: stopping timer 40 (MG iteration).  CPU TIME = 6.921660e-01
Vprtstp: iteration = 0
Vprtstp: relative residual = 1.000000e+00
Vprtstp: contraction number = 1.000000e+00
Vprtstp: iteration = 1
Vprtstp: relative residual = 7.132512e-02
Vprtstp: contraction number = 7.132512e-02
Vprtstp: iteration = 2
Vprtstp: relative residual = 7.552617e-03
Vprtstp: contraction number = 1.058900e-01
Vprtstp: iteration = 3
Vprtstp: relative residual = 9.806560e-04
Vprtstp: contraction number = 1.298432e-01
Vprtstp: iteration = 4
Vprtstp: relative residual = 1.521323e-04
Vprtstp: contraction number = 1.551332e-01
Vprtstp: iteration = 5
Vprtstp: relative residual = 2.642229e-05
Vprtstp: contraction number = 1.736796e-01
Vprtstp: iteration = 6
Vprtstp: relative residual = 4.722247e-06
Vprtstp: contraction number = 1.787221e-01
Vprtstp: iteration = 7
Vprtstp: relative residual = 8.452309e-07
Vprtstp: contraction number = 1.789891e-01
Vnm_tstop: stopping timer 30 (Vmgdrv2: solve).  CPU TIME = 1.924600e-01
Vnm_tstop: stopping timer 28 (Solver timer).  CPU TIME = 2.467440e-01
Vpmg_setPart:  lower corner = (-36.0725, -4.4295, -45.6635)
Vpmg_setPart:  upper corner = (3.9275, 35.5705, -5.6635)
Vpmg_setPart:  actual minima = (-36.0725, -4.4295, -45.6635)
Vpmg_setPart:  actual maxima = (3.9275, 35.5705, -5.6635)
Vpmg_setPart:  bflag[FRONT] = 0
Vpmg_setPart:  bflag[BACK] = 0
Vpmg_setPart:  bflag[LEFT] = 0
Vpmg_setPart:  bflag[RIGHT] = 0
Vpmg_setPart:  bflag[UP] = 0
Vpmg_setPart:  bflag[DOWN] = 0
Vnm_tstart: starting timer 29 (Energy timer)..
Vpmg_energy:  calculating only q-phi energy
Vpmg_qfEnergyVolume:  Calculating energy
Vpmg_energy:  qfEnergy = 1.128807190019E+05 kT
Vnm_tstop: stopping timer 29 (Energy timer).  CPU TIME = 1.105000e-03
Vnm_tstart: starting timer 30 (Force timer)..
Vnm_tstop: stopping timer 30 (Force timer).  CPU TIME = 1.600000e-05
Vgrid_writeDX:  Opening virtual socket...
Vgrid_writeDX:  Writing to virtual socket...
Vgrid_writeDX:  Writing comments for ASC format.
Vnm_tstop: stopping timer 26 (APBS WALL CLOCK).  CPU TIME = 1.074949e+00
##############################################################################
# MC-shell I/O capture file.
# Creation Date and Time:  Sat Jun 14 20:06:29 2025

##############################################################################
Vgrid_readDX:  Grid dimensions 65 x 65 x 65 grid
Vgrid_readDX:  Grid origin = (-36.0725, -4.4295, -45.6635)
Vgrid_readDX:  Grid spacings = (0.625, 0.625, 0.625)
Vgrid_readDX:  allocating 65 x 65 x 65 doubles for storage
