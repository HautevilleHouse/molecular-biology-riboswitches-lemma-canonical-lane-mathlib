import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRiboswitchesLemmaCanonicalLaneLean.AptamerDomainBinding
import MolecularBiologyRiboswitchesLemmaCanonicalLaneLean.ExpressionPlatformBasePairing

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure RiboswitchAdmissibleObject where
  aptamerBinding : AptamerDomainBindingPackage
  expressionPlatform : ExpressionPlatformBasePairingPackage
  regulatoryKinetics : RiboswitchRegulatoryKineticsPackage
  ligandThreshold : Prop
  geneExpressionSwitch : Prop

structure RiboswitchAdmissibleClass where
  object : RiboswitchAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def RiboswitchWitnessClosed (O : RiboswitchAdmissibleObject) : Prop :=
  AptamerDomainBindingClosed O.aptamerBinding ∧
  ExpressionPlatformBasePairingClosed O.expressionPlatform ∧
  RiboswitchRegulatoryKineticsClosed O.regulatoryKinetics

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse