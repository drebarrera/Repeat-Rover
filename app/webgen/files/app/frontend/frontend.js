const bounds = [[0.0, 0.0], [8.0, 0.0], [8.0, 8.0], [5.0, 5.0], [0.0, 5.0]];
const obstacles = [[[1.0, 1.0], [2.0, 1.0], [2.0, 2.0], [1.0, 2.0]], [[3.0, 3.0], [4.0, 3.0], [4.0, 4.0], [3.0, 4.0]]];
const grid = [1, 0.25];
var path = [[5.0, 0.5], [5.0, 4.5], [0.5, 4.5], [0.5, 0.5]];
var speed = {0: 1};
var NEW_PATH = 0; // BUTTON1 BOUND NEW_PATH GLOBAL
var ROVER_ACTIVE = 0; // BUTTON2 BOUND ROVER_ACTIVE GLOBAL

// CANVAS OBJECT
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
    x_grid: [],
    y_grid: [],
    click_coords: undefined,
    start_coords: undefined,

    get_axis: function(coords, axis, flip=true) {
        var ret = [];
        for (var i = 0; i < coords.length; i++)
            ret.push(coords[i][axis]);
        if (this.max_y_bound == undefined)
            this.max_y_bound = arr_bounds(ret, 1);
        if (axis == 1 && flip)
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

    descale_dim: function(dim) {
        if (this.scale_axis)
            dim_max = arr_bounds(this.get_axis(bounds, 1), 1);
        else
            dim_max = arr_bounds(this.get_axis(bounds, 0), 1);
        dgrid = grid[0] / grid[1];
        return Math.round(dim * dim_max * dgrid / this.scale_max) / dgrid;
    },

    scale_dims: function(coords) {
        for (var i = 0; i < coords.length; i++)
            coords[i] = this.scale_dim(coords[i]);
        return coords;
    },

    set_coords: function() {
        this.x_coords = this.scale_dims(this.get_axis(bounds, 0));
        this.y_coords = this.scale_dims(this.get_axis(bounds, 1));
        this.x_start = (this.canvas_x - arr_bounds(this.x_coords, 1)) / 2 + this.canvas_buffer / 2;
        this.y_start = (this.canvas_y - arr_bounds(this.y_coords, 1)) / 2 + this.canvas_buffer / 2;
    },

    format_coords: function(coords, x_offset=0, y_offset=0) {
        if (Array.isArray(coords[0])) {
            for (var i = 0; i < coords.length; i++) {
                coords[i][0] = this.scale_dims(coords[i][0]) + x_offset;
                coords[i][1] = this.scale_dims(coords[i][1]) + y_offset;
            }
        } else {
            coords[0] = this.scale_dim(coords[0]) + x_offset;
            coords[1] = this.scale_dim(coords[1]) + y_offset;
        }
        return coords;
    },

    plot: function(x_coords, y_coords, x_start, y_start, line_width, line_color="black", fill_color="", close_path=true) {
        this.c.lineWidth = line_width;
        line_offset = line_width / 2;
        this.c.strokeStyle = line_color;
        this.c.fillStyle = fill_color;
        this.c.beginPath();
        this.c.moveTo(x_start + x_coords[0], y_start + y_coords[0]);
        for (var i = 0; i < x_coords.length + 1; i++) {
            if (close_path && (i == x_coords.length))
                this.c.lineTo(x_start + x_coords[1], y_start + y_coords[1]);
            else if (close_path && (i == x_coords.length - 1))
                this.c.lineTo(x_start + x_coords[0], y_start + y_coords[0]);
            else
                this.c.lineTo(x_start + x_coords[i+1], y_start + y_coords[i+1]);
        }
        this.c.stroke();
        if (close_path)
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
        this.x_grid = [];
        this.y_grid = [];
        while (x > 0) {
            this.plot([x, x], [0, this.canvas_y], 0, 0, 4, line_color="#D0D8D6");
            this.x_grid.push(x);
            x -= this.scale_dim(grid[0]);
        }
        x = this.x_start;
        while (x < this.canvas_x) {
            this.plot([x, x], [0, this.canvas_y], 0, 0, 4, line_color="#D0D8D6");
            this.x_grid.push(x);
            x += this.scale_dim(grid[0]);
        }
        while (y > 0) {
            this.plot([0, this.canvas_x], [y, y], 0, 0, 4, line_color="#D0D8D6");
            this.y_grid.push(y);
            y -= this.scale_dim(grid[0]);
        }
        y = this.y_start;
        while (y < this.canvas_y) {
            this.plot([0, this.canvas_x], [y, y], 0, 0, 4, line_color="#D0D8D6");
            this.y_grid.push(y);
            y += this.scale_dim(grid[0]);
        }

        var x = this.x_start + this.scale_dim(grid[1]);
        var y = this.y_start + this.scale_dim(grid[1]);
        while (x > 0) {
            this.plot([x, x], [0, this.canvas_y], 0, 0, 2, line_color="#E3ECEA");
            this.x_grid.push(x);
            x -= this.scale_dim(grid[1]);
        }
        var x = this.x_start + this.scale_dim(grid[1]);
        while (x < this.canvas_x) {
            this.plot([x, x], [0, this.canvas_y], 0, 0, 2, line_color="#E3ECEA");
            this.x_grid.push(x);
            x += this.scale_dim(grid[1]);
        }
        while (y > 0) {
            this.plot([0, this.canvas_x], [y, y], 0, 0, 2, line_color="#E3ECEA");
            this.y_grid.push(y);
            y -= this.scale_dim(grid[1]);
        }
        var y = this.y_start + this.scale_dim(grid[1]);
        while (y < this.canvas_y) {
            this.plot([0, this.canvas_x], [y, y], 0, 0, 2, line_color="#E3ECEA");
            this.y_grid.push(y);
            y += this.scale_dim(grid[1]);
        }
    },

    plot_obstacles: function() {
        const line_width = 5;
        for (var i = 0; i < obstacles.length; i++) {
            var obstacle = obstacles[i];
            var x_coords = this.scale_dims(this.get_axis(obstacle, 0));
            var y_coords = this.scale_dims(this.get_axis(obstacle, 1));
            var x_start = this.x_start;
            var y_start = this.y_start;
            this.plot(x_coords, y_coords, x_start, y_start, line_width, line_color="#45AF82", fill="rgba(69, 175, 131, 0.5)");
        }
    },

    plot_path: function(flip=false) {
        var path_x = this.scale_dims(this.get_axis(path, 0, flip));
        var path_y = this.scale_dims(this.get_axis(path, 1, flip));
        this.plot(path_x, path_y, this.x_start, this.y_start, 5, line_color="orange", fill="", close_path=false);
    },

    grid_closest: function(x,y) {
        var dx = undefined;
        var dy = undefined;
        var ix = undefined;
        var iy = undefined;
        for (var i = 0; i < this.x_grid.length; i++) {
            if (dx == undefined || Math.abs(this.x_grid[i] - x) < dx) {
                dx = Math.abs(this.x_grid[i] - x);
                ix = i;
            }
        }
        for (var i = 0; i < this.y_grid.length; i++) {
            if (dy == undefined || Math.abs(this.y_grid[i] - y) < dy) {
                dy = Math.abs(this.y_grid[i] - y);
                iy = i;
            }
        }
        return [this.x_grid[ix], this.y_grid[iy]];
    },

    draw_icon: function(loc, icon) {
        var img = new Image();
        img.src = icon;
        loc = this.grid_closest(this.scale_dim(loc[0]) + this.x_start, this.scale_dim(loc[1]) + this.y_start);
        img.onload = function(){
            document.getElementById("canvas").getContext("2d").drawImage(img, loc[0] - 24, loc[1] - 24);
        }
    },

    log_click: function(e) {
        var x = e.clientX;
        var y = e.clientY;
        var c = this.grid_closest(x,y);
        if (this.click_coords == undefined) {
            var c_coords = [this.descale_dim(c[0] - this.x_start), this.descale_dim(c[1] - this.y_start)];
            if (path.length > 0 && (c_coords[0] != path.at(-1)[0] || c_coords[1] != path.at(-1)[1])) {
                alert("[!!!] Please continue a path at the last created node.");
                return;
            }
            this.click_coords = c_coords;
            Canvas.draw_icon(this.click_coords, 'images/cursor_click.png');
            if (path.length == 0) {
                this.start_coords = c_coords;
                Canvas.draw_icon(this.start_coords, 'images/cursor.png');
            }
        } else {
            var loc = [this.descale_dim(c[0] - this.x_start), this.descale_dim(c[1] - this.y_start)];
            if (loc[0] == this.click_coords[0] && loc[1] == this.click_coords[1]) {
                this.click_coords = undefined;
                if (path.length == 0)
                    this.start_coords = undefined;
                reset();
            } else {
                var p = this.click_coords;
                this.click_coords = undefined;
                reset();
                var start = [this.scale_dim(p[0]), this.scale_dim(loc[0])];
                var end = [this.scale_dim(p[1]), this.scale_dim(loc[1])];
                if (path.length == 0) {
                    path.push(p, loc);
                } else {
                    path.push(loc);
                }
                this.plot(start, end, this.x_start, this.y_start, line_width=5, line_color="orange");
            }
        }
    }
}

const Rover = {
    rover: undefined,
    pos: undefined,
    turn_wait: 3,

    calc_angle: function(xy1, xy2) {
        var xy_info = []
        for (let xy of [xy1, xy2]) {
            xy_info.push(Math.atan(xy[1]/xy[0]))
        }
        console.log(xy_info);
    },

    drive: function() {
        this.rover.style.display = "inline";
        this.rover.style.left = Canvas.scale_dim(this.pos[0]) + Canvas.x_start - 24 + "px";
        this.rover.style.top =  Canvas.scale_dim(this.pos[1]) + Canvas.y_start - 24 + "px";
        var r_speed = speed[0];
        var r_pxy = {};
        for (var i = 0; i < path.length; i++) {
            var coords = path[i];
            var dxy = [this.pos[0] - coords[0], this.pos[1] - coords[1]];
            if (i != 0 && i != path.length - 1) {
                r_pxy[i] = (Math.atan((path[i-1][1] - path[i][1]) / (path[i-1][0] - path[i][0])) + Math.atan((path[i+1][1] - path[i][1]) / (path[i+1][0] - path[i][0]))) * 180 / Math.PI;
                console.log(i);
            }
            var xy = Canvas.format_coords([coords[0],coords[1]], Canvas.x_start - 24, Canvas.y_start - 24);
            var d = Math.sqrt(dxy[0] ** 2 + dxy[1] ** 2);
            if (speed[i] != undefined)
                r_speed = speed[i];
            if (r_pxy[i] == undefined)
                r_pxy[i] = 0;
            
            $("#rover").delay(r_pxy[i] * this.turn_wait * 1000 / 90).animate({
                left: xy[0] + "px",
                top: xy[1] + "px"
            }, d * 1000 / r_speed, function() {
                console.log(i, r_pxy[i]);
            });
            this.pos = coords;
        }
        for (var i = path.length - 1; i >= 0; i--) {
            var coords = path[i];
            var xy = Canvas.format_coords([coords[0],coords[1]], Canvas.x_start - 24, Canvas.y_start - 24);
            var dxy = [this.pos[0] - coords[0], this.pos[1] - coords[1]];
            var d = Math.sqrt(dxy[0] ** 2 + dxy[1] ** 2);
            if (speed[i] != undefined)
                r_speed = speed[i];
            $("#rover").animate({
                left: xy[0] + "px",
                top: xy[1] + "px"
            }, d * 1000 / r_speed);
            this.pos = coords;
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

reset = function() {
    Canvas.get_scale();
    Canvas.set_coords();
    Canvas.plot_grid();
    Canvas.plot_bounds();
    Canvas.plot_obstacles();
    Canvas.plot_path();
    if (Canvas.click_coords != undefined) {
        Canvas.draw_icon(Canvas.click_coords, 'images/cursor_click.png');
    }
    if (Canvas.start_coords != undefined) {
        Canvas.draw_icon(Canvas.start_coords, 'images/cursor.png');
    }
}

function button1() {
    if (!NEW_PATH) { // Edit Allowed
        NEW_PATH = 1; // Clear Allowed
        path = [];
        Canvas.start_coords = undefined;
        Canvas.click_coords = undefined;
        reset();
        document.getElementById("navbutton0").innerHTML = '<p style="font-size: 18px;">Clear Path</p>';
        Canvas.canvas.style.cursor = "url('images/cursor.png') 24 24, auto";
    } else if (NEW_PATH == 1) { // Clear Allowed
        path = [];
        Canvas.start_coords = undefined;
        Canvas.click_coords = undefined;
        reset();
    } else if (NEW_PATH == 2) { // No Edit Allowed
        if (ROVER_ACTIVE == 1) {
            alert("Stop the Rover before editing the path.");
            return;
        } else if (ROVER_ACTIVE == 2) {
            alert("Wait for the Rover to return to origin before editing the path.");
            return;
        }
        NEW_PATH = 0; // Edit Allowed
        document.getElementById("navbutton0").innerHTML = '<p style="font-size: 18px;">Clear Path</p>';
        Canvas.canvas.style.cursor = "url('images/cursor.png') 24 24, auto";
    }
}

function button2() { 
    NEW_PATH = 2; // No Edit Allowed
    document.getElementById("navbutton0").innerHTML = '<p style="font-size: 18px;">Edit Path</p>';
    Canvas.canvas.style.cursor = "auto";
    if (path.length == 0) {
        alert("[!!!] Please provide a path for the rover.");
        return;
    }
    if (!ROVER_ACTIVE) {
        ROVER_ACTIVE = 1;
        document.getElementById("navbutton1").innerHTML = '<p style="font-size: 18px;">Stop Rover</p>';
        Canvas.draw_icon(Canvas.start_coords, 'images/cursor_click.png');
        Rover.pos = Canvas.start_coords;
        Rover.drive();
    } else if (ROVER_ACTIVE == 1) {
        ROVER_ACTIVE = 2;
        document.getElementById("navbutton1").innerHTML = '<p style="font-size: 18px;">Start Rover</p>';
        Canvas.draw_icon(Canvas.start_coords, 'images/cursor.png');
    }
}

function arr_to_str(arr, depth=0) {
    let stringified = [];
    for (let item of arr) {
        if (Array.isArray(item)) stringified.push(arr_to_str(item, depth + 1));
        else stringified.push(item);
    }
    return "[" + stringified.join(',') + "]";
}

function push_c(arr_name, val) {
    var textbox = document.getElementById("textbox");
    if (arr_name == "bounds" || arr_name == "obstacles")
        textbox.value = arr_name + ".push(" + arr_to_str(val) + ")";
    else
        textbox.value = arr_name + ".push([" + val[0] + ", " + (Canvas.max_y_bound - val[1]) + "])";
    text_submit();
    reset();
}

function pop_c(arr_name) {
    eval(arr_name + ".pop()");
    reset();
}

function text_submit() {
    var textbox = document.getElementById("textbox");
    var text = textbox.value;
    try {
        eval(text);
    } catch (err) {
        console.log(err);
        return;
    }
    if (textbox.value == text)
        textbox.value = "";
}

print = function(str) {
    document.getElementById("textbox").value = str;
}

window.onresize = reset;

var DOUBLECLICK = false;

$(document).ready(function() {
    Canvas.canvas = document.getElementById('canvas');
    Canvas.c = Canvas.canvas.getContext("2d");
    Canvas.get_scale(canvas);
    Canvas.init_x = Canvas.canvas.clientWidth;
    Canvas.init_y = Canvas.canvas.clientHeight;
    Canvas.set_coords();
    Canvas.plot_grid();
    Canvas.plot_bounds();
    Canvas.plot_obstacles();
    if (path.length > 0) {
        for (var i = 0; i < path.length; i++)
            path[i][1] = Canvas.max_y_bound - path[i][1];
        Canvas.plot_path();
        Canvas.start_coords = path[0];
        Canvas.draw_icon(Canvas.start_coords, 'images/cursor.png');
        document.getElementById("navbutton0").innerHTML = '<p style="font-size: 18px;">Edit Path</p>';
        NEW_PATH = 2;
    }
    Rover.rover = document.getElementById("rover");

    Canvas.canvas.addEventListener('mousedown', function(e) {
        if (NEW_PATH != 2) {
            Canvas.canvas.style.cursor = "url('images/cursor_click.png') 24 24, auto";
            Canvas.log_click(e);
        } else {
            Canvas.canvas.style.cursor = "auto";
        }
    });
    Canvas.canvas.addEventListener('mouseup', function() {
        if (NEW_PATH == 1)
            Canvas.canvas.style.cursor = "url('images/cursor.png') 24 24, auto";
    });
    document.getElementById("textbox").addEventListener('keydown', (event) => {
        if (event.code == "Enter") {
            text_submit();
        }
    }, false);
});