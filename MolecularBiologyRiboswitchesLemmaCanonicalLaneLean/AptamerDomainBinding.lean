import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure AptamerDomainBindingPackage where
  aptamerSequence : String
  ligandMolecule : String
  bindingAffinity : Prop
  bindingSpecificity : Prop
  inducedFitConformationalChange : Prop

structure AptamerDomainBindingEvidence (P : AptamerDomainBindingPackage) where
  bindingAffinityClosed : P.bindingAffinity
  bindingSpecificityClosed : P.bindingSpecificity
  inducedFitConformationalChangeClosed : P.inducedFitConformationalChange

def AptamerDomainBindingClosed (P : AptamerDomainBindingPackage) : Prop :=
  P.bindingAffinity ∧ P.bindingSpecificity ∧ P.inducedFitConformationalChange

theorem aptamer_domain_binding_closed_from_evidence (P : AptamerDomainBindingPackage)
    (E : AptamerDomainBindingEvidence P) : AptamerDomainBindingClosed P := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.bindingSpecificityClosed E.inducedFitConformationalChangeClosed)

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse