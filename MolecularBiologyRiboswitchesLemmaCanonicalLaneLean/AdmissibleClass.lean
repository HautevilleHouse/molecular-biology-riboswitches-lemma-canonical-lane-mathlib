import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : RiboswitchLemmaPackage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RiboswitchLemmaClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse