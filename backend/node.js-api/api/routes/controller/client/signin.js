const express = require('express');
const router = express.Router();
const pool = require('../../../config/db_pool').pool;
const jwt = require('../../module/jwt.js');
const hash = require('../../module/hash');

router.post('/', async(req, res, next) => {
    const user_ID = req.body.userID;
    const user_PW = req.body.userPW;
    // console.log(req.body);
    
    const QUERY = 'select CID, userPW from Client where userID = ?';
    try {
        const [rows, fields] = await pool.query(QUERY,[user_ID]);
        if (rows) {
            //아이디가 존재하지 않을 경우
            if (rows.length === 0) {
                res.status(401).send({
                    message: 'Invaild UserID'
                });
            } 
            //비밀번호가 틀릴 경우
            else if (user_PW != hash.decoding(rows[0].userPW)) {
                res.status(401).send({
                    message: 'Wrong UserPW'
                });
            } 
            else {
                const token = jwt.sign(rows[0].CID);
        
                res.status(200).send({
                    message: 'login success',
                    token: token
                });
            }
        }
    }  catch (err) {
        console.log(err);
        next(err);
    }
    
});

module.exports = router;