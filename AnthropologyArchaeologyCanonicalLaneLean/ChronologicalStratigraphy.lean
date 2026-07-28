import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure ChronologicalStratigraphyPackage where
  site : Type u
  stratigraphicLayer : Type v
  layerOrder : stratigraphicLayer → stratigraphicLayer → Prop
  chronologicalPosition : stratigraphicLayer → Prop
  sequenceIntegrity : Prop
  layerTopology : TopologicalSpace stratigraphicLayer

structure ChronologicalStratigraphyEvidence (S : ChronologicalStratigraphyPackage) where
  layerOrderClosed : ∀ l1 l2 : S.stratigraphicLayer, S.layerOrder l1 l2 ∨ S.layerOrder l2 l1
  chronologicalPositionClosed : ∀ l : S.stratigraphicLayer, S.chronologicalPosition l
  sequenceIntegrityClosed : S.sequenceIntegrity

def ChronologicalStratigraphyClosed (S : ChronologicalStratigraphyPackage) : Prop :=
  S.sequenceIntegrity

theorem chronological_stratigraphy_closed_from_evidence
    (S : ChronologicalStratigraphyPackage) (E : ChronologicalStratigraphyEvidence S) :
    ChronologicalStratigraphyClosed S := by
  exact E.sequenceIntegrityClosed

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse
