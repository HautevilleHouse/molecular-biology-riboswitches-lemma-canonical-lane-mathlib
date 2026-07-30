import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure LigandBindingPackage where
  aptamerAffinity : Prop
  bindingKinetics : Prop
  specificity : Prop
  affinityMeasured : aptamerAffinity
  kineticsMeasured : bindingKinetics
  specificityConfirmed : specificity

structure LigandBindingEvidence (P : LigandBindingPackage) where
  affinityClosed : P.aptamerAffinity
  kineticsClosed : P.bindingKinetics
  specificityClosed : P.specificity

def LigandBindingClosed (P : LigandBindingPackage) : Prop :=
  P.aptamerAffinity ∧ P.bindingKinetics ∧ P.specificity

theorem ligand_binding_closed_from_evidence (P : LigandBindingPackage) (E : LigandBindingEvidence P) :
    LigandBindingClosed P := by
  exact And.intro E.affinityClosed (And.intro E.kineticsClosed E.specificityClosed)

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse