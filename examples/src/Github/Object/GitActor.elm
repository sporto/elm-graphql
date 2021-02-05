-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.GitActor exposing (..)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarCodecs
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the author's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl :
    (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments)
    -> SelectionSet Github.ScalarCodecs.Uri Github.Object.GitActor
avatarUrl fillInOptionals____ =
    let
        filledInOptionals =
            fillInOptionals____ { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "ScalarCodecs.Uri" "avatarUrl" optionalArgs (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The timestamp of the Git action (authoring or committing).
-}
date : SelectionSet (Maybe Github.ScalarCodecs.GitTimestamp) Github.Object.GitActor
date =
    Object.selectionForField "(Maybe ScalarCodecs.GitTimestamp)" "date" [] (Github.ScalarCodecs.codecs |> Github.Scalar.unwrapCodecs |> .codecGitTimestamp |> .decoder |> Decode.nullable)


{-| The email in the Git commit.
-}
email : SelectionSet (Maybe String) Github.Object.GitActor
email =
    Object.selectionForField "(Maybe String)" "email" [] (Decode.string |> Decode.nullable)


{-| The name in the Git commit.
-}
name : SelectionSet (Maybe String) Github.Object.GitActor
name =
    Object.selectionForField "(Maybe String)" "name" [] (Decode.string |> Decode.nullable)


{-| The GitHub user corresponding to the email field. Null if no such user exists.
-}
user :
    SelectionSet decodesTo Github.Object.User
    -> SelectionSet (Maybe decodesTo) Github.Object.GitActor
user object____ =
    Object.selectionForCompositeField "user" [] object____ (identity >> Decode.nullable)
