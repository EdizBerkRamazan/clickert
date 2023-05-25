<!DOCTYPE html>
<html>
<head>
  <title>Counter</title>
  <style>
    #counter {
      font-size: 24px;
      text-align: center;
      margin-top: 100px;
    }

    #resetLabel {
      font-size: 16px;
      color: red;
      text-align: center;
      margin-top: 10px;
    }
  </style>
  <script>
    var counter = 0;
    var resetCount = 0;

    function incrementCounter() {
      counter += 10;
      if (counter > 100) {
        counter = 0;
        resetCount++;
        updateResetLabel();
      }
      updateCounterDisplay();
    }

    function updateCounterDisplay() {
      var counterElement = document.getElementById("counter");
      counterElement.textContent = counter;
    }

    function updateResetLabel() {
      var resetLabelElement = document.getElementById("resetLabel");
      resetLabelElement.textContent = "Opnieuw: " + resetCount;
    }

    document.addEventListener("DOMContentLoaded", function() {
      updateCounterDisplay();
      updateResetLabel();
      document.getElementById("counter").addEventListener("click", incrementCounter);
    });
  </script>
</head>
<body>
  <div id="counter">0</div>
  <div id="resetLabel">Opnieuw: 0</div>
</body>
</html>
