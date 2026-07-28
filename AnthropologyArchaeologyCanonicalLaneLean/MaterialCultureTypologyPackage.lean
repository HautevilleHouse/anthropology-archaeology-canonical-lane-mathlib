import HautevilleHouse.AnthropologyArchaeologyCanonicalLaneLean.ArchaeologicalAdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure MaterialCultureTypologyPackage where
  artifactTypes : Type u
  typologicalSeriation : Type v
  chronologicalOrder : Prop
  typologyConsistent : Prop

structure MaterialCultureTypologyEvidence (M : MaterialCultureTypologyPackage) where
  chronologicalOrderClosed : M.chronologicalOrder
  typologyConsistentClosed : M.typologyConsistent

def MaterialCultureTypologyClosed (M : MaterialCultureTypologyPackage) : Prop :=
  M.chronologicalOrder ∧ M.typologyConsistent

theorem material_culture_typology_closed_from_evidence (M : MaterialCultureTypologyPackage) (E : MaterialCultureTypologyEvidence M) :
    MaterialCultureTypologyClosed M := by
  exact And.intro E.chronologicalOrderClosed E.typologyConsistentClosed

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse