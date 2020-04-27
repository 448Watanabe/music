var audio, x;
document.addEventListener("DOMContentLoaded", function() { 
  x = document.getElementById("audio-id");
  audio = new Audio;
  audio.src = x.children.item(0).src;
  audio.load();
});

function getStartTime() {
  target = document.getElementById("start-time");
  target.value = x.currentTime;
};

function getFinishTime() {
  target = document.getElementById("finish-time");
  target.value = x.currentTime;
};


function playPortion(){
  var start = document.getElementById("start-time").value;
  var finish = document.getElementById("finish-time").value;
  if (finish <= start){
    alert("終了時間がスタート時間より前です。");
  }else{
    time_range = `#t=${start},${finish}`;
    audio.src = x.children.item(0).src.concat(time_range);
    audio.load();
    audio.play();
  }
}

function pausePortion(){
  audio.pause();
}