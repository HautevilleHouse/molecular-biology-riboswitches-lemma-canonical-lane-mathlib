import canonicalLaneMathlib.AdmissibleClass

/-!
# Thermodynamic Stability Package

This module records the free energy contributions that determine
the relative stability of riboswitch secondary structures.
-/

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure SecondaryStructure where
  basePairs : ℕ
  stemLoops : ℕ
  freeEnergy : ℝ
  basePairsNonnegative : basePairs ≥ 0
  stemLoopsNonnegative : stemLoops ≥ 0

structure ThermodynamicStabilityPackage where
  structure : SecondaryStructure
  deltaG : ℝ
  deltaG_folding : ℝ
  stabilityThreshold : ℝ
  foldingFavorable : deltaG_folding < 0
  thresholdPositive : stabilityThreshold > 0

structure ThermodynamicStabilityEvidence (T : ThermodynamicStabilityPackage) where
  foldingFavorableClosed : T.foldingFavorable
  thresholdPositiveClosed : T.thresholdPositive

def ThermodynamicStabilityClosed (T : ThermodynamicStabilityPackage) : Prop :=
  T.foldingFavorable ∧ T.thresholdPositive

theorem thermodynamic_stability_closed_from_evidence
    (T : ThermodynamicStabilityPackage)
    (E : ThermodynamicStabilityEvidence T) : ThermodynamicStabilityClosed T := by
  exact And.intro E.foldingFavorableClosed E.thresholdPositiveClosed

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse