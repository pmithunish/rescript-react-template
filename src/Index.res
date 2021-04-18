// Entry point

@val external document: {..} = "document"

// We're using raw DOM manipulations here, to avoid making you read the
// rescript documentations
let style = document["createElement"]("style")
document["head"]["appendChild"](style)
style["innerHTML"] = ExampleStyles.style

let makeContainer = text => {
  let container = document["createElement"]("div")
  container["className"] = "container"

  let title = document["createElement"]("div")
  title["className"] = "containerTitle"
  title["innerText"] = text

  let content = document["createElement"]("div")
  content["className"] = "containerContent"

  let () = container["appendChild"](title)
  let () = container["appendChild"](content)
  let () = document["body"]["appendChild"](container)

  content
}

// All 4 examples.
ReactDOMRe.render(
  <BlinkingGreeting> {React.string("Hello, World!")} </BlinkingGreeting>,
  makeContainer("Blinking Greeting"),
)

ReactDOMRe.render(<ReducerFromReactJSDocs />, makeContainer("Reducer From ReactJS Docs"))

ReactDOMRe.render(<FetchedDogPictures />, makeContainer("Fetched Dog Pictures"))

ReactDOMRe.render(
  <RescriptUsingJSUsingRescript />,
  makeContainer("Rescript Using JS Using Rescript"),
)
