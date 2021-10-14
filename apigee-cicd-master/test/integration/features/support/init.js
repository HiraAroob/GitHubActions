'use strict';

const apickli = require('../../apickli/apickli.js');
const {defineSupportCode} = require('cucumber');



defineSupportCode(function({Before}) {
    Before(function() {
        this.apickli = new apickli.Apickli('https', 'rimshaaizaz-eval-test.apigee.net');
        this.apickli.addRequestHeader('Cache-Control', 'no-cache');
    });
});
defineSupportCode(function({setDefaultTimeout}) {
    setDefaultTimeout(60 * 1000); // this is in ms
});