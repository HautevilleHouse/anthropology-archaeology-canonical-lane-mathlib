import HautevilleHouse.AnthropologyArchaeologyCanonicalLaneLean.AdmissibleClass

/-!
# Stratigraphy Package
-/

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure StratigraphyPackage where
  layerSystem : Type u
  superpositionOrder : PartialOrder layerSystem
  contextIntegrity : Prop
  stratigraphicContinuity : Prop

default instance : Inhabited (StratigraphyPackage) where
  default := { layerSystem := PUnit, superpositionOrder := by infer_instance, contextIntegrity := True, stratigraphicContinuity := True }

structure StratigraphyEvidence (S : StratigraphyPackage) where
  contextIntegrityClosed : S.contextIntegrity
  stratigraphicContinuityClosed : S.stratigraphicContinuity

def StratigraphyClosed (S : StratigraphyPackage) : Prop :=
  S.contextIntegrity ∧ S.stratigraphicContinuity

theorem stratigraphy_closed_from_evidence (S : StratigraphyPackage) (E : StratigraphyEvidence S) :
    StratigraphyClosed S := by
  exact And.intro E.contextIntegrityClosed E.stratigraphicContinuityClosed

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse