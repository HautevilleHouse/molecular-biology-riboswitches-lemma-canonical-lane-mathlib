import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure ExpressionPlatformBasePairingPackage where
  expressionPlatformSequence : String
  antiTerminatorFormation : Prop
  terminatorHairpinStability : Prop
  basePairingFreeEnergy : Prop
  transcriptionalControl : Prop

structure ExpressionPlatformBasePairingEvidence (P : ExpressionPlatformBasePairingPackage) where
  antiTerminatorFormationClosed : P.antiTerminatorFormation
  terminatorHairpinStabilityClosed : P.terminatorHairpinStability
  basePairingFreeEnergyClosed : P.basePairingFreeEnergy
  transcriptionalControlClosed : P.transcriptionalControl

def ExpressionPlatformBasePairingClosed (P : ExpressionPlatformBasePairingPackage) : Prop :=
  P.antiTerminatorFormation ∧ P.terminatorHairpinStability ∧
  P.basePairingFreeEnergy ∧ P.transcriptionalControl

theorem expression_platform_base_pairing_closed_from_evidence
    (P : ExpressionPlatformBasePairingPackage)
    (E : ExpressionPlatformBasePairingEvidence P) :
    ExpressionPlatformBasePairingClosed P := by
  exact And.intro E.antiTerminatorFormationClosed
    (And.intro E.terminatorHairpinStabilityClosed
      (And.intro E.basePairingFreeEnergyClosed E.transcriptionalControlClosed))

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse