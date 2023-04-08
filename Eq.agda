module Eq where

data _≡_{A : Set}: ∀(a₁ a₂ : A) → Set where
    refl : ∀{a : A} → a ≡ a
