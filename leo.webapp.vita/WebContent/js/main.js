require.config({
    paths: {
        jquery: "lib/jquery.min",
        echarts: "lib/echarts.min",
        velocity: "lib/velocity.min",
        velocityUI: "lib/velocity.ui.min",
        bootstrap: "lib/bootstrap.min",
        materialize: "lib/materialize.min",
    },
    shim: {
        velocity: {
            deps: ["jquery"]
        },
        bootstrap: {
            deps: ["jquery"]
        },
        materialize: {
            deps: ["jquery"]
        },
        // Optional, if you're using the UI pack:
        velocityUI: {
            deps: ["velocity"]
        },
    }
})


require(["velocity", "init", "vm"], function() {
    console.log("main.js");


})
