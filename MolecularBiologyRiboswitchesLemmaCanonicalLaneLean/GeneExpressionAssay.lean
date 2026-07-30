import canonicalLaneMathlib.AdmissibleClass

/-!
# Gene Expression Assay Package

This module records experimental gene expression measurements
for riboswitch-regulated systems.
-/

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure GeneExpressionMeasurement where
  condition : String
  expressionLevel : ℝ
  normalizedExpression : ℝ
  errorBar : ℝ
  expressionNonnegative : expressionLevel ≥ 0
  normalizedNonnegative : normalizedExpression ≥ 0
  errorNonnegative : errorBar ≥ 0

structure GeneExpressionAssayPackage where
  measurements : List GeneExpressionMeasurement
  controlExpression : ℝ
  foldChangeThreshold : ℝ
  controlExpressionPositive : controlExpression > 0
  foldChangeThresholdPositive : foldChangeThreshold > 0

structure GeneExpressionAssayEvidence (A : GeneExpressionAssayPackage) where
  controlExpressionPositiveClosed : A.controlExpressionPositive
  foldChangeThresholdPositiveClosed : A.foldChangeThresholdPositive

def GeneExpressionAssayClosed (A : GeneExpressionAssayPackage) : Prop :=
  A.controlExpressionPositive ∧ A.foldChangeThresholdPositive

theorem gene_expression_assay_closed_from_evidence
    (A : GeneExpressionAssayPackage)
    (E : GeneExpressionAssayEvidence A) : GeneExpressionAssayClosed A := by
  exact And.intro E.controlExpressionPositiveClosed E.foldChangeThresholdPositiveClosed

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse