open import Relation.Nullary
open import Data.Unit
open import Data.Product

record self-ref (T : Set) (P : T → Set) : Set where
  field
    all-predicate-has-exception : ∃ λ v → ¬ P v

contradict : ¬ self-ref ⊤ (λ _ → ⊤)
contradict z = proj₂ (self-ref.all-predicate-has-exception z) tt
