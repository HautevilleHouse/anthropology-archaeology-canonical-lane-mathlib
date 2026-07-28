import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure ArchaeologicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ArchaeologicalAdmittedObject where
  space : ArchaeologicalSpace
  siteProvenance : Prop
  contextStratified : Prop
  artifactAssemblage : Type
  artifactTopology : TopologicalSpace artifactAssemblage
  typologicallyConsistent : Prop
  conclusion : typologicallyConsistent

structure ArchaeologicalEndgameState where
  object : ArchaeologicalAdmittedObject

def ArchaeologicalWitnessClosed (O : ArchaeologicalAdmittedObject) : Prop :=
  O.typologicallyConsistent

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse