module Github.Object.UnlabeledEvent exposing (..)

import Github.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.UnlabeledEvent
selection constructor =
    Object.object constructor


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet actor Github.Object.Actor -> FieldDecoder (Maybe actor) Github.Object.UnlabeledEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object (identity >> Decode.maybe)


{-| Identifies the date and time when the object was created.
-}
createdAt : FieldDecoder String Github.Object.UnlabeledEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Github.Object.UnlabeledEvent
id =
    Object.fieldDecoder "id" [] Decode.string


{-| Identifies the label associated with the 'unlabeled' event.
-}
label : SelectionSet label Github.Object.Label -> FieldDecoder label Github.Object.UnlabeledEvent
label object =
    Object.selectionFieldDecoder "label" [] object identity


{-| Identifies the `Labelable` associated with the event.
-}
labelable : SelectionSet labelable Github.Object.Labelable -> FieldDecoder labelable Github.Object.UnlabeledEvent
labelable object =
    Object.selectionFieldDecoder "labelable" [] object identity