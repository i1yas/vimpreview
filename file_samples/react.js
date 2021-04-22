import React from "react";
import ReactDOM from "react-dom";

const App = () => {
    return (
        <div>
            <h1>Hello world!</h1>
            <p>This is simple react app</p>
        </div>
    )
};

ReactDOM.render(<App/>, document.querySelector("#root"));

