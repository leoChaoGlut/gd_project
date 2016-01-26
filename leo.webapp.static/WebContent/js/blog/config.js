require.config({
    paths: {
        jquery: "lib/jquery-2.2.0.min",
        materialize: "lib/materialize.min",
    },
})
require(["main"], function() {
    console.log("config.js");
    avalon.scan();
})
