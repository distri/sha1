sha1
====

SHA1 JS implementation. Currently wrapping CryptoJS with a more uniform API.

Usage
-----

Strings

    string = ""

    SHA1 string, (sha) ->
      sha # "da39a3ee5e6b4b0d3255bfef95601890afd80709"

Blobs

    blob = new Blob

    SHA1 blob, (sha) ->
      sha # "da39a3ee5e6b4b0d3255bfef95601890afd80709"

Array buffers

    arrayBuffer = new ArrayBuffer

    SHA1 arrayBuffer, (sha) ->
      sha # "da39a3ee5e6b4b0d3255bfef95601890afd80709"
