function daily_num() {
    const fs = require('fs');
    return fs.readdirSync('/home/directory').length;
}
module.exports = daily_num;
