import express, { Application } from 'express'
import cors from 'cors'

const App: Application = express()
App.use(cors())

App.listen(80, () => {
    console.log(`Listening on 80`)
})

if (process.platform === "win32") App.use(express.static(process.cwd() + '\\src\\public'))
else App.use(express.static(process.cwd() + '/src/public'))
