import canonicalLaneMathlib.AdmissibleClass

/-!
# Riboswitch Structural States Package

This module defines the three primary structural states of a riboswitch:
unliganded (apo), ligand-bound, and the transcription-regulating conformation.
-/

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure UnligandedState where
  aptamerDomain : Prop
  expressionPlatform : Prop
  transcriptionActive : Prop
  transcriptionActiveTerm : transcriptionActive

structure LigandBoundState where
  ligandConcentration : ℝ
  bindingAffinity : ℝ
  conformationChanged : Prop
  conformationChangedTerm : conformationChanged

structure RegulatingConformationState where
  transcriptionTerminated : Prop
  downstreamStructure : Prop
  transcriptionTerminatedTerm : transcriptionTerminated

structure RiboswitchStructuralStates where
  unliganded : UnligandedState
  ligandBound : LigandBoundState
  regulatingConformation : RegulatingConformationState

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse