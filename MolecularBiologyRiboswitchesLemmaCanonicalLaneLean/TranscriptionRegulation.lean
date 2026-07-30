import canonicalLaneMathlib.AdmissibleClass

/-!
# Transcription Regulation Package

This module defines the transcription regulation model for riboswitches,
including the relationship between ligand concentration and termination.
-/

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure TranscriptionRegulationPackage where
  ligandConcentration : ℝ
  terminationThreshold : ℝ
  terminationProbability : ℝ
  transcriptionRate : ℝ
  thresholdPositive : terminationThreshold > 0
  probabilityInUnitInterval : 0 ≤ terminationProbability ∧ terminationProbability ≤ 1

structure TranscriptionRegulationEvidence
    (T : TranscriptionRegulationPackage) where
  thresholdPositiveClosed : T.thresholdPositive
  probabilityInUnitIntervalClosed : T.probabilityInUnitInterval

def TranscriptionRegulationClosed (T : TranscriptionRegulationPackage) : Prop :=
  T.thresholdPositive ∧ T.probabilityInUnitInterval

theorem transcription_regulation_closed_from_evidence
    (T : TranscriptionRegulationPackage)
    (E : TranscriptionRegulationEvidence T) : TranscriptionRegulationClosed T := by
  exact And.intro E.thresholdPositiveClosed E.probabilityInUnitIntervalClosed

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse