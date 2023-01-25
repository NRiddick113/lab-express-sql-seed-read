const express = require("express");
const songs = express.Router();
const { checkBoolean, checkName, checkArtist } = require("../validations/checkSongs.js");
const { 
  getAllSongs, 
  getSong, 
  createSong, 
  deleteSong, 
  updateSong
} = require("../queries/songs");
const reviewsController = require('./reviewsController')

songs.use('/:songId/reviews', reviewsController)

// INDEX
songs.get("/", async (req, res) => {
    const allSongs = await getAllSongs();
    if (allSongs[0]) {
      res.status(200).json(allSongs);
    } else {
      res.status(500).json({ error: "server error" });
    }
  });

   // SHOW
songs.get("/:id", async (req, res) => {
  const { id } = req.params;
  const song = await getSong(id);
  try {
    if (song.id) {
      res.status(200).json(song);
    } else {
      res.status(404).json({ error: "not found" });
    } 
  } catch (error) {
    console.log(error)
  }
});

// CREATE
songs.post("/", checkBoolean, checkName, checkArtist, async (req, res) => {
  try {
    const song = await createSong(req.body);
    res.status(200).json(song);
  } catch (error) {
    res.status(500).json({ error: error });
  }
});

//DELETE
songs.delete("/:id", async (req, res) => {
  const { id } = req.params;
  const deletedsong = await deleteSong(id);
  if (deletedsong.id) {
    res.status(200).json(deletedsong);
  } else {
    res.status(404).json("song not found");
  }
});

// UPDATE
songs.put("/:id", async (req, res) => {
  const { id } = req.params;
  const updatedsong = await updateSong(id, req.body);
  res.status(200).json(updatedsong);
});

module.exports = songs;