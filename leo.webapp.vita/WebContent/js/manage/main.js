require.config({
    paths: {
        jquery: "../lib/jquery.min",
        echarts: "../lib/echarts.min",
        velocity: "../lib/velocity.min",
        bootstrap: "../lib/bootstrap.min",
        materialize: "../lib/materialize.min",
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
    }
})


require(["init"], function() {
    console.log("main.js");
    // var userInfo = localStorage.userInfo;
})
