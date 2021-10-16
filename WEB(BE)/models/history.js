var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var historySchema = new Schema({
    NIIN: {type: String, required: true},
    productName: {type: String, required: true},
    storageName: {type: String, required: true},
    state: {type: String, required: true},
    date: { type: Date, default: Date.now  }
});

module.exports = mongoose.model('history', historySchema);