-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Swapi.Query exposing (..)

import CustomScalarCodecs
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import Swapi.Enum.Episode
import Swapi.InputObject
import Swapi.Interface
import Swapi.Object
import Swapi.Scalar
import Swapi.Union


type alias DroidRequiredArguments =
    { id : CustomScalarCodecs.Id }


{-|

  - id - ID of the droid.

-}
droid :
    DroidRequiredArguments
    -> SelectionSet decodesTo Swapi.Object.Droid
    -> SelectionSet (Maybe decodesTo) RootQuery
droid requiredArgs object____ =
    Object.selectionForCompositeField "droid" [ Argument.required "id" requiredArgs.id (CustomScalarCodecs.codecs |> Swapi.Scalar.unwrapEncoder .codecId) ] object____ (identity >> Decode.nullable)


{-| Getting this field will result in an error.
-}
forcedError : SelectionSet (Maybe String) RootQuery
forcedError =
    Object.selectionForField "(Maybe String)" "forcedError" [] (Decode.string |> Decode.nullable)


type alias GreetRequiredArguments =
    { input : Swapi.InputObject.Greeting }


greet :
    GreetRequiredArguments
    -> SelectionSet String RootQuery
greet requiredArgs =
    Object.selectionForField "String" "greet" [ Argument.required "input" requiredArgs.input Swapi.InputObject.encodeGreeting ] Decode.string


hello : SelectionSet String RootQuery
hello =
    Object.selectionForField "String" "hello" [] Decode.string


type alias HeroOptionalArguments =
    { episode : OptionalArgument Swapi.Enum.Episode.Episode }


{-|

  - episode - If omitted, returns the hero of the whole saga. If provided, returns the hero of that particular episode.

-}
hero :
    (HeroOptionalArguments -> HeroOptionalArguments)
    -> SelectionSet decodesTo Swapi.Interface.Character
    -> SelectionSet decodesTo RootQuery
hero fillInOptionals____ object____ =
    let
        filledInOptionals =
            fillInOptionals____ { episode = Absent }

        optionalArgs =
            [ Argument.optional "episode" filledInOptionals.episode (Encode.enum Swapi.Enum.Episode.toString) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "hero" optionalArgs object____ identity


type alias HeroUnionOptionalArguments =
    { episode : OptionalArgument Swapi.Enum.Episode.Episode }


{-|

  - episode - If omitted, returns the hero of the whole saga. If provided, returns the hero of that particular episode.

-}
heroUnion :
    (HeroUnionOptionalArguments -> HeroUnionOptionalArguments)
    -> SelectionSet decodesTo Swapi.Union.CharacterUnion
    -> SelectionSet decodesTo RootQuery
heroUnion fillInOptionals____ object____ =
    let
        filledInOptionals =
            fillInOptionals____ { episode = Absent }

        optionalArgs =
            [ Argument.optional "episode" filledInOptionals.episode (Encode.enum Swapi.Enum.Episode.toString) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "heroUnion" optionalArgs object____ identity


type alias HumanRequiredArguments =
    { id : CustomScalarCodecs.Id }


{-|

  - id - ID of the human.

-}
human :
    HumanRequiredArguments
    -> SelectionSet decodesTo Swapi.Object.Human
    -> SelectionSet (Maybe decodesTo) RootQuery
human requiredArgs object____ =
    Object.selectionForCompositeField "human" [ Argument.required "id" requiredArgs.id (CustomScalarCodecs.codecs |> Swapi.Scalar.unwrapEncoder .codecId) ] object____ (identity >> Decode.nullable)


now : SelectionSet CustomScalarCodecs.PosixTime RootQuery
now =
    Object.selectionForField "CustomScalarCodecs.PosixTime" "now" [] (CustomScalarCodecs.codecs |> Swapi.Scalar.unwrapCodecs |> .codecPosixTime |> .decoder)


today : SelectionSet String RootQuery
today =
    Object.selectionForField "String" "today" [] Decode.string
