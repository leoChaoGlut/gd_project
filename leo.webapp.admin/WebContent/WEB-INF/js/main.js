require.config({
    paths: {
        jquery: "lib/jquery.min",
        echarts: "lib/echarts.min",
        velocity: "lib/velocity.min",
        velocityUI: "lib/velocity.ui.min",
        bootstrap: "lib/bootstrap.min",
    },
    shim: {
        velocity: {
            deps: ["jquery"]
        },
        bootstrap: {
            deps: ["jquery"]
        },
        // Optional, if you're using the UI pack:
        velocityUI: {
            deps: ["velocity"]
        },
    }
})


require(["jquery", "bootstrap", "velocity", "velocityUI", "init"], function($, velocity, velocityUI, init) {
    console.log("main.js");
})
