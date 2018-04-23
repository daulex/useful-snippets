var gulp        = require('gulp');
var browserSync = require('browser-sync').create();

// or...

gulp.task('default', function() {
    browserSync.init({
        proxy: "premier.dv:8888"
    });
    gulp.watch("**.{less,php,js}").on('change', browserSync.reload);
    gulp.watch("**/*.{less,php,js}").on('change', browserSync.reload);
});
