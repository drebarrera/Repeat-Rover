var scale_max = -1;
var scale_axis = -1;

function get_x(coords, func=null) {
    var ret = [];
    for (var i = 0; i < coords.length; i++) {
        if (func != null)
            val = func(coords[i][0]);
        else
            val = coords[i][0]
        ret.push(val);
    }
    return ret;
}

function get_y(coords, func=null) {
    var ret = [];
    for (var i = 0; i < coords.length; i++) {
        if (func != null){
            val = func(coords[i][1]);
        }else
            val = coords[i][1]
        ret.push(val);
    }
    return ret;
}

function get_scale() {
    var canvas_x = document.getElementById("canvas").clientWidth;
    var canvas_y = document.getElementById("canvas").clientHeight;
    if (canvas_x > canvas_y) {
        scale_max = canvas_y;
        scale_axis = 1;
    } else {
        scale_max = canvas_x;
        scale_axis = 0;
    }
}

function scale_dim(dim) {
    if (scale_axis)
        dim_max = Math.max.apply(Math, get_y(bounds));
    else
        dim_max = Math.max.apply(Math, get_x(bounds));
    return dim * scale_max / dim_max;
}

window.onresize = get_scale;

$(document).ready(function() {
    get_scale();
    var c = document.getElementById('canvas').getContext("2d");
    var x_start = 25;
    var y_start = 25;
    var x_coords = get_x(bounds, scale_dim);
    var y_coords = get_y(bounds, scale_dim);
    for (var i = 0; i < x_coords.length; i++) {
        c.moveTo(x_start + x_coords[i], y_start + y_coords[i]);
        if (i != x_coords.length - 1)
            c.lineTo(x_start + x_coords[i+1], y_start + y_coords[i+1]);
        else
            c.lineTo(x_start + x_coords[0], y_start + y_coords[0]);
        c.stroke();
    }
});