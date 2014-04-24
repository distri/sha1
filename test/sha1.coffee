SHA1 = require "../main"

describe "SHA1", ->
  it "should hash stuff", (done) ->
    SHA1 "", (sha) ->
      assert.equal sha, "da39a3ee5e6b4b0d3255bfef95601890afd80709"
      done()

  it "should hash blobs", (done) ->
    blob = new Blob

    SHA1 blob, (sha) ->
      assert.equal sha, "da39a3ee5e6b4b0d3255bfef95601890afd80709"
      done()

  it "should hash array buffers", (done) ->
    arrayBuffer = new ArrayBuffer

    SHA1 arrayBuffer, (sha) ->
      assert.equal sha, "da39a3ee5e6b4b0d3255bfef95601890afd80709"
      done()
