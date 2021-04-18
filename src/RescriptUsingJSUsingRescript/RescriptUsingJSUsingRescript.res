// In this Interop example folder, we have:
// - A RescriptReact component, RescriptReactCard.re
// - Used by a ReactJS component, ReactJSCard.js
// - ReactJSCard.js can be used by RescriptReact, through bindings in RescriptUsingJSUsingRescript.re (this file)
// - RescriptUsingJSUsingRescript.re is used by Index.re

// All you need to do to use a ReactJS component in RescriptReact, is to write the lines below!
@react.component @module
external make: unit => React.element = "./ReactJSCard"
