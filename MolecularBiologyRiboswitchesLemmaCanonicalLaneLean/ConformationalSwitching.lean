import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure ConformationalSwitchingPackage where
  ligandInducedSwitch : Prop
  alternativeStructures : Prop
  kineticControl : Prop
  switchDemonstrated : ligandInducedSwitch
  structuresCharacterized : alternativeStructures
  kineticsModeled : kineticControl

structure ConformationalSwitchingEvidence (P : ConformationalSwitchingPackage) where
  switchClosed : P.ligandInducedSwitch
  structuresClosed : P.alternativeStructures
  kineticsClosed : P.kineticControl

def ConformationalSwitchingClosed (P : ConformationalSwitchingPackage) : Prop :=
  P.ligandInducedSwitch ∧ P.alternativeStructures ∧ P.kineticControl

theorem conformational_switching_closed_from_evidence (P : ConformationalSwitchingPackage) (E : ConformationalSwitchingEvidence P) :
    ConformationalSwitchingClosed P := by
  exact And.intro E.switchClosed (And.intro E.structuresClosed E.kineticsClosed)

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse