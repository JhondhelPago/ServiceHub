var img = document.getElementById('smallImg');
var imgInitial = document.getElementById('smallImg');
var closeBtn = document.getElementById('closeBtn');

function enlargeImg() {
  img.classList.add('enlargedImg');
  img.classList.remove('hover:cursor-pointer');
  closeBtn.classList.add('flex');
  closeBtn.classList.remove('hidden');
  document.addEventListener('keydown', closeOnEscape);
}
function closeEnlargedImg(){
  img.classList.add('hover:cursor-pointer');
  img.classList.remove('enlargedImg');
  closeBtn.classList.add('hidden');
  closeBtn.classList.remove('flex');
  document.removeEventListener('keydown', closeOnEscape);
}

function closeOnEscape(event) {
  if (event.key === "Escape") {
    closeEnlargedImg();
  }
}

// nav script
// var labels = document.querySelectorAll('#linksContainer #links label');
// var logo = document.getElementById('logo');
// var logoContainer = document.getElementById('logoContainer');
// var expandBtn = document.getElementById('expandNavBtn');
// var minimizeBtn = document.getElementById('minimizeNavBtn');

// function minimizeNav() {
//     labels.forEach(function(label) {
//         label.style.display = 'none';
//     });

//     expandBtn.style.display = 'flex';
//     minimizeBtn.style.display = 'none';

//     logoContainer.style.flexDirection = 'column';

//     document.getElementById('expandedLogo').style.display = 'none';
//     document.getElementById('minimizedLogo').style.display = 'inline';
// }

// function expandNav() {
//     labels.forEach(function(label) {
//         label.style.display = 'flex';
//     });

//     minimizeBtn.style.display = 'flex';
//     expandBtn.style.display = 'none';

//     logoContainer.style.flexDirection = 'row';

//     document.getElementById('expandedLogo').style.display = 'inline';
//     document.getElementById('minimizedLogo').style.display = 'none';
// }