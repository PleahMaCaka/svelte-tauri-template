import { greeting } from "core/client"
import { Hono } from "hono"

const app = new Hono()

app.get("/", (c) => {
  return c.text(`${greeting} Hono!`)
})

export default app
