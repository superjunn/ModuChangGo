var mongoose = require('mongoose');
var Schema = mongoose.Schema;

const storageSchema = new Schema({
    storageName: {type: String, required: true},
    location: {type: String, required: true},
    manager: {type: String, required: true},
    image: Number
});
module.exports = mongoose.model('storages', storageSchema);