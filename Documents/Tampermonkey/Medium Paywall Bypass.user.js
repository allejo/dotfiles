// ==UserScript==
// @name        Medium Paywall Bypass
// @namespace   Violentmonkey Scripts
// @run-at      document-start
// @match       *://*.medium.com/*
// @match       *://medium.com/*
// @match       *://*/*
// @grant       none
// @version     1.3
// @updateURL   https://gist.githubusercontent.com/mathix420/e0604ab0e916622972372711d2829555/raw/medium.user.js
// @downloadURL https://gist.githubusercontent.com/mathix420/e0604ab0e916622972372711d2829555/raw/medium.user.js
// @website     https://freedium.cfd
// @author      Mathix420, ZhymabekRoman
// @description Don't forget to remove `@match` filters you don't want.
// ==/UserScript==

(function () {
  // To allow seeing original articles that were already redirected to freedium.
  if (window.location.href.endsWith('#bypass')) {
    return;
  }

  const mediumPostUrlProperty = document.head.querySelector('meta[property="al:android:url"]')
  if ((mediumPostUrlProperty || {}).content && mediumPostUrlProperty.content.includes('medium://p/')) {
    window.location.href = 'https://freedium.cfd/' + window.location.href;
  }
})();