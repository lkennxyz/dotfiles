const fetch = require('node-fetch');
const $ = require('cheerio');

const run = () => {
  setInterval(() => {
    const html = fetch('http://www.cambridgeshirebus.info/Text/WebDisplay.aspx?stopRef=0500CCITY505&stopName=Regional+College')
      .then(res => res.text())
      .then(body => {
        const allData = $('.body-cell', body).text();
        const splitData = allData.match(/(.*?\s){3}/g);
        console.log(` ${splitData[0]}`);
      });
  }, 60000)
};

