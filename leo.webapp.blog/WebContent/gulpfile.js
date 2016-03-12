var gulp = require("gulp");
var less = require("gulp-less");
var minify = require("gulp-minify-css");
var uglify = require("gulp-uglify");

var lessPath = "less/*.less";
var cssPath = "css/";

var srcJS = "jsSrc/*.js";
var distJS = "js/";

gulp.task('default', ["watcher","less2css","uglify"], function() {

});

gulp.task('less2css', function() {
    gulp.src(lessPath).pipe(less()).pipe(minify()).pipe(gulp.dest(cssPath));
});

gulp.task('uglify', function() {
    gulp.src(srcJS).pipe(uglify()).pipe(gulp.dest(distJS));
});

gulp.task('watcher', function() {
    gulp.watch(lessPath, ['less2css']);
    gulp.watch(srcJS, ['uglify']);
});
