import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure GeneExpressionRegulationPackage (A : AdmissibleClass) where
  geneTarget : Type u
  transcriptionEfficiency : Prop
  translationEfficiency : Prop
  regulationMechanism : String
  regulatoryOutcome : Prop

structure GeneExpressionRegulationEvidence (P : GeneExpressionRegulationPackage A) where
  transcriptionEfficiencyClosed : P.transcriptionEfficiency
  translationEfficiencyClosed : P.translationEfficiency
  regulationMechanismClosed : P.regulationMechanism ≠ ""
  regulatoryOutcomeClosed : P.regulatoryOutcome

def GeneExpressionRegulationClosed (P : GeneExpressionRegulationPackage A) : Prop :=
  P.transcriptionEfficiency ∧ P.translationEfficiency ∧ P.regulatoryOutcome

theorem gene_expression_regulation_closed_from_evidence (P : GeneExpressionRegulationPackage A) (E : GeneExpressionRegulationEvidence A) : GeneExpressionRegulationClosed P :=
  And.intro E.transcriptionEfficiencyClosed (And.intro E.translationEfficiencyClosed E.regulatoryOutcomeClosed)

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse