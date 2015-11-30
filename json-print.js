#!/usr/bin/env node
var input="";
process.stdin.setEncoding('utf8');
process.stdin.on('readable', function(){
  var chunk = process.stdin.read();
  if(chunk !== null) input += chunk;
});

process.stdin.on('end', function(){
  console.log(JSON.stringify(JSON.parse(input), null, 4));
});
