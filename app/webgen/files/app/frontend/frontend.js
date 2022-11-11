const bounds = [[0, 0], [8, 0], [8, 8], [5, 5], [0, 5]];
const obstacles = [[[1, 1], [2, 1], [2, 2], [1, 2]], [[3, 3], [4, 3], [4, 4], [3, 4]]];
const grid = [];
var path = [];
const Canvas = {
    canvas: undefined,
    c: undefined,
    scale_max: undefined,
    scale_axis: undefined,
    canvas_x: undefined,
    canvas_y: undefined,

    get_axis: function(coords, axis) {
        var ret = [];
        for (var i = 0; i < coords.length; i++)
            ret.push(coords[i][axis]);
        max_val = arr_bounds(ret, 1);
        for (var i = 0; i < ret.length; i++)
            ret[i] = max_val - ret[i];
        return ret;
    },

    get_scale: function() {
        if (this.canvas == null)
            return;
        this.canvas_x = this.canvas.clientWidth;
        this.canvas_y = this.canvas.clientHeight;
        this.canvas.width = this.canvas_x;
        this.canvas.height = this.canvas_y;
        if (this.canvas_x > this.canvas_y) {
            this.scale_max = this.canvas_y;
            this.scale_axis = 1;
        } else {
            this.scale_max = this.canvas_x;
            this.scale_axis = 0;
        }
    },

    scale_dim: function(dim) {
        if (this.scale_axis)
            dim_max = arr_bounds(this.get_axis(bounds, 1), 1);
        else
            dim_max = arr_bounds(this.get_axis(bounds, 0), 1);
        return dim * this.scale_max / dim_max;
    },

    scale_dims: function(coords) {
        for (var i = 0; i < coords.length; i++)
            coords[i] = this.scale_dim(coords[i]);
        return coords;
    },

    plot: function(x_coords, y_coords, x_start, y_start, line_width) {
        this.c.lineWidth = line_width;
        for (var i = 0; i < x_coords.length; i++) {
            this.c.moveTo(x_start + x_coords[i], y_start + y_coords[i]);
            if (i != x_coords.length - 1)
                this.c.lineTo(x_start + x_coords[i+1], y_start + y_coords[i+1]);
            else
                this.c.lineTo(x_start + x_coords[0], y_start + y_coords[0]);
            this.c.stroke();
        }
    },
    
    plot_bounds: function() {
        var x_coords = this.scale_dims(this.get_axis(bounds, 0, this.scale_dim));
        var y_coords = this.scale_dims(this.get_axis(bounds, 1, this.scale_dim));
        var x_start = (this.canvas_x - arr_bounds(x_coords, 1)) / 2;
        var y_start = (this.canvas_y - arr_bounds(y_coords, 1)) / 2;
        const line_width = 10;
        this.plot(x_coords, y_coords, x_start, y_start, line_width);
    }
}

arr_bounds = function(arr, minmax=undefined) {
    if (minmax == 0)
        return Math.min.apply(Math, arr);
    else if (minmax == 1)
        return Math.max.apply(Math, arr);
    return [Math.min.apply(Math, arr), Math.max.apply(Math, arr)];
};

resize = function() {
    Canvas.get_scale();
    Canvas.plot_bounds();
}

window.onresize = resize;

$(document).ready(function() {
    Canvas.canvas = document.getElementById('canvas');
    Canvas.c = Canvas.canvas.getContext("2d");
    Canvas.get_scale(canvas);
    Canvas.plot_bounds();
});