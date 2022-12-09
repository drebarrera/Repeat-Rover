const express = require('express');
const path = require("path");
const router = express.Router();
const app = express();
const http = require('http');
const server = http.createServer(app);
const { Server } = require("socket.io");
const io = new Server(server);
app.use(router);
const PORT = 3000;
app.set("port", PORT);
const bluetooth = require('./bluetooth');

server.listen(app.get("port"), function() {
    console.log("Server started on port " + app.get("port"));
});

// - ROUTER -------------------------------
router.get("/", function(req, res) {
    res.sendFile(path.resolve(__dirname + '/../Webgen/files/app/frontend/index.html'));
});

router.get("/*", function(req, res) {
    res.sendFile(path.resolve(__dirname + '/../Webgen/files/app/frontend' + req.path));
});

//  - SOCKET LISTENER ---------------------
io.on("connection", function(socket) {
    socket.on('update', function(data) {
        console.log('socket', data.test);
    });
});
