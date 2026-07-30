import canonicalLaneMathlib.AdmissibleClass

/-!
# Riboswitch Ligand-Binding Thermodynamics Package

This module records the thermodynamic parameters of ligand binding to the aptamer
domain of a riboswitch. The package captures binding affinity, free energy changes,
and the conformational switch equilibrium that controls gene expression.
-/

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure RiboswitchThermodynamicsPackage where
  bindingConstant : ℝ
  freeEnergyBound : ℝ
  freeEnergyUnbound : ℝ
  conformationalChangeFreeEnergy : ℝ
  switchThreshold : ℝ
  bindingAffinityMeasured : Prop
  freeEnergyChangeCalculable : Prop
  switchEquilibriumDefined : Prop

structure RiboswitchThermodynamicsEvidence
    (T : RiboswitchThermodynamicsPackage) where
  bindingAffinityMeasuredClosed : T.bindingAffinityMeasured
  freeEnergyChangeCalculableClosed : T.freeEnergyChangeCalculable
  switchEquilibriumDefinedClosed : T.switchEquilibriumDefined

def RiboswitchThermodynamicsClosed
    (T : RiboswitchThermodynamicsPackage) : Prop :=
  T.bindingAffinityMeasured ∧ T.freeEnergyChangeCalculable ∧ T.switchEquilibriumDefined

theorem riboswitch_thermodynamics_closed_from_evidence
    (T : RiboswitchThermodynamicsPackage)
    (E : RiboswitchThermodynamicsEvidence T) :
    RiboswitchThermodynamicsClosed T := by
  exact And.intro E.bindingAffinityMeasuredClosed
    (And.intro E.freeEnergyChangeCalculableClosed E.switchEquilibriumDefinedClosed)

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse