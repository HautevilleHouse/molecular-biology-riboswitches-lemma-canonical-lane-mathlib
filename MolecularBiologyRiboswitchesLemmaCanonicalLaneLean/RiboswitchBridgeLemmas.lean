import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRiboswitchesLemmaCanonicalLaneLean.AptamerDomainBinding
import MolecularBiologyRiboswitchesLemmaCanonicalLaneLean.ExpressionPlatformBasePairing
import MolecularBiologyRiboswitchesLemmaCanonicalLaneLean.RiboswitchRegulatoryKinetics
import MolecularBiologyRiboswitchesLemmaCanonicalLaneLean.RiboswitchAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def riboswitchBridgeClosed (A : RiboswitchAdmissibleClass) : Prop :=
  RiboswitchWitnessClosed A.object

theorem riboswitch_bridge_from_admissible_class (A : RiboswitchAdmissibleClass) :
    riboswitchBridgeClosed A := by
  unfold riboswitchBridgeClosed, RiboswitchWitnessClosed
  have haptamer : AptamerDomainBindingClosed A.object.aptamerBinding := by
    -- assuming evidence from aptamer binding package
    exact aptamer_domain_binding_closed_from_evidence A.object.aptamerBinding
      (by
        constructor
        · exact A.object.aptamerBinding.bindingAffinity
        · exact A.object.aptamerBinding.bindingSpecificity
        · exact A.object.aptamerBinding.inducedFitConformationalChange)
  have hexp : ExpressionPlatformBasePairingClosed A.object.expressionPlatform := by
    -- similar for expression platform
    exact expression_platform_base_pairing_closed_from_evidence A.object.expressionPlatform
      (by
        constructor
        · exact A.object.expressionPlatform.antiTerminatorFormation
        · exact A.object.expressionPlatform.terminatorHairpinStability
        · exact A.object.expressionPlatform.basePairingFreeEnergy
        · exact A.object.expressionPlatform.transcriptionalControl)
  have hkin : RiboswitchRegulatoryKineticsClosed A.object.regulatoryKinetics := by
    -- similar for kinetics
    exact riboswitch_regulatory_kinetics_closed_from_evidence A.object.regulatoryKinetics
      (by
        constructor
        · exact A.object.regulatoryKinetics.transcriptionPausing
        · exact A.object.regulatoryKinetics.translationInitiationRegulation
        · exact A.object.regulatoryKinetics.geneExpressionSwitchingThreshold
        · exact A.object.regulatoryKinetics.responseTimeMeasured)
  exact And.intro haptamer (And.intro hexp hkin)

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse