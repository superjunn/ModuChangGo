var mongoose = require('mongoose');
var Schema = mongoose.Schema;

const userSchema = new Schema({
user_id: String,
user_password: String,
user_army: String
});
module.exports = mongoose.model('User', userSchema);