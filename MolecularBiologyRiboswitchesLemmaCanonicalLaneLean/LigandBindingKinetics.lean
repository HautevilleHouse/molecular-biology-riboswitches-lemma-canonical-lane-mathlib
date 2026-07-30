import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure LigandBindingKineticsPackage (A : AdmissibleClass) where
  ligandSpecies : Type u
  bindingRate : ℕ
  dissociationRate : ℕ
  bindingAffinity : Prop
  kineticsModelAdmissible : Prop

structure LigandBindingKineticsEvidence (P : LigandBindingKineticsPackage A) where
  bindingRateClosed : P.bindingRate > 0
  dissociationRateClosed : P.dissociationRate > 0
  bindingAffinityClosed : P.bindingAffinity
  kineticsModelAdmissibleClosed : P.kineticsModelAdmissible

def LigandBindingKineticsClosed (P : LigandBindingKineticsPackage A) : Prop :=
  P.bindingAffinity ∧ P.kineticsModelAdmissible ∧ P.bindingRate > 0 ∧ P.dissociationRate > 0

theorem ligand_binding_kinetics_closed_from_evidence (P : LigandBindingKineticsPackage A) (E : LigandBindingKineticsEvidence A) : LigandBindingKineticsClosed P :=
  And.intro E.bindingAffinityClosed (And.intro E.kineticsModelAdmissibleClosed (And.intro E.bindingRateClosed E.dissociationRateClosed))

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse