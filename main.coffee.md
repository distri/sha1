SHA1
====

Wrapping up CryptoJS SHA1 implementation to be a little nicer.

    {SHA1} = CryptoJS = require("./lib/crypto")
    Q = require "q"

    module.exports = (data) ->
      Q.fcall ->
        if data instanceof Blob
          blobTypedArray(data).then shaArrayBuffer
        else if data instanceof ArrayBuffer
          shaArrayBuffer(data)
        else
          SHA1(data).toString()

Helpers
-------

    shaArrayBuffer = (arrayBuffer) ->
      SHA1(CryptoJS.lib.WordArray.create(arrayBuffer)).toString()

    blobTypedArray = (blob) ->
      deferred = Q.defer()

      reader = new FileReader()

      reader.onloadend = ->
        deferred.resolve(reader.result)

      reader.onerror = deferred.reject
      reader.onprogress = deferred.notify

      reader.readAsArrayBuffer(blob)

      return deferred.promise
