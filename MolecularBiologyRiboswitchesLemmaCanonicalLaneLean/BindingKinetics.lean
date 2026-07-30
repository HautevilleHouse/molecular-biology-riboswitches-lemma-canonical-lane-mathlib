import canonicalLaneMathlib.AdmissibleClass

/-!
# Binding Kinetics Package

This module formalizes ligand binding and unbinding kinetics
governing riboswitch conformation switching.
-/

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure BindingKineticsPackage where
  kon : ℝ
  koff : ℝ
  equilibriumConstant : ℝ
  konPositive : kon > 0
  koffPositive : koff > 0
  equilibriumConstantPositive : equilibriumConstant > 0

structure BindingKineticsEvidence (B : BindingKineticsPackage) where
  konPositiveClosed : B.konPositive
  koffPositiveClosed : B.koffPositive
  equilibriumConstantPositiveClosed : B.equilibriumConstantPositive

def BindingKineticsClosed (B : BindingKineticsPackage) : Prop :=
  B.konPositive ∧ B.koffPositive ∧ B.equilibriumConstantPositive

theorem binding_kinetics_closed_from_evidence (B : BindingKineticsPackage)
    (E : BindingKineticsEvidence B) : BindingKineticsClosed B := by
  exact And.intro E.konPositiveClosed
    (And.intro E.koffPositiveClosed E.equilibriumConstantPositiveClosed)

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse