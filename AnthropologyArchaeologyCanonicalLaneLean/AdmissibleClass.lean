import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyArchaeologyCanonicalLaneLean

structure ArchaeologicalSite where
  siteName : String
  stratigraphyKnown : Prop
  datingConsistent : Prop

structure AdmittedObject where
  site : ArchaeologicalSite
  conclusion : site.datingConsistent

def AdmittedObjectClosed (O : AdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AdmittedObjectClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthropologyArchaeologyCanonicalLaneLean
end HautevilleHouse