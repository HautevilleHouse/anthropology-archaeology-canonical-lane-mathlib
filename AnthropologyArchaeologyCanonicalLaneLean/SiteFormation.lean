import HautevilleHouse.AnthropologyArchaeologyCanonicalLaneLean.AdmissibleClass

/-!
# Site Formation Processes Package
-/

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure SiteFormationPackage where
  formationProcesses : Type u
  taphonomicFilter : Prop
  disturbanceModel : Prop
  culturalDepositionIntegrity : Prop

default instance : Inhabited (SiteFormationPackage) where
  default := { formationProcesses := PUnit, taphonomicFilter := True, disturbanceModel := True, culturalDepositionIntegrity := True }

structure SiteFormationEvidence (F : SiteFormationPackage) where
  taphonomicFilterClosed : F.taphonomicFilter
  disturbanceModelClosed : F.disturbanceModel
  culturalDepositionIntegrityClosed : F.culturalDepositionIntegrity

def SiteFormationClosed (F : SiteFormationPackage) : Prop :=
  F.taphonomicFilter ∧ F.disturbanceModel ∧ F.culturalDepositionIntegrity

theorem site_formation_closed_from_evidence (F : SiteFormationPackage) (E : SiteFormationEvidence F) :
    SiteFormationClosed F := by
  exact And.intro E.taphonomicFilterClosed (And.intro E.disturbanceModelClosed E.culturalDepositionIntegrityClosed)

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse