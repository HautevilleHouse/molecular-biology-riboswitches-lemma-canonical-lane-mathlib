import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure AllostericControlPackage where
  aptamerDomain : Prop
  expressionPlatform : Prop
  ligandInducedStabilization : Prop
  kineticControl : Prop
  aptamerDomainClosed : aptamerDomain
  expressionPlatformClosed : expressionPlatform
  ligandInducedStabilizationClosed : ligandInducedStabilization
  kineticControlClosed : kineticControl

def AllostericControlClosed (A : AllostericControlPackage) : Prop :=
  A.aptamerDomain ∧ A.expressionPlatform ∧ A.ligandInducedStabilization ∧ A.kineticControl

theorem allosteric_control_closed_from_evidence (A : AllostericControlPackage) :
    AllostericControlClosed A := by
  exact And.intro A.aptamerDomainClosed
    (And.intro A.expressionPlatformClosed
      (And.intro A.ligandInducedStabilizationClosed A.kineticControlClosed))

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse
