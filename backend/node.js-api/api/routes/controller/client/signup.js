const express = require('express');
const router = express.Router();
const db = require('../../module/pool.js');
const jwt = require('../../module/jwt');
const signup = require('../../model/req/SignupReq');
const pool = require('../../../config/db_pool').pool;


// 아이디 중복 체크

router.post('/check', async (req, res, next) => {
    const user_ID = req.body.userID;
    const QUERY = 'select * from Client where userID = ?';

    try {
        const [rows, fields] = await pool.query(QUERY,[user_ID]);
        // console.log(rows,fields);
        if (rows) {
            if (rows.length === 1) {
                res.status(405).send({
                    message: "Already Exists"
                });
            } else {
                res.status(200).send({
                    message: "success"
                });
            }
        }
    }
    catch (err) {
        console.log(err);
        next(err);
    }
    
});


//회원가입 

router.post('/',async (req, res, next) => {
    const QUERY = 'insert into Client (userID,userPW,userName,phone_number,createDate) values (?,?,?,?,?)';
    // console.log(1, req.body);
    let newUser = signup.new(req.body);
    // console.log(2, newUser);
    
    try {
        const [rows, fields] = await pool.query(QUERY,[newUser.userID,newUser.userPW,newUser.userName,newUser.phone_number,newUser.createDate]);
        console.log(rows,fields);
        if (rows == undefined) {
            res.status(405).send({
                message: 'please check invaild inputs'
            });
        } else {
            res.status(201).send({
                message: "success"
            });
        }
    }
    catch (err) {
        console.log(err);
        next(err);
    }
});

module.exports = router;