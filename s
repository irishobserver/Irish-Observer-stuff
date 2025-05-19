<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>OBS Ticker</title>
  <style>
    body {
      margin: 0;
      background: transparent;
      overflow: hidden;
      font-family: sans-serif;
    }
    #ticker-container {
      position: relative;
      width: 100%;
      height: 100px;
      overflow: hidden;
      white-space: nowrap;
      background-color: rgba(0,0,0,0.5);
    }
    #ticker-text {
      display: inline-block;
      position: absolute;
      white-space: nowrap;
      color: white;
      font-size: 48px;
      animation: scroll 20s linear infinite;
    }
    @keyframes scroll {
      from { left: 100%; }
      to { left: -100%; }
    }
    #controls {
      position: absolute;
      top: 0;
      left: 0;
      padding: 10px;
      background: rgba(0,0,0,0.7);
      color: white;
      width: 100%;
    }
    #textInput {
      width: 80%;
      font-size: 24px;
    }
  </style>
</head>
<body>
  <div id="controls">
    <input type="text" id="textInput" placeholder="Enter ticker text" />
    <button onclick="updateText()">Update</button>
  </div>
  <div id="ticker-container">
    <div id="ticker-text">Welcome to OBS Ticker</div>
  </div>

  <script>
    function updateText() {
      const input = document.getElementById('textInput').value;
      const ticker = document.getElementById('ticker-text');
      ticker.textContent = input;
    }
  </script>
</body>
</html>

