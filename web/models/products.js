var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var productSchema = new Schema({
    NIIN: {type: String, required: true},
    productName: {type: String, required: true},
    storageName: {type: String, required: true},
    location: String,
    state: String,
    image: int
});

module.exports = mongoose.model('product', productSchema);