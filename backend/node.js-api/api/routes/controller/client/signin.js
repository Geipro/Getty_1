const express = require('express');
const router = express.Router();
const db = require('../../module/pool.js');
const jwt = require('../../module/jwt.js');
const hash = require('../../module/hash.js');

router.post('/', async(req, res, next) => {
    const user_ID = req.body.userId;
    const user_PW = req.body.userPW;
    
    const QUERY = 'select * from Client where userID = ?';
    let data = await db.execute2(QUERY, user_ID);

    //아이디가 존재하지 않을 경우
    if (data.length == 0) {
        res.status(401).send({
            message: 'Invaild UserID'
        });
    }
    
    //비밀번호가 틀릴 경우
    else if (userPW != hash.decoding(data[0].user_PW)) {
        res.status(401).send({
            message: 'Wrong UserPW'
        });
    } else {
        const token = jwt.sign(data[0].CID);

        res.status(200).send({
            message: 'login success',
            token: token
        });
    }
});

module.exports = router;