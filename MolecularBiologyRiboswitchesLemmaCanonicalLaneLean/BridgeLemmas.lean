import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RiboswitchLemmaClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.gateWitness

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse