
document.getElementById('y').textContent = new Date().getFullYear();
document.querySelectorAll('a[href^="#"]').forEach(a=>{
  a.addEventListener('click', e=>{
    const id=a.getAttribute('href'); if(id && id.length>1){ e.preventDefault(); document.querySelector(id)?.scrollIntoView({behavior:'smooth'}); }
  });
});
// Delay subtitle fade-in
window.addEventListener('load', () => {
  const sub = document.querySelector('.sub');
  sub.style.opacity = 0;
  setTimeout(() => {
    sub.style.transition = 'opacity 1.2s ease';
    sub.style.opacity = 1;
  }, 3500); // match typing duration
});
