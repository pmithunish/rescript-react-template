'use strict';

var React = require("react");

function RescriptReactCard(Props) {
  var style = Props.style;
  return React.createElement("div", {
              style: style
            }, "This is a RescriptReact card");
}

var make = RescriptReactCard;

exports.make = make;
/* react Not a pure module */
