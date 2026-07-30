import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure RiboswitchAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  riboswitchFunction : space → ℝ
  bindingAffinity : Prop
  conformationalSwitch : Prop
  regulationOutcome : Prop
  conclusion : bindingAffinity ∧ conformationalSwitch ∧ regulationOutcome

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse