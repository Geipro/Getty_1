const crypto = require('crypto');
const hashKey = require('../../config/hashKey').key;
const IV_LENGTH = 16;

module.exports = {
    //암호화
    encoding : function(password) {
        let iv = crypto.randomBytes(IV_LENGTH);
        const key = crypto.scryptSync(hashKey, 'salt', 32);
	    let cipher = crypto.createCipheriv('aes-256-cbc', key, iv);
	    let encrypted = cipher.update(password,'utf8', 'hex');

        encrypted += cipher.final('hex');

        console.log(1,iv);
        console.log(2,encrypted);
        console.log(3, "  ",iv.toString('hex') + ':' + encrypted.toString('hex'))
	    return iv.toString('hex') + ':' + encrypted.toString('hex');
    },
    //복호화
    decoding : function(password) {
        let password_Parts = (password||'').split(':');
        let iv = Buffer.from(password_Parts.shift(), 'hex'); // let iv = Buffer.from(password_Parts.shift() || '', 'hex');
        // console.log(1,iv);
        // console.log(2,password_Parts)

        const key = crypto.scryptSync(hashKey, 'salt', 32);
        let decipher = crypto.createDecipheriv('aes-256-cbc', key, iv);
        let decrypted = decipher.update(password_Parts[0],'hex', 'utf8');
        decrypted+=decipher.final('utf8');
        // console.log(decrypted)

        return decrypted;
    }
};