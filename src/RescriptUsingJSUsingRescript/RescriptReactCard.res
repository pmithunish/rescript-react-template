// In this Interop example folder, we have:
// - A RescriptReact component, RescriptReactCard.re (this file)
// - Used by a ReactJS component, ReactJSCard.js
// - ReactJSCard.js can be used by RescriptReact, through bindings in RescriptUsingJSUsingRescript.re
// - RescriptUsingJSUsingRescript.re is used by Index.re

@react.component
let make = (~style) => <div style> {React.string("This is a RescriptReact card")} </div>
