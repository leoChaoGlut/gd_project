require.config({
    paths: {
        jquery: "lib/jquery.min",
        echarts: "lib/echarts.min",
        velocity: "lib/velocity.min",
        velocityUI: "lib/velocity.ui.min",
    },
    shim: {
        velocity: {
            deps: ["jquery"]
        },
        // Optional, if you're using the UI pack:
        velocityUI: {
            deps: ["velocity"]
        },
        fullPage: {
            deps: ["jquery"]
        }

    }
})


require(["jquery", "velocity", "velocityUI", "init"], function($, velocity, velocityUI, init) {
    console.log("main.js");
})
