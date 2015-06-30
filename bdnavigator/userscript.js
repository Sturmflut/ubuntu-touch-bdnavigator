function oxide_dom() {
    var footerlinks = document.getElementById('footerlinks');

    if (footerlinks) {
        footerlinks.parentNode.removeChild(footerlinks);
    }
}

window.addEventListener('load', oxide_dom, true);
