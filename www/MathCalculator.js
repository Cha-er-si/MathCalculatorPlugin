var exec = require("cordova/exec");

// module.exports.coolMethod = function (arg0, success, error) {
//   exec(success, error, "MathCalculator", "coolMethod", [arg0]);
// };

module.exports.addMethod = function (arg0, success, error) {
  exec(success, error, "MathCalculator", "addMethod", [arg0]);
};

module.exports.substractMethod = function (arg0, success, error) {
  exec(success, error, "MathCalculator", "substractMethod", [arg0]);
};
