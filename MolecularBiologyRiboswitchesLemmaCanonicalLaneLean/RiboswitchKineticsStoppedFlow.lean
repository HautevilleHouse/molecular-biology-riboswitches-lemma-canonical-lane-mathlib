import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure RiboswitchKineticsStoppedFlowPackage where
  stoppedFlowApparatus : String
  bindingOnRate : Prop
  bindingOffRate : Prop
  conformationalChangeRate : Prop
  kineticModelAdmissible : Prop

structure RiboswitchKineticsStoppedFlowEvidence (P : RiboswitchKineticsStoppedFlowPackage) where
  bindingOnRateClosed : P.bindingOnRate
  bindingOffRateClosed : P.bindingOffRate
  conformationalChangeRateClosed : P.conformationalChangeRate
  kineticModelAdmissibleClosed : P.kineticModelAdmissible

def RiboswitchKineticsStoppedFlowClosed (P : RiboswitchKineticsStoppedFlowPackage) : Prop :=
  P.bindingOnRate ∧ P.bindingOffRate ∧ P.conformationalChangeRate ∧ P.kineticModelAdmissible

theorem riboswitch_kinetics_stopped_flow_closed_from_evidence
    (P : RiboswitchKineticsStoppedFlowPackage)
    (E : RiboswitchKineticsStoppedFlowEvidence P) :
    RiboswitchKineticsStoppedFlowClosed P := by
  exact And.intro E.bindingOnRateClosed
    (And.intro E.bindingOffRateClosed
      (And.intro E.conformationalChangeRateClosed E.kineticModelAdmissibleClosed))

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse