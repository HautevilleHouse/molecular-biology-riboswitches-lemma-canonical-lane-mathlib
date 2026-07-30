import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure EvolutionaryConservationPackage (A : AdmissibleClass) where
  sequenceAlignment : Type u
  conservationScore : ℕ
  phylogeneticDistribution : Prop
  functionalConstraint : Prop

structure EvolutionaryConservationEvidence (P : EvolutionaryConservationPackage A) where
  conservationScoreClosed : P.conservationScore ≥ 80
  phylogeneticDistributionClosed : P.phylogeneticDistribution
  functionalConstraintClosed : P.functionalConstraint

def EvolutionaryConservationClosed (P : EvolutionaryConservationPackage A) : Prop :=
  P.phylogeneticDistribution ∧ P.functionalConstraint

theorem evolutionary_conservation_closed_from_evidence (P : EvolutionaryConservationPackage A) (E : EvolutionaryConservationEvidence A) : EvolutionaryConservationClosed P :=
  And.intro E.phylogeneticDistributionClosed E.functionalConstraintClosed

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse