import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

def ConstrainedRiboswitchLemmaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_riboswitch_lemma_endgame (A : AdmissibleClass) :
    ConstrainedRiboswitchLemmaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse