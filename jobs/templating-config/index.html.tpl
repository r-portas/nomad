<!DOCTYPE html>
<html>
  <head>
    <title>Hello World!</title>
    <style>
      body {
        background-color: #1a1a1a;
        color: #fff;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
          Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji",
          "Segoe UI Symbol";
        font-size: 24px;
        text-align: center;
        margin-top: 100px;
      }
    </style>
  </head>
  <body>
    <h1>Hello World!</h1>

    <p>
      This is running on
      <b>{{ env "node.unique.name" }}</b>
      ({{env "attr.unique.network.ip-address"}})
    </p>
  </body>
</html>
