import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure EvolutionaryConservationPackage where
  sequenceAlignment : Prop
  phylogeneticTree : Prop
  conservedMotifs : Prop
  selectivePressure : Prop
  sequenceAlignmentClosed : sequenceAlignment
  phylogeneticTreeClosed : phylogeneticTree
  conservedMotifsClosed : conservedMotifs
  selectivePressureClosed : selectivePressure

def EvolutionaryConservationClosed (E : EvolutionaryConservationPackage) : Prop :=
  E.sequenceAlignment ∧ E.phylogeneticTree ∧ E.conservedMotifs ∧ E.selectivePressure

theorem evolutionary_conservation_closed_from_evidence (E : EvolutionaryConservationPackage) :
    EvolutionaryConservationClosed E := by
  exact And.intro E.sequenceAlignmentClosed
    (And.intro E.phylogeneticTreeClosed
      (And.intro E.conservedMotifsClosed E.selectivePressureClosed))

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse
