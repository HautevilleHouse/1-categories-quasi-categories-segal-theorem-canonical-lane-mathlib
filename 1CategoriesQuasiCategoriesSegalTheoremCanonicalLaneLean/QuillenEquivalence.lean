import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesQuasiCategoriesSegalTheorem

structure QuillenEquivalencePackage where
  leftAdjoint : Type u
  rightAdjoint : Type v
  unitMap : Prop
  counitMap : Prop
  derivedEquivalence : Prop

structure QuillenEquivalenceEvidence (Q : QuillenEquivalencePackage) where
  unitMapClosed : Q.unitMap
  counitMapClosed : Q.counitMap
  derivedEquivalenceClosed : Q.derivedEquivalence

def QuillenEquivalenceClosed (Q : QuillenEquivalencePackage) : Prop :=
  Q.unitMap ∧ Q.counitMap ∧ Q.derivedEquivalence

theorem quillen_equivalence_closed_from_evidence
    (Q : QuillenEquivalencePackage) (E : QuillenEquivalenceEvidence Q) : QuillenEquivalenceClosed Q :=
  And.intro E.unitMapClosed (And.intro E.counitMapClosed E.derivedEquivalenceClosed)

end CategoriesQuasiCategoriesSegalTheorem
end HautevilleHouse