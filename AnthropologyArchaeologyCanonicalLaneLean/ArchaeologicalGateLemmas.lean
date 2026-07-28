import HautevilleHouse.AnthropologyArchaeologyCanonicalLaneLean.ArchaeologicalBridgeLemmas

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

def gateClosed (A : ArchaeologicalAdmittedObject) : Prop :=
  A.siteProvenance ∨ A.contextStratified

theorem gate_from_admissible_class (A : ArchaeologicalAdmittedObject) :
    gateClosed A := by
  exact Or.inl A.siteProvenance

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse