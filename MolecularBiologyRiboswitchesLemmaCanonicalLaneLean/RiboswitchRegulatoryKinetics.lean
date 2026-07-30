import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure RiboswitchRegulatoryKineticsPackage where
  transcriptionPausing : Prop
  translationInitiationRegulation : Prop
  geneExpressionSwitchingThreshold : Prop
  responseTimeMeasured : Prop

structure RiboswitchRegulatoryKineticsEvidence (P : RiboswitchRegulatoryKineticsPackage) where
  transcriptionPausingClosed : P.transcriptionPausing
  translationInitiationRegulationClosed : P.translationInitiationRegulation
  geneExpressionSwitchingThresholdClosed : P.geneExpressionSwitchingThreshold
  responseTimeMeasuredClosed : P.responseTimeMeasured

def RiboswitchRegulatoryKineticsClosed (P : RiboswitchRegulatoryKineticsPackage) : Prop :=
  P.transcriptionPausing ∧ P.translationInitiationRegulation ∧
  P.geneExpressionSwitchingThreshold ∧ P.responseTimeMeasured

theorem riboswitch_regulatory_kinetics_closed_from_evidence
    (P : RiboswitchRegulatoryKineticsPackage)
    (E : RiboswitchRegulatoryKineticsEvidence P) :
    RiboswitchRegulatoryKineticsClosed P := by
  exact And.intro E.transcriptionPausingClosed
    (And.intro E.translationInitiationRegulationClosed
      (And.intro E.geneExpressionSwitchingThresholdClosed E.responseTimeMeasuredClosed))

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse