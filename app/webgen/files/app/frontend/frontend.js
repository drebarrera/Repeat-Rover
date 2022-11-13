const bounds = [[0, 0], [8, 0], [8, 8], [5, 5], [0, 5]];
const obstacles = [[[1, 1], [2, 1], [2, 2], [1, 2]], [[3, 3], [4, 3], [4, 4], [3, 4]]];
const grid = [1, 0.5];
var path = [1, 0.5];
const Canvas = {
    canvas: undefined,
    c: undefined,
    max_y_bound: undefined,
    scale_max: undefined,
    scale_axis: undefined,
    canvas_x: undefined,
    canvas_y: undefined,
    canvas_buffer: 20,
    x_coords: undefined,
    y_coords: undefined,

    get_axis: function(coords, axis) {
        var ret = [];
        for (var i = 0; i < coords.length; i++)
            ret.push(coords[i][axis]);
        if (this.max_y_bound == undefined)
            this.max_y_bound = arr_bounds(ret, 1);
        if (axis == 1)
            for (var i = 0; i < ret.length; i++)
                ret[i] = this.max_y_bound - ret[i];
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
            this.scale_max = this.canvas_y - (2 * this.canvas_buffer);
            this.scale_axis = 1;
        } else {
            this.scale_max = this.canvas_x - (2 * this.canvas_buffer);
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

    set_coords: function() {
        this.x_coords = this.scale_dims(this.get_axis(bounds, 0, this.scale_dim));
        this.y_coords = this.scale_dims(this.get_axis(bounds, 1, this.scale_dim));
        this.x_start = (this.canvas_x - arr_bounds(this.x_coords, 1)) / 2 + this.canvas_buffer / 2;
        this.y_start = (this.canvas_y - arr_bounds(this.y_coords, 1)) / 2 + this.canvas_buffer / 2;
    },

    plot: function(x_coords, y_coords, x_start, y_start, line_width, line_color="black", fill_color="") {
        this.c.lineWidth = line_width;
        line_offset = line_width / 2;
        this.c.strokeStyle = line_color;
        this.c.fillStyle = fill_color;
        this.c.beginPath();
        this.c.moveTo(x_start + x_coords[0], y_start + y_coords[0]);
        for (var i = 0; i < x_coords.length + 1; i++) {
            if (i == x_coords.length)
                this.c.lineTo(x_start + x_coords[1], y_start + y_coords[1]);
            else if (i == x_coords.length - 1)
                this.c.lineTo(x_start + x_coords[0], y_start + y_coords[0]);
            else
                this.c.lineTo(x_start + x_coords[i+1], y_start + y_coords[i+1]);
        }
        this.c.stroke();
        this.c.closePath();
        if (fill_color)
            this.c.fill();
    },

    plot_bounds: function() {
        const line_width = 10;
        this.plot(this.x_coords, this.y_coords, this.x_start, this.y_start, line_width, line_color="#1D97C3", fill="rgba(94, 186, 219, 0.1)");
    },
    
    plot_grid: function() {
        var x = this.x_start;
        var y = this.y_start;
        while (x > 0) {
            this.plot([x, x], [0, this.canvas_y], 0, 0, 4, line_color="#D0D8D6");
            x -= this.scale_dim(grid[0]);
        }
        x = this.x_start;
        while (x < this.canvas_x) {
            this.plot([x, x], [0, this.canvas_y], 0, 0, 4, line_color="#D0D8D6");
            x += this.scale_dim(grid[0]);
        }
        while (y > 0) {
            this.plot([0, this.canvas_x], [y, y], 0, 0, 4, line_color="#D0D8D6");
            y -= this.scale_dim(grid[0]);
        }
        y = this.y_start;
        while (y < this.canvas_y) {
            this.plot([0, this.canvas_x], [y, y], 0, 0, 4, line_color="#D0D8D6");
            y += this.scale_dim(grid[0]);
        }

        var x = this.x_start + this.scale_dim(grid[1]);
        var y = this.y_start + this.scale_dim(grid[1]);
        while (x > 0) {
            this.plot([x, x], [0, this.canvas_y], 0, 0, 2, line_color="#E3ECEA");
            x -= this.scale_dim(grid[0]);
        }
        var x = this.x_start + this.scale_dim(grid[1]);
        while (x < this.canvas_x) {
            this.plot([x, x], [0, this.canvas_y], 0, 0, 2, line_color="#E3ECEA");
            x += this.scale_dim(grid[0]);
        }
        while (y > 0) {
            this.plot([0, this.canvas_x], [y, y], 0, 0, 2, line_color="#E3ECEA");
            y -= this.scale_dim(grid[0]);
        }
        var y = this.y_start + this.scale_dim(grid[1]);
        while (y < this.canvas_y) {
            this.plot([0, this.canvas_x], [y, y], 0, 0, 2, line_color="#E3ECEA");
            y += this.scale_dim(grid[0]);
        }
    },

    plot_obstacles: function() {
        const line_width = 5;
        for (var i = 0; i < obstacles.length; i++) {
            var obstacle = obstacles[i];
            var x_coords = this.scale_dims(this.get_axis(obstacle, 0));
            var y_coords = this.scale_dims(this.get_axis(obstacle, 1));
            console.log(this.get_axis(obstacle,1));
            var x_start = this.x_start;
            var y_start = this.y_start;
            this.plot(x_coords, y_coords, x_start, y_start, line_width, line_color="#45AF82", fill="rgba(69, 175, 131, 0.5)");
        }
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
    Canvas.set_coords();
    Canvas.plot_grid();
    Canvas.plot_bounds();
    Canvas.plot_obstacles();
}

window.onresize = resize;

$(document).ready(function() {
    Canvas.canvas = document.getElementById('canvas');
    Canvas.c = Canvas.canvas.getContext("2d");
    Canvas.get_scale(canvas);
    Canvas.set_coords();
    Canvas.plot_grid();
    Canvas.plot_bounds();
    Canvas.plot_obstacles();
});