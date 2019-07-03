
function pass(x) {
  return x;
}


function Compose(_fns) {
  const fns = Array.from(_fns);
  switch(fns.length) {
    case 0:
      return pass;

    case 1:
      return fns[0];

    default:
      function composed(x) {
        return fns.reduce((_x, f)=> {
          return f.call(this, _x);
        }, x)
      }

      return composed;
  }
}

Object.assign(exports, {
  pass,
  Compose,
});
