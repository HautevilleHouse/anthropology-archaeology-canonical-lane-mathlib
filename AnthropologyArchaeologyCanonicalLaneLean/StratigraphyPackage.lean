import AnthropologyArchaeologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure StratigraphyPackage where
  site : ArchaeologySite
  layerSequence : Prop
  chronologicalOrder : Prop
  associations : Prop

structure StratigraphyEvidence (S : StratigraphyPackage) where
  layerSequenceClosed : S.layerSequence
  chronologicalOrderClosed : S.chronologicalOrder
  associationsClosed : S.associations

def StratigraphyClosed (S : StratigraphyPackage) : Prop :=
  S.layerSequence ∧ S.chronologicalOrder ∧ S.associations

theorem stratigraphy_closed_from_evidence (S : StratigraphyPackage) (E : StratigraphyEvidence S) :
    StratigraphyClosed S := by
  exact And.intro E.layerSequenceClosed (And.intro E.chronologicalOrderClosed E.associationsClosed)

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse