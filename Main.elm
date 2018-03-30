import Html exposing (..)
import Html.Events exposing (onClick)

main : Program Never Model Msg
main = beginnerProgram
    {
    model = model,
    view = view,
    update = update
    }

type alias Model = 
    {
    counter : Int
    }

type Msg = Increment | Nothing

model : Model
model = {counter = 0}

view : Model -> Html Msg
view model =
    div []
        [
        div [] [text (toString model.counter)],
        p [] [text "this is a test"],
        testP,
        button [onClick Increment] [text "+"]
        ]

testP : Html Msg
testP = 
    p [] [text "this is in a function"]

update : Msg -> Model -> Model
update msg model1 = case msg of
    Increment -> {model1 | counter = model1.counter + 1}
    Nothing -> model1