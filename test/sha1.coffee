CryptoJS = require "../main"
SHA1 = CryptoJS.SHA1

describe "SHA1", ->
  it "should hash stuff", ->
    sha = SHA1("").toString()

    assert sha

  it "should hash array buffers", ->
    arrayBuffer = new ArrayBuffer(0)

    sha = SHA1(CryptoJS.lib.WordArray.create(arrayBuffer)).toString()

    assert sha
