import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace SegalTheoremCanonicalLaneLean

structure SegalAdmittedObject where
  objectType : Type
  morphismType : objectType → objectType → Type
  identity : (x : objectType) → morphismType x x
  composition : {x y z : objectType} → morphismType x y → morphismType y z → morphismType x z
  associativity : ∀ {x y z w : objectType} (f : morphismType x y) (g : morphismType y z) (h : morphismType z w),
    composition (composition f g) h = composition f (composition g h)
  leftUnit : ∀ {x y : objectType} (f : morphismType x y), composition (identity x) f = f
  rightUnit : ∀ {x y : objectType} (f : morphismType x y), composition f (identity y) = f
  isQuasiCategory : Prop
  nerveSatisfiesSegal : Prop
  conclusion : isQuasiCategory ∧ nerveSatisfiesSegal

structure AdmissibleClass where
  object : SegalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end SegalTheoremCanonicalLaneLean
end HautevilleHouse