package main

import (
    "dagger.io/dagger"
)

dagger.#Plan & {
        // Say hello by writing to a file
        actions: hello: {
        // The input directory
        dir: dagger.#FS

        // The name of the person to greet
        name: string | *"world"

        write: core.#WriteFile & {
            input: dir
            path: "hello-\(name).txt"
            contents: "hello, \(name)!"
        }

        // The directory with greeting message added
        result: write.output
    } & {
        dir: client.filesystem.".".read.contents
        if client.env.NAME != null {
            name: client.env.NAME
        }
    }
    client: {
        filesystem: ".": {
            read: contents: dagger.#FS
            write: contents: actions.hello.result
        }
        env: {
            NAME?: string
        }
    }
}