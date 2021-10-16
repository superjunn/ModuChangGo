var mongoose = require('mongoose');
var Schema = mongoose.Schema;
const bcrypt = require("bcryptjs");

const userSchema = new Schema({
user_id: {type: String, required: true, unique: true},
user_password: {type: String, required: true},
user_army: {type: String, required: true}
});


module.exports = mongoose.model('users', userSchema);