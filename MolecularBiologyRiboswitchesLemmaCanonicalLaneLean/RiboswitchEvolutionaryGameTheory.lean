import canonicalLaneMathlib.AdmissibleClass

/-!
# Riboswitch Evolutionary Game Theory Package

This module frames the riboswitch regulatory strategy as an evolutionary game between
"on" and "off" states under fluctuating ligand availability. The package records the
payoff matrix, Nash equilibrium conditions, and replicator dynamics closure.
-/

namespace HautevilleHouse
namespace MolecularBiologyRiboswitchesLemmaCanonicalLaneLean

structure RiboswitchGameTheoryPackage where
  ligandFluctuationFreq : ℝ
  payoffOnOn : ℝ
  payoffOnOff : ℝ
  payoffOffOn : ℝ
  payoffOffOff : ℝ
  nashEquilibriumExists : Prop
  replicatorFixedPoint : Prop
  evolutionaryStableStrategy : Prop

structure RiboswitchGameTheoryEvidence
    (G : RiboswitchGameTheoryPackage) where
  nashEquilibriumExistsClosed : G.nashEquilibriumExists
  replicatorFixedPointClosed : G.replicatorFixedPoint
  evolutionaryStableStrategyClosed : G.evolutionaryStableStrategy

def RiboswitchGameTheoryClosed (G : RiboswitchGameTheoryPackage) : Prop :=
  G.nashEquilibriumExists ∧ G.replicatorFixedPoint ∧ G.evolutionaryStableStrategy

theorem riboswitch_game_theory_closed_from_evidence
    (G : RiboswitchGameTheoryPackage)
    (E : RiboswitchGameTheoryEvidence G) :
    RiboswitchGameTheoryClosed G := by
  exact And.intro E.nashEquilibriumExistsClosed
    (And.intro E.replicatorFixedPointClosed E.evolutionaryStableStrategyClosed)

end MolecularBiologyRiboswitchesLemmaCanonicalLaneLean
end HautevilleHouse