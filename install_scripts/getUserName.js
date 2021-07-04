const Max = require('max-api');
const os = require('os');

Max.addHandler("bang", () => {
	Max.outlet(os.userInfo().username);
});
