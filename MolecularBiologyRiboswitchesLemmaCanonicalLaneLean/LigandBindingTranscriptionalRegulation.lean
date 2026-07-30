import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure LigandBindingTranscriptionalRegulationPackage where
  ligandBindingDomain : AptamerDomainBindingPackage
  expressionPlatform : ExpressionPlatformBasePairingPackage
  couplingBetweenDomains : Prop
  ligandConcentrationThreshold : Prop
  terminationReadthrough : Prop

structure LigandBindingTranscriptionalRegulationEvidence
    (P : LigandBindingTranscriptionalRegulationPackage) where
  couplingBetweenDomainsClosed : P.couplingBetweenDomains
  ligandConcentrationThresholdClosed : P.ligandConcentrationThreshold
  terminationReadthroughClosed : P.terminationReadthrough
  aptamerClosed : AptamerDomainBindingClosed P.ligandBindingDomain
  expressionPlatformClosed : ExpressionPlatformBasePairingClosed P.expressionPlatform

def LigandBindingTranscriptionalRegulationClosed
    (P : LigandBindingTranscriptionalRegulationPackage) : Prop :=
  P.couplingBetweenDomains ∧ P.ligandConcentrationThreshold ∧
  P.terminationReadthrough ∧ AptamerDomainBindingClosed P.ligandBindingDomain ∧
  ExpressionPlatformBasePairingClosed P.expressionPlatform

theorem ligand_binding_transcriptional_regulation_closed_from_evidence
    (P : LigandBindingTranscriptionalRegulationPackage)
    (E : LigandBindingTranscriptionalRegulationEvidence P) :
    LigandBindingTranscriptionalRegulationClosed P := by
  exact And.intro E.couplingBetweenDomainsClosed
    (And.intro E.ligandConcentrationThresholdClosed
      (And.intro E.terminationReadthroughClosed
        (And.intro E.aptamerClosed E.expressionPlatformClosed)))

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse