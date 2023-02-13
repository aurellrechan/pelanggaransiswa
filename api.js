//inisiasi library
const express = require("express")
const bodyParser = require("body-parser")
const cors = require("cors")
const moment = require("moment")
const siswaroute = require("./siswa")
const userroute = require("./user")
const pelanggaranroute = require("./pelanggaran")
const pelanggaran_siswaroute = require("./pelanggaran_siswa")


//implementasi
const app = express()
app.use(cors())
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true }))
app.use(siswaroute)
app.use(userroute)
app.use(pelanggaranroute)
app.use(pelanggaran_siswaroute)



app.listen(8000, () => {
    console.log("okebisa")
})
