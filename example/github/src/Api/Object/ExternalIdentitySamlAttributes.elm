module Api.Object.ExternalIdentitySamlAttributes exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.ExternalIdentitySamlAttributes
build constructor =
    Object.object constructor


nameId : FieldDecoder String Api.Object.ExternalIdentitySamlAttributes
nameId =
    Field.fieldDecoder "nameId" [] Decode.string