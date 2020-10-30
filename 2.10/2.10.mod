/* Variables */

/* Rosas de tallo largo */ 
var FLL >= 0;
var FLRM >= 0;
var FLRG >= 0;

/* Rosas amarillas */
var FAA >= 0;
var FARM >= 0;
var FARG >= 0;

/* Rosas rojas */
var FRR >= 0;
var FRRM >= 0;
var FRRG >= 0;

/* Crisantemos */
var FCC >= 0;
var FCRC >= 0;
var FCRM >= 0;
var FCRG >= 0;

/* Margaritas */
var FMRC >= 0;
var FMRM >= 0;
var FMRG >= 0;

/* Atados */
var AL >= 0;
var AA >= 0;
var AR >= 0;
var AC >= 0;
var AM >= 0;

/* Ramos */
var PL >= 0;
var PA >= 0;
var PR >= 0;
var PC >= 0;
var PRC >= 0;
var PRM >= 0;
var PRG >= 0;

/* Funcional */
maximize z: 3*PL + 10*PA + 8*PR + 3*PC + 2*PRC + 4*PRM + 6*PRG - 20*AL - 20*AA - 10*AR - 5*AC - 3*AM;

/* Igualdades */
s.t. ProdTaloLargo: PL = FLL;
s.t. ProdAmarillas: 9*PA = FAA;
s.t. ProdRojas: 7*PR = FRR;
s.t. ProdCrisantemos: 18*PC = FCC;
s.t. ProdRamoChico_Crisantemos: 6*PRC = FCRC;
s.t. ProdRamoChico_Margaritas: 8*PRC = FMRC;
s.t. ProdRamoMediano_Crisantemos: 10*PRM = FCRM;
s.t. ProdRamoMediano_Margaritas: 10*PRM = FMRM;
s.t. ProdRamoMediano_Rosas: 2*PRM = FLRM + FARM + FRRM;
s.t. ProdRamoGrande_Crisantemos: 15*PRG = FCRG;
s.t. ProdRamoGrande_Margaritas: 10*PRG = FMRG;
s.t. ProdRamoGrande_Rosas: 5*PRG = FLRG + FARG + FRRG;

s.t. CompraAtadoTaloLargo: 20*AL = FLL + FLRM + FLRG;
s.t. CompraAtadoAmarillas: 50*AA = FAA + FARM + FARG;
s.t. CompraAtadoRojas: 50*AR = FRR + FRRM + FRRG;
s.t. CompraAtadoCrisantemos: 100*AC = FCC + FCRC + FCRM + FCRG;
s.t. CompraAtadoMargaritas: 100*AM = FMRC + FMRM + FMRG;

/* Restricciones */
s.t. DemandaTaloLargo: PL <= 650;
s.t. DemandaAmarillas: PA <= 350;
s.t. DemandaRojas: PR <= 250;
s.t. DemandaCrisantemos: PC <= 600;
s.t. DemandaRamoChico: PRC <= 1100;
s.t. DemandaRamoMediano: PRM <= 990;
s.t. DemandaRamoGrande: PRG <= 625;

end;