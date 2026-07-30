import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure RiboswitchConformationPackage (A : AdmissibleClass) where
  aptamerDomain : Type u
  expressionPlatform : Type v
  ligandBindingDomain : A.object → Prop
  conformationalChangeTriggered : Prop
  geneExpressionRegulated : Prop

structure RiboswitchConformationEvidence {A : AdmissibleClass} (P : RiboswitchConformationPackage A) where
  aptamerDomainClosed : P.aptamerDomain → True
  expressionPlatformClosed : P.expressionPlatform → True
  ligandBindingDomainClosed : P.ligandBindingDomain (default)
  conformationalChangeTriggeredClosed : P.conformationalChangeTriggered
  geneExpressionRegulatedClosed : P.geneExpressionRegulated

def RiboswitchConformationClosed {A : AdmissibleClass} (P : RiboswitchConformationPackage A) : Prop :=
  P.conformationalChangeTriggered ∧ P.geneExpressionRegulated

theorem riboswitch_conformation_closed_from_evidence {A : AdmissibleClass} (P : RiboswitchConformationPackage A) (E : RiboswitchConformationEvidence P) : RiboswitchConformationClosed P :=
  And.intro E.conformationalChangeTriggeredClosed E.geneExpressionRegulatedClosed

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse