import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure KineticModelPackage where
  transcriptionRate : Prop
  foldingRate : Prop
  ligandBindingRate : Prop
  degradationRate : Prop
  transcriptionRateClosed : transcriptionRate
  foldingRateClosed : foldingRate
  ligandBindingRateClosed : ligandBindingRate
  degradationRateClosed : degradationRate

def KineticModelClosed (K : KineticModelPackage) : Prop :=
  K.transcriptionRate ∧ K.foldingRate ∧ K.ligandBindingRate ∧ K.degradationRate

theorem kinetic_model_closed_from_evidence (K : KineticModelPackage) :
    KineticModelClosed K := by
  exact And.intro K.transcriptionRateClosed
    (And.intro K.foldingRateClosed
      (And.intro K.ligandBindingRateClosed K.degradationRateClosed))

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse
