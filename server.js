const express = require("express");
const path = require("path");

const app = express();
const PORT = process.env.PORT || 8080;

// Serve static files from "static" directory
app.use(express.static(path.join(__dirname, "static")));

app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname, "static", "index.html"));
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
