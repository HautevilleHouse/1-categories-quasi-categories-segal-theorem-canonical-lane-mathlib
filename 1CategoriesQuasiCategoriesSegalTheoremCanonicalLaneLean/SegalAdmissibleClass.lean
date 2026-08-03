import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesQuasiCategoriesSegalTheorem

structure SegalAdmittedObject where
  sSetModel : Type u
  sCatModel : Type v
  joyalModelStructure : Prop
  bergnerModelStructure : Prop
  quillenEquivalence : Prop

structure AdmissibleClass where
  object : SegalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.quillenEquivalence ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoriesQuasiCategoriesSegalTheorem
end HautevilleHouse