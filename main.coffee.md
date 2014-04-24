SHA1
====

Wrapping up CryptoJS SHA1 implementation to be a little nicer.

    {SHA1} = CryptoJS = require("./lib/crypto")

    module.exports = (data, fn) ->
      if data instanceof Blob
        blobTypedArray data, (arrayBuffer) ->
          fn(shaArrayBuffer(arrayBuffer))
      else if data instanceof ArrayBuffer
        defer ->
          fn(shaArrayBuffer(data))
      else
        defer ->
          fn(SHA1(data).toString())

Helpers
-------

    defer = (fn) ->
      setTimeout fn, 0

    shaArrayBuffer = (arrayBuffer) ->
      SHA1(CryptoJS.lib.WordArray.create(arrayBuffer)).toString()

    blobTypedArray = (blob, fn) ->
      reader = new FileReader()
    
      reader.onloadend = ->
        fn(reader.result)
    
      reader.readAsArrayBuffer(blob)
