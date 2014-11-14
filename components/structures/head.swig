{% import "../atoms/macros/classname.swig" as m  %}

<html lang="en" class="{{ m.classname(title) }}">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <title>{{ title }}</title>

    <link href="/assets/styles/{{ title | lower}}.min.css" media="screen, projection" rel="stylesheet" type="text/css" />
  </head>

  <body>
