module Sweetheart(Universe : Set)(me my-sweetheart : Universe)(loves : Universe → Universe → Set) where

open import Eq using (_≡_)

postulate my-sweetheart-is-a-universal-receiver-of-love : ∀(x : Universe) → loves x my-sweetheart
postulate my-sweetheart-is-a-unical-provider-of-love    : ∀(y : Universe) → loves my-sweetheart y → y ≡ me

prove-that-my-sweetheart-is-me : my-sweetheart ≡ me
prove-that-my-sweetheart-is-me = (my-sweetheart-is-a-unical-provider-of-love    my-sweetheart)
                                 (my-sweetheart-is-a-universal-receiver-of-love my-sweetheart)
