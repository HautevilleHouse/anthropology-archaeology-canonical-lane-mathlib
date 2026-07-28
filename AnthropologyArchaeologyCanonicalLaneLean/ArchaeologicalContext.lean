import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure ArchaeologicalContextPackage where
  contextType : Type u
  featureAssociation : contextType → contextType → Prop
  stratigraphicRelation : contextType → contextType → Prop
  closureProperty : Prop

structure ArchaeologicalContextEvidence (C : ArchaeologicalContextPackage) where
  featureAssociationClosed : ∀ x y : C.contextType, C.featureAssociation x y → C.stratigraphicRelation x y
  closurePropertyClosed : C.closureProperty

def ArchaeologicalContextClosed (C : ArchaeologicalContextPackage) : Prop :=
  C.closureProperty

theorem archaeological_context_closed_from_evidence
    (C : ArchaeologicalContextPackage) (E : ArchaeologicalContextEvidence C) :
    ArchaeologicalContextClosed C := by
  exact E.closurePropertyClosed

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse
