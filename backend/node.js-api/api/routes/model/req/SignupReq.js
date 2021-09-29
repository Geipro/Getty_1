const hash = require('../../module/hash');

module.exports = {
    new : function(body) {
        let today = new Date();   
        let year = today.getFullYear(); // 년도
        let month = today.getMonth() + 1;  // 월
        let day = today.getDate();  // 날짜
        let create_at = `${year}-${month}-${day}`
        let newUser = {
            userID : body.userID,
           // name : body.name,
            userPW: hash.encoding(body.userPW),
            userName : body.userName,
            phone_number: body.phone_number,
            createDate : create_at

        };
        return newUser;
    }
}