// In this Interop example folder, we have:
// - A RescriptReact component, RescriptReactCard.re
// - Used by a ReactJS component, ReactJSCard.js (this file)
// - ReactJSCard.js can be used by RescriptReact, through bindings in RescriptUsingJSUsingRescript.re
// - RescriptUsingJSUsingRescript.re is used by Index.re

var ReactDOM = require("react-dom");
var React = require("react");

var RescriptReactCard = require("./RescriptReactCard.bs").make;

var ReactJSComponent = function () {
  let backgroundColor = "rgba(0, 0, 0, 0.05)";
  let padding = "12px";

  // We're not using JSX here, to avoid folks needing to install the related
  // React toolchains just for this example.
  // <div style={...}>
  //   <div style={...}>This is a ReactJS card</div>
  //   <RescriptReactCard style={...} />
  // </div>
  return React.createElement(
    "div",
    { style: { backgroundColor, padding, borderRadius: "8px" } },
    React.createElement(
      "div",
      { style: { marginBottom: "8px" } },
      "This is a ReactJS card"
    ),
    React.createElement(RescriptReactCard, {
      style: { backgroundColor, padding, borderRadius: "4px" },
    })
  );
};
ReactJSComponent.displayName = "MyBanner";

module.exports = ReactJSComponent;
