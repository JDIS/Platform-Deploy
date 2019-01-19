/* eslint-disable no-console */
'use strict';

const fs = require('fs');
const os = require('os');

const BUFSIZ = 65536;
let buf = Buffer.alloc(BUFSIZ);
buf.fill('\x00');
let response = [''];
try {
  fs.readSync(process.stdin.fd, buf, 0, BUFSIZ, null);
  const stopIdx = buf.indexOf(0);
  buf = buf.slice(0, stopIdx);
} catch (e) {
  console.warn(e);
  console.warn('No inputs');
  process.exit(1);
}

response = buf.toString('utf-8');
let idx__ = 0;
const lines__ = response.split(os.EOL);

module.exports = () => {
  idx__++;
  return lines__[idx__ - 1];
};

