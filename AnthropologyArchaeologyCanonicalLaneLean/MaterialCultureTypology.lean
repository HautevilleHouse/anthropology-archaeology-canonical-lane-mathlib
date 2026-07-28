import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure MaterialCultureTypologyPackage where
  artifactType : Type u
  typologicalSeries : artifactType → Prop
  morphologicalSimilarity : artifactType → artifactType → Prop
  typologyConsistency : Prop

structure MaterialCultureTypologyEvidence (M : MaterialCultureTypologyPackage) where
  typologicalSeriesClosed : ∀ a : M.artifactType, M.typologicalSeries a
  morphologicalSimilarityClosed : ∀ a b : M.artifactType, M.morphologicalSimilarity a b → M.typologicalSeries a ∧ M.typologicalSeries b
  typologyConsistencyClosed : M.typologyConsistency

def MaterialCultureTypologyClosed (M : MaterialCultureTypologyPackage) : Prop :=
  M.typologyConsistency

theorem material_culture_typology_closed_from_evidence
    (M : MaterialCultureTypologyPackage) (E : MaterialCultureTypologyEvidence M) :
    MaterialCultureTypologyClosed M := by
  exact E.typologyConsistencyClosed

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse
