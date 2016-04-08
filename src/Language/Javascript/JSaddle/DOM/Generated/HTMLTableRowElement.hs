{-# LANGUAGE PatternSynonyms #-}
module Language.Javascript.JSaddle.DOM.Generated.HTMLTableRowElement
       (insertCell, deleteCell, getRowIndex, getSectionRowIndex, getCells,
        setAlign, getAlign, setBgColor, getBgColor, setCh, getCh, setChOff,
        getChOff, setVAlign, getVAlign, HTMLTableRowElement,
        castToHTMLTableRowElement, gTypeHTMLTableRowElement)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.insertCell Mozilla HTMLTableRowElement.insertCell documentation> 
insertCell ::
           (MonadDOM m) => HTMLTableRowElement -> Int -> m (Maybe HTMLElement)
insertCell self index
  = liftDOM
      ((self ^. jsf "insertCell" [toJSVal index]) >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.deleteCell Mozilla HTMLTableRowElement.deleteCell documentation> 
deleteCell :: (MonadDOM m) => HTMLTableRowElement -> Int -> m ()
deleteCell self index
  = liftDOM (void (self ^. jsf "deleteCell" [toJSVal index]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.rowIndex Mozilla HTMLTableRowElement.rowIndex documentation> 
getRowIndex :: (MonadDOM m) => HTMLTableRowElement -> m Int
getRowIndex self
  = liftDOM (round <$> ((self ^. js "rowIndex") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.sectionRowIndex Mozilla HTMLTableRowElement.sectionRowIndex documentation> 
getSectionRowIndex :: (MonadDOM m) => HTMLTableRowElement -> m Int
getSectionRowIndex self
  = liftDOM
      (round <$> ((self ^. js "sectionRowIndex") >>= valToNumber))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.cells Mozilla HTMLTableRowElement.cells documentation> 
getCells ::
         (MonadDOM m) => HTMLTableRowElement -> m (Maybe HTMLCollection)
getCells self = liftDOM ((self ^. js "cells") >>= fromJSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.align Mozilla HTMLTableRowElement.align documentation> 
setAlign ::
         (MonadDOM m, ToJSString val) => HTMLTableRowElement -> val -> m ()
setAlign self val = liftDOM (self ^. jss "align" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.align Mozilla HTMLTableRowElement.align documentation> 
getAlign ::
         (MonadDOM m, FromJSString result) =>
           HTMLTableRowElement -> m result
getAlign self
  = liftDOM ((self ^. js "align") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.bgColor Mozilla HTMLTableRowElement.bgColor documentation> 
setBgColor ::
           (MonadDOM m, ToJSString val) => HTMLTableRowElement -> val -> m ()
setBgColor self val = liftDOM (self ^. jss "bgColor" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.bgColor Mozilla HTMLTableRowElement.bgColor documentation> 
getBgColor ::
           (MonadDOM m, FromJSString result) =>
             HTMLTableRowElement -> m result
getBgColor self
  = liftDOM ((self ^. js "bgColor") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.ch Mozilla HTMLTableRowElement.ch documentation> 
setCh ::
      (MonadDOM m, ToJSString val) => HTMLTableRowElement -> val -> m ()
setCh self val = liftDOM (self ^. jss "ch" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.ch Mozilla HTMLTableRowElement.ch documentation> 
getCh ::
      (MonadDOM m, FromJSString result) =>
        HTMLTableRowElement -> m result
getCh self = liftDOM ((self ^. js "ch") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.chOff Mozilla HTMLTableRowElement.chOff documentation> 
setChOff ::
         (MonadDOM m, ToJSString val) => HTMLTableRowElement -> val -> m ()
setChOff self val = liftDOM (self ^. jss "chOff" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.chOff Mozilla HTMLTableRowElement.chOff documentation> 
getChOff ::
         (MonadDOM m, FromJSString result) =>
           HTMLTableRowElement -> m result
getChOff self
  = liftDOM ((self ^. js "chOff") >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.vAlign Mozilla HTMLTableRowElement.vAlign documentation> 
setVAlign ::
          (MonadDOM m, ToJSString val) => HTMLTableRowElement -> val -> m ()
setVAlign self val = liftDOM (self ^. jss "vAlign" (toJSVal val))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.vAlign Mozilla HTMLTableRowElement.vAlign documentation> 
getVAlign ::
          (MonadDOM m, FromJSString result) =>
            HTMLTableRowElement -> m result
getVAlign self
  = liftDOM ((self ^. js "vAlign") >>= fromJSValUnchecked)