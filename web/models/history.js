var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var historySchema = new Schema({
    NIIN: {type: String, required: true},
    productName: {type: String, required: true},
    storageName: {type: String, required: true},
    location: String,
    state: String,
    image: Number,
    date: { type: Date, default: Date.now  }
});

module.exports = mongoose.model('History', historySchema);