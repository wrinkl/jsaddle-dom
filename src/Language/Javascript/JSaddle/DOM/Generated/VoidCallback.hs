{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.VoidCallback
       (newVoidCallback, newVoidCallbackSync, newVoidCallbackAsync,
        VoidCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, realToFrac, fmap, Show, Read, Eq, Ord, Maybe(..))
import Data.Typeable (Typeable)
import Language.Javascript.JSaddle (JSM(..), JSVal(..), JSString, strictEqual, toJSVal, valToStr, valToNumber, valToBool, js, jss, jsf, jsg, function, new, array)
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Language.Javascript.JSaddle.DOM.Types
import Control.Applicative ((<$>))
import Control.Monad (void)
import Control.Lens.Operators ((^.))
import Language.Javascript.JSaddle.DOM.EventTargetClosures (EventName, unsafeEventName)
import Language.Javascript.JSaddle.DOM.Enums

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallback :: (MonadDOM m) => JSM () -> m VoidCallback
newVoidCallback callback
  = liftDOM
      (VoidCallback . Callback <$> function "" (\ _ _ [] -> callback))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallbackSync :: (MonadDOM m) => JSM () -> m VoidCallback
newVoidCallbackSync callback
  = liftDOM
      (VoidCallback . Callback <$> function "" (\ _ _ [] -> callback))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VoidCallback Mozilla VoidCallback documentation> 
newVoidCallbackAsync :: (MonadDOM m) => JSM () -> m VoidCallback
newVoidCallbackAsync callback
  = liftDOM
      (VoidCallback . Callback <$> function "" (\ _ _ [] -> callback))