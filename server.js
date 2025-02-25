const express = require("express");
const app = express();

const PORT = process.env.PORT || 8080;

app.get("/", (req, res) => {
  res.send("Hello Cloud Run! Name: Ketul Shah and Student ID:100984227");
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
