const express = require("express");
const songs = express.Router();
const { getAllSongs } = require("../queries/songs");

// INDEX
songs.get("/", async (req, res) => {
    const allsongs = await getAllSongs();
    if (allsongs[0]) {
      res.status(200).json(allsongs);
    } else {
      res.status(500).json({ error: "server error" });
    }
  });
module.exports = songs;