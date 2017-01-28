module ListOfThings exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)


type alias Model =
    { name : String
    , rank : String
    }

type Msg
    = Increment
    | Decrement

initialModel : Model
initialModel =
    { name = "Riker"
    , rank = "Commander"
    }

update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
          case model.rank of
            "Captain" ->
              { model
                  | rank = "Captain"
                  , name = "Picard"
              }
            "Commander" ->
              { model
                  | rank = "Captain"
                  , name = "Picard"
              }
            "Lieutenant Commander" ->
              { model
                  | rank = "Commander"
                  , name = "Riker"
              }
            "Lieutenant" ->
              { model
                  | rank = "Lieutenant Commander"
                  , name = "Data"
              }
            "Ensign" ->
              { model
                  | rank = "Lieutenant"
                  , name = "Worf"
              }
            _ ->
              { model
                  | rank = "Ensign"
                  , name = "Crusher"
              }
        Decrement ->
          case model.rank of
            "Captain" ->
              { model
                  | rank = "Commander"
                  , name = "Riker"
              }
            "Commander" ->
              { model
                  | rank = "Lieutenant Commander"
                  , name = "Data"
              }
            "Lieutenant Commander" ->
              { model
                  | rank = "Lieutenant"
                  , name = "Worf"
              }
            "Lieutenant" ->
              { model
                  | rank = "Ensign"
                  , name = "Crusher"
              }
            _ ->
              { model
                  | rank = "Ensign"
                  , name = "Crusher"
              }



view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Increment ] [ text "+" ]
        , span [] [ text model.rank, text " ", text model.name ]
        , button [ onClick Decrement ] [ text "-" ]
        ]


main =
    Html.beginnerProgram
        { model = initialModel
        , view = view
        , update = update
        }
