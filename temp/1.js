function createBase(num) {
  return function (arg) {
    console.log(num + arg);
  };
}

var addSix = createBase(6);

addSix(21);
