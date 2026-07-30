import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure GeneRegulationCircuitPackage where
  transcriptionTermination : Prop
  translationInitiation : Prop
  mrnaStability : Prop
  feedbackLoop : Prop
  transcriptionTerminationClosed : transcriptionTermination
  translationInitiationClosed : translationInitiation
  mrnaStabilityClosed : mrnaStability
  feedbackLoopClosed : feedbackLoop

def GeneRegulationCircuitClosed (G : GeneRegulationCircuitPackage) : Prop :=
  G.transcriptionTermination ∧ G.translationInitiation ∧ G.mrnaStability ∧ G.feedbackLoop

theorem gene_regulation_circuit_closed_from_evidence (G : GeneRegulationCircuitPackage) :
    GeneRegulationCircuitClosed G := by
  exact And.intro G.transcriptionTerminationClosed
    (And.intro G.translationInitiationClosed
      (And.intro G.mrnaStabilityClosed G.feedbackLoopClosed))

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse
