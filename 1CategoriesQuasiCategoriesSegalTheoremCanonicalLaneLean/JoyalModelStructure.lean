import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesQuasiCategoriesSegalTheorem

structure JoyalModelStructurePackage where
  cofibrations : Prop
  trivialCofibrations : Prop
  fibrations : Prop
  weakEquivalences : Prop
  modelStructureAxioms : Prop

structure JoyalModelStructureEvidence (J : JoyalModelStructurePackage) where
  cofibrationsClosed : J.cofibrations
  trivialCofibrationsClosed : J.trivialCofibrations
  fibrationsClosed : J.fibrations
  weakEquivalencesClosed : J.weakEquivalences
  modelStructureAxiomsClosed : J.modelStructureAxioms

def JoyalModelStructureClosed (J : JoyalModelStructurePackage) : Prop :=
  J.cofibrations ∧ J.trivialCofibrations ∧ J.fibrations ∧ J.weakEquivalences ∧ J.modelStructureAxioms

theorem joyal_model_structure_closed_from_evidence
    (J : JoyalModelStructurePackage) (E : JoyalModelStructureEvidence J) : JoyalModelStructureClosed J :=
  And.intro E.cofibrationsClosed
    (And.intro E.trivialCofibrationsClosed
      (And.intro E.fibrationsClosed
        (And.intro E.weakEquivalencesClosed E.modelStructureAxiomsClosed)))

end CategoriesQuasiCategoriesSegalTheorem
end HautevilleHouse