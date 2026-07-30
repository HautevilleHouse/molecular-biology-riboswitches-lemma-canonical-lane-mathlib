import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure RegulatoryFunctionPackage where
  geneExpressionControl : Prop
  feedbackMechanism : Prop
  physiologicalRelevance : Prop
  expressionControlDemonstrated : geneExpressionControl
  feedbackCharacterized : feedbackMechanism
  relevanceEstablished : physiologicalRelevance

structure RegulatoryFunctionEvidence (P : RegulatoryFunctionPackage) where
  expressionClosed : P.geneExpressionControl
  feedbackClosed : P.feedbackMechanism
  relevanceClosed : P.physiologicalRelevance

def RegulatoryFunctionClosed (P : RegulatoryFunctionPackage) : Prop :=
  P.geneExpressionControl ∧ P.feedbackMechanism ∧ P.physiologicalRelevance

theorem regulatory_function_closed_from_evidence (P : RegulatoryFunctionPackage) (E : RegulatoryFunctionEvidence P) :
    RegulatoryFunctionClosed P := by
  exact And.intro E.expressionClosed (And.intro E.feedbackClosed E.relevanceClosed)

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse