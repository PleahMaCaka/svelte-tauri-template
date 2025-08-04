import { getHelloWorld } from "core"

export class Client {
  getGreeting(): string {
    return getHelloWorld()
  }
}
