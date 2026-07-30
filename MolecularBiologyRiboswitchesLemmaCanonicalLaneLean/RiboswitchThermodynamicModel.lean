import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure ThermodynamicModelPackage where
  freeEnergyLandscape : Prop
  mfoldSecondaryStructure : Prop
  boltzmannWeightedEnsemble : Prop
  temperatureDependence : Prop
  freeEnergyLandscapeClosed : freeEnergyLandscape
  mfoldSecondaryStructureClosed : mfoldSecondaryStructure
  boltzmannWeightedEnsembleClosed : boltzmannWeightedEnsemble
  temperatureDependenceClosed : temperatureDependence

def ThermodynamicModelClosed (T : ThermodynamicModelPackage) : Prop :=
  T.freeEnergyLandscape ∧ T.mfoldSecondaryStructure ∧ T.boltzmannWeightedEnsemble ∧ T.temperatureDependence

theorem thermodynamic_model_closed_from_evidence (T : ThermodynamicModelPackage) :
    ThermodynamicModelClosed T := by
  exact And.intro T.freeEnergyLandscapeClosed
    (And.intro T.mfoldSecondaryStructureClosed
      (And.intro T.boltzmannWeightedEnsembleClosed T.temperatureDependenceClosed))

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse
