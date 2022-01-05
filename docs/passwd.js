const checkPassword = () => {
  const v = document.getElementById("password").value;
  const p = Array.from(v).map(a => 0xCafe + a.charCodeAt(0));

  if(p[0] === 52063 &&
     p[6] === 52016 &&
     p[5] === 52015 &&
     p[1] === 52066 &&
     p[4] === 52076 &&
     p[3] === 52071 &&
     p[7] === 52017 &&
     p[2] === 52075 &&) {
    window.location.replace("/admin/" + v + ".html");
  } else {
    alert("Wrong password!");
  }
}

window.addEventListener("DOMContentLoaded", () => {
  document.getElementById("go").addEventListener("click", checkPassword);
  document.getElementById("password").addEventListener("keydown", e => {
    if (e.keyCode === 13) {
      checkPassword();
    }
  });
}, false);
