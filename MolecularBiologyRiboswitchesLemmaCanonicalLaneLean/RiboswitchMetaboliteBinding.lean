import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure MetaboliteBindingPackage where
  metabolite : Type u
  bindingAffinity : Prop
  conformationalChange : Prop
  geneRegulation : Prop
  bindingAffinityClosed : bindingAffinity
  conformationalChangeClosed : conformationalChange
  geneRegulationClosed : geneRegulation

def MetaboliteBindingClosed (M : MetaboliteBindingPackage) : Prop :=
  M.bindingAffinity ∧ M.conformationalChange ∧ M.geneRegulation

theorem metabolite_binding_closed_from_evidence (M : MetaboliteBindingPackage) :
    MetaboliteBindingClosed M := by
  exact And.intro M.bindingAffinityClosed
    (And.intro M.conformationalChangeClosed M.geneRegulationClosed)

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse
