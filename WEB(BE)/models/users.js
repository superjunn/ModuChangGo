var mongoose = require('mongoose');
var Schema = mongoose.Schema;
const bcrypt = require("bcryptjs");

const userSchema = new Schema({
user_id: {type: String, required: true, unique: true},
user_password: {type: String, required: true},
user_army: {type: String, required: true}
});

// userSchema.pre('save', async function (next) {
//     try {
//         if (!this.isModified('user_password')) {
//             return next();
//         }
//         let hashedPassword = await bcrypt.hash(this.password, 10);
//         this.password = hashedPassword;
//         return next();
//     } catch (err) {
//         return next(err);
//     }
// });

module.exports = mongoose.model('users', userSchema);