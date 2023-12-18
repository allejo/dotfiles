// ==UserScript==
// @name         Better CR Schedule
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Make it easier to find episodes on the Crunchyroll schedule
// @author       KoreEnigma
// @match        https://www.crunchyroll.com/simulcastcalendar*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=crunchyroll.com
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    const keepLanguage = "ENGLISH";

    // Remove dubs that aren't the keepLanguage above
    const regex = new RegExp('\\((.+) DUB\\)', '');
    document.querySelectorAll('cite[itemprop="name"]').forEach((title) => {
        const match = regex.exec(title.innerText);
        if (match == null || match[1] == keepLanguage) {
            return;
        }

        const li = title.closest('li');
        li.parentNode.removeChild(li);
    });

    // Hide the poster images and  show the episode thumbnail
    const style = document.createElement('style');
    style.type = 'text/css';
    document.head.appendChild(style);
    style.sheet.insertRule(".poster-image {display: none !important; }", (style.sheet.rules || style.sheet.cssRules || []).length);
    style.sheet.insertRule(".releases .featured-episode {display: block !important; }", (style.sheet.rules || style.sheet.cssRules || []).length);
})();

