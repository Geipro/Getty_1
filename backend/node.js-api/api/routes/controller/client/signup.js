const express = require('express');
const router = express.Router();
const db = require('../../module/pool.js');
const jwt = require('../../module/jwt');
const signup = require('../../model/req/SignupReq');

// 아이디 중복 체크

router.post('/check', async (req, res, next) => {
    const user_ID = req.body.userID;
    const QUERY = 'select * from Client where userID = ?';

    let checkResult = await db.execute2(QUERY, user_ID);

    if (checkResult) {
        if (checkResult.length === 1) {
            res.status(405).send({
                message: "Already Exists"
            });
        } else {
            res.status(200).send({
                message: "success"
            });
        }
    }
});

//회원가입 
router.post('/',async (req, res, next) => {

    const QUERY = 'insert into Client set ?';

    let newUser = signup.new(req.body);
    let inserted = await db.execute2(QUERY, newUser);


    if (inserted == undefined) {
        res.status(405).send({
            message: 'please check userID'
        });
    } else {
        res.status(201).send({
            message: "success"
        });
    }
});

module.exports = router;