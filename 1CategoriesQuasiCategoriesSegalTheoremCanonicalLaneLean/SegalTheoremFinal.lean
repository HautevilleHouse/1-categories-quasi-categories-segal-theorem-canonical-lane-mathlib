import canonicalLaneMathlib.AdmissibleClass
import .SegalAdmissibleClass
import .SimplicialSetsPackage
import .SimplicialCategoriesPackage
import .JoyalModelStructure
import .BergnerModelStructure
import .QuillenEquivalence

namespace HautevilleHouse
namespace CategoriesQuasiCategoriesSegalTheorem

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.quillenEquivalence

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.quillenEquivalence

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedSegalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_segal_endgame (A : AdmissibleClass) : ConstrainedSegalClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesQuasiCategoriesSegalTheorem
end HautevilleHouse